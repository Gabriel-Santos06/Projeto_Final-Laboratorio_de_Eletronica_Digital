library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Topo (DE10-Lite) = o "main" do desenho: 9 blocos ligados como na imagem.
--   SW0-3 mensagem | SW4-6 erro_pos (000 = sem erro, 001..111 = inverte o bit 0..6)
--   SW7 enable_divisor (1 = clock lento) | SW8,SW9 visor das LEDR0-6:
--   00 palavra código, 01 palavra recebida, 1x posição do erro
--   KEY0 enviar (começa ao soltar) | LEDR7 erro | LEDR8 clock lento | LEDR9 bit saindo do TX
--   ponto do HEX0 bit no RX | HEX3 enviada | HEX2 recebida | HEX1 síndrome | HEX0 corrigida
entity txrx is
	generic(ESTAGIOS_DIV : natural := 25);   -- clock lento = 50 MHz / 2^25 ~ 1,5 Hz
	port(
		mensagem       : in  std_logic_vector(3 downto 0);
		enable_divisor : in  std_logic;
		start          : in  std_logic;                      -- KEY0 (0 quando apertada)
		clock_50       : in  std_logic;
		erro_pos       : in  std_logic_vector(2 downto 0);
		visor          : in  std_logic_vector(1 downto 0);
		led_serie, led_clock, led_erro, ponto_canal : out std_logic;
		codigo_out     : out std_logic_vector(6 downto 0);
		hex0, hex1, hex2, hex3 : out std_logic_vector(6 downto 0)
	);
end txrx;

architecture arc_txrx of txrx is
	signal enviar, tick, serie_tx, canal, esconder      : std_logic;
	signal registrar, desl_tx, reset_rx, desl_rx        : std_logic;
	signal cod, mascara, rec : std_logic_vector(6 downto 0);
	signal sind              : std_logic_vector(2 downto 0);
	signal sind4, msg_rec    : std_logic_vector(3 downto 0);
	signal m8                : unsigned(7 downto 0);

	-- dígito -> display de 7 segmentos (ativo em nível baixo, gfedcba); traco = "-"
	function seg7(v : std_logic_vector(3 downto 0); traco : std_logic) return std_logic_vector is
		variable r : std_logic_vector(6 downto 0);
	begin
		case v is
			when "0000" => r := "1000000"; when "0001" => r := "1111001";
			when "0010" => r := "0100100"; when "0011" => r := "0110000";
			when "0100" => r := "0011001"; when "0101" => r := "0010010";
			when "0110" => r := "0000010"; when "0111" => r := "1111000";
			when "1000" => r := "0000000"; when "1001" => r := "0010000";
			when "1010" => r := "0001000"; when "1011" => r := "0000011";
			when "1100" => r := "1000110"; when "1101" => r := "0100001";
			when "1110" => r := "0000110"; when others => r := "0001110";
		end case;
		if traco = '1' then r := "0111111"; end if;
		return r;
	end function;
begin
	enviar  <= not start;
	m8      <= shift_left(to_unsigned(1, 8), to_integer(unsigned(erro_pos)));
	mascara <= std_logic_vector(m8(7 downto 1));   -- erro_pos = p inverte o bit p-1; 0 = nenhum
	sind4   <= '0' & sind;

	div:  entity work.divisor_de_clock generic map (ESTAGIOS_DIV)
	          port map (clock_50, enable_divisor, tick, led_clock);
	ger:  entity work.gerador_de_paridade port map (mensagem, cod);
	tx:   entity work.controlador_tx      port map (clock_50, tick, enviar, registrar, desl_tx);
	ser:  entity work.serializador        port map (clock_50, registrar, desl_tx, cod, serie_tx);
	inj:  entity work.injetor_de_erro     port map (clock_50, tick, enviar, mascara, serie_tx, canal);
	rx:   entity work.controlador_rx      port map (clock_50, tick, enviar, reset_rx, desl_rx, esconder);
	des:  entity work.desserializador     port map (clock_50, reset_rx, desl_rx, esconder, canal, rec);
	ver:  entity work.verificador_de_paridade port map (rec, sind, led_erro);
	cor:  entity work.corretor_de_erro    port map (sind, rec, msg_rec);

	led_serie   <= serie_tx;
	ponto_canal <= not canal;
	with visor select
		codigo_out <= cod when "00", rec when "01", mascara when others;

	hex3 <= seg7(mensagem,        '0');
	hex2 <= seg7(rec(3 downto 0), esconder);
	hex1 <= seg7(sind4,           esconder);
	hex0 <= seg7(msg_rec,         esconder);
end arc_txrx;
