-- 4 bit adder only using std_logic data objects
library IEEE;
use IEEE.std_logic_1164.all;

entity four_bit_adder is 
	port( w0 : in std_logic;
    	  x0 : in std_logic;
          y0 : in std_logic;
          z0 : in std_logic;
          w1 : in std_logic;
          x1 : in std_logic;
          y1 : in std_logic;
          z1 : in std_logic;
          out0 : out std_logic;
          out1 : out std_logic;
          out2 : out std_logic;
          out3 : out std_logic;
          out4 : out std_logic
         );
end four_bit_adder;

architecture Behavioural of four_bit_adder is
	component full_adder is 
    	port( a0 : in std_logic;
              b0 : in std_logic;
              c0 : in std_logic;
              s0 : out std_logic;
              c1 : out std_logic
            );
    end component;
    
    signal carry_term : std_logic;
    begin

    	carry_term <= '0';
        
        firstInst : full_adder port map(z0, z1, carry_term, out4, carry_term);
        
        secondInst : full_adder port map(y0, y1, carry_term, out3, carry_term);
        
        thirdInst : full_adder port map(x0, x1, carry_term, out2, carry_term);

        fourthInst : full_adder port map(w0, w1, carry_term, out1, carry_term);

        out0 <= carry_term;
end Behavioural;


        	
        
        
    	