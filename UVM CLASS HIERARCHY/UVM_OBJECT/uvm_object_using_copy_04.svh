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
    $display("uvm_object_using_copy_method SANTHOSH=[%0S]",SANTHOSH);
  endfunction
endclass


module tb;
  uvm_01 uv1, uv2;

  initial begin
    uv1=new();
    uv2=new();
    uv1.SANTHOSH = "RAVI";

    uv2.copy(uv1);

    uv1.preview();
    uv2.preview();
  end

endmodule



uvm_object_using_copy_method SANTHOSH=[RAVI]
uvm_object_using_copy_method SANTHOSH=[RAVI]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.610 seconds;       Data structure size:   0.1Mb
Sat Feb  7 14:15:07 2026

