library ieee;
use ieee.std_logic_1164.all;
entity OR_ent is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end OR_ent;

architecture OR_dflow of OR_ent is
begin
	F<=x or y;
end OR_dflow;

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
	F<=x and y;
end AND_dflow;

library ieee;
use ieee.std_logic_1164.all;
entity Final is 
port(	a: in std_logic;
	b: in std_logic;
	d: in std_logic;
	e: in std_logic;
	g: out std_logic
);
end Final;

architecture Final_flow of Final is 
component AND_ent 
port ( 	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end component;
component OR_ent
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end component;
signal c: std_logic;
signal f: std_logic;

begin
v1: AND_ent port map(a,b,c);
v2: AND_ent port map(d,e,f);
v3: OR_ent port map(c,f,g);
end Final_flow;
