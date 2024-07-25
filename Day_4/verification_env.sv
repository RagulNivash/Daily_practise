'include "uvm_macros.svh"
import uvm_pkg::*;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class transaction extends uvm_sequence_item;
  /////////////////'uvm_object_utils(transaction)//----------------------////////////////

  rand bit [3:0]a;
  rand bit[3:0]b;
  bit [4:0]y;

  function new (input string path= "transaction");
    super.new(path);
  endfunction


  'uvm_object_utils_begin(trasaction)
  'uvm_field_int(a, UVM_DEAFULT)
  'uvm_field_int(b,UVM_DEFAULT)
  'uvm_field_int(y,UVM_DEFAULT)
  'uvm_object_utils_end

endclass

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class sequence extends uvm_sequence #(transaction);
  'uvm_object_utils(sequence) //----------------------////////////////
  transaction t;
  integer i;

  function new (input string path= "sequence");
    super.new(path);
  endfunction

  virtual task body();
    t=transaction::type_id::create("t");
    repeat(10) begin
      start_item(t);
      t.randomize();
      'uvm_info("SEQ", $sformatf("Data send to dirver a: %0d ,  b: %0d", t.a,t.b), UVM_NONE);
      finish_item(t);

    end
    
  endtask

endclass

    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class driver extends uvm_driver #(transaction);
  'uvm_component_utils(driver);

  trasaction t;
  virtual add_if aid;

  function new (input string path= "driver", uvm_component parent= null);
        super.new(path, parent);
    endfunction


  virtual function void build_phase (uvm_phase phase);
    super.build_phasee(phase);
    t= transaction::type_id::create("t");

    if(!uvm_config_db #(virtual add_if)::get(this,"","aid",aid))
      'uvm_error("driver", "Unable to access")

      endfunction

    virtual task run_phase(uvm_phase phase);
    forever begin

      seq_item_port.get_next_item(t);
      aid.a <= t.a;
      aid.b <= t.b;
      'uvm_info("Driver",$sformat("trigger DUT a:%0d, b: %0d", t.a,t.b), UVM_NONE);
      seq_item_port.finish_item(t);
      #10;
      
    end


    endtask

    endclass

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    class monitor extends uvm_monitor #(transaction);
      'uvm_component_utils(monitor)//----------------------////////////////

      function new (input string path="monitor", uvm_component parent=null); //----------------------////////////////
        super.new(path,parent);
        send= new("send", this); //----------------------////////////////
      endfunction
      
      
      transaction t;
      virtual add_if aid;
      uvm_analysis_port #(transaction) send;


      virtual function void build_phase(uvm_phase phase);
        super.new(phase);

        t=transaction::type_id::create("t");
        //// send= uvm_analysis_port #(transaction)::type_id::create("send");  //----------------------////////////////

        if(!uvm_config_db #(transaction)::get(this,"","aid",aid));
           'uvm_error("moni","unable to access moni");

           endfunction


           virtual task run_phase(uvm_phase phase);
             forever begin
             #10;
             t.a=aid.a;
             t.b=aid.b;
             t.y=aid.y;
               'uvm_info("Mon", $sformat("data send to scoreboard a: %0d, b: %0d", t.a, t.b), UVM_NONE);
               send.write(t);     //----------------------////////////////
             end
           endtask

   endclass           

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
 class scoreboard 



















      
