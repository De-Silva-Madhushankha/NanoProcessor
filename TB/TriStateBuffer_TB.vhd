----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2024 19:33:01
-- Design Name: 
-- Module Name: TriStateBuffer_TB - Behavioral
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

entity TriStateBuffer_TB is
--  Port ( );
end TriStateBuffer_TB;

architecture Behavioral of TriStateBuffer_TB is


component TriStateBuffer
    Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Enable : in STD_LOGIC);
end component;

signal Input, Output: std_logic_vector(3 downto 0);
signal Enable: std_logic;

begin

UUT: TriStateBuffer
	PORT MAP(
    Input => Input,
    Enable => Enable,
    Output => Output);
    
  process begin     --Index No 220102L 0011 0101 1011 1100 0110

  Input <= "0110";
  Enable <= '1';
  wait for 100 ns;

  Input <= "1100";
  Enable <= '0';
  wait for 100 ns;
  
  Input <= "1011";
  Enable <= '1';
  wait for 100 ns;
  
  Input <= "0101";
  Enable <= '0';
  wait for 100 ns;
  
  Input <= "0011";
  Enable <= '1';
  wait;

  end process;

end Behavioral;