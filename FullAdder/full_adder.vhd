library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is 
	port( a0 : in std_logic;
    	  b0 : in std_logic;
          c0 : in std_logic;
          s0 : out std_logic;
          c1 : out std_logic
          );
end full_adder;

architecture Behavioural of full_adder is
	begin
    	s0 <= (a0 and b0 and c0) or
        	  (a0 and (not b0) and (not c0)) or
              ((not a0) and b0 and (not c0)) or
              ((not a0) and (not b0) and c0);
        
        c1 <= ((not a0) and b0 and c0) or
        	  (a0 and (not b0) and c0) or
              (a0 and b0 and (not c0)) or
              (a0 and b0 and c0);
end Behavioural;