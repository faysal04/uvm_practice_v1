class mux_seq extends uvm_sequence#(mux_tx);

  `uvm_object_utils(mux_seq)

  mux_tx txn;

  function new (string name="mux_seq");
    super.new(name);
  endfunction

  virtual task body();

  task body();
    start_item(txn);
    txn.randomizee;
    finish_item(txn);
  endtask

endclass
