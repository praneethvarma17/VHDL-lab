library ieee;
use ieee.std_logic_1164.all;
entity D_flipflop is
port(	clk,Din: in std_logic;
	Q: out std_logic;
	Qnot: out std_logic
);
end D_flipflop;

architecture D_flipflop_flow of D_flipflop is
begin
	process(clk,Din)
		begin
		if (clk='1' and clk' event) then 
			Q<=Din;
			Qnot<=(not Din);
		end if;
	end process;
end D_flipflop_flow;