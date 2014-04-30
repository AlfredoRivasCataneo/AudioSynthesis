clc;
t=0:0.01:10;
alpha=0.01;
e=2.71;
y=10*sin(t);
plot(t,y);

theta=0:0.1:2*pi;
seno=int32(sin(theta)*10000000/32768);



s = fopen('TablaDeOnda.vhd','w+'); %opens the output file 
fprintf(s,'library IEEE;\n');
fprintf(s,'use IEEE.STD_LOGIC_1164.ALL;\n');
fprintf(s,'use IEEE.NUMERIC_STD.ALL;\n');
fprintf(s,'use IEEE.STD_LOGIC_unsigned.ALL;\n');
fprintf(s,'entity sinewave is\n');
fprintf(s,'port (clksen :in  std_logic;\n');
fprintf(s,'dataout : out std_logic_vector(15 downto 0);\n');
fprintf(s,');\n');
fprintf(s,'end sinewave;\n');
fprintf(s,'architecture Behavioral of sinewave is\n');
 fprintf(s,'\n');
 fprintf(s,'\n');
for i=0:360
%fprintf(s,'%s\n','hola mundo de las tablas de onda\n',',');

numero=dec2hex(i,4);
fprintf(s,'constant dato');
fprintf(s,'%d',i);
fprintf(s,': std_logic_vector(15 downto 0) := ');
fprintf(s,'x');
fprintf(s,'"');
fprintf(s,'%s',numero); 
fprintf(s,'";');
fprintf(s,'\n');


% fprintf(s,'%s\n','; .COE file with hex coefficients '); 
% fprintf(s,'; Height: %d, Width: %d\n\n', 10, 10); 
% fprintf(s,'%s\n','memory_initialization_radix=16;'); 
% fprintf(s,'%s\n','memory_initialization_vector='); 
end
fprintf(s,'type rom_array is array (NATURAL range <>) of STD_LOGIC_VECTOR(15 downto 0);\n');
fprintf(s,'constant rom: rom_array := (');
for i=0:360
    fprintf(s,'%s','D');
    fprintf(s,'%d',i);
    fprintf(s,',');
    if((i==32)||(i==32*2)||(i==32*3)||(i==32*4)||(i==32*4)||(i==32*5)||(i==32*6)||(i==32*7)||(i==32*8)||(i==32*9)||(i==32*10)||(i==32*11)||(i==32*12)) 
    fprintf(s,'\n');    
    end    
end
fprintf(s,');');
fprintf(s,'\n');


fprintf(s,'begin\n');
fprintf(s,'process(clksen)\n');
fprintf(s,'variable j: integer;\n');
fprintf(s,'begin\n');
fprintf(s,'if(rising_edge(clk)) then  ');
fprintf(s,'j := conv_integer(dir);\n');
fprintf(s,'dataout <= rom(j); \n');
fprintf(s,'j<= j+1\n');
fprintf(s,'if(j=180) then\n');
fprintf(s,'j<=0;\n');
fprintf(s,'end if;\n');
fprintf(s,'end if;\n');
fprintf(s,'end process;\n');
fprintf(s,'end Behavioral;');
fprintf(s,'\n');
fprintf(s,'\n');

fprintf('terminado');
fclose(s);