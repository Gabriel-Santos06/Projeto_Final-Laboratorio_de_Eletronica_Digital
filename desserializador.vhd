library ieee;
use ieee.std_logic_1164.all;

-- Desserializador: reset = 1 zera; deslocar = 1 faz entrar 1 bit; esconder = 1 mostra zeros.
entity desserializador is
	port(
		clk, reset, deslocar, esconder, serie : in  std_logic;
		paralelo                              : out std_logic_vector(6 downto 0)
	);
end desserializador;

architecture arc_desserializador of desserializador is
	signal reg : std_logic_vector(6 downto 0) := (others => '0');
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then reg <= (others => '0');
			elsif deslocar = '1' then reg <= serie & reg(6 downto 1);
			end if;
		end if;
	end process;

	paralelo <= (others => '0') when esconder = '1' else reg;
end arc_desserializador;
