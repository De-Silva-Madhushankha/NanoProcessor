----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2024 05:19:56 PM
-- Design Name: 
-- Module Name: LUT_16_7_TB - Behavioral
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

entity LUT_16_7_TB is
--  Port ( );
end LUT_16_7_TB;

architecture Behavioral of LUT_16_7_TB is

component LUT_16_7 is
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal address : std_logic_vector (3 downto 0);
signal data : std_logic_vector(6 downto 0);
begin

UUT : LUT_16_7 port map(
    address => address,
    data => data);
    
    process begin
    -- index 220102L 11 0101 1011 1100 0110
    address <= "0110";
    wait for 100ns;
  
    address <= "1100";
    wait for 100ns; 
    
    address <= "1011";
    wait for 100ns;
    
    address <= "0101";
    wait for 100ns;
    
    address <= "1101";
    wait for 100ns;
    
    address <= "1000";
    wait for 100ns;
    
    address <= "1110";
    wait for 100ns;
    
    address <= "0000";
    wait for 100ns;
    end process;

end Behavioral;
