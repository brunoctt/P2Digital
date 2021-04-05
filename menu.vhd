library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_arith.all;

entity menu is
    Port ( clk2s, sw1   : in  std_logic;     -- recebe clock de 2s, switch 1 para detectar menu
				home			: out std_logic_vector(1 downto 0)          -- em qual posição do menu esta
	  );
end menu;

architecture Behavior of menu is
signal aux: integer range 0 to 4 := 0;
begin
	process(clk2s, sw1) -- Divisor do sinal de clock da placa(50Mhz)
	begin
		if rising_edge(clk2s) and sw1 = '0' then
			aux <= aux + 1;
			if aux = 4 then
				aux<= 0;
			end if;
		end if;
	end process;

	home <= conv_std_logic_vector(aux, 2);

end Behavior;