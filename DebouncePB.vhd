library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DebouncePB is  port(
		botones: in std_logic_vector(3 downto 0);
		clk: in std_logic;
		clr: in std_logic;
		salida: out std_logic_vector(3 downto 0)
);
end DebouncePB;

architecture Behavioral of DebouncePB is
signal clkcnt: std_logic_vector(25 downto 0);
signal cclk: std_logic;
signal delay1: std_logic_vector(3 downto 0);
signal delay2: std_logic_vector(3 downto 0);
signal delay3: std_logic_vector(3 downto 0);
begin

process(clk,clr)
		begin
		if clr='1' then 
			clkcnt<= (others =>'0');
			cclk <='0';
		elsif (clk'event and clk='1') then		
			if clkcnt <= 263 then
				clkcnt <= (others =>'0');
				cclk <= not cclk;
			else
				clkcnt <= clkcnt+1;
			end if;
		end if;	
		end process;
		
		process(cclk,clr)
		begin
			if (clr='1') then
				delay1 <= "0000";
				delay2 <= "0000";
				delay3 <= "0000";
			elsif (cclk'event and cclk='1' ) then
				delay1 <= botones;
				delay2 <= delay1;
				delay3 <= delay2;
			end if;	
		end process;
		
		salida <= delay1 and delay2 and delay3;
		

end Behavioral;

