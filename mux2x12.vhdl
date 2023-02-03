library  ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2x12 is
    port(
        canal_x : in std_logic_vector(11 downto 0);
        canal_y : in std_logic_vector(11 downto 0);
        sel_op : in std_logic;        
        saida_mux : out std_logic_vector(11 downto 0)
    );
end entity;

architecture comuta of mux2x12 is 
begin 
    
    saida_mux <= canal_x when sel_op = '0'
    else canal_y when sel_op = '1';

end architecture;