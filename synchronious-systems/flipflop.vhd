entity synchronious is

    port(

        J, K, rst, clk : in bit;
        Q              : out bit

    );

end entity synchronious;



architecture flipflop of synchronious is

begin

    process(clk, rst)

    begin
        if rst = '0' then
            Q <= '0';
        elsif clk'event and clk = '1' then
            Q <= J and K;
        end if;

		end process;

end architecture flipflop;