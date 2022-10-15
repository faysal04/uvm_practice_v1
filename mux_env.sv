class mux_env extends uvm_env;
  `uvm_component_utils(mux_env)

  mux_agent agent;
  mux_seq seq1;

  function new(string name="mux_env",uvm_component parent);
    super.new(name,parent);
  endfunction

  function void build_phase(uvm_phase phase);
    agent = mux_agent::type_id::create("agent",this);
  endfunction

  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);
    phase.raise_objection(this);
    seq1= new();
    seq1.start(agent.sqr);
    phase.drop_objection(this);
  endtask

endclass
