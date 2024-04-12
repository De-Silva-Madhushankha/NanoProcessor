----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2024 11:32:15 PM
-- Design Name: 
-- Module Name: Instruction_Decoder_TB - Behavioral
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

entity Instruction_Decoder_TB is
--  Port ( );
end Instruction_Decoder_TB;

architecture Behavioral of Instruction_Decoder_TB is

COMPONENT Instruction_Decoder
    Port ( InsBus : in STD_LOGIC_VECTOR (11 downto 0);
           CheckValue : in STD_LOGIC_VECTOR (3 downto 0);
           AddSubSel : out STD_LOGIC;
           RegEnable : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;
           ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           RegSelect1 : out STD_LOGIC_VECTOR (2 downto 0);
           RegSelect2 : out STD_LOGIC_VECTOR (2 downto 0);
           JumpFlag : out STD_LOGIC;
           AddressJ : out STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;

SIGNAL InsBus : STD_LOGIC_VECTOR (11 downto 0);
SIGNAL CheckValue,ImmediateValue : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL AddSubSel,LoadSelect,JumpFlag : STD_LOGIC;
SIGNAL RegEnable,RegSelect1,RegSelect2,AddressJ : STD_LOGIC_VECTOR (2 downto 0);

begin

    UUT: Instruction_Decoder
    Port map ( InsBus => InsBus,
               CheckValue => CheckValue,
               AddSubSel => AddSubSel,
               RegEnable => RegEnable,
               LoadSelect => LoadSelect,
               ImmediateValue => ImmediateValue,
               RegSelect1 => RegSelect1,
               RegSelect2 => RegSelect2,
               JumpFlag => JumpFlag,
               AddressJ => AddressJ );

    process begin
        
        InsBus <= "100010001010"; -- MOVI R1,10
        wait for 100 ns;
        
        InsBus <= "010100000000"; -- NEG R2
        wait for 100 ns;
        
        InsBus <= "000010100000"; -- ADD R1,R2
        wait for 100 ns;
        
        CheckValue <= "0000";
        InsBus <= "110010000111"; -- JNZ R1,0
        wait;
        
    end process;
    
end Behavioral;
