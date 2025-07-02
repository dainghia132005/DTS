----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 10:29:58 PM
-- Design Name: 
-- Module Name: bai2 - Behavioral
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

entity bai2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
end bai2;
architecture Behavioral of bai2 is
    signal n1,n2,s1,s2,s3,s4,s5,s6 : std_logic;
begin
    n1 <= B nor B;
    n2 <= C nor C;
    s1 <= A nor n1;
    s2 <= A nor n2;
    s3 <= n1 nor n2;
    s4 <= s1 nor s2;
    s5 <= s4 nor s4;
    s6 <= s5 nor s3;
    F <= s6 nor s6;
end Behavioral;
