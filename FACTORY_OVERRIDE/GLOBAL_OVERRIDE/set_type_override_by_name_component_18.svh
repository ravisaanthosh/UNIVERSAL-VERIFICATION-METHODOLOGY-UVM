`include "uvm_macros.svh"
import uvm_pkg::*;
class component_1 extends uvm_component;
  `uvm_component_utils(component_1)
  
  function new(string name ="component_1",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  virtual function preview();
    `uvm_info(get_type_name(),$sformatf("inside component_1"),UVM_LOW);
  endfunction
endclass

class component_2 extends component_1;
  `uvm_component_utils(component_2)
  function new(string name="component_2",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function preview();
    `uvm_info(get_type_name(),$sformatf("inside component_2"),UVM_LOW);
  endfunction
endclass

class my_report extends uvm_test;
  `uvm_component_utils(my_report)
  component_1 cp1;
  function new (string name="my_report",uvm_component parent =null);
    super.new(name,parent);
  endfunction
  
  function void build_phase (uvm_phase phase);
    uvm_factory factory=uvm_factory ::get();
    super.build_phase(phase);
    
    factory.set_type_override_by_name("component_1","component_2");//<---------set_type_override_by_name  syntax 
    cp1=component_1::type_id::create("cp1",this);
    factory.print();
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    cp1.preview();
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
  component_1     component_2

All types registered with the factory: 55 total
  Type Name
  ---------
  component_1
  component_2
  my_report
  snps_uvm_reg_bank_group
  snps_uvm_reg_map
(*) Types with no associated type name will be printed as <unknown>

####


UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------
Name          Type         Size  Value
--------------------------------------
uvm_test_top  my_report    -     @336 
  cp1         component_2  -     @349 
--------------------------------------

UVM_INFO design.sv(22) @ 0: uvm_test_top.cp1 [component_2] inside component_2
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
[component_2]     1

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.610 seconds;       Data structure size:   0.2Mb
Tue Feb 10 03:45:40 2026
Done
