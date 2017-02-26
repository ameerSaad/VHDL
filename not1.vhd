Library ieee;
use ieee.std_logic_1164.all;

entity not1 is
	port(a:in std_logic;
		  y:out std_logic);
end not1;

architecture arch2 of not1 is
begin

y <= not a;

end arch2;