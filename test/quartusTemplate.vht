LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY quartusTemplate_vhd_tst IS
END quartusTemplate_vhd_tst;

ARCHITECTURE quartusTemplate_arch OF quartusTemplate_vhd_tst IS
    signal switch: std_logic;
    signal led: std_logic;

    BEGIN
        i1: entity WORK.quartusTemplate(rtl)
        port map (
            switch => switch,
            led => led
        );
    init : PROCESS
    -- variable declarations
    BEGIN
    WAIT;
    END PROCESS init;

    always : PROCESS
    BEGIN
        for n in 0 to 20 loop
            wait for 5 ns;
            switch <= '1';
            wait for 5 ns;
            switch <= '0';
        end loop;
    WAIT;
    END PROCESS always;
END quartusTemplate_arch;
