library ieee;
use ieee.std_logic_1164.all;
entity mux2x1 is
port(	A,B,S: in std_logic;
	F: out std_logic
);
end mux2x1;
architecture mux2x1_dflow of mux2x1 is
begin
F <= ((not S) and A) or (S and B);
end mux2x1_dflow;

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
entity NOT_ent is
port(	x: in std_logic;
	F: out std_logic
);
end NOT_ent;

architecture NOT_dflow of NOT_ent is
begin
	F<=(not x);
end NOT_dflow;

library ieee;
use ieee.std_logic_1164.all;
entity func is
port(	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	f: out std_logic
);
end func;

architecture func_dflow of func is
component mux2x1 
port(	A,B,S: in std_logic;
	F: out std_logic
);
end component;
component NOT_ent
port(	x:in std_logic;
	f: out std_logic
);
end component;

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

signal g: std_logic;
signal h: std_logic;
signal i: std_logic;
signal j: std_logic;
signal k: std_logic;
signal l: std_logic;
signal m: std_logic;
signal n: std_logic;
signal o: std_logic;
signal p: std_logic;

begin
z1: AND_ent port map(c,d,g);
z2: NOT_ent port map(c,h);
z3: NOT_ent port map(d,i);
z4: AND_ent port map(h,i,j);
z5: OR_ent port map(g,j,k);
z6: AND_ent port map(b,d,l);
z7: NOT_ent port map(b,m);
z8: NOT_ent port map(c,n);
z9: AND_ent port map(m,n,o);
z10: OR_ent port map(l,o,p); 
z11: mux2x1 port map(k,p,a,f);
end func_dflow;

