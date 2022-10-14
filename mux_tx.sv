class mux_tx extends uvm_sequence_item;
  `uvm_object_utils(mux_tx)
  bit a     ;
  bit b     ;
  bit select;

  `uvm_object_utils_begin(mux_tx)
  `uvm_field_int(a,UVM_ALL_ON)
  `uvm_field_int(b,UVM_ALL_ON)
  `uvm_field_int(select,UVM_ALL_ON)
  `uvm_object_utils_end

  function set_vals(bit a, bit b, bit select);
    this.a = a;
    this.b = b;
    this.select = select;
  endfunction

  function new(string name ="mux_tx");
    super.new(name);
  endfunction

endclass
