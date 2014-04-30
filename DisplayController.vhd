library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity DisplayController is
port (
    clk :       in STD_LOGIC;										   	--Master clk of the board 50Mhz
	 clr :       in STD_LOGIC;										   	
	 entrada :   in STD_LOGIC_VECTOR(15 DOWNTO 0);				  	--8 bits input, could be 16
	 segmentos:  out STD_LOGIC_VECTOR(6 DOWNTO 0);		 		   --SALIDA A LOS SEGMENTOS DEL DISPLAY	
	 anodo :     out STD_LOGIC_VECTOR(3 DOWNTO 0)				   --SALIDA A LOS anodoODOS
	);

end DisplayController;

architecture Behavioral of DisplayController is
signal s: STD_LOGIC_VECTOR(1 DOWNTO 0);		      --2 BITS MAS SIGNIFICATIVOS DE CLKDIV
signal digito: STD_LOGIC_VECTOR(3 DOWNTO 0);			--ENTRADA AL CONVERTIDOR DE HEXADECIMAL A 7 SEGMENTOS
signal aen: STD_LOGIC_VECTOR(3 DOWNTO 0);				--anodoODO DE LOS DISPLAYS DE SIETE SEGMENTOS
signal clkdiv: STD_LOGIC_VECTOR(18 DOWNTO 0);   	--DIVISOR DE FRECUENCIA DE 50 MHZ A 48 HZ PARA MU
signal salida: STD_LOGIC_VECTOR(15 DOWNTO 0);		--4 BITS PARA CADA DISPLAY 16 PORQUE TENEMOS 4 DISPLAYS
begin

salida(15 downto 0)<=entrada;
		s<=clkdiv(18 downto 17);
		aen <= "1111";		
		-- multiplexor cuadruple entrada s, salida x vector de 16 bits, cada 4 bits son el codigo bcd correspondiente
		-- a cada uno de los segmentos
		process(s,salida)
		begin
		case s is 
		when "00" => digito <= salida(3 downto 0);
		when "01" => digito <= salida(7 downto 4);
		when "10" => digito <= salida(11 downto 8);
		when others => digito <= salida(15 downto 12);
		end case;
		end process;
		
		
		-- 7 segments to hexadecimal decoder		
		process(digito)
		begin
		case digito is				 -- abcdefg
				when X"0" => segmentos <= "0000001";   --0
				when X"1" => segmentos <= "1001111";   --1
				when X"2" => segmentos <= "0010010";   --2
				when X"3" => segmentos <= "0000110";   --3
				when X"4" => segmentos <= "1001100";   --4
				when X"5" => segmentos <= "0100100";   --5
				when X"6" => segmentos <= "0100000";   --6
				when X"7" => segmentos <= "0001101";   --7
				when X"8" => segmentos <= "0000000";   --8
				when X"9" => segmentos <= "0000100";   --9
				when X"A" => segmentos <= "0001000";   --A
				when X"B" => segmentos <= "1100000";   --B
				when X"C" => segmentos <= "0110001";   --C
				when X"D" => segmentos <= "1000010";   --D
				when X"E" => segmentos <= "0110000";   --E
				when others => segmentos <= "0111000"; --F
			end case;
		end process;
				

		--for select wich digit of the four available
		process(s,aen)
		begin
		anodo<= "1111";
		if aen(conv_integer(s)) = '1' then			   --aqui dependiendo del numero en la entrada de este bloque sera
			anodo (conv_integer(s)) <= '0';				-- el elemento de anodo que se haga cero, por ejemplo si aen="01", = 2
			end if;											   --la salida de anodo sera anodo="1101", cada vez que entre a este process
		end process;										   -- anodo="1111"
		
		
		-- clock divider for digit multiplexing
		--we can take the two msb of the 20 bits register 
		-- this makes a frecuency divider from 50MHZ to 48 HZ aproximately
			process(clk,clr)
			begin
			if clr = '1' then									--clear counter
				clkdiv <= (others =>'0');
			elsif clk'event and clk = '1' then			--if we have no clear the register increase every rising edge of the clock
				clkdiv <= clkdiv + 1;
			end if;
			end process;
end Behavioral;
