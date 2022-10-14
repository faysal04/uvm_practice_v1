class mux_test extends uvm_test;

  `uvm_component_utils(mux_test)

  function new(string name="mux_test",uvm_component parent);
    super.new(name,parent);
  endfunction

  mux_env env;

  function void build_phase(uvm_phase phase);
    env = mux_env::type_id::create("env",this);
  endfunction

  task run_phase(uvm_phase phase);
    mux_seq seq10;
    phase.raise_objection(this);
    seq10= mux_seq::type_id::create("mux_seq",this);
    seq10.start(env.agent.sqr);
    phase.drop_objection(this);
  endtask

endclass
