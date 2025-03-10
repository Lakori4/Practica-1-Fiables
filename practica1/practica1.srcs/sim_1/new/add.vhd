--------------------------------------------------
-- AND gate (ESD book figure 2.3)		
-- two descriptions provided
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity add is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end add;  

--------------------------------------------------

architecture behav1 of add is
begin

    process(x, y)
    begin
        -- compare to truth table
        if ((x='1') and (y='1')) then
	    F <= '1';
	else
	    F <= '0';
	end if;
    end process;

end behav1;

architecture behav2 of add is
begin

    F <= x and y;

end behav2;

--------------------------------------------------
