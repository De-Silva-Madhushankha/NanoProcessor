----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 04:40:12 PM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is

component D_FF is
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

signal d, r, clk, q: STD_LOGIC;

begin

    UUT : D_FF port map(d, r, clk, q);
     
     process begin
            
            r <= '0';
            d <= '0';
            wait for 100 ns;
            
            r <= '0';
            d <= '1';
            wait for 100 ns;
            
            r <= '1';
            d <= '1';
            wait for 100 ns;
                       
            r <= '1';
            d <= '0';
            wait for 100 ns;
            wait;   
     end process;
     
     process begin
            
            clk <= '0';
            wait for 50 ns;
            clk <= '1';
            wait for 50 ns;
     
     end process;


end Behavioral;
