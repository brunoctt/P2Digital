library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity comparador is
	port (
	clock, s1, s2, s3, s4		: in STD_LOGIC;
	sl, sh, ml, mh, hl, hh : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	fsl, fsh, fml, fmh, fhl, fhh  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	edicao: in std_logic;
	igual: out std_logic
	);
end comparador;	
architecture comparar of comparador is
signal pulso : std_logic := '0';
begin
	process (clock, edicao)
		begin				
			if edicao = '1' and pulso = '0' then
				if sl = fsl and sh = fsh and ml = fml and mh = fmh and hl = fhl and hh = fhh then
					igual <= '1';
					pulso <= '1';
				else 
					igual <= '0';
				end if;
			elsif edicao = '1' and pulso = '1' then	
				if s1 = '1' and s2 = '0' and s3 = '0' and s4 = '1' then
					igual <= '0';
					pulso <= '0';
				else
					igual <= '1';
					pulso <= '1';
				end if;
			else
				igual <= '0';
				pulso <= '0';
			end if;		
	end process;	
end comparar;