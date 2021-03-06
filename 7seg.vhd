library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity 7seg is
port(
	clock		: in std_logic;
	saida		: out std_logic_vector(0 downto 6);
	dig		: out std_logic_vector(3 downto 0)
);
end 7seg;
architecture behavior of 7seg is
signal digito : integer range 0 to 3;
begin
	process(clock)
	variable counter : integer range 0 to 50000;
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
	end process;
	case digito is
		when 0 =>
			dig = "0111";
		when 1=>
			dig = "1011";
		when 2 =>
			dig = "1101";
		when 3=>
			dig = "1110";
	end case;
	saida <= "1001111";
end behavior;