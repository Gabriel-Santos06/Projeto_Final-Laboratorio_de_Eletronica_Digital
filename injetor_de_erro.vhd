library ieee;
use ieee.std_logic_1164.all;

-- Injetor de erro: um controlador (TX) + um serializador mandam a máscara "posição do erro"
-- junto com o transmissor; onde a máscara vale 1, o bit da linha é invertido.
entity injetor_de_erro is
	port(
		clk, tick, iniciar : in  std_logic;
		posicao_do_erro    : in  std_logic_vector(6 downto 0);
		entrada            : in  std_logic;
		saida              : out std_logic
	);
end injetor_de_erro;

architecture arc_injetor_de_erro of injetor_de_erro is
	signal registrar, deslocar, bit_erro : std_logic;
begin
	ctrl: entity work.controlador_tx port map (clk, tick, iniciar, registrar, deslocar);
	ser:  entity work.serializador   port map (clk, registrar, deslocar, posicao_do_erro, bit_erro);

	saida <= entrada xor bit_erro;
end arc_injetor_de_erro;
