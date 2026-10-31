library ieee;
use ieee.std_logic_1164.all;

-- Corretor de erro: a síndrome aponta o bit da mensagem a inverter.
entity corretor_de_erro is
	port(
		sindrome : in  std_logic_vector(2 downto 0);
		codigo   : in  std_logic_vector(6 downto 0);
		mensagem : out std_logic_vector(3 downto 0)
	);
end corretor_de_erro;

architecture arc_corretor_de_erro of corretor_de_erro is
	signal corr : std_logic_vector(3 downto 0);
begin
	with sindrome select
		corr <= "1000" when "011",   -- bit 3
		        "0100" when "101",   -- bit 2
		        "0010" when "110",   -- bit 1
		        "0001" when "111",   -- bit 0
		        "0000" when others;  -- sem erro, ou erro num bit de paridade

	mensagem <= codigo(3 downto 0) xor corr;
end arc_corretor_de_erro;
