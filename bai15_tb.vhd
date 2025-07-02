library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai15_tb is
end bai15_tb;

architecture Behavioral of bai15_tb is
    -- Component declaration
    component bai15
        Port ( clk : in  STD_LOGIC;
               Q   : out STD_LOGIC_VECTOR(2 downto 0));
    end component;

    -- Test signals
    signal clk  : STD_LOGIC := '0';
    signal Q    : STD_LOGIC_VECTOR(2 downto 0);

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: bai15 port map (clk => clk, Q => Q);

    -- Clock process
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Wait for initial stabilization
        wait for 100 ns;

        -- Simulate for 20 clock cycles to observe the counting sequence
        wait for CLK_PERIOD * 20;

        -- End simulation
        wait;
    end process;
end Behavioral;