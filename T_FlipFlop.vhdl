library ieee;
use ieee.std_logic_1164.all;

entity T_flipFlop is
port(x:in std_logic;
     present:in std_logic;
	 y:out std_logic
	 );
end T_flipFlop;
	 
architecture DATAFLOW of T_flipFlop is

begin
y<=x xor present;
end DATAFLOW;
	 
