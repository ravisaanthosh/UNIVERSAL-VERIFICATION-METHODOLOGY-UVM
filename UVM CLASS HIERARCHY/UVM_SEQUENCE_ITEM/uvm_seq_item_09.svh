`include "uvm_macros.svh"
import uvm_pkg::*;
class seq_itm extends uvm_sequence_item;
   int val_1;
   int val_2;
  longint result ;
  function  new (string name ="seq_itm");
  endfunction
  
  function void preview();
    `uvm_info("RANDOMIZED RESULT",$sformatf("val_1=[%0d],val_2=[%0d],result=[%0d]",val_1,val_2,result),UVM_LOW)
    result=val_1 + val_2;
  endfunction
endclass

module tb;
  seq_itm sq;
  initial begin
    sq=new();
    repeat(10)begin
    sq.val_1=$urandom;
     sq.val_2=$urandom;
    sq.preview();
    end
  end
endmodule


UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[98710838],val_2=[1474208060],result=[0]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[-1098913923],val_2=[816460770],result=[1572918898]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[41501707],val_2=[-1179418145],result=[-282453153]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[-212817600],val_2=[-719881993],result=[-1137916438]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[1837005222],val_2=[819246107],result=[-932699593]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[39558581],val_2=[-2099014406],result=[2656251329]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[431782478],val_2=[1519952405],result=[-2059455825]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[2038808957],val_2=[-465936526],result=[1951734883]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[-4374122],val_2=[561821489],result=[1572872431]
UVM_INFO design.sv(13) @ 0: reporter@@uvm_sequence_item [RANDOMIZED RESULT] val_1=[-1644866364],val_2=[-892810070],result=[557447367]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.1Mb
Sun Feb  8 08:59:40 2026
Done
