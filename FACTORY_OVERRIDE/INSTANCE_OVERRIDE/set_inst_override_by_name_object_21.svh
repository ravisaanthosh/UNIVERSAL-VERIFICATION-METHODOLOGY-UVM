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
    
    factory.set_inst_override_by_name("*","object_1","object_2"); //<----syntax for object set_inst_override_name
    
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

Instance Overrides:

  Requested Type                        Override Path  Override Type
  ------------------------------------  -------------  -------------
  my_report                             object_2       object_1
  object_1                              object_2       object_1
  object_2                              object_2       object_1
  snps_uvm_reg_bank_group               object_2       object_1
  snps_uvm_reg_map                      object_2       object_1
  uvm_cause_effect_link                 object_2       object_1
  uvm_exhaustive_sequence               object_2       object_1
  uvm_mem_access_seq                    object_2       object_1
  uvm_mem_shared_access_seq             object_2       object_1
  uvm_mem_single_access_seq             object_2       object_1
  uvm_mem_single_walk_seq               object_2       object_1
  uvm_mem_walk_seq                      object_2       object_1
  uvm_objection                         object_2       object_1
  uvm_parent_child_link                 object_2       object_1
  uvm_phase_state_change                object_2       object_1
  uvm_random_sequence                   object_2       object_1
  uvm_reg_access_seq                    object_2       object_1
  uvm_reg_backdoor                      object_2       object_1
  uvm_reg_bit_bash_seq                  object_2       object_1
  uvm_reg_field                         object_2       object_1
  uvm_reg_hw_reset_seq                  object_2       object_1
  uvm_reg_item                          object_2       object_1
  uvm_reg_map                           object_2       object_1
  uvm_reg_mem_access_seq                object_2       object_1
  uvm_reg_mem_built_in_seq              object_2       object_1
  uvm_reg_mem_hdl_paths_seq             object_2       object_1
  uvm_reg_mem_shared_access_seq         object_2       object_1
  uvm_reg_read_only_cbs                 object_2       object_1
  uvm_reg_shared_access_seq             object_2       object_1
  uvm_reg_single_access_seq             object_2       object_1
  uvm_reg_single_bit_bash_seq           object_2       object_1
  uvm_reg_tlm_adapter                   object_2       object_1
  uvm_reg_write_only_cbs                object_2       object_1
  uvm_related_link                      object_2       object_1
  uvm_report_handler                    object_2       object_1
  uvm_report_message                    object_2       object_1
  uvm_report_message_element_container  object_2       object_1
  uvm_sequence_item                     object_2       object_1
  uvm_sequence_library_cfg              object_2       object_1
  uvm_simple_sequence                   object_2       object_1
  uvm_test_done                         object_2       object_1
  uvm_text_recorder                     object_2       object_1
  uvm_text_tr_database                  object_2       object_1
  uvm_text_tr_stream                    object_2       object_1
  uvm_tlm_generic_payload               object_2       object_1
  uvm_vreg_field                        object_2       object_1

No type overrides are registered with this factory

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

UVM_INFO design.sv(11) @ 0: reporter [object_1] inside object_1
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
[object_1]     1

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.770 seconds;       Data structure size:   0.2Mb
Tue Feb 10 04:55:04 2026
