library ieee;
use ieee.std_logic_1164.all;
entity SR_flipflop is
port(	clk: in std_logic;
	s: in std_logic;
	r: in std_logic;
	Qn: out std_logic;
	Qnot: out std_logic
);
end SR_flipflop;

architecture SR_flipflop_flow of SR_flipflop is
begin
	process(clk,s,r)
		begin
		if (clk='1' and clk' event) then 
			if((s='0')and(r='1')) then
				Qn<=s;
				Qnot<=r;
			elsif((s='1')and(r='0')) then
				Qn<=s;
				Qnot<=r;
			elsif((s='1')and(r='1')) then
				Qn<='Z';
				Qnot<='Z';
			end if;
		end if;
	end process;
end SR_flipflop_flow;