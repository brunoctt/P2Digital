library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity seteseg is
port(
	clock		: in std_logic;
	sl, sh	: in std_logic_vector(3 downto 0);
	ml, mh	: in std_logic_vector(3 downto 0); 
	saida		: out std_logic_vector(6 downto 0);
	dig		: out std_logic_vector(3 downto 0)
);
end seteseg;
architecture behavior of seteseg is
signal digito : integer range 0 to 3;
signal aux 	  : std_logic_vector(3 downto 0);
begin
	process(clock)
	variable counter : integer range 0 to 50000;
	begin
		if clock'event and clock='1' then
			if counter = 50000 then
				counter := 0;
				if digito = 3 then
					digito <= 0;
				else
					digito <= digito + 1;
				end if;
			else
				counter := counter + 1;
			end if;
		end if;
--	with digito select
--		dig <="0111" WHEN 0;
--				"1011" WHEN 1;
--				"1101" WHEN 2;
--				"1110" WHEN 3;
--				"1111" WHEN OTHERS;
	case digito is
		when 0 => dig <= "0111"; aux <= sl;
		when 1 => dig <= "1011"; aux <= sh;
		when 2 => dig <= "1101"; aux <= ml;
		when 3 => dig <= "1110"; aux <= mh;
	end CASE;
	with aux select
		saida <= "0000001" when "0000";
					"1001111" when "0001";
					"0010010" when "0010";
					"0000110" when "0011";
					"1001100" when "0100";
					"0100100" when "0101";
					"1100000" when "0110";
					"0001111" when "0111";
					"0000000" when "1000";
					"0001100" when "1001";
	end process;
end behavior;