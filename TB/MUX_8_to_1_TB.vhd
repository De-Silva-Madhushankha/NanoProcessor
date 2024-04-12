----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2024 01:33:17
-- Design Name: 
-- Module Name: MUX_8_to_1_TB - Behavioral
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

entity MUX_8_to_1_TB is
--  Port ( );
end MUX_8_to_1_TB;

architecture Behavioral of Mux_8_to_1_TB is

component Mux_8_to_1
    Port ( muxIN0 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN1 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN2 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN3 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN4 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN5 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN6 : in STD_LOGIC_VECTOR (3 downto 0);
           muxIN7 : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC_VECTOR (2 downto 0);
           muxOut : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal muxIN0,muxIN1,muxIN2,muxIN3,muxIN4,muxIN5,muxIN6,muxIN7,muxOut: std_logic_vector(3 downto 0);
signal RegSel: std_logic_vector(2 downto 0);

begin

    UUT: Mux_8_to_1
	PORT MAP(
        muxIN0 => muxIN0,
        muxIN1 => muxIN1,
        muxIN2 => muxIN2,
        muxIN3 => muxIN3,
        muxIN4 => muxIN4,
        muxIN5 => muxIN5,
        muxIN6 => muxIN6,
        muxIN7 => muxIN7,
        muxOut => muxOut,
        RegSel => RegSel);
    
    process begin     --Index No 220102L 0011 0101 1011 1100 0110

    muxIN0 <= "0110";
    muxIN1 <= "1100";
    muxIN2 <= "1011";
    muxIN3 <= "0101";
    muxIN4 <= "0011";
    muxIN5 <= "1101";
    muxIN6 <= "1110";
    muxIN7 <= "1111";

    RegSel <= "000";
    wait for 100 ns;

    RegSel <= "001";
    wait for 100 ns;

    RegSel <= "010";
    wait for 100 ns;

    RegSel <= "011";
    wait for 100 ns;

    RegSel <= "100";
    wait for 100 ns;

    RegSel <= "101";
    wait for 100 ns;

    RegSel <= "110";
    wait for 100 ns;

    RegSel <= "111";
    wait;

    end process;

end Behavioral;
