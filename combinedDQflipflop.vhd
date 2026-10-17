library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment if using arithmetic functions with signed or unsigned values.
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment if instantiating Xilinx leaf cells.
-- library UNISIM;
-- use UNISIM.VComponents.ALL;

entity combinedDQflipflop is
    port (
        D   : in  STD_LOGIC_VECTOR(3 downto 0);
        CLK : in  STD_LOGIC;
        CE  : in  STD_LOGIC;
        SET : in  STD_LOGIC;
        RST : in  STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end combinedDQflipflop;

architecture Behavioral of combinedDQflipflop is

    component DQflipflop is
        port (
            D   : in  STD_LOGIC;
            CLK : in  STD_LOGIC;
            CE  : in  STD_LOGIC;
            SET : in  STD_LOGIC;
            RST : in  STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;

begin

    DQ0portmap : DQflipflop
        port map (
            D   => D(0),
            CLK => CLK,
            CE  => CE,
            SET => SET,
            RST => RST,
            Q   => Q(0)
        );

    DQ1portmap : DQflipflop
        port map (
            D   => D(1),
            CLK => CLK,
            CE  => CE,
            SET => SET,
            RST => RST,
            Q   => Q(1)
        );

    DQ2portmap : DQflipflop
        port map (
            D   => D(2),
            CLK => CLK,
            CE  => CE,
            SET => SET,
            RST => RST,
            Q   => Q(2)
        );

    DQ3portmap : DQflipflop
        port map (
            D   => D(3),
            CLK => CLK,
            CE  => CE,
            SET => SET,
            RST => RST,
            Q   => Q(3)
        );

end Behavioral;
