library ieee;
use ieee.std_logic_1164.all;

entity operation is
port(
   x:in std_logic;
   
   z:out std_logic
   );
end operation;

architecture STRUCTURAL of operation is
component T_FlipFlop is
port(x:in std_logic;
     present:in std_logic;
	 y:out std_logic
	 );
end component;
signal present_u,present_v:std_logic:='0';
signal next_u,next_v:std_logic;

begin
t1:T_FlipFlop port map (x,present_u,next_u);--u(t+1)=u xnor x
t2:T_FlipFlop port map (x,present_v,next_v);-- v(t+1)=v xor x
z<=((not x) and present_u) or (x and present_v)or not (present_u or present_v);--z=x'u+xv+u'v'
present_u<=not next_u;
present_v<=next_v;
end STRUCTURAL;


	 

