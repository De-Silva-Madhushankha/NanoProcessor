----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2024 10:23:38 PM
-- Design Name: 
-- Module Name: TB_Nanoprocessor - Behavioral
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

entity TB_Nanoprocessor is
--  Port ( );
end TB_Nanoprocessor;

architecture Behavioral of TB_Nanoprocessor is

component NanoProcessor is
    Port ( Processor_Reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR(6 downto 0);
           an : out STD_LOGIC_VECTOR(3 downto 0);
           Zero : out STD_LOGIC;
           Overflow : out STD_LOGIC);
end component;

Signal clk : STD_LOGIC := '0';
Signal Processor_Reset, Zero, Overflow : STD_LOGIC;
Signal led, an : STD_LOGIC_VECTOR(3 downto 0);
Signal seg : STD_LOGIC_VECTOR(6 downto 0);

begin

    UUT: Nanoprocessor
    Port map ( Processor_Reset => Processor_Reset,
               clk => clk,
               led => led,
               seg => seg,
               an => an,
               Zero => Zero,
               Overflow => Overflow);
    
     process begin
        Processor_Reset <= '1';
        wait for 100ns;
        
        Processor_Reset <= '0';
        wait;
     end process;

    process begin
       Clk <= not Clk;
       wait for 1 ns;
    end process;

end Behavioral;