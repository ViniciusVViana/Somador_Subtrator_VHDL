library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aux_somador is

    port(

        canal_x : in std_logic_vector(11 downto 0);
        canal_y : in std_logic_vector(11 downto 0);
        canal_cinn : in std_logic;
        canal_coutt : out std_logic;
        saida_somaa : out std_logic_vector(11 downto 0)

    );

end aux_somador;

architecture aux_somando of aux_somador is

    component somador
        
        port(

        canal_a : in std_logic;
        canal_b : in std_logic;
        canal_cin : in std_logic;
        canal_cout : out std_logic;
        saida_soma : out std_logic

        );

    end component somador;
        
    signal sinal_somador : std_logic_vector(11 downto 1);

begin

    somador1 : somador port map(canal_x(0), canal_y(0), canal_cinn, canal_coutt, saida_somaa(0));
    somador2 : somador port map(canal_x(1), canal_y(1), sinal_somador(1), saida_somaa(1), sinal_somador(2));
    somador3 : somador port map(canal_x(2), canal_y(2), sinal_somador(2), saida_somaa(2), sinal_somador(3));
    somador4 : somador port map(canal_x(3), canal_y(3), sinal_somador(3), saida_somaa(3), sinal_somador(4));
    somador5 : somador port map(canal_x(4), canal_y(4), sinal_somador(4), saida_somaa(4), sinal_somador(5));
    somador6 : somador port map(canal_x(5), canal_y(5), sinal_somador(5), saida_somaa(5), sinal_somador(6));
    somador7 : somador port map(canal_x(6), canal_y(6), sinal_somador(6), saida_somaa(6), sinal_somador(7));
    somador8 : somador port map(canal_x(7), canal_y(7), sinal_somador(7), saida_somaa(7), sinal_somador(8));
    somador9 : somador port map(canal_x(8), canal_y(8), sinal_somador(8), saida_somaa(8), sinal_somador(9));
    somador10 : somador port map(canal_x(9), canal_y(9), sinal_somador(9), saida_somaa(9), sinal_somador(10));
    somador11 : somador port map(canal_x(10), canal_y(10), sinal_somador(10), saida_somaa(10), sinal_somador(11));
    somador12 : somador port map(canal_x(11), canal_y(11), sinal_somador(11), saida_somaa(11), canal_coutt);

end architecture;