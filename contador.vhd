library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity contador is
	port (
	clock, reset, enable : in std_logic;
	q: out std_logic_vector (5 downto 0)
	);
end contador;	
architecture contar of contador is
begin
	process (clock, reset)
	variable contagemSL : integer range 9 downto 0;
	variable contagemSH : integer range 5 downto 0;
	variable contagemML : integer range 9 downto 0;
	variable contagemMH : integer range 5 downto 0;
	variable contagemHL : integer range 9 downto 0;
	variable contagemHH : integer range 2 downto 0;
	begin
		if clock'event and clock = '1'	then
			contagemSL := contagemSL + 1
			if contagemSL = 9 then
				contagemSH := contagemSH + 1
				contagemSL := 0
				if contagemSH
				
						
	
	
	
	
	
			-- 	if contagem /= 0 then
	-- 		contagem := 0;
	-- 	elsif clock'event and clock = '1' then
	-- 		if enable = '1' then 
	-- 			contagem := contagem + 1;
	-- 		end if;
	-- 		if reset = '1' then
	-- 			contagem := 0;
	-- 		end if;	
	-- 	end if;
	-- 	q <= conv_std_logic_vector (contagem, 6);
	-- end process;
end contar;