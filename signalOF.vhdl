library  IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity signalOF is
    port(
        entradaX : in std_logic;
        entraday : in std_logic;
        entradaS : in std_logic;
        saida : out std_logic;
    );
end entity;

architecture comuta of signalOF is 
begin 
    saida <= not(entradaX) and not(entradaY) and entradaS
    else entradaX and entradaY and not(entradaS) else '0';
end architecture;   
