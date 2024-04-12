----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2024 01:48:07
-- Design Name: 
-- Module Name: Add_Sub_TB - Behavioral
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

entity RCAS_4_TB is
--  Port ( );
end RCAS_4_TB;

architecture Behavioral of RCAS_4_TB is

component RCAS_4
port(
     A : in STD_LOGIC_VECTOR (3 downto 0);
     B : in STD_LOGIC_VECTOR (3 downto 0);
     S : out STD_LOGIC_VECTOR (3 downto 0);
     M : in STD_LOGIC;
     Carry : out STD_LOGIC;
     Overflow : out STD_LOGIC
);
end component;

signal A:STD_LOGIC_VECTOR (3 downto 0);
signal B:STD_LOGIC_VECTOR (3 downto 0);
signal S:STD_LOGIC_VECTOR (3 downto 0);
signal M:STD_LOGIC;
signal carry: STD_LOGIC;
signal v:STD_LOGIC;

begin

UUT:RCAS_4
    port map(
        M=>M,
        A=>A,
        B=>B,
        S=>S,
        Carry=>carry,
        Overflow=>v
    );
process                 --Index No 220311C 0011 0101 1100 1001 0111
    begin
        M <= '0';
        A <= "0111";
        B <= "1001";
        wait for 100ns;
        A <= "1100";
        B <= "0101";
        wait for 100ns;
        A <= "0011";
        B <= "0011";
        wait for 100ns;
        A <= "1101";
        B <= "0100";
        wait for 100ns;
        A <= "0111";
        B <= "0011";
        wait for 100ns;
        
        M <= '1';
        A <= "0001";
        B <= "0001";
        wait for 100ns;
        A <= "0000";
        B <= "0101";
        wait for 100ns;
        A <= "1001";
        B <= "0011";
        wait for 100ns;
     
        M <= '0';
        A <= "0001";
        B <= "0001";
        wait for 100ns;
        wait;
end process;

end Behavioral;
