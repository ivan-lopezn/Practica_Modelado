library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_controller is
  port(
       RST        : in  std_logic;
       CLK        : in  std_logic;
       DATO_RX_OK : in  std_logic;
       DATO_RX    : in  std_logic_vector(7 downto 0);
       DP         : out std_logic;
       SEG_AG     : out std_logic_vector(6 downto 0);  -- gfedcba
       AND_70     : out std_logic_vector(7 downto 0)   -- activación de los ánodos (activo en '0')
       );
end display_controller;

architecture rtl of display_controller is

  -- Registro de desplazamiento para almacenar los últimos 4 caracteres (32 bits)
  signal dato_rx_reg : std_logic_vector(31 downto 0);

  -- Señal "tick" proveniente del prescaler
  signal tick : std_logic;
  -- Registro para ampliar el pulso tick a un ciclo de reloj
  signal tick_reg : std_logic := '0';

  -- Constante para el prescaler (por ejemplo, CTE_ANDS = 100 para que TaD = 100×10 ns = 1 µs)
  constant CTE_ANDS : integer := 125000;  -- Para 1.25 ms

  -- Contador de 3 bits para la multiplexación de 8 dígitos (D0..D7)
  signal mux_sel : unsigned(2 downto 0) := (others => '0');

  -- Señales internas para la salida de cada bloque
  signal nibble_out : std_logic_vector(3 downto 0);
  signal seg_int    : std_logic_vector(6 downto 0);
  signal and_int    : std_logic_vector(7 downto 0);
  signal dp_int     : std_logic := '1';

  -- Señales para extraer cada nibble del registro de 32 bits
  signal I0, I1, I2, I3, I4, I5, I6, I7 : std_logic_vector(3 downto 0);

begin

  ------------------------------------------------------------------------------
  -- Registro de desplazamiento: se desplaza el dato cuando DATO_RX_OK es '1'
  ------------------------------------------------------------------------------
    process (CLK, RST)
    begin
      if RST = '1' then
        dato_rx_reg <= (others => '0');
      elsif rising_edge(CLK) then
        if DATO_RX_OK = '1' then
          -- Los 24 bits anteriores se desplazan a [31..8],
          -- y el nuevo byte entra en [7..0]
          dato_rx_reg <= dato_rx_reg(23 downto 0) & DATO_RX;
        end if;
      end if;
    end process;

  ------------------------------------------------------------------------------
  -- Instanciación del módulo prescaler
  ------------------------------------------------------------------------------
  prescaler_inst: entity work.prescaler
    generic map (
      CTE_ANDS => CTE_ANDS
    )
    port map (
      clk  => CLK,
      rst  => RST,
      tick => tick
    );

  ------------------------------------------------------------------------------
  -- Registrar tick para asegurarse de que dure un ciclo de reloj
  ------------------------------------------------------------------------------
  process (CLK, RST)
  begin
    if RST = '1' then
      tick_reg <= '0';
    elsif rising_edge(CLK) then
      tick_reg <= tick;
    end if;
  end process;

  ------------------------------------------------------------------------------
  -- Actualización del contador de multiplexación usando tick_reg
  ------------------------------------------------------------------------------
    process(CLK, RST)
      variable prev_tick_var : std_logic := '0';
      variable mux_sel_var   : unsigned(2 downto 0) := (others => '0');
    begin
      if RST = '1' then
        prev_tick_var := '0';
        mux_sel_var   := (others => '0');
        -- Se reflejan las variables en las señales
        mux_sel       <= (others => '0');
      elsif rising_edge(CLK) then
        -- Detectamos flanco ascendente de tick
        if (prev_tick_var = '0' and tick = '1') then
          mux_sel_var := mux_sel_var + 1;
        end if;
        prev_tick_var := tick;
        -- Asignamos la variable a la señal
        mux_sel <= mux_sel_var;
      end if;
    end process;
    
  ------------------------------------------------------------------------------
  -- Multiplexor: extrae los 8 nibbles (cada 4 bits) del registro
  ------------------------------------------------------------------------------
    I0 <= dato_rx_reg( 3 downto  0);  -- nibble bajo  del 1er byte (el + reciente)
    I1 <= dato_rx_reg( 7 downto  4);  -- nibble alto  del 1er byte
    I2 <= dato_rx_reg(11 downto  8);  -- nibble bajo  del 2º byte
    I3 <= dato_rx_reg(15 downto 12);  -- nibble alto  del 2º byte
    I4 <= dato_rx_reg(19 downto 16);  -- nibble bajo  del 3er byte
    I5 <= dato_rx_reg(23 downto 20);  -- nibble alto  del 3er byte
    I6 <= dato_rx_reg(27 downto 24);  -- nibble bajo  del 4º byte
    I7 <= dato_rx_reg(31 downto 28);  -- nibble alto  del 4º byte
    

    with mux_sel select
      nibble_out <= I0 when "000",
                    I1 when "001",
                    I2 when "010",
                    I3 when "011",
                    I4 when "100",
                    I5 when "101",
                    I6 when "110",
                    I7 when "111",
                    I0 when others;
  ------------------------------------------------------------------------------
  -- Decodificador HEX -> 7 segmentos (gfedcba)
  ------------------------------------------------------------------------------
  with nibble_out select
    seg_int <= 
      "1000000" when "0000",  -- 0
      "1111001" when "0001",  -- 1
      "0100100" when "0010",  -- 2
      "0110000" when "0011",  -- 3
      "0011001" when "0100",  -- 4
      "0010010" when "0101",  -- 5
      "0000010" when "0110",  -- 6
      "1111000" when "0111",  -- 7
      "0000000" when "1000",  -- 8
      "0010000" when "1001",  -- 9
      "0001000" when "1010",  -- A
      "0000011" when "1011",  -- b
      "1000110" when "1100",  -- C
      "0100001" when "1101",  -- d
      "0000110" when "1110",  -- E
      "0001110" when "1111",  -- F
      "1111111" when others;

  ------------------------------------------------------------------------------
  -- Decodificador AND_70: genera la activación de ánodos
  ------------------------------------------------------------------------------
    with mux_sel select
      and_int <= 
        "11111110" when "000",  -- D0 (más a la derecha)
        "11111101" when "001",  -- D1
        "11111011" when "010",  -- D2
        "11110111" when "011",  -- D3
        "11101111" when "100",  -- D4
        "11011111" when "101",  -- D5
        "10111111" when "110",  -- D6
        "01111111" when "111",  -- D7 (más a la izquierda)
        "11111111" when others;

  ------------------------------------------------------------------------------
  -- Generación del DP (punto decimal): enciende DP para ciertos dígitos
  ------------------------------------------------------------------------------
  process(mux_sel)
  begin
    case mux_sel is
      when "010" => dp_int <= '0';  -- D2
      when "100" => dp_int <= '0';  -- D4
      when "110" => dp_int <= '0';  -- D6
      when others => dp_int <= '1';
    end case;
  end process;

  ------------------------------------------------------------------------------
  -- Registro de salida para evitar glitches en las señales finales
  ------------------------------------------------------------------------------
  process(CLK, RST)
  begin
    if RST = '1' then
      SEG_AG <= (others => '1');
      AND_70 <= (others => '1');
      DP     <= '1';
    elsif rising_edge(CLK) then
      SEG_AG <= seg_int;
      AND_70 <= and_int;
      DP     <= dp_int;
    end if;
  end process;

end rtl;
