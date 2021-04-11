library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;


entity set_hora is
	port (
	clock, sw2, s3, s4				: in STD_LOGIC;
	menu 									: in STD_LOGIC_vector(1 downto 0);
	slr, shr, mlr, mhr, hlr, hhr	: IN std_logic_vector(3 DOWNTO 0); -- contador do relogio
	lsl, lsh, lml, lmh, lhl, lhh  : out STD_LOGIC_VECTOR(3 DOWNTO 0) -- saídas com o valor do alarme setado
	);
end set_hora;	
architecture seta of set_hora is
signal sl	: integer range 0 to 9 := 0;
signal sh	: integer range 0 to 5 := 0;
signal ml	: integer range 0 to 9 := 0;
signal mh	: integer range 0 to 5 := 0;
signal hl	: integer range 0 to 9 := 0;
signal hh	: integer range 0 to 2 := 0;
begin
	process (clock, s3, s4)
	variable digito : integer range 0 to 5 := 0;
	begin
	if sw2 = '0' and menu = "00" then -- confirmação se está no modo de ajuste e no relogio
-------------------------------------------- implementação de contador para alternar entre os dígitos a serem modificados		
		if s3'event and s3 = '0' then
			if digito = 5 then
				digito := 0;
			else
				digito := digito + 1;
			end if;
		end if;
-------------------------------------------- modificação do valor do alarme, de acordo com o dígito atual
		if s4'event and s4 = '0' then
			case digito is
				when 0 => 
					if sl = 9 then
						sl <= 0;
					else
						sl <= sl + 1;
					end if;
				when 1 => 
					if sh = 5 then
						sh <= 0;
					else
						sh <= sh + 1;
					end if;
				when 2 => 
					if ml = 9 then
						ml <= 0;
					else
						ml <= ml + 1;
					end if;
				when 3 => 
					if mh = 5 then
						mh <= 0;
					else
						mh <= mh + 1;
					end if;
				when 4 => 
					if hh = 2 then
						if hl = 3 then
							hl <= 0;
						else
							hl <= hl + 1;
						end if;
					else
						if hl = 9 then
							hl <= 0;
						else
							hl <= hl + 1;
						end if;
					end if;
				when 5 => 
					if hh = 2 then
						hh <= 0;
					elsif hl > 3 and hh = 1 then
						hh <= 0;
					else
						hh <= hh + 1;
					end if;
			end case;
		end if;
	else
		sl <= to_integer(unsigned(slr));
		sh <= to_integer(unsigned(shr));
		ml <= to_integer(unsigned(mlr));
		mh <= to_integer(unsigned(mhr));
		hl <= to_integer(unsigned(hlr));
		hh <= to_integer(unsigned(hhr));
	end if;
	lsl <= std_logic_vector(to_unsigned(sl, 4));
	lsh <= std_logic_vector(to_unsigned(sh, 4));
	lml <= std_logic_vector(to_unsigned(ml, 4));
	lmh <= std_logic_vector(to_unsigned(mh, 4));
	lhl <= std_logic_vector(to_unsigned(hl, 4));
	lhh <= std_logic_vector(to_unsigned(hh, 4));
	end process;
end seta;
	