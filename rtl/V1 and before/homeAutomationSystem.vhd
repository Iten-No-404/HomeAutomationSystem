-- Please ignore this file and its do file. It was my first try at imitating the FSM slides.
-- The do file for this failed first trial is doHAS
-- The homesystem.vhd is the correct one and its dofile is doHS
Library ieee;
use ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY homeAutomationSystem IS
PORT(   sfd: IN std_logic;
        srd: IN std_logic;
        sw: IN std_logic;
        sfa: IN std_logic;
		st: IN std_logic_vector (6 DOWNTO 0);
		clk: IN std_logic;
		rst: IN std_logic;
        fdoor: OUT std_logic;
        rdoor: OUT std_logic;
        winbuzz: OUT std_logic;
        alarambuzz: OUT std_logic;-- as written in the document 
        heater: OUT std_logic;
        cooler: OUT std_logic;
        display: OUT std_logic_vector(2 DOWNTO 0));
END homeAutomationSystem;

ARCHITECTURE arch1 OF homeAutomationSystem IS
	
    TYPE state_type IS (S0,S1,S2,S3,S4,S5,S6);
    SIGNAL state, next_state : state_type;
    -- SIGNAL temperature : std_logic_vector(1 DOWNTO 0);

	BEGIN

	SYNC_PROC : PROCESS(clk)
	BEGIN
        IF rising_edge(clk) THEN
            IF (rst = '1') THEN
                state <= S0;
            ELSE
                state <= next_state;
            END IF;
        END IF;
	END PROCESS;

    NEXT_STATE_DECODE : PROCESS(state,sfd,srd,sw,sfa,st)
	BEGIN
        CASE (state) is
            WHEN S0 =>
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
                    next_state <= S0;
                END IF;
            WHEN S1 =>
                fdoor <= '1';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '0';
                display <= "001";
                next_state <= S1;
            WHEN S2 =>
                IF (sfd = '1') THEN
                    fdoor <= '1';
                    rdoor <= '0';
                    winbuzz <= '0';
                    alarambuzz <= '0';
                    heater <= '0';
                    cooler <= '0';
                    display <= "001";
                    next_state <= S1;
                ELSE
                    fdoor <= '0';
                    rdoor <= '1';
                    winbuzz <= '0';
                    alarambuzz <= '0';
                    heater <= '0';
                    cooler <= '0';
                    display <= "010";
                    next_state <= S2;
                END IF;
            WHEN S3 =>
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
                ELSE
                    fdoor <= '0';
                    rdoor <= '0';
                    winbuzz <= '0';
                    alarambuzz <= '1';
                    heater <= '0';
                    cooler <= '0';
                    display <= "011";
                    next_state <= S3;
                END IF;
            WHEN S4 =>
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
                ELSE
                    fdoor <= '0';
                    rdoor <= '0';
                    winbuzz <= '1';
                    alarambuzz <= '0';
                    heater <= '0';
                    cooler <= '0';
                    display <= "100";
                    next_state <= S4;
                END IF;
            WHEN S5 =>
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
                ELSE
                    fdoor <= '0';
                    rdoor <= '0';
                    winbuzz <= '0';
                    alarambuzz <= '0';
                    heater <= '1';
                    cooler <= '0';
                    display <= "101";
                    next_state <= S5;
                END IF;
            WHEN S6 =>
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
                ELSE
                    fdoor <= '0';
                    rdoor <= '0';
                    winbuzz <= '0';
                    alarambuzz <= '0';
                    heater <= '0';
                    cooler <= '1';
                    display <= "110";
                    next_state <= S6;
                END IF;
            WHEN OTHERS =>
                fdoor <= '0';
                rdoor <= '0';
                winbuzz <= '0';
                alarambuzz <= '0';
                heater <= '0';
                cooler <= '0';
                display <= "000";
                next_state <= S0;
        END CASE;
	END PROCESS;

END arch1;

