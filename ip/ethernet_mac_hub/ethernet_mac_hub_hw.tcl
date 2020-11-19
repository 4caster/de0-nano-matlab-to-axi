package require -exact qsys 16.1


# 
# module ethernet_mac_hub
# 
set_module_property DESCRIPTION "Ethernet MAC Hub"
set_module_property NAME ethernet_mac_hub
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "MathWorks"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Ethernet MAC Hub"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ELABORATION_CALLBACK elaborate
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ethernet_mac_hub
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file FILUDPCRC.vhd VHDL PATH FILUDPCRC.vhd
add_fileset_file MWAsyncFIFO.vhd VHDL PATH MWAsyncFIFO.vhd
add_fileset_file MWDPRAM.vhd VHDL PATH MWDPRAM.vhd
add_fileset_file MWMAC.vhd VHDL PATH MWMAC.vhd
add_fileset_file MWPKTBuffer.vhd VHDL PATH MWPKTBuffer.vhd
add_fileset_file MWUDPPKTBuilder.vhd VHDL PATH MWUDPPKTBuilder.vhd
add_fileset_file ethernet_mac_hub.v VERILOG PATH ethernet_mac_hub.v TOP_LEVEL_FILE
add_fileset_file mwarbiter_axis.v VERILOG PATH mwarbiter_axis.v
add_fileset_file mwmacaxis_top.v VERILOG PATH mwmacaxis_top.v
add_fileset_file mwpingram.vhd VHDL PATH mwpingram.vhd
add_fileset_file mwpktproc.v VERILOG PATH mwpktproc.v
add_fileset_file mwrxarbiter.v VERILOG PATH mwrxarbiter.v
add_fileset_file mwrxmac.vhd VHDL PATH mwrxmac.vhd
add_fileset_file mwrxpktproc.v VERILOG PATH mwrxpktproc.v
add_fileset_file mwtxarbiter.v VERILOG PATH mwtxarbiter.v
add_fileset_file mwtxmac.vhd VHDL PATH mwtxmac.vhd
add_fileset_file mwtxpktproc.v VERILOG PATH mwtxpktproc.v


# 
# parameters
# 
add_parameter NUM_AXIS_CHANNELS INTEGER 1 ""
set_parameter_property NUM_AXIS_CHANNELS DEFAULT_VALUE 1
set_parameter_property NUM_AXIS_CHANNELS DISPLAY_NAME "Number of AXI Stream Channels"
set_parameter_property NUM_AXIS_CHANNELS WIDTH ""
set_parameter_property NUM_AXIS_CHANNELS TYPE INTEGER
set_parameter_property NUM_AXIS_CHANNELS UNITS None
set_parameter_property NUM_AXIS_CHANNELS ALLOWED_RANGES 1:8
set_parameter_property NUM_AXIS_CHANNELS DESCRIPTION ""
set_parameter_property NUM_AXIS_CHANNELS HDL_PARAMETER true
add_parameter MACADDR STD_LOGIC_VECTOR 43839005066 ""
set_parameter_property MACADDR DEFAULT_VALUE 43839005066
set_parameter_property MACADDR DISPLAY_NAME "MAC Address"
set_parameter_property MACADDR WIDTH 32
set_parameter_property MACADDR TYPE STD_LOGIC_VECTOR
set_parameter_property MACADDR UNITS None
set_parameter_property MACADDR DESCRIPTION ""
set_parameter_property MACADDR HDL_PARAMETER true
add_parameter IPADDR1 INTEGER 192 ""
set_parameter_property IPADDR1 DEFAULT_VALUE 192
set_parameter_property IPADDR1 DISPLAY_NAME "IP Address Byte1"
set_parameter_property IPADDR1 WIDTH ""
set_parameter_property IPADDR1 TYPE INTEGER
set_parameter_property IPADDR1 UNITS None
set_parameter_property IPADDR1 ALLOWED_RANGES 0:255
set_parameter_property IPADDR1 DESCRIPTION ""
set_parameter_property IPADDR1 HDL_PARAMETER true
add_parameter IPADDR2 INTEGER 168 ""
set_parameter_property IPADDR2 DEFAULT_VALUE 168
set_parameter_property IPADDR2 DISPLAY_NAME "IP Address Byte2"
set_parameter_property IPADDR2 WIDTH ""
set_parameter_property IPADDR2 TYPE INTEGER
set_parameter_property IPADDR2 UNITS None
set_parameter_property IPADDR2 ALLOWED_RANGES 0:255
set_parameter_property IPADDR2 DESCRIPTION ""
set_parameter_property IPADDR2 HDL_PARAMETER true
add_parameter IPADDR3 INTEGER 0 ""
set_parameter_property IPADDR3 DEFAULT_VALUE 0
set_parameter_property IPADDR3 DISPLAY_NAME "IP Address Byte3"
set_parameter_property IPADDR3 WIDTH ""
set_parameter_property IPADDR3 TYPE INTEGER
set_parameter_property IPADDR3 UNITS None
set_parameter_property IPADDR3 ALLOWED_RANGES 0:255
set_parameter_property IPADDR3 DESCRIPTION ""
set_parameter_property IPADDR3 HDL_PARAMETER true
add_parameter IPADDR4 INTEGER 2 ""
set_parameter_property IPADDR4 DEFAULT_VALUE 2
set_parameter_property IPADDR4 DISPLAY_NAME "IP Address Byte4"
set_parameter_property IPADDR4 WIDTH ""
set_parameter_property IPADDR4 TYPE INTEGER
set_parameter_property IPADDR4 UNITS None
set_parameter_property IPADDR4 ALLOWED_RANGES 0:255
set_parameter_property IPADDR4 DESCRIPTION ""
set_parameter_property IPADDR4 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH1 INTEGER 50101 ""
set_parameter_property UDP_DSTPORT_FORCH1 DEFAULT_VALUE 50101
set_parameter_property UDP_DSTPORT_FORCH1 DISPLAY_NAME "UDP Port For Channel 1"
set_parameter_property UDP_DSTPORT_FORCH1 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH1 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH1 UNITS None
set_parameter_property UDP_DSTPORT_FORCH1 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH1 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH1 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH2 INTEGER 50102 ""
set_parameter_property UDP_DSTPORT_FORCH2 DEFAULT_VALUE 50102
set_parameter_property UDP_DSTPORT_FORCH2 DISPLAY_NAME "UDP Port For Channel 2"
set_parameter_property UDP_DSTPORT_FORCH2 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH2 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH2 UNITS None
set_parameter_property UDP_DSTPORT_FORCH2 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH2 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH2 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH3 INTEGER 50103 ""
set_parameter_property UDP_DSTPORT_FORCH3 DEFAULT_VALUE 50103
set_parameter_property UDP_DSTPORT_FORCH3 DISPLAY_NAME "UDP Port For Channel 3"
set_parameter_property UDP_DSTPORT_FORCH3 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH3 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH3 UNITS None
set_parameter_property UDP_DSTPORT_FORCH3 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH3 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH3 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH4 INTEGER 50104 ""
set_parameter_property UDP_DSTPORT_FORCH4 DEFAULT_VALUE 50104
set_parameter_property UDP_DSTPORT_FORCH4 DISPLAY_NAME "UDP Port For Channel 4"
set_parameter_property UDP_DSTPORT_FORCH4 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH4 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH4 UNITS None
set_parameter_property UDP_DSTPORT_FORCH4 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH4 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH4 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH5 INTEGER 50105 ""
set_parameter_property UDP_DSTPORT_FORCH5 DEFAULT_VALUE 50105
set_parameter_property UDP_DSTPORT_FORCH5 DISPLAY_NAME "UDP Port For Channel 5"
set_parameter_property UDP_DSTPORT_FORCH5 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH5 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH5 UNITS None
set_parameter_property UDP_DSTPORT_FORCH5 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH5 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH5 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH6 INTEGER 50106 ""
set_parameter_property UDP_DSTPORT_FORCH6 DEFAULT_VALUE 50106
set_parameter_property UDP_DSTPORT_FORCH6 DISPLAY_NAME "UDP Port For Channel 6"
set_parameter_property UDP_DSTPORT_FORCH6 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH6 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH6 UNITS None
set_parameter_property UDP_DSTPORT_FORCH6 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH6 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH6 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH7 INTEGER 50107 ""
set_parameter_property UDP_DSTPORT_FORCH7 DEFAULT_VALUE 50107
set_parameter_property UDP_DSTPORT_FORCH7 DISPLAY_NAME "UDP Port For Channel 7"
set_parameter_property UDP_DSTPORT_FORCH7 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH7 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH7 UNITS None
set_parameter_property UDP_DSTPORT_FORCH7 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH7 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH7 HDL_PARAMETER true
add_parameter UDP_DSTPORT_FORCH8 INTEGER 50108 ""
set_parameter_property UDP_DSTPORT_FORCH8 DEFAULT_VALUE 50108
set_parameter_property UDP_DSTPORT_FORCH8 DISPLAY_NAME "UDP Port For Channel 8"
set_parameter_property UDP_DSTPORT_FORCH8 WIDTH ""
set_parameter_property UDP_DSTPORT_FORCH8 TYPE INTEGER
set_parameter_property UDP_DSTPORT_FORCH8 UNITS None
set_parameter_property UDP_DSTPORT_FORCH8 ALLOWED_RANGES 255:65535
set_parameter_property UDP_DSTPORT_FORCH8 DESCRIPTION ""
set_parameter_property UDP_DSTPORT_FORCH8 HDL_PARAMETER true


# 
# connection point ref_clk
# 
add_interface ref_clk clock end
set_interface_property ref_clk clockRate 0
set_interface_property ref_clk ENABLED true
set_interface_property ref_clk EXPORT_OF ""
set_interface_property ref_clk PORT_NAME_MAP ""
set_interface_property ref_clk CMSIS_SVD_VARIABLES ""
set_interface_property ref_clk SVD_ADDRESS_GROUP ""

add_interface_port ref_clk ref_clk clk Input 1



# 
# connection point ref_reset
# 
add_interface ref_reset reset end
set_interface_property ref_reset associatedClock ref_clk
set_interface_property ref_reset synchronousEdges DEASSERT
set_interface_property ref_reset ENABLED true
set_interface_property ref_reset EXPORT_OF ""
set_interface_property ref_reset PORT_NAME_MAP ""
set_interface_property ref_reset CMSIS_SVD_VARIABLES ""
set_interface_property ref_reset SVD_ADDRESS_GROUP ""

add_interface_port ref_reset ref_reset reset Input 1


# 
# connection point phy_rxclk
# 
add_interface phy_rxclk conduit end
set_interface_property phy_rxclk associatedClock ""
set_interface_property phy_rxclk associatedReset ""
set_interface_property phy_rxclk ENABLED true
set_interface_property phy_rxclk EXPORT_OF ""
set_interface_property phy_rxclk PORT_NAME_MAP ""
set_interface_property phy_rxclk CMSIS_SVD_VARIABLES ""
set_interface_property phy_rxclk SVD_ADDRESS_GROUP ""

add_interface_port phy_rxclk phy_rxclk phy_rxclk Input 1


# 
# connection point phy_rxd
# 
add_interface phy_rxd conduit end
set_interface_property phy_rxd associatedClock ""
set_interface_property phy_rxd associatedReset ""
set_interface_property phy_rxd ENABLED true
set_interface_property phy_rxd EXPORT_OF ""
set_interface_property phy_rxd PORT_NAME_MAP ""
set_interface_property phy_rxd CMSIS_SVD_VARIABLES ""
set_interface_property phy_rxd SVD_ADDRESS_GROUP ""

add_interface_port phy_rxd phy_rxd phy_rxd Input 8


# 
# connection point phy_rxdv
# 
add_interface phy_rxdv conduit end
set_interface_property phy_rxdv associatedClock ""
set_interface_property phy_rxdv associatedReset ""
set_interface_property phy_rxdv ENABLED true
set_interface_property phy_rxdv EXPORT_OF ""
set_interface_property phy_rxdv PORT_NAME_MAP ""
set_interface_property phy_rxdv CMSIS_SVD_VARIABLES ""
set_interface_property phy_rxdv SVD_ADDRESS_GROUP ""

add_interface_port phy_rxdv phy_rxdv phy_rxdv Input 1
# 
# connection point phy_rxer
# 
add_interface phy_rxer conduit end
set_interface_property phy_rxer associatedClock ""
set_interface_property phy_rxer associatedReset ""
set_interface_property phy_rxer ENABLED true
set_interface_property phy_rxer EXPORT_OF ""
set_interface_property phy_rxer PORT_NAME_MAP ""
set_interface_property phy_rxer CMSIS_SVD_VARIABLES ""
set_interface_property phy_rxer SVD_ADDRESS_GROUP ""

add_interface_port phy_rxer phy_rxer phy_rxer Input 1


# 
# connection point rxclk_en
# 
add_interface rxclk_en conduit end
set_interface_property rxclk_en associatedClock ""
set_interface_property rxclk_en associatedReset ""
set_interface_property rxclk_en ENABLED true
set_interface_property rxclk_en EXPORT_OF ""
set_interface_property rxclk_en PORT_NAME_MAP ""
set_interface_property rxclk_en CMSIS_SVD_VARIABLES ""
set_interface_property rxclk_en SVD_ADDRESS_GROUP ""

add_interface_port rxclk_en rxclk_en rxclk_en Input 1


# 
# connection point phy_gtxclk
# 
add_interface phy_gtxclk conduit end
set_interface_property phy_gtxclk associatedClock ""
set_interface_property phy_gtxclk associatedReset ""
set_interface_property phy_gtxclk ENABLED true
set_interface_property phy_gtxclk EXPORT_OF ""
set_interface_property phy_gtxclk PORT_NAME_MAP ""
set_interface_property phy_gtxclk CMSIS_SVD_VARIABLES ""
set_interface_property phy_gtxclk SVD_ADDRESS_GROUP ""

add_interface_port phy_gtxclk phy_gtxclk phy_gtxclk Output 1


# 
# connection point phy_txd
# 
add_interface phy_txd conduit end
set_interface_property phy_txd associatedClock ""
set_interface_property phy_txd associatedReset ""
set_interface_property phy_txd ENABLED true
set_interface_property phy_txd EXPORT_OF ""
set_interface_property phy_txd PORT_NAME_MAP ""
set_interface_property phy_txd CMSIS_SVD_VARIABLES ""
set_interface_property phy_txd SVD_ADDRESS_GROUP ""

add_interface_port phy_txd phy_txd phy_txd Output 8


# 
# connection point phy_txen
# 
add_interface phy_txen conduit end
set_interface_property phy_txen associatedClock ""
set_interface_property phy_txen associatedReset ""
set_interface_property phy_txen ENABLED true
set_interface_property phy_txen EXPORT_OF ""
set_interface_property phy_txen PORT_NAME_MAP ""
set_interface_property phy_txen CMSIS_SVD_VARIABLES ""
set_interface_property phy_txen SVD_ADDRESS_GROUP ""

add_interface_port phy_txen phy_txen phy_txen Output 1


# 
# connection point phy_txer
# 
add_interface phy_txer conduit end
set_interface_property phy_txer associatedClock ""
set_interface_property phy_txer associatedReset ""
set_interface_property phy_txer ENABLED true
set_interface_property phy_txer EXPORT_OF ""
set_interface_property phy_txer PORT_NAME_MAP ""
set_interface_property phy_txer CMSIS_SVD_VARIABLES ""
set_interface_property phy_txer SVD_ADDRESS_GROUP ""

add_interface_port phy_txer phy_txer phy_txer Output 1


# 
# connection point txclk_en
# 
add_interface txclk_en conduit end
set_interface_property txclk_en associatedClock ""
set_interface_property txclk_en associatedReset ""
set_interface_property txclk_en ENABLED true
set_interface_property txclk_en EXPORT_OF ""
set_interface_property txclk_en PORT_NAME_MAP ""
set_interface_property txclk_en CMSIS_SVD_VARIABLES ""
set_interface_property txclk_en SVD_ADDRESS_GROUP ""

add_interface_port txclk_en txclk_en txclk_en Input 1


# 
# connection point phy_col
# 
add_interface phy_col conduit end
set_interface_property phy_col associatedClock ""
set_interface_property phy_col associatedReset ""
set_interface_property phy_col ENABLED true
set_interface_property phy_col EXPORT_OF ""
set_interface_property phy_col PORT_NAME_MAP ""
set_interface_property phy_col CMSIS_SVD_VARIABLES ""
set_interface_property phy_col SVD_ADDRESS_GROUP ""

add_interface_port phy_col phy_col phy_col Input 1


# 
# connection point phy_crs
# 
add_interface phy_crs conduit end
set_interface_property phy_crs associatedClock ""
set_interface_property phy_crs associatedReset ""
set_interface_property phy_crs ENABLED true
set_interface_property phy_crs EXPORT_OF ""
set_interface_property phy_crs PORT_NAME_MAP ""
set_interface_property phy_crs CMSIS_SVD_VARIABLES ""
set_interface_property phy_crs SVD_ADDRESS_GROUP ""

add_interface_port phy_crs phy_crs phy_crs Input 1

# 
# connection point axis_aclk
# 
add_interface axis_aclk clock end
set_interface_property axis_aclk clockRate 0
set_interface_property axis_aclk ENABLED true
set_interface_property axis_aclk EXPORT_OF ""
set_interface_property axis_aclk PORT_NAME_MAP ""
set_interface_property axis_aclk CMSIS_SVD_VARIABLES ""
set_interface_property axis_aclk SVD_ADDRESS_GROUP ""

add_interface_port axis_aclk axis_aclk clk Input 1


# 
# connection point axis_aresetn
# 
add_interface axis_aresetn reset start
set_interface_property axis_aresetn associatedClock axis_aclk
set_interface_property axis_aresetn associatedDirectReset ""
set_interface_property axis_aresetn associatedResetSinks ""
set_interface_property axis_aresetn synchronousEdges DEASSERT
set_interface_property axis_aresetn ENABLED true
set_interface_property axis_aresetn EXPORT_OF ""
set_interface_property axis_aresetn PORT_NAME_MAP ""
set_interface_property axis_aresetn CMSIS_SVD_VARIABLES ""
set_interface_property axis_aresetn SVD_ADDRESS_GROUP ""

add_interface_port axis_aresetn axis_aresetn reset_n Output 1


# 
# connection point m_axis_0
# 
add_interface m_axis_0 axi4stream start
set_interface_property m_axis_0 associatedClock axis_aclk
set_interface_property m_axis_0 associatedReset axis_aresetn
set_interface_property m_axis_0 ENABLED true
set_interface_property m_axis_0 EXPORT_OF ""
set_interface_property m_axis_0 PORT_NAME_MAP ""
set_interface_property m_axis_0 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_0 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_0 m0_axis_tvalid tvalid Output 1
add_interface_port m_axis_0 m0_axis_tlast tlast Output 1
add_interface_port m_axis_0 m0_axis_tready tready Input 1
add_interface_port m_axis_0 m0_axis_tdata tdata Output 8

# 
# connection point s_axis_0
# 
add_interface s_axis_0 axi4stream end
set_interface_property s_axis_0 associatedClock axis_aclk
set_interface_property s_axis_0 associatedReset axis_aresetn
set_interface_property s_axis_0 ENABLED true
set_interface_property s_axis_0 EXPORT_OF ""
set_interface_property s_axis_0 PORT_NAME_MAP ""
set_interface_property s_axis_0 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_0 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_0 s0_axis_tdata tdata Input 8
add_interface_port s_axis_0 s0_axis_tvalid tvalid Input 1
add_interface_port s_axis_0 s0_axis_tready tready Output 1
add_interface_port s_axis_0 s0_axis_tlast tlast Input 1

# 
# connection point m_axis_1
# 
add_interface m_axis_1 axi4stream start
set_interface_property m_axis_1 associatedClock axis_aclk
set_interface_property m_axis_1 associatedReset axis_aresetn
set_interface_property m_axis_1 ENABLED true
set_interface_property m_axis_1 EXPORT_OF ""
set_interface_property m_axis_1 PORT_NAME_MAP ""
set_interface_property m_axis_1 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_1 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_1 m1_axis_tvalid tvalid Output 1
add_interface_port m_axis_1 m1_axis_tlast tlast Output 1
add_interface_port m_axis_1 m1_axis_tready tready Input 1
add_interface_port m_axis_1 m1_axis_tdata tdata Output 8

# 
# connection point s_axis_1
# 
add_interface s_axis_1 axi4stream end
set_interface_property s_axis_1 associatedClock axis_aclk
set_interface_property s_axis_1 associatedReset axis_aresetn
set_interface_property s_axis_1 ENABLED true
set_interface_property s_axis_1 EXPORT_OF ""
set_interface_property s_axis_1 PORT_NAME_MAP ""
set_interface_property s_axis_1 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_1 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_1 s1_axis_tdata tdata Input 8
add_interface_port s_axis_1 s1_axis_tvalid tvalid Input 1
add_interface_port s_axis_1 s1_axis_tready tready Output 1
add_interface_port s_axis_1 s1_axis_tlast tlast Input 1


# 
# connection point m_axis_2
# 
add_interface m_axis_2 axi4stream start
set_interface_property m_axis_2 associatedClock axis_aclk
set_interface_property m_axis_2 associatedReset axis_aresetn
set_interface_property m_axis_2 ENABLED true
set_interface_property m_axis_2 EXPORT_OF ""
set_interface_property m_axis_2 PORT_NAME_MAP ""
set_interface_property m_axis_2 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_2 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_2 m2_axis_tvalid tvalid Output 1
add_interface_port m_axis_2 m2_axis_tlast tlast Output 1
add_interface_port m_axis_2 m2_axis_tready tready Input 1
add_interface_port m_axis_2 m2_axis_tdata tdata Output 8
# 
# connection point s_axis_2
# 
add_interface s_axis_2 axi4stream end
set_interface_property s_axis_2 associatedClock axis_aclk
set_interface_property s_axis_2 associatedReset axis_aresetn
set_interface_property s_axis_2 ENABLED true
set_interface_property s_axis_2 EXPORT_OF ""
set_interface_property s_axis_2 PORT_NAME_MAP ""
set_interface_property s_axis_2 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_2 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_2 s2_axis_tdata tdata Input 8
add_interface_port s_axis_2 s2_axis_tvalid tvalid Input 1
add_interface_port s_axis_2 s2_axis_tready tready Output 1
add_interface_port s_axis_2 s2_axis_tlast tlast Input 1


# 
# connection point m_axis_3
# 
add_interface m_axis_3 axi4stream start
set_interface_property m_axis_3 associatedClock axis_aclk
set_interface_property m_axis_3 associatedReset axis_aresetn
set_interface_property m_axis_3 ENABLED true
set_interface_property m_axis_3 EXPORT_OF ""
set_interface_property m_axis_3 PORT_NAME_MAP ""
set_interface_property m_axis_3 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_3 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_3 m3_axis_tvalid tvalid Output 1
add_interface_port m_axis_3 m3_axis_tlast tlast Output 1
add_interface_port m_axis_3 m3_axis_tready tready Input 1
add_interface_port m_axis_3 m3_axis_tdata tdata Output 8

# 
# connection point s_axis_3
# 
add_interface s_axis_3 axi4stream end
set_interface_property s_axis_3 associatedClock axis_aclk
set_interface_property s_axis_3 associatedReset axis_aresetn
set_interface_property s_axis_3 ENABLED true
set_interface_property s_axis_3 EXPORT_OF ""
set_interface_property s_axis_3 PORT_NAME_MAP ""
set_interface_property s_axis_3 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_3 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_3 s3_axis_tdata tdata Input 8
add_interface_port s_axis_3 s3_axis_tvalid tvalid Input 1
add_interface_port s_axis_3 s3_axis_tready tready Output 1
add_interface_port s_axis_3 s3_axis_tlast tlast Input 1


# 
# connection point m_axis_4
# 
add_interface m_axis_4 axi4stream start
set_interface_property m_axis_4 associatedClock axis_aclk
set_interface_property m_axis_4 associatedReset axis_aresetn
set_interface_property m_axis_4 ENABLED true
set_interface_property m_axis_4 EXPORT_OF ""
set_interface_property m_axis_4 PORT_NAME_MAP ""
set_interface_property m_axis_4 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_4 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_4 m4_axis_tvalid tvalid Output 1
add_interface_port m_axis_4 m4_axis_tlast tlast Output 1
add_interface_port m_axis_4 m4_axis_tready tready Input 1
add_interface_port m_axis_4 m4_axis_tdata tdata Output 8

# 
# connection point s_axis_4
# 
add_interface s_axis_4 axi4stream end
set_interface_property s_axis_4 associatedClock axis_aclk
set_interface_property s_axis_4 associatedReset axis_aresetn
set_interface_property s_axis_4 ENABLED true
set_interface_property s_axis_4 EXPORT_OF ""
set_interface_property s_axis_4 PORT_NAME_MAP ""
set_interface_property s_axis_4 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_4 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_4 s4_axis_tdata tdata Input 8
add_interface_port s_axis_4 s4_axis_tvalid tvalid Input 1
add_interface_port s_axis_4 s4_axis_tready tready Output 1
add_interface_port s_axis_4 s4_axis_tlast tlast Input 1


# 
# connection point m_axis_5
# 
add_interface m_axis_5 axi4stream start
set_interface_property m_axis_5 associatedClock axis_aclk
set_interface_property m_axis_5 associatedReset axis_aresetn
set_interface_property m_axis_5 ENABLED true
set_interface_property m_axis_5 EXPORT_OF ""
set_interface_property m_axis_5 PORT_NAME_MAP ""
set_interface_property m_axis_5 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_5 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_5 m5_axis_tvalid tvalid Output 1
add_interface_port m_axis_5 m5_axis_tlast tlast Output 1
add_interface_port m_axis_5 m5_axis_tready tready Input 1
add_interface_port m_axis_5 m5_axis_tdata tdata Output 8

# 
# connection point s_axis_5
# 
add_interface s_axis_5 axi4stream end
set_interface_property s_axis_5 associatedClock axis_aclk
set_interface_property s_axis_5 associatedReset axis_aresetn
set_interface_property s_axis_5 ENABLED true
set_interface_property s_axis_5 EXPORT_OF ""
set_interface_property s_axis_5 PORT_NAME_MAP ""
set_interface_property s_axis_5 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_5 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_5 s5_axis_tdata tdata Input 8
add_interface_port s_axis_5 s5_axis_tvalid tvalid Input 1
add_interface_port s_axis_5 s5_axis_tready tready Output 1
add_interface_port s_axis_5 s5_axis_tlast tlast Input 1


# 
# connection point m_axis_6
# 
add_interface m_axis_6 axi4stream start
set_interface_property m_axis_6 associatedClock axis_aclk
set_interface_property m_axis_6 associatedReset axis_aresetn
set_interface_property m_axis_6 ENABLED true
set_interface_property m_axis_6 EXPORT_OF ""
set_interface_property m_axis_6 PORT_NAME_MAP ""
set_interface_property m_axis_6 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_6 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_6 m6_axis_tvalid tvalid Output 1
add_interface_port m_axis_6 m6_axis_tlast tlast Output 1
add_interface_port m_axis_6 m6_axis_tready tready Input 1
add_interface_port m_axis_6 m6_axis_tdata tdata Output 8
# 
# connection point s_axis_6
# 
add_interface s_axis_6 axi4stream end
set_interface_property s_axis_6 associatedClock axis_aclk
set_interface_property s_axis_6 associatedReset axis_aresetn
set_interface_property s_axis_6 ENABLED true
set_interface_property s_axis_6 EXPORT_OF ""
set_interface_property s_axis_6 PORT_NAME_MAP ""
set_interface_property s_axis_6 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_6 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_6 s6_axis_tdata tdata Input 8
add_interface_port s_axis_6 s6_axis_tvalid tvalid Input 1
add_interface_port s_axis_6 s6_axis_tready tready Output 1
add_interface_port s_axis_6 s6_axis_tlast tlast Input 1

# 
# connection point m_axis_7
# 
add_interface m_axis_7 axi4stream start
set_interface_property m_axis_7 associatedClock axis_aclk
set_interface_property m_axis_7 associatedReset axis_aresetn
set_interface_property m_axis_7 ENABLED true
set_interface_property m_axis_7 EXPORT_OF ""
set_interface_property m_axis_7 PORT_NAME_MAP ""
set_interface_property m_axis_7 CMSIS_SVD_VARIABLES ""
set_interface_property m_axis_7 SVD_ADDRESS_GROUP ""

add_interface_port m_axis_7 m7_axis_tvalid tvalid Output 1
add_interface_port m_axis_7 m7_axis_tlast tlast Output 1
add_interface_port m_axis_7 m7_axis_tready tready Input 1
add_interface_port m_axis_7 m7_axis_tdata tdata Output 8

# 
# connection point s_axis_7
# 
add_interface s_axis_7 axi4stream end
set_interface_property s_axis_7 associatedClock axis_aclk
set_interface_property s_axis_7 associatedReset axis_aresetn
set_interface_property s_axis_7 ENABLED true
set_interface_property s_axis_7 EXPORT_OF ""
set_interface_property s_axis_7 PORT_NAME_MAP ""
set_interface_property s_axis_7 CMSIS_SVD_VARIABLES ""
set_interface_property s_axis_7 SVD_ADDRESS_GROUP ""

add_interface_port s_axis_7 s7_axis_tdata tdata Input 8
add_interface_port s_axis_7 s7_axis_tvalid tvalid Input 1
add_interface_port s_axis_7 s7_axis_tready tready Output 1
add_interface_port s_axis_7 s7_axis_tlast tlast Input 1




# create auto-elaborate functions

proc elaborate {} {
    set num_axis_channels [get_parameter_value NUM_AXIS_CHANNELS]
	
	if {$num_axis_channels < 2 } {
       set_interface_property s_axis_1 ENABLED false
	   set_interface_property m_axis_1 ENABLED false
    }

	if {$num_axis_channels < 3 } {
       set_interface_property s_axis_2 ENABLED false
	   set_interface_property m_axis_2 ENABLED false
    }

	if {$num_axis_channels < 4 } {
       set_interface_property s_axis_3 ENABLED false
	   set_interface_property m_axis_3 ENABLED false
    }

	if {$num_axis_channels < 5 } {
       set_interface_property s_axis_4 ENABLED false
	   set_interface_property m_axis_4 ENABLED false
    }

	if {$num_axis_channels < 6 } {
       set_interface_property s_axis_5 ENABLED false
	   set_interface_property m_axis_5 ENABLED false
    }

	if {$num_axis_channels < 7 } {
       set_interface_property s_axis_6 ENABLED false
	   set_interface_property m_axis_6 ENABLED false
    }

	if {$num_axis_channels < 8 } {
       set_interface_property s_axis_7 ENABLED false
	   set_interface_property m_axis_7 ENABLED false
    }
}
	