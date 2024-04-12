----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2024 21:22:37
-- Design Name: 
-- Module Name: Adder_3_TB - Behavioral
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

entity Adder_3_TB is
--  Port ( );
end Adder_3_TB;

architecture Behavioral of Adder_3_TB is



component Adder_3
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           Increment : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal A,Increment: std_logic_vector(2 downto 0);

begin

UUT: Adder_3 PORT MAP(
    A => A,
    Increment => Increment);

  process
  begin            --Index No 220311C 110 101 110 010 010 111

    A <= "111";
    wait for 50 ns;

    A <= "010";
    wait for 50 ns;

    A <= "010";
    wait for 50 ns;

    A <= "110";
    wait for 50 ns;

    A <= "101";
    wait for 50 ns;

    A <= "110";
    wait;

  end process;

end Behavioral;
