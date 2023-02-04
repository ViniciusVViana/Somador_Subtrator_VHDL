library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_somador is
end tb_somador;

architecture tb_somando of tb_somador is

    component somador
        
        port(

        canal_a : in std_logic_vector(11 downto 0);
        canal_b : in std_logic_vector(11 downto 0);
        canal_cin : in std_logic;
        cnal_cout : out std_logic;
        saida_soma : out std_logic_vector(11 downto 0)

        );

    end component somador;

    signal scanal_a, scanal_b, ssaida_soma : std_logic_vector(11 downto 0);
    signal scanal_cout, scanal_cin : std_logic_;

begin

    u_somador: somador  port map(scanal_a, scanal_b, scanal_cin, scanal_cout, ssaida_soma);

    u_soma: process

    begin

        

    end process;

end architecture;