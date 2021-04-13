library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity comparador_vinicius is
	port (
	clock, s1, s2, s3, s4		: in STD_LOGIC;
	sl, sh, ml, mh, hl, hh : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	fsl, fsh, fml, fmh, fhl, fhh  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	edicao: in std_logic;
	igual: buffer std_logic
	);
end comparador_vinicius;	
architecture comparar of comparador_vinicius is
signal aux 	: std_logic := '0';
signal aux1 : std_logic := '0';
signal aux2 : std_logic := '0';
signal aux3 : std_logic := '0';
signal aux4 : std_logic := '0';

begin
	process (clock, edicao)
		begin				
			if edicao = '1' and igual = '1' then  -- confirma se o alarme n está sendo modificado
			--------------------------------------------------------------------------------------- comparação valor alarme com relogio
				if sl = fsl and sh = fsh and ml = fml and mh = fmh and hl = fhl and hh = fhh then
					igual <= '0';
				else 
					igual <= '1';
				end if;
			elsif edicao = '1' and igual = '0' then
			------------------------------------------------------------------- checando senhas	na ordem		 and espera = 100000
				if s2'event and s2 = '0' then
					aux2 <= not aux2;
				else
					igual <= '0';
				end if;
				if s1'event and s1 = '0' and aux2 = '1' then
					aux1 <= not aux1;
				else
					igual <= '0';
				end if;
				if s3'event and s3 = '0' and aux1 = '1' and aux2 = '1' then
					aux3 <= not aux3;				
				else
					igual <= '0';
				end if;	
				if s4'event and s4 = '0' and aux1 = '1' and aux2 = '1' and aux3 = '1' then
					aux4 <= not aux4;
				else
					igual <= '0';
				end if;
				if aux1 = '1' and aux2 = '1' and aux3 = '1' and aux4 = '1' then
					igual <= '1';
					aux1 <= not aux1;
					aux2 <= not aux2;
					aux3 <= not aux3;
					aux4 <= not aux4;
				else
					igual <= '0';
				end if;
				
			else
				igual <= '1';
			end if;
	end process;	
end comparar;