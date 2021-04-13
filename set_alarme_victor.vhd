library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity set_alarme_victor is
	port (
	clock, sw2, s3, s4		: in STD_LOGIC;
	menu 							: in STD_LOGIC_vector(1 downto 0);
	fsl, fsh, fml, fmh, fhl, fhh  : out STD_LOGIC_VECTOR(3 DOWNTO 0); -- saídas com o valor do alarme setado
	edicao: out std_logic
	);
end set_alarme_victor;	
architecture seta of set_alarme_victor is
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
	if sw2 = '0' and menu = "10" then -- confirmação se está no modo de ajuste e alarme de victor
		edicao <= '0'; -- sinal para travar o comparador do alarme
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
		edicao <= '1'; -- caso não esteja modificando, pode acionar o alarme
		digito := 0;	-- caso pare de editar, o cursor volta para o segundo
	end if;
	fsl <= conv_std_logic_vector (sl, 4);
	fsh <= conv_std_logic_vector (sh, 4);
	fml <= conv_std_logic_vector (ml, 4);
	fmh <= conv_std_logic_vector (mh, 4);
	fhl <= conv_std_logic_vector (hl, 4);
	fhh <= conv_std_logic_vector (hh, 4);
	end process;
end seta;
	