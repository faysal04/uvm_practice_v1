class mux_monitor extends uvm_monitor;

  `uvm_component_utils(mux_monitor)

  function new(string name="mux_monitor",uvm_component parent);
    super.new(name,parent);
  endfunction

  mux_tx txx;
  virtual mux_intf vif;


  function void build_phase(uvm_phase phase);
    if(!(uvm_config_db#(virtual mux_intf)::get(this,"","vif",vif))) begin
      `uvm_fatal("monitor","unable to get interface")
    end
    txx = mux_tx::type_id::create("txx",this);
  endfunction


  task run_phase(uvm_phase phase);
      txx.a = vif.x;
      txx.b = vif.y;
      txx.select = vif.select;
  endtask
  
endclass
