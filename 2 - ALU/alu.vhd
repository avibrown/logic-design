--===========================================================
--     ___        _      __   ____                         
--    /   |_   __(____  / /  / __ )_________ _      ______ 
--   / /| | | / / / _ \/ /  / __  / ___/ __ | | /| / / __ \
--  / ___ | |/ / /  __/ /  / /_/ / /  / /_/ | |/ |/ / / / /
-- /_/  |_|___/_/\___/_/  /_____/_/   \____/|__/|__/_/ /_/ 
--===========================================================
-- Advanced Logic Design	
-- Assignment 2
--===========================================================

-- ==============
-- | ALU Logic  |
-- ==============
-- | op | q_out | --> when (q_out = 0) :  z = 1
-- --------------
-- | 00 | a + b | --> when (q_out > 15):  c = 1
-- | 01 | a - b | --> when (q_out < 0) :  c = 1
-- | 10 | a * b | --> when (q_out > 15):  c = 1
-- | 11 | a / b | --> when (b = 0)     :  c = 1
-- ==============



entity alu is
	port(

				a, b  : in  integer range 0 to 15;    -- operands
				op    : in  bit_vector(1 downto 0);   -- operations vector
				q_out : out integer range 0 to 15;    -- result
				z, c  : out bit                       -- z: "ZERO flag", c: carry indicator

	);
end entity alu;

architecture alu_arc of alu is
begin

		arith_op : process(a, b, op(1 downto 0))
		begin

			case(op) is
				when "00" =>					-- addition
					if (a + b) <= 15 then
						q_out <= (a + b);
						c <= '0';
					else
						q_out <= ((a + b) mod (16));
						c <= '1';
					end if;

				when "01" =>					-- subtraction
					if (a - b) < 0 then
						q_out <= abs(a - b);
						c <= '1';
					else
						q_out <= abs(a - b);
						c <= '0';
					end if;

				when "10" =>					-- multiplication
					if (a * b) <= 15 then
						q_out <= (a * b);
						c <= '0';
					else
						q_out <= ((a * b) mod (16));
						c <= '1';
					end if;

				when "11" =>					-- division
					if b = 0 then
						q_out <= 0;
						c <= '1';
					else
						q_out <= (a / b);
						c <= '0';
					end if;

			end case;

		end process;

	z <= '1' when q_out = 0 else '0';

end alu_arc;
