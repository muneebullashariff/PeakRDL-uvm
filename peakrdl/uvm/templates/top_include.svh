{% import 'main.sv' as main with context -%}
//---------------------------------------------------------------------------------
// This file was autogenerated by PeakRDL-uvm
// Date (mm-dd-yyyy) : {{get_today_date}}  
// Time (hh:mm:ss)   : {{get_current_time}}
//---------------------------------------------------------------------------------

`ifndef {{include_guard}}
`define {{include_guard}}
    {{ main.top()|indent}}
`endif

