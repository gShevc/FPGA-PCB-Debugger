// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon Oct  5 19:20:39 2026
// Host        : Gehrman running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CPU_blk_mem_gen_0_0_sim_netlist.v
// Design      : CPU_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CPU_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61280)
`pragma protect data_block
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
MYqP7Sc=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
