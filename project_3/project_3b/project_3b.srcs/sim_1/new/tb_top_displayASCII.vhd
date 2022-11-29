----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2019 07:18:20 PM
-- Design Name: 
-- Module Name: tb_top_BCD_to_7seg - Behavioral
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

entity tb_top_displayASCII is
--  Port ( );
end tb_top_displayASCII;

architecture Behavioral of tb_top_displayASCII is

component top_displayASCII is
Port (
        sw : IN STD_LOGIC_VECTOR (3 downto 0);
        seg : OUT STD_LOGIC_VECTOR (0 to 6);  
        an : OUT STD_LOGIC_VECTOR (0 to 3)     
     );
end component top_displayASCII;

signal sw_input : STD_LOGIC_VECTOR (3 downto 0); --4 bit input signal
signal seq_output : STD_LOGIC_VECTOR (0 to 6); -- 7 segment output signal
signal anode_output : STD_LOGIC_VECTOR (0 to 3); --signal to determine which display used

begin

    sw_input (3 downto 0) <= "0000", "0001" after 10ns, "0010" after 20ns, "0011" after 30 ns, "0100" after 40ns,
                         "0101" after 50ns, "0110" after 60ns, "0111" after 70ns, "1000" after 80ns, "1001" after 90ns;


    u1: top_displayASCII
        Port Map (
                    sw => sw_input,
                    seg => seq_output,
                    an => anode_output
                  );
                  
end Behavioral;
