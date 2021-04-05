library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity comparadorpre is
	port (
	clock, s1, s2, s3, s4		: in STD_LOGIC;
	sl, sh, ml, mh, hl, hh : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--	fsl, fsh, fml, fmh, fhl, fhh  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	edicao: in std_logic;
	igual: out std_logic
	);
end comparadorpre;	
architecture comparar of comparadorpre is
signal pulso, aux1, aux2, aux3, aux4 : std_logic := '0';
begin
	process (clock, edicao)
		begin				
			if edicao = '1' and pulso = '0' then
				if sl = "0000" and sh = "0000" and ml = "0010" and mh = "0000" and hl = "0000" and hh = "0000" then
					igual <= '1';
					pulso <= '1';
				else 
					igual <= '0';
					pulso <= '0';
				end if;
			elsif edicao = '1' and pulso = '1' then	
--				if s1'event and s1 = '0' then
--					aux1 <= not aux1;
--					if s2'event and s2 = '0' then
--						aux2 <= not aux2;
--						if s3'event and s3 = '0' then
--							aux3 <= not aux3;
--							if s4'event and s4 = '0' then
--								aux4 <= not aux4;
--							end if;
--						end if;
--					end if;
--				end if;
--				if aux1 = '1' and aux1 = '1' and aux1 = '1' and aux1 = '1' then
--					igual <= '0';
--					pulso <= '0';
--				else
--					igual <= '1';
--					pulso <= '1';
--				end if;	
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