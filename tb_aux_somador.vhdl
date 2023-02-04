library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
end entity;

architecture arch of adder is

    component aux_somador

    port(

        canal_x : in std_logic_vector(11 downto 0);
        canal_y : in std_logic_vector(11 downto 0);
        canal_cinn : in std_logic;
        canal_coutt : out std_logic;
        saida_somaa : out std_logic_vector(11 downto 0)

    );       

    end component;

    signal scanal_x, scanal_y, saida_somaa: std_logic_vector(11 downto 0);
    signal scanal_cinn, scanal_coutt: std_logic;

begin

    u_aux_somador: aux_somador port map(scanal_x, scanal_y, scanal_cinn);

    scanal_cinn <= scanal_coutt;

    u_teste: process

    begin

        scanal_x <= "000000000001";
        scanal_y <= "000000000001";
        wait for 10 ns;

        scanal_x <= "000000000010";
        scanal_y <= "000000000001";
        wait for 10 ns;

        scanal_x <= "000000000010";
        scanal_y <= "000000000010";
        wait for 10 ns;

        scanal_x <= "000000000011";
        scanal_y <= "000000000011";
        wait for 10 ns;

    end process;

end architecture;