----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2020 06:52:43 PM
-- Design Name: 
-- Module Name: top_r_LED - Behavioral
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

entity top_rg_LED is
  Port (sw : IN STD_LOGIC_VECTOR (15 downto 1);
        led : OUT STD_LOGIC_VECTOR (1 downto 0));
end top_rg_LED;

architecture Behavioral of top_rg_LED is

component r_LED is
  Port (r_x : IN STD_LOGIC_VECTOR;
        r : OUT STD_LOGIC);
end component;

component g_LED is
  Port (g_x : IN STD_LOGIC_VECTOR;
        g : OUT STD_LOGIC);
end component;

begin

u: r_LED
    Port Map ( r_x(0) => sw(1), r_x(1) => sw(2), r_x(2) => sw(3),
               r => led(0) );

u2: g_LED
    Port Map ( g_x(0) => sw(13), g_x(1) => sw(14), g_x(2) => sw(15),
               g => led(1) );
               
end Behavioral;
