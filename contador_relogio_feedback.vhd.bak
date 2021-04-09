library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
 
entity contador_relogio is
    port (
    clock, ena	: in std_logic;
    sl			: out std_logic_vector (3 downto 0);
    sh			: out std_logic_vector (3 downto 0);
    ml			: out std_logic_vector (3 downto 0);
    mh			: out std_logic_vector (3 downto 0);
    hl			: out std_logic_vector (3 downto 0); 
    hh			: out std_logic_vector (3 downto 0)
    );
end contador_relogio;    
architecture contar of contador_relogio is
begin
    process (clock,ena)
    variable contagemSL : integer range 0 to 10;
    variable contagemSH : integer range 0 to 6;
	 variable contagemML : integer range 0 to 10 := 1;
	 variable contagemMH : integer range 0 to 6;
	 variable contagemHL : integer range 0 to 10;
	 variable contagemHH : integer range 0 to 2;
    begin
		if clock'event and clock = '1' and ena = '1' then     
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
		end if;
		sl <= conv_std_logic_vector(contagemSL, 4);
		sh <= conv_std_logic_vector(contagemSH, 4);
		ml <= conv_std_logic_vector(contagemML, 4);
		mh <= conv_std_logic_vector(contagemMH, 4);
		hl <= conv_std_logic_vector(contagemHL, 4);
		hh <= conv_std_logic_vector(contagemHH, 4);
    end process;
end contar;