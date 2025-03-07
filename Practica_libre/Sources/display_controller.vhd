library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity display_controller is
  port(RST        : in  std_logic;
       CLK        : in  std_logic;
       DATO_RX_OK : in  std_logic;
       DATO_RX    : in  std_logic_vector(7 downto 0);
       DP         : out std_logic;
       SEG_AG     : out std_logic_vector(6 downto 0);  -- gfedcba
       AND_70     : out std_logic_vector(7 downto 0));
end display_controller;

architecture rtl of display_controller is

signal dato_rx_reg: std_logic_vector(31 downto 0);

begin

process (clk, rst)
begin
    if rst = '1' then
        dato_rx_reg <= (others => '0');
    elsif rising_edge (clk) then
        if dato_rx_ok = '1' then
            dato_rx_reg <= DATO_MUXSIFO_XX_REG(23 downto 0); -- ASIGNACIÓN INCORRECTA...
        end if;
    end if;
end process;


process (<selector>,<input1>,<input2>,<input3>,<input4>,
         <input5>,<input6>,<input7>,<input8>)
begin
   case <selector> is
      when "000" => <output> <= <input1>;
      when "001" => <output> <= <input2>;
      when "010" => <output> <= <input3>;
      when "011" => <output> <= <input4>;
      when "100" => <output> <= <input5>;
      when "101" => <output> <= <input6>;
      when "110" => <output> <= <input7>;
      when "111" => <output> <= <input8>;
      when others => <output> <= <input1>;
   end case;
end process;

 with HEX SELect
   LED<= "1111001" when "0001",   --1
         "0100100" when "0010",   --2
         "0110000" when "0011",   --3
         "0011001" when "0100",   --4
         "0010010" when "0101",   --5
         "0000010" when "0110",   --6
         "1111000" when "0111",   --7
         "0000000" when "1000",   --8
         "0010000" when "1001",   --9
         "0001000" when "1010",   --A
         "0000011" when "1011",   --b
         "1000110" when "1100",   --C
         "0100001" when "1101",   --d
         "0000110" when "1110",   --E
         "0001110" when "1111",   --F
         "1000000" when others;   --0

end;
