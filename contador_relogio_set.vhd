library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
 
entity contador_relogio_set is
    port (
    clock, sw2, s3, s4	: in std_logic;
	 menu						: in STD_LOGIC_VECTOR(1 DOWNTO 0); 	-- entradas com o valor do relogio setado
    sl						: out std_logic_vector (3 downto 0);
    sh						: out std_logic_vector (3 downto 0);
    ml						: out std_logic_vector (3 downto 0);
    mh						: out std_logic_vector (3 downto 0);
    hl						: out std_logic_vector (3 downto 0); 
    hh						: out std_logic_vector (3 downto 0)
    );
end contador_relogio_set;    
architecture contar of contador_relogio_set is
begin
    process (clock,s3,s4)
    variable contagemSL : integer range 0 to 10;
    variable contagemSH : integer range 0 to 6;
	 variable contagemML : integer range 0 to 10 := 1;
	 variable contagemMH : integer range 0 to 6;
	 variable contagemHL : integer range 0 to 10;
	 variable contagemHH : integer range 0 to 2;
	 variable digito : integer range 0 to 5 := 0;
    begin
	 ----------------------------------------------------------- contador do relógio
		if clock'event and clock = '1' and sw2 = '1' then     
           contagemSL := contagemSL + 1;
            if contagemSL = 10 then
                contagemSL := 0;
                contagemSH := contagemSH + 1;                
                    if contagemSH = 6 and contagemSL = 0 then
                       contagemSH := 0;
                       contagemML := contagemML + 1;
                       if contagemML = 10 then
                           contagemML := 0; 
                           contagemMH := contagemMH + 1;
                           if contagemMH = 6 and contagemML = 0 then
                              contagemMH := 0;
                              contagemHL := contagemHL + 1;
                               if contagemHL = 10 then
                                  contagemHL := 0;
                                  contagemHH := contagemHH + 1;
                              end if;
                         end if;
                      end if;
                   end if;
                 end if;
            if contagemHH = 2  and contagemHL  = 4 then
                contagemHH := 0;
                contagemHL := 0;
           end if;
	-------------------------------------------------------------- modo de modificação da hoira
		elsif clock'event and clock = '1' and sw2 = '0' and menu = "00" then 
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
						if contagemSL = 9 then
							contagemSL := 0;
						else
							contagemSL := contagemSL + 1;
						end if;
					when 1 => 
						if contagemSH = 5 then
							contagemSH := 0;
						else
							contagemSH := contagemSH + 1;
						end if;
					when 2 => 
						if contagemML = 9 then
							contagemML := 0;
						else
							contagemML := contagemML + 1;
						end if;
					when 3 => 
						if contagemMH = 5 then
							contagemMH := 0;
						else
							contagemMH := contagemMH + 1;
						end if;
					when 4 => 
						if contagemHH = 2 then
							if contagemHL = 3 then
								contagemHL := 0;
							else
								contagemHL := contagemHL + 1;
							end if;
						else
							if contagemHL = 9 then
								contagemHL := 0;
							else
								contagemHL := contagemHL + 1;
							end if;
						end if;
					when 5 => 
						if contagemHH = 2 then
							contagemHH := 0;
						elsif contagemHL > 3 and contagemHH = 1 then
							contagemHH := 0;
						else
							contagemHH := contagemHH + 1;
						end if;
				end case;
			end if;
		end if;	
--			end if;
		sl <= std_logic_vector(to_unsigned(contagemSL, 4));
		sh <= std_logic_vector(to_unsigned(contagemSH, 4));
		ml <= std_logic_vector(to_unsigned(contagemML, 4));
		mh <= std_logic_vector(to_unsigned(contagemMH, 4));
		hl <= std_logic_vector(to_unsigned(contagemHL, 4));
		hh <= std_logic_vector(to_unsigned(contagemHH, 4));
    end process;
end contar;