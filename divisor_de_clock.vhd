library ieee;
use ieee.std_logic_1164.all;

-- Divisor de clock: tick = 1 pulso a cada 2^ESTAGIOS ciclos (enable = 0: tick em todo ciclo).
entity divisor_de_clock is
	generic(ESTAGIOS : natural := 25);
	port(
		clk, enable : in  std_logic;
		tick, lento : out std_logic     -- lento = clock dividido (para o LED)
	);
end divisor_de_clock;

architecture arc_divisor_de_clock of divisor_de_clock is
	constant MAXC : natural := 2**ESTAGIOS - 1;
	signal cnt : natural range 0 to MAXC := 0;
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if cnt = MAXC then cnt <= 0; else cnt <= cnt + 1; end if;
		end if;
	end process;

	tick  <= '1' when enable = '0' or cnt = MAXC else '0';
	lento <= '1' when cnt > MAXC / 2 else '0';
end arc_divisor_de_clock;
