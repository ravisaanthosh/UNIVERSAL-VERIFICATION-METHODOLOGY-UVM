
`include "uvm_macros.svh"
import uvm_pkg::*;
class uvm_01 extends uvm_object;
  string SANTHOSH;
  `uvm_object_utils(uvm_01)
  function new(string name="uvm_01");
    super.new(name);
    SANTHOSH="RAVI";
  endfunction
  function void preview();
    $display("using_clone_uvm_object SANTHOSH=[%0S]",SANTHOSH);
  endfunction
endclass


module tb;
  uvm_01 uv1, uv2;

  initial begin
    uv1=new();
    uv1.SANTHOSH = "RAVI";

    $cast(uv2, uv1.clone());

    uv1.preview();
    uv2.preview();
  end

endmodule

using_clone_uvm_object SANTHOSH=[RAVI]
using_clone_uvm_object SANTHOSH=[RAVI]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.1Mb
Sat Feb  7 14:08:26 2026
