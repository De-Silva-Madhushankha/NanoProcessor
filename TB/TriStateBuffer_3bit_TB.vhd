----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2024 19:47:07
-- Design Name: 
-- Module Name: TriStateBuffer_3bit_TB - Behavioral
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

entity TriStateBuffer_3bit_TB is
--  Port ( );
end TriStateBuffer_3bit_TB;

architecture Behavioral of TriStateBuffer_3bit_TB is

component TriStateBuffer_3bit
    Port ( In_3 : in STD_LOGIC_VECTOR (2 downto 0);
           Out_3 : out STD_LOGIC_VECTOR (2 downto 0);
           En_3 : in STD_LOGIC);
end component;

signal In_3, Out_3: std_logic_vector(2 downto 0);
signal En_3: std_logic;

begin

UUT: TriStateBuffer_3bit
	PORT MAP(
    In_3 => In_3,
    En_3 => En_3,
    Out_3 => Out_3);
  
   process begin     --Index No 220102L 110 101 101 111 000 110
   
     In_3 <= "110";
     En_3 <= '1';
     wait for 100 ns;
   
     In_3 <= "000";
     En_3 <= '1';
     wait for 100 ns;
     
     In_3 <= "111";
     En_3 <= '0';
     wait for 100 ns;
     
     In_3 <= "101";
     En_3 <= '1';
     wait for 100 ns;
     
     In_3 <= "110";
     En_3 <= '0';
     wait for 100 ns;
     
     In_3 <= "100";
     En_3 <= '1';
     wait for 100 ns;
     
     wait;
   
     end process;
   
end Behavioral;
