library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
entity sinewave is
port (clksen :in  std_logic;
dataout : out std_logic_vector(15 downto 0);
);
end sinewave;
architecture Behavioral of sinewave is


constant dato0: std_logic_vector(15 downto 0) := x"0000";
