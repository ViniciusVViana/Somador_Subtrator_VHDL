library  IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux2x12 is
    port(
        x : in std_logic_vector(11 downto 0);
        y : in std_logic_vector(11 downto 0);
        cin : in std_logic;
        op : in std_logic;        
        cout : out std_logic;
        saida : out std_logic_vector(11 downto 0);
    );
end entity;

architecture comuta of mux2x12 is 
begin 
    
end architecture;   
