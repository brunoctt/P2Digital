library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity alarme3 is
	port (
	clock, s1, s2, s3, s4		: in STD_LOGIC;
	sl, sh, ml, mh, hl, hh : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--	fsl, fsh, fml, fmh, fhl, fhh  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	edicao: in std_logic;
	igual			: buffer std_logic := '0' 
--	led1, led2, led3, led4: out std_logic
	);
end alarme3;	
architecture comparar of alarme3 is
signal pulso: std_logic := '0';
signal aux 	: std_logic := '0';
signal aux1 : std_logic := '0';
signal aux2 : std_logic := '0';
signal aux3 : std_logic := '0';
signal aux4 : std_logic := '0';
begin
	process (clock, edicao)
		begin				
			if edicao = '1' and igual = '0' then
				if sl = "0000" and sh = "0000" and ml = "0101" and mh = "0000" and hl = "0000" and hh = "0000" then
					igual <= '1';
				else 
					igual <= '0';
				end if;
			elsif edicao = '1' and igual = '1' then	
			
				if s4'event and s4 = '0' then
					aux4 <= not aux4;
				else
					igual <= '1';
				end if;
				if s3'event and s3 = '0' and aux4 = '1' then
					aux3 <= not aux3;
				else
					igual <= '1';
				end if;
				if s2'event and s2 = '0' and aux4 = '1' and aux3 = '1' then
					aux2 <= not aux2;				
				else
					igual <= '1';
				end if;	
				if s1'event and s1 = '0' and aux4 = '1' and aux2 = '1' and aux3 = '1' then
					aux1 <= not aux1;
				else
					igual <= '1';
				end if;
				if aux1 = '1' and aux2 = '1' and aux3 = '1' and aux4 = '1' then
					igual <= '0';
				else
					igual <= '1';
				end if;
				
		else
			igual <= '0';
		end if;
		
	end process;	
end comparar;