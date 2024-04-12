----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2024 03:25:26 PM
-- Design Name: 
-- Module Name: RegBank_TB - Behavioral
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

entity RegBank_TB is
--  Port ( );
end RegBank_TB;

architecture Behavioral of RegBank_TB is

component RegBank is
    Port ( Value : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegEN : in STD_LOGIC_VECTOR (2 downto 0);
           Reset : in STD_LOGIC;
           Q0 : out STD_LOGIC_VECTOR (3 downto 0);
           Q1 : out STD_LOGIC_VECTOR (3 downto 0);
           Q2 : out STD_LOGIC_VECTOR (3 downto 0);
           Q3 : out STD_LOGIC_VECTOR (3 downto 0);
           Q4 : out STD_LOGIC_VECTOR (3 downto 0);
           Q5 : out STD_LOGIC_VECTOR (3 downto 0);
           Q6 : out STD_LOGIC_VECTOR (3 downto 0);
           Q7 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

Signal value,q0,q1,q2,q3,q4,q5,q6,q7 : std_logic_vector(3 downto 0);
Signal reset : std_logic;
Signal clk: std_logic := '0';
Signal regsel : std_logic_vector(2 downto 0);

begin

    UUT : RegBank
    port map(
    Value => value,
    Clk => clk,
    RegEN => regsel,
    Reset => reset,
    Q0 => q0,
    Q1 => q1,
    Q2 => q2,
    Q3 => q3, 
    Q4 => q4,
    Q5 => q5,
    Q6 => q6,
    Q7 => q7
    );
    
    process begin             --Index No 220486N 0011 0101 1101 0100 0110 for value
            
        value <= "0110";
        regsel <= "010";
        reset <= '0';
        wait for 100ns;
        
        value <= "0100";
        regsel <= "011";
        reset <= '0';
        
        wait for 100ns;
        
        value <= "1101";
        regsel <= "100";
        reset <= '0';
        
        wait for 100ns;
        
        value <= "0101";
        regsel <= "101";
        reset <= '0';
        
        wait for 100ns;
        
        value <= "0011";
        regsel <= "110";
        reset <= '0';
        
        wait for 100ns;
                               
        value <= "1111";
        regsel <= "000";
        reset <= '0';
        wait for 100ns;
        
        value <= "1001";
        regsel <= "010";
        reset <= '1';
        wait for 100ns;            
                 
        wait;
    end process;
   
    process begin
        clk <= not clk;
        wait for 3ns;
    end process;


end Behavioral;
