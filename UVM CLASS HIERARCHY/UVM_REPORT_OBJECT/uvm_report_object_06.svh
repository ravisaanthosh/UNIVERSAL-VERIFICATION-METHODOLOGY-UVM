`include "uvm_macros.svh"
import uvm_pkg::*;
class uvm_report_object extends uvm_object;
  function new (string name="uvm_report_object");
    super.new(name);
    `uvm_info("-->STATUS","using_uvm_report_object",UVM_LOW)
  endfunction
  
  function void preview();
    `uvm_info("STATUS_1","from_hight",UVM_HIGH)
    `uvm_info("STATUS_2","from_uvm_none",UVM_NONE)
    `uvm_info("STATUS_3","from_debug",UVM_DEBUG)
    `uvm_info("STATUS_4","from_medium",UVM_MEDIUM)
    `uvm_info("STATUS_5","from_low",UVM_LOW)
    `uvm_info("STATUS_6","from_full",UVM_FULL)
  endfunction
  
endclass

module tb;
  uvm_report_object uv;
  initial begin
    uv=new();
    uv.preview();
  end
endmodule
// some feature are not worked fixed soon as possible 
      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO design.sv(6) @ 0: reporter [-->STATUS] using_uvm_report_object
UVM_INFO design.sv(11) @ 0: reporter [STATUS_2] from_uvm_none
UVM_INFO design.sv(13) @ 0: reporter [STATUS_4] from_medium
UVM_INFO design.sv(14) @ 0: reporter [STATUS_5] from_low
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.1Mb
Sat Feb  7 23:45:15 2026
