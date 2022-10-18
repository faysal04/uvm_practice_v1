class mux_tx extends uvm_sequence_item;
  
  `uvm_object_utils(mux_tx)
  bit a     ;
  bit b     ;
  bit select;

  function new(string name="mux_tx");
    super.new(name);
  endfunction

 // `uvm_object_utils_begin(mux_tx)
 // `uvm_field_int(a,UVM_ALL_ON)
 // `uvm_field_int(b,UVM_ALL_ON)
 // `uvm_field_int(select,UVM_ALL_ON)
 // `uvm_object_utils_end

 function randomizee;
   this.a=$urandom_range(2,0);
   this.b=$urandom_range(2,0);
   this.select=$urandom_range(2,0);
 endfunction


endclass

