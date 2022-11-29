----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2020 07:05:11 PM
-- Design Name: 
-- Module Name: g_LED - Behavioral
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

entity g_LED is
  Port (g_x : IN STD_LOGIC_VECTOR (15 downto 13);
        g : OUT STD_LOGIC);
end g_LED;

architecture Behavioral of g_LED is

begin

g <= NOT g_x(15) AND (NOT g_x(13) OR g_x(14));

end Behavioral;
