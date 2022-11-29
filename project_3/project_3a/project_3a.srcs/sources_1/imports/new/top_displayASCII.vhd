----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2019 03:00:33 PM
-- Design Name: 
-- Module Name: top_BCD_to_7seg - Behavioral
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

entity top_displayBCD is
  Port (
            sw : IN STD_LOGIC_VECTOR (3 downto 0); -- switches
            seg : OUT STD_LOGIC_VECTOR (0 to 6); -- 7 segment display
            an : OUT STD_LOGIC_VECTOR (0 to 3)  -- specific 7 segment display
       );
end top_displayBCD;

architecture Behavioral of top_displayBCD is

component displayBCD is
  Port (
         x : IN STD_LOGIC_VECTOR (3 downto 0); --represents the 4 input bits
         seg : OUT STD_LOGIC_VECTOR (0 to 6);  --represents the 7 segment display's output
         an : OUT STD_LOGIC_VECTOR (0 to 3) --variable for which 7 segment display is outputted to
       );
end component displayBCD; 

begin

u1: displayBCD
Port map (
            x => sw,
            seg => seg,
            an => an );
            
end Behavioral;