library ieee;
use ieee.std_logic_1164.all;

-- Controlador (TX): iniciar = 1 zera a contagem e manda carregar (registrar);
-- depois da soltura, deixa deslocar 7 vezes (uma por tick).
entity controlador_tx is
	port(
		clk, tick, iniciar  : in  std_logic;
		registrar, deslocar : out std_logic
	);
end controlador_tx;

architecture arc_controlador_tx of controlador_tx is
	signal n : natural range 0 to 7 := 7;   -- bits já deslocados (7 = terminou)
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if iniciar = '1' then n <= 0;
			elsif tick = '1' and n < 7 then n <= n + 1;
			end if;
		end if;
	end process;

	registrar <= iniciar;
	deslocar  <= '1' when tick = '1' and n < 7 else '0';
end arc_controlador_tx;
