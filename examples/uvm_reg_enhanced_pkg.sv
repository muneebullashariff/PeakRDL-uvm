`ifndef _UVM_REG_ENHANCED_PKG_INCLUDED_
`define _UVM_REG_ENHANCED_PKG_INCLUDED_

//--------------------------------------------------------------------------------------------
// Package:
//--------------------------------------------------------------------------------------------
package uvm_reg_enhanced_pkg;

   `include "uvm_macros.svh"
   import uvm_pkg::*;

  //--------------------------------------------------------------------------------------------
  // Class: uvm_reg_enhanced
  // Used for adding customized features to the uvm_reg
  //--------------------------------------------------------------------------------------------
  class uvm_reg_enhanced extends uvm_reg;
    // MSHA:`uvm_object_utils(uvm_reg_enhanced)

    //-------------------------------------------------------
    // Externally defined methods
    //-------------------------------------------------------
    extern function new (string name="",
                         int unsigned n_bits,
                         int has_coverage);

    extern virtual task write(output uvm_status_e      status,
                              input  uvm_reg_data_t    value,
                              input  uvm_path_e        path = UVM_DEFAULT_PATH,
                              input  uvm_reg_map       map = null,
                              input  uvm_sequence_base parent = null,
                              input  int               prior = -1,
                              input  uvm_object        extension = null,
                              input  string            fname = "",
                              input  int               lineno = 0);

    extern virtual function uvm_status_e backdoor_read_func(uvm_reg_item rw);

  endclass:uvm_reg_enhanced


  //--------------------------------------------------------------------------------------------
  // Constructor: new
  //--------------------------------------------------------------------------------------------
  function uvm_reg_enhanced::new(string name="", int unsigned n_bits, int has_coverage);
     super.new(name, n_bits, has_coverage);
  endfunction: new

  //--------------------------------------------------------------------------------------------
  // Function: write
  // Used for adding the backdoor register access for every write
  //--------------------------------------------------------------------------------------------
  task uvm_reg_enhanced::write(output uvm_status_e      status,
                                    input  uvm_reg_data_t    value,
                                    input  uvm_path_e        path = UVM_DEFAULT_PATH,
                                    input  uvm_reg_map       map = null,
                                    input  uvm_sequence_base parent = null,
                                    input  int               prior = -1,
                                    input  uvm_object        extension = null,
                                    input  string            fname = "",
                                    input  int               lineno = 0);

    // MSHA: // Check if the user wants to enable backdoor register write                                  
    // MSHA: bit reg_backdoor_write;
    // MSHA: if($test$plusargs("REG_BD_WR=")) begin
    // MSHA:  if (!($value$plusargs("REG_BD_WR=%0d", reg_backdoor_write))) begin
    // MSHA:    `uvm_fatal("FATAL_FE_NO_REG_BD_WR_VALUE", "Give the value for REG_BD_WR");
    // MSHA:  end
    // MSHA: end

    // MSHA: Can use the static variable inside this class
    // for example:
    // static bit reg_backdoor_wr_en;
    //
    // In the env, we can do the following:
    // uvm_reg_enhanced::reg_backdoor_wr_en = 1;
    // This wil make sure that all the objects from this class will have the variable set

    // MSHA: // change the path based on the user input
    // MSHA: if(reg_backdoor_write) begin
    // MSHA:   path = UVM_BACKDOOR;    
    // MSHA:   `uvm_info(get_type_name(), $sformatf("Enabling backdoor register write"), UVM_HIGH);
    // MSHA: end

    // Call the uvm_reg::write
    super.write(status, value, path, map, parent, prior, extension, fname, lineno);  

  endtask: write                                  

//--------------------------------------------------------------------------------------------
// Function: backdoor_read_func
// User function for backdoor read
// Having the uvm_reg_data_logic_t in-order to determine the 'X' in the register
//--------------------------------------------------------------------------------------------
function uvm_status_e uvm_reg_enhanced::backdoor_read_func(uvm_reg_item rw);
  uvm_hdl_path_concat paths[$];
  uvm_reg_data_logic_t val;
  bit ok=1;

  int unsigned m_n_bits;
  m_n_bits = get_n_bits();

  get_full_hdl_path(paths,rw.bd_kind);
  foreach (paths[i]) begin
     uvm_hdl_path_concat hdl_concat = paths[i];
     val = 0;
     foreach (hdl_concat.slices[j]) begin
        `uvm_info("RegMem", {"backdoor_read from %s ",
               hdl_concat.slices[j].path},UVM_DEBUG)

        if (hdl_concat.slices[j].offset < 0) begin
           ok &= uvm_hdl_read(hdl_concat.slices[j].path,val);
           continue;
        end
        begin
           uvm_reg_data_logic_t slice;
           int k = hdl_concat.slices[j].offset;
           
           ok &= uvm_hdl_read(hdl_concat.slices[j].path, slice);
     
           repeat (hdl_concat.slices[j].size) begin
              val[k++] = slice[0];
              slice >>= 1;
           end
        end
     end

     val &= (1 << m_n_bits)-1;

     if (i == 0)
        rw.value[0] = val;

     // TODO(mshariff): Remove this line during cleanup
     `uvm_info("MUNEEB_EDIT", $sformatf("The register %s has the backdoor value %0h", get_full_name(), val), UVM_NONE);

     if (val != rw.value[0]) begin
        `uvm_error("RegModel", $sformatf("Backdoor read of register %s with multiple HDL copies: values are not the same: %0h at path '%s', and %0h at path '%s'. Returning first value.",
               get_full_name(),
               rw.value[0], uvm_hdl_concat2string(paths[0]),
               val, uvm_hdl_concat2string(paths[i])));
        return UVM_NOT_OK;
      end
      `uvm_info("RegMem",
         $sformatf("returned backdoor value 0x%0x",rw.value[0]),UVM_DEBUG);
     
  end

  rw.status = (ok) ? UVM_IS_OK : UVM_NOT_OK;

  // For 'x' check
  if(rw.status == UVM_IS_OK && ((^val) === 1'bx)) begin
    rw.status = UVM_HAS_X;
    `uvm_error("EROOR_REG_HAS_X_BD_RD", $sformatf("The register backdoor read value has 'X' in it. Register %s and value = %0h",
                                                  get_full_name(), val));
  end

  return rw.status;

endfunction: backdoor_read_func

endpackage: uvm_reg_enhanced_pkg
`endif
