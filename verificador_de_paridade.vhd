library ieee;
use ieee.std_logic_1164.all;

-- Verificador de paridade (Hamming 7,4).
-- Mesmo layout do gerador_de_paridade: codigo = p_a & p_b & p_c & m3..m0
--   codigo(6) = m0 xor m1 xor m2
--   codigo(5) = m0 xor m1 xor m3
--   codigo(4) = m0 xor m2 xor m3
--   codigo(3 downto 0) = mensagem
entity verificador_de_paridade is
	port(
		codigo   : in  std_logic_vector (6 downto 0);
		sindrome : out std_logic_vector (2 downto 0);
		erro     : out std_logic
	);
end verificador_de_paridade;

architecture arc_verificador_de_paridade of verificador_de_paridade is
	signal s : std_logic_vector(2 downto 0);
begin
	s(2) <= codigo(0) xor codigo(1) xor codigo(2) xor codigo(6);
	s(1) <= codigo(0) xor codigo(1) xor codigo(3) xor codigo(5);
	s(0) <= codigo(0) xor codigo(2) xor codigo(3) xor codigo(4);

	sindrome <= s;
	erro     <= s(2) or s(1) or s(0);
end arc_verificador_de_paridade;
