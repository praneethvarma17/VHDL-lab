library ieee;
use ieee.std_logic_1164.all;
entity mux4x1 is
port(	input: in std_logic_vector(3 downto 0);
	s0: in std_logic;
	s1: in std_logic;
	output: out std_logic
);
end mux4x1;

architecture mux4x1_dflow of mux4x1 is
begin
	process(input,s0,s1)
		begin
		if ((s0='0') and (s1='0')) then
			output<=input(3);
		elsif((s0='1')and (s1='0')) then
			output<=input(2);
		elsif((s0='0') and (s1='1')) then
			output<=input(1);
		elsif((s0='1') and (s1='1')) then
			output<=input(0);
		end if;
	end process;
end mux4x1_dflow;