`ifndef GPIO_INT_CASE0__SV
`define GPIO_INT_CASE0__SV

class test_gpio_int_int_code extends base_test;

   function new(string name = "test_gpio_int_int_code", uvm_component parent = null);
      super.new(name,parent);
   endfunction 
   extern virtual function void build_phase(uvm_phase phase); 
   `uvm_component_utils(test_gpio_int_int_code)
endclass

function void test_gpio_int_int_code::build_phase(uvm_phase phase);
   super.build_phase(phase);

   $display("\n\t========================================================");
   $display("\t\tExcuting test pattern is : [ %s ]", get_type_name);
   $display("\t========================================================\n\n");

   uvm_config_db#(uvm_object_wrapper)::set(this, 
                                           "v_sqr.configure_phase", 
                                           "default_sequence", 
                                           gpio_int_cfg_fd_vseq::type_id::get());
   uvm_config_db#(uvm_object_wrapper)::set(this, 
                                           "v_sqr.main_phase", 
                                           "default_sequence", 
                                           gen_rand_intr_vseq::type_id::get());
endfunction

`endif
