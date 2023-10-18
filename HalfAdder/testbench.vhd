library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

  component half_adder is
      port( a0 : in std_logic;
            b0 : in std_logic;
            s0 : out std_logic;
            c1 : out std_logic
           );
  end component;

  signal a_in, b_in : std_logic;
  signal s_out, c_out : std_logic;

  begin
  	inst : half_adder port map(a_in, b_in, s_out, c_out);
    
    process
      begin

      a_in <= '0';
      b_in <= '0';
      wait for 1 ns;
	  report "Value of s0 signal is: " & std_logic'image(s_out);
      report "Value of c1 signal is: " & std_logic'image(c_out);

      -- Clear inputs
      a_in <= '0';
      b_in <= '0';

      wait;
  end process;



end tb;