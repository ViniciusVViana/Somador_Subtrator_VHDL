library  ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signalOF is
    port(
        canal_x_overflow : in std_logic;
        canal_y_overflow : in std_logic;
        canal_z_overflow : in std_logic;
        canal_saida_overflow : out std_logic
    );
end entity;

architecture comuta of signalOF is 
begin 

    canal_saida_overflow <= (not(canal_x_overflow) and not(canal_y_overflow) and canal_z_overflow)
    or (canal_x_overflow and canal_y_overflow and not(canal_z_overflow));

end architecture;   