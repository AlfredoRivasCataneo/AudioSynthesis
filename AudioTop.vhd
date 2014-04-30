library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity AudioTop is 
						port(clk50mhz:  in std_logic;									--the master clock of the board
								    btn:  in  std_logic_vector(3 downto 0);   	--we can use the buttons for something
								--	 sw:   in  std_logic_vector(7 downto 0); 		-- also the sw
									 ps2c: in  std_logic;								--the ps2 clock
									 ps2d: in  std_logic;								--data form the ps2 we need to filter both
									 seg:  out std_logic_vector(6 downto 0); 		--the 7s display to show do re mi fa...
									 led:  out std_logic_vector(7 downto 0); 
									 an:   out std_logic_vector(3 downto 0)		--for multiplexing the 7s display
	--							audioOut: out std_logic									--the pwm out for audio
						);
end AudioTop;
architecture Behavioral of AudioTop is
component Clk25MHz port(--components
		clkin: in std_logic;
		clr: in std_logic;
		clkout: out std_logic);end component;
component DebouncePB  port(
		botones: in std_logic_vector(3 downto 0);
		clk: in std_logic;
		clr: in std_logic;
		salida: out std_logic_vector(3 downto 0));end component;
component DisplayController port (
     clk :       in STD_LOGIC;										   	--Master clk of the board 50Mhz
	  clr :       in STD_LOGIC;										   	
	  entrada :   in STD_LOGIC_VECTOR(15 DOWNTO 0);				  	--8 bits input, could be 16
	  segmentos:  out STD_LOGIC_VECTOR(6 DOWNTO 0);		 		   --output to segments	
	  anodo :     out STD_LOGIC_VECTOR(3 DOWNTO 0));end component;				   --output to the anodes
component ps2Controller port (
	 clk25: in std_logic;
	 clr: in std_logic;
	 PS2C: in std_logic;
	 PS2D: in std_logic;
	 keyval1: out std_logic_vector(7 downto 0);
	 keyval2: out std_logic_vector(7 downto 0);
	 keyval3: out std_logic_vector(7 downto 0));end component;
--component PWM16Bits     port(--generic( n: integer := 16);
--    clr: in std_logic;
--    clk: in std_logic;
--    duty: in std_logic_vector(15 downto 0);
--  --period: in std_logic_vector(15 downto 0);
--    pwm: out std_logic);end component;
----signals
signal clk2: std_logic;
signal pushbutton: std_logic_vector(3 downto 0);
signal clr: std_logic;
signal key1, key2,key3: std_logic_vector(7 downto 0);
signal displays: std_logic_vector(15 downto 0);
begin

displays <= key1 & key2;
led<= key3;
clr<=btn(0);
ClkDivBy2: Clk25MHz port map (clk50Mhz,clr,clk2);
KeyBrd: ps2Controller port map (clk2,clr,ps2c,ps2d,key1,key2,key3);
btns: DebouncePB port map(btn,clk50MHz,clr,pushbutton);
Display: DisplayController port map(clk50MHz,clr,displays,seg,an);
--PWM: PWM16Bits port map(clr,clk50MHz,audioOut);




end Behavioral;

