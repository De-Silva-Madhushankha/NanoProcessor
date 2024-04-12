----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2024 07:43:55 PM
-- Design Name: 
-- Module Name: MUX_2_to_1_3bit_TB - Behavioral
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

entity MUX_2_to_1_3bit_TB is
--  Port ( );
end MUX_2_to_1_3bit_TB;

architecture Behavioral of MUX_2_to_1_3bit_TB is

component MUX_2_to_1_3bit is
    Port ( Address_to_Jump : in STD_LOGIC_VECTOR (2 downto 0);
           Incremented_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_Flag : in STD_LOGIC;
           Next_Address : out STD_LOGIC_VECTOR (2 downto 0));
end component;

Signal Address_to_Jump, Incremented_Address, Next_Address : std_logic_vector(2 downto 0);
Signal Jump_Flag : std_logic;


begin
    UUT : MUX_2_to_1_3bit 
    port map(Address_to_Jump, Incremented_Address, Jump_Flag, Next_Address);
    

    process begin           --Index No 220486N 110 101 110 101 000 110
    
    Jump_Flag <= '1';
    Address_to_Jump <= "110";
    Incremented_Address <= "000";
    wait for 100ns;
    
    
    Jump_Flag <= '0';
    Address_to_Jump <= "101";
    Incremented_Address <= "110";
    wait for 100ns;    
    
    Jump_Flag <= '1';
    Address_to_Jump <= "101";
    Incremented_Address <= "110";
    wait for 100ns; 
    
    Jump_Flag <= '0';
    Address_to_Jump <= "100";
    Incremented_Address <= "110";
    wait for 100ns; 
    
    
    Jump_Flag <= '0';
    Address_to_Jump <= "011";
    Incremented_Address <= "111";
    wait for 100ns;       
    
    wait; 
       
    end process;
   
end Behavioral;
