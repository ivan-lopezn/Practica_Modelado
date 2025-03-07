library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_controller_tb is
end display_controller_tb;

architecture sim of display_controller_tb is
  constant CNT1         : time      := 16ms;  -- Tiempo de espera entre envíos
  signal   RST_i        : std_logic := '1';
  signal   CLK_i        : std_logic := '0';
  signal   DATO_RX_OK_i : std_logic;
  signal   DATO_RX_i    : std_logic_vector(7 downto 0);
  signal   DP_i         : std_logic;
  signal   SEG_AG_i     : std_logic_vector(6 downto 0);
  signal   AND_70_i     : std_logic_vector(7 downto 0);
  signal   dato_vis     : std_logic_vector(31 downto 0);
begin  -- sim

  ------------------------------------------------------------------------------
  -- Instanciación del DUT (display_controller)
  ------------------------------------------------------------------------------
  DUT : entity work.display_controller
    port map (
      RST        => RST_i,
      CLK        => CLK_i,
      DATO_RX_OK => DATO_RX_OK_i,
      DATO_RX    => DATO_RX_i,
      DP         => DP_i,
      SEG_AG     => SEG_AG_i,
      AND_70     => AND_70_i
    );

  ------------------------------------------------------------------------------
  -- Instanciación del display para simulación (módulo usado solo para visualizar)
  ------------------------------------------------------------------------------
  UD : entity work.display
    port map (
      SEG_AG => SEG_AG_i,
      AND_70 => AND_70_i
    );

  ------------------------------------------------------------------------------
  -- Generación de reloj (CLK_i) con período de 10 ns (5 ns en bajo y 5 ns en alto)
  ------------------------------------------------------------------------------
  clk_gen : process
  begin
    CLK_i <= '0';
    wait for 5 ns;
    CLK_i <= '1';
    wait for 5 ns;
  end process;

  ------------------------------------------------------------------------------
  -- Generación del reset asíncrono (RST_i)
  ------------------------------------------------------------------------------
  rst_gen : process
  begin
    RST_i <= '1';
    wait for 20 ns;
    RST_i <= '0';
    wait;
  end process;

  ------------------------------------------------------------------------------
  -- Proceso principal: Envío secuencial de datos
  ------------------------------------------------------------------------------
  process
    -- Procedimiento para enviar 32 bits (4 bytes) por partes en DATO_RX_i
    procedure enviar_dato(dato : std_logic_vector(31 downto 0)) is
    begin
      wait until CLK_i = '0';
      DATO_RX_i    <= dato(31 downto 24);
      DATO_RX_OK_i <= '1';
      wait until CLK_i = '0';
      DATO_RX_OK_i <= '0';
      wait for CNT1;

      DATO_RX_i    <= dato(23 downto 16);
      DATO_RX_OK_i <= '1';
      wait until CLK_i = '0';
      DATO_RX_OK_i <= '0';
      wait for CNT1;

      DATO_RX_i    <= dato(15 downto 8);
      DATO_RX_OK_i <= '1';
      wait until CLK_i = '0';
      DATO_RX_OK_i <= '0';
      wait for CNT1;

      DATO_RX_i    <= dato(7 downto 0);
      DATO_RX_OK_i <= '1';
      wait until CLK_i = '0';
      DATO_RX_OK_i <= '0';

      wait for 4 * CNT1;  -- Espera extra para observar la visualización
    end enviar_dato;

    variable dato_1 : std_logic_vector(31 downto 0);
  begin  -- Proceso principal
    wait for 333 ns;
    
    -- Se envían sucesivamente distintos valores (extendiéndolos a 32 bits)
    dato_1 := x"00000015";  -- Primer dato (por ejemplo, '15')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"01001010";  -- Segundo dato ('4A')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"00000010";  -- Tercer dato ('02')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"00100110";  -- Cuarto dato ('26')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"11111111";  -- Quinto dato ('FF')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"11110101";  -- Sexto dato ('F5')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"01010111";  -- Séptimo dato ('57')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    dato_1 := x"00110011";  -- Octavo dato ('33')
    dato_vis <= dato_1;
    enviar_dato(dato_1);

    report "FIN CONTROLADO DE LA SIMULACION" severity failure;
  end process;

end sim;
