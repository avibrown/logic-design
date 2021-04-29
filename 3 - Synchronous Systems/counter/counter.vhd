--===========================================================
--     ___        _      __   ____                         
--    /   |_   __(____  / /  / __ )_________ _      ______ 
--   / /| | | / / / _ \/ /  / __  / ___/ __ | | /| / / __ \
--  / ___ | |/ / /  __/ /  / /_/ / /  / /_/ | |/ |/ / / / /
-- /_/  |_|___/_/\___/_/  /_____/_/   \____/|__/|__/_/ /_/ 
--===========================================================
-- Advanced Logic Design	
-- Assignment 3
--===========================================================

--=====================================
-- |    Synchronous Counter Unit      |
--=====================================
-- | Counts from 0-255, resets on low |
--=====================================

entity counter is

    port(

        clk      : in  bit;
        rst      : in  bit := '1';
        EC       : out bit;
        Q_out    : out integer := 0

    );

end entity;



architecture counter_arc of counter is
begin

    process(clk, rst)
    begin

        if rst = '0' then
            Q_out <= 0;
            EC <= '1';


        elsif clk'event and clk = '1' then
            if Q_out < 255 then
                Q_out <= Q_out + 1;
                EC <= '0';

            elsif Q_out = 255 then
                Q_out <= 0;
                EC <= '1';

            end if;
 
	end if;

    end process;

end architecture counter_arc;
