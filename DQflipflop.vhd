library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment if using arithmetic functions with signed or unsigned values.
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment if instantiating Xilinx leaf cells.
-- library UNISIM;
-- use UNISIM.VComponents.ALL;

entity DQflipflop is
    port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        CE  : in  STD_LOGIC;
        SET : in  STD_LOGIC;
        RST : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
end DQflipflop;

architecture Behavioral of DQflipflop is
begin

    process (CLK, RST)
    begin
        if RST = '1' then
            Q <= '0';
        elsif rising_edge(CLK) then
            if SET = '1' and CE = '1' then
                Q <= '1';
            elsif CE = '1' then
                Q <= D;
            end if;
        end if;
    end process;

end Behavioral;
