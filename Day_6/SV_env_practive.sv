module(addin vif);
  always @(posedge vif.clk)
  begin
    if (vif.rst ==1'b0)
      vif.dount<=1'b0;
  else
      vif.dout<=vif.din;
  end

    
endmodule



///////////////////////////////////////////////
interface dff_if;
    logic clk;
  logic rst;
  logic din;
  logic dout;


endmodule


///////////////////////////////////// Veri Env //////////////////////////////////////////////////



class transaction;
    rand bit din;
  bit dout;


  function transaction copy();
    copy=new();
    copy.din=this.din;
    copy.dout=this.dout;
  endfunction


  fucntion void display(input string tag);
      $display("%0s : din %0b  dout %0b",tag, din, dout);
  endfunction

endclass

////////////////////////////////////////////////////////////////////////////////////////////////////




  class generator;
    transaction tr;
    mailbox #(transaction) mbx;
    mailbox #(transaction) mbreff;

    event sconect;
    event done;

    int count;


    funciton new (mail #(trasaction) mbx, mailbox #(transaction) mbxree);
        this.mbx=mbx;
        this.mbsreff=mbxreff;
        tr= new();
    endfunction


    task run();
      repeat(count) begin
        assert(tr.randomize) else $error("[GEN]: randomization failed");
        mbx.put(tr.copy);
        mbxreff.put(tr.copy);
        tr.display("GEN");
        @(sconext);        
      end

  endclass
////////////////////////////////////////////////////////

class driver;
  trasacntion tr;
  mialbox #(transaction)mbx;
  virtual dif_if vif;

  function new(mialbox #(trasaction)mbx);
    this.mbx=mbx;
  endfunction


  task reseet();
    vif.rst<=1'b1;
    repeat(5) @(posdedge vof.clk);
    vif.rst<=1'b0;
    @(posedge vof.clk);
    $display"rest done");
  endtask


  task run();
    forever begin 
      mbx.get(tr);
    vif.din<=tr.din;
      @(posedge vif.clk);
      tr.display("drv");
      vif.din<='b0;

    end
  endtask


//////////////////////////////
  tr.dout=vif.dout;
  mbx.put(tr);
  tr.display



////////////////////////////////////
class env;
  function new (virtual dff_if vif);
          

this.vif= vif;
    drv.vif=this.vif;
    mon.vif=this.vif;


    ge.socnect=next;
    sco.soc.ect=next;


  endfunction
    
    endfunciton





















      
