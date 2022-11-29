----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 03:45:33 PM
-- Design Name: 
-- Module Name: top_hello_LED - Behavioral
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

entity top_hello_LED is
  Port ( sw : in STD_LOGIC;
         led: out STD_LOGIC );
end top_hello_LED;

architecture Behavioral of top_hello_LED is

COMPONENT hello_LED
Port (switch : in STD_LOGIC;
      light  : out STD_LOGIC);
END COMPONENT;

begin

ul: hello_LED
Port Map (switch => sw,
          light  => led );
end Behavioral;
