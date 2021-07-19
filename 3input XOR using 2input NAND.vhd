library ieee;
use ieee.std_logic_1164.all;
entity NAND_ent is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end NAND_ent;

architecture NAND_dflow of NAND_ent is
begin
	F<=x nand y;
end NAND_dflow;

library ieee;
use ieee.std_logic_1164.all;
entity Eval is 
port(	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	f: out std_logic
);
end Eval;

architecture Eval_flow of Eval is 
component NAND_ent 
port ( 	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end component;
signal d: std_logic;
signal e: std_logic;
signal h: std_logic;
signal i: std_logic;
signal j: std_logic;
signal l: std_logic;
signal m: std_logic;
signal n: std_logic;
signal p: std_logic;
signal q: std_logic;
signal r: std_logic;
signal t: std_logic;
signal u: std_logic;
signal v: std_logic;
signal x: std_logic;
signal y: std_logic;
signal z: std_logic;
signal aa: std_logic;
signal ab: std_logic;

begin
v1: NAND_ent port map(a,a,d);
v2: NAND_ent port map(b,b,e);
v3: NAND_ent port map(c,c,h);
v4: NAND_ent port map(d,e,i);
v5: NAND_ent port map(i,i,j);
v6: NAND_ent port map(j,c,l);
v8: NAND_ent port map(d,b,m);
v9: NAND_ent port map(m,m,n);
v10: NAND_ent port map(h,n,p);
v12: NAND_ent port map(a,e,q);
v13: NAND_ent port map(q,q,r);
v14: NAND_ent port map(r,h,t);
v17: NAND_ent port map(a,b,u);
v18: NAND_ent port map(u,u,v);
v19: NAND_ent port map(c,v,x);
v21: NAND_ent port map(l,p,y);
v22: NAND_ent port map(t,x,z);
v23: NAND_ent port map(y,y,aa);
v24: NAND_ent port map(z,z,ab);
v25: NAND_ent port map(aa,ab,f);
end Eval_flow;