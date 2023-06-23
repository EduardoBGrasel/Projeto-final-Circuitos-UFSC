library ieee;
use ieee.std_logic_1164.all;

entity controle is
    port (
        enter, reset, CLOCK: in std_logic;
        end_game, end_time, end_round, end_FPGA: in std_logic;
        R1, R2, E1, E2, E3, E4, E5: out std_logic
    );
end entity controle;

architecture Behavioral of controle is
    type State is (INIT, SETUP, PLAY_FPGA, PLAY_USER, COUNT_ROUND, CHECK, RESULT, WAITT);
    signal current_state, next_state: State;
    begin
    process (reset, CLOCK)
begin
        if reset = '1' then
            current_state <= INIT;
        elsif CLOCK'event and clock ='1' then
            current_state <= next_state;
        end if;
    end process;


    process (current_state, enter, end_FPGA, end_time, end_round, end_game)
    begin
--        next_state <= current_state;

        case current_state is
            when INIT => 
                R1 <= '1';
                R2 <= '1';
                E1 <= '0';
                E2 <= '0';
                E3 <= '0';
                E4 <= '0';
                E5 <= '0';
                next_state <= SETUP;
                
            when SETUP => 
                    R1 <= '0';
                    R2 <= '0';
                    E1 <= '1';
                    E2 <= '0';
                    E3 <= '0';
                    E4 <= '0';
                    E5 <= '0';
                if enter = '0' then
                    next_state <= SETUP;
                else next_state <= PLAY_FPGA;
                end if;
                
            when PLAY_FPGA =>   R1 <= '0';
                    R2 <= '0';
                    E1 <= '0';
                    E2 <= '1';
                    E3 <= '0';
                    E4 <= '0';
                    E5 <= '0';

                if end_FPGA = '1' then
                    next_state <= PLAY_USER;
                else next_state <= PLAY_FPGA;
                end if;
                
            when PLAY_USER =>
                        R1 <= '0';
                        R2 <= '0';
                        E1 <= '0';
                        E2 <= '0';
                        E3 <= '1';
                        E4 <= '0';
                        E5 <= '0'; 

                if end_time = '1' then
                    next_state <= RESULT;
                elsif
                    enter = '1' then next_state <= COUNT_ROUND;
                else next_state <= PLAY_USER;
                end if;
                
            when COUNT_ROUND =>
                        R1 <= '0';
                        R2 <= '0';
                        E1 <= '0';
                        E2 <= '0';
                        E3 <= '0';
                        E4 <= '1';
                        E5 <= '0'; 
                next_state <= CHECK;
                
            when CHECK => R1 <= '0';
                            R2 <= '0';
                            E1 <= '0';
                            E2 <= '0';
                            E3 <= '0';
                            E4 <= '0';
                            E5 <= '0';

                if end_round = '1' or end_game = '1' then
                    next_state <= RESULT;
                else 
                    next_state <= WAITT;
                end if;
                
            when RESULT => R1 <= '0';
                            R2 <= '0';
                            E1 <= '0';
                            E2 <= '0';
                            E3 <= '0';
                            E4 <= '0';
                            E5 <= '1';
                if enter = '1' then
                    next_state <= INIT;
                else next_state <= RESULT;
                end if;
                
            when WAITT =>   R1 <= '1';
                        R2 <= '0';
                        E1 <= '0';
                        E2 <= '0';
                        E3 <= '0';
                        E4 <= '0';
                        E5 <= '0'; 
                if enter = '1' then
                    next_state <= PLAY_FPGA;
                else next_state <= WAITT;
                end if;
                
        end case;
    end process;
end architecture Behavioral;