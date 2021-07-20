library ieee;
use ieee.std_logic_1164.all;
entity mux8x1 is
port(	input: in std_logic_vector(7 downto 0);
	s0: in std_logic;
	s1: in std_logic;
	s2: in std_logic;
	output: out std_logic
);
end mux8x1;

architecture mux8x1_dflow of mux8x1 is
begin
	process(input,s0,s1,s2)
		begin
		if ((s0='0') and (s1='0')) then
			if ((s2='0')) then 
				output<=input(7);
			else 
				output<=input(6);
			end if;
		elsif((s0='1')and (s1='0')) then
			if (s2='0') then 
				output<=input(3);
			else
				output<=input(2);
			end if;
		elsif((s0='0') and (s1='1')) then
			if(s2='0')then
				output<=input(5);
			else
				output<=input(4);
			end if;
		else
			if (s2='0') then
				output<=input(1);
			else
				output<=input(0);
			end if;
		end if;
	end process;
end mux8x1_dflow;