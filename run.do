vlib work
vlog +define+UVM_NO_DPI +incdir+C:/intelFPGA/21.1/questa_fse/verilog_src/uvm-1.2/src/ C:/intelFPGA/21.1/questa_fse/verilog_src/uvm-1.2/src/uvm.sv +incdir+. -f file_list.f mux.v
vsim -voptargs=+acc+top. +UVM_TESTNAME=mux_test top
