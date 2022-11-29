----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 04:05:37 PM
-- Design Name: 
-- Module Name: tb_top_hello_LED - Behavioral
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

entity tb_top_hello_LED is
--  Port ( );
end tb_top_hello_LED;

architecture Behavioral of tb_top_hello_LED is

COMPONENT top_hello_LED
Port (sw  : in STD_LOGIC;
      led : out STD_LOGIC);
END COMPONENT;

signal switch_input : STD_LOGIC;
signal led          : STD_LOGIC;
begin

switch_input <= '0', '1' after 10 ns;

ul: top_hello_LED
Port Map (sw  => switch_input,
          led => led);
end Behavioral;
