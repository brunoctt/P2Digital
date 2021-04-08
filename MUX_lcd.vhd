library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY MUX_lcd IS --bloco para MUX dos botões no projeto
PORT(
		menu  			: IN std_logic_vector(1 downto 0);
	   clk				: IN STD_LOGIC;
		rw1, rs1, e1 : in STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data1  : in STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
		rw2, rs2, e2 : in STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data2  : in STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
		rw3, rs3, e3 : in STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data3  : in STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
		rwr, rsr, er : in STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_datar : in STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
		rw, rs, e : OUT STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
END MUX_lcd;

ARCHITECTURE beh OF MUX_lcd IS
 
TYPE control IS (jogo, resultado, ranking, seletor_nome);
 
 BEGIN
 
 PROCESS(clk)
 
 BEGIN
 
	if (clk'EVENT AND clk = '1') THEN
				
		CASE menu IS
		
			WHEN "00" =>  ---------- Modo relógio
				rw <= rwr; rs <= rsr; e <= er; 
				lcd_data <= lcd_datar;	
			
			WHEN "01" =>  ---------- Alarme 1
				rw <= rw1; rs <= rs1; e <= e1; 
				lcd_data <= lcd_data1;	

			WHEN "10" => ---------- Alarme 2
				rw <= rw2; rs <= rs2; e <= e2; 
				lcd_data <= lcd_data2;	
				  
			WHEN "11" => ---------- Alarme 3
				rw <= rw3; rs <= rs3; e <= e3; 
				lcd_data <= lcd_data3;	
				
			END CASE;
	end if;	
END PROCESS;
END BEH;
   
	
