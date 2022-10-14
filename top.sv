
module top;

import uvm_pkg::*;

mux_intf pif ();

mux dut (
	.a  (pif.x      ),
	.b  (pif.y      ),
	.sel(pif.select ),
	.out(pif.mux_out)
);

initial begin
	uvm_config_db#(virtual mux_intf)::set(uvm_root::get(),"","vif",pif);
end

initial begin
	run_test();
end

endmodule
