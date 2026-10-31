library ieee;
use ieee.std_logic_1164.all;

-- Serializador: registrar = 1 carrega o paralelo; deslocar = 1 desloca (bit 0 sai primeiro).
entity serializador is
	port(
		clk, registrar, deslocar : in  std_logic;
		paralelo                 : in  std_logic_vector(6 downto 0);
		serie                    : out std_logic
	);
end serializador;

architecture arc_serializador of serializador is
	signal reg : std_logic_vector(6 downto 0) := (others => '0');
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if registrar = '1' then reg <= paralelo;
			elsif deslocar = '1' then reg <= '0' & reg(6 downto 1);
			end if;
		end if;
	end process;

	serie <= reg(0);
end arc_serializador;
