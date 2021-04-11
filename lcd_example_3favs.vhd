--------------------------------------------------------------------------------
--
--   FileName:         lcd_example_3favs.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 6/13/2012 Scott Larson
--     Initial Public Release
--
--   Prints "123456789" on a HD44780 compatible 8-bit interface character LCD 
--   module using the lcd_controller_v2_1.vhd component.
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lcd_example_3favs IS
  PORT(
		contador1, contador2, contador3, contador4: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		contador5, contador6  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      clk, comparador, comparador2, comparador3    : IN  STD_LOGIC;  --system clock+
		menu						: in STD_LOGIC_VECTOR(1 DOWNTO 0);
      rw, rs, e : OUT STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
END lcd_example_3favs;

ARCHITECTURE behavior OF lcd_example_3favs IS
  SIGNAL   lcd_enable : STD_LOGIC;
  SIGNAL   lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL   lcd_busy   : STD_LOGIC;
  SIGNAL aux1, aux2, aux3, aux4, aux5, aux6: std_logic_vector(9 downto 0);
  COMPONENT lcd_controller_v2_1 IS
    PORT(
       clk        : IN  STD_LOGIC; --system clock
       reset_n    : IN  STD_LOGIC; --active low reinitializes lcd
       lcd_enable : IN  STD_LOGIC; --latches data into lcd controller
       lcd_bus    : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
       busy       : OUT STD_LOGIC; --lcd controller busy/idle feedback
       rw, rs, e  : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
       lcd_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
  END COMPONENT;
BEGIN

  --instantiate the lcd controller
  dut: lcd_controller_v2_1
    PORT MAP(clk => clk, reset_n => '1', lcd_enable => lcd_enable, lcd_bus => lcd_bus, 
             busy => lcd_busy, rw => rw, rs => rs, e => e, lcd_data => lcd_data);
  
  PROCESS(clk)
    VARIABLE char  :  INTEGER RANGE 0 TO 32 := 0;
	BEGIN
	------------------------------- concatenando vetores do contador para ficar no formato de dados do display
		aux1 <= "100011"&contador1;
		aux2 <= "100011"&contador2;
		aux3 <= "100011"&contador3;
		aux4 <= "100011"&contador4;
		aux5 <= "100011"&contador5;
		aux6 <= "100011"&contador6;

		
		
    IF(clk'EVENT AND clk = '1') THEN
		IF(lcd_busy = '0' AND lcd_enable = '0') THEN
			lcd_enable <= '1';
			IF(char < 33) THEN  -- contador para varrer casas do display
				char := char + 1;
			END IF;					
			if comparador = '1' or comparador2 = '1' or comparador3 = '1' then		-- caso de algum alarme ativado

					CASE char IS
						when 1 => lcd_bus <= "1001000001";  --A
						when 2 => lcd_bus <= "1001000011";  --C
						when 3 => lcd_bus <= "1001001111";  --O
						when 4 => lcd_bus <= "1001010010";  --R
						when 5 => lcd_bus <= "1001000100";  --D
						when 6 => lcd_bus <= "1001000001";  --A
						when 7 => lcd_bus <= "1000100000";  --ESPAÇO
						when 8 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1001010110";  --V 
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001010110";  --V 
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1001000010";  --B 
									end if;
						when 9 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1001001001";  --I
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001001001";  --I
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1001010010";  --R 
									end if;
						when 10 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1001000011"; --C
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001001110"; --N
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1001010101"; --U
									end if;
						when 11 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1001010100"; --T
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001001001"; --I
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1001001110"; --N
									end if;
						when 12 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1001001111"; --O
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001000011"; --C
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1001001111"; --O
									end if;
						when 13 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1001010010"; --R
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001001001"; --I
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1000100000"; --ESPAÇO
									end if;
						when 14 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1000100000"; --ESPAÇO
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001010101"; --U
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1000100000"; --ESPAÇO
									end if;
						when 15 => if comparador = '0' and comparador2 = '1' and comparador3 = '0' then
											lcd_bus <= "1000100000"; --ESPAÇO
									elsif comparador = '0' and comparador2 = '0' and comparador3 = '1' then
											lcd_bus <= "1001010011"; --S
									elsif comparador = '1' and comparador2 = '0' and comparador3 = '0' then
											lcd_bus <= "1000100000"; --ESPAÇO
									end if;
						when 16 => lcd_bus <= "0011010000"; --QUEBRA DE LINHA
						WHEN 17 => lcd_bus <= aux6;	-- HH
						WHEN 18 => lcd_bus <= aux5;	--HL
						WHEN 19 => lcd_bus <= "1000111010";	--:
						WHEN 20 => lcd_bus <= aux4;	--MH
						WHEN 21 => lcd_bus <= aux3;	--ML
						WHEN 22 => lcd_bus <= "1000111010";  --:
						WHEN 23 => lcd_bus <= aux2;	--SH
						WHEN 24 => lcd_bus <= aux1;	--SL
						WHEN OTHERS => lcd_bus <= "0010000000";
											 char:= 0;		
					end case;

			else  -- caso padrão do relógio

					CASE char IS
						when 1 => lcd_bus <= "1001010000";  --P
						when 2 => lcd_bus <= "1001010010";  --R
						when 3 => lcd_bus <= "1001001111";  --O
						when 4 => lcd_bus <= "1001001010";  --J
						when 5 => lcd_bus <= "1001000101";  --E
						when 6 => lcd_bus <= "1001010100";  --T
						when 7 => lcd_bus <= "1001001111";  --O
						when 8 => lcd_bus <= "1000100000";  --ESPAÇO 
						when 9 => lcd_bus <= "1001010010";  --R
						when 10 => lcd_bus <= "1001000101"; --E
						when 11 => lcd_bus <= "1001001100"; --L
						when 12 => lcd_bus <= "1001001111"; --O
						when 13 => lcd_bus <= "1001000111"; --G
						when 14 => lcd_bus <= "1001001001"; --I
						when 15 => lcd_bus <= "1001001111"; --O
						when 16 => lcd_bus <= "0011000000"; --QUEBRA DE LINHA
						WHEN 17 => lcd_bus <= aux6;	-- HH
						WHEN 18 => lcd_bus <= aux5;	--HL
						WHEN 19 => lcd_bus <= "1000111010";	--:
						WHEN 20 => lcd_bus <= aux4;	--MH
						WHEN 21 => lcd_bus <= aux3;	--ML
						WHEN 22 => lcd_bus <= "1000111010";  --:
						WHEN 23 => lcd_bus <= aux2;	--SH
						WHEN 24 => lcd_bus <= aux1;	--SL
						WHEN OTHERS => lcd_bus <= "0010000000";
											 char:= 0;		  					
					END CASE;
					
			end if;
      ELSE
        lcd_enable <= '0';
      END IF;
    END IF;
  END PROCESS;
  
END behavior;