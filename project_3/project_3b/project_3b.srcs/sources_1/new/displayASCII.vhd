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

entity displayASCII is
  Port ( 
         x : IN STD_LOGIC_VECTOR (3 downto 0); --represents the 4 input bits
         seg : OUT STD_LOGIC_VECTOR (0 to 6);  --represents the 7 segment display's output
         an : OUT STD_LOGIC_VECTOR (0 to 3) --variable for which 7 segment display is outputted to
       );
end displayASCII;

architecture Behavioral of displayASCII is
begin
    process(x)
    begin
        case x is
            when "0000" => seg <= not "1110111"; --displays A
            when "0001" => seg <= not "0011111"; --displays b
            when "0010" => seg <= not "1001110"; --displays C
            when "0011" => seg <= not "0111101"; --displays d
            when "0100" => seg <= not "1001111"; --displays E
            when "0101" => seg <= not "1000111"; --displays F
            when "0110" => seg <= not "1111011"; --displays g
            when "0111" => seg <= not "0110111"; --displays H
            when "1000" => seg <= not "0110000"; --displays I
            when "1001" => seg <= not "0111000"; --displays J
            when others => seg <= not "0000000";  --any other input outputs nothing
        end case;
        an <= "0111"; --selects the rightmost display
   end process;
end Behavioral;
