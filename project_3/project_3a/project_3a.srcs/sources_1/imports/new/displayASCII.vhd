----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2019 02:59:18 PM
-- Design Name: 
-- Module Name: BCD_to_7seg - Behavioral
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

entity displayBCD is
  Port ( 
         x : IN STD_LOGIC_VECTOR (3 downto 0); --represents the 4 input bits
         seg : OUT STD_LOGIC_VECTOR (0 to 6);  --represents the 7 segment display's output
         an : OUT STD_LOGIC_VECTOR (0 to 3) --variable for which 7 segment display is outputted to
       );
end displayBCD;

architecture Behavioral of displayBCD is
begin
    process(x)
    begin
        case x is
            when "0000" => seg <= not "1111110"; --displays 0
            when "0001" => seg <= not "0110000"; --displays 1
            when "0010" => seg <= not "1101101"; --displays 2
            when "0011" => seg <= not "1111001"; --displays 3
            when "0100" => seg <= not "0110011"; --displays 4
            when "0101" => seg <= not "1011011"; --displays 5
            when "0110" => seg <= not "1011111"; --displays 6
            when "0111" => seg <= not "1110000"; --displays 7
            when "1000" => seg <= not "1111111"; --displays 8
            when "1001" => seg <= not "1111011"; --displays 9
            when others => seg <= not "0000000";  --any other input outputs nothing
        end case;
        an <= "0111"; --selects the rightmost display
   end process;
end Behavioral;
