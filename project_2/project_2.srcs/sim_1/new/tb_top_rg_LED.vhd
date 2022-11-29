----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2020 09:46:31 AM
-- Design Name: 
-- Module Name: tb_top_rg_LED - Behavioral
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

entity tb_top_rg_LED is
--  Port ( );
end tb_top_rg_LED;

architecture Behavioral of tb_top_rg_LED is

component top_rg_LED is
  Port (sw : IN STD_LOGIC_VECTOR (15 downto 1);
        led : OUT STD_LOGIC_VECTOR (1 downto 0));
end component;

SIGNAL switch_input : STD_LOGIC_VECTOR (15 downto 1);
SIGNAL led_out      : STD_LOGIC_VECTOR (1 downto 0);

begin

switch_input(15 downto 13) <= "000","001" after 10ns, "010" after 20 ns, "011" after 30ns,
                            "100" after 40ns, "101" after 50ns, "110" after 60ns, "111" after 70ns; 

switch_input(3 downto 1) <= "000","001" after 10ns, "010" after 20 ns, "011" after 30ns,
                            "100" after 40ns, "101" after 50ns, "110" after 60ns, "111" after 70ns; 

u1: top_rg_LED
    Port Map ( sw => switch_input,
               led => led_out );
                
end Behavioral;

