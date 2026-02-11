`include "uvm_macros.svh"
import uvm_pkg::*;
class seq extends uvm_sequence_item;
  rand bit [5:0]addr;
  rand bit [5:0]data;
  `uvm_object_utils(seq)
  
  function new(string name ="seq");
    super.new(name);
  endfunction
endclass

class seq_child extends uvm_sequence #(seq);
  seq req;
  `uvm_object_utils(seq_child)
  function new(string name="seq_child");
    super.new(name);
  endfunction
  
  task body();
    `uvm_info(get_type_name(),"Parent seq => Body started",UVM_LOW);
    req =seq ::type_id ::create("req");
    #15;
    `uvm_info(get_type_name(),"Parent seq => Body complete",UVM_LOW);
  endtask
endclass

class base_test extends uvm_test;
  seq_child done;
  `uvm_component_utils(base_test)
  function new(string name ="base_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    phase.raise_objection(this,"raise objection");
    done=seq_child::type_id::create("seq_child");
    done.start(null);
    phase.drop_objection(this,"drop objection");
    done.print();
  endtask
endclass

module tb;
  initial begin
    run_test("base_test");
  end
endmodule



UVM_INFO @ 0: reporter [RNTST] Running test base_test...
UVM_INFO testbench.sv(21) @ 0: reporter@@seq_child [seq_child] Parent seq => Body started
UVM_INFO testbench.sv(24) @ 15: reporter@@seq_child [seq_child] Parent seq => Body complete
------------------------------------------------------
Name                           Type       Size  Value 
------------------------------------------------------
seq_child                      seq_child  -     @357  
  depth                        int        32    'd1   
  parent sequence (name)       string     0     ""    
  parent sequence (full name)  string     0     ""    
  sequencer                    string     0     ""    
  req                          object     -     <null>
  rsp                          object     -     <null>
------------------------------------------------------
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 15: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 15: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :    5
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[RNTST]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[seq_child]     2

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                   15
           V C S   S i m u l a t i o n   R e p o r t 
Time: 15 ns
CPU Time:      0.590 seconds;       Data structure size:   0.2Mb
Wed Feb 11 01:31:40 2026
