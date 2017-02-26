Library ieee;
use ieee.std_logic_1164.all;

entity ParityGenerator is
     port(d0,d1,d2,d3,d4,d5,d6,d7,d8:in std_logic;
	       ev:out std_logic);
end ParityGenerator;

architecture arch of ParityGenerator is

component xor1
	port(a,b:in std_logic;
		  y:out std_logic);
end component;

component not1
	port(a:in std_logic;
		  y:out std_logic);
end component;

signal e0,e1,e2,e3,f0,f1,h0,od : std_logic;
begin
        x1:xor1 port map(d0,d1,e0);
        x2:xor1 port map(d2,d3,e1);
        x3:xor1 port map(d4,d5,e2);
        x4:xor1 port map(d6,d7,e3);
        x5:xor1 port map(f0,f1,h0);
        x6:xor1 port map(h0,d8,od);
        x7:not1 port map(od, ev);
end arch;