library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clocked is
end entity;

architecture clk of clocked is

    constant frequency  : integer   := 100e6; -- 100Mhz
    constant period     : time      := 1000ms / frequency;

    signal clk : std_logic := '1'; 

begin

    clk <= not clk after period / 2;

end architecture;