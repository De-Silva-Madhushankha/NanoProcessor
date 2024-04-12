----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2024 07:05:55 PM
-- Design Name: 
-- Module Name: PC_TB - Behavioral
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

entity PC_TB is
--  Port ( );
end PC_TB;

architecture Behavioral of PC_TB is

component PC is
    Port ( Next_Adress : in STD_LOGIC_VECTOR(2 downto 0);
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Memory_Select : out STD_LOGIC_VECTOR (2 downto 0));
end component;

Signal Clk: std_logic := '0';
Signal Res : std_logic;
Signal Memory_Select, Next_Adress : std_logic_vector (2 downto 0);

begin

    UUT : PC port map(Next_Adress,Res,Clk,Memory_Select);
    
    process begin      --Index No 220486N 110 101 110 101 000 110
    
    Res <= '0';
    Next_Adress <= "110";
    wait for 100ns;
    
    Res <= '0';
    Next_Adress <= "000";
    wait for 100ns;    
        
    Res <= '0';
    Next_Adress <= "101";
    wait for 100ns;        
    
    Res <= '0';
    Next_Adress <= "110";
    wait for 100ns;
    
    Res <= '1';
    Next_Adress <= "101";
    wait for 100ns;
    
    Res <= '1';
    Next_Adress <= "110";
    wait for 100ns;
    
    wait;            
  
    end process;
        
    process begin
         
       Clk <= not Clk;
       wait for 3 ns;
       
    end process;

end Behavioral;
