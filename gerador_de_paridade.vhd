library ieee;
use ieee.std_logic_1164.all;

entity gerador_de_paridade is
	port(
		mensagem: in std_logic_vector (3 downto 0);
		codigo: out std_logic_vector (6 downto 0)
	);
end gerador_de_paridade;

architecture arc_gerador_de_paridade of gerador_de_paridade is
begin
	codigo <= 	(mensagem(0) xor mensagem(1) xor mensagem(2)) &
					(mensagem(0) xor mensagem(1) xor mensagem(3)) &
					(mensagem(0) xor mensagem(2) xor mensagem(3)) &
					mensagem;
end arc_gerador_de_paridade;