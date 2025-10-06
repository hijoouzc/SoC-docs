vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/processing_system7_vip_v1_0_21
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 questa_lib/msim/processing_system7_vip_v1_0_21
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+E:/Vivado/2024.2/data/xilinx_vip/include" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+E:/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab_1.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+E:/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab_1.gen/sources_1/bd/system/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+E:/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../lab_1.gen/sources_1/bd/system/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_1.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+E:/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

