clc;
t=0:0.01:10;
alpha=0.01;
e=2.71;
y=10*sin(t);
%plot(t,y);
theta=0:0.1:2*pi;
seno=int32(sin(theta)*10000000/32768);



s = fopen('SineWave.vhd','w+'); %opens the output file 
fprintf(s,'library IEEE;\n');
fprintf(s,'use IEEE.STD_LOGIC_1164.ALL;\n');
fprintf(s,'use IEEE.NUMERIC_STD.ALL;\n');
fprintf(s,'use IEEE.STD_LOGIC_unsigned.ALL;\n');
fprintf(s,'entity sinewave is\n');
fprintf(s,'port (clksen :in  std_logic;\n');
fprintf(s,'dataout : out std_logic_vector(15 downto 0);\n');
fprintf(s,');\n');
fprintf(s,'end sinewave;\n');
fprintf(s,'architecture Behavioral of SineWave is\n');
 fprintf(s,'\n');
 fprintf(s,'\n');
for i=0:360
 x=uint8(sind(i)*128+128);   
 plot(i,x,'r');
 hold on;
numero=dec2hex(x,2);
fprintf(s,'constant dato');
fprintf(s,'%d',i);
fprintf(s,': std_logic_vector(15 downto 0) := ');
fprintf(s,'x');
fprintf(s,'"');
fprintf(s,'%s',numero); 
fprintf(s,'";');
fprintf(s,'\n');
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
fprintf(s,'process(clk)\n');
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








s2 = fopen('SawToothWave.vhd','w+'); %opens the output file 
        fprintf(s2,'library IEEE;\n');
        fprintf(s2,'use IEEE.STD_LOGIC_1164.ALL;\n');
        fprintf(s2,'use IEEE.NUMERIC_STD.ALL;\n');
        fprintf(s2,'use IEEE.STD_LOGIC_unsigned.ALL;\n');
        fprintf(s2,'entity SawToothWave is\n');
        fprintf(s2,'port (clk :in  std_logic;\n');
        fprintf(s2,'dataout : out std_logic_vector(15 downto 0);\n');
        fprintf(s2,');\n');
        fprintf(s2,'end SawToothWave;\n');
        fprintf(s2,'architecture Behavioral of SawToothWave is\n');
        fprintf(s2,'\n');
        fprintf(s2,'\n');
for i=0:360
    if i<181
        numero=dec2hex(round(1.41*i),2);
        plot(i,1.41*i,'g');
        hold on;
        fprintf(s2,'constant dato');
        fprintf(s2,'%d',i);
        fprintf(s2,': std_logic_vector(15 downto 0) := ');
        fprintf(s2,'x');
        fprintf(s2,'"');
        fprintf(s2,'%s',numero);
        fprintf(s2,'";');
        fprintf(s2,'\n');
    else
        numero=dec2hex(round(1.41*i-255),2);
        plot(i,1.41*i-255,'g');
        hold on;
        fprintf(s2,'constant dato');
        fprintf(s2,'%d',i);
        fprintf(s2,': std_logic_vector(15 downto 0) := ');
        fprintf(s2,'x');
        fprintf(s2,'"');
        fprintf(s2,'%s',numero);
        fprintf(s2,'";');
        fprintf(s2,'\n');
    end
end
fprintf(s2,'type rom_array is array (NATURAL range <>) of STD_LOGIC_VECTOR(15 downto 0);\n');
fprintf(s2,'constant rom: rom_array := (');
for i=0:360
    fprintf(s2,'%s','D');
    fprintf(s2,'%d',i);
    fprintf(s2,',');
    if((i==32)||(i==32*2)||(i==32*3)||(i==32*4)||(i==32*4)||(i==32*5)||(i==32*6)||(i==32*7)||(i==32*8)||(i==32*9)||(i==32*10)||(i==32*11)||(i==32*12)) 
    fprintf(s2,'\n');    
    end    
end
fprintf(s2,');');
fprintf(s2,'\n');
fprintf(s2,'begin\n');
fprintf(s2,'process(clk)\n');
fprintf(s2,'variable j: integer;\n');
fprintf(s2,'begin\n');
fprintf(s2,'if(rising_edge(clk)) then  ');
fprintf(s2,'j := conv_integer(dir);\n');
fprintf(s2,'dataout <= rom(j); \n');
fprintf(s2,'j<= j+1\n');
fprintf(s2,'if(j=180) then\n');
fprintf(s2,'j<=0;\n');
fprintf(s2,'end if;\n');
fprintf(s2,'end if;\n');
fprintf(s2,'end process;\n');
fprintf(s2,'end Behavioral;');
fprintf(s2,'\n');
fprintf(s2,'\n');
fprintf('terminado');
fclose(s2);











s3 = fopen('TriangleWave.vhd','w+'); %opens the output file 
fprintf(s3,'library IEEE;\n');
fprintf(s3,'use IEEE.STD_LOGIC_1164.ALL;\n');
fprintf(s3,'use IEEE.NUMERIC_STD.ALL;\n');
fprintf(s3,'use IEEE.STD_LOGIC_unsigned.ALL;\n');
fprintf(s3,'entity TriangleWave is\n');
fprintf(s3,'port (clksen :in  std_logic;\n');
fprintf(s3,'dataout : out std_logic_vector(15 downto 0);\n');
fprintf(s3,');\n');
fprintf(s3,'end TriangleWave;\n');
fprintf(s3,'architecture Behavioral of TriangleWave is\n');
 fprintf(s3,'\n');
 fprintf(s3,'\n');
for i=0:360
    if i<91
        numero=dec2hex(128+round(1.41*i),2);
        plot(i,128+round(1.41*i));
        hold on;
        fprintf(s2,'constant dato');
        fprintf(s2,'%d',i);
        fprintf(s2,': std_logic_vector(15 downto 0) := ');
        fprintf(s2,'x');
        fprintf(s2,'"');
        fprintf(s2,'%s',numero);
        fprintf(s2,'";');
        fprintf(s2,'\n');
    elseif i<271
        numero=dec2hex(383-round(1.41*i),2);
        plot(i,383-round(1.41*i));
        hold on;
        fprintf(s2,'constant dato');
        fprintf(s2,'%d',i);
        fprintf(s2,': std_logic_vector(15 downto 0) := ');
        fprintf(s2,'x');
        fprintf(s2,'"');
        fprintf(s2,'%s',numero);
        fprintf(s2,'";');
        fprintf(s2,'\n');
    else
        numero=dec2hex(round(1.41*i)-380,2);
        plot(i,round(1.41*i)-380);
        hold on;
        fprintf(s2,'constant dato');
        fprintf(s2,'%d',i);
        fprintf(s2,': std_logic_vector(15 downto 0) := ');
        fprintf(s2,'x');
        fprintf(s2,'"');
        fprintf(s2,'%s',numero);
        fprintf(s2,'";');
        fprintf(s2,'\n');    
    end
end
fprintf(s3,'type rom_array is array (NATURAL range <>) of STD_LOGIC_VECTOR(15 downto 0);\n');
fprintf(s3,'constant rom: rom_array := (');
for i=0:360
    fprintf(s3,'%s','D');
    fprintf(s3,'%d',i);
    fprintf(s3,',');
    if((i==32)||(i==32*2)||(i==32*3)||(i==32*4)||(i==32*4)||(i==32*5)||(i==32*6)||(i==32*7)||(i==32*8)||(i==32*9)||(i==32*10)||(i==32*11)||(i==32*12)) 
    fprintf(s3,'\n');    
    end    
end
fprintf(s3,');');
fprintf(s3,'\n');
fprintf(s3,'begin\n');
fprintf(s3,'process(clksen)\n');
fprintf(s3,'variable j: integer;\n');
fprintf(s3,'begin\n');
fprintf(s3,'if(rising_edge(clk)) then  ');
fprintf(s3,'j := conv_integer(dir);\n');
fprintf(s3,'dataout <= rom(j); \n');
fprintf(s3,'j<= j+1\n');
fprintf(s3,'if(j=180) then\n');
fprintf(s3,'j<=0;\n');
fprintf(s3,'end if;\n');
fprintf(s3,'end if;\n');
fprintf(s3,'end process;\n');
fprintf(s3,'end Behavioral;');
fprintf(s3,'\n');
fprintf(s2,'\n');
fprintf('terminado');
fclose(s3);





