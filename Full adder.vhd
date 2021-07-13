library ieee;
use ieee.std_logic_1164.all;
entity OR_ent is
port(	x: in std_logic;
	y: in std_logic;
	z: in std_logic;
	F: out std_logic
);
end OR_ent;

architecture OR_dflow of OR_ent is
begin
	F<=x or y or z;
end OR_dflow;

library ieee;
use ieee.std_logic_1164.all;
entity XOR_ent is
port(	x: in std_logic;
	y: in std_logic;
	z: in std_logic;
	F: out std_logic
);
end XOR_ent;

architecture XOR_dflow of XOR_ent is
begin
	F<=x xor y xor z;
end XOR_dflow;

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
	c: in std_logic;
	cout: out std_logic;
	s: out std_logic
);
end Final;

architecture Final_flow of Final is 
component AND_ent 
port ( 	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end component;
component XOR_ent 
port ( 	x: in std_logic;
	y: in std_logic;
	z: in std_logic;
	F: out std_logic
);
end component;
component OR_ent
port(	x: in std_logic;
	y: in std_logic;
	z: in std_logic;
	F: out std_logic
);
end component;
signal v: std_logic;
signal m: std_logic;
signal n: std_logic;
begin
p1: AND_ent port map(a,b,v);
p2: AND_ent port map(b,c,m);
p3: AND_ent port map(c,a,n);
p4: OR_ent port map(v,m,n,cout);
p5: XOR_ent port map(a,b,c,s);
end Final_flow;