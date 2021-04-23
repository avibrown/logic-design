--=================
--    Logic Design	
--    Assignment 3
--    Aviel Brown	
--=================

-- ===========================================================
-- |    JK Flip Flop Logic      |                            |
-- ===========================================================
-- | rst | clk | J | K |    Q   |       behaviour of Q       |
-- -----------------------------------------------------------
-- |  0  |  x  | x | x | reset  | Q <= '0' <-- asynchronous! |
-- |  1  |  ^  | 0 | 0 | hold   | Q <= Q                     |
-- |  1  |  ^  | 0 | 1 | rest   | Q <= '0' <-- synchronous!  |
-- |  1  |  ^  | 1 | 0 | set    | Q <= '1'                   |
-- |  1  |  ^  | 1 | 1 | toggle | Q <= not Q                 |
-- ===========================================================



entity flipflop is

    port(

        J, K, rst, clk : in bit;
        Q, Q_hat       : out bit

    );

end entity flipflop;


architecture flipflop_arc of flipflop is

begin

	process(clk, rst)

	begin

	if rst = '0' then
	    Q <= '0';

	elsif clk'event and clk = '1' then

		if J = '0' and K = '1' then
			Q <= '0';

		elsif J = '1' and K = '0' then
			Q <= '1';

		elsif J = '1' and K = '1' then
			Q <= not Q;

		end if;

	end if;

	end process;

Q_hat <= not Q;

end architecture flipflop_arc;
