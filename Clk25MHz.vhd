library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity Clk25MHz is
port(
		clkin: in std_logic;
		clr: in std_logic;
		clkout: out std_logic
);
end Clk25MHz;

architecture Behavioral of Clk25MHz is
signal count: std_logic_vector(1 downto 0);
begin
	process(clkin,clr)
		begin
				if clr ='1' then
					count <= (others =>'0');
				elsif clkin'event and clkin ='1' then
					count <= count + 1;
					if count = 2 then
						clkout<='1';
						count<= (others =>'0');
					end if;
				end if;	
	end process;	
	
end Behavioral;
