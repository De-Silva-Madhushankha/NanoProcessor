----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2024 20:48:46
-- Design Name: 
-- Module Name: Mux_TB - Behavioral
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

entity Mux_2_to_1_TB is
--  Port ( );
end Mux_2_to_1_TB;

architecture Behavioral of Mux_2_to_1_TB is

component MUX_2_to_1_4bit
    Port ( MuxIn : in STD_LOGIC_VECTOR (3 downto 0);
           LoadSel : in STD_LOGIC;
           Immediate : in STD_LOGIC_VECTOR (3 downto 0);
           MuxOut_4 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal MuxIn,MuxOut_4,Immediate: std_logic_vector(3 downto 0);
signal LoadSel: std_logic;

begin

UUT: MUX_2_to_1_4bit
	PORT MAP(
    MuxIn => MuxIn,
    Immediate => Immediate,
    LoadSel => LoadSel,
    MuxOut_4 => MuxOut_4
    );
    
 process
 begin                --Index No 220621C  0011 0101 1101 1100 1101  

    MuxIn <= "1101";
    Immediate <= "1100";
    LoadSel <= '0';
    wait for 100 ns;

    MuxIn <= "1101";
    Immediate <= "0101";
    LoadSel <= '1';
    wait for 100 ns;

    MuxIn <= "0011";
    Immediate <= "0000";
    LoadSel <= '0';
    wait for 100 ns;

    MuxIn <= "0001";
    Immediate <= "0101";
    LoadSel <= '1';
    wait for 100 ns;

    MuxIn <= "0010";
    Immediate <= "0011";
    LoadSel <= '0';
    wait for 100 ns;

    MuxIn <= "0011";
    Immediate <= "0100";
    LoadSel <= '1';
    wait;

end process;

end Behavioral;

