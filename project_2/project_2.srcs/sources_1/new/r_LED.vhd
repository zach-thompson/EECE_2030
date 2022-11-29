----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2020 06:51:59 PM
-- Design Name: 
-- Module Name: r_LED - Behavioral
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

entity r_LED is
  Port (r_x : IN STD_LOGIC_VECTOR (3 downto 1);
        r : OUT STD_LOGIC);
end r_LED;

architecture Behavioral of r_LED is

begin

r <= NOT r_x(2) OR (NOT r_x(1) AND r_x(2) AND NOT r_x(3));

end Behavioral;
