----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 02:42:21 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is

component Decoder_3_to_8 
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal i :  STD_LOGIC_VECTOR (2 downto 0);
signal en : STD_LOGIC;
signal y :  STD_LOGIC_VECTOR (7 downto 0);

begin
    
    UUT: Decoder_3_to_8 PORT MAP(
        I => i,
        EN => en,
        Y => y
    );
    
    process
        begin    --Index No 220311C 110 101 110 010 010 111
 
        
        en <= '1';
        i <= "111";
        WAIT FOR 100 ns;
        
        en <= '1';
        i <= "010";
        
        WAIT FOR 100 ns;
                
        en <= '1';
        i <= "010";
        
        WAIT FOR 100 ns;
            
        en <= '1';
        i <= "110";
        
        WAIT FOR 100 ns;
                    
        en <= '1';
        i <= "101";
                
        WAIT FOR 100 ns;
                            
        en <= '1';
        i <= "110";
                        
        WAIT FOR 100 ns;
                                    
        en <= '1';
        i <= "001";
                                
       WAIT FOR 100 ns;
                                            
        en <= '1';
        i <= "011"; 
        
       WAIT;
       end process;                                                            
end Behavioral;
