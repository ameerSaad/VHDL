Library ieee;
use ieee.std_logic_1164.all;

entity xor1 is
port(a,b:in std_logic;
	  y:out std_logic);
end xor1;

architecture arch1 of xor1 is
begin

y <= a xor b;

end arch1;