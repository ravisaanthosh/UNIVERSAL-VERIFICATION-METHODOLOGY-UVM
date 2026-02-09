`uvm_object_utils(object)
function new (string name="object");//default constructor
      super.new(name);
  endfunction
  function void preview();
    `uvm_info("RANDOMIZED RESULT",$sformatf("a=[%0d],b=[%0d]",a,b),UVM_LOW)
  endfunction
