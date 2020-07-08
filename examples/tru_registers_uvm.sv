//---------------------------------------------------------------------------------
// This file was autogenerated by PeakRDL-uvm
// Date (mm-dd-yyyy) : 07-08-2020  
// Time (hh:mm:ss)   : 21:28:16
//---------------------------------------------------------------------------------

`ifndef TRU_REGISTERS_UVM_SV
`define TRU_REGISTERS_UVM_SV
    
    //-----------------------------------------------------------------------------
    // Reg - trigger_routing_unit.tru_ssrn
    //-----------------------------------------------------------------------------
    class trigger_routing_unit__tru_ssrn extends uvm_reg;
        `uvm_object_utils(trigger_routing_unit__tru_ssrn)
        
        rand uvm_reg_field LOCK;
             uvm_reg_field RESERVED1;
        rand uvm_reg_field SSR;
        
        // Covergroup
        covergroup cg_vals;
            LOCK : coverpoint LOCK.value[0];
            SSR : coverpoint SSR.value[7:0];
        endgroup

        // Function: new
        function new(string name = "trigger_routing_unit__tru_ssrn");
            super.new(name, 32, build_coverage(UVM_CVR_FIELD_VALS));
            add_coverage(build_coverage(UVM_CVR_FIELD_VALS));
            if(has_coverage(UVM_CVR_FIELD_VALS)) begin
               cg_vals = new();
               cg_vals.set_inst_name(name);
            end
        endfunction : new
        
        // Function: sample_values
        virtual function void sample_values();
            super.sample_values();
            if (get_coverage(UVM_CVR_FIELD_VALS))
               cg_vals.sample();
        endfunction

        // Function: sample
        // This method is automatically invoked by the register abstraction class
        // whenever it is read or written with the specified ~data~
        // via the specified address ~map~
        protected virtual function void sample(uvm_reg_data_t data,
                                               uvm_reg_data_t byte_en,
                                               bit is_read,
                                               uvm_reg_map map);
            super.sample(data,byte_en,is_read,map);   
            
            foreach (m_fields[i])
               m_fields[i].value = ((data >> m_fields[i].get_lsb_pos()) &
                                    ((1 << m_fields[i].get_n_bits()) - 1));
         
            sample_values();
        endfunction

        // Function: build
        virtual function void build();
            this.LOCK = uvm_reg_field::type_id::create("LOCK");
            this.LOCK.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(31),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.RESERVED1 = uvm_reg_field::type_id::create("RESERVED1");
            
            this.SSR = uvm_reg_field::type_id::create("SSR");
            this.SSR.configure( 
                                  .parent(this),
                                  .size(8),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(8'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
        endfunction : build
    endclass : trigger_routing_unit__tru_ssrn

    //-----------------------------------------------------------------------------
    // Reg - trigger_routing_unit.tru_mtr
    //-----------------------------------------------------------------------------
    class trigger_routing_unit__tru_mtr extends uvm_reg;
        `uvm_object_utils(trigger_routing_unit__tru_mtr)
        
        rand uvm_reg_field MTR3;
        rand uvm_reg_field MTR2;
        rand uvm_reg_field MTR1;
        rand uvm_reg_field MTR0;
        
        // Covergroup
        covergroup cg_vals;
            MTR3 : coverpoint MTR3.value[7:0];
            MTR2 : coverpoint MTR2.value[7:0];
            MTR1 : coverpoint MTR1.value[7:0];
            MTR0 : coverpoint MTR0.value[7:0];
        endgroup

        // Function: new
        function new(string name = "trigger_routing_unit__tru_mtr");
            super.new(name, 32, build_coverage(UVM_CVR_FIELD_VALS));
            add_coverage(build_coverage(UVM_CVR_FIELD_VALS));
            if(has_coverage(UVM_CVR_FIELD_VALS)) begin
               cg_vals = new();
               cg_vals.set_inst_name(name);
            end
        endfunction : new
        
        // Function: sample_values
        virtual function void sample_values();
            super.sample_values();
            if (get_coverage(UVM_CVR_FIELD_VALS))
               cg_vals.sample();
        endfunction

        // Function: sample
        // This method is automatically invoked by the register abstraction class
        // whenever it is read or written with the specified ~data~
        // via the specified address ~map~
        protected virtual function void sample(uvm_reg_data_t data,
                                               uvm_reg_data_t byte_en,
                                               bit is_read,
                                               uvm_reg_map map);
            super.sample(data,byte_en,is_read,map);   
            
            foreach (m_fields[i])
               m_fields[i].value = ((data >> m_fields[i].get_lsb_pos()) &
                                    ((1 << m_fields[i].get_n_bits()) - 1));
         
            sample_values();
        endfunction

        // Function: build
        virtual function void build();
            this.MTR3 = uvm_reg_field::type_id::create("MTR3");
            this.MTR3.configure( 
                                  .parent(this),
                                  .size(8),
                                  .lsb_pos(24),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(8'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.MTR2 = uvm_reg_field::type_id::create("MTR2");
            this.MTR2.configure( 
                                  .parent(this),
                                  .size(8),
                                  .lsb_pos(16),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(8'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.MTR1 = uvm_reg_field::type_id::create("MTR1");
            this.MTR1.configure( 
                                  .parent(this),
                                  .size(8),
                                  .lsb_pos(8),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(8'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.MTR0 = uvm_reg_field::type_id::create("MTR0");
            this.MTR0.configure( 
                                  .parent(this),
                                  .size(8),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(8'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
        endfunction : build
    endclass : trigger_routing_unit__tru_mtr

    //-----------------------------------------------------------------------------
    // Reg - trigger_routing_unit.tru_erraddr
    //-----------------------------------------------------------------------------
    class trigger_routing_unit__tru_erraddr extends uvm_reg;
        `uvm_object_utils(trigger_routing_unit__tru_erraddr)
        
             uvm_reg_field RESERVED1;
        rand uvm_reg_field ADDR;
        
        // Covergroup
        covergroup cg_vals;
            ADDR : coverpoint ADDR.value[11:0];
        endgroup

        // Function: new
        function new(string name = "trigger_routing_unit__tru_erraddr");
            super.new(name, 32, build_coverage(UVM_CVR_FIELD_VALS));
            add_coverage(build_coverage(UVM_CVR_FIELD_VALS));
            if(has_coverage(UVM_CVR_FIELD_VALS)) begin
               cg_vals = new();
               cg_vals.set_inst_name(name);
            end
        endfunction : new
        
        // Function: sample_values
        virtual function void sample_values();
            super.sample_values();
            if (get_coverage(UVM_CVR_FIELD_VALS))
               cg_vals.sample();
        endfunction

        // Function: sample
        // This method is automatically invoked by the register abstraction class
        // whenever it is read or written with the specified ~data~
        // via the specified address ~map~
        protected virtual function void sample(uvm_reg_data_t data,
                                               uvm_reg_data_t byte_en,
                                               bit is_read,
                                               uvm_reg_map map);
            super.sample(data,byte_en,is_read,map);   
            
            foreach (m_fields[i])
               m_fields[i].value = ((data >> m_fields[i].get_lsb_pos()) &
                                    ((1 << m_fields[i].get_n_bits()) - 1));
         
            sample_values();
        endfunction

        // Function: build
        virtual function void build();
            this.RESERVED1 = uvm_reg_field::type_id::create("RESERVED1");
            
            this.ADDR = uvm_reg_field::type_id::create("ADDR");
            this.ADDR.configure( 
                                  .parent(this),
                                  .size(12),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(12'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
        endfunction : build
    endclass : trigger_routing_unit__tru_erraddr

    //-----------------------------------------------------------------------------
    // Reg - trigger_routing_unit.tru_stat
    //-----------------------------------------------------------------------------
    class trigger_routing_unit__tru_stat extends uvm_reg;
        `uvm_object_utils(trigger_routing_unit__tru_stat)
        
             uvm_reg_field RESERVED1;
        rand uvm_reg_field ADDRERR;
        rand uvm_reg_field LWERR;
        
        // Covergroup
        covergroup cg_vals;
            ADDRERR : coverpoint ADDRERR.value[0];
            LWERR : coverpoint LWERR.value[0];
        endgroup

        // Function: new
        function new(string name = "trigger_routing_unit__tru_stat");
            super.new(name, 32, build_coverage(UVM_CVR_FIELD_VALS));
            add_coverage(build_coverage(UVM_CVR_FIELD_VALS));
            if(has_coverage(UVM_CVR_FIELD_VALS)) begin
               cg_vals = new();
               cg_vals.set_inst_name(name);
            end
        endfunction : new
        
        // Function: sample_values
        virtual function void sample_values();
            super.sample_values();
            if (get_coverage(UVM_CVR_FIELD_VALS))
               cg_vals.sample();
        endfunction

        // Function: sample
        // This method is automatically invoked by the register abstraction class
        // whenever it is read or written with the specified ~data~
        // via the specified address ~map~
        protected virtual function void sample(uvm_reg_data_t data,
                                               uvm_reg_data_t byte_en,
                                               bit is_read,
                                               uvm_reg_map map);
            super.sample(data,byte_en,is_read,map);   
            
            foreach (m_fields[i])
               m_fields[i].value = ((data >> m_fields[i].get_lsb_pos()) &
                                    ((1 << m_fields[i].get_n_bits()) - 1));
         
            sample_values();
        endfunction

        // Function: build
        virtual function void build();
            this.RESERVED1 = uvm_reg_field::type_id::create("RESERVED1");
            
            this.ADDRERR = uvm_reg_field::type_id::create("ADDRERR");
            this.ADDRERR.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(1),
                                  .access("W1C"),
                                  .volatile(1),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.LWERR = uvm_reg_field::type_id::create("LWERR");
            this.LWERR.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(0),
                                  .access("W1C"),
                                  .volatile(1),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
        endfunction : build
    endclass : trigger_routing_unit__tru_stat

    //-----------------------------------------------------------------------------
    // Reg - trigger_routing_unit.tru_gctl
    //-----------------------------------------------------------------------------
    class trigger_routing_unit__tru_gctl extends uvm_reg;
        `uvm_object_utils(trigger_routing_unit__tru_gctl)
        
        rand uvm_reg_field LOCK;
             uvm_reg_field RESERVED1;
        rand uvm_reg_field MTRL;
        rand uvm_reg_field RESET;
        rand uvm_reg_field EN;
        
        // Covergroup
        covergroup cg_vals;
            LOCK : coverpoint LOCK.value[0];
            MTRL : coverpoint MTRL.value[0];
            RESET : coverpoint RESET.value[0];
            EN : coverpoint EN.value[0];
        endgroup

        // Function: new
        function new(string name = "trigger_routing_unit__tru_gctl");
            super.new(name, 32, build_coverage(UVM_CVR_FIELD_VALS));
            add_coverage(build_coverage(UVM_CVR_FIELD_VALS));
            if(has_coverage(UVM_CVR_FIELD_VALS)) begin
               cg_vals = new();
               cg_vals.set_inst_name(name);
            end
        endfunction : new
        
        // Function: sample_values
        virtual function void sample_values();
            super.sample_values();
            if (get_coverage(UVM_CVR_FIELD_VALS))
               cg_vals.sample();
        endfunction

        // Function: sample
        // This method is automatically invoked by the register abstraction class
        // whenever it is read or written with the specified ~data~
        // via the specified address ~map~
        protected virtual function void sample(uvm_reg_data_t data,
                                               uvm_reg_data_t byte_en,
                                               bit is_read,
                                               uvm_reg_map map);
            super.sample(data,byte_en,is_read,map);   
            
            foreach (m_fields[i])
               m_fields[i].value = ((data >> m_fields[i].get_lsb_pos()) &
                                    ((1 << m_fields[i].get_n_bits()) - 1));
         
            sample_values();
        endfunction

        // Function: build
        virtual function void build();
            this.LOCK = uvm_reg_field::type_id::create("LOCK");
            this.LOCK.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(31),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.RESERVED1 = uvm_reg_field::type_id::create("RESERVED1");
            
            this.MTRL = uvm_reg_field::type_id::create("MTRL");
            this.MTRL.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(2),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.RESET = uvm_reg_field::type_id::create("RESET");
            this.RESET.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(1),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
            this.EN = uvm_reg_field::type_id::create("EN");
            this.EN.configure( 
                                  .parent(this),
                                  .size(1),
                                  .lsb_pos(0),
                                  .access("RW"),
                                  .volatile(0),
                                  .reset(1'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
        endfunction : build
    endclass : trigger_routing_unit__tru_gctl

    //-----------------------------------------------------------------------------
    // Reg - trigger_routing_unit.tru_rxdata
    //-----------------------------------------------------------------------------
    class trigger_routing_unit__tru_rxdata extends uvm_reg;
        `uvm_object_utils(trigger_routing_unit__tru_rxdata)
        
        rand uvm_reg_field RXDATA;
        
        // Covergroup
        covergroup cg_vals;
            RXDATA : coverpoint RXDATA.value[31:0];
        endgroup

        // Function: new
        function new(string name = "trigger_routing_unit__tru_rxdata");
            super.new(name, 32, build_coverage(UVM_CVR_FIELD_VALS));
            add_coverage(build_coverage(UVM_CVR_FIELD_VALS));
            if(has_coverage(UVM_CVR_FIELD_VALS)) begin
               cg_vals = new();
               cg_vals.set_inst_name(name);
            end
        endfunction : new
        
        // Function: sample_values
        virtual function void sample_values();
            super.sample_values();
            if (get_coverage(UVM_CVR_FIELD_VALS))
               cg_vals.sample();
        endfunction

        // Function: sample
        // This method is automatically invoked by the register abstraction class
        // whenever it is read or written with the specified ~data~
        // via the specified address ~map~
        protected virtual function void sample(uvm_reg_data_t data,
                                               uvm_reg_data_t byte_en,
                                               bit is_read,
                                               uvm_reg_map map);
            super.sample(data,byte_en,is_read,map);   
            
            foreach (m_fields[i])
               m_fields[i].value = ((data >> m_fields[i].get_lsb_pos()) &
                                    ((1 << m_fields[i].get_n_bits()) - 1));
         
            sample_values();
        endfunction

        // Function: build
        virtual function void build();
            this.RXDATA = uvm_reg_field::type_id::create("RXDATA");
            this.RXDATA.configure( 
                                  .parent(this),
                                  .size(32),
                                  .lsb_pos(0),
                                  .access("RO"),
                                  .volatile(1),
                                  .reset(32'h0),
                                  .has_reset(1),
                                  .is_rand(1),
                                  .individually_accessible(0));
            
        endfunction : build
    endclass : trigger_routing_unit__tru_rxdata

    //-----------------------------------------------------------------------------
    // Addrmap - trigger_routing_unit_coverage
    //-----------------------------------------------------------------------------
    class trigger_routing_unit_coverage extends uvm_object;
        `uvm_object_utils(trigger_routing_unit_coverage)

        // Covergroup: ra_cov
        covergroup ra_cov(string name) with function sample(uvm_reg_addr_t addr, bit is_read);

           option.per_instance = 1;
           option.name = name; 

           ADDR: coverpoint addr {
            bins TRU_SSRN = { 32'h2000 };
            bins TRU_MTR = { 32'h2004 };
            bins TRU_ERRADDR = { 32'h2010 };
            bins TRU_STAT = { 32'h2014 };
            bins TRU_GCTL = { 32'h2018 };
            bins TRU_RXDATA = { 32'h201c };
            }

           RW: coverpoint is_read {
            bins RD = {1};
            bins WR = {0};
            }
           
           ACCESS: cross ADDR, RW {
            ignore_bins READ_ONLY_TRU_RXDATA = binsof(ADDR) intersect { 32'h201c } && binsof(RW) intersect {0};
            }

        endgroup : ra_cov

        // Function: new
        function new(string name = "trigger_routing_unit_coverage");
           ra_cov = new(name);
        endfunction : new

        // Function: sample
        function void sample(uvm_reg_addr_t offset, bit is_read);
           ra_cov.sample(offset, is_read);
        endfunction : sample
        
    endclass : trigger_routing_unit_coverage

    //-----------------------------------------------------------------------------
    // Addrmap - trigger_routing_unit
    //-----------------------------------------------------------------------------
    class trigger_routing_unit extends uvm_reg_block;
        `uvm_object_utils(trigger_routing_unit)

        rand trigger_routing_unit__tru_ssrn TRU_SSRN;
        rand trigger_routing_unit__tru_mtr TRU_MTR;
        rand trigger_routing_unit__tru_erraddr TRU_ERRADDR;
        rand trigger_routing_unit__tru_stat TRU_STAT;
        rand trigger_routing_unit__tru_gctl TRU_GCTL;
        rand trigger_routing_unit__tru_rxdata TRU_RXDATA;

        trigger_routing_unit_coverage trigger_routing_unit_cg;

        // Function: new 
        function new(string name = "trigger_routing_unit");
            super.new(name, build_coverage(UVM_CVR_ALL));
        endfunction : new

        // Function: build
        virtual function void build();
            this.default_map = create_map(.name("TRIGGER_ROUTING_UNIT_MAP"),
                                          .base_addr(32'h10000000), 
                                          .n_bytes(4), 
                                          .endian(UVM_LITTLE_ENDIAN));

            this.add_hdl_path("tb.u_top.u_tru_top.u_tru_cfg");

            if(has_coverage(UVM_CVR_ADDR_MAP)) begin
              trigger_routing_unit_cg = trigger_routing_unit_coverage::type_id::create("trigger_routing_unit_cg");
              trigger_routing_unit_cg.ra_cov.set_inst_name(this.get_full_name());
              void'(set_coverage(UVM_CVR_ADDR_MAP));
            end
            
            this.TRU_SSRN = trigger_routing_unit__tru_ssrn::type_id::create("TRU_SSRN");
            this.TRU_SSRN.configure(this);
            this.TRU_SSRN.add_hdl_path_slice(.name("cfg_TRU_SSRn_lock"), .offset(31), .size(1));
            this.TRU_SSRN.add_hdl_path_slice(.name("cfg_TRU_SSRn_ssr"), .offset(0), .size(8));
            this.TRU_SSRN.build();
            this.default_map.add_reg(.rg(this.TRU_SSRN), .offset(32'h2000), .rights("RW"));

            this.TRU_MTR = trigger_routing_unit__tru_mtr::type_id::create("TRU_MTR");
            this.TRU_MTR.configure(this);
            this.TRU_MTR.add_hdl_path_slice(.name("cfg_TRU_MTR_mtr3"), .offset(24), .size(8));
            this.TRU_MTR.add_hdl_path_slice(.name("cfg_TRU_MTR_mtr2"), .offset(16), .size(8));
            this.TRU_MTR.add_hdl_path_slice(.name("cfg_TRU_MTR_mtr1"), .offset(8), .size(8));
            this.TRU_MTR.add_hdl_path_slice(.name("cfg_TRU_MTR_mtr0"), .offset(0), .size(8));
            this.TRU_MTR.build();
            this.default_map.add_reg(.rg(this.TRU_MTR), .offset(32'h2004), .rights("RW"));

            this.TRU_ERRADDR = trigger_routing_unit__tru_erraddr::type_id::create("TRU_ERRADDR");
            this.TRU_ERRADDR.configure(this);
            this.TRU_ERRADDR.add_hdl_path_slice(.name("cfg_TRU_ERRADDR_addr"), .offset(0), .size(12));
            this.TRU_ERRADDR.build();
            this.default_map.add_reg(.rg(this.TRU_ERRADDR), .offset(32'h2010), .rights("RW"));

            this.TRU_STAT = trigger_routing_unit__tru_stat::type_id::create("TRU_STAT");
            this.TRU_STAT.configure(this);
            this.TRU_STAT.add_hdl_path_slice(.name("cfg_TRU_STAT_adderr"), .offset(1), .size(1));
            this.TRU_STAT.add_hdl_path_slice(.name("cfg_TRU_STAT_lwerr"), .offset(0), .size(1));
            this.TRU_STAT.build();
            this.default_map.add_reg(.rg(this.TRU_STAT), .offset(32'h2014), .rights("RW"));

            this.TRU_GCTL = trigger_routing_unit__tru_gctl::type_id::create("TRU_GCTL");
            this.TRU_GCTL.configure(this);
            this.TRU_GCTL.add_hdl_path_slice(.name("cfg_TRU_GCTL_lock"), .offset(31), .size(1));
            this.TRU_GCTL.add_hdl_path_slice(.name("cfg_TRU_GCTL_mtrl"), .offset(2), .size(1));
            this.TRU_GCTL.add_hdl_path_slice(.name("cfg_TRU_GCTL_mtrl"), .offset(1), .size(1));
            this.TRU_GCTL.add_hdl_path_slice(.name("cfg_TRU_GCTL_en"), .offset(0), .size(1));
            this.TRU_GCTL.build();
            this.default_map.add_reg(.rg(this.TRU_GCTL), .offset(32'h2018), .rights("RW"));

            this.TRU_RXDATA = trigger_routing_unit__tru_rxdata::type_id::create("TRU_RXDATA");
            this.TRU_RXDATA.configure(this);
            this.TRU_RXDATA.add_hdl_path_slice(.name("cfg_TRU_RXDATA_rxdata"), .offset(0), .size(32));
            this.TRU_RXDATA.build();
            this.default_map.add_reg(.rg(this.TRU_RXDATA), .offset(32'h201c), .rights("RO"));

        endfunction : build
        
        // Function: sample
        protected virtual function void sample(uvm_reg_addr_t offset, bit is_read, uvm_reg_map  map);
            if(get_coverage(UVM_CVR_ADDR_MAP)) begin
               if(map.get_name() == "TRIGGER_ROUTING_UNIT_MAP") begin
                  trigger_routing_unit_cg.sample(offset, is_read);
               end
            end
        endfunction: sample

    endclass : trigger_routing_unit

`endif
