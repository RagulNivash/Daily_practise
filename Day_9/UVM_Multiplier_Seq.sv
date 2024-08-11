module dff(input clk, input rst, input din, output reg dout);

  always@(posedge clk)
    begin
      if(rst)
        dout<=1'b0;
      else
        dout <=din;
    end
endmodule

///////////////////////////////////////////////////////////////////////////////////////////////////////////

interface dff_if;
  logic clk;
  logic rst;
  logic din;
  logic dout;
endinterface

//////////////////////////////////////////////////////////UVM_environment//////////////////////////////////////////////////////////////

'inlude "uvm_macors.svh"
import uvm_pkg::*;

class congif_dff extends uvm_objec;]
  'uvm_object_utils(config_dff)
uvm_active_passive_enum agent_type= UVM_ACTIVE;

  function new(input string path="config_dff");
    super.new(path);
  endfunction

  




endclass
  
