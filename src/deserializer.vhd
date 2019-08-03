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

entity deserializer is
    port (
        clk : in std_logic;
        reset : in  std_logic;
        sclk  : out std_logic;
        datain  : in  std_logic_vector(0 downto 0);
        link_rdy : out std_logic := '0';
        q       : out std_logic_vector(9 downto 0)
    );
end entity deserializer;

architecture rtl of deserializer is
    
    component ddrx1
    port (
        clk: in  std_logic; 
        freeze: in  std_logic; 
        lock: out  std_logic; 
        reset: in  std_logic; 
        sclk: out  std_logic; 
        uddcntln: in  std_logic; 
        datain: in  std_logic_vector(0 downto 0); 
        q: out  std_logic_vector(1 downto 0)
    );
    end component;

    signal q10_buf  : std_logic_vector(9 downto 0) := (others => '0');
    signal q2_buf   : std_logic_vector(1 downto 0) := (others => '0');
    signal counter  : std_logic_vector(2 downto 0) := (others => '0');
   
    signal bit_slip : std_logic := '0';
    signal sclk_buf : std_logic := '0';
    signal locked   : std_logic := '0';
    signal lnk_trnd_buf : std_logic_vector(3 downto 0) := (others => '0');
    signal lnk_trnd : std_logic := '0';
    signal hold_slip : std_logic_vector(5 downto 0) := (others => '0');
begin

    ddrx1_inst : ddrx1
        port map (
            clk      => clk,
            freeze   => lnk_trnd,
            lock     => locked,
            reset    => reset,
            sclk     => sclk_buf,
            uddcntln => '0',
            datain   => datain,
            q        => q2_buf
        );

    lnk_trnd <= lnk_trnd_buf(0) and lnk_trnd_buf(1) and lnk_trnd_buf(2) and lnk_trnd_buf(3);
    link_rdy <= lnk_trnd;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                sclk     <= '0';
                q10_buf  <= (others => '0');
                q <= (others => '0');
            
            else
                if locked = '1' then
                    case counter is
                        when "000"  => q10_buf(1 downto 0) <= q2_buf;
                        when "001"  => q10_buf(3 downto 2) <= q2_buf;
                        when "010"  => q10_buf(5 downto 4) <= q2_buf;
                        when "011"  => q10_buf(7 downto 6) <= q2_buf;
                        when "100"  => q10_buf(9 downto 8) <= q2_buf;
                        when others => null;
                    
                    end case;

                    if counter = "001" then
                        sclk <= lnk_trnd;
                    
                    elsif counter = "011" then
                        sclk <= '0';
                    
                    end if;
                else
                    sclk     <= '0';
                    q10_buf  <= (others => '0');

                end if;

                if counter = "000" then
                    q <= q10_buf;
                 end if;
            end if;
        end if;
    end process;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                counter <= (others => '0');

            else
                if locked = '1' then
                    if bit_slip = '1' then
                        counter <= counter;

                    else
                        if counter = "100" then
                            counter <= (others => '0');

                        else
                            counter <= counter + '1';

                        end if;
                    end if;
                else
                    counter <= (others => '0');

                end if;
            end if;
        end if;
    end process;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                bit_slip <= '0';
                hold_slip <= (others => '0');

            else
                if locked = '1' and lnk_trnd = '0' then
                    if counter = "000" then
                        hold_slip <= hold_slip + '1';
                        if hold_slip = "111111"  then
                            if q10_buf /= "0110111100" and q10_buf /= "1001000011" then
                                bit_slip <= '1';
                                lnk_trnd_buf(0) <= '0';

                            else
                                bit_slip <= '0';
                                lnk_trnd_buf(0) <= '1';
                            end if;
                            lnk_trnd_buf(3 downto 1) <= lnk_trnd_buf(2 downto 0);
                        else
                            bit_slip <= '0';

                        end if;
                    elsif counter = "001" then
                        bit_slip <= '0';

                    end if;
                else
                    bit_slip <= '0';
                    hold_slip <= (others => '0');

                end if;
            end if;
        end if;
    end process;

end architecture rtl;