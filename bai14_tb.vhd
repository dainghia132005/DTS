library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai14_tb is
end bai14_tb;

architecture Behavioral of bai14_tb is
    -- Component declaration
    component bai14
        Port ( clk : in  STD_LOGIC;
               Q   : out STD_LOGIC_VECTOR(2 downto 0);
               Y   : out STD_LOGIC);
    end component;

    -- Test signals
    signal clk  : STD_LOGIC := '0';
    signal Q    : STD_LOGIC_VECTOR(2 downto 0);
    signal Y    : STD_LOGIC;

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: bai14 port map (clk => clk, Q => Q, Y => Y);

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