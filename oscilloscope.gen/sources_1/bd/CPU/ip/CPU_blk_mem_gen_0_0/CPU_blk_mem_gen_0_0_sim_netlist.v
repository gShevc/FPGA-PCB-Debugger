// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon Oct  5 19:20:40 2026
// Host        : Gehrman running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/germa/Documents/projects/FPGA/New
//               folder/oscilloscope/oscilloscope.gen/sources_1/bd/CPU/ip/CPU_blk_mem_gen_0_0/CPU_blk_mem_gen_0_0_sim_netlist.v}
// Design      : CPU_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CPU_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module CPU_blk_mem_gen_0_0
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
  CPU_blk_mem_gen_0_0_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61232)
`pragma protect data_block
+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
Jc92KLwLTEIUemJ1lK8=
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
