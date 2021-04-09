library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
 
entity contador_relogio_feedback is
    port (
    clock, ena	: in std_logic;
	 lsl, lsh, lml, lmh, lhl, lhh  : in STD_LOGIC_VECTOR(3 DOWNTO 0);
    sl			: out std_logic_vector (3 downto 0);
    sh			: out std_logic_vector (3 downto 0);
    ml			: out std_logic_vector (3 downto 0);
    mh			: out std_logic_vector (3 downto 0);
    hl			: out std_logic_vector (3 downto 0); 
    hh			: out std_logic_vector (3 downto 0)
    );
end contador_relogio_feedback;    
architecture contar of contador_relogio_feedback is
begin
    process (clock,ena)
    variable contagemSL : integer range 0 to 10;
    variable contagemSH : integer range 0 to 6;
	 variable contagemML : integer range 0 to 10 := 1;
	 variable contagemMH : integer range 0 to 6;
	 variable contagemHL : integer range 0 to 10;
	 variable contagemHH : integer range 0 to 2;
    begin
		if clock'event and clock = '1' then
-------------------------------------- caso de contagem normal			
			if ena = '1' then		-- n há sinal de load
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
-------------------------------------- caso de load	
			else
				contagemSL := to_integer(unsigned(lsl));
				contagemSH := to_integer(unsigned(lsh));
				contagemML := to_integer(unsigned(lml));
				contagemMH := to_integer(unsigned(lmh));
				contagemHL := to_integer(unsigned(lhl));
				contagemHH := to_integer(unsigned(lhh));
			end if;
		end if;	
		sl <= std_logic_vector(to_unsigned(contagemSL, 4));
		sh <= std_logic_vector(to_unsigned(contagemSH, 4));
		ml <= std_logic_vector(to_unsigned(contagemML, 4));
		mh <= std_logic_vector(to_unsigned(contagemMH, 4));
		hl <= std_logic_vector(to_unsigned(contagemHL, 4));
		hh <= std_logic_vector(to_unsigned(contagemHH, 4));
    end process;
end contar;