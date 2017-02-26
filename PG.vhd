Library IEEE;
use ieee.std_logic_1164.all;

entity PG is

port (A,B,C,D,E,F,G,H,I : IN std_logic;
		Even : OUT std_logic );
end PG;

Architecture arch of PG is
Signal J,K,L,M,N,O,P,Odd : std_logic ;

BEGIN

J <= A xor B;
K <= C xor D;
L <= E xor F;
M <= G xor H;
N <= J xor K;
O <= L xor M;
P <= N xor O;
Odd <= P xor I;
Even <= not Odd;

END arch;