----------------------------------------------------------------------------------
-- Company: UoM
-- Engineer:Madhushankha De Silva 
-- 
-- Create Date: 02/13/2024 02:19:20 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_HA is
    
end TB_HA;
architecture Behavioral of TB_HA is

component HA
    PORT( A,B: in std_logic;
          S,C : out std_logic);
end component;


signal a,b,c,s : std_logic;
begin

    UUT: HA PORT MAP( 
        A =>a,
        B =>b,
        S =>s,
        C =>c
   );
   
   process 
    begin              --Index No 220621C  0011 0101 1101 1100 1101
        a <= '1';
        b <= '0';
        
        wait for 100 ns;
        
        a <= '1';
        
        wait for 100 ns;
        
        a  <= '1';
        b <= '0';
        
        wait for 100 ns;
        
        a <= '0';
        
        wait;
        
        
     end process; 


end Behavioral;
