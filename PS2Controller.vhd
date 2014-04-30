library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity PS2Controller is
 port (
	clk25: in std_logic;
	clr: in std_logic;
	PS2C: in std_logic;
	PS2D: in std_logic;
	keyval1: out std_logic_vector(7 downto 0);
	keyval2: out std_logic_vector(7 downto 0);
	keyval3: out std_logic_vector(7 downto 0)
);
end PS2Controller;

architecture Behavioral of PS2Controller is
type state_type is (start, wtclklo1, wtclkhi1, getkey1, wtclklo2,wtclkhi2, getkey2, breakey, wtclklo3, wtclkhi3, getkey3);
signal state: state_type;
signal PS2Cf, PS2Df: std_logic;
signal ps2c_filter, ps2d_filter: std_logic_vector(7 downto 0);
signal shift1, shift2, shift3: std_logic_vector(10 downto 0);
signal keyval1s, keyval2s, keyval3s: std_logic_vector(7 downto 0);
signal bit_count: std_logic_vector(3 downto 0);
constant bit_count_max: std_logic_vector(3 downto 0) := "1011";--11
begin
		fitro: process(clk25,clr)
		begin
				if clr ='1' then
						ps2c_filter <= (others => '0');
						ps2d_filter <= (others => '0');
						ps2cf <= '1';
						ps2df <= '1';
				elsif clk25'event and clk25 = '1' then
						ps2c_filter(7) <= ps2c;				
						ps2c_filter(6 downto 0) <= ps2c_filter(7 downto 1);
						ps2d_filter(7) <= ps2d;
						ps2d_filter(6 downto 0) <= ps2d_filter(7 downto 1);
				if ps2c_filter = x"FF" then
						ps2cf <= '1';
				elsif ps2c_filter = x"00" then		
						ps2cf <= '0';
				end if;
				if ps2d_filter = x"FF" then		
						ps2df <= '1';
				elsif ps2d_filter = x"00" then		
						ps2df <= '0';
				end if;		
		end if;
		end process;		
		--maquina de estados para leer el teclado
		skey: process(clk25, clr)
		begin
		if (clr ='1') then
			state<= start;
			bit_count <= (others => '0');
			shift1 <= (others=>'0');
			shift2 <= (others=>'0');
			shift3 <= (others=>'0');
			keyval1s <= (others=>'0');
			keyval2s <= (others=>'0');
			keyval3s <= (others=>'0');
		elsif (clk25'event and clk25 = '1') then	
			case state is
					when start =>
									if ps2df = '1' then
											state<= start;
									else
											state <= wtclklo1;
									end if;
					when wtclklo1 =>			--espera por un pulso bajo de reloj						
									if bit_count < bit_count_max then
											if ps2cf = '1' then
													state <= wtclklo1;
											else
													state <= wtclkhi1;
													shift1<= ps2df & shift1(10 downto 1);
											end if;
									else
											state <= getkey1;
									end if;
					when wtclkhi1 =>			--espera por un pulso alto de reloj
									if ps2cf = '0' then
											state<= wtclkhi1;
									else
											state <= wtclklo1;
											bit_count <= bit_count + 1;
									end if;
					when getkey1 =>
									keyval1s <= shift1(8 downto 1);
									bit_count <= (others=>'0');
									state <= wtclklo2;
					when wtclklo2 =>
									if bit_count < bit_count_max then
											if ps2cf = '1' then
												state <= wtclklo2;
											else
												state <= wtclkhi2;
												shift2 <= ps2df & shift2(10 downto 1);
											end if;
									else 
											state <= getkey2;
									end if;
					when wtclkhi2 =>					--espera por un pulso alto de reloj
									if ps2cf = '0' then
												state <= wtclklo2;
									else
												state<= wtclklo2;
												bit_count <= bit_count + 1;
									end if;	


					when getkey2 => 
									keyval2s <= shift2(8 downto 1);
									bit_count <= (others => '0');
									state <= breakey;
					when breakey =>
									if keyval2s = x"F0" then
											state <= wtclklo3;
									else
											if keyval1s = x"E0" then
														state <= wtclklo1;
											else
														state <= wtclklo2;
											end if;
									end if;
					when wtclklo3 =>
									if bit_count < bit_count_max then
										if ps2cf = '1' then
												state <= wtclklo3;
										else
												state <= wtclkhi3;
												shift3 <= ps2df & shift3(10 downto 1);
										end if;
									else
										state <= getkey3;
									end if;			
					when wtclkhi3 =>
									if ps2cf = '0' then
										state <= wtclkhi3;
									else
										state <= wtclklo3;
										bit_count <= bit_count + 1;
									end if;		
					when getkey3 =>
									keyval3s <= shift3(8 downto 1);
									bit_count<= (others=>'0');
									state <= wtclklo1;
					end case;
			end if;		
		end process;
keyval1 <= keyval1s;
keyval2 <= keyval2s;
keyval3 <= keyval3s;
end Behavioral;

