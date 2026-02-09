`uvm_component_utils(comp)
function new (string name="comp",uvm_component parent=null);//default component
    super.new(name,parent);
  endfunction
  function void preview();
    `uvm_info("RANDOMIZED RESULT",$sformatf("a=[%0d],b=[%0d]",a,b),UVM_LOW)
  endfunction
