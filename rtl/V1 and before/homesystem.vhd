-- The homesystem.vhd is the correct initial design.
-- The do file for this is doHS. Just write do doHS in the ModelSim command line (transcript) to try it out

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY homeSystem IS
    PORT (
        sfd : IN STD_LOGIC;
        srd : IN STD_LOGIC;
        sw : IN STD_LOGIC;
        sfa : IN STD_LOGIC;
        st : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        fdoor : OUT STD_LOGIC;
        rdoor : OUT STD_LOGIC;
        winbuzz : OUT STD_LOGIC;
        alarambuzz : OUT STD_LOGIC;-- as written in the document 
        heater : OUT STD_LOGIC;
        cooler : OUT STD_LOGIC;
        display : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END homeSystem;

ARCHITECTURE arch1 OF homeSystem IS

    TYPE state_type IS (S0, S1, S2, S3, S4, S5, S6);
    SIGNAL state, next_state : state_type;
    -- SIGNAL temperature : std_logic_vector(1 DOWNTO 0);

BEGIN

    SYNC_PROC : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (rst = '1') THEN
                state <= S0;
            ELSE
                state <= next_state;
            END IF;
        END IF;
    END PROCESS;

    NEXT_STATE_DECODE : PROCESS (state, sfd, srd, sw, sfa, st)
    BEGIN
        -- Jump into the highest priority state depending on the active inputs
        IF (state = S0) THEN
            IF (sfd = '1') THEN
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '0';
                display <= "001";
                next_state <= S1;
            ELSIF (srd = '1') THEN
                fdoor <= '0';
                rdoor <= '1';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '0';
                display <= "010";
                next_state <= S2;
            ELSIF (sfa = '1') THEN
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '1';
                heater <= '0';
                cooler <= '0';
                display <= "011";
                next_state <= S3;
            ELSIF (sw = '1') THEN
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '1';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '0';
                display <= "100";
                next_state <= S4;
            ELSIF (unsigned(st) < "0110010") THEN -- Less than 50
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '1';
                cooler <= '0';
                display <= "101";
                next_state <= S5;
            ELSIF (unsigned(st) > "1000110") THEN -- More than 70
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '1';
                display <= "110";
                next_state <= S6;
            ELSE
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '0';
                display <= "000";
            END IF;
        ELSIF (sfd = '1') THEN
            fdoor <= '1';
            rdoor <= '0';
            winbuzz <= '0';
            alarambuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "001";
            next_state <= S1;
        ELSIF (srd = '1') THEN
            fdoor <= '0';
            rdoor <= '1';
            winbuzz <= '0';
            alarambuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "010";
            next_state <= S2;
        ELSIF (sfa = '1') THEN
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarambuzz <= '1';
            heater <= '0';
            cooler <= '0';
            display <= "011";
            next_state <= S3;
        ELSIF (sw = '1') THEN
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '1';
            alarambuzz <= '0';
            heater <= '0';
            cooler <= '0';
            display <= "100";
            next_state <= S4;
        ELSIF (unsigned(st) < "0110010") THEN -- Less than 50
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarambuzz <= '0';
            heater <= '1';
            cooler <= '0';
            display <= "101";
            next_state <= S5;
        ELSIF (unsigned(st) > "1000110") THEN -- More than 70
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarambuzz <= '0';
            heater <= '0';
            cooler <= '1';
            display <= "110";
            next_state <= S6;
        ELSE
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarambuzz <= '0';
            heater <= '0';
            cooler <= '0';
            CASE (state) IS
                WHEN S0 =>
                    display <= "000";
                WHEN S1 =>
                    display <= "001";
                WHEN S2 =>
                    display <= "010";
                WHEN S3 =>
                    display <= "011";
                WHEN S4 =>
                    display <= "100";
                WHEN S5 =>
                    display <= "101";
                WHEN S6 =>
                    display <= "110";
                WHEN OTHERS =>
                    display <= "000";
            END CASE;
        END IF;
    END PROCESS;

END arch1;