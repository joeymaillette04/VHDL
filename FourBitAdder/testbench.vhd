library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end entity;

architecture tb of testbench is
    component four_bit_adder is
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
    end component;

    signal w0_in, x0_in, y0_in, z0_in, w1_in, x1_in, y1_in, z1_in : std_logic;
    signal out_4, out_3, out_2, out_1, out_0 : std_logic;

    begin
        
        adderInst : four_bit_adder port map(w0_in, x0_in, y0_in, z0_in, w1_in, x1_in, y1_in, z1_in, out_4, out_3, out_2, out_1, out_0);
        
        process
        begin
            w0_in <= '0';
            x0_in <= '0';
            y0_in <= '0';
            z0_in <= '0';
            w1_in <= '0';
            x1_in <= '0';
            y1_in <= '0';
            z1_in <= '0';
            wait for 1 ns;
            report "Value of 1st digit signal is: " & std_logic'image(out_0);
            report "Value of 2nd digit signal is: " & std_logic'image(out_1);
            report "Value of 3rd digit signal is: " & std_logic'image(out_2);
            report "Value of 4th digit signal is: " & std_logic'image(out_3);
            report "Value of 5th digit signal is: " & std_logic'image(out_4);
            
            wait;
         end process;
end tb;
        
        
            
        
            
            
            
            
            
        
        	