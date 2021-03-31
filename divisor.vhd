library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity divisor is
    Port ( clk   : in  std_logic;     -- input bin
           clock1s : out std_logic          -- output 7seg ABCDEFG
	  );
end divisor;

architecture Behavioral of divisor is
signal aux: std_logic;
signal cont: integer range 0 to 50000000;
begin

process(clk) -- Divisor do sinal de clock da placa(50Mhz)
begin
	if rising_edge(clk) then
		cont<=cont+1;
		if cont=(25000000) then
			cont<=0;
			aux<= not aux;
		end if;
	end if;
end process;

clock1s<=aux;

end Behavioral;