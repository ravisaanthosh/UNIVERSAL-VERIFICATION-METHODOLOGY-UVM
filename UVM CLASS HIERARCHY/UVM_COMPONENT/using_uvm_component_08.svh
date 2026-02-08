`include "uvm_macros.svh"
import uvm_pkg::*;
class comp extends uvm_component;
   int val_1[8:0];
  function new(string name="comp",uvm_component parent);
    super.new(name,parent);
    `uvm_info("ACTUAL","creating my_comp",UVM_LOW)
  endfunction
  
  function void preview();
    foreach(val_1[i])begin
      val_1[i]=$urandom();
      `uvm_info("RANDOMIZING",$sformatf("val_1[%0d]\t RESULT--->[%0d]",i,val_1[i]),UVM_LOW)
      `uvm_info("EXPECTED STATUS",$sformatf("RANMOMIZING_PASS"),UVM_LOW)
    end
  endfunction
endclass

module tb;
  comp c1;
  initial begin
    c1=new("c1",null);
    c1.preview();
  end
endmodule


UVM_INFO design.sv(7) @ 0: c1 [ACTUAL] creating my_comp
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[8]	 RESULT--->[98710838]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[7]	 RESULT--->[1474208060]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[6]	 RESULT--->[-1098913923]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[5]	 RESULT--->[816460770]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[4]	 RESULT--->[41501707]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[3]	 RESULT--->[-1179418145]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[2]	 RESULT--->[-212817600]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[1]	 RESULT--->[-719881993]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
UVM_INFO design.sv(13) @ 0: c1 [RANDOMIZING] val_1[0]	 RESULT--->[1837005222]
UVM_INFO design.sv(14) @ 0: c1 [EXPECTED STATUS] RANMOMIZING_PASS
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.570 seconds;       Data structure size:   0.2Mb
Sun Feb  8 05:42:46 2026
