library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is

    port(

        canal_a : in std_logic;
        canal_b : in std_logic;
        canal_cin : in std_logic;
        canal_cout : out std_logic;
        saida_soma : out std_logic

    );

end entity;

architecture somando of somador is
begin

    saida_soma <= (canal_a xor canal_b) xor canal_cin;
    canal_cout <= (canal_a and canal_b) or (canal_a and canal_cin) or (canal_b and canal_cin);

end architecture;