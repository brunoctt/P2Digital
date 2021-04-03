library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
 
entity contador_relogio is
    port (
    clock		: in std_logic;
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
    process (clock)
    
    variable contagemSL : integer range 15 downto 0;
    variable contagemSH : integer range 15 downto 0;
	 variable contagemML : integer range 15 downto 0;
	 variable contagemMH : integer range 15 downto 0;
	 variable contagemHL : integer range 15 downto 0;
	 variable contagemHH : integer range 15 downto 0;
    begin
		if clock'event and clock = '1'    then     
           contagemSL := contagemSL + 1;
            if contagemSL = 9 then
                contagemSL := 0;
                contagemSH := contagemSH + 1;                
                    if contagemSH = 5 and contagemSL = 9 then
                       contagemSH := 0;
                       contagemML := contagemML +1;
                       if contagemML = 9 then
                           contagemML := 0; 
                           contagemMH := contagemMH + 1;
                           if contagemMH = 5 and contagemML = 9 then
                              contagemMH := 0;
                              contagemHL := contagemHL + 1;
                               if contagemHL = 9 then
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
            if contagemMH = 5 and contagemML = 9 then
                contagemMH := 0;
                contagemML := 1;
          end if;
            if contagemSH = 5 and contagemSL = 9 then
                contagemSH := 0; 
                contagemSL := 0;
           end if;
end if;
sl <= conv_std_logic_vector (contagemSL, 4);
sh <= conv_std_logic_vector (contagemSH, 4);
ml <= conv_std_logic_vector (contagemML, 4);
mh <= conv_std_logic_vector (contagemMH, 4);
hl <= conv_std_logic_vector (contagemHL, 4);
hh <= conv_std_logic_vector (contagemHH, 4);
    end process;
end contar;