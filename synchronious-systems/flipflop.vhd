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
            Q <= J and K;

        end if;

		end process;

Q_hat <= not Q;

end architecture flipflop_arc;