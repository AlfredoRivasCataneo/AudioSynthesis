library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
entity DigitalControlledAmp is
port(x,y: in std_logic_vector(15 downto 0);
		z: out std_logic_vector(31 downto 0));
end DigitalControlledAmp;

architecture Behavioral of DigitalControlledAmp is
begin
z<= std_logic_vector(unsigned(x)*unsigned(y));
end Behavioral;

