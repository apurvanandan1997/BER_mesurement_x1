// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Aug  2 06:07:29 2019
//
// Verilog Description of module top
//

module top (LED, DATA_LANE, CLK_LANE, FT601_CLK, FT601_RST_N, FT601_DATA, 
            FT601_BE, FT601_RXF_N, FT601_TXE_N, FT601_WR_N, FT601_SIWU_N, 
            FT601_RD_N, FT601_OE_N);   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(26[8:11])
    output LED;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(28[9:12])
    input [0:0]DATA_LANE;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(30[9:18])
    input CLK_LANE /* synthesis black_box_pad_pin=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(32[9:17])
    input FT601_CLK;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(43[9:18])
    output FT601_RST_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(44[9:20])
    output [31:0]FT601_DATA;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    output [3:0]FT601_BE;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(46[9:17])
    input FT601_RXF_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(47[9:20])
    input FT601_TXE_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(48[9:20])
    output FT601_WR_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(49[9:19])
    output FT601_SIWU_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(50[9:21])
    output FT601_RD_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(51[9:19])
    output FT601_OE_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(52[9:19])
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(43[9:18])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(135[12:16])
    wire mode_N_2 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(50[9:21])
    wire rbyteclk_N_94 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(63[3:11])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ddrx1.vhd(34[12:19])
    
    wire GND_net, VCC_net, FT601_DATA_c_15, FT601_DATA_c_14, FT601_DATA_c_13, 
        FT601_DATA_c_12, FT601_DATA_c_11, FT601_DATA_c_10, FT601_DATA_c_9, 
        FT601_DATA_c_8, FT601_DATA_c_7, FT601_DATA_c_6, FT601_DATA_c_5, 
        FT601_DATA_c_4, FT601_DATA_c_3, FT601_DATA_c_2, FT601_DATA_c_1, 
        FT601_DATA_c_0, FT601_RXF_N_c, FT601_TXE_N_c, FT601_WR_N_c, 
        FT601_SIWU_N_c, FT601_RD_N_c, FT601_OE_N_c, req_data;
    wire [9:0]debug;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(143[12:17])
    
    wire n1847, link_rdy_N_90, n1148, n1723, n3209, buf_dataini0;
    
    VHI i2 (.Z(VCC_net));
    OB FT601_DATA_pad_10 (.I(FT601_DATA_c_10), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_11 (.I(FT601_DATA_c_11), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_12 (.I(FT601_DATA_c_12), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_13 (.I(FT601_DATA_c_13), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_14 (.I(FT601_DATA_c_14), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_15 (.I(FT601_DATA_c_15), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_16 (.I(GND_net), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_17 (.I(GND_net), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_18 (.I(GND_net), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    FD1S3AX ce_14 (.D(n3209), .CK(mode_N_2), .Q(FT601_SIWU_N_c)) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(158[5:7])
    defparam ce_14.GSR = "ENABLED";
    IB FT601_TXE_N_pad (.I(FT601_TXE_N), .O(FT601_TXE_N_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(48[9:20])
    IB FT601_RXF_N_pad (.I(FT601_RXF_N), .O(FT601_RXF_N_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(47[9:20])
    IB FT601_CLK_pad (.I(FT601_CLK), .O(FT601_CLK_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(43[9:18])
    OB FT601_OE_N_pad (.I(FT601_OE_N_c), .O(FT601_OE_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(52[9:19])
    OB FT601_RD_N_pad (.I(FT601_RD_N_c), .O(FT601_RD_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(51[9:19])
    OB FT601_SIWU_N_pad (.I(FT601_SIWU_N_c), .O(FT601_SIWU_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(50[9:21])
    OB FT601_WR_N_pad (.I(FT601_WR_N_c), .O(FT601_WR_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(49[9:19])
    OBZ FT601_BE_pad_0 (.I(VCC_net), .T(n1148), .O(FT601_BE[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(233[5:13])
    OBZ FT601_BE_pad_1 (.I(VCC_net), .T(n1148), .O(FT601_BE[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(233[5:13])
    OBZ FT601_BE_pad_2 (.I(VCC_net), .T(n1148), .O(FT601_BE[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(233[5:13])
    OBZ FT601_BE_pad_3 (.I(VCC_net), .T(n1148), .O(FT601_BE[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(233[5:13])
    OB FT601_DATA_pad_0 (.I(FT601_DATA_c_0), .O(FT601_DATA[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_1 (.I(FT601_DATA_c_1), .O(FT601_DATA[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_2 (.I(FT601_DATA_c_2), .O(FT601_DATA[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_3 (.I(FT601_DATA_c_3), .O(FT601_DATA[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_4 (.I(FT601_DATA_c_4), .O(FT601_DATA[4]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_5 (.I(FT601_DATA_c_5), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_19 (.I(GND_net), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_20 (.I(GND_net), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_21 (.I(GND_net), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_22 (.I(GND_net), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_23 (.I(GND_net), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_24 (.I(GND_net), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_25 (.I(GND_net), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_26 (.I(GND_net), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_27 (.I(GND_net), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_28 (.I(GND_net), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_29 (.I(GND_net), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_DATA_pad_30 (.I(GND_net), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    GSR GSR_INST (.GSR(VCC_net));
    OB FT601_DATA_pad_31 (.I(GND_net), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB FT601_RST_N_pad (.I(VCC_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(44[9:20])
    OB FT601_DATA_pad_9 (.I(FT601_DATA_c_9), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    OB LED_pad (.I(n3209), .O(LED));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(28[9:12])
    TSALL TSALL_INST (.TSALL(GND_net));
    IB Inst2_IB (.I(CLK_LANE), .O(buf_clk)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=64, LSE_RLINE=64 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ddrx1.vhd(86[15:17])
    IB Inst1_IB0 (.I(DATA_LANE[0]), .O(buf_dataini0)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=64, LSE_RLINE=64 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ddrx1.vhd(89[16:18])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1071_1_lut (.A(FT601_SIWU_N_c), .Z(n1723)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(158[5:7])
    defparam i1071_1_lut.init = 16'h5555;
    \prng_recv("10111011110011001111000001010011")  prng_inst (.FT601_DATA_c_5(FT601_DATA_c_5), 
            .GND_net(GND_net), .FT601_DATA_c_6(FT601_DATA_c_6), .FT601_DATA_c_1(FT601_DATA_c_1), 
            .sclk(sclk), .n1723(n1723), .FT601_DATA_c_2(FT601_DATA_c_2), 
            .FT601_DATA_c_3(FT601_DATA_c_3), .FT601_DATA_c_4(FT601_DATA_c_4), 
            .FT601_DATA_c_7(FT601_DATA_c_7), .FT601_DATA_c_0(FT601_DATA_c_0));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(201[17:38])
    OB FT601_DATA_pad_6 (.I(FT601_DATA_c_6), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    async_fifo cdc_fifo_inst (.GND_net(GND_net), .FT601_DATA_c_15(FT601_DATA_c_15), 
            .FT601_DATA_c_14(FT601_DATA_c_14), .FT601_DATA_c_13(FT601_DATA_c_13), 
            .FT601_DATA_c_12(FT601_DATA_c_12), .FT601_DATA_c_11(FT601_DATA_c_11), 
            .FT601_DATA_c_10(FT601_DATA_c_10), .FT601_DATA_c_9(FT601_DATA_c_9), 
            .FT601_DATA_c_8(FT601_DATA_c_8), .FT601_DATA_c_7(FT601_DATA_c_7), 
            .FT601_DATA_c_6(FT601_DATA_c_6), .FT601_DATA_c_5(FT601_DATA_c_5), 
            .FT601_DATA_c_4(FT601_DATA_c_4), .FT601_DATA_c_3(FT601_DATA_c_3), 
            .FT601_DATA_c_2(FT601_DATA_c_2), .FT601_DATA_c_1(FT601_DATA_c_1), 
            .FT601_DATA_c_0(FT601_DATA_c_0), .sclk(sclk), .FT601_CLK_c(FT601_CLK_c), 
            .FT601_SIWU_N_c(FT601_SIWU_N_c), .req_data(req_data), .link_rdy_N_90(link_rdy_N_90), 
            .VCC_net(VCC_net), .n1847(n1847)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(223[21:31])
    OB FT601_DATA_pad_7 (.I(FT601_DATA_c_7), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    deserializer deser_inst (.sclk(sclk), .debug({debug}), .n3209(n3209), 
            .link_rdy_N_90(link_rdy_N_90), .rbyteclk_N_94(rbyteclk_N_94), 
            .buf_clk(buf_clk), .GND_net(GND_net), .buf_dataini0(buf_dataini0));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(182[18:42])
    ft601 ft601_comp (.FT601_CLK_c(FT601_CLK_c), .n1847(n1847), .FT601_OE_N_c(FT601_OE_N_c), 
          .FT601_RD_N_c(FT601_RD_N_c), .req_data(req_data), .FT601_WR_N_c(FT601_WR_N_c), 
          .n1148(n1148), .FT601_RXF_N_c(FT601_RXF_N_c), .FT601_TXE_N_c(FT601_TXE_N_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(239[18:23])
    OB FT601_DATA_pad_8 (.I(FT601_DATA_c_8), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(45[9:19])
    dec_8b10b decoder_inst (.mode_N_2(mode_N_2), .FT601_DATA_c_10(FT601_DATA_c_10), 
            .sclk(sclk), .debug({debug}), .FT601_DATA_c_8(FT601_DATA_c_8), 
            .rbyteclk_N_94(rbyteclk_N_94), .FT601_DATA_c_9(FT601_DATA_c_9), 
            .FT601_DATA_c_11(FT601_DATA_c_11), .FT601_DATA_c_15(FT601_DATA_c_15), 
            .FT601_DATA_c_14(FT601_DATA_c_14), .FT601_DATA_c_13(FT601_DATA_c_13), 
            .FT601_DATA_c_12(FT601_DATA_c_12));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(192[20:29])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \prng_recv("10111011110011001111000001010011") 
//

module \prng_recv("10111011110011001111000001010011")  (FT601_DATA_c_5, GND_net, 
            FT601_DATA_c_6, FT601_DATA_c_1, sclk, n1723, FT601_DATA_c_2, 
            FT601_DATA_c_3, FT601_DATA_c_4, FT601_DATA_c_7, FT601_DATA_c_0);
    output FT601_DATA_c_5;
    input GND_net;
    output FT601_DATA_c_6;
    output FT601_DATA_c_1;
    input sclk;
    input n1723;
    output FT601_DATA_c_2;
    output FT601_DATA_c_3;
    output FT601_DATA_c_4;
    output FT601_DATA_c_7;
    output FT601_DATA_c_0;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(135[12:16])
    
    wire n2688;
    wire [7:0]n6;
    
    wire n2689, n2687, n2686;
    
    CCU2D add_389_7 (.A0(FT601_DATA_c_5), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FT601_DATA_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2688), .COUT(n2689), .S0(n6[5]), .S1(n6[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_389_7.INIT0 = 16'h5aaa;
    defparam add_389_7.INIT1 = 16'h5aaa;
    defparam add_389_7.INJECT1_0 = "NO";
    defparam add_389_7.INJECT1_1 = "NO";
    FD1S3JX sr_i25 (.D(n6[1]), .CK(sclk), .PD(n1723), .Q(FT601_DATA_c_1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i25.GSR = "ENABLED";
    FD1S3IX sr_i26 (.D(n6[2]), .CK(sclk), .CD(n1723), .Q(FT601_DATA_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i26.GSR = "ENABLED";
    FD1S3JX sr_i27 (.D(n6[3]), .CK(sclk), .PD(n1723), .Q(FT601_DATA_c_3)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i27.GSR = "ENABLED";
    FD1S3JX sr_i28 (.D(n6[4]), .CK(sclk), .PD(n1723), .Q(FT601_DATA_c_4)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i28.GSR = "ENABLED";
    FD1S3JX sr_i29 (.D(n6[5]), .CK(sclk), .PD(n1723), .Q(FT601_DATA_c_5)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i29.GSR = "ENABLED";
    FD1S3IX sr_i30 (.D(n6[6]), .CK(sclk), .CD(n1723), .Q(FT601_DATA_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i30.GSR = "ENABLED";
    FD1S3JX sr_i31 (.D(n6[7]), .CK(sclk), .PD(n1723), .Q(FT601_DATA_c_7)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i31.GSR = "ENABLED";
    CCU2D add_389_5 (.A0(FT601_DATA_c_3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FT601_DATA_c_4), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2687), .COUT(n2688), .S0(n6[3]), .S1(n6[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_389_5.INIT0 = 16'h5aaa;
    defparam add_389_5.INIT1 = 16'h5aaa;
    defparam add_389_5.INJECT1_0 = "NO";
    defparam add_389_5.INJECT1_1 = "NO";
    CCU2D add_389_3 (.A0(FT601_DATA_c_1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(FT601_DATA_c_2), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2686), .COUT(n2687), .S0(n6[1]), .S1(n6[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_389_3.INIT0 = 16'h5aaa;
    defparam add_389_3.INIT1 = 16'h5aaa;
    defparam add_389_3.INJECT1_0 = "NO";
    defparam add_389_3.INJECT1_1 = "NO";
    CCU2D add_389_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FT601_DATA_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2686), .S1(n6[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_389_1.INIT0 = 16'hF000;
    defparam add_389_1.INIT1 = 16'h5555;
    defparam add_389_1.INJECT1_0 = "NO";
    defparam add_389_1.INJECT1_1 = "NO";
    CCU2D add_389_9 (.A0(FT601_DATA_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2689), .S0(n6[7]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_389_9.INIT0 = 16'h5aaa;
    defparam add_389_9.INIT1 = 16'h0000;
    defparam add_389_9.INJECT1_0 = "NO";
    defparam add_389_9.INJECT1_1 = "NO";
    FD1S3JX sr_i24 (.D(n6[0]), .CK(sclk), .PD(n1723), .Q(FT601_DATA_c_0)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=26, LSE_LCOL=17, LSE_RCOL=38, LSE_LLINE=201, LSE_RLINE=201 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd(51[9] 66[16])
    defparam sr_i24.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module async_fifo
//

module async_fifo (GND_net, FT601_DATA_c_15, FT601_DATA_c_14, FT601_DATA_c_13, 
            FT601_DATA_c_12, FT601_DATA_c_11, FT601_DATA_c_10, FT601_DATA_c_9, 
            FT601_DATA_c_8, FT601_DATA_c_7, FT601_DATA_c_6, FT601_DATA_c_5, 
            FT601_DATA_c_4, FT601_DATA_c_3, FT601_DATA_c_2, FT601_DATA_c_1, 
            FT601_DATA_c_0, sclk, FT601_CLK_c, FT601_SIWU_N_c, req_data, 
            link_rdy_N_90, VCC_net, n1847) /* synthesis NGD_DRC_MASK=1 */ ;
    input GND_net;
    input FT601_DATA_c_15;
    input FT601_DATA_c_14;
    input FT601_DATA_c_13;
    input FT601_DATA_c_12;
    input FT601_DATA_c_11;
    input FT601_DATA_c_10;
    input FT601_DATA_c_9;
    input FT601_DATA_c_8;
    input FT601_DATA_c_7;
    input FT601_DATA_c_6;
    input FT601_DATA_c_5;
    input FT601_DATA_c_4;
    input FT601_DATA_c_3;
    input FT601_DATA_c_2;
    input FT601_DATA_c_1;
    input FT601_DATA_c_0;
    input sclk;
    input FT601_CLK_c;
    input FT601_SIWU_N_c;
    input req_data;
    input link_rdy_N_90;
    input VCC_net;
    output n1847;
    
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(135[12:16])
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(43[9:18])
    
    wire empty, full, fifo_almst_emp;
    
    FIFO8KB async_fifo_0_1 (.DI0(FT601_DATA_c_0), .DI1(FT601_DATA_c_1), 
            .DI2(FT601_DATA_c_2), .DI3(FT601_DATA_c_3), .DI4(FT601_DATA_c_4), 
            .DI5(FT601_DATA_c_5), .DI6(FT601_DATA_c_6), .DI7(FT601_DATA_c_7), 
            .DI8(FT601_DATA_c_8), .DI9(FT601_DATA_c_9), .DI10(FT601_DATA_c_10), 
            .DI11(FT601_DATA_c_11), .DI12(FT601_DATA_c_12), .DI13(FT601_DATA_c_13), 
            .DI14(FT601_DATA_c_14), .DI15(FT601_DATA_c_15), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(full), .EMPTYI(empty), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(FT601_SIWU_N_c), 
            .RE(req_data), .ORE(req_data), .CLKW(sclk), .CLKR(FT601_CLK_c), 
            .RST(link_rdy_N_90), .RPRST(GND_net), .EF(empty), .AEF(fifo_almst_emp), 
            .FF(full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=21, LSE_RCOL=31, LSE_LLINE=223, LSE_RLINE=223 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(223[21:31])
    defparam async_fifo_0_1.DATA_WIDTH_W = 18;
    defparam async_fifo_0_1.DATA_WIDTH_R = 18;
    defparam async_fifo_0_1.REGMODE = "NOREG";
    defparam async_fifo_0_1.RESETMODE = "ASYNC";
    defparam async_fifo_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam async_fifo_0_1.CSDECODE_W = "0b11";
    defparam async_fifo_0_1.CSDECODE_R = "0b11";
    defparam async_fifo_0_1.AEPOINTER = "0b00000010100000";
    defparam async_fifo_0_1.AEPOINTER1 = "0b00000010110000";
    defparam async_fifo_0_1.AFPOINTER = "0b01111111000000";
    defparam async_fifo_0_1.AFPOINTER1 = "0b01111110110000";
    defparam async_fifo_0_1.FULLPOINTER = "0b10000000000000";
    defparam async_fifo_0_1.FULLPOINTER1 = "0b01111111110000";
    defparam async_fifo_0_1.GSR = "DISABLED";
    LUT4 i1191_1_lut (.A(fifo_almst_emp), .Z(n1847)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(223[21:31])
    defparam i1191_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module deserializer
//

module deserializer (sclk, debug, n3209, link_rdy_N_90, rbyteclk_N_94, 
            buf_clk, GND_net, buf_dataini0);
    output sclk;
    output [9:0]debug;
    output n3209;
    output link_rdy_N_90;
    output rbyteclk_N_94;
    input buf_clk;
    input GND_net;
    input buf_dataini0;
    
    wire sclk_buf /* synthesis is_clock=1, SET_AS_NETWORK=\deser_inst/sclk_buf */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(57[12:20])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(135[12:16])
    wire rbyteclk_N_94 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(63[3:11])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ddrx1.vhd(34[12:19])
    wire [5:0]hold_slip;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(61[12:21])
    
    wire n3206;
    wire [5:0]n1;
    
    wire bit_slip_N_87, sclk_buf_enable_1, n3217;
    wire [7:0]n295;
    
    wire sclk_buf_enable_2, n2724, n3207;
    wire [5:0]n138;
    
    wire bit_slip, sclk_buf_enable_9, sclk_buf_enable_25, sclk_N_74, 
        sclk_buf_enable_15;
    wire [9:0]q10_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(52[12:19])
    
    wire sclk_buf_enable_20;
    wire [1:0]q2_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(53[12:18])
    
    wire n21;
    wire [7:0]n304;
    
    wire sclk_N_75, sclk_buf_enable_10, n2942;
    wire [3:0]lnk_trnd_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(59[12:24])
    
    wire sclk_buf_enable_26, n13, sclk_buf_enable_17, sclk_buf_enable_19, 
        n14, n10, n7, n2950, n7_adj_904, n3011, n8, n3216, n16, 
        n12, n3007, locked;
    
    FD1S3IX hold_slip__i0 (.D(n1[0]), .CK(sclk_buf), .CD(n3206), .Q(hold_slip[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam hold_slip__i0.GSR = "ENABLED";
    FD1P3JX counter_FSM_i1 (.D(n295[4]), .SP(sclk_buf_enable_1), .PD(n3217), 
            .CK(sclk_buf), .Q(bit_slip_N_87));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i1.GSR = "ENABLED";
    FD1P3AX sclk_63 (.D(n2724), .SP(sclk_buf_enable_2), .CK(sclk_buf), 
            .Q(sclk));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam sclk_63.GSR = "ENABLED";
    LUT4 i467_3_lut_4_lut (.A(hold_slip[3]), .B(n3207), .C(hold_slip[4]), 
         .D(hold_slip[5]), .Z(n138[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i467_3_lut_4_lut.init = 16'h7f80;
    LUT4 i955_1_lut (.A(bit_slip), .Z(sclk_buf_enable_9)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam i955_1_lut.init = 16'h5555;
    FD1P3IX hold_slip__i2 (.D(n138[2]), .SP(sclk_buf_enable_25), .CD(n3206), 
            .CK(sclk_buf), .Q(hold_slip[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam hold_slip__i2.GSR = "ENABLED";
    FD1P3IX hold_slip__i1 (.D(n138[1]), .SP(sclk_buf_enable_25), .CD(n3206), 
            .CK(sclk_buf), .Q(hold_slip[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam hold_slip__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n295[4]), .B(sclk_N_74), .Z(sclk_buf_enable_15)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3IX q10_buf__i0 (.D(q2_buf[0]), .SP(sclk_buf_enable_20), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i0.GSR = "ENABLED";
    FD1P3IX counter_FSM_i5 (.D(sclk_buf_enable_15), .SP(sclk_buf_enable_9), 
            .CD(n3217), .CK(sclk_buf), .Q(n295[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_114 (.A(n295[4]), .B(n295[2]), .Z(n21)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_2_lut_adj_114.init = 16'h4444;
    FD1P3IX counter_FSM_i4 (.D(n21), .SP(sclk_buf_enable_9), .CD(n3217), 
            .CK(sclk_buf), .Q(sclk_N_74));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i4.GSR = "ENABLED";
    FD1P3IX counter_FSM_i3 (.D(n304[2]), .SP(sclk_buf_enable_9), .CD(n3217), 
            .CK(sclk_buf), .Q(n295[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i3.GSR = "ENABLED";
    FD1P3IX counter_FSM_i2 (.D(n304[1]), .SP(sclk_buf_enable_9), .CD(n3217), 
            .CK(sclk_buf), .Q(sclk_N_75));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam counter_FSM_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_115 (.A(sclk_N_75), .B(n295[4]), .Z(n304[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_2_lut_adj_115.init = 16'h2222;
    LUT4 i1_2_lut_adj_116 (.A(bit_slip_N_87), .B(n295[4]), .Z(n304[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i1_2_lut_adj_116.init = 16'h2222;
    FD1P3AX bit_slip_67 (.D(n2942), .SP(sclk_buf_enable_10), .CK(sclk_buf), 
            .Q(bit_slip));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam bit_slip_67.GSR = "ENABLED";
    FD1P3AX q_i0_i9 (.D(q10_buf[9]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[9])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i9.GSR = "ENABLED";
    FD1P3AX q_i0_i8 (.D(q10_buf[8]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[8])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i8.GSR = "ENABLED";
    FD1P3AX q_i0_i7 (.D(q10_buf[7]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i7.GSR = "ENABLED";
    FD1P3AX q_i0_i6 (.D(q10_buf[6]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i6.GSR = "ENABLED";
    FD1P3AX q_i0_i5 (.D(q10_buf[5]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i5.GSR = "ENABLED";
    FD1P3AX q_i0_i4 (.D(q10_buf[4]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i4.GSR = "ENABLED";
    FD1P3AX q_i0_i3 (.D(q10_buf[3]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i3.GSR = "ENABLED";
    FD1P3AX q_i0_i2 (.D(q10_buf[2]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i2.GSR = "ENABLED";
    FD1P3AX q_i0_i1 (.D(q10_buf[1]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i1.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i3 (.D(lnk_trnd_buf[2]), .SP(sclk_buf_enable_26), 
            .CK(sclk_buf), .Q(lnk_trnd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam lnk_trnd_buf_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_117 (.A(n13), .B(sclk_buf_enable_26), .Z(n2942)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_117.init = 16'h4444;
    FD1P3AX q_i0_i0 (.D(q10_buf[0]), .SP(bit_slip_N_87), .CK(sclk_buf), 
            .Q(debug[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q_i0_i0.GSR = "ENABLED";
    FD1P3IX q10_buf__i9 (.D(q2_buf[1]), .SP(n295[4]), .CD(n3217), .CK(sclk_buf), 
            .Q(q10_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i9.GSR = "ENABLED";
    LUT4 i2397_2_lut_4_lut (.A(sclk_N_74), .B(n295[2]), .C(n295[4]), .D(sclk_N_75), 
         .Z(sclk_buf_enable_20)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2397_2_lut_4_lut.init = 16'h0001;
    FD1P3IX q10_buf__i8 (.D(q2_buf[0]), .SP(n295[4]), .CD(n3217), .CK(sclk_buf), 
            .Q(q10_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i8.GSR = "ENABLED";
    FD1P3IX q10_buf__i7 (.D(q2_buf[1]), .SP(sclk_buf_enable_15), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i7.GSR = "ENABLED";
    FD1P3IX q10_buf__i6 (.D(q2_buf[0]), .SP(sclk_buf_enable_15), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i6.GSR = "ENABLED";
    FD1P3IX q10_buf__i5 (.D(q2_buf[1]), .SP(sclk_buf_enable_17), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i5.GSR = "ENABLED";
    FD1P3IX q10_buf__i4 (.D(q2_buf[0]), .SP(sclk_buf_enable_17), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i4.GSR = "ENABLED";
    FD1P3IX q10_buf__i3 (.D(q2_buf[1]), .SP(sclk_buf_enable_19), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i3.GSR = "ENABLED";
    FD1P3IX q10_buf__i2 (.D(q2_buf[0]), .SP(sclk_buf_enable_19), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i2.GSR = "ENABLED";
    FD1P3IX q10_buf__i1 (.D(q2_buf[1]), .SP(sclk_buf_enable_20), .CD(n3217), 
            .CK(sclk_buf), .Q(q10_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(81[9] 116[16])
    defparam q10_buf__i1.GSR = "ENABLED";
    LUT4 i439_2_lut (.A(hold_slip[1]), .B(hold_slip[0]), .Z(n138[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i439_2_lut.init = 16'h6666;
    LUT4 i7_4_lut (.A(hold_slip[2]), .B(n14), .C(n10), .D(n3206), .Z(sclk_buf_enable_26)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7_4_lut.init = 16'h0080;
    LUT4 i3_4_lut_rep_41 (.A(lnk_trnd_buf[0]), .B(lnk_trnd_buf[3]), .C(lnk_trnd_buf[2]), 
         .D(lnk_trnd_buf[1]), .Z(n3209)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(76[17:92])
    defparam i3_4_lut_rep_41.init = 16'h8000;
    PFUMX i21 (.BLUT(n7), .ALUT(n2950), .C0(q10_buf[7]), .Z(n13));
    LUT4 i6_4_lut (.A(hold_slip[5]), .B(hold_slip[3]), .C(hold_slip[1]), 
         .D(hold_slip[4]), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 link_rdy_I_0_1_lut_4_lut (.A(lnk_trnd_buf[0]), .B(lnk_trnd_buf[3]), 
         .C(lnk_trnd_buf[2]), .D(lnk_trnd_buf[1]), .Z(link_rdy_N_90)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(76[17:92])
    defparam link_rdy_I_0_1_lut_4_lut.init = 16'h7fff;
    FD1P3IX hold_slip__i4 (.D(n138[4]), .SP(sclk_buf_enable_25), .CD(n3206), 
            .CK(sclk_buf), .Q(hold_slip[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam hold_slip__i4.GSR = "ENABLED";
    FD1P3IX hold_slip__i3 (.D(n138[3]), .SP(sclk_buf_enable_25), .CD(n3206), 
            .CK(sclk_buf), .Q(hold_slip[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam hold_slip__i3.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i2 (.D(lnk_trnd_buf[1]), .SP(sclk_buf_enable_26), 
            .CK(sclk_buf), .Q(lnk_trnd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam lnk_trnd_buf_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(sclk_N_74), .B(n295[2]), .C(n295[4]), .D(sclk_N_75), 
         .Z(sclk_buf_enable_19)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i2_2_lut (.A(bit_slip_N_87), .B(hold_slip[0]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1P3AX lnk_trnd_buf_i0_i1 (.D(lnk_trnd_buf[0]), .SP(sclk_buf_enable_26), 
            .CK(sclk_buf), .Q(lnk_trnd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam lnk_trnd_buf_i0_i1.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(q10_buf[4]), .B(n7_adj_904), .C(n3011), .D(n8), 
         .Z(n2950)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(159[32:83])
    defparam i5_4_lut.init = 16'h0800;
    LUT4 i441_2_lut_rep_48 (.A(hold_slip[1]), .B(hold_slip[0]), .Z(n3216)) /* synthesis lut_function=(A (B)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i441_2_lut_rep_48.init = 16'h8888;
    LUT4 i446_2_lut_3_lut (.A(hold_slip[1]), .B(hold_slip[0]), .C(hold_slip[2]), 
         .Z(n138[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i446_2_lut_3_lut.init = 16'h7878;
    LUT4 i8_4_lut (.A(q10_buf[3]), .B(n16), .C(n12), .D(q10_buf[2]), 
         .Z(n7)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(159[32:83])
    defparam i8_4_lut.init = 16'h0040;
    LUT4 i448_2_lut_rep_39_3_lut (.A(hold_slip[1]), .B(hold_slip[0]), .C(hold_slip[2]), 
         .Z(n3207)) /* synthesis lut_function=(A (B (C))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i448_2_lut_rep_39_3_lut.init = 16'h8080;
    LUT4 i453_2_lut_3_lut_4_lut (.A(hold_slip[1]), .B(hold_slip[0]), .C(hold_slip[3]), 
         .D(hold_slip[2]), .Z(n138[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i453_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut (.A(n295[2]), .B(sclk_N_74), .C(n295[4]), .Z(sclk_buf_enable_17)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i2_3_lut.init = 16'h0202;
    LUT4 i7_4_lut_adj_118 (.A(q10_buf[0]), .B(q10_buf[1]), .C(q10_buf[9]), 
         .D(n3007), .Z(n16)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(159[32:83])
    defparam i7_4_lut_adj_118.init = 16'h0080;
    LUT4 i2325_2_lut (.A(q10_buf[5]), .B(q10_buf[8]), .Z(n3007)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2325_2_lut.init = 16'heeee;
    LUT4 i3_2_lut (.A(q10_buf[4]), .B(q10_buf[6]), .Z(n12)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(159[32:83])
    defparam i3_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_119 (.A(q10_buf[5]), .B(q10_buf[8]), .Z(n7_adj_904)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(159[32:83])
    defparam i1_2_lut_adj_119.init = 16'h8888;
    LUT4 i2329_4_lut (.A(q10_buf[6]), .B(q10_buf[9]), .C(q10_buf[0]), 
         .D(q10_buf[1]), .Z(n3011)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2329_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_120 (.A(q10_buf[3]), .B(q10_buf[2]), .Z(n8)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(159[32:83])
    defparam i2_2_lut_adj_120.init = 16'h8888;
    LUT4 i2379_2_lut_rep_38 (.A(locked), .B(n3209), .Z(n3206)) /* synthesis lut_function=((B)+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(155[20:51])
    defparam i2379_2_lut_rep_38.init = 16'hdddd;
    LUT4 i564_2_lut_3_lut_4_lut (.A(locked), .B(n3209), .C(hold_slip[0]), 
         .D(bit_slip_N_87), .Z(n1[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(155[20:51])
    defparam i564_2_lut_3_lut_4_lut.init = 16'h0f2d;
    LUT4 i395_2_lut_rep_33_3_lut (.A(locked), .B(n3209), .C(bit_slip_N_87), 
         .Z(sclk_buf_enable_25)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(155[20:51])
    defparam i395_2_lut_rep_33_3_lut.init = 16'hfdfd;
    LUT4 i2_2_lut_3_lut_4_lut (.A(locked), .B(n3209), .C(sclk_N_75), .D(bit_slip_N_87), 
         .Z(sclk_buf_enable_10)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(155[20:51])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i460_2_lut_3_lut_4_lut (.A(hold_slip[2]), .B(n3216), .C(hold_slip[4]), 
         .D(hold_slip[3]), .Z(n138[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i460_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_adj_121 (.A(n3209), .B(locked), .C(sclk_N_75), .Z(n2724)) /* synthesis lut_function=(A (B (C))) */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i2_3_lut_adj_121.init = 16'h8080;
    FD1P3IX hold_slip__i5 (.D(n138[5]), .SP(sclk_buf_enable_25), .CD(n3206), 
            .CK(sclk_buf), .Q(hold_slip[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam hold_slip__i5.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf_i0_i0 (.D(n13), .SP(sclk_buf_enable_26), .CK(sclk_buf), 
            .Q(lnk_trnd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=42, LSE_LLINE=182, LSE_RLINE=182 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(149[9] 182[16])
    defparam lnk_trnd_buf_i0_i0.GSR = "ENABLED";
    INV i2469 (.A(sclk), .Z(rbyteclk_N_94));
    ddrx1 ddrx1_inst (.sclk_buf(sclk_buf), .buf_clk(buf_clk), .n3209(n3209), 
          .locked(locked), .GND_net(GND_net), .buf_dataini0(buf_dataini0), 
          .q2_buf({q2_buf}), .n3217(n3217), .sclk_N_74(sclk_N_74), .sclk_N_75(sclk_N_75), 
          .sclk_buf_enable_2(sclk_buf_enable_2), .bit_slip(bit_slip), .sclk_buf_enable_1(sclk_buf_enable_1)) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    
endmodule
//
// Verilog Description of module ddrx1
//

module ddrx1 (sclk_buf, buf_clk, n3209, locked, GND_net, buf_dataini0, 
            q2_buf, n3217, sclk_N_74, sclk_N_75, sclk_buf_enable_2, 
            bit_slip, sclk_buf_enable_1) /* synthesis NGD_DRC_MASK=1 */ ;
    output sclk_buf;
    input buf_clk;
    input n3209;
    output locked;
    input GND_net;
    input buf_dataini0;
    output [1:0]q2_buf;
    output n3217;
    input sclk_N_74;
    input sclk_N_75;
    output sclk_buf_enable_2;
    input bit_slip;
    output sclk_buf_enable_1;
    
    wire sclk_buf /* synthesis is_clock=1, SET_AS_NETWORK=\deser_inst/sclk_buf */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(57[12:20])
    wire buf_clk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ddrx1.vhd(34[12:19])
    
    wire dqsdel, dataini_t0;
    
    DLLDELC Inst4_DLLDELC (.CLKI(buf_clk), .DQSDEL(dqsdel), .CLKO(sclk_buf)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=64, LSE_RLINE=64 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    defparam Inst4_DLLDELC.DEL_ADJ = "PLUS";
    defparam Inst4_DLLDELC.DEL_VAL = 0;
    DQSDLLC Inst3_DQSDLLC (.CLK(sclk_buf), .RST(GND_net), .UDDCNTLN(GND_net), 
            .FREEZE(n3209), .LOCK(locked), .DQSDEL(dqsdel)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=64, LSE_RLINE=64 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    defparam Inst3_DQSDLLC.GSR = "ENABLED";
    defparam Inst3_DQSDLLC.DEL_ADJ = "PLUS";
    defparam Inst3_DQSDLLC.DEL_VAL = 0;
    defparam Inst3_DQSDLLC.LOCK_SENSITIVITY = "LOW";
    defparam Inst3_DQSDLLC.FIN = "375.0";
    defparam Inst3_DQSDLLC.FORCE_MAX_DELAY = "NO";
    DELAYE udel_dataini0 (.A(buf_dataini0), .Z(dataini_t0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=64, LSE_RLINE=64 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    defparam udel_dataini0.DEL_MODE = "SCLK_ALIGNED";
    defparam udel_dataini0.DEL_VALUE = "DELAY0";
    IDDRXE Inst5_IDDRXE0 (.D(dataini_t0), .SCLK(sclk_buf), .RST(GND_net), 
           .Q0(q2_buf[0]), .Q1(q2_buf[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=64, LSE_RLINE=64 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    defparam Inst5_IDDRXE0.GSR = "ENABLED";
    LUT4 i391_1_lut_rep_49 (.A(locked), .Z(n3217)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    defparam i391_1_lut_rep_49.init = 16'h5555;
    LUT4 i2_3_lut_3_lut (.A(locked), .B(sclk_N_74), .C(sclk_N_75), .Z(sclk_buf_enable_2)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd(64[18:23])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i2403_2_lut (.A(locked), .B(bit_slip), .Z(sclk_buf_enable_1)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2403_2_lut.init = 16'h7777;
    
endmodule
//
// Verilog Description of module ft601
//

module ft601 (FT601_CLK_c, n1847, FT601_OE_N_c, FT601_RD_N_c, req_data, 
            FT601_WR_N_c, n1148, FT601_RXF_N_c, FT601_TXE_N_c);
    input FT601_CLK_c;
    input n1847;
    output FT601_OE_N_c;
    output FT601_RD_N_c;
    output req_data;
    output FT601_WR_N_c;
    output n1148;
    input FT601_RXF_N_c;
    input FT601_TXE_N_c;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(43[9:18])
    wire [2:0]i_state;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(64[12:19])
    
    wire n2319, FT601_CLK_c_enable_17;
    wire [2:0]n725;
    wire [2:0]i_pre_valid;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(78[12:23])
    
    wire n3210;
    wire [2:0]i_tx_state;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(76[12:22])
    
    wire FT601_CLK_c_enable_15, n110, n3205;
    wire [2:0]i_valid;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(77[12:19])
    
    wire n3162, i_rd_en, ft601_txe, n82, i_dat_rdy, ft601_oe_N_849, 
        n11, n3203, n3165, FT601_CLK_c_enable_3, n1930, n1873, n3166, 
        ft601_rxf_n_N_868, n45, ft601_txe_n_N_866, ft601_oe_N_840, ft601_rd_N_824, 
        i_byte_en, FT601_CLK_c_enable_8, n2743, FT601_CLK_c_enable_5, 
        n1823;
    wire [2:0]n618;
    
    wire n2947, n3208, FT601_CLK_c_enable_6, ft601_rd, FT601_CLK_c_enable_7, 
        n3214, n3161, FT601_CLK_c_enable_11, n3204, FT601_CLK_c_enable_9, 
        n2916, ft601_oe, n2716, n1722, FT601_CLK_c_enable_10;
    wire [2:0]i_valid_2__N_575;
    
    wire i_wr_en, FT601_CLK_c_enable_18, n2725, n3196, n74, n3, 
        n3215, n102, n31;
    wire [2:0]n578;
    
    wire n46, n69, n2476, n2436, n3167, n2953, n2494;
    
    LUT4 i2394_2_lut (.A(i_state[2]), .B(i_state[0]), .Z(n2319)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2394_2_lut.init = 16'h1111;
    FD1P3AX i_state_i0_i0 (.D(n725[0]), .SP(FT601_CLK_c_enable_17), .CK(FT601_CLK_c), 
            .Q(i_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i_state_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_42 (.A(i_pre_valid[0]), .B(n1847), .Z(n3210)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(78[12:23])
    defparam i1_2_lut_rep_42.init = 16'heeee;
    FD1P3AX i_tx_state_i0_i0 (.D(n110), .SP(FT601_CLK_c_enable_15), .CK(FT601_CLK_c), 
            .Q(i_tx_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_tx_state_i0_i0.GSR = "ENABLED";
    LUT4 n134_bdd_4_lut (.A(n3205), .B(i_tx_state[0]), .C(i_valid[2]), 
         .D(i_tx_state[1]), .Z(n3162)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n134_bdd_4_lut.init = 16'hc022;
    LUT4 i1_2_lut_rep_37_3_lut_4_lut (.A(i_pre_valid[0]), .B(n1847), .C(i_rd_en), 
         .D(ft601_txe), .Z(n3205)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(78[12:23])
    defparam i1_2_lut_rep_37_3_lut_4_lut.init = 16'he000;
    LUT4 i1_4_lut (.A(i_state[0]), .B(i_state[2]), .C(i_state[1]), .D(n82), 
         .Z(n725[0])) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h5150;
    LUT4 i24_3_lut_3_lut_4_lut (.A(ft601_txe), .B(i_dat_rdy), .C(ft601_oe_N_849), 
         .D(i_state[2]), .Z(n11)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam i24_3_lut_3_lut_4_lut.init = 16'h0ff8;
    LUT4 i2327_2_lut_rep_35_3_lut (.A(ft601_txe), .B(i_dat_rdy), .C(i_state[2]), 
         .Z(n3203)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam i2327_2_lut_rep_35_3_lut.init = 16'hf8f8;
    LUT4 ft601_oe_N_849_bdd_2_lut_2440 (.A(i_state[2]), .B(i_dat_rdy), .Z(n3165)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam ft601_oe_N_849_bdd_2_lut_2440.init = 16'h7777;
    LUT4 i1_2_lut_3_lut (.A(ft601_txe), .B(i_dat_rdy), .C(ft601_oe_N_849), 
         .Z(n82)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_3_lut_adj_102 (.A(i_tx_state[1]), .B(i_tx_state[2]), .C(i_tx_state[0]), 
         .Z(FT601_CLK_c_enable_3)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_102.init = 16'h6060;
    FD1P3IX i_valid_i0 (.D(n1873), .SP(FT601_CLK_c_enable_3), .CD(n1930), 
            .CK(FT601_CLK_c), .Q(i_valid[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_valid_i0.GSR = "ENABLED";
    LUT4 ft601_oe_N_849_bdd_4_lut_2435 (.A(ft601_oe_N_849), .B(ft601_txe), 
         .C(i_state[2]), .D(i_dat_rdy), .Z(n3166)) /* synthesis lut_function=(!(A (C)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam ft601_oe_N_849_bdd_4_lut_2435.init = 16'h5e5a;
    FD1S3AX ft601_rxf_664 (.D(ft601_rxf_n_N_868), .CK(FT601_CLK_c), .Q(ft601_oe_N_849)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam ft601_rxf_664.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_103 (.A(i_state[1]), .B(i_dat_rdy), .C(i_state[2]), 
         .Z(n45)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_103.init = 16'h1010;
    FD1S3AX ft601_txe_665 (.D(ft601_txe_n_N_866), .CK(FT601_CLK_c), .Q(ft601_txe)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam ft601_txe_665.GSR = "ENABLED";
    FD1S3AX ft601_oe_n_666 (.D(ft601_oe_N_840), .CK(FT601_CLK_c), .Q(FT601_OE_N_c)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam ft601_oe_n_666.GSR = "ENABLED";
    FD1S3AX ft601_rd_n_667 (.D(ft601_rd_N_824), .CK(FT601_CLK_c), .Q(FT601_RD_N_c)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam ft601_rd_n_667.GSR = "ENABLED";
    FD1P3AX i_byte_en_668 (.D(n2743), .SP(FT601_CLK_c_enable_8), .CK(FT601_CLK_c), 
            .Q(i_byte_en)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i_byte_en_668.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_104 (.A(i_tx_state[1]), .B(i_tx_state[2]), .C(i_tx_state[0]), 
         .Z(n1930)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut_adj_104.init = 16'h2020;
    FD1P3JX i_valid_i2 (.D(n618[2]), .SP(FT601_CLK_c_enable_5), .PD(n1823), 
            .CK(FT601_CLK_c), .Q(i_valid[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_valid_i2.GSR = "ENABLED";
    LUT4 i3_4_lut_4_lut (.A(i_tx_state[1]), .B(n2947), .C(n3208), .D(n1847), 
         .Z(req_data)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    FD1P3AX i_rd_en_672 (.D(n2319), .SP(FT601_CLK_c_enable_6), .CK(FT601_CLK_c), 
            .Q(i_rd_en)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i_rd_en_672.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(i_tx_state[1]), .B(i_tx_state[2]), .C(i_tx_state[0]), 
         .Z(n1823)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_3_lut_3_lut.init = 16'h4040;
    FD1P3AX ft601_rd_670 (.D(n3214), .SP(FT601_CLK_c_enable_7), .CK(FT601_CLK_c), 
            .Q(ft601_rd)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam ft601_rd_670.GSR = "ENABLED";
    LUT4 n134_bdd_2_lut_2_lut (.A(i_tx_state[1]), .B(i_tx_state[0]), .Z(n3161)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam n134_bdd_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_4_lut (.A(i_tx_state[1]), .B(i_tx_state[0]), .C(n3205), 
         .D(i_tx_state[2]), .Z(FT601_CLK_c_enable_11)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h4454;
    LUT4 i1_4_lut_4_lut_4_lut (.A(i_tx_state[1]), .B(i_tx_state[0]), .C(n3204), 
         .D(i_tx_state[2]), .Z(FT601_CLK_c_enable_9)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0411;
    LUT4 i1_4_lut_4_lut (.A(i_tx_state[1]), .B(i_tx_state[0]), .C(i_tx_state[2]), 
         .D(i_pre_valid[0]), .Z(n2916)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+!(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_4_lut_4_lut.init = 16'h4140;
    FD1P3AX ft601_oe_669 (.D(n2716), .SP(FT601_CLK_c_enable_8), .CK(FT601_CLK_c), 
            .Q(ft601_oe)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam ft601_oe_669.GSR = "ENABLED";
    FD1P3IX i_dat_rdy_676 (.D(n3210), .SP(FT601_CLK_c_enable_9), .CD(n1722), 
            .CK(FT601_CLK_c), .Q(i_dat_rdy));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_dat_rdy_676.GSR = "ENABLED";
    FD1P3AX i_valid_i1 (.D(i_valid_2__N_575[1]), .SP(FT601_CLK_c_enable_10), 
            .CK(FT601_CLK_c), .Q(i_valid[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_valid_i1.GSR = "ENABLED";
    FD1P3AX i_wr_en_677 (.D(n2916), .SP(FT601_CLK_c_enable_11), .CK(FT601_CLK_c), 
            .Q(i_wr_en));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_wr_en_677.GSR = "ENABLED";
    FD1P3AX i_pre_valid_i0_i2 (.D(n2725), .SP(FT601_CLK_c_enable_18), .CK(FT601_CLK_c), 
            .Q(i_pre_valid[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_pre_valid_i0_i2.GSR = "ENABLED";
    FD1P3AX i_pre_valid_i0_i1 (.D(n3196), .SP(FT601_CLK_c_enable_18), .CK(FT601_CLK_c), 
            .Q(i_pre_valid[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_pre_valid_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(ft601_txe), .B(i_rd_en), .C(i_tx_state[0]), 
         .D(n3210), .Z(n74)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_rep_36_4_lut (.A(ft601_txe), .B(i_rd_en), .C(n1847), 
         .D(i_pre_valid[1]), .Z(n3204)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_3_lut_rep_36_4_lut.init = 16'h8880;
    LUT4 i8_3_lut (.A(i_pre_valid[0]), .B(n3), .C(i_tx_state[1]), .Z(n618[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(76[12:22])
    defparam i8_3_lut.init = 16'hcaca;
    LUT4 i7_4_lut (.A(i_valid[2]), .B(i_valid[1]), .C(i_tx_state[0]), 
         .D(ft601_txe), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(76[12:22])
    defparam i7_4_lut.init = 16'hc0ca;
    LUT4 i113_4_lut (.A(n3203), .B(n45), .C(i_state[0]), .D(n3215), 
         .Z(FT601_CLK_c_enable_6)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i113_4_lut.init = 16'hc0ca;
    FD1P3AX i_tx_state_i0_i2 (.D(n102), .SP(FT601_CLK_c_enable_15), .CK(FT601_CLK_c), 
            .Q(i_tx_state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_tx_state_i0_i2.GSR = "ENABLED";
    FD1P3AX i_tx_state_i0_i1 (.D(n31), .SP(FT601_CLK_c_enable_15), .CK(FT601_CLK_c), 
            .Q(i_tx_state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_tx_state_i0_i1.GSR = "ENABLED";
    FD1P3AX i_state_i0_i2 (.D(n725[2]), .SP(FT601_CLK_c_enable_17), .CK(FT601_CLK_c), 
            .Q(i_state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i_state_i0_i2.GSR = "ENABLED";
    FD1P3AX i_state_i0_i1 (.D(n725[1]), .SP(FT601_CLK_c_enable_17), .CK(FT601_CLK_c), 
            .Q(i_state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i_state_i0_i1.GSR = "ENABLED";
    FD1P3AX i_pre_valid_i0_i0 (.D(n578[0]), .SP(FT601_CLK_c_enable_18), 
            .CK(FT601_CLK_c), .Q(i_pre_valid[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=239, LSE_RLINE=239 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i_pre_valid_i0_i0.GSR = "ENABLED";
    LUT4 n74_bdd_4_lut (.A(n74), .B(i_pre_valid[2]), .C(n46), .D(i_tx_state[1]), 
         .Z(n3196)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n74_bdd_4_lut.init = 16'hf088;
    LUT4 ft601_oe_N_849_bdd_4_lut_2441 (.A(ft601_oe_N_849), .B(i_state[2]), 
         .C(i_state[0]), .D(i_state[1]), .Z(FT601_CLK_c_enable_7)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam ft601_oe_N_849_bdd_4_lut_2441.init = 16'h0034;
    LUT4 i2_3_lut_rep_46 (.A(i_state[1]), .B(i_state[0]), .C(i_state[2]), 
         .Z(n3214)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_46.init = 16'h0404;
    LUT4 i1_3_lut_3_lut_adj_105 (.A(i_state[1]), .B(i_state[0]), .C(i_state[2]), 
         .Z(n725[1])) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;
    defparam i1_3_lut_3_lut_adj_105.init = 16'h2626;
    LUT4 i2400_3_lut_4_lut (.A(ft601_oe_N_849), .B(i_state[2]), .C(i_state[0]), 
         .D(i_state[1]), .Z(n2743)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i2400_3_lut_4_lut.init = 16'h000d;
    LUT4 i1_2_lut (.A(i_valid[2]), .B(i_pre_valid[0]), .Z(n46)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 n69_bdd_4_lut (.A(n69), .B(n2476), .C(i_tx_state[1]), .D(n2436), 
         .Z(FT601_CLK_c_enable_15)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n69_bdd_4_lut.init = 16'hffca;
    LUT4 n3167_bdd_3_lut_3_lut (.A(i_state[2]), .B(i_state[1]), .C(n3167), 
         .Z(FT601_CLK_c_enable_17)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam n3167_bdd_3_lut_3_lut.init = 16'h7474;
    LUT4 i2319_2_lut_rep_47 (.A(i_state[1]), .B(ft601_oe_N_849), .Z(n3215)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2319_2_lut_rep_47.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.A(i_tx_state[2]), .B(n3204), .C(i_tx_state[0]), 
         .D(i_tx_state[1]), .Z(n110)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut_4_lut_adj_106.init = 16'h0f2f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_107 (.A(i_state[1]), .B(ft601_oe_N_849), 
         .C(i_dat_rdy), .D(ft601_txe), .Z(n2953)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_107.init = 16'h1000;
    LUT4 i1_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(i_tx_state[1]), 
         .Z(FT601_CLK_c_enable_10)) /* synthesis lut_function=(!((B (C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2a2a;
    LUT4 i1223_3_lut (.A(n2494), .B(i_valid[0]), .C(i_tx_state[1]), .Z(i_valid_2__N_575[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(76[12:22])
    defparam i1223_3_lut.init = 16'hcaca;
    LUT4 i18_4_lut (.A(n1873), .B(i_valid[2]), .C(i_tx_state[2]), .D(i_tx_state[0]), 
         .Z(n2494)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i18_4_lut.init = 16'hcaaa;
    LUT4 i1_2_lut_3_lut_4_lut_adj_108 (.A(n3210), .B(n3208), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(n2436)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(78[12:23])
    defparam i1_2_lut_3_lut_4_lut_adj_108.init = 16'h0008;
    LUT4 i2_3_lut (.A(i_valid[2]), .B(i_pre_valid[1]), .C(i_tx_state[1]), 
         .Z(n2725)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1811_4_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(i_valid[1]), 
         .D(i_valid[0]), .Z(n2476)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(76[12:22])
    defparam i1811_4_lut.init = 16'h1113;
    LUT4 i1_3_lut_adj_109 (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(n3204), 
         .Z(n69)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_3_lut_adj_109.init = 16'h2a2a;
    LUT4 i2389_2_lut (.A(i_tx_state[1]), .B(i_tx_state[0]), .Z(n102)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2389_2_lut.init = 16'h1111;
    PFUMX i2426 (.BLUT(n3166), .ALUT(n3165), .C0(i_state[0]), .Z(n3167));
    LUT4 i1_2_lut_adj_110 (.A(ft601_txe), .B(i_valid[1]), .Z(n1873)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(87[9] 94[16])
    defparam i1_2_lut_adj_110.init = 16'h4444;
    LUT4 i1810_4_lut (.A(i_state[2]), .B(i_state[1]), .C(i_state[0]), 
         .D(n2953), .Z(n725[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(64[12:19])
    defparam i1810_4_lut.init = 16'hc5c0;
    LUT4 i_tx_state_1__bdd_4_lut (.A(i_tx_state[1]), .B(n3205), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(FT601_CLK_c_enable_5)) /* synthesis lut_function=(!(A (D)+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam i_tx_state_1__bdd_4_lut.init = 16'h50ae;
    LUT4 i20_4_lut (.A(n74), .B(i_valid[2]), .C(i_tx_state[1]), .D(i_pre_valid[1]), 
         .Z(n578[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(76[12:22])
    defparam i20_4_lut.init = 16'hcac0;
    LUT4 i_wr_en_I_0_1_lut (.A(i_wr_en), .Z(FT601_WR_N_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(236[19:30])
    defparam i_wr_en_I_0_1_lut.init = 16'h5555;
    LUT4 i538_1_lut (.A(i_byte_en), .Z(n1148)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(233[5:13])
    defparam i538_1_lut.init = 16'h5555;
    LUT4 i1248_3_lut_4_lut (.A(i_tx_state[2]), .B(n3204), .C(i_tx_state[1]), 
         .D(i_tx_state[0]), .Z(n31)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (C (D)+!C !(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1248_3_lut_4_lut.init = 16'h0df0;
    PFUMX i2424 (.BLUT(n3162), .ALUT(n3161), .C0(i_tx_state[2]), .Z(FT601_CLK_c_enable_18));
    LUT4 ft601_rxf_n_I_0_1_lut (.A(FT601_RXF_N_c), .Z(ft601_rxf_n_N_868)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(89[26:41])
    defparam ft601_rxf_n_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_adj_111 (.A(i_pre_valid[1]), .B(i_tx_state[2]), .C(i_tx_state[0]), 
         .Z(n2947)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_111.init = 16'h4141;
    LUT4 ft601_txe_n_I_0_1_lut (.A(FT601_TXE_N_c), .Z(ft601_txe_n_N_866)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(90[26:41])
    defparam ft601_txe_n_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_112 (.A(i_tx_state[2]), .B(n3204), .C(i_tx_state[0]), 
         .D(i_tx_state[1]), .Z(n1722)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut_4_lut_adj_112.init = 16'h0020;
    LUT4 ft601_oe_I_0_1_lut (.A(ft601_oe), .Z(ft601_oe_N_840)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(91[27:39])
    defparam ft601_oe_I_0_1_lut.init = 16'h5555;
    LUT4 ft601_rd_I_0_1_lut (.A(ft601_rd), .Z(ft601_rd_N_824)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(92[27:39])
    defparam ft601_rd_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_adj_113 (.A(i_state[0]), .B(i_state[1]), .C(n11), .Z(FT601_CLK_c_enable_8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_113.init = 16'h1010;
    LUT4 i2_4_lut_4_lut (.A(ft601_oe_N_849), .B(i_state[2]), .C(i_state[0]), 
         .D(i_state[1]), .Z(n2716)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(98[9] 148[16])
    defparam i2_4_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_40 (.A(ft601_txe), .B(i_rd_en), .Z(n3208)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_40.init = 16'h8888;
    
endmodule
//
// Verilog Description of module dec_8b10b
//

module dec_8b10b (mode_N_2, FT601_DATA_c_10, sclk, debug, FT601_DATA_c_8, 
            rbyteclk_N_94, FT601_DATA_c_9, FT601_DATA_c_11, FT601_DATA_c_15, 
            FT601_DATA_c_14, FT601_DATA_c_13, FT601_DATA_c_12);
    output mode_N_2;
    output FT601_DATA_c_10;
    input sclk;
    input [9:0]debug;
    output FT601_DATA_c_8;
    input rbyteclk_N_94;
    output FT601_DATA_c_9;
    output FT601_DATA_c_11;
    output FT601_DATA_c_15;
    output FT601_DATA_c_14;
    output FT601_DATA_c_13;
    output FT601_DATA_c_12;
    
    wire mode_N_2 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(50[9:21])
    wire mode /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(139[12:16])
    wire sclk /* synthesis is_clock=1, SET_AS_NETWORK=sclk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd(135[12:16])
    wire rbyteclk_N_94 /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(63[3:11])
    
    wire co, n1484, n2966, ao, ctrl_ind_N_91, bo, ao_N_204, p22_N_112, 
        n3185, bo_N_203, co_N_202, do, do_N_201, eo, eo_N_200, 
        fo, fo_N_199, go, go_N_198, ho, ho_N_197, n3211, n20, 
        p31, n4, n3158, n3157, n15, n18, n3212, n3202, n3170, 
        p13, or123_N_156, or122_N_149, n3213, n15_adj_903, or122_N_151, 
        n1527, n2973, n2932, or124_N_159, n3199, n2974, n30, n24, 
        n27, n3200, or132_N_184, n13, n6, ior134, n3169, n3198;
    
    INV i2470 (.A(mode), .Z(mode_N_2));
    FD1S3AX dec_data_i3 (.D(co), .CK(sclk), .Q(FT601_DATA_c_10)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i3.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n1484), .B(debug[2]), .Z(n2966)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut.init = 16'h2222;
    FD1S3AX dec_data_i1 (.D(ao), .CK(sclk), .Q(FT601_DATA_c_8)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i1.GSR = "ENABLED";
    FD1S3AX ko_227 (.D(ctrl_ind_N_91), .CK(rbyteclk_N_94), .Q(mode)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(133[3] 137[10])
    defparam ko_227.GSR = "ENABLED";
    FD1S3AX dec_data_i2 (.D(bo), .CK(sclk), .Q(FT601_DATA_c_9)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i2.GSR = "ENABLED";
    FD1S3AX ao_228 (.D(ao_N_204), .CK(rbyteclk_N_94), .Q(ao)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(182[3] 194[10])
    defparam ao_228.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(p22_N_112), .B(debug[4]), .C(n3185), .D(debug[8]), 
         .Z(n1484)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(145[12:47])
    defparam i1_4_lut.init = 16'hc832;
    FD1S3AX bo_229 (.D(bo_N_203), .CK(rbyteclk_N_94), .Q(bo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(182[3] 194[10])
    defparam bo_229.GSR = "ENABLED";
    FD1S3AX co_230 (.D(co_N_202), .CK(rbyteclk_N_94), .Q(co)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(182[3] 194[10])
    defparam co_230.GSR = "ENABLED";
    FD1S3AX do_231 (.D(do_N_201), .CK(rbyteclk_N_94), .Q(do)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(182[3] 194[10])
    defparam do_231.GSR = "ENABLED";
    FD1S3AX eo_232 (.D(eo_N_200), .CK(rbyteclk_N_94), .Q(eo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(182[3] 194[10])
    defparam eo_232.GSR = "ENABLED";
    FD1S3AX fo_233 (.D(fo_N_199), .CK(rbyteclk_N_94), .Q(fo)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(228[3] 236[10])
    defparam fo_233.GSR = "ENABLED";
    FD1S3AX go_234 (.D(go_N_198), .CK(rbyteclk_N_94), .Q(go)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(228[3] 236[10])
    defparam go_234.GSR = "ENABLED";
    FD1S3AX ho_235 (.D(ho_N_197), .CK(rbyteclk_N_94), .Q(ho)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(228[3] 236[10])
    defparam ho_235.GSR = "ENABLED";
    LUT4 i2382_2_lut_rep_43 (.A(debug[7]), .B(debug[9]), .Z(n3211)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2382_2_lut_rep_43.init = 16'h1111;
    LUT4 i27_3_lut_4_lut_4_lut (.A(debug[9]), .B(debug[5]), .C(debug[6]), 
         .D(debug[7]), .Z(n20)) /* synthesis lut_function=(A (B (C))+!A !(C+(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(218[8] 219[11])
    defparam i27_3_lut_4_lut_4_lut.init = 16'h8085;
    FD1S3AX dec_data_i4 (.D(do), .CK(sclk), .Q(FT601_DATA_c_11)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_93 (.A(p31), .B(debug[6]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(136[10:27])
    defparam i1_2_lut_adj_93.init = 16'h2222;
    PFUMX i2422 (.BLUT(n3158), .ALUT(n3157), .C0(debug[9]), .Z(ho_N_197));
    PFUMX i33 (.BLUT(n15), .ALUT(n18), .C0(debug[8]), .Z(ctrl_ind_N_91));
    LUT4 i1_2_lut_rep_44 (.A(debug[4]), .B(debug[8]), .Z(n3212)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_44.init = 16'heeee;
    LUT4 debug_6__bdd_4_lut (.A(debug[6]), .B(debug[5]), .C(n3202), .D(debug[9]), 
         .Z(n3170)) /* synthesis lut_function=(!(A (B (D)+!B (C+!(D)))+!A !((C+!(D))+!B))) */ ;
    defparam debug_6__bdd_4_lut.init = 16'h53dd;
    LUT4 i2_3_lut_4_lut (.A(debug[4]), .B(debug[8]), .C(p13), .D(debug[3]), 
         .Z(or123_N_156)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(125[10:19])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 debug_3__bdd_4_lut_2434 (.A(debug[3]), .B(debug[2]), .C(debug[0]), 
         .D(debug[1]), .Z(p13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam debug_3__bdd_4_lut_2434.init = 16'h0116;
    LUT4 i1_2_lut_3_lut_4_lut (.A(debug[1]), .B(debug[0]), .C(debug[8]), 
         .D(debug[4]), .Z(or122_N_149)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2386_2_lut_rep_45 (.A(debug[2]), .B(debug[3]), .Z(n3213)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2386_2_lut_rep_45.init = 16'h1111;
    LUT4 i1_2_lut_rep_34_2_lut_3_lut_4_lut (.A(debug[2]), .B(debug[3]), 
         .C(debug[8]), .D(debug[4]), .Z(n3202)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_34_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(debug[5]), .B(debug[6]), .C(debug[7]), .D(debug[9]), 
         .Z(n15_adj_903)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(220[8] 221[11])
    defparam i1_4_lut_4_lut.init = 16'h1105;
    LUT4 i1_4_lut_adj_94 (.A(or122_N_151), .B(n3202), .C(p13), .D(debug[4]), 
         .Z(n1527)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_adj_94.init = 16'hbbfb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_95 (.A(debug[0]), .B(debug[1]), .C(debug[8]), 
         .D(debug[4]), .Z(n2973)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_95.init = 16'hfffe;
    LUT4 p31_I_0_2_lut (.A(p31), .B(debug[8]), .Z(or122_N_151)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(149[7:17])
    defparam p31_I_0_2_lut.init = 16'h8888;
    LUT4 xb_I_0_4_lut (.A(n2932), .B(debug[1]), .C(or122_N_149), .D(or124_N_159), 
         .Z(bo_N_203)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(190[10:19])
    defparam xb_I_0_4_lut.init = 16'h3336;
    LUT4 i2_4_lut (.A(debug[1]), .B(n1527), .C(n3199), .D(or123_N_156), 
         .Z(n2932)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i2_4_lut.init = 16'hffec;
    FD1S3AX dec_data_i8 (.D(ho), .CK(sclk), .Q(FT601_DATA_c_15)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i8.GSR = "ENABLED";
    LUT4 debug_7__bdd_4_lut (.A(debug[7]), .B(debug[6]), .C(n3202), .D(debug[5]), 
         .Z(n3157)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam debug_7__bdd_4_lut.init = 16'h459d;
    LUT4 i1_4_lut_adj_96 (.A(or122_N_149), .B(or123_N_156), .C(debug[1]), 
         .D(n2966), .Z(n2974)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(147[11] 149[18])
    defparam i1_4_lut_adj_96.init = 16'hefee;
    LUT4 xd_I_0_4_lut (.A(n2974), .B(debug[3]), .C(n1527), .D(or124_N_159), 
         .Z(do_N_201)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(192[10:19])
    defparam xd_I_0_4_lut.init = 16'h3336;
    LUT4 xe_I_0_4_lut (.A(n30), .B(debug[4]), .C(n24), .D(n27), .Z(eo_N_200)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(193[10:19])
    defparam xe_I_0_4_lut.init = 16'h3336;
    LUT4 i1_4_lut_adj_97 (.A(debug[2]), .B(n3200), .C(debug[3]), .D(n3212), 
         .Z(n30)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_97.init = 16'h4445;
    FD1S3AX dec_data_i7 (.D(go), .CK(sclk), .Q(FT601_DATA_c_14)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i7.GSR = "ENABLED";
    FD1S3AX dec_data_i6 (.D(fo), .CK(sclk), .Q(FT601_DATA_c_13)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i6.GSR = "ENABLED";
    FD1S3AX dec_data_i5 (.D(eo), .CK(sclk), .Q(FT601_DATA_c_12)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=20, LSE_RCOL=29, LSE_LLINE=192, LSE_RLINE=192 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(83[2:10])
    defparam dec_data_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_98 (.A(p13), .B(debug[4]), .C(debug[3]), .D(debug[8]), 
         .Z(n24)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_98.init = 16'ha2aa;
    LUT4 i34_4_lut (.A(or132_N_184), .B(n13), .C(debug[4]), .D(n6), 
         .Z(n18)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(136[10:27])
    defparam i34_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_99 (.A(debug[1]), .B(debug[0]), .C(n2966), .D(n3212), 
         .Z(n27)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_4_lut_adj_99.init = 16'h5051;
    LUT4 i1_2_lut_rep_32 (.A(n1484), .B(debug[0]), .Z(n3200)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_32.init = 16'h2222;
    LUT4 debug_7__bdd_3_lut_4_lut_4_lut (.A(n3213), .B(debug[7]), .C(debug[6]), 
         .D(n3212), .Z(n3158)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B+!(C))) */ ;
    defparam debug_7__bdd_3_lut_4_lut_4_lut.init = 16'hcf47;
    LUT4 aneb_I_0_241_2_lut_3_lut_4_lut (.A(debug[0]), .B(debug[1]), .C(debug[3]), 
         .D(debug[2]), .Z(p22_N_112)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(112[11:20])
    defparam aneb_I_0_241_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 debug_3__bdd_4_lut_2431 (.A(debug[3]), .B(debug[2]), .C(debug[0]), 
         .D(debug[1]), .Z(p31)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam debug_3__bdd_4_lut_2431.init = 16'h6880;
    LUT4 debug_3__bdd_4_lut (.A(debug[3]), .B(debug[2]), .C(debug[0]), 
         .D(debug[1]), .Z(n3185)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;
    defparam debug_3__bdd_4_lut.init = 16'h1008;
    LUT4 xg_I_0_4_lut (.A(ior134), .B(debug[6]), .C(n15_adj_903), .D(n20), 
         .Z(go_N_198)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(234[10:19])
    defparam xg_I_0_4_lut.init = 16'h3336;
    LUT4 i1_2_lut_adj_100 (.A(debug[7]), .B(debug[9]), .Z(or132_N_184)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(202[11] 203[24])
    defparam i1_2_lut_adj_100.init = 16'h8888;
    LUT4 i1_2_lut_rep_31 (.A(n1484), .B(debug[2]), .Z(n3199)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_rep_31.init = 16'h8888;
    LUT4 i35_4_lut (.A(n3213), .B(n3211), .C(debug[4]), .D(n4), .Z(n15)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(136[10:27])
    defparam i35_4_lut.init = 16'hca0a;
    PFUMX i2428 (.BLUT(n3170), .ALUT(n3169), .C0(debug[7]), .Z(fo_N_199));
    LUT4 i1_2_lut_rep_30_3_lut (.A(n1484), .B(debug[0]), .C(debug[2]), 
         .Z(n3198)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(155[11] 157[47])
    defparam i1_2_lut_rep_30_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_adj_101 (.A(debug[3]), .B(debug[2]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(136[10:27])
    defparam i1_2_lut_adj_101.init = 16'h8888;
    LUT4 i2_2_lut (.A(debug[6]), .B(p13), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(136[10:27])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 xc_I_0_4_lut_4_lut (.A(debug[2]), .B(n3200), .C(n2973), .D(n2932), 
         .Z(co_N_202)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(145[12:47])
    defparam xc_I_0_4_lut_4_lut.init = 16'h55e5;
    LUT4 xa_I_0_4_lut (.A(n1527), .B(debug[0]), .C(n3198), .D(n2974), 
         .Z(ao_N_204)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(189[10:19])
    defparam xa_I_0_4_lut.init = 16'h3336;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n3213), .B(debug[7]), .C(debug[9]), 
         .D(n3212), .Z(ior134)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0028;
    LUT4 i1_2_lut_3_lut (.A(n1484), .B(debug[2]), .C(debug[0]), .Z(or124_N_159)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd(105[8:26])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 debug_6__bdd_3_lut_4_lut_4_lut (.A(n3213), .B(debug[5]), .C(debug[9]), 
         .D(n3212), .Z(n3169)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C)+!B !(C)))) */ ;
    defparam debug_6__bdd_3_lut_4_lut_4_lut.init = 16'h3c36;
    
endmodule
