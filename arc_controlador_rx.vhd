library ieee;
use ieee.std_logic_1164.all;

-- Controlador (RX): iniciar = 1 zera o desserializador (reset); depois da soltura deixa
-- deslocar 7 vezes (uma por tick) e mantém esconder = 1 até terminar.
entity controlador_rx is
	port(
		clk, tick, iniciar         : in  std_logic;
		reset, deslocar, esconder  : out std_logic
	);
end controlador_rx;

architecture arc_controlador_rx of controlador_rx is
	signal n : natural range 0 to 7 := 7;   -- bits já recebidos (7 = terminou)
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if iniciar = '1' then n <= 0;
			elsif tick = '1' and n < 7 then n <= n + 1;
			end if;
		end if;
	end process;

	reset    <= iniciar;
	deslocar <= '1' when tick = '1' and n < 7 else '0';
	esconder <= '1' when n < 7 else '0';
end arc_controlador_rx;
