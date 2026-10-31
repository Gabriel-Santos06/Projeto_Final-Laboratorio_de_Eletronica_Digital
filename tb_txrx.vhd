library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Todas as mensagens x todas as posições de erro (0 = sem erro), nos dois modos de clock.
entity tb_txrx is end tb_txrx;

architecture sim of tb_txrx is
	signal mensagem : std_logic_vector(3 downto 0) := "0000";
	signal enable_divisor, start, clock_50 : std_logic := '0';
	signal erro_pos : std_logic_vector(2 downto 0) := "000";
	signal visor : std_logic_vector(1 downto 0) := "00";
	signal led_serie, led_clock, led_erro, ponto_canal : std_logic;
	signal codigo_out, hex0, hex1, hex2, hex3, esperado : std_logic_vector(6 downto 0);
	signal fim : boolean := false;
	function seg7(v : std_logic_vector(3 downto 0)) return std_logic_vector is
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
		return r;
	end function;
begin
	clock_50 <= not clock_50 after 10 ns when not fim else clock_50;
	dut: entity work.txrx generic map (ESTAGIOS_DIV => 3)
		port map (mensagem, enable_divisor, start, clock_50, erro_pos, visor,
		          led_serie, led_clock, led_erro, ponto_canal, codigo_out, hex0, hex1, hex2, hex3);
	esperado <= seg7(mensagem);

	process
		variable falhas : natural := 0;
	begin
		for h in 0 to 1 loop
			enable_divisor <= '1' when h = 1 else '0';
			for m in 0 to 15 loop
				for p in 0 to 7 loop
					mensagem <= std_logic_vector(to_unsigned(m, 4));
					erro_pos <= std_logic_vector(to_unsigned(p, 3));
					start <= '0'; wait for 100 ns; start <= '1';       -- aperta e solta KEY0
					wait for 100 ns;
					assert hex0 = "0111111" report "deveria estar escondido" severity error;
					wait for 2 us;
					if hex0 /= esperado or (led_erro = '1') /= (p /= 0) then
						falhas := falhas + 1;
						report "FALHA h=" & integer'image(h) & " m=" & integer'image(m) & " p=" & integer'image(p) severity error;
					end if;
				end loop;
			end loop;
		end loop;
		report "FIM: falhas = " & integer'image(falhas);
		fim <= true; wait;
	end process;
end sim;
