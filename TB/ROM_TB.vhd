----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2024 07:42:29 PM
-- Design Name: 
-- Module Name: ROM_TB - Behavioral
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

entity ROM_TB is
--  Port ( );
end ROM_TB;

architecture Behavioral of ROM_TB is

component ROM
Port ( MemSelect : in STD_LOGIC_VECTOR (2 downto 0);
       InstructionBus : out STD_LOGIC_VECTOR (11 downto 0));
end component;

signal memSelect : std_logic_vector(2 downto 0);
signal instructionBus : std_logic_vector(11 downto 0);

begin

    UUT : ROM 
    Port map ( MemSelect => memSelect,
               InstructionBus => instructionBus );
                               
     process begin                 --Index No 220311C  110 101 110 010 010 111
        memSelect <= "111";
        wait for 100 ns;
        
        memSelect <= "010";
        wait for 100 ns;
        
        memSelect <= "010";
        wait for 100 ns;
        
        memSelect <= "110";
        wait for 100ns;

        memSelect <= "101";
        wait for 100ns;
        
        memSelect <= "110";
        wait for 100ns;
        
        memSelect <= "100";
        wait for 100ns;
        
        memSelect <= "000";
        wait;
    end process;

end Behavioral;
