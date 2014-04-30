library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity PWM16Bits is

port(
clr: in std_logic;
clk: in std_logic;
duty: in std_logic_vector(15 downto 0);
pwm: out std_logic
);

end PWM16Bits;

architecture Behavioral of PWM16Bits is
signal   count: std_logic_vector(15 downto 0);
constant period:  std_logic_vector(15 downto 0) := x"01F4";  --aproximated period to 100KHz 50M/100K=500-->1F4h
begin
	cntn: process(clk,clr)
	begin
	if clr='1' then
			count<= (others=>'0');
	elsif clk'event and clk ='1' then
			if count= period - 1 then
			count<= (others=>'0');
			else
			count <= count + 1;
			end if;
	end if;		
	end process cntn;


	pwmout: process(count,duty)
	begin
	if count < duty then
		pwm <= '1';
	else
		pwm<='0';
	end if;	
	end process pwmout;
end Behavioral;

