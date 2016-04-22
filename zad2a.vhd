-----------------------------------------------
-- RC10TESTER
-----------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity RC10TESTER is
    port (UP: in bit;
          CLK: in std_logic;--RS_CE_UP pouzijeme podla zadania pre signal Reset alebo CountEnable alebo UP												
          ST_MAX, C_MIN, OUT1, OUT2: out bit;--ST_MAX pouzijeme na vystup signalu Sticked alebo Max, C_MIN na Carry prenos alebo MIN											--OUT1 ma hodnotu prveho vstupneho signalu - pripojime na LED aby sme videli ako je signal nastaveny, podobne OUT2
          OUTPUTdisplay1, OUTPUTdisplay2: out bit_vector(6 downto 0));
end RC10TESTER;

architecture Structure of RC10TESTER is

component Pocitadlo14 is
  port (UP:in Bit;
		Clock:in std_logic;
		Cislo:out Bit_Vector(0 to 3);
		MIN:out Bit;
		MAX:out Bit);
end component;

component Driver is
    port (INPUT: in bit_vector(3 downto 0);
          Q1: out bit_vector(6 downto 0);
          Q2: out bit_vector(6 downto 0));
end component;

component POM
    port (C: in bit; Q: out bit);
end component;



signal INTERNAL: bit_vector(3 downto 0);
signal sUP: bit;
begin

c1:Pocitadlo14 port map(sUP, CLK, INTERNAL(3 downto 0), C_MIN,ST_MAX);
c2:Driver port map (INTERNAL, OUTPUTdisplay2, OUTPUTdisplay1);
p1:POM port map (UP, sUP);

OUT1 <= sUP;

end Structure;
-----------------------------------------------
-- POM
-----------------------------------------------
entity POM is
	port (C:in bit; Q:out bit);
end POM;

architecture Spravanie of POM is
	signal P: bit:= '0';
begin
P1: process (C)
	begin
		if (C'event and C = '1') then
			P <=  not P;
		end if;
	end process;
	Q <= P;
end Spravanie;


--------------------------------------------------------------
-- *********************|  DRIVER |***************************
--------------------------------------------------------------

entity Driver is
Port (INPUT: in bit_vector(3 downto 0);
      Q1: out bit_vector(6 downto 0);
      Q2: out bit_vector(6 downto 0));
end Driver;

architecture Behavior of Driver is
begin
process(INPUT) is
begin
    case INPUT is
        when "0000" => Q1 <= "0111111";Q2<="0111111";
        when "0001" => Q1 <= "0000110";Q2<="0111111";
        when "0010" => Q1 <= "1011011";Q2<="0111111";
        when "0011" => Q1 <= "1001111";Q2<="0111111";
        when "0100" => Q1 <= "1100110";Q2<="0111111";
        when "0101" => Q1 <= "1101101";Q2<="0111111";
        when "0110" => Q1 <= "1111101";Q2<="0111111";
        when "0111" => Q1 <= "0000111";Q2<="0111111";
        when "1000" => Q1 <= "1111111";Q2<="0111111";
        when "1001" => Q1 <= "1101111";Q2<="0111111";
        when "1010" => Q1 <= "0111111";Q2<="0000110";
        when "1011" => Q1 <= "0000110";Q2<="0000110";
        when "1100" => Q1 <= "1011011";Q2<="0000110";
        when "1101" => Q1 <= "1001111";Q2<="0000110";
        when "1110" => Q1 <= "1100110";Q2<="0000110";
        when "1111" => Q1 <= "1101101";Q2<="0000110";
    end case;
end process; 
end;



---------------------------------------------------------
entity OR4 is
  port (In1:in Bit; In2:in Bit; In3:in Bit; In4:in Bit;
        Out1:out Bit);
end OR4;

architecture S_OR4 of OR4 is
begin
  Out1 <= In1 or In2 or In3 or In4;
end S_OR4;
---------------------------------------------------------
entity OR3 is
  port (In1:in Bit; In2:in Bit; In3:in Bit; 
        Out1:out Bit);
end OR3;

architecture S_OR3 of OR3 is
begin
  Out1 <= In1 or In2 or In3;
end S_OR3;
---------------------------------------------------------

entity OR2 is
  port (In1:in Bit; In2:in Bit; 
        Out1:out Bit);
end OR2;

architecture S_OR2 of OR2 is
begin
  Out1 <= In1 or In2; 
end S_OR2;
---------------------------------------------------------
entity AND4 is
  port (In1:in Bit; In2:in Bit; In3:in Bit; In4:in Bit;
        Out1:out Bit);
end AND4;

architecture S_AND4 of AND4 is
begin
  Out1 <= In1 and In2 and In3 and In4;
end S_AND4;
---------------------------------------------------------

entity AND3 is
  port (In1:in Bit; In2:in Bit; In3:in Bit; 
        Out1:out Bit);
end AND3;

architecture S_AND3 of AND3 is
begin
  Out1 <= In1 and In2 and In3; 
end S_AND3;
---------------------------------------------------------

entity AND2 is
  port (In1:in Bit; In2:in Bit; 
        Out1:out Bit);
end AND2;

architecture S_AND2 of AND2 is
begin
  Out1 <= In1 and In2;
end S_AND2;
---------------------------------------------------------

entity NOT1 is 
  port (In1:in Bit; 
        Out1:out Bit);
end NOT1;

architecture S_NOT of NOT1 is
begin
  Out1 <= not(In1);
end S_NOT;

----------------------------------------------------------
 -- JK 
 ---------------------------------------------------------
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity JK_nabezna is
   port( J,K: in  Bit;
         Clock: in std_logic;
         Output: out Bit);
end JK_nabezna;

architecture Behavioral of JK_nabezna is
   signal temp: Bit ;
begin
   process (Clock) 
   begin
      if rising_edge(Clock) then                 
            if (J='0' and K='0') then
               temp <= temp;
            elsif (J='0' and K='1') then
               temp <= '0';
            elsif (J='1' and K='0') then
               temp <= '1';
            elsif (J='1' and K='1') then
               temp <= not (temp);
            end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;

----------------------------------------------------------
--Pocitadlo
----------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Pocitadlo14 is
  port (UP:in Bit;
		Clock:in std_logic;
		Cislo:out Bit_Vector(0 to 3);
		MIN:out Bit;
		MAX:out Bit);
end Pocitadlo14;

architecture Strukt_Pocitadlo14 of Pocitadlo14 is

	component NOT1 is 
	  port (In1:in Bit; 
			Out1:out Bit);
	end component;

	component AND4 is
	  port (In1:in Bit; In2:in Bit; In3:in Bit; In4:in Bit;
			Out1:out Bit);
	end component;

	component AND3 is
	  port (In1:in Bit; In2:in Bit; In3:in Bit; 
			Out1:out Bit);
	end component;

	component AND2 is
	  port (In1:in Bit; In2:in Bit; 
			Out1:out Bit);
	end component;

	component OR4 is
	  port (In1:in Bit; In2:in Bit; In3:in Bit; In4:in Bit;
			Out1:out Bit);
	end component;

	component OR3 is
	  port (In1:in Bit; In2:in Bit; In3:in Bit; 
			Out1:out Bit);
	end component;

	component OR2 is
	  port (In1:in Bit; In2:in Bit; 
			Out1:out Bit);
	end component;

	component JK_nabezna is
	   port( J,K: in  Bit;
			 Clock: in std_logic;
			 Output: out Bit);
	end component;

	signal z1,z2,z3,z4:Bit;
	signal nz1,nz2,nz3,nz4,nUP:Bit;
	signal J1_0,J1_1,J1_2,J1_3,J1_4:Bit;
	signal J2_0,J2_1,J2_2,J2_3,J2_4,K2_0,K2_1,K2_2:Bit;
	signal J3_0,J3_1,J3_2,K3_0,K3_1,K3_2:Bit;
	signal J4_0,K4_0:Bit;


begin
    
	notUP: NOT1
			port map (UP, nUP);
	--------------------------------        
	JK1:	JK_nabezna
		port map(J1_0,z1,clock,z1);
		
	JK2:	JK_nabezna
		port map(J2_0,K2_0,clock,z2);
		
	JK3:	JK_nabezna
		port map(J3_0,K3_0,clock,z3);
		
	JK4:	JK_nabezna
		port map(J4_0,K4_0,clock,z4);
	--------------------------------        
	notZ1: NOT1
			port map (z1, nz1);
	notZ2: NOT1
			port map (z2, nz2);
	notZ3: NOT1
			port map (z3, nz3);
	notZ4: NOT1
			port map (z4, nz4);
	----------------------------------	
	iJ1_1: AND2
			port map (nup, Z2, J1_1);
	iJ1_2: AND2	
			port map (z3, nz2, J1_2);
	iJ1_3: AND2 
			port map (z4, nz3, J1_3);
	iJ1_4: AND2
			port map (up, nz4, J1_4);
	iJ1_0: OR4
			port map (J1_1, J1_2, J1_3, J1_4, J1_0);
	----------------------------------
	iJ2_1: AND2
		port map(up, z1,J2_1);
	iJ2_2: AND3
		port map(nUP,z3,nz1,J2_2);	
	iJ2_3: AND3
		port map(nUP,z4,nz1,J2_3);
	iJ2_0: OR3
		port map(J2_1,J2_2,J2_3,J2_0);
	------------
	iK2_1: AND2
		port map(UP,z1,K2_1);	
	iK2_2: AND2
		port map(nUP,nz1,K2_2);	
	iK2_0: OR2
		port map(K2_1,K2_2,K2_0);	
	----------------------------------
	iJ3_1: AND3
		port map(up,z2,z1,J3_1);
	iJ3_2: AND4
		port map(nup,z4,nz2,nz1,J3_2);
	iJ3_0: OR2
		port map(J3_1,J3_2,J3_0);
	------------
	iK3_1: AND3
		port map(up,z2,z1,K3_1);
	iK3_2: AND3
		port map(nup,nz2,nz1,K3_2);
	iK3_0: OR2
		port map(K3_1,K3_2,K3_0);
	---------------------------------
	iJ4_0: AND4
		port map(up,z3,z2,z1,J4_0);
	------------
	iK4_0: AND4
		port map(nup,nz3,nz2,nz1,K4_0);
	---------------------------------
	iMIN: AND4
	  port map (nz4,nz3,nz2,nz1,MIN);
	iMAX: AND4
	  port map (z4,z3,z2,nz1,MAX);
	  
	cislo <= (z4,z3,z2,z1);

end Strukt_Pocitadlo14;


entity testPocitadla is 
end testPocitadla; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

architecture spr_testPocitadla of testPocitadla is

component Pocitadlo14 is
  port (UP:in Bit;
		Clock:in std_logic;
		Cislo:out Bit_Vector(0 to 3);
		MIN:out Bit;
		MAX:out Bit);
end component;

signal clk : std_logic := '0'; 
signal number: Bit_Vector(0 to 3):= ('0','0','0','0');
signal up,tmin,tmax: Bit :='1';
signal s_tmin,s_tmax: Bit :='1';
signal S_number: Bit_vector(0 to 3):= ('0','0','0','0');

for test: pocitadlo14 use entity Work.pocitadlo14(Strukt_Pocitadlo14);
for test2: pocitadlo14 use entity Work.pocitadlo14(Spravanie_Pocitadlo14);

begin

CLOCK:
clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1';
        
GENERATOR_cifra1: up <= '1' after 0 ns, 
						'0' after 300 ns;
   
test: Pocitadlo14 port map (up,clk,number,TMIN,TMAX);
test2: Pocitadlo14 port map (up,clk,S_number,S_TMIN,S_TMAX);

end spr_testPocitadla;
