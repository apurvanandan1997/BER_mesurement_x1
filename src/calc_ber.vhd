----------------------------------------------------------------------------
--  calc_ber.vhd
--  Version 1.0
--
--  Copyright (C) 2018 Mahesh Chandra Yayi
--
--  Modified from source : http://vhdlguru.blogspot.com/2017/10/count-number-of-1s-in-binary-number.html
--
--  This program is free software: you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation, either version
--  2 of the License, or (at your option) any later version.
----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity calc_ber is
    port (
        byte_recvd  : in  std_logic_vector (7 downto 0);
        din_clk     : in  std_logic;
        byte_actual : in  std_logic_vector (7 downto 0);
        ce          : in  std_logic;
        reset       : in  std_logic;
        ber         : out std_logic_vector (31 downto 0) := (others => '0');
        debug : out std_logic
    );
end calc_ber;

architecture rtl of calc_ber is

    signal error_bits   : std_logic_vector(7 downto 0)  := (others => '0');
    signal err_per_byte : std_logic_vector(3 downto 0)  := (others => '0');
    signal count_bytes  : std_logic_vector(28 downto 0) := (others => '0');
    signal total_err_bits : std_logic_vector(31 downto 0) :=  (others => '0');
    constant ones32 : std_logic_vector(31 downto 0) := (others => '1');
    signal debug1 : std_logic := '0';

begin
    
    debug <= debug1;

    error_bits <= byte_actual xor byte_recvd;

    count_proc : process(error_bits)

        variable count : unsigned(3 downto 0) := (others => '0');
    begin        
        count := "0000";

        for i in 0 to 7 loop
            count := count + ("000" & error_bits(i));

        end loop;
        err_per_byte <= std_logic_vector(count);

    end process;

    calc_ber : process(din_clk)
    begin
        if rising_edge(din_clk) then
            if reset = '1' then
                count_bytes <= (others => '0');
                total_err_bits <= (others => '0');
                debug1 <= '0';

            else
                count_bytes <= count_bytes + '1';

                if count_bytes = ones32(28 downto 0) then
                    ber <= total_err_bits;
                    total_err_bits <= (others => '0');
                    debug1 <= not debug1;
                    count_bytes <= (others => '0');

                else
                    total_err_bits <= total_err_bits + err_per_byte;

                end if;
            end if;
        end if;
    end process;

end rtl;
