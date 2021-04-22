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