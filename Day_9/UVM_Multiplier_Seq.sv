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

endclass
  
