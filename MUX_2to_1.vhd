----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 14:10:03
-- Design Name: 
-- Module Name: MUX_2to_1 - Behavioral
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

entity MUX_2to_1 is
    Port ( MuxIn : in STD_LOGIC_VECTOR (3 downto 0);
           LoadSel : in STD_LOGIC;
           Immediate : in STD_LOGIC_VECTOR (3 downto 0);
           MuxOut_4 : out STD_LOGIC_VECTOR (3 downto 0));
end MUX_2to_1;

architecture Behavioral of MUX_2to_1 is

begin

    process(LoadSel)
        begin
            if LoadSel = '0' then 
                MuxOut_4 <= muxIN;
            elsif LoadSel = '1' then 
                MuxOut_4 <= Immediate;
            end if;
    end process;
    
end Behavioral;
