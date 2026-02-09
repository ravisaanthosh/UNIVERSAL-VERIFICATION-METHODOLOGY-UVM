`include "uvm_macros.svh"
import uvm_pkg::*;
class object extends uvm_object;
  rand bit [2:0]a;
  randc bit [1:0]b;
  `uvm_object_utils(object)
    function new (string name="object");
      super.new(name);
  endfunction
  function void preview();
    `uvm_info("RANDOMIZED RESULT",$sformatf("a=[%0d],b=[%0d]",a,b),UVM_LOW)
  endfunction
endclass

class b_object extends object;
  rand bit [2:0]c;
  randc bit [3:0]d;
  `uvm_object_utils(b_object)
  function new (string name="b_object");
    super.new(name);
  endfunction
  function void preview_1();
    `uvm_info("RANDOMIZED RESULT",$sformatf("c=[%0d],d=[%0d]",c,d),UVM_LOW)
  endfunction
endclass

module tb;
  object ob;
  b_object bo;
  initial begin
    ob=new();
    bo=new();
    repeat(20)begin
      ob.randomize();
      ob.randomize();
      ob.preview();
    end
    repeat(10)begin
      bo.randomize();
      bo.randomize();
      bo.preview_1();
    end
  end
endmodule

      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[3],b=[0]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[7],b=[1]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[3],b=[1]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[3],b=[3]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[1],b=[0]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[0],b=[3]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[2],b=[2]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[2],b=[1]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[0],b=[0]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[6],b=[2]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[3],b=[3]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[0],b=[0]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[0],b=[0]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[1],b=[3]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[7],b=[2]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[6],b=[3]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[4],b=[3]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[1],b=[2]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[4],b=[0]
UVM_INFO design.sv(11) @ 0: reporter [RANDOMIZED RESULT] a=[0],b=[1]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[6],d=[14]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[4],d=[15]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[4],d=[4]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[5],d=[9]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[1],d=[10]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[4],d=[1]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[5],d=[8]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[6],d=[7]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[2],d=[14]
UVM_INFO design.sv(23) @ 0: reporter [RANDOMIZED RESULT] c=[7],d=[12]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.2Mb
Mon Feb  9 13:28:58 2026
