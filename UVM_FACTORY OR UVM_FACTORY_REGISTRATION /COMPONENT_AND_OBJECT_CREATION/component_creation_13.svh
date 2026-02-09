`include "uvm_macros.svh"
import uvm_pkg::*;
class comp extends uvm_component;
  rand bit [2:0]a;
  randc bit [1:0]b;
  `uvm_component_utils_begin(comp)
  `uvm_field_int(a,UVM_DEFAULT)
  `uvm_field_int(b,UVM_DEFAULT)
  `uvm_component_utils_end
  function new (string name="comp",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  function void preview();
    `uvm_info("RANDOMIZED RESULT",$sformatf("a=[%0d],b=[%0d]",a,b),UVM_NONE)
  endfunction
endclass

class b_comp extends comp;
  rand bit [2:0]c;
  randc bit [3:0]d;
    `uvm_component_utils_begin(b_comp)
  `uvm_field_int(c,UVM_DEFAULT)
  `uvm_field_int(d,UVM_DEFAULT)
   `uvm_component_utils_end
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
      ob.print();
    end
    repeat(10)begin
      bo.randomize();
      bo.randomize();
      bo.preview_1();
      bo.print();
    end
  end
endmodule



  Package 'uvm_pkg' already wildcard imported. 
  Ignoring uvm_pkg::*
  See the SystemVerilog LRM(1800-2005), section 19.2.1.

Parsing design file 'testbench.sv'
Top Level Modules:
       tb
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...
4 modules and 0 UDP read.
recompiling package vcs_paramclassrepository
recompiling package _vcs_DPI_package
recompiling package uvm_pkg
recompiling module tb
All of 4 modules done
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
/bin/sh: line 1: cmp: command not found
g++ -w  -pipe -fPIC -DVCS -O -I/apps/vcsmx/vcs/X-2025.06-SP1/include     -c /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/dpi/uvm_dpi.cc
gcc  -w  -pipe -fPIC -DVCS -O -I/apps/vcsmx/vcs/X-2025.06-SP1/include    -fPIC -c -o uM9F1_0x2aB.o uM9F1_0x2aB.c
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib -L/apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib  -Wl,-rpath-link=./  uvm_dpi.o   objs/amcQw_d.o  _345_archive_1.so  SIM_l.o   uM9F1_0x2aB.o   rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs      -lvcsnew -ldistsimclient -lsimprofile -luclinative /apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive      ./../simv.daidir/vc_hdrs.o    /apps/vcsmx/vcs/X-2025.06-SP1/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: 12.376 seconds to compile + .573 seconds to elab + 1.580 seconds to link
Chronologic VCS simulator copyright 1991-2025
Contains Synopsys proprietary information.
Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Feb  9 14:01 2026
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(407) @ 0: reporter [UVM/RELNOTES] 
----------------------------------------------------------------
UVM-1.2.Synopsys
(C) 2007-2014 Mentor Graphics Corporation
(C) 2007-2014 Cadence Design Systems, Inc.
(C) 2006-2014 Synopsys, Inc.
(C) 2011-2013 Cypress Semiconductor Corp.
(C) 2013-2014 NVIDIA Corporation
----------------------------------------------------------------

  ***********       IMPORTANT RELEASE NOTES         ************

  You are using a version of the UVM library that has been compiled
  with `UVM_NO_DEPRECATED undefined.
  See http://www.eda.org/svdb/view.php?id=3313 for more details.

  You are using a version of the UVM library that has been compiled
  with `UVM_OBJECT_DO_NOT_NEED_CONSTRUCTOR undefined.
  See http://www.eda.org/svdb/view.php?id=3770 for more details.

      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[0],b=[2]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h0  
  b   integral  2     'h2  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[3]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h7  
  b   integral  2     'h3  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h7  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[2],b=[1]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h2  
  b   integral  2     'h1  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[1],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h1  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[1]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h7  
  b   integral  2     'h1  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[0],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h0  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[7],b=[3]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h7  
  b   integral  2     'h3  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[1],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h1  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[5],b=[1]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h5  
  b   integral  2     'h1  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[3],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h3  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[1],b=[1]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h1  
  b   integral  2     'h1  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[3],b=[2]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h3  
  b   integral  2     'h2  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[5],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h5  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[2],b=[2]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h2  
  b   integral  2     'h2  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[5],b=[3]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h5  
  b   integral  2     'h3  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[4],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h4  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[4],b=[3]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h4  
  b   integral  2     'h3  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[3],b=[0]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h3  
  b   integral  2     'h0  
---------------------------
UVM_INFO design.sv(14) @ 0: ob [RANDOMIZED RESULT] a=[6],b=[2]
---------------------------
Name  Type      Size  Value
---------------------------
ob    comp      -     @336 
  a   integral  3     'h6  
  b   integral  2     'h2  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[3],d=[12]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h3  
  b   integral  2     'h1  
  c   integral  3     'h3  
  d   integral  4     'hc  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[2],d=[6]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h4  
  b   integral  2     'h2  
  c   integral  3     'h2  
  d   integral  4     'h6  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[6],d=[15]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h0  
  b   integral  2     'h1  
  c   integral  3     'h6  
  d   integral  4     'hf  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[5],d=[7]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h5  
  b   integral  2     'h0  
  c   integral  3     'h5  
  d   integral  4     'h7  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[0],d=[3]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h1  
  b   integral  2     'h1  
  c   integral  3     'h0  
  d   integral  4     'h3  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[0],d=[14]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h5  
  b   integral  2     'h0  
  c   integral  3     'h0  
  d   integral  4     'he  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[7],d=[5]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h7  
  b   integral  2     'h3  
  c   integral  3     'h7  
  d   integral  4     'h5  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[7],d=[13]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h6  
  b   integral  2     'h1  
  c   integral  3     'h7  
  d   integral  4     'hd  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[7],d=[7]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h7  
  b   integral  2     'h0  
  c   integral  3     'h7  
  d   integral  4     'h7  
---------------------------
UVM_INFO design.sv(29) @ 0: bo [RANDOMIZED RESULT] c=[1],d=[0]
---------------------------
Name  Type      Size  Value
---------------------------
bo    b_comp    -     @345 
  a   integral  3     'h6  
  b   integral  2     'h2  
  c   integral  3     'h1  
  d   integral  4     'h0  
---------------------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.630 seconds;       Data structure size:   0.2Mb
Mon Feb  9 14:01:13 2026
