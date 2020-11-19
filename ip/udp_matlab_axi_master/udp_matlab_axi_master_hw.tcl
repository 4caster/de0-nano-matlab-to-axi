package require -exact qsys 16.1


# 
# module udp_matlab_axi_master
# 
set_module_property DESCRIPTION "UDP MATLAB as AXI Master"
set_module_property NAME udp_matlab_axi_master
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "MathWorks"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "UDP MATLAB as AXI Master"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL udp_matlab_axi_master
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file udp_matlab_axi_master.sv SYSTEM_VERILOG PATH udp_matlab_axi_master.sv TOP_LEVEL_FILE
add_fileset_file udp_matlab_axi_master_map.v VERILOG PATH udp_matlab_axi_master_map.v


# 
# parameters
# 
add_parameter ID_WIDTH INTEGER 1 ""
set_parameter_property ID_WIDTH DEFAULT_VALUE 1
set_parameter_property ID_WIDTH DISPLAY_NAME "ID WIDTH"
set_parameter_property ID_WIDTH TYPE INTEGER
set_parameter_property ID_WIDTH UNITS None
set_parameter_property ID_WIDTH ALLOWED_RANGES 1:5
set_parameter_property ID_WIDTH DESCRIPTION ""
set_parameter_property ID_WIDTH HDL_PARAMETER true
add_parameter AXI_DATA_WIDTH INTEGER 32 ""
set_parameter_property AXI_DATA_WIDTH DEFAULT_VALUE 32
set_parameter_property AXI_DATA_WIDTH DISPLAY_NAME "AXI Data Width"
set_parameter_property AXI_DATA_WIDTH TYPE INTEGER
set_parameter_property AXI_DATA_WIDTH UNITS None
set_parameter_property AXI_DATA_WIDTH ALLOWED_RANGES {32 64}
set_parameter_property AXI_DATA_WIDTH DESCRIPTION ""
set_parameter_property AXI_DATA_WIDTH HDL_PARAMETER true
add_parameter AXI_ADDR_WIDTH INTEGER 32 "AXI Address Width"
set_parameter_property AXI_ADDR_WIDTH DEFAULT_VALUE 32
set_parameter_property AXI_ADDR_WIDTH DISPLAY_NAME "AXI Address Width"
set_parameter_property AXI_ADDR_WIDTH TYPE INTEGER
set_parameter_property AXI_ADDR_WIDTH UNITS None
set_parameter_property AXI_ADDR_WIDTH ALLOWED_RANGES {32 64}
set_parameter_property AXI_ADDR_WIDTH DESCRIPTION ""
set_parameter_property AXI_ADDR_WIDTH HDL_PARAMETER true


# 
# display items
# 


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
add_interface axis_aresetn reset end
set_interface_property axis_aresetn associatedClock axis_aclk
set_interface_property axis_aresetn synchronousEdges DEASSERT
set_interface_property axis_aresetn ENABLED true
set_interface_property axis_aresetn EXPORT_OF ""
set_interface_property axis_aresetn PORT_NAME_MAP ""
set_interface_property axis_aresetn CMSIS_SVD_VARIABLES ""
set_interface_property axis_aresetn SVD_ADDRESS_GROUP ""

add_interface_port axis_aresetn axis_aresetn reset_n Input 1


# 
# connection point s_axis
# 
add_interface s_axis axi4stream end
set_interface_property s_axis associatedClock axis_aclk
set_interface_property s_axis associatedReset axis_aresetn
set_interface_property s_axis ENABLED true
set_interface_property s_axis EXPORT_OF ""
set_interface_property s_axis PORT_NAME_MAP ""
set_interface_property s_axis CMSIS_SVD_VARIABLES ""
set_interface_property s_axis SVD_ADDRESS_GROUP ""

add_interface_port s_axis s_axis_tdata tdata Input 8
add_interface_port s_axis s_axis_tvalid tvalid Input 1
add_interface_port s_axis s_axis_tready tready Output 1
add_interface_port s_axis s_axis_tlast tlast Input 1


# 
# connection point m_axis
# 
add_interface m_axis axi4stream start
set_interface_property m_axis associatedClock axis_aclk
set_interface_property m_axis associatedReset axis_aresetn
set_interface_property m_axis ENABLED true
set_interface_property m_axis EXPORT_OF ""
set_interface_property m_axis PORT_NAME_MAP ""
set_interface_property m_axis CMSIS_SVD_VARIABLES ""
set_interface_property m_axis SVD_ADDRESS_GROUP ""

add_interface_port m_axis m_axis_tvalid tvalid Output 1
add_interface_port m_axis m_axis_tlast tlast Output 1
add_interface_port m_axis m_axis_tready tready Input 1
add_interface_port m_axis m_axis_tdata tdata Output 8


# 
# connection point aclk
# 
add_interface aclk clock end
set_interface_property aclk clockRate 0
set_interface_property aclk ENABLED true
set_interface_property aclk EXPORT_OF ""
set_interface_property aclk PORT_NAME_MAP ""
set_interface_property aclk CMSIS_SVD_VARIABLES ""
set_interface_property aclk SVD_ADDRESS_GROUP ""

add_interface_port aclk aclk clk Input 1

# 
# connection point aresetn
# 
add_interface aresetn reset end
set_interface_property aresetn associatedClock aclk
set_interface_property aresetn synchronousEdges DEASSERT
set_interface_property aresetn ENABLED true
set_interface_property aresetn EXPORT_OF ""
set_interface_property aresetn PORT_NAME_MAP ""
set_interface_property aresetn CMSIS_SVD_VARIABLES ""
set_interface_property aresetn SVD_ADDRESS_GROUP ""

add_interface_port aresetn aresetn reset_n Input 1


# 
# connection point axi4_udp
# 
add_interface axi4_udp axi4 start
set_interface_property axi4_udp associatedClock aclk
set_interface_property axi4_udp associatedReset aresetn
set_interface_property axi4_udp readIssuingCapability 1
set_interface_property axi4_udp writeIssuingCapability 1
set_interface_property axi4_udp combinedIssuingCapability 1
set_interface_property axi4_udp ENABLED true
set_interface_property axi4_udp EXPORT_OF ""
set_interface_property axi4_udp PORT_NAME_MAP ""
set_interface_property axi4_udp CMSIS_SVD_VARIABLES ""
set_interface_property axi4_udp SVD_ADDRESS_GROUP ""

add_interface_port axi4_udp axi4m_awaddr awaddr Output AXI_ADDR_WIDTH
add_interface_port axi4_udp axi4m_awprot awprot Output 3
add_interface_port axi4_udp axi4m_awvalid awvalid Output 1
add_interface_port axi4_udp axi4m_awready awready Input 1
add_interface_port axi4_udp axi4m_wdata wdata Output AXI_DATA_WIDTH
add_interface_port axi4_udp axi4m_wlast wlast Output 1
add_interface_port axi4_udp axi4m_wvalid wvalid Output 1
add_interface_port axi4_udp axi4m_wready wready Input 1
add_interface_port axi4_udp axi4m_bvalid bvalid Input 1
add_interface_port axi4_udp axi4m_bready bready Output 1
add_interface_port axi4_udp axi4m_araddr araddr Output AXI_ADDR_WIDTH
add_interface_port axi4_udp axi4m_arprot arprot Output 3
add_interface_port axi4_udp axi4m_arvalid arvalid Output 1
add_interface_port axi4_udp axi4m_arready arready Input 1
add_interface_port axi4_udp axi4m_rdata rdata Input AXI_DATA_WIDTH
add_interface_port axi4_udp axi4m_rvalid rvalid Input 1
add_interface_port axi4_udp axi4m_rready rready Output 1
add_interface_port axi4_udp axi4m_arburst arburst Output 2
add_interface_port axi4_udp axi4m_arcache arcache Output 4
add_interface_port axi4_udp axi4m_arlen arlen Output 8
add_interface_port axi4_udp axi4m_arlock arlock Output 1
add_interface_port axi4_udp axi4m_arqos arqos Output 4
add_interface_port axi4_udp axi4m_arsize arsize Output 3
add_interface_port axi4_udp axi4m_awburst awburst Output 2
add_interface_port axi4_udp axi4m_awcache awcache Output 4
add_interface_port axi4_udp axi4m_awid awid Output ID_WIDTH
add_interface_port axi4_udp axi4m_awlen awlen Output 8
add_interface_port axi4_udp axi4m_awlock awlock Output 1
add_interface_port axi4_udp axi4m_awqos awqos Output 4
add_interface_port axi4_udp axi4m_awsize awsize Output 3
add_interface_port axi4_udp axi4m_bresp bresp Input 2
add_interface_port axi4_udp axi4m_rid rid Input 1
add_interface_port axi4_udp axi4m_rlast rlast Input 1
add_interface_port axi4_udp axi4m_rresp rresp Input 2
add_interface_port axi4_udp axi4m_wstrb wstrb Output AXI_DATA_WIDTH/8
add_interface_port axi4_udp axi4m_arid arid Output ID_WIDTH
add_interface_port axi4_udp axi4m_bid bid Input 1

