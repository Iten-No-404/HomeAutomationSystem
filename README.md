# HomeAutomationSystem

## Project File Directory:
It is organised in the following sequence:
1. The Root project directory contains a folder for each design ( coding idea or the same idea but in Verilog instead of VHDL) and a folder that contains the template of Labs 2 & 5 (Synthesis and Floor Planning respectively) if needed.
2. Each Design folder contains a folder for each version of the design, a version for each major change (ex: changing a few lines in the code, changing in the synthesis scripts or changing in the floor planning scripts).
3. Each Version folder should contain the code file, its simualtion, its synthesis folder, its post-synthesis simualtion, floor planning folder and all the outputs.
4. Version Naming: 1, 2, 3, etc... if there's a change in code. 1.1, 1.2 if they have exactly the same code but different synthesis scripts. 1.1.1, 1.1.2 if they have both the same code and the same synthesis scripts but different floor planning scripts.
* Note that the first version of every code should contain all the things mentioned in point 3, while in any other version it's not necessary.

## Design 1 Versions:

### V1:

## Design 2 Versions:
- It's sequential and handles starvation by checking on each state one state per cycle.
### V1:
* Uses TYPE state ( TYPE state IS (S0, S1, S2, S3, S4, S5, S6))
#### V1.1:
* Uses transition: 0.1, io_clock_period: 1.0, clock_period: 1.5
* Output: Movable Cell Area: 68, Arrival time: 242.7, Total Power: 91.643326.
##### V1.1.1:
* Uses transition: 0.1, io_clock_period: 1.0, clock_period: 1.5
* Uses fp_utilization: 10
##### V.1.1.2:
* Uses transition: 0.1, io_clock_period: 1.0, clock_period: 1.5
* Uses fp_utilization: 25
##### V.1.1.3:
* Uses transition: 0.1, io_clock_period: 1.0, clock_period: 1.5
* Uses fp_utilization: 35
##### V.1.1.4:
* Uses transition: 0.1, io_clock_period: 1.0, clock_period: 1.5
* Uses fp_utilization: 40
##### V.1.1.5:
* Uses transition: 0.1, io_clock_period: 1.0, clock_period: 1.5
* Uses fp_utilization: 45
* Best Working Utilization.

## Design 3 Versions:

### V1:


fp_chip_width: 400, fp_chip_height: 460