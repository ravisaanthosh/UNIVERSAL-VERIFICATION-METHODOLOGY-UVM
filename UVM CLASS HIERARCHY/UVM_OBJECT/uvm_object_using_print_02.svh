
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
    $display("using_uvm_object SANTHOSH=[%0S]",SANTHOSH);
  endfunction
endclass

module tb;
  uvm_01 uv;
  initial begin
    //     uv=uvm_01::type_id::create("uv"); 
    uv=new();
    uv.print();
  end
endmodule


---------------------------
Name    Type    Size  Value
---------------------------
uvm_01  uvm_01  -     @336 
---------------------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.1Mb
Sat Feb  7 13:44:35 2026
