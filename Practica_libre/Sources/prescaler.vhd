library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prescaler is
  generic (
    CTE_ANDS : integer := 100000  -- Ejemplo: 1 ms con CLK de 100 MHz
  );
  port (
    clk  : in  std_logic;
    rst  : in  std_logic;
    tick : out std_logic  -- Señal que se activa '1' cuando se cumple el conteo
  );
end prescaler;

architecture rtl of prescaler is
  signal cnt: unsigned(16 downto 0) := (others => '0');
begin
  process(clk, rst)
  begin
    if rst = '1' then
      cnt  <= (others => '0');
      tick <= '0';
    elsif rising_edge(clk) then
      if cnt = to_unsigned(CTE_ANDS-1, cnt'length) then
        cnt  <= (others => '0');
        tick <= '1';
      else
        cnt  <= cnt + 1;
        tick <= '0';
      end if;
    end if;
  end process;
end rtl;
