`include "uvm_macros.svh"
import uvm_pkg::*;
class comp extends uvm_component;
  rand bit [2:0]a;
  randc bit [1:0]b;
  `uvm_component_utils(comp)
  function new (string name="comp",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  function void preview();
    `uvm_info("RANDOMIZED RESULT",$sformatf("a=[%0d],b=[%0d]",a,b),UVM_LOW)
  endfunction
endclass

class b_comp extends comp;
  rand bit [2:0]c;
  randc bit [3:0]d;
  `uvm_component_utils(b_comp)
  function new (string name="b_comp",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  function void preview_1();
    `uvm_info("RANDOMIZED RESULT",$sformatf("c=[%0d],d=[%0d]",c,d),UVM_LOW)
  endfunction
endclass

module tb;
  comp ob;
  b_comp bo;
  initial begin
    ob=new("ob",null);
    bo=new("bo",null);
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



UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[0],b=[2]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[3]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[2],b=[1]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[1],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[1]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[0],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[3]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[1],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[5],b=[1]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[3],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[1],b=[1]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[3],b=[2]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[5],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[2],b=[2]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[5],b=[3]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[4],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[4],b=[3]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[3],b=[0]
UVM_INFO design.sv(11) @ 0: ob [RANDOMIZED RESULT] a=[6],b=[2]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[3],d=[12]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[2],d=[6]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[6],d=[15]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[5],d=[7]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[0],d=[3]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[0],d=[14]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[7],d=[5]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[7],d=[13]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[7],d=[7]
UVM_INFO design.sv(23) @ 0: bo [RANDOMIZED RESULT] c=[1],d=[0]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.620 seconds;       Data structure size:   0.2Mb
Mon Feb  9 13:39:21 2026
