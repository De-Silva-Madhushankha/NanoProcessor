----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2024 20:47:18
-- Design Name: 
-- Module Name: Mux - Behavioral
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

entity Mux_2_to_1_4bit is
    Port ( MuxIn : in STD_LOGIC_VECTOR (3 downto 0);
           LoadSel : in STD_LOGIC;
           Immediate : in STD_LOGIC_VECTOR (3 downto 0);
           MuxOut_4 : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_2_to_1_4bit;

architecture Behavioral of Mux_2_to_1_4bit is

component TriStateBuffer
	PORT( Input : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Enable : in STD_LOGIC);
end component;

signal LoadSel0,LoadSel1: std_logic;

begin

LoadSel0 <= NOT(LoadSel);
LoadSel1 <= LoadSel;

TriStateBuffer_0 : TriStateBuffer
	port map( Input => MuxIn,
    		  Output => MuxOut_4,
              Enable => LoadSel0
    );

TriStateBuffer_1 : TriStateBuffer
	port map( Input => Immediate,
    		  Output => MuxOut_4,
              Enable => LoadSel1
    );

end Behavioral;
