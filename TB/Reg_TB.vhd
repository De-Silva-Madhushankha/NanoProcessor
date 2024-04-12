----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2024 19:09:52
-- Design Name: 
-- Module Name: Reg_TB - Behavioral
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

entity Reg_TB is
--  Port ( );
end Reg_TB;

architecture Behavioral of Reg_TB is

component Reg
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0) := "0000" );
end component;

signal D, Q: std_logic_vector(3 downto 0);
signal EN, Reset: std_logic;
signal Clk: std_logic := '0';

begin

UUT: Reg
	PORT MAP(
    D => D,
    EN => EN,
    Clk => Clk,
    Reset => Reset,
    Q => Q);
    
  process begin     --Index No 220621C  0011 0101 1101 1100 1101

  D <= "1101";
  EN <= '1';
  Reset <= '0';
  wait for 100 ns;

  D <= "1100";
  EN <= '1';
  Reset <= '1';
  wait for 100 ns;
  
  D <= "1101";
  EN <= '0';
  Reset <= '0';
  wait for 100 ns;
  
  D <= "0101";
  EN <= '1';
  Reset <= '0';
  wait for 100 ns;
  
  D <= "0011";
  En <= '1';
  Reset <= '1';
  wait;

  end process;
  
  
  process begin
  
    Clk <= not Clk;
    wait for 5 ns;
  
  end process;


end Behavioral;
