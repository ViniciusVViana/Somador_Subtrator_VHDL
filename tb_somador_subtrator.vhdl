library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_somador_subtrator_12bits is



end entity;

architecture add_sub12bits of tb_somador_subtrator_12bits is

    component somador_12bits is
        port(
            canal_x : in std_logic_vector(11 downto 0);
            canal_y : in std_logic_vector(11 downto 0);
            canal_cinn : in std_logic;
            canal_coutt : out std_logic;
            saida_somaa : out std_logic_vector(11 downto 0)
         );
    end component;

    component mux2x12 is
        port(
            canal_normal : in std_logic_vector(11 downto 0);
            canal_invertido : in std_logic_vector(11 downto 0);
            sel_op : in std_logic;        
            saida_mux : out std_logic_vector(11 downto 0)
        );
    end component;

    component inversor_12bits is
        port(
            canal_inv : in std_logic_vector(11 downto 0);
            saida_inv : out std_logic_vector(11 downto 0)
        );
    end component;

    component signalOF is
        port(
            canal_x_overflow : in std_logic;
            canal_y_overflow : in std_logic;
            canal_z_overflow : in std_logic;
            canal_saida_overflow : out std_logic
        );
    end component;

    signal scanal_x, scanal_y, ssaida_somaa, scanal_normal, scanal_invertido, ssaida_mux, scanal_inv, ssaida_inv, saux1, saux2 : std_logic_vector(11 downto 0);
    signal scanal_cinn, scanal_coutt, ssel_op, saux3, scanal_x_overflow, scanal_y_overflow, scanal_z_overflow, scanal_saida_overflow : std_logic;

begin

    u_somador_12bits : somador_12bits port map(scanal_x, scanal_y, scanal_cinn, scanal_coutt, ssaida_somaa);
    u_mux2x12 : mux2x12 port map(scanal_normal, scanal_invertido, ssel_op, ssaida_mux);
    u_inversor_12bits : inversor_12bits port map(scanal_inv, ssaida_inv);
    u_signalOF : signalOF port map(scanal_x_overflow, scanal_y_overflow, scanal_z_overflow, scanal_saida_overflow);

    scanal_x <= saux1;
    scanal_normal <= saux2;
    scanal_inv <= saux2;
    scanal_invertido <= ssaida_inv;
    ssel_op <= saux3;
    scanal_y <= ssaida_mux;
    scanal_cinn <= saux3;
    scanal_x_overflow <= scanal_x(11);
    scanal_y_overflow <= scanal_y(11);
    scanal_z_overflow <= ssaida_somaa(11);

    u_tb : process

    begin

        saux3 <= '0';
        saux1 <= x"000";
        saux2 <= x"FFF";
        wait for 10 ns;

        saux3 <= '1';
        saux1 <= x"000";
        saux2 <= x"FFF";
        wait for 10 ns;

        saux3 <= '0';
        saux1 <= x"FFF";
        saux2 <= x"001";
        wait for 10 ns;

        saux3 <= '1';
        saux1 <= x"FFF";
        saux2 <= x"001";
        wait for 10 ns;

        saux3 <= '0';
        saux1 <= x"FFE";
        saux2 <= x"FFE";
        wait for 10 ns;


        saux3 <= '0';
        saux1 <= x"0FF";
        saux2 <= x"0FF";
        wait for 10 ns;

    end process;

end architecture;