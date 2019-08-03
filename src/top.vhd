----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    00:22:57 08/05/2019 
-- Design Name: 
-- Module Name:    ft601_top
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    FT601 Controller in FT245 mode
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is
    port (
        LED : out std_logic;

        DATA_LANE : in std_logic_vector(0 downto 0);
        --LANE0_N  : in std_logic_vector(0 downto 0);
        CLK_LANE : in std_logic;
        --CLK_N : in std_logic;
        --LVDS_2_P : in std_logic;
        --LVDS_2_N : in std_logic;
        --LVDS_3_P : in std_logic;
        --LVDS_3_N : in std_logic;
        --LVDS_4_P : in std_logic;
        --LVDS_4_N : in std_logic;
        --LVDS_5_P : in std_logic;
        --LVDS_5_N : in std_logic;

        FT601_CLK    : in    std_logic;
        FT601_RST_N  : out   std_logic;
        FT601_DATA   : inout std_logic_vector(31 downto 0);
        FT601_BE     : out   std_logic_vector(3 downto 0);
        FT601_RXF_N  : in    std_logic;
        FT601_TXE_N  : in    std_logic;
        FT601_WR_N   : out   std_logic;
        FT601_SIWU_N : out   std_logic;
        FT601_RD_N   : out   std_logic;
        FT601_OE_N   : out   std_logic

    );

end entity top;

architecture rtl_top of top is

    component dec_8b10b is
        port (
            reset : in std_logic ;  -- global asynchronous reset (ah)
            rbyteclk : in std_logic ;   -- master synchronous receive byte clock
            enc_data : in std_logic_vector(9 downto 0);
            dec_data : out std_logic_vector(7 downto 0);
            ctrl_ind : out std_logic
        );
    end component dec_8b10b;

    component ft601 is
        port (
            clk : in  std_logic;
            rst : in  std_logic;
            led : out std_logic;

            -- To FT601 chip
            ft601_data   : inout std_logic_vector(31 downto 0);
            ft601_be     : out   std_logic_vector(3 downto 0);
            ft601_rxf_n  : in    std_logic;
            ft601_txe_n  : in    std_logic;
            ft601_wr_n   : out   std_logic;
            ft601_siwu_n : out   std_logic;
            ft601_rd_n   : out   std_logic;
            ft601_oe_n   : out   std_logic;

            -- From Internal FIFOs
            data_in     : in  std_logic_vector(31 downto 0);
            req_data    : out std_logic;
            fifo_in_emp : in  std_logic;
            data_wr_en  : in  std_logic
        );
    end component ft601;

    component ilvds is
        port (
            a  : in  std_logic;
            an : in  std_logic;
            z  : out std_logic
        );
    end component ilvds;

    component async_fifo
        port (
            data        : in  std_logic_vector(31 downto 0);
            wr_clock    : in  std_logic;
            rd_clock    : in  std_logic;
            wr_en       : in  std_logic;
            rd_en       : in  std_logic;
            reset       : in  std_logic;
            rpreset     : in  std_logic;
            q           : out std_logic_vector(31 downto 0);
            empty       : out std_logic;
            full        : out std_logic;
            almost_empty : out std_logic;
            almost_full  : out std_logic
        );
    end component;

    signal fifo_in         : std_logic_vector(31 downto 0) := (others => '0');
    signal fifo_wr_clk     : std_logic                     := '0';
    signal fifo_rd_clk     : std_logic                     := '0';
    signal fifo_wr_en      : std_logic                     := '0';
    signal fifo_rd_en      : std_logic                     := '0';
    signal fifo_rst        : std_logic                     := '0';
    signal fifo_rprst      : std_logic                     := '0';
    signal fifo_out        : std_logic_vector(31 downto 0);
    signal fifo_emp        : std_logic;
    signal fifo_full       : std_logic;
    signal fifo_almst_emp  : std_logic;
    signal fifo_almst_full : std_logic;
    signal rst             : std_logic;
    signal req_data        : std_logic;
    signal gen_data        : std_logic_vector(31 downto 0);
    signal eclk            : std_logic;
    signal sclk            : std_logic;
    signal par_byte        : std_logic_vector (7 downto 0);
    signal rng             : std_logic_vector (31 downto 0);
    signal ce              : std_logic := '0';
    signal mode            : std_logic;
    signal link_rdy        : std_logic;
    signal ber             : std_logic_vector(31 downto 0);
    signal clk_int : std_logic;
    signal debug : std_logic_vector(9 downto 0);
    signal dec_data : std_logic_vector (7 downto 0);
    --signal wr_clk_div      : std_logic_vector(2 downto 0) := "000";
    --signal rd_clk_div      : std_logic_vector(3 downto 0) := "0000";
    --signal test_counter    : std_logic_vector(9 downto 0) := (others => '0');
    --signal rd_wrd_gear : std_logic_vector(95 downto 0) := (others => '0');
    --signal wr_wrd_gear : std_logic_vector(95 downto 0) := (others => '0');
    --signal ft601_data_in : std_logic_vector (31 downto 0) := (others => '0');
    --signal rd_clk_en : std_logic_vector(1 downto 0) := (others => '0');

begin

    FT601_RST_N <= '1';
    LED <= link_rdy;
    rst <= '0';
    ce <= link_rdy when falling_edge(mode);
    fifo_rst <= not link_rdy;
    fifo_rprst <= not fifo_rd_en;
    fifo_wr_en <= ce;
    fifo_rd_en <= '1' when rising_edge(fifo_almst_full);
    gen_data(31 downto 16) <= (others => '0');
    gen_data(15 downto 0) <= dec_data & rng(31 downto 24);
    --FT601_DATA <= gen_data;
    --FT601_SIWU_N <= ce;
    
    --decoder_inst : entity work.deserializer8_1
    --    port map (
    --        ser_data => DATA_LANE,
    --        eclk     => CLK_LANE,
    --        sclk     => sclk,
    --        reset    => rst,
    --        data_rdy => data_rdy,
    --        par_data => par_byte,
    --        link_rdy => link_rdy,
    --        mode     => mode,
    --        debug    => debug,
    --        clk_s => clk_int
    --    );

    deser_inst : entity work.deserializer
    port map (
        clk => CLK_LANE,
        reset => rst,
        sclk  => sclk,
        link_rdy => link_rdy,
        datain => DATA_LANE,
        q => debug
    );

    decoder_inst : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => debug,
        dec_data => dec_data,
        ctrl_ind => mode
    );

    prng_inst : entity work.prng_recv
        generic map (
            SEED => "10111011110011001111000001010011"--"11100110011001111000001010011101"
        )
        port map (
            clk   => sclk,
            ce    => ce,
            reset => rst,
            rng   => rng
        );

    calc_ber_inst : entity work.calc_ber
        port map (
            byte_recvd  => dec_data,
            din_clk     => sclk,
            byte_actual => rng(31 downto 24),
            ce          => ce,
            reset       => rst,
            ber         => ber
        --debug   => LED
        );

    cdc_fifo_inst : async_fifo
        port map (
            data        => gen_data,
            wr_clock    => sclk,
            rd_clock    => FT601_CLK,
            wr_en       => fifo_wr_en,
            rd_en       => req_data,
            reset       => fifo_rst,
            rpreset     => fifo_rprst,
            q           => fifo_out,
            empty       => fifo_emp,
            full        => fifo_full,
            almost_empty => fifo_almst_emp,
            almost_full  => fifo_almst_full
        );

    ft601_comp : ft601 port map (
        clk => FT601_CLK,
        rst => rst,
        --led => LED,
        ft601_data   => FT601_DATA,
        ft601_be     => FT601_BE,
        ft601_rxf_n  => FT601_RXF_N,
        ft601_txe_n  => FT601_TXE_N,
        ft601_wr_n   => FT601_WR_N,
        ft601_siwu_n => FT601_SIWU_N,
        ft601_rd_n   => FT601_RD_N,
        ft601_oe_n   => FT601_OE_N,
        data_in      => fifo_out,
        req_data     => req_data,
        fifo_in_emp  => fifo_almst_emp,
        data_wr_en   => '1'
    );

    --debug_test : process(data_rdy)
    --begin
    --    if falling_edge(data_rdy) then
    --        if ce = '0' then
    --             test_counter <= (others => '0');
    --        else
    --            test_counter <= test_counter + '1';
    --        end if;
    --    end if;
    --end process;

    --fifo_wr_clk_gen_proc : process(data_rdy)
    --begin
    --    if rising_edge(data_rdy) then
    --        if ce = '0' then
    --            wr_clk_div <= "000";

    --        else
    --            if wr_clk_div = "101" then
    --                wr_clk_div <= "000";

    --            else
    --                wr_clk_div <= wr_clk_div + '1';

    --            end if;

    --            if wr_clk_div = "000" then
    --                fifo_wr_clk <= '1';

    --            elsif wr_clk_div = "011" then
    --                fifo_wr_clk <= '0';

    --            end if;
    --        end if;
    --    end if;
    --end process;

    --fifo_rd_clk_gen_proc : process(FT601_CLK)
    --begin
    --    if rising_edge(FT601_CLK) then
    --        if rd_clk_en(1) = '0' then
    --            rd_clk_div <= "0000";

    --        else
    --            if rd_clk_div = "1001" then
    --                rd_clk_div <= "0000";

    --            else
    --                rd_clk_div <= rd_clk_div + '1';

    --            end if;

    --            if rd_clk_div = "0000" then
    --                fifo_rd_clk <= '1';

    --            elsif rd_clk_div = "0101" then
    --                fifo_rd_clk <= '0';

    --            end if;
    --        end if;
    --    end if;
    --end process;

    --word_recomb_proc1 : process(data_rdy)
    --begin
    --    if rising_edge(data_rdy) then
    --        if ce = '0' then
    --            fifo_in <= (others => '0');
    --            wr_wrd_gear <= (others => '0');

    --        else
    --            case wr_clk_div is
    --                when "000" => wr_wrd_gear(15 downto 0) <=  gen_data(15 downto 0);
    --                when "001" => wr_wrd_gear(31 downto 16) <= gen_data(15 downto 0);
    --                when "010" => wr_wrd_gear(47 downto 32) <= gen_data(15 downto 0);
    --                when "011" => wr_wrd_gear(63 downto 48) <= gen_data(15 downto 0);
    --                when "100" => wr_wrd_gear(79 downto 64) <= gen_data(15 downto 0);
    --                when "101" => wr_wrd_gear(95 downto 80) <= gen_data(15 downto 0);
    --                when others =>  wr_wrd_gear(15 downto 0) <=  gen_data(15 downto 0);

    --            end case;

    --            if wr_clk_div = "011" then
    --                fifo_in <= wr_wrd_gear;
    --            end if;
    --         end if;
    --    end if;
    --end process;

    --word_recomb_proc2 : process(FT601_CLK)
    --begin
    --    if rising_edge(FT601_CLK) then
    --        if fifo_rd_en = '0' then
    --            ft601_data_in <= (others => '0');
    --            rd_wrd_gear <= (others => '0');

    --        else
    --            ft601_data_in(31 downto 16) <= (others => '0');
    --            case rd_clk_div is
    --                when "0001" => ft601_data_in(15 downto 0) <= rd_wrd_gear(15 downto 0);
    --                when "0010" => ft601_data_in(15 downto 0) <= rd_wrd_gear(31 downto 16);
    --                when "0011" => ft601_data_in(15 downto 0) <= rd_wrd_gear(47 downto 32);
    --                when "1000" => ft601_data_in(15 downto 0) <= rd_wrd_gear(63 downto 48);
    --                when "1001" => ft601_data_in(15 downto 0) <= rd_wrd_gear(79 downto 64);
    --                when "0000" => ft601_data_in(15 downto 0) <= rd_wrd_gear(95 downto 80);
    --                when others => ft601_data_in(15 downto 0) <= (others => '0');

    --            end case;

    --            if rd_clk_div = "0101" then
    --                rd_wrd_gear <= fifo_out;

    --            end if;            
    --        end if;
    --    end if;
    --end process;

    ----ilvds_0 : ilvds
    --port map (
    --  a => LANE0_P,
    --  an => LANE0_N,
    --  z => sdata(0)
    --);

    --ilvds_1 : ilvds
    --port map (
    --  a => CLK_P,
    --  an => CLK_N,
    --  z => eclk
    --);

    --ilvds_2 : ilvds
    --port map (
    --  a => LVDS_2_P,
    --  an => LVDS_2_N,
    --  z => zynq_data(2)
    --);

    --ilvds_3 : ilvds
    --port map (
    --  a => LVDS_3_P,
    --  an => LVDS_3_N,
    --  z => zynq_data(3)
    --);

    --ilvds_4 : ilvds
    --port map (
    --  a => LVDS_4_P,
    --  an => LVDS_4_N,
    --  z => zynq_data(4)
    --);

    --ilvds_5 : ilvds
    --port map (
    --  a => LVDS_5_P,
    --  an => LVDS_5_N,
    --  z => zynq_data(5)
    --);

end architecture rtl_top;