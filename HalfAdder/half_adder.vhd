library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
	port( a0 : in std_logic;
    	  b0 : in std_logic;
          s0 : out std_logic;
          c1 : out std_logic
          );
end half_adder;

architecture Behavioural of half_adder is
	begin
      s0 <= (a0 and (not b0)) or ((not a0) and b0);
      c1 <= a0 and b0;
end Behavioural;
        
  			