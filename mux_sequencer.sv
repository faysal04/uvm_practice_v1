class mux_sequencer extends uvm_sequencer#(mux_tx);

  `uvm_component_utils(mux_sequencer)

  function new(string name="mux_sequencer",uvm_component parent);
    super.new(name,parent);
  endfunction

endclass
