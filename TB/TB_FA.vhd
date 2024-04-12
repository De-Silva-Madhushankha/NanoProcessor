----------------------------------------------------------------------------------
-- Company: UoM
-- Engineer: Madhushankha De Silva
-- 
-- Create Date: 02/13/2024 03:22:07 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is

component FA
    port  ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
           
 end component;
 
 signal a,b, c_in, s, c_out : std_logic;

begin
    UUT: FA PORT MAP( 
        A =>a,
        B =>b,
        C_in =>c_in,
        S =>s,
        C_out => c_out
   );
   
   
    process     --Index No 220486N 0011 0101 1101 0100 0110
     begin 
      a <= '0';          
      b <= '0'; 
      c_in <= '0'; 
  
      WAIT FOR 100 ns;   
      c_in <= '1'; 
  
      WAIT FOR 100 ns;  
      b <= '1'; 
      c_in <= '0'; 
  
      WAIT FOR 100 ns;   
      c_in <= '0'; 
  
      WAIT FOR 100 ns;  
      a <= '0'; 
      b <= '1'; 
      c_in <= '0'; 
   
  
      WAIT FOR 100 ns;   
      c_in <= '1'; 
      WAIT FOR 100 ns;   
      b <= '0'; 
      c_in <= '1'; 
      WAIT FOR 100 ns;    
      c_in <= '1';  
      WAIT; 
    
 end process;
   
   
    
    


end Behavioral;
