`include "uvm_macros.svh"
import uvm_pkg::*;
class uvm_trac extends uvm_transaction;
  rand int train_1;
  rand int train_2;
  constraint c1 { train_1 >5;}
  constraint c2 { train_2<10;}
  function new(string name="uvm_trac");
    super.new(name);
  endfunction
  task preview();
    #5 `uvm_info("RANDOMIZING",$sformatf("[%0t],train_1=[%0d] train_2=[%0d]",$time,train_1,train_2),UVM_LOW)
  endtask
endclass

module tb;
  uvm_trac tr;
  initial begin
    tr=new();
    repeat(5)begin
      tr.randomize();
      tr.preview();
    end
  end
endmodule


UVM_INFO design.sv(12) @ 5: reporter [RANDOMIZING] [5],train_1=[722902789] train_2=[-73098850]
UVM_INFO design.sv(12) @ 10: reporter [RANDOMIZING] [10],train_1=[1888924328] train_2=[-1613424616]
UVM_INFO design.sv(12) @ 15: reporter [RANDOMIZING] [15],train_1=[808244996] train_2=[-1059259895]
UVM_INFO design.sv(12) @ 20: reporter [RANDOMIZING] [20],train_1=[1714913806] train_2=[-725654741]
UVM_INFO design.sv(12) @ 25: reporter [RANDOMIZING] [25],train_1=[1693858629] train_2=[-1279374628]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 25 ns
CPU Time:      0.570 seconds;       Data structure size:   0.2Mb
Sun Feb  8 02:32:04 2026
