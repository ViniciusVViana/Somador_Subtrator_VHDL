library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity inversor_12bits is

    port(

        canal_inv : in std_logic_vector(11 downto 0);
        saida_inv : out std_logic_vector(11 downto 0)
        
    );

end entity;

architecture invertendo of inversor_12bits is
begin

    saida_inv <= not(canal_inv);

end architecture;