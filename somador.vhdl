library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is

    port(

        canal_a : in std_logic_vector(11 downto 0);
        canal_b : in std_logic_vector(11 downto 0);
        canal_cin : in std_logic;
        cnal_cout : out std_logic;
        saida_soma : out std_logic_vector(11 downto 0)

    );

end entity somador;

architecture somando of somador is
begin

    saida_soma(0) <= (canal_a(0) xor canal_b(0)) xor canal_cin;
    saida_soma(1) <= (canal_a(1) xor canal_b(1)) xor canal_cin;
    saida_soma(2) <= (canal_a(2) xor canal_b(2)) xor canal_cin;
    saida_soma(3) <= (canal_a(3) xor canal_b(3)) xor canal_cin;
    saida_soma(4) <= (canal_a(4) xor canal_b(4)) xor canal_cin;
    saida_soma(5) <= (canal_a(5) xor canal_b(5)) xor canal_cin;
    saida_soma(6) <= (canal_a(6) xor canal_b(6)) xor canal_cin;
    saida_soma(7) <= (canal_a(7) xor canal_b(7)) xor canal_cin;
    saida_soma(8) <= (canal_a(8) xor canal_b(8)) xor canal_cin;
    saida_soma(9) <= (canal_a(9) xor canal_b(9)) xor canal_cin;
    saida_soma(10) <= (canal_a(10) xor canal_b(10)) xor canal_cin;
    saida_soma(11) <= (canal_a(11) xor canal_b(11)) xor canal_cin;

    cnal_cout <= (canal_a(11) and canal_b(11)) or (canal_a(11) and canal_cin) or (canal_b(11) and canal_cin);

end architecture;