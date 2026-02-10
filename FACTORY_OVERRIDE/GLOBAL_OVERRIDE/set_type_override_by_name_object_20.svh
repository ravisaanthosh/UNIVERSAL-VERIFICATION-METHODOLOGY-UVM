`include "uvm_macros.svh"
import uvm_pkg::*;
class object_1 extends uvm_object;
  `uvm_object_utils(object_1)
  
  function new(string name ="object_1");
    super.new(name);
  endfunction
  
  virtual function preview();
    `uvm_info(get_type_name(),$sformatf("inside object_1"),UVM_LOW);
  endfunction
endclass

class object_2 extends object_1;
  `uvm_object_utils(object_2)
  function new(string name="object_2");
    super.new(name);
  endfunction
  
  function preview();
    `uvm_info(get_type_name(),$sformatf("inside object_2"),UVM_LOW);
  endfunction
endclass

class my_report extends uvm_test;
  `uvm_component_utils(my_report)
  object_1 ob1;
  function new (string name="my_report",uvm_component parent =null);
    super.new(name,parent);
  endfunction
  
  function void build_phase (uvm_phase phase);
    uvm_factory factory=uvm_factory ::get();
    super.build_phase(phase);
    
    factory.set_type_override_by_name("object_1","object_2"); //<----syntax for object set_type_override_name
    
    ob1=object_1::type_id::create("object_2");
    factory.print();
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    ob1.preview();
  endtask
endclass

module tb;
  initial begin
    run_test("my_report");
  end
endmodule




UVM_INFO @ 0: reporter [RNTST] Running test my_report...
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_factory.svh(1645) @ 0: reporter [UVM/FACTORY/PRINT] 
#### Factory Configuration (*)

No instance overrides are registered with this factory

Type Overrides:

  Requested Type  Override Type
  --------------  -------------
  object_1        object_2

All types registered with the factory: 55 total
  Type Name
  ---------
  my_report
  object_1
  object_2
  snps_uvm_reg_bank_group
  snps_uvm_reg_map
(*) Types with no associated type name will be printed as <unknown>

####


UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
------------------------------------
Name          Type       Size  Value
------------------------------------
uvm_test_top  my_report  -     @336 
------------------------------------

UVM_INFO design.sv(22) @ 0: reporter [object_2] inside object_2
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 0: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :    5
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[RNTST]     1
[UVM/FACTORY/PRINT]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[object_2]     1

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.2Mb
Tue Feb 10 04:14:31 2026
