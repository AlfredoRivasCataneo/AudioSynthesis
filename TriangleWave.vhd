library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
entity TriangleWave is
port (clksen :in  std_logic;
dataout : out std_logic_vector(15 downto 0);
);
end TriangleWave;
architecture Behavioral of TriangleWave is


constant dato0: std_logic_vector(15 downto 0) := x"0000";
constant dato1: std_logic_vector(15 downto 0) := x"0001";
constant dato2: std_logic_vector(15 downto 0) := x"0002";
constant dato3: std_logic_vector(15 downto 0) := x"0003";
constant dato4: std_logic_vector(15 downto 0) := x"0004";
constant dato5: std_logic_vector(15 downto 0) := x"0005";
constant dato6: std_logic_vector(15 downto 0) := x"0006";
constant dato7: std_logic_vector(15 downto 0) := x"0007";
constant dato8: std_logic_vector(15 downto 0) := x"0008";
constant dato9: std_logic_vector(15 downto 0) := x"0009";
constant dato10: std_logic_vector(15 downto 0) := x"000A";
constant dato11: std_logic_vector(15 downto 0) := x"000B";
constant dato12: std_logic_vector(15 downto 0) := x"000C";
constant dato13: std_logic_vector(15 downto 0) := x"000D";
constant dato14: std_logic_vector(15 downto 0) := x"000E";
constant dato15: std_logic_vector(15 downto 0) := x"000F";
constant dato16: std_logic_vector(15 downto 0) := x"0010";
constant dato17: std_logic_vector(15 downto 0) := x"0011";
constant dato18: std_logic_vector(15 downto 0) := x"0012";
constant dato19: std_logic_vector(15 downto 0) := x"0013";
constant dato20: std_logic_vector(15 downto 0) := x"0014";
constant dato21: std_logic_vector(15 downto 0) := x"0015";
constant dato22: std_logic_vector(15 downto 0) := x"0016";
constant dato23: std_logic_vector(15 downto 0) := x"0017";
constant dato24: std_logic_vector(15 downto 0) := x"0018";
constant dato25: std_logic_vector(15 downto 0) := x"0019";
constant dato26: std_logic_vector(15 downto 0) := x"001A";
constant dato27: std_logic_vector(15 downto 0) := x"001B";
constant dato28: std_logic_vector(15 downto 0) := x"001C";
constant dato29: std_logic_vector(15 downto 0) := x"001D";
constant dato30: std_logic_vector(15 downto 0) := x"001E";
constant dato31: std_logic_vector(15 downto 0) := x"001F";
constant dato32: std_logic_vector(15 downto 0) := x"0020";
constant dato33: std_logic_vector(15 downto 0) := x"0021";
constant dato34: std_logic_vector(15 downto 0) := x"0022";
constant dato35: std_logic_vector(15 downto 0) := x"0023";
constant dato36: std_logic_vector(15 downto 0) := x"0024";
constant dato37: std_logic_vector(15 downto 0) := x"0025";
constant dato38: std_logic_vector(15 downto 0) := x"0026";
constant dato39: std_logic_vector(15 downto 0) := x"0027";
constant dato40: std_logic_vector(15 downto 0) := x"0028";
constant dato41: std_logic_vector(15 downto 0) := x"0029";
constant dato42: std_logic_vector(15 downto 0) := x"002A";
constant dato43: std_logic_vector(15 downto 0) := x"002B";
constant dato44: std_logic_vector(15 downto 0) := x"002C";
constant dato45: std_logic_vector(15 downto 0) := x"002D";
constant dato46: std_logic_vector(15 downto 0) := x"002E";
constant dato47: std_logic_vector(15 downto 0) := x"002F";
constant dato48: std_logic_vector(15 downto 0) := x"0030";
constant dato49: std_logic_vector(15 downto 0) := x"0031";
constant dato50: std_logic_vector(15 downto 0) := x"0032";
constant dato51: std_logic_vector(15 downto 0) := x"0033";
constant dato52: std_logic_vector(15 downto 0) := x"0034";
constant dato53: std_logic_vector(15 downto 0) := x"0035";
constant dato54: std_logic_vector(15 downto 0) := x"0036";
constant dato55: std_logic_vector(15 downto 0) := x"0037";
constant dato56: std_logic_vector(15 downto 0) := x"0038";
constant dato57: std_logic_vector(15 downto 0) := x"0039";
constant dato58: std_logic_vector(15 downto 0) := x"003A";
constant dato59: std_logic_vector(15 downto 0) := x"003B";
constant dato60: std_logic_vector(15 downto 0) := x"003C";
constant dato61: std_logic_vector(15 downto 0) := x"003D";
constant dato62: std_logic_vector(15 downto 0) := x"003E";
constant dato63: std_logic_vector(15 downto 0) := x"003F";
constant dato64: std_logic_vector(15 downto 0) := x"0040";
constant dato65: std_logic_vector(15 downto 0) := x"0041";
constant dato66: std_logic_vector(15 downto 0) := x"0042";
constant dato67: std_logic_vector(15 downto 0) := x"0043";
constant dato68: std_logic_vector(15 downto 0) := x"0044";
constant dato69: std_logic_vector(15 downto 0) := x"0045";
constant dato70: std_logic_vector(15 downto 0) := x"0046";
constant dato71: std_logic_vector(15 downto 0) := x"0047";
constant dato72: std_logic_vector(15 downto 0) := x"0048";
constant dato73: std_logic_vector(15 downto 0) := x"0049";
constant dato74: std_logic_vector(15 downto 0) := x"004A";
constant dato75: std_logic_vector(15 downto 0) := x"004B";
constant dato76: std_logic_vector(15 downto 0) := x"004C";
constant dato77: std_logic_vector(15 downto 0) := x"004D";
constant dato78: std_logic_vector(15 downto 0) := x"004E";
constant dato79: std_logic_vector(15 downto 0) := x"004F";
constant dato80: std_logic_vector(15 downto 0) := x"0050";
constant dato81: std_logic_vector(15 downto 0) := x"0051";
constant dato82: std_logic_vector(15 downto 0) := x"0052";
constant dato83: std_logic_vector(15 downto 0) := x"0053";
constant dato84: std_logic_vector(15 downto 0) := x"0054";
constant dato85: std_logic_vector(15 downto 0) := x"0055";
constant dato86: std_logic_vector(15 downto 0) := x"0056";
constant dato87: std_logic_vector(15 downto 0) := x"0057";
constant dato88: std_logic_vector(15 downto 0) := x"0058";
constant dato89: std_logic_vector(15 downto 0) := x"0059";
constant dato90: std_logic_vector(15 downto 0) := x"005A";
constant dato91: std_logic_vector(15 downto 0) := x"005B";
constant dato92: std_logic_vector(15 downto 0) := x"005C";
constant dato93: std_logic_vector(15 downto 0) := x"005D";
constant dato94: std_logic_vector(15 downto 0) := x"005E";
constant dato95: std_logic_vector(15 downto 0) := x"005F";
constant dato96: std_logic_vector(15 downto 0) := x"0060";
constant dato97: std_logic_vector(15 downto 0) := x"0061";
constant dato98: std_logic_vector(15 downto 0) := x"0062";
constant dato99: std_logic_vector(15 downto 0) := x"0063";
constant dato100: std_logic_vector(15 downto 0) := x"0064";
constant dato101: std_logic_vector(15 downto 0) := x"0065";
constant dato102: std_logic_vector(15 downto 0) := x"0066";
constant dato103: std_logic_vector(15 downto 0) := x"0067";
constant dato104: std_logic_vector(15 downto 0) := x"0068";
constant dato105: std_logic_vector(15 downto 0) := x"0069";
constant dato106: std_logic_vector(15 downto 0) := x"006A";
constant dato107: std_logic_vector(15 downto 0) := x"006B";
constant dato108: std_logic_vector(15 downto 0) := x"006C";
constant dato109: std_logic_vector(15 downto 0) := x"006D";
constant dato110: std_logic_vector(15 downto 0) := x"006E";
constant dato111: std_logic_vector(15 downto 0) := x"006F";
constant dato112: std_logic_vector(15 downto 0) := x"0070";
constant dato113: std_logic_vector(15 downto 0) := x"0071";
constant dato114: std_logic_vector(15 downto 0) := x"0072";
constant dato115: std_logic_vector(15 downto 0) := x"0073";
constant dato116: std_logic_vector(15 downto 0) := x"0074";
constant dato117: std_logic_vector(15 downto 0) := x"0075";
constant dato118: std_logic_vector(15 downto 0) := x"0076";
constant dato119: std_logic_vector(15 downto 0) := x"0077";
constant dato120: std_logic_vector(15 downto 0) := x"0078";
constant dato121: std_logic_vector(15 downto 0) := x"0079";
constant dato122: std_logic_vector(15 downto 0) := x"007A";
constant dato123: std_logic_vector(15 downto 0) := x"007B";
constant dato124: std_logic_vector(15 downto 0) := x"007C";
constant dato125: std_logic_vector(15 downto 0) := x"007D";
constant dato126: std_logic_vector(15 downto 0) := x"007E";
constant dato127: std_logic_vector(15 downto 0) := x"007F";
constant dato128: std_logic_vector(15 downto 0) := x"0080";
constant dato129: std_logic_vector(15 downto 0) := x"0081";
constant dato130: std_logic_vector(15 downto 0) := x"0082";
constant dato131: std_logic_vector(15 downto 0) := x"0083";
constant dato132: std_logic_vector(15 downto 0) := x"0084";
constant dato133: std_logic_vector(15 downto 0) := x"0085";
constant dato134: std_logic_vector(15 downto 0) := x"0086";
constant dato135: std_logic_vector(15 downto 0) := x"0087";
constant dato136: std_logic_vector(15 downto 0) := x"0088";
constant dato137: std_logic_vector(15 downto 0) := x"0089";
constant dato138: std_logic_vector(15 downto 0) := x"008A";
constant dato139: std_logic_vector(15 downto 0) := x"008B";
constant dato140: std_logic_vector(15 downto 0) := x"008C";
constant dato141: std_logic_vector(15 downto 0) := x"008D";
constant dato142: std_logic_vector(15 downto 0) := x"008E";
constant dato143: std_logic_vector(15 downto 0) := x"008F";
constant dato144: std_logic_vector(15 downto 0) := x"0090";
constant dato145: std_logic_vector(15 downto 0) := x"0091";
constant dato146: std_logic_vector(15 downto 0) := x"0092";
constant dato147: std_logic_vector(15 downto 0) := x"0093";
constant dato148: std_logic_vector(15 downto 0) := x"0094";
constant dato149: std_logic_vector(15 downto 0) := x"0095";
constant dato150: std_logic_vector(15 downto 0) := x"0096";
constant dato151: std_logic_vector(15 downto 0) := x"0097";
constant dato152: std_logic_vector(15 downto 0) := x"0098";
constant dato153: std_logic_vector(15 downto 0) := x"0099";
constant dato154: std_logic_vector(15 downto 0) := x"009A";
constant dato155: std_logic_vector(15 downto 0) := x"009B";
constant dato156: std_logic_vector(15 downto 0) := x"009C";
constant dato157: std_logic_vector(15 downto 0) := x"009D";
constant dato158: std_logic_vector(15 downto 0) := x"009E";
constant dato159: std_logic_vector(15 downto 0) := x"009F";
constant dato160: std_logic_vector(15 downto 0) := x"00A0";
constant dato161: std_logic_vector(15 downto 0) := x"00A1";
constant dato162: std_logic_vector(15 downto 0) := x"00A2";
constant dato163: std_logic_vector(15 downto 0) := x"00A3";
constant dato164: std_logic_vector(15 downto 0) := x"00A4";
constant dato165: std_logic_vector(15 downto 0) := x"00A5";
constant dato166: std_logic_vector(15 downto 0) := x"00A6";
constant dato167: std_logic_vector(15 downto 0) := x"00A7";
constant dato168: std_logic_vector(15 downto 0) := x"00A8";
constant dato169: std_logic_vector(15 downto 0) := x"00A9";
constant dato170: std_logic_vector(15 downto 0) := x"00AA";
constant dato171: std_logic_vector(15 downto 0) := x"00AB";
constant dato172: std_logic_vector(15 downto 0) := x"00AC";
constant dato173: std_logic_vector(15 downto 0) := x"00AD";
constant dato174: std_logic_vector(15 downto 0) := x"00AE";
constant dato175: std_logic_vector(15 downto 0) := x"00AF";
constant dato176: std_logic_vector(15 downto 0) := x"00B0";
constant dato177: std_logic_vector(15 downto 0) := x"00B1";
constant dato178: std_logic_vector(15 downto 0) := x"00B2";
constant dato179: std_logic_vector(15 downto 0) := x"00B3";
constant dato180: std_logic_vector(15 downto 0) := x"00B4";
constant dato181: std_logic_vector(15 downto 0) := x"00B5";
constant dato182: std_logic_vector(15 downto 0) := x"00B6";
constant dato183: std_logic_vector(15 downto 0) := x"00B7";
constant dato184: std_logic_vector(15 downto 0) := x"00B8";
constant dato185: std_logic_vector(15 downto 0) := x"00B9";
constant dato186: std_logic_vector(15 downto 0) := x"00BA";
constant dato187: std_logic_vector(15 downto 0) := x"00BB";
constant dato188: std_logic_vector(15 downto 0) := x"00BC";
constant dato189: std_logic_vector(15 downto 0) := x"00BD";
constant dato190: std_logic_vector(15 downto 0) := x"00BE";
constant dato191: std_logic_vector(15 downto 0) := x"00BF";
constant dato192: std_logic_vector(15 downto 0) := x"00C0";
constant dato193: std_logic_vector(15 downto 0) := x"00C1";
constant dato194: std_logic_vector(15 downto 0) := x"00C2";
constant dato195: std_logic_vector(15 downto 0) := x"00C3";
constant dato196: std_logic_vector(15 downto 0) := x"00C4";
constant dato197: std_logic_vector(15 downto 0) := x"00C5";
constant dato198: std_logic_vector(15 downto 0) := x"00C6";
constant dato199: std_logic_vector(15 downto 0) := x"00C7";
constant dato200: std_logic_vector(15 downto 0) := x"00C8";
constant dato201: std_logic_vector(15 downto 0) := x"00C9";
constant dato202: std_logic_vector(15 downto 0) := x"00CA";
constant dato203: std_logic_vector(15 downto 0) := x"00CB";
constant dato204: std_logic_vector(15 downto 0) := x"00CC";
constant dato205: std_logic_vector(15 downto 0) := x"00CD";
constant dato206: std_logic_vector(15 downto 0) := x"00CE";
constant dato207: std_logic_vector(15 downto 0) := x"00CF";
constant dato208: std_logic_vector(15 downto 0) := x"00D0";
constant dato209: std_logic_vector(15 downto 0) := x"00D1";
constant dato210: std_logic_vector(15 downto 0) := x"00D2";
constant dato211: std_logic_vector(15 downto 0) := x"00D3";
constant dato212: std_logic_vector(15 downto 0) := x"00D4";
constant dato213: std_logic_vector(15 downto 0) := x"00D5";
constant dato214: std_logic_vector(15 downto 0) := x"00D6";
constant dato215: std_logic_vector(15 downto 0) := x"00D7";
constant dato216: std_logic_vector(15 downto 0) := x"00D8";
constant dato217: std_logic_vector(15 downto 0) := x"00D9";
constant dato218: std_logic_vector(15 downto 0) := x"00DA";
constant dato219: std_logic_vector(15 downto 0) := x"00DB";
constant dato220: std_logic_vector(15 downto 0) := x"00DC";
constant dato221: std_logic_vector(15 downto 0) := x"00DD";
constant dato222: std_logic_vector(15 downto 0) := x"00DE";
constant dato223: std_logic_vector(15 downto 0) := x"00DF";
constant dato224: std_logic_vector(15 downto 0) := x"00E0";
constant dato225: std_logic_vector(15 downto 0) := x"00E1";
constant dato226: std_logic_vector(15 downto 0) := x"00E2";
constant dato227: std_logic_vector(15 downto 0) := x"00E3";
constant dato228: std_logic_vector(15 downto 0) := x"00E4";
constant dato229: std_logic_vector(15 downto 0) := x"00E5";
constant dato230: std_logic_vector(15 downto 0) := x"00E6";
constant dato231: std_logic_vector(15 downto 0) := x"00E7";
constant dato232: std_logic_vector(15 downto 0) := x"00E8";
constant dato233: std_logic_vector(15 downto 0) := x"00E9";
constant dato234: std_logic_vector(15 downto 0) := x"00EA";
constant dato235: std_logic_vector(15 downto 0) := x"00EB";
constant dato236: std_logic_vector(15 downto 0) := x"00EC";
constant dato237: std_logic_vector(15 downto 0) := x"00ED";
constant dato238: std_logic_vector(15 downto 0) := x"00EE";
constant dato239: std_logic_vector(15 downto 0) := x"00EF";
constant dato240: std_logic_vector(15 downto 0) := x"00F0";
constant dato241: std_logic_vector(15 downto 0) := x"00F1";
constant dato242: std_logic_vector(15 downto 0) := x"00F2";
constant dato243: std_logic_vector(15 downto 0) := x"00F3";
constant dato244: std_logic_vector(15 downto 0) := x"00F4";
constant dato245: std_logic_vector(15 downto 0) := x"00F5";
constant dato246: std_logic_vector(15 downto 0) := x"00F6";
constant dato247: std_logic_vector(15 downto 0) := x"00F7";
constant dato248: std_logic_vector(15 downto 0) := x"00F8";
constant dato249: std_logic_vector(15 downto 0) := x"00F9";
constant dato250: std_logic_vector(15 downto 0) := x"00FA";
constant dato251: std_logic_vector(15 downto 0) := x"00FB";
constant dato252: std_logic_vector(15 downto 0) := x"00FC";
constant dato253: std_logic_vector(15 downto 0) := x"00FD";
constant dato254: std_logic_vector(15 downto 0) := x"00FE";
constant dato255: std_logic_vector(15 downto 0) := x"00FF";
constant dato256: std_logic_vector(15 downto 0) := x"0100";
constant dato257: std_logic_vector(15 downto 0) := x"0101";
constant dato258: std_logic_vector(15 downto 0) := x"0102";
constant dato259: std_logic_vector(15 downto 0) := x"0103";
constant dato260: std_logic_vector(15 downto 0) := x"0104";
constant dato261: std_logic_vector(15 downto 0) := x"0105";
constant dato262: std_logic_vector(15 downto 0) := x"0106";
constant dato263: std_logic_vector(15 downto 0) := x"0107";
constant dato264: std_logic_vector(15 downto 0) := x"0108";
constant dato265: std_logic_vector(15 downto 0) := x"0109";
constant dato266: std_logic_vector(15 downto 0) := x"010A";
constant dato267: std_logic_vector(15 downto 0) := x"010B";
constant dato268: std_logic_vector(15 downto 0) := x"010C";
constant dato269: std_logic_vector(15 downto 0) := x"010D";
constant dato270: std_logic_vector(15 downto 0) := x"010E";
constant dato271: std_logic_vector(15 downto 0) := x"010F";
constant dato272: std_logic_vector(15 downto 0) := x"0110";
constant dato273: std_logic_vector(15 downto 0) := x"0111";
constant dato274: std_logic_vector(15 downto 0) := x"0112";
constant dato275: std_logic_vector(15 downto 0) := x"0113";
constant dato276: std_logic_vector(15 downto 0) := x"0114";
constant dato277: std_logic_vector(15 downto 0) := x"0115";
constant dato278: std_logic_vector(15 downto 0) := x"0116";
constant dato279: std_logic_vector(15 downto 0) := x"0117";
constant dato280: std_logic_vector(15 downto 0) := x"0118";
constant dato281: std_logic_vector(15 downto 0) := x"0119";
constant dato282: std_logic_vector(15 downto 0) := x"011A";
constant dato283: std_logic_vector(15 downto 0) := x"011B";
constant dato284: std_logic_vector(15 downto 0) := x"011C";
constant dato285: std_logic_vector(15 downto 0) := x"011D";
constant dato286: std_logic_vector(15 downto 0) := x"011E";
constant dato287: std_logic_vector(15 downto 0) := x"011F";
constant dato288: std_logic_vector(15 downto 0) := x"0120";
constant dato289: std_logic_vector(15 downto 0) := x"0121";
constant dato290: std_logic_vector(15 downto 0) := x"0122";
constant dato291: std_logic_vector(15 downto 0) := x"0123";
constant dato292: std_logic_vector(15 downto 0) := x"0124";
constant dato293: std_logic_vector(15 downto 0) := x"0125";
constant dato294: std_logic_vector(15 downto 0) := x"0126";
constant dato295: std_logic_vector(15 downto 0) := x"0127";
constant dato296: std_logic_vector(15 downto 0) := x"0128";
constant dato297: std_logic_vector(15 downto 0) := x"0129";
constant dato298: std_logic_vector(15 downto 0) := x"012A";
constant dato299: std_logic_vector(15 downto 0) := x"012B";
constant dato300: std_logic_vector(15 downto 0) := x"012C";
constant dato301: std_logic_vector(15 downto 0) := x"012D";
constant dato302: std_logic_vector(15 downto 0) := x"012E";
constant dato303: std_logic_vector(15 downto 0) := x"012F";
constant dato304: std_logic_vector(15 downto 0) := x"0130";
constant dato305: std_logic_vector(15 downto 0) := x"0131";
constant dato306: std_logic_vector(15 downto 0) := x"0132";
constant dato307: std_logic_vector(15 downto 0) := x"0133";
constant dato308: std_logic_vector(15 downto 0) := x"0134";
constant dato309: std_logic_vector(15 downto 0) := x"0135";
constant dato310: std_logic_vector(15 downto 0) := x"0136";
constant dato311: std_logic_vector(15 downto 0) := x"0137";
constant dato312: std_logic_vector(15 downto 0) := x"0138";
constant dato313: std_logic_vector(15 downto 0) := x"0139";
constant dato314: std_logic_vector(15 downto 0) := x"013A";
constant dato315: std_logic_vector(15 downto 0) := x"013B";
constant dato316: std_logic_vector(15 downto 0) := x"013C";
constant dato317: std_logic_vector(15 downto 0) := x"013D";
constant dato318: std_logic_vector(15 downto 0) := x"013E";
constant dato319: std_logic_vector(15 downto 0) := x"013F";
constant dato320: std_logic_vector(15 downto 0) := x"0140";
constant dato321: std_logic_vector(15 downto 0) := x"0141";
constant dato322: std_logic_vector(15 downto 0) := x"0142";
constant dato323: std_logic_vector(15 downto 0) := x"0143";
constant dato324: std_logic_vector(15 downto 0) := x"0144";
constant dato325: std_logic_vector(15 downto 0) := x"0145";
constant dato326: std_logic_vector(15 downto 0) := x"0146";
constant dato327: std_logic_vector(15 downto 0) := x"0147";
constant dato328: std_logic_vector(15 downto 0) := x"0148";
constant dato329: std_logic_vector(15 downto 0) := x"0149";
constant dato330: std_logic_vector(15 downto 0) := x"014A";
constant dato331: std_logic_vector(15 downto 0) := x"014B";
constant dato332: std_logic_vector(15 downto 0) := x"014C";
constant dato333: std_logic_vector(15 downto 0) := x"014D";
constant dato334: std_logic_vector(15 downto 0) := x"014E";
constant dato335: std_logic_vector(15 downto 0) := x"014F";
constant dato336: std_logic_vector(15 downto 0) := x"0150";
constant dato337: std_logic_vector(15 downto 0) := x"0151";
constant dato338: std_logic_vector(15 downto 0) := x"0152";
constant dato339: std_logic_vector(15 downto 0) := x"0153";
constant dato340: std_logic_vector(15 downto 0) := x"0154";
constant dato341: std_logic_vector(15 downto 0) := x"0155";
constant dato342: std_logic_vector(15 downto 0) := x"0156";
constant dato343: std_logic_vector(15 downto 0) := x"0157";
constant dato344: std_logic_vector(15 downto 0) := x"0158";
constant dato345: std_logic_vector(15 downto 0) := x"0159";
constant dato346: std_logic_vector(15 downto 0) := x"015A";
constant dato347: std_logic_vector(15 downto 0) := x"015B";
constant dato348: std_logic_vector(15 downto 0) := x"015C";
constant dato349: std_logic_vector(15 downto 0) := x"015D";
constant dato350: std_logic_vector(15 downto 0) := x"015E";
constant dato351: std_logic_vector(15 downto 0) := x"015F";
constant dato352: std_logic_vector(15 downto 0) := x"0160";
constant dato353: std_logic_vector(15 downto 0) := x"0161";
constant dato354: std_logic_vector(15 downto 0) := x"0162";
constant dato355: std_logic_vector(15 downto 0) := x"0163";
constant dato356: std_logic_vector(15 downto 0) := x"0164";
constant dato357: std_logic_vector(15 downto 0) := x"0165";
constant dato358: std_logic_vector(15 downto 0) := x"0166";
constant dato359: std_logic_vector(15 downto 0) := x"0167";
constant dato360: std_logic_vector(15 downto 0) := x"0168";
type rom_array is array (NATURAL range <>) of STD_LOGIC_VECTOR(15 downto 0);
constant rom: rom_array := (D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31,D32,
D33,D34,D35,D36,D37,D38,D39,D40,D41,D42,D43,D44,D45,D46,D47,D48,D49,D50,D51,D52,D53,D54,D55,D56,D57,D58,D59,D60,D61,D62,D63,D64,
D65,D66,D67,D68,D69,D70,D71,D72,D73,D74,D75,D76,D77,D78,D79,D80,D81,D82,D83,D84,D85,D86,D87,D88,D89,D90,D91,D92,D93,D94,D95,D96,
D97,D98,D99,D100,D101,D102,D103,D104,D105,D106,D107,D108,D109,D110,D111,D112,D113,D114,D115,D116,D117,D118,D119,D120,D121,D122,D123,D124,D125,D126,D127,D128,
D129,D130,D131,D132,D133,D134,D135,D136,D137,D138,D139,D140,D141,D142,D143,D144,D145,D146,D147,D148,D149,D150,D151,D152,D153,D154,D155,D156,D157,D158,D159,D160,
D161,D162,D163,D164,D165,D166,D167,D168,D169,D170,D171,D172,D173,D174,D175,D176,D177,D178,D179,D180,D181,D182,D183,D184,D185,D186,D187,D188,D189,D190,D191,D192,
D193,D194,D195,D196,D197,D198,D199,D200,D201,D202,D203,D204,D205,D206,D207,D208,D209,D210,D211,D212,D213,D214,D215,D216,D217,D218,D219,D220,D221,D222,D223,D224,
D225,D226,D227,D228,D229,D230,D231,D232,D233,D234,D235,D236,D237,D238,D239,D240,D241,D242,D243,D244,D245,D246,D247,D248,D249,D250,D251,D252,D253,D254,D255,D256,
D257,D258,D259,D260,D261,D262,D263,D264,D265,D266,D267,D268,D269,D270,D271,D272,D273,D274,D275,D276,D277,D278,D279,D280,D281,D282,D283,D284,D285,D286,D287,D288,
D289,D290,D291,D292,D293,D294,D295,D296,D297,D298,D299,D300,D301,D302,D303,D304,D305,D306,D307,D308,D309,D310,D311,D312,D313,D314,D315,D316,D317,D318,D319,D320,
D321,D322,D323,D324,D325,D326,D327,D328,D329,D330,D331,D332,D333,D334,D335,D336,D337,D338,D339,D340,D341,D342,D343,D344,D345,D346,D347,D348,D349,D350,D351,D352,
D353,D354,D355,D356,D357,D358,D359,D360,);
begin
process(clksen)
variable j: integer;
begin
if(rising_edge(clk)) then  j := conv_integer(dir);
dataout <= rom(j); 
j<= j+1
if(j=180) then
j<=0;
end if;
end if;
end process;
end Behavioral;
