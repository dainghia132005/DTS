library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( D    : in  STD_LOGIC;    -- Đầu vào dữ liệu
           clk  : in  STD_LOGIC;    -- Tín hiệu clock
           Q    : out STD_LOGIC;    -- Đầu ra Q
           Qn   : out STD_LOGIC);   -- Đầu ra bổ sung (not Q)
end D_FF;

architecture Behavioral of D_FF is
    signal Q_int : STD_LOGIC := '0';  -- Tín hiệu nội bộ để lưu trạng thái
begin
    process(clk)
    begin
        if rising_edge(clk) then
            Q_int <= D;  -- Lưu giá trị D vào Q tại cạnh tăng của clock
        end if;
    end process;

    Q  <= Q_int;    -- Gán đầu ra Q
    Qn <= not Q_int;  -- Gán đầu ra bổ sung Qn
end Behavioral;