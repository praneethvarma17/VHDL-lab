library ieee;
use ieee.std_logic_1164.all;
entity AND_ent is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end AND_ent;

architecture AND_dflow of AND_ent is
begin
	process(x, y)
	begin
		if ((x='1')and (y='1')) then
			F<='1';
		else
			F<='0';
		end if;
	end process;
end AND_dflow;
