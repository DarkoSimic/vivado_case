----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2020 05:24:31 PM
-- Design Name: 
-- Module Name: case_loop - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity case_loop is
  Generic(
           N : integer := 3 
         );
  Port ( 
           input1  : in std_logic_vector(2 downto 0);
           output1 : out std_logic
       );
end case_loop;

architecture Behavioral of case_loop is
    signal SEL : std_logic_vector(2 downto 0);
    constant N_c : integer := N;
begin
    --------------------------------------    
    SEL <= input1;    
    --2 INPUT AND GATE
    process1: process(input1)
    begin
        case SEL is
            when "00" =>    output1 <= '0';
            when "01" =>    output1 <= '0';
            when "10" =>    output1 <= '0';
            when others =>  output1 <= '1';
        end case;

--        if(SEL = "11")then
--            output1 <= '1';
--        else
--            output1 <= '0';
--        end if;
    end process process1;
end Behavioral;
