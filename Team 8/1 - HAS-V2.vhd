LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY HAS2 IS
    PORT (
        clk : IN STD_LOGIC;

        -- Input
        sfd : IN STD_LOGIC;
        srd : IN STD_LOGIC;
        sw : IN STD_LOGIC;
        sfa : IN STD_LOGIC;
        st : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
        rst : IN STD_LOGIC;

        -- Output
        fdoor : OUT STD_LOGIC;
        rdoor : OUT STD_LOGIC;
        winbuzz : OUT STD_LOGIC;
        alarmbuzz : OUT STD_LOGIC; -- as written in the document 
        heater : OUT STD_LOGIC;
        cooler : OUT STD_LOGIC;
        display : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END HAS2;

ARCHITECTURE arch1 OF HAS2 IS
    -- S0 -> Initial state
    -- S1 -> Check front door 
    -- S2 -> Check back door 
    -- S3 -> Check fire alarm
    -- S4 -> Check window
    -- S5 -> Check cooler 
    -- S6 -> Check heater

    -- Then it loops back again
    TYPE state IS (S0, S1, S2, S3, S4, S5, S6);
    SIGNAL curr_state, next_state : state;
BEGIN

    RESET_AND_STATE : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (rst = '1') THEN
                curr_state <= S0;
            ELSE
                curr_state <= next_state;
            END IF;
        END IF;
    END PROCESS; -- RESET_AND_STATE

    CLOCKED_LOGIC : PROCESS (curr_state, sfd, srd, sw, sfa, st)
    BEGIN
        CASE(curr_state) IS
            WHEN s0 =>
            fdoor <= '0';
            rdoor <= '0';
            winbuzz <= '0';
            alarmbuzz <= '0';
            heater <= '0';
            cooler <= '0';
            next_state <= S1;

            WHEN S1 =>
            display <= "001";
            fdoor <= sfd;
            next_state <= S2;

            WHEN S2 =>
            display <= "010";
            rdoor <= srd;
            next_state <= S3;

            WHEN S3 =>
            display <= "011";
            alarmbuzz <= sfa;
            next_state <= S4;

            WHEN S4 =>
            display <= "100";
            winbuzz <= sw;
            next_state <= S5;

            WHEN S5 =>
            display <= "101";
            IF unsigned(st) < 50 THEN
                heater <= '1';
            ELSE
                heater <= '0';
            END IF;

            next_state <= S6;

            WHEN S6 =>
            display <= "110";
            IF unsigned(st) > 70 THEN
                cooler <= '1';
            ELSE
                cooler <= '0';
            END IF;
            next_state <= s1;

        END CASE;
    END PROCESS; -- NEXT_STATE_LOGIC

END arch1; -- arch1