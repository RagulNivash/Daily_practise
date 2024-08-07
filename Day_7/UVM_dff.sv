module mul(input [3:0]a,b, output [7:0]y);

  assign y= a*b;
  

endmodule



interface mul_if;
  logic [3:0] a;
  logic [3:0] b;
  logic [7:0]y;

endinterface


////////////////////////////////////////////////////////////////////////////////////////////

'include "uvm_macros.svh"
import uvm_pkg::*;


class transaction extends uvm_sequence_item;
  'uvm_object_utils(trasaction)

  rand bit [3:0] a;
  rand bit [3:0] b;
            bit [7:0]y;

  function new (input string path="transaction");
    super.new(path);
  endfunction

endclass


////////////////////////////////////////////////////////////////////

class sequence extends uvm_sequence;
  'uvm_object_utils(sequence)

transaction tr;
    function new(input string path= "sequence");
      super.new(path);
    endfunction

    virtual task body();
      repeat(15)
        begin
          tr=trasacntion::type_id::create("tr");
          start_item(tr);
          assert(tr.randomize());
          'uvm_info("SEQ",$sformat("asadasd",tr.a,tr.b,tr.y), UVM_NONE);
          finish_item(tr);     

        
        end
    endtask
endclass


    /////////////////////////////////////////////////////////////////////////
    class drv  extends uvm_driver #(transaction);
      'uvm_component_utils(drv)

      transaction tr;
      virtual mul_if mif;

      function new(input string path="drv", uvm_component parent=null);
        super.new(path, parent);

      endfunction

      virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_confid_db#(virtual mul_if)::get(this,"","mif",mif)
           'uvm_error("drv","uvm_failed");


      endfunction


        virtual task run_phase(uvm_phase phase);
          tr=trasacntion::type_id::create("tr");
          forever begin
            seq_item_port.get_next_item(tr);
            mif.a<=tr.a;
            mif.b<=tr.b
            'uvm_info("drv",$sformatf("",),UVM_NONE);
            seq_item_port.item_done();
            end
        endtask
    endclass    

////////////////////////////////
           class mon extends uvm_monitor;
             'uvm_component_utils(mon)

             uvm_analysis_port#(transaction) send;
             transacrtion tr;
             virtual mul_if mif;


             function new (onput string inst="mon", uvm_componet parent= null)
               super.new(inst.parent);
             endfunction


             virtual funciton void build_phase(uvm_phase);
             super.build_phase(phase);
             tr=trsanction::type_id::create("tr");
             send=new("send",this);
             if(!uvm_config_db#(virtual mul_if)::get(this,"","mif",mif); 'uvm_error("","");
                endfunction

          virtual task run_phase(uvm_phase phase);
             forever begin
tr.a=mif,.a;
               tr.b=mif.b;
               tr.y=mif.y;
               'uvm_info
               send.write(tr);
               endtask endclass


///////////////////////////////////////////////////////////////////////
               #uvm_analysis_imp#(transaction,sco) recv;
               funciton new()
               super.new
             endufntion



               virtual 
               rcv=new("recv",this);
             endfunciton
               
               virtual fucntion void write (transacrin tr);
               if(tr.y==a(tr.aa)*)
                 sdad
                 else
                   'uvm_erro

             endfunciton
             endlcass
               
/////////////////////////////////////////////////////////////////////////////////////////
                   uvm_sequescer#(trasnaction) serq;

               virtual function void connect_pahse(uvm_phase)
                 super.connect_phase(phase)
                 d..connct
////////////////////////////////////////////////////


                 class test extends uvm_test;
                   'uvm_component_utils(test)
                   virtual task run_phase(uvm_phase phase);
                     phase.raise_objection(this);
                     gen.start.(e.a.seqr);

                       phase.drop_objectipn(this)
                       emdtask
                       endlcass

///////////////////////////////////////////////////////////

     uvm_config_db #(virtual mul_if)::set(null, "*", "mif", mif);
                       run_tst

                       









        
      
