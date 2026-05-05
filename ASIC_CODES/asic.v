`timescale 1 ps / 1 ps

  module core(
   
    input  wire       clk,          
    input  wire       rst_n,  

    input  wire [6:0] waddr,
    input  wire [31:0] din,
    input  wire       wen,
    output wire       spi_cs_n,     
    output wire       spi_sclk,     
    output wire       spi_mosi,     
    input  wire       spi_miso,
    inout [31:0]      gpio_pins 
          
);

  wire [31:0]Data_Mem_0_dout;
  wire EX_MEM_reg_0_MemWriteM;
  wire EX_MEM_reg_0_RegWritem;
  wire [2:0]EX_MEM_reg_0_ResSrcM;
  wire [31:0]EX_MEM_reg_0_alu_outM;
  wire [31:0]EX_MEM_reg_0_csr_rdataM;
  wire [31:0]EX_MEM_reg_0_immdM;
  wire [31:0]EX_MEM_reg_0_pcM;
  wire [31:0]EX_MEM_reg_0_pcplus4M;
  wire [4:0]EX_MEM_reg_0_rdwm;
  wire [31:0]EX_MEM_reg_0_rs2_outM;
  wire MEM_WB_reg_0_RegWritew;
  wire [2:0]MEM_WB_reg_0_ResSrcW;
  wire [31:0]MEM_WB_reg_0_alu_outW;
  wire [31:0]MEM_WB_reg_0_csr_rdataW;
  wire [31:0]MEM_WB_reg_0_immdW;
  wire [31:0]MEM_WB_reg_0_pcW;
  wire [31:0]MEM_WB_reg_0_pcplus4W;
  wire [4:0]MEM_WB_reg_0_rdww;
  wire [31:0]MEM_WB_reg_0_read_dataW;
  wire [31:0]alumuxB_0_writedataE;
  wire clk_0_1;
  wire [31:0]csr_interrupt_top_0_csr_rdata;
  wire [31:0]csr_interrupt_top_0_mepc;
  wire [31:0]csr_interrupt_top_0_mtvec;
  wire csr_interrupt_top_0_trap_taken;
  wire [31:0]data_bus_controller_0_cpu_dout;
  wire [31:0]data_bus_controller_0_dmem_addr;
  wire [31:0]data_bus_controller_0_dmem_din;
  wire data_bus_controller_0_dmem_en;
  wire data_bus_controller_0_dmem_wen;
  wire [31:0]data_bus_controller_0_fp_addr;
  wire [31:0]data_bus_controller_0_fp_din;
  wire data_bus_controller_0_fp_en;
  wire data_bus_controller_0_fp_wen;
  wire [31:0]data_bus_controller_0_periph_addr;
  wire [31:0]data_bus_controller_0_periph_din;
  wire data_bus_controller_0_periph_en;
  wire data_bus_controller_0_periph_wen;
  wire [3:0]decode_stage_0_ALUcontrolD;
  wire decode_stage_0_ALUsrcD1;
  wire decode_stage_0_ALUsrcD2;
  wire decode_stage_0_BranchD;
  wire decode_stage_0_JumpD;
  wire decode_stage_0_MemWriteD;
  wire decode_stage_0_RegWriteD;
  wire [2:0]decode_stage_0_ResSrcD;
  wire [11:0]decode_stage_0_csr_addr;
  wire decode_stage_0_csr_en;
  wire [2:0]decode_stage_0_csr_op;
  wire [2:0]decode_stage_0_funct3D;
  wire decode_stage_0_illegal_instr;
  wire [31:0]decode_stage_0_immext;
  wire decode_stage_0_mret;
  wire [4:0]decode_stage_0_rdwd;
  wire [4:0]decode_stage_0_rs1;
  wire [31:0]decode_stage_0_rs1_out;
  wire [4:0]decode_stage_0_rs2;
  wire [31:0]decode_stage_0_rs2_out;
  wire [31:0]execute_stage_0_ALU_Res;
  wire execute_stage_0_Flush_Branch;
  wire execute_stage_0_PC_Jump;
  wire execute_stage_0_Stall_Branch;
  wire [31:0]execute_stage_0_rs1_forwarded;
  wire [31:0]fetch_interface_0_addr;
  wire fetch_interface_0_en;
  wire [31:0]fetch_interface_0_instr;
  wire hazardunit_0_flushD;
  wire hazardunit_0_flushE;
  wire [1:0]hazardunit_0_fwdA;
  wire [1:0]hazardunit_0_fwdB;
  wire hazardunit_0_stallF_stallD;
  wire [3:0]id_ex_reg_0_ALUcontrolE;
  wire id_ex_reg_0_ALUsrcE1;
  wire id_ex_reg_0_ALUsrcE2;
  wire id_ex_reg_0_BranchE;
  wire id_ex_reg_0_JumpE;
  wire id_ex_reg_0_MemWriteE;
  wire id_ex_reg_0_RegWriteE;
  wire [2:0]id_ex_reg_0_ResSrcE1;
  wire [11:0]id_ex_reg_0_csr_addrE;
  wire id_ex_reg_0_csr_enE;
  wire [2:0]id_ex_reg_0_csr_opE;
  wire [2:0]id_ex_reg_0_funct3E;
  wire id_ex_reg_0_illegal_instrE;
  wire [31:0]id_ex_reg_0_immextE;
  wire id_ex_reg_0_mretE;
  wire [31:0]id_ex_reg_0_pc;
  wire [31:0]id_ex_reg_0_pcplus4E;
  wire [4:0]id_ex_reg_0_rdE;
  wire [4:0]id_ex_reg_0_rs1E;
  wire [31:0]id_ex_reg_0_rs1_outE;
  wire [4:0]id_ex_reg_0_rs2E;
  wire [31:0]id_ex_reg_0_rs2_outE;
  wire [31:0]if_stage_0_if_id_pc;
  wire [31:0]if_stage_0_if_id_pcplus4;
  wire if_stage_0_if_req;
  wire [31:0]if_stage_0_pc_en;
  wire if_stage_0_pc_en1;
  wire [31:0]instruction_memory_0_dout;
  wire [31:0]mac_accelerator_cust_0_mac_dout;
  wire mac_accelerator_cust_0_mac_irq;
  wire [31:0]mem_stage_0_mem_data_out;
  wire [31:0]mux_wb_0_RdW;
  wire [31:0]pc_inc_0_pc_new;
  wire [31:0]pc_mux_0_pc;
  wire [31:0]pc_reg_0_pc;
  wire [31:0]peripherals_0_periph_dout;
  wire reset_rtl_1;
  wire [0:0]s_axi_aresetn_0_0_1;
  wire sys_clock_1;
  
  wire decode_stage_0_is_mulD; // New wire for multiplier detection
  
  wire id_ex_reg_0_is_mulE; // New wire to carry the registered mul signal
  
  
// --- Multiplier Instantiation ---
  wire [31:0] mul_result; // Connection to your Result Mux in the Execute/Memory stage
  wire        mul_ready;  // Connection to your Hazard Unit for stalling

  wire [31:0] EX_MEM_reg_0_mulresM; // New wire for the multiplier result in Memory stage
  
  wire [31:0] MEM_WB_reg_0_mulresW; // Final wire for the multiplier result in Write-Back stage
  wire hazardunit_0_flushM; // flush signal from hazarad
  
  
  assign clk_0_1 = clk;
  assign s_axi_aresetn_0_0_1 = rst_n;
  
  Data_Mem Data_Mem_0
       (.addr(data_bus_controller_0_dmem_addr),
        .clk(clk_0_1),
        .din(data_bus_controller_0_dmem_din),
        .dout(Data_Mem_0_dout),
        .en(data_bus_controller_0_dmem_en),
        .wen(data_bus_controller_0_dmem_wen));
        
EX_MEM_reg EX_MEM_reg_0
       (.MemWriteE(id_ex_reg_0_MemWriteE),
        .MemWriteM(EX_MEM_reg_0_MemWriteM),
        .RegWriteE(id_ex_reg_0_RegWriteE),
        .RegWriteM(EX_MEM_reg_0_RegWritem),
        .ResSrcE(id_ex_reg_0_ResSrcE1),
        .ResSrcM(EX_MEM_reg_0_ResSrcM),
        .alu_outE(execute_stage_0_ALU_Res),
        .alu_outM(EX_MEM_reg_0_alu_outM),
        .clk(clk_0_1),
        .csr_rdataE(csr_interrupt_top_0_csr_rdata),
        .csr_rdataM(EX_MEM_reg_0_csr_rdataM),
        .immdE(id_ex_reg_0_immextE),
        .immdM(EX_MEM_reg_0_immdM),
        .pcE(id_ex_reg_0_pc),
        .pcM(EX_MEM_reg_0_pcM),
        .pcplus4E(id_ex_reg_0_pcplus4E),
        .pcplus4M(EX_MEM_reg_0_pcplus4M),
        .rdwE(id_ex_reg_0_rdE),
        .rdwM(EX_MEM_reg_0_rdwm),
        .rs2_outE(alumuxB_0_writedataE),
        .rs2_outM(EX_MEM_reg_0_rs2_outM),
        .rst(s_axi_aresetn_0_0_1),
        
        // Multiplier result path
        .mulresE(mul_result), // Output from your multiplier_unit_0
        .mulresM(EX_MEM_reg_0_mulresM),
        
        // Flush signal (ensure this is connected to Hazard Unit)
        .flushM(hazardunit_0_flushM) 
        );
		
		


MEM_WB_reg MEM_WB_reg_0
       (.RegWriteM(EX_MEM_reg_0_RegWritem),
        .RegWriteW(MEM_WB_reg_0_RegWritew),
        .ResSrcM(EX_MEM_reg_0_ResSrcM),
        .ResSrcW(MEM_WB_reg_0_ResSrcW),
        .alu_outM(EX_MEM_reg_0_alu_outM),
        .alu_outW(MEM_WB_reg_0_alu_outW),
        .clk(clk_0_1),
        .csr_rdataM(EX_MEM_reg_0_csr_rdataM),
        .csr_rdataW(MEM_WB_reg_0_csr_rdataW),
        .immdM(EX_MEM_reg_0_immdM),
        .immdW(MEM_WB_reg_0_immdW),
        .pcM(EX_MEM_reg_0_pcM),
        .pcW(MEM_WB_reg_0_pcW),
        .pcplus4M(EX_MEM_reg_0_pcplus4M),
        .pcplus4W(MEM_WB_reg_0_pcplus4W),
        .rdwM(EX_MEM_reg_0_rdwm),
        .rdwW(MEM_WB_reg_0_rdww),
        .read_dataM(mem_stage_0_mem_data_out),
        .read_dataW(MEM_WB_reg_0_read_dataW),
        .rst(s_axi_aresetn_0_0_1),
        
        // NEW: Multiplier result path
        .mulresM(EX_MEM_reg_0_mulresM), // From previous EX_MEM_reg output
        .mulresW(MEM_WB_reg_0_mulresW)  // To the Write-Back Mux
        );
        
  alumuxB alumuxB_0
       (.aluresultM(EX_MEM_reg_0_alu_outM),
        .fwdB(hazardunit_0_fwdB),
        .rd2E(id_ex_reg_0_rs2_outE),
        .resultW(mux_wb_0_RdW),
        .writedataE(alumuxB_0_writedataE));
        
        
  csr_interrupt_top csr_interrupt_top_0
       (.clk(clk_0_1),
        .csr_addr(id_ex_reg_0_csr_addrE),
        .csr_en(id_ex_reg_0_csr_enE),
        .csr_op(id_ex_reg_0_csr_opE),
        .csr_rdata(csr_interrupt_top_0_csr_rdata),
        .fpmac_irq(mac_accelerator_cust_0_mac_irq),
        .illegal_instr(id_ex_reg_0_illegal_instrE),
        .mepc(csr_interrupt_top_0_mepc),
        .mret(id_ex_reg_0_mretE),
        .mtvec(csr_interrupt_top_0_mtvec),
        .pc_ex(id_ex_reg_0_pc),
        .rs1_data(execute_stage_0_rs1_forwarded),
        .rst(s_axi_aresetn_0_0_1),
        .trap_taken(csr_interrupt_top_0_trap_taken));
        
  data_bus_controller data_bus_controller_0
       (.cpu_addr(EX_MEM_reg_0_alu_outM),
        .cpu_din(EX_MEM_reg_0_rs2_outM),
        .cpu_dout(data_bus_controller_0_cpu_dout),
        .cpu_mem_write(EX_MEM_reg_0_MemWriteM),
        .dmem_addr(data_bus_controller_0_dmem_addr),
        .dmem_din(data_bus_controller_0_dmem_din),
        .dmem_dout(Data_Mem_0_dout),
        .dmem_en(data_bus_controller_0_dmem_en),
        .dmem_wen(data_bus_controller_0_dmem_wen),
        .fp_addr(data_bus_controller_0_fp_addr),
        .fp_din(data_bus_controller_0_fp_din),
        .fp_dout(mac_accelerator_cust_0_mac_dout),
        .fp_en(data_bus_controller_0_fp_en),
        .fp_wen(data_bus_controller_0_fp_wen),
        .periph_addr(data_bus_controller_0_periph_addr),
        .periph_din(data_bus_controller_0_periph_din),
        .periph_dout(peripherals_0_periph_dout),
        .periph_en(data_bus_controller_0_periph_en),
        .periph_wen(data_bus_controller_0_periph_wen));
        
  decode_stage decode_stage_0
       (.ALUcontrolD(decode_stage_0_ALUcontrolD),
        .ALUsrcD1(decode_stage_0_ALUsrcD1),
        .ALUsrcD2(decode_stage_0_ALUsrcD2),
        .BranchD(decode_stage_0_BranchD),
        .JumpD(decode_stage_0_JumpD),
        .MemWriteD(decode_stage_0_MemWriteD),
        .RegWriteD(decode_stage_0_RegWriteD),
        .RegWriteW(MEM_WB_reg_0_RegWritew),
        .ResSrcD(decode_stage_0_ResSrcD),
        .clk(clk_0_1),
        .csr_addr(decode_stage_0_csr_addr),
        .csr_en(decode_stage_0_csr_en),
        .csr_op(decode_stage_0_csr_op),
        .funct3D(decode_stage_0_funct3D),
        .illegal_instr(decode_stage_0_illegal_instr),
        .immext(decode_stage_0_immext),
        .instrD(if_stage_0_pc_en),
        .mret(decode_stage_0_mret),
        .rdW(MEM_WB_reg_0_rdww),
        .rdwd(decode_stage_0_rdwd),
        .resultW(mux_wb_0_RdW),
        .rs1(decode_stage_0_rs1),
        .rs1_out(decode_stage_0_rs1_out),
        .rs2(decode_stage_0_rs2),
        .rs2_out(decode_stage_0_rs2_out),
        .rst(s_axi_aresetn_0_0_1),
	.is_mul(decode_stage_0_is_mulD)
		);
        
  execute_stage execute_stage_0
       (.ALU_Res(execute_stage_0_ALU_Res),
        .ALUcontrolD(id_ex_reg_0_ALUcontrolE),
        .ALUsrc1(id_ex_reg_0_ALUsrcE2),
        .ALUsrc2(id_ex_reg_0_ALUsrcE1),
        .BranchD(id_ex_reg_0_BranchE),
        .Flush_Branch(execute_stage_0_Flush_Branch),
        .JumpD(id_ex_reg_0_JumpE),
        .PCE(id_ex_reg_0_pc),
        .PC_Jump(execute_stage_0_PC_Jump),
        .Stall_Branch(execute_stage_0_Stall_Branch),
        .aluresultM(EX_MEM_reg_0_alu_outM),
        .clk(clk_0_1),
        .funct3(id_ex_reg_0_funct3E),
        .fwdA(hazardunit_0_fwdA),
        .immext(id_ex_reg_0_immextE),
        .resultW(mux_wb_0_RdW),
        .rs1_forwarded(execute_stage_0_rs1_forwarded),
        .rs1_out(id_ex_reg_0_rs1_outE),
        .rs2_out(alumuxB_0_writedataE),
        .rst(s_axi_aresetn_0_0_1));
        
  fetch_interface fetch_interface_0
       (.addr(fetch_interface_0_addr),
        .dout(instruction_memory_0_dout),
        .en(fetch_interface_0_en),
        .if_req(if_stage_0_if_req),
        .instr(fetch_interface_0_instr),
        .pc(pc_reg_0_pc));
        
hazardunit hazardunit_0
       (.rs1E(id_ex_reg_0_rs1E),
        .rs2E(id_ex_reg_0_rs2E),
        .rdM(EX_MEM_reg_0_rdwm),
        .rdW(MEM_WB_reg_0_rdww),
        .regwriteM(EX_MEM_reg_0_RegWritem),
        .regwriteW(MEM_WB_reg_0_RegWritew),
        .resultsrcE(id_ex_reg_0_ResSrcE1),
        .rs1D(decode_stage_0_rs1),
        .rs2D(decode_stage_0_rs2),
        .rdE(id_ex_reg_0_rdE),
        .fwdA(hazardunit_0_fwdA),
        .fwdB(hazardunit_0_fwdB),
        .stallF_stallD(hazardunit_0_stallF_stallD),
        .flushD(hazardunit_0_flushD),
        .flushE(hazardunit_0_flushE),
        .flushM(hazardunit_0_flushM),
        .Stall_Branch(execute_stage_0_Stall_Branch),
        .flush_Branch(execute_stage_0_Flush_Branch),
        .trap_taken(csr_interrupt_top_0_trap_taken),
        .mretE(id_ex_reg_0_mretE),
        
        // NEW: Multiplier stall logic
        .is_mulE(id_ex_reg_0_is_mulE),
        .mul_ready(mul_ready) // Output from multiplier_multi_cycle
       );
        
id_ex_reg id_ex_reg_0
       (.ALUcontrolD(decode_stage_0_ALUcontrolD),
        .ALUcontrolE(id_ex_reg_0_ALUcontrolE),
        .ALUsrcD1(decode_stage_0_ALUsrcD1),
        .ALUsrcD2(decode_stage_0_ALUsrcD2),
        .ALUsrcE1(id_ex_reg_0_ALUsrcE1),
        .ALUsrcE2(id_ex_reg_0_ALUsrcE2),
        .BranchD(decode_stage_0_BranchD),
        .BranchE(id_ex_reg_0_BranchE),
        .JumpD(decode_stage_0_JumpD),
        .JumpE(id_ex_reg_0_JumpE),
        .MemWriteD(decode_stage_0_MemWriteD),
        .MemWriteE(id_ex_reg_0_MemWriteE),
        .RegWriteD(decode_stage_0_RegWriteD),
        .RegWriteE(id_ex_reg_0_RegWriteE),
        .ResSrcD(decode_stage_0_ResSrcD),
        .ResSrcE(id_ex_reg_0_ResSrcE1),
        .clk(clk_0_1),
        
        // NEW: Multiplier signal pipeline
        .is_mulD(decode_stage_0_is_mulD), // Output from decode_stage_0
        .is_mulE(id_ex_reg_0_is_mulE),     // Registered output to Execute stage
        
        .csr_addrD(decode_stage_0_csr_addr),
        .csr_addrE(id_ex_reg_0_csr_addrE),
        .csr_enD(decode_stage_0_csr_en),
        .csr_enE(id_ex_reg_0_csr_enE),
        .csr_opD(decode_stage_0_csr_op),
        .csr_opE(id_ex_reg_0_csr_opE),
        .flush(hazardunit_0_flushE),
        .funct3E(id_ex_reg_0_funct3E),
        .functd(decode_stage_0_funct3D),
        .illegal_instrD(decode_stage_0_illegal_instr),
        .illegal_instrE(id_ex_reg_0_illegal_instrE),
        .immextD(decode_stage_0_immext),
        .immextE(id_ex_reg_0_immextE),
        .mretD(decode_stage_0_mret),
        .mretE(id_ex_reg_0_mretE),
        .pc(id_ex_reg_0_pc),
        .pc_in(if_stage_0_if_id_pc),
        .pcplus4(if_stage_0_if_id_pcplus4),
        .pcplus4E(id_ex_reg_0_pcplus4E),
        .rdD(decode_stage_0_rdwd),
        .rdE(id_ex_reg_0_rdE),
        .rs1D(decode_stage_0_rs1),
        .rs1E(id_ex_reg_0_rs1E),
        .rs1_outD(decode_stage_0_rs1_out),
        .rs1_outE(id_ex_reg_0_rs1_outE),
        .rs2D(decode_stage_0_rs2),
        .rs2E(id_ex_reg_0_rs2E),
        .rs2_outD(decode_stage_0_rs2_out),
        .rs2_outE(id_ex_reg_0_rs2_outE),
        .rst_n(s_axi_aresetn_0_0_1),
        .stall(hazardunit_0_stallF_stallD)
        );
        
  if_stage if_stage_0
       (.bram_data(fetch_interface_0_instr),
        .clk(clk_0_1),
        .flush(hazardunit_0_flushD),
        .if_id_instr(if_stage_0_pc_en),
        .if_id_pc(if_stage_0_if_id_pc),
        .if_id_pcplus4(if_stage_0_if_id_pcplus4),
        .if_req(if_stage_0_if_req),
        .pc(pc_reg_0_pc),
        .pc_en(if_stage_0_pc_en1),
        .pcplus4(pc_inc_0_pc_new),
        .rst_n(s_axi_aresetn_0_0_1),
        .stall(hazardunit_0_stallF_stallD));
        
        
  instruction_memory instruction_memory_0
       (.addr(fetch_interface_0_addr),
        .dout(instruction_memory_0_dout),
        .wen(wen),
        .waddr(waddr),
        .din(din),
        .clk(clk),
        .en(fetch_interface_0_en));
        
  mac_accelerator_custom mac_accelerator_cust_0
       (.clk(clk_0_1),
        .mac_addr(data_bus_controller_0_fp_addr),
        .mac_din(data_bus_controller_0_fp_din),
        .mac_dout(mac_accelerator_cust_0_mac_dout),
        .mac_en(data_bus_controller_0_fp_en),
        .mac_irq(mac_accelerator_cust_0_mac_irq),
        .mac_wen(data_bus_controller_0_fp_wen),
        .rst_n(s_axi_aresetn_0_0_1));
        
  mem_stage mem_stage_0
       (.bram_data(data_bus_controller_0_cpu_dout),
        .clk(clk_0_1),
        .mem_data_out(mem_stage_0_mem_data_out),
        .rst_n(s_axi_aresetn_0_0_1));
        
mux_wb mux_wb_0
       (.ALUoutW(MEM_WB_reg_0_alu_outW),
        .MEMdata(MEM_WB_reg_0_read_dataW),
        .pcplus4W(MEM_WB_reg_0_pcplus4W),
        .immd(MEM_WB_reg_0_immdW),
        .csr_rdataW(MEM_WB_reg_0_csr_rdataW),
        .ResSrcw(MEM_WB_reg_0_ResSrcW),
        
        // NEW: Final multiplier result input
        .mul_res(MEM_WB_reg_0_mulresW), 
        
        .RdW(mux_wb_0_RdW)
       );
	   
	   

        
  pc_inc pc_inc_0
       (.pc(pc_reg_0_pc),
        .pc_new(pc_inc_0_pc_new));
        
  pc_mux pc_mux_0
       (.branch_addr(execute_stage_0_ALU_Res),
        .branch_taken(execute_stage_0_PC_Jump),
        .mepc(csr_interrupt_top_0_mepc),
        .mretE(id_ex_reg_0_mretE),
        .mtvec(csr_interrupt_top_0_mtvec),
        .pc(pc_mux_0_pc),
        .pc_plus_4(pc_inc_0_pc_new),
        .trap_taken(csr_interrupt_top_0_trap_taken));
        
  pc_reg pc_reg_0
       (.clk(clk_0_1),
        .pc(pc_reg_0_pc),
        .pc_en(if_stage_0_pc_en1),
        .pc_new(pc_mux_0_pc),
        .rst_n(s_axi_aresetn_0_0_1));
        
  peripherals peripherals_0
       (.clk(clk_0_1),
        .miso(spi_miso),
        .mosi(spi_mosi),
	.cs_n(spi_cs_n),
	.sclk(spi_sclk),
	.gpio_pins(gpio_pins),
        .periph_addr(data_bus_controller_0_periph_addr),
        .periph_din(data_bus_controller_0_periph_din),
        .periph_dout(peripherals_0_periph_dout),
        .periph_en(data_bus_controller_0_periph_en),
        .periph_wen(data_bus_controller_0_periph_wen),
        .rst(s_axi_aresetn_0_0_1));
		
		
   multiplier_multi_cycle multiplier_unit (
    .clk(clk_0_1),
    .reset(s_axi_aresetn_0_0_1),                 // Using your rst signal
    .start(id_ex_reg_0_is_mulE),             // Signal from Decode/Execute stage identifying a MUL instruction
    .func3(id_ex_reg_0_funct3E),             // funct3 from the instruction to decide MUL vs MULH
    .op_a(execute_stage_0_rs1_forwarded),                // Operand A (usually from Register File or Forwarding Mux)
    .op_b(alumuxB_0_writedataE),                // Operand B (usually from Register File or Forwarding Mux)
    
    .result(mul_result),         // Output: 32-bit result
    .ready(mul_ready)            // Output: Status signal for the Hazard Unit
);	
		
        
        
endmodule



module mac_32 (
    input [31:0] a,
    input [31:0] b,
    input [31:0] c,
    output [31:0] y
    );
    
    wire a_sign = a[31];
    wire b_sign = b[31];
    wire c_sign = c[31];
    
    wire [7:0] a_exp = a[30:23];
    wire [7:0] b_exp = b[30:23];
    wire [7:0] c_exp = c[30:23];
    
    wire [8:0] c_exp_temp;
    assign c_exp_temp[8] = 0;
    assign c_exp_temp[7:0] = c_exp[7:0];
    
    wire [23:0] a_man;
    assign a_man[23] = 1;
    assign a_man[22:0] = a[22:0];
    wire [23:0] b_man;
    assign b_man[23] = 1;
    assign b_man[22:0] = b[22:0];
    wire [23:0] c_man;
    assign c_man[23] = 1;
    assign c_man[22:0] = c[22:0];
    
    wire prod_sign;
    
    assign prod_sign = a_sign ^ b_sign;
    
    wire [8:0] imd_00;
    wire [8:0] imd_01;
    wire [47:0] imd_10;
    wire [47:0] imd_20;
    wire [47:0] imd_21;
    wire [8:0] imd_22;
    wire equal;
    wire [48:0] imd_30;
    wire [31:0] imd_40;
    wire dummy0, dummy1, dummy2, dummy3, dummy4, dummy5, dummy6;
    
    wire [9:0] imd_temp;
    wire [15:0] sum_0;
    wire [15:0] sum_1;
    
    generate
        genvar i;
        
        brent_kung_adder_16 bk16_0(
            .a({8'd0, a_exp}), 
            .b({8'd0, b_exp}), 
            .cin(1'b0), 
            .op(1'b0), 
            .sum(sum_0), 
            .cout(dummy5)
        );
        assign imd_00 = sum_0[8:0];

        brent_kung_adder_16 bk16_1(
            .a({7'd0, imd_00}), 
            .b(16'b0000000001111111), 
            .cin(1'b0), 
            .op(1'b1), 
            .sum(sum_1), 
            .cout(dummy6)
        );
        assign imd_01 = sum_1[8:0];
        dadda_multiplier_24 dadda(.a(a_man),.b(b_man),.prod(imd_10),.dummy(dummy2));
        
        comparator cmp(.a(imd_01),.b(c_exp_temp),.a_man(imd_10),.b_man(c_man),.a_man_f(imd_20),.b_man_f(imd_21),.exp(imd_22),.equal(equal));
        
        assign dummy3 = (prod_sign == c_sign) ? 0 : 1;
// Explicit 64-bit wires to prevent padding warnings
    wire [63:0] bk64_a = {16'b0, imd_10};
    wire [63:0] bk64_b = {16'b0, imd_20};
    wire [63:0] bk64_sum;

    brent_kung_adder_64 bk64_0(
        .a(bk64_a),
        .b(bk64_b),
        .cin(1'b0), // Changed 0 to 1'b0
        .op(1'b0),  // Changed 0 to 1'b0
        .sum(bk64_sum),
        .cout(dummy4) // Make sure this dummy matches what you had
    );
    
    assign imd_30 = bk64_sum[48:0];
        
 // 1. Create a 9-bit wire to catch the shifter output safely
        wire [8:0] shift_exp_out;

        // 2. Connect the 9-bit wire to the shifter
        shifter shift(
            .man_in(imd_30),
            .exp_in(imd_22),
            .man_out(imd_40[22:0]),
            .exp_out(shift_exp_out)
        );
        
        // 3. Assign the lower 8 bits to your final output
        assign imd_40[30:23] = shift_exp_out[7:0];

        assign imd_40[31] = (imd_20 > imd_21) ? prod_sign : c_sign;
        
        assign y = (equal == 1 && dummy3 == 1) ? 32'b0 : imd_40;
        
    endgenerate
    
    
endmodule



module shifter(
    input [48:0] man_in,
    input [8:0] exp_in,
    output [22:0] man_out,
    output [8:0] exp_out
    );
    
    reg [5:0] zeros;
    integer i;
    
    always @(*) begin
        zeros = 6'd49; // Default if no '1' is found
        for (i = 48; i >= 0; i = i-1) begin
            if (man_in[i] == 1'b1 && zeros == 49) begin
                zeros = 48-i; // This creates priority logic (finding the first '1')
            end
        end
        if(zeros == 49) begin // handling will be done later
            zeros = 0;
        end
    end
    
    wire [47:0] imd_0;
    wire [47:0] imd_1;
    wire [24:0] imd_2;
    wire [24:0] imd_3;
    wire g_bit,r_bit,s_bit;
    wire dummy0, dummy1;
    assign imd_0 = (man_in[48]==1) ? man_in >> 1 : man_in[47:0];
    
    wire op;
    assign op = (zeros==0) ? 0 : 1;
    
    assign imd_1 = (zeros>0) ? man_in << (zeros-1) : imd_0;
    assign g_bit = imd_1[23];
    assign r_bit = imd_1[22];
    assign s_bit = |imd_1[21:0];
    assign imd_2[24] = 0;
    assign imd_2[23:0] = imd_1[47:24];
    
    assign man_out = (g_bit==0) ? imd_2[22:0] : ((imd_3[24]==1) ? imd_3[23:1] : imd_3[22:0]);
    
    wire [5:0] zeros_temp;
    wire [5:0] zeros_temp_2;
    assign zeros_temp = (op==0) ? ((imd_3[24]==1) ? 2 : 1) : ((imd_3[24]==1) ? (zeros+1) : zeros);
    
    generate 
  wire [31:0] bk32_a = {7'b0, imd_2}; 
    wire [31:0] bk32_b = 32'b0; // Assuming you are adding something else here, pad it to 32!
    wire [31:0] bk32_sum;

    brent_kung_adder_32 bk32_0(
        .a(bk32_a),
        .b(bk32_b), // Make sure to replace this with whatever your original 'b' input was, padded
        .cin(1'b0), 
        .op(1'b0), 
        .sum(bk32_sum),
        .cout(dummy0)
    );
    assign imd_3 = bk32_sum[24:0];

    // 2. Padding for the 16-bit adder
    // The warning says 'a' got 32 bits, meaning you probably passed a hardcoded integer.
    // 'b' got 6 bits (your zeros register).
    wire [15:0] bk16_a = 16'd0; // Replace with your actual 'a' input, restricted to 16 bits
    wire [15:0] bk16_b = {10'b0, zeros};
    wire [15:0] bk16_sum;

    brent_kung_adder_16 bk16_0(
        .a(bk16_a),
        .b(bk16_b),
        .cin(1'b0),
        .op(1'b0),
        .sum(bk16_sum),
        .cout(dummy1)
    );
    assign exp_out = bk16_sum[8:0];
   endgenerate 
    
endmodule


module dadda_multiplier_24 #(parameter n = 24)(
    input  wire [n-1:0]   a,
    input  wire [n-1:0]   b,
    output wire [(2*n)-1:0] prod,
    output wire dummy
);


    assign prod = a * b;
    
    assign dummy = 1'b0;

endmodule



module csr_interrupt_top (
    input clk,
    input rst,

    // CSR interface
    input csr_en,
    input [2:0] csr_op,
    input [11:0] csr_addr,
    input [31:0] rs1_data,
    output [31:0] csr_rdata,

    // pipeline signals
  //  input instr_retired,
  //  input [31:0] pc_wb,
    input [31:0] pc_ex,        // <--- ADDED
    input illegal_instr,       // <--- RENAMED
    input mret,

    // interrupts
 //   input gpio_irq,
  //  input spi_irq,
    input fpmac_irq,

    // outputs
    output [31:0] mtvec,
    output [31:0] mepc,        // <--- ADDED for PC_MUX
    output trap_taken
   // output [31:0] trap_pc,
 //   output [31:0] trap_cause
);


    
    wire global_int_enable;
    wire [31:0] trap_pc;
    wire [31:0] trap_cause;

assign gpio_irq = 0;
assign spi_irq  = 0;
//assign fpmac_irq = 0;

    // CSR
    csr_file csr_inst (
        .clk(clk),
        .rst(rst),
        .csr_en(csr_en),
        .csr_op(csr_op),
        .csr_addr(csr_addr),
        .rs1_data(rs1_data),
        .csr_rdata(csr_rdata),
        .instr_retired(instr_retired),
        .trap_taken(trap_taken),
        .trap_pc(trap_pc),
        .trap_cause(trap_cause),
        .mret(mret),
        .mtvec_out(mtvec),
        .mepc_out(mepc),       // <--- PASSED OUT
        .global_int_enable(global_int_enable)
    );

    // Interrupt controller
    interrupt_controller int_inst (
        .clk(clk),
        .rst(rst),
        .gpio_irq(gpio_irq),
        .spi_irq(spi_irq),
        .fpmac_irq(fpmac_irq),
        .global_int_enable(global_int_enable),
      //  .pc_wb(pc_wb),
        .pc_ex(pc_ex),         // <--- PASSED DOWN
        .illegal_instr(illegal_instr), 
        .trap_taken(trap_taken),
        .trap_pc(trap_pc),
        .trap_cause(trap_cause)
    );

assign instr_retired = 1;

endmodule


module execute_stage(
    input clk,
    input rst,
    input [2:0] funct3,
    input [31:0] PCE,
    input [31:0] rs1_out,
    input [31:0] rs2_out,
    input [31:0] immext,    
    input BranchD,
    input [3:0] ALUcontrolD,
    input ALUsrc1,
    input ALUsrc2,
    input JumpD,

    // New Forwarding Inputs
    input [31:0] aluresultM, // Result from Memory stage
    input [31:0] resultW,    // Result from Write-back stage
    input [1:0] fwdA,        // Forwarding select line

    output [31:0] ALU_Res,
    output ZeroE,
    output reg Stall_Branch,
    output reg Flush_Branch,
    output reg PC_Jump,
  //  output reg debug_state,
    output [31:0] rs1_forwarded   // used for CSR
);

    wire alusrc1, alusrc2, PCSrcE;
    reg muxsel1, muxsel2;
    reg state, next_state;
    wire [3:0] aluControl;
    wire [31:0] ALU_src1, ALU_src2;
    
    // Intermediate wire to connect Mux1 to the Forwarding Mux
    wire [31:0] mux1_out;

    assign alusrc1 = BranchD ? muxsel1 : ALUsrc1;
    assign alusrc2 = BranchD ? muxsel2 : ALUsrc2;

    // 1. Primary Source Mux (Selects between Register Data and PC)
    mux_2isto1 mux1(
        .a(rs1_out),
        .b(PCE),
        .sel(alusrc1),
        .out(mux1_out)
    );

    // 2. Forwarding Mux A (Placed AFTER mux1 as requested)
    alumuxA fwd_mux_A(
        .rd1E_pcE(mux1_out), // Takes the output of the first mux
        .aluresultM(aluresultM),
        .resultW(resultW),
        .fwdA(fwdA),
        .srcAE(ALU_src1)      // Final operand sent to ALU
    );
    
    assign rs1_forwarded = ALU_src1; // To be given to CSR

    // 3. Second Source Mux
    mux_2isto1 mux2(
        .a(rs2_out),
        .b(immext),
        .sel(alusrc2),
        .out(ALU_src2)
    );
    
    parameter EXEC_DEFAULT = 1'b0;
    parameter EXEC_TARGET  = 1'b1;
    
    assign aluControl = (state == EXEC_TARGET) ? 4'b0000 : ALUcontrolD;
    
    // ALU Instantiation
    alu_ex alu1(
        .decoder(aluControl),
        .a(ALU_src1),
        .b(ALU_src2),
        .y(ALU_Res),
        .ZeroE(ZeroE)
    );
    
    // Branch Logic
    BranchCheck inst1(
        .funct3(funct3),
        .AluResult(ALU_Res),
        .zeroE(ZeroE),
        .BranchE(BranchD),
        .PCsrce(PCSrcE)
    );
    
//    always @(*) begin 
//     debug_state = state;
//     end
    
    // State Machine logic remains the same...
    always @(posedge clk) begin
        if (!rst) 
            state <= EXEC_DEFAULT;
        else 
            state <= next_state;
    end

    always @(*) begin
        next_state = EXEC_DEFAULT;
        muxsel1 = (state == EXEC_DEFAULT) ? 1'b0 : 1'b1;
        muxsel2 = (state == EXEC_DEFAULT) ? 1'b0 : 1'b1;
        
        // Using '=' for combinational logic inside always @(*)
        Stall_Branch = (state == EXEC_DEFAULT) && PCSrcE ? 1'b1 : 1'b0;
        Flush_Branch = ((state == EXEC_TARGET) || JumpD) ? 1'b1 : 1'b0;
        PC_Jump = ((state == EXEC_TARGET) || JumpD) ? 1'b1 : 1'b0;
    
        case (state)
            EXEC_DEFAULT: next_state = PCSrcE ? EXEC_TARGET : EXEC_DEFAULT;
            EXEC_TARGET:  next_state = EXEC_DEFAULT;
        endcase
    end
endmodule

     
module BranchCheck (
    input wire [2:0] funct3,
	input wire [31:0] AluResult,
    input wire zeroE,        // ALU Zero flag
	input wire BranchE,      // Control signal: "This is a branch"
    output wire PCsrce       // The final "Jump Now" signal
);
    reg take_branch;
    always @(*) begin
        case(funct3)
            3'b000: take_branch = zeroE;          // BEQ
            3'b001: take_branch = ~zeroE;         // BNE
            3'b100: take_branch = (AluResult == {{31{1'b0}},1'b1});      // BLT
            3'b101: take_branch = (AluResult == {32{1'b0}});             // BGE
            3'b110: take_branch = (AluResult == {{31{1'b0}},1'b1});      // BLTU
            3'b111: take_branch = (AluResult == {32{1'b0}});             // BGEU
            default: take_branch = 1'b0;
        endcase
    end
    
    // Jump only if it's a branch instruction AND condition is met
    assign PCsrce = (BranchE & take_branch) ? 1'b1 : 1'b0;
endmodule

module mux_2isto1(
    input [31:0] a,
    input [31:0] b,
    input sel,
    output[31:0] out
);
    assign out = (sel) ? b : a; // a -> 0 and b -> 1 
endmodule

module alu_ex(
    input [3:0] decoder,
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] y,
    output reg ZeroE
);
    wire [31:0] y1,y2,y3,y4,y5,y6,y7,y8,y9,y10;
    add1 adder(.a(a),.b(b),.sum(y1));
    sub1 subtractor(.a(a),.b(b),.difference(y2));
    sll1 sll_operator(.a(a),.b(b),.sll_output(y3));
    slt1 slt_operator(.a(a),.b(b),.slt_output(y4));
    sltu1 sltu_operator(.a(a),.b(b),.sltu_output(y5));
    xor_function1 xor_operator(.a(a),.b(b),.xor_output(y6));
    srl1 srl_operator(.a(a),.b(b),.srl_output(y7));
    sra1 sra_operator(.a(a),.b(b),.sra_output(y8));
    or_function1 or_operator(.a(a),.b(b),.or_output(y9));
    and_function1 and_operator(.a(a),.b(b),.and_output(y10));

    always@(*)begin
        case (decoder)
            4'b0000: begin
                y = y1;
            end
            4'b0001: begin
                y = y2;
            end
            4'b0010: begin
                y = y3;
            end
            4'b0011: begin
                y = y4;
            end
            4'b0100: begin
                y = y5;
            end
            4'b0101: begin
                y = y6;
            end
            4'b0110: begin
                y = y7;
            end
            4'b0111: begin
                y = y8;
            end
            4'b1000: begin
                y = y9;
            end
            4'b1001: begin
                y = y10;
            end
            default: begin
                y = 32'b0;
            end
        endcase
        ZeroE = (y == {32{1'b0}}) ? 1'b1 : 1'b0; 
    end
endmodule

module add1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    assign sum = a + b;
endmodule

module sub1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] difference
);
    assign difference = a - b;
endmodule

module sll1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sll_output
);
    assign sll_output = a << b[4:0];
endmodule

module slt1(
    input [31:0] a, 
    input [31:0] b,
    output [31:0] slt_output
);
    assign slt_output = ($signed(a) < $signed(b)) ? 32'b1 : 32'b0;
endmodule

module sltu1(
    input [31:0] a, 
    input [31:0] b,
    output [31:0] sltu_output
);
    assign sltu_output = (a < b) ? 32'b1 : 32'b0; 
endmodule

module xor_function1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] xor_output
);
    assign xor_output = a ^ b;
endmodule

module srl1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] srl_output
);
    assign srl_output = a >> b[4:0];
endmodule

module sra1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sra_output
);
    assign sra_output = $signed(a) >>> b[4:0];
endmodule

module or_function1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] or_output
);
    assign or_output = a | b;
endmodule

module and_function1(
    input [31:0] a,
    input [31:0] b,
    output [31:0] and_output
);
    assign and_output = a & b;
endmodule

// Peripherals

module peripherals(
	input clk,
	input rst,
	
	input wire [31:0] periph_addr,
	input wire [31:0] periph_din,
	input wire        periph_en,
    input wire        periph_wen,
	input wire 	      miso,
	output wire 	  mosi,
	output wire 	  cs_n,
	output wire       sclk,
	output wire [31:0] periph_dout,
	inout [31:0] gpio_pins
        //output wire [31:0]  shift_reg
);


wire gpioMode, gpio_en, gpio_sel, spiMode, spi_sel, spi_en, busy, sclk1;
wire [31:0] gpio_data, gpio_direction, rdata, readDataM, gpio_value;

address_decoder deco1(periph_addr, periph_wen, periph_en, gpioMode, gpio_sel, gpio_en, spiMode, spi_sel, spi_en);
spi_master spi(clk, rst, periph_din, rdata, busy, spiMode, spi_sel, spi_en, sclk1, mosi, miso, cs_n);
sclk sclk_generator(clk, rst, busy, sclk1);
gpio gpiomodule(clk, rst, gpioMode, gpio_sel, gpio_en, periph_din, gpio_data, gpio_direction, readDataM, gpio_value);

assign sclk = sclk1;
// Tri-state Logic
    // For each bit: if DIR=1, drive the pin with DATA. If DIR=0, keep pin high-impedance (Z).
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : gpio_bit
            assign gpio_pins[i] = (gpio_direction[i]) ? gpio_data[i] : 1'bz;
        end
    endgenerate
	
	//assign led_in0 = gpio_pins[0];
	//assign led_in1 = gpio_pins[1];
	//assign led_in2 = gpio_pins[2];
	//assign led_in3 = gpio_pins[3];
	assign gpio_value = gpio_pins;
	assign periph_dout = (gpio_en) ? readDataM : (spi_en)  ? rdata : 32'h0;

endmodule

// Main decoder

module address_decoder(
    input wire [31:0] periph_addr,
	input wire periph_wen,
	input wire peri_en,
    output reg gpioMode,
	output reg gpio_sel,
	output reg gpio_en,
	output reg spiMode,
	output reg spi_sel,
	output reg spi_en
);

    parameter GPIO_DATA_ADDR  = 8'h20; 
    parameter GPIO_DIR_ADDR   = 8'h24;
	parameter SPI_DATA_ADDR   = 8'h10;
	parameter SPI_STATUS_ADDR = 8'h14;

    always @(*) 
		begin
			if (peri_en)
				begin
					case (periph_addr[7:0])
						GPIO_DATA_ADDR: begin
											gpio_sel = 1'b1;
											gpio_en = 1'b1;
										end
						GPIO_DIR_ADDR:  begin
											gpio_sel = 1'b0;
											gpio_en = 1'b1;
										end
						SPI_DATA_ADDR: begin
											spi_sel = 1'b1;
											spi_en = 1'b1;
										end
						SPI_STATUS_ADDR: begin
											spi_sel = 1'b0;
											spi_en = 1'b1;
										end
						default: begin
									gpio_sel = 1'b0;
									gpio_en = 1'b0;
									spi_sel = 1'b0;
									spi_en = 1'b0;
								 end
					endcase
					gpioMode = periph_wen && gpio_en ? 1'b1 : 1'b0;  // 1 = store and 0 = load
					spiMode = periph_wen && spi_en ? 1'b1 : 1'b0;  // 1 = store and 0 = load
				end
			else
				begin
					gpio_en = 1'b0;
					spi_en = 1'b0;
				end
		end

endmodule

// gpio

module gpio(
    input wire clk,
    input wire reset,
    input wire gpioMode,  
    input wire gpio_sel,  // From the Address Decoder
	input wire gpio_en,
    input wire [31:0] periph_din, // Data from CPU register
	output reg [31:0] gpio_data,
	output reg [31:0] gpio_direction,
	output reg [31:0] readDataM,  // Data sent back to CPU
    input [31:0] gpio_value      // The actual FPGA pins
);
    // reg [31:0] gpio_data;      // Register for pin values 
    // reg [31:0] gpio_direction; // 1 = Output, 0 = Input 

    always @(posedge clk) begin
        if (!reset) begin
            gpio_data <= 32'h0;
            gpio_direction <= 32'h0;
        end else if (gpioMode && gpio_en) begin
            case (gpio_sel)
                1'b1: gpio_data <= periph_din;      // Write to DATA 
                1'b0: gpio_direction <= periph_din; // Write to DIR 
            endcase
        end
    end

    always @(*) begin
        if ((gpioMode == 1'b0) && gpio_en)
			begin
				case (gpio_sel)
					1'b1: readDataM = gpio_value;    // Read actual pin states
					1'b0: readDataM = gpio_direction;
					default: readDataM = 32'h0;
				endcase
			end
    end

    // Tri-state Logic
    // For each bit: if DIR=1, drive the pin with DATA. If DIR=0, keep pin high-impedance (Z).
    // genvar i;
    // generate
    //     for (i = 0; i < 32; i = i + 1) begin : gpio_bit
    //         assign gpio_pins[i] = (gpio_direction[i]) ? gpio_data[i] : 1'bz;
    //    end
    // endgenerate

endmodule

// SPI

module spi_master (
    input  wire        clk,        // System Clock
    input  wire        rst,        // Active-low Reset
    input  wire [31:0] wdata,      // Data to write 
    output wire  [31:0] rdata,      // Data to read
    output reg         busy,       // Status flag 
	
	input wire spiMode,
	input wire spi_sel,
	input wire spi_en,
	input wire sclk,

   //  output reg [31:0] shift_reg,
    // output reg [1:0] state,
    output reg         mosi,       // Master Out Slave In 
    input  wire        miso,       // Master In Slave Out 
    output reg         cs_n        // Chip Select (Active Low)
);

    
    // localparam ADDR_SPI_DATA   = 32'h40000010;
    // localparam ADDR_SPI_STATUS = 32'h40000014;

    
    localparam IDLE      = 2'b00;
    localparam LOAD_DATA = 2'b01;
    localparam SHIFTING  = 2'b10;
    localparam COMPLETE  = 2'b11;

    reg [1:0]  state;
    reg [31:0] shift_reg;
    reg [5:0]  bit_count;
	
	reg sclk_prev;
    reg sclk_rise;
    always @(posedge clk) begin
        sclk_prev <= sclk;
        sclk_rise <= (sclk == 1'b1 && sclk_prev == 1'b0); // True for 1 CPU cycle when sclk rises
    end

    always @(posedge clk) begin
    if (!rst) begin
        state     <= IDLE;
        bit_count <= 6'd0;
        busy      <= 1'b0;
        mosi      <= 1'b0;
        cs_n      <= 1'b1;
    end else begin
        case (state)
            IDLE: begin
                busy <= 1'b0;
                cs_n <= 1'b1;
                if (spiMode && spi_en && spi_sel) begin
                    shift_reg <= wdata;
                    state     <= LOAD_DATA;
                    busy      <= 1'b1;
                end
            end

            LOAD_DATA: begin
                cs_n      <= 1'b0;
                bit_count <= 6'd32;
                state     <= SHIFTING;
            end

            SHIFTING: begin
                if (sclk_rise) begin
                    // Sample MISO and Shift
                    shift_reg <= {miso, shift_reg[31:1]};
                    
                    // Update MOSI with the NEXT bit
                    mosi <= shift_reg[0];

                    if (bit_count == 0) begin
                        state <= COMPLETE;
                    end else begin
                        bit_count <= bit_count - 1;
                    end
                end
            end

            COMPLETE: begin
                cs_n  <= 1'b1;
                state <= IDLE;
				busy  <= 1'b0;
            end
        endcase
    end
end


assign rdata = (((spiMode == 1'b0) && spi_en) && spi_sel) ? shift_reg : {31'b0, busy};
    // Memory Read Logic [cite: 213]
    // always @(*) begin
	//	if ((spiMode == 1'b0) && spi_en)
	//		begin
	//			case (spi_sel)
	//				1'b1 : rdata = shift_reg;
	//				1'b0 : rdata = {31'b0, busy};
	//				default : rdata = 32'b0;
	//		    endcase
    //       end
    //end

endmodule

// sclk generator

module sclk(
    input  wire clk, 
    input  wire rst,
    input  wire busy, 
    output wire sclk
);

    reg [6:0] count;  

    always @(posedge clk) begin
        if (!rst) begin
            count <= 7'd0;
        end else if (busy) begin
            count <= count + 1'b1;
        end else begin
            count <= 7'd0; // SCLK at 0 when not in use
        end
    end

    assign sclk = count[6];

endmodule

`timescale 1ns / 1ps

`timescale 1ns / 1ps

module instruction_memory #(
    parameter DEPTH = 128 
)(
    input  wire        en,  
    input  wire        clk,
    input  wire [6:0]  waddr,
    input  wire [31:0] addr,
    input  wire [31:0] din,
    input  wire        wen,
    output wire [31:0] dout
);
    reg [31:0] mem_array [0:DEPTH-1];

    // Asynchronous Read (Combinational)
    assign dout = en ? mem_array[addr[6:0]] : 32'b0;
    
    // Synchronous Write (NO RESET!)
    always @(posedge clk) begin
        if (wen && en) begin
            mem_array[waddr[6:0]] <= din;
        end
    end  

endmodule



module data_bus_controller (

  //  input  wire        boot_mode,    // 1 = Setup, 0 = User Mode 


    // CPU MEM Stage Interface (Master) 
 
  
    input  wire        cpu_mem_write,
    input  wire [31:0] cpu_addr,     
    input  wire [31:0] cpu_din,
    output reg  [31:0] cpu_dout,


    // Instruction Memory Interface (Port B) 
    // Memory Map: 0x0000_0000 to 0x0FFF_FFFF

//    output wire        imem_bus_en,
//    output wire        imem_bus_wen,
//    output wire [31:0] imem_addr,
//    output wire [31:0] imem_din,
//    input  wire [31:0] imem_dout,


    //  Data Memory / RAM Interface
    // Memory Map: 0x2000_0000 to 0x2FFF_FFFF

    output wire        dmem_en,
    output wire        dmem_wen,
    output wire [31:0] dmem_addr,    
    output wire [31:0] dmem_din,
    input  wire [31:0] dmem_dout,
	
    //  Peripheral Interface (SPI/GPIO) 
    // Memory Map: 0x4000_0000 to 0x4FFF_FFFF

    output wire        periph_en,
    output wire        periph_wen,
    output wire [31:0] periph_addr,  
    output wire [31:0] periph_din,
    input  wire [31:0] periph_dout,
    
    // Floating Point MAC
    // Memory Map: 0x6000_0000 to 0x6FFF_FFFF
    
    output wire        fp_en,
    output wire        fp_wen,
    output wire [31:0] fp_addr,
    output wire [31:0] fp_din,
    input  wire [31:0] fp_dout
);

    // 1. Broadcast Address and Data to all slaves
    // (Slaves will locally mask [11:2] to find their array index)

//    assign imem_addr   = cpu_addr;
//    assign imem_din    = cpu_din;

    assign dmem_addr   = cpu_addr;
    assign dmem_din    = cpu_din;
    
    assign periph_addr = cpu_addr;
    assign periph_din  = cpu_din;
    
    assign fp_addr     = cpu_addr;
    assign fp_din      = cpu_din;
    
    assign boot_mode = 0;

  
    // 2. The Address Decoder 

  //  wire is_imem   = (cpu_addr[31:28] == 4'h0); // 0x0
    wire is_dmem   = (cpu_addr[31:28] == 4'h0); // 0x2
    wire is_periph = (cpu_addr[31:28] == 4'h4); // 0x4
    wire is_fp     = (cpu_addr[31:28] == 4'h6); // 0x6


    // 3. Generate Enable and Write Signals

 //   assign imem_bus_en  = is_imem;
 //   assign imem_bus_wen = cpu_mem_write & is_imem & boot_mode; 

    assign dmem_en      =  is_dmem;
    assign dmem_wen     = cpu_mem_write & is_dmem;

    assign periph_en    = is_periph;
    assign periph_wen   = cpu_mem_write & is_periph;
    
    assign fp_en        = is_fp;
    assign fp_wen       = cpu_mem_write & is_fp;


    // 4. Data Routing Multiplexer (Read Data Back to CPU)

    always @(*) begin
      //  if (is_imem) begin
        //    cpu_dout = imem_dout;
      //  end
        if (is_dmem) begin
            cpu_dout = dmem_dout;
        end 
        else if (is_periph) begin
            cpu_dout = periph_dout;
        end 
        else if (is_fp) begin
            cpu_dout = fp_dout;
        end            
        else begin
            // Safe default: Return 0 for unmapped memory space
            cpu_dout = 32'h00000000; 
        end
    end

endmodule






`timescale 1ns / 1ps

module decode_stage(
    input clk,
    input rst,
    input [31:0] instrD,

    input RegWriteW,
    input [4:0] rdW,
    input [31:0] resultW,
    
    output [4:0] rdwd,
    output [31:0] rs1_out,
    output [31:0] rs2_out,
    output [31:0] immext,
    output RegWriteD,
    output MemWriteD,
    output JumpD,
    output BranchD,
    output [3:0] ALUcontrolD,
    output ALUsrcD1,
    output ALUsrcD2,
    output [4:0] rs1,
    output [4:0] rs2,
    output MemReqD,
    output [2:0] ResSrcD, 
    output [2:0] funct3D,
    
    // CSR Instructions Signals
    output csr_en,
    output [2:0] csr_op,
    output [11:0] csr_addr,
    output mret,
    output illegal_instr,
    
    // --- NEW FOR MUL ---
    output is_mul
    );
    
wire [6:0] op;
wire [2:0] funct3;
wire funct7b5;
wire [11:0] funct12; 
wire [6:0] funct7;   

assign rs1 = instrD[19:15];
assign rs2 = instrD[24:20];
assign rdwd = instrD[11:7]; 

assign op = instrD[6:0];
assign funct3 = instrD[14:12];
assign funt7b5 = instrD[30];
assign funct3D = instrD[14:12];
assign funct12 = instrD[31:20]; 
assign funct7 = instrD[31:25];  // Extracted to identify M-extension

assign csr_addr = instrD[31:20]; 

wire [2:0] immsrcD;

controlunit cu(
    .op(op),
    .funt3(funct3),
    .funt7b5(funt7b5),
    .funct12(funct12), 
    .funct7(funct7),   

    .RegWriteD(RegWriteD),
    .MemWriteD(MemWriteD),
    .JumpD(JumpD),
    .BranchD(BranchD),
    .ALUsrcD1(ALUsrcD1),
    .ALUsrcD2(ALUsrcD2),
    .ALUcontrolD(ALUcontrolD),
    .immsrcD(immsrcD),
    .MemReqD(MemReqD),
    .ResSrcD(ResSrcD),
    
    .csr_en(csr_en),
    .csr_op(csr_op),
    .mret(mret),
    .illegal_instr(illegal_instr),
    
    .is_mul(is_mul)
);

register_file rf(
    .rs1(rs1),
    .rs2(rs2),
    .rst(rst),
    .regwrite(RegWriteW),
    .clk(clk),
    .rdwb(rdW),
    .wdata(resultW),
    .rs1_out(rs1_out),
    .rs2_out(rs2_out)
);

imm_extend immextender(
    .instrd(instrD),
    .immsrc(immsrcD),
    .immext(immext)
);

endmodule

//////////////////////////////////////////////////////////////////////////////////

module instrdec(
    input [2:0] funct3,
    input [11:0] funct12, 
    input [6:0] funct7,   
    input [6:0] op,
    
    output RegWriteD,
    output MemWriteD,
    output JumpD,
    output BranchD,
    output ALUsrcD1,
    output ALUsrcD2,
    output [2:0] immsrcD,
    output MemReqD,
    output [1:0] ALuop,
    output [2:0] ResSrcD, 
    
    output reg csr_en,
    output reg [2:0] csr_op,
    output reg mret,
    output reg illegal_instr,
    output reg is_mul
);
    reg [14:0] controlsig;

    always @(*) begin
        csr_en = 1'b0;
        csr_op = 3'b000;
        mret = 1'b0;
        illegal_instr = 1'b0;
        is_mul = 1'b0; 
    
        case(op)
            // R-Type
            7'b0110011 : begin 
                controlsig = 15'b0_000_11_0_0_1_0_0_0_111; 
                
                // --- M-EXTENSION DETECTION ---
                if (funct7 == 7'b0000001) begin
                    is_mul = 1'b1;
                    // Override ResSrcD (bits 13:11) to 3'b101 for Multiplier Result
                    controlsig[13:11] = 3'b101; 
                end
            end

            7'b0010011 : controlsig = 15'b0_000_10_0_1_1_0_0_0_000; // I-type
            7'b0000011 : controlsig = 15'b0_001_00_1_1_1_0_0_0_000; // Load
            7'b0100011 : controlsig = 15'b0_000_00_1_1_0_1_0_0_001; // Store
            7'b1100011 : controlsig = 15'b0_000_01_0_0_0_0_0_1_010; // Branch
            7'b1101111 : controlsig = 15'b1_010_00_0_1_1_0_1_0_011; // JAL
            7'b0110111 : controlsig = 15'b0_011_00_0_0_1_0_0_0_100; // LUI
            7'b1100111 : controlsig = 15'b0_010_00_0_1_1_0_1_0_000; // JALR
            7'b0010111 : controlsig = 15'b1_000_00_0_1_1_0_0_0_100; // AUIPC

            // SYSTEM Instructions (CSR)
            7'b1110011 : begin 
                if (funct3 == 3'b000 && funct12 == 12'h302) begin
                    controlsig = 15'b0_000_00_0_0_0_0_0_0_000;
                    mret = 1'b1; 
                end else if (funct3 != 3'b000) begin
                    controlsig = 15'b0_100_00_0_1_1_0_0_0_000; // ResSrcD = 100
                    csr_en = 1'b1;
                    csr_op = funct3; 
                end else begin
                    controlsig = 15'b0_000_00_0_0_0_0_0_0_000;
                    illegal_instr = 1'b1; 
                end
            end
            
            default : begin 
                controlsig = 15'b0_000_00_0_0_0_0_0_0_000;
                illegal_instr = 1'b1; 
            end
        endcase  
    end

    assign immsrcD   = controlsig[2:0];
    assign BranchD   = controlsig[3];
    assign JumpD     = controlsig[4];
    assign MemWriteD = controlsig[5];
    assign RegWriteD = controlsig[6];
    assign ALUsrcD1  = controlsig[7]; 
    assign MemReqD   = controlsig[8];
    assign ALuop     = controlsig[10:9];
    assign ResSrcD   = controlsig[13:11]; 
    assign ALUsrcD2  = controlsig[14]; 

endmodule


module controlunit(
    input [6:0] op,
    input [2:0] funt3,
    input funt7b5,
    input [11:0] funct12,
    input [6:0] funct7,
    
    output RegWriteD,
    output MemWriteD,
    output JumpD,
    output BranchD,
    output [3:0] ALUcontrolD,
    output ALUsrcD1,
    output ALUsrcD2,
    output [2:0] immsrcD,
    output MemReqD,
    output [2:0] ResSrcD,
    
    output csr_en,
    output [2:0] csr_op,
    output mret,
    output illegal_instr,
    output is_mul
    );
    
     wire [1:0] ALuop;
     instrdec idec (
        .op(op), .funct3(funt3), .funct12(funct12), .funct7(funct7),
        .RegWriteD(RegWriteD), .MemWriteD(MemWriteD), .JumpD(JumpD), .BranchD(BranchD),
        .immsrcD(immsrcD), .ALUsrcD1(ALUsrcD1), .ALUsrcD2(ALUsrcD2), .MemReqD(MemReqD),
        .ALuop(ALuop), .ResSrcD(ResSrcD),
        .csr_en(csr_en), .csr_op(csr_op), .mret(mret), .illegal_instr(illegal_instr),
        .is_mul(is_mul)
    );

    aludecoder adec (
        .funt3(funt3), .funt7b5(funt7b5), .ALUcontrol(ALUcontrolD), .ALuop(ALuop)
    );
endmodule 

module register_file(
    input [4:0] rs1, rs2,
    input regwrite, clk, rst,
    input [4:0] rdwb,
    input [31:0] wdata,
    output [31:0] rs1_out, rs2_out
    );
    
    reg [31:0] rf [31:0];
    
    assign rs1_out = (rs1 == 5'b0)? 32'b0 : rf[rs1]; 
    assign rs2_out = (rs2 == 5'b0)? 32'b0 : rf[rs2];
    
    always @ (negedge clk ) begin
      if(!rst) begin
          rf[0] <= 32'd0; rf[1] <= 32'd2; rf[2] <= 32'd2; rf[3] <= 32'd3;
          rf[4] <= 32'd4; rf[5] <= 32'd5; rf[6] <= 32'd6; rf[7] <= 32'd7;
          rf[8] <= 32'd8; 
      end
      else if(regwrite && rdwb != 5'b0 ) 
          rf[rdwb] <= wdata;
    end 
endmodule

module imm_extend(
   input [31:0] instrd,
   input [2:0] immsrc,
   output reg [31:0] immext
   );
   always @(*) begin 
     case(immsrc) 
     3'b000 : immext = {{20{instrd[31]}},instrd[31:20]};
     3'b001 : immext = {{20{instrd[31]}},instrd[31:25],instrd[11:7]}; 
     3'b010 : immext = {{20{instrd[31]}},instrd[7],instrd[30:25],instrd[11:8],1'b0}; 
     3'b011 : immext = {{12{instrd[31]}},instrd[19:12],instrd[20],instrd[30:21],1'b0}; 
     3'b100 : immext = {instrd[31:12],12'b0}; 
     default :immext = 32'b0;
     endcase 
   end
endmodule 

module aludecoder( 
    input [2:0] funt3,
    input funt7b5,
    input [1:0] ALuop,
    output reg [3:0] ALUcontrol 
);
   always @(*) begin
   case (ALuop)
      2'b00 : ALUcontrol = 4'b0000; 
      2'b01 : 
            case(funt3[2:1]) 
                2'b00 : ALUcontrol = 4'b0001; 
                2'b10 : ALUcontrol = 4'b0011; 
                2'b11 : ALUcontrol = 4'b0100; 
                default : ALUcontrol = 4'b0000; 
            endcase 
      2'b10 : 
            case(funt3)
                3'b000 : ALUcontrol = 4'b0000; 
                3'b001 : ALUcontrol = 4'b0010; 
                3'b010 : ALUcontrol = 4'b0011; 
                3'b011 : ALUcontrol = 4'b0100; 
                3'b100 : ALUcontrol = 4'b0101; 
                3'b101 : ALUcontrol = (funt7b5) ? 4'b0110 : 4'b0111;
                3'b110 : ALUcontrol = 4'b1000; 
                3'b111 : ALUcontrol = 4'b1001; 
             endcase
      2'b11 :  // rtype 
           case(funt3) 
             3'b000 : ALUcontrol = (funt7b5) ? 4'b0001 : 4'b0000; 
             3'b001 : ALUcontrol = 4'b0010; 
             3'b010 : ALUcontrol = 4'b0011; 
             3'b011 : ALUcontrol = 4'b0100; 
             3'b100 : ALUcontrol = 4'b0101; 
             3'b101 : ALUcontrol = (funt7b5) ? 4'b0110 : 4'b0111; 
             3'b110 : ALUcontrol = 4'b1000; 
             3'b111 : ALUcontrol = 4'b1001; 
          endcase 
      default : ALUcontrol = 4'b0000;
   endcase 
   end 
endmodule


module Data_Mem #(
    parameter DEPTH = 32
)(
    input  wire        clk,   
    input  wire        en,    
    input  wire        wen,   
    input  wire [31:0] addr,  
    input  wire [31:0] din,   
    output wire [31:0] dout   
);

    reg [31:0] mem_array [0:DEPTH-1];
    
    assign dout = en ? mem_array[addr[6:2]] : 32'b0;

    always @(posedge clk) begin
        if (en && wen) begin
            mem_array[addr[6:2]] <= din;
        end
    end

endmodule

`timescale 1ns / 1ps


module hazardunit(rs1E,rs2E,rdM,rdW,regwriteM,regwriteW,fwdA,fwdB,resultsrcE,rs1D,rs2D,rdE,stallF_stallD,flushE,Stall_Branch,flush_Branch,flushD,flushM,trap_taken,mretE,is_mulE,mul_ready);
    
    // Read after Write
    // Input Signals
    input [4:0] rs1E,rs2E,rdM,rdW;  // source registers from execute stage,destination regs from mem and wb stage
    input regwriteM,regwriteW;  // write signals showing whether it is writing back to register file in mem stage and WB stage 
    
    // Output signals 
    output reg [1:0] fwdA,fwdB; // select lines to mux A and B infront of ALU
    
    // Loadwordstall
    //Input signals
    input [2:0] resultsrcE; // which is the source (In execution stage: 2'b00(From alu as result of computation) 2'b01(From memory) 2'b10 (From PC incrementer))
    input [4:0] rs1D,rs2D,rdE; // sources in Decode stage, destination in Execution stage
    // Output signals
    output reg stallF_stallD,flushE; // which stage will be stalled
    
    // Controlhazard(Branch&Jump)
    // Input Signals
    input Stall_Branch;
    input flush_Branch;
    // Output Signals
    output reg flushD;
    output reg flushM;
    // NEW Exception inputs
    input trap_taken;
    input mretE;            // (CSR)mret instruction in Execute stage
    
        // --- MULTIPLIER INPUTS ---
    input is_mulE;     
    input mul_ready;
    
    wire mul_busy;

    // Multiplier is busy if it's a MUL instruction but not finished yet
    assign mul_busy = is_mulE && !mul_ready;  
    
    reg lwstall;
    
    always @(*)begin
        // Logic: Read after Write
        
        // Forwarding logic for the mux A infront of ALU
        if ((rs1E==rdM)&&regwriteM&&(rs1E!=5'd0)) begin // Giving priority from memory stage and not forwarding if x0(zero as input)
            if(flush_Branch == 1'b1) begin
                fwdA = 2'b00;
            end 
            else
                fwdA = 2'b10; 
        end
        else if ((rs1E==rdW)&&regwriteW&&(rs1E!=5'd0))begin // write back stage
            if(flush_Branch == 1'b1) begin
                fwdA = 2'b00;
            end
            else
            fwdA = 2'b01;
        end 
        else    
            fwdA = 2'b00;
       
       
      
        // Forwarding logic for the source B in the ALU
        if ((rs2E==rdM)&&regwriteM&&(rs2E!=5'd0))begin // Giving priority from memory stage
            fwdB = 2'b10; 
        end
        else if ((rs2E==rdW)&&regwriteW&&(rs2E!=5'd0))begin // write back stage
            fwdB = 2'b01;
        end
        else
            fwdB = 2'b00;
            
        // Forwarding Logic for Register File
        
        // Logic: Stall for load word dependency and control hazard logic
        lwstall = (resultsrcE == 3'b001) &&((rs1D==rdE)||(rs2D==rdE))&&(rdE!=5'd0);
        
        stallF_stallD = lwstall||Stall_Branch|| mul_busy; // Load dependency or control hazard (whenever IF is stalled the IF-ID must be also stalled)
        // stallD = lwstall||Stall_Branch; // Load dependency or control hazard
        flushE = lwstall||flush_Branch|| trap_taken || mretE; // Load dependency or control hazard, also trap handling included (CSR)
        flushD = flush_Branch|| mretE || trap_taken || mul_busy; // control hazard plus CSR trap handling
        flushM = mul_busy; 
// seperate stall signal is needed for branch stalling . now just used stallif_stalld signal for id_ex pipeline also(need to change later)
        
    end
  
    
    
endmodule
module mac_accelerator_custom #(
    // Adjust this parameter based on the worst-case combinational delay from your synthesis tool
    parameter WAIT_CYCLES = 4 
)(
    input  wire        clk,
    input  wire        rst_n,
    
    // Custom Bus Interface from Address Decoder
    input  wire        mac_en,
    input  wire        mac_wen,
    input  wire [31:0] mac_addr,
    input  wire [31:0] mac_din,
    output reg  [31:0] mac_dout,
    
    // Interrupt Line back to the RISC-V CPU
    output reg         mac_irq
);

    // Internal Registers to hold Operands and Result
    reg [31:0] reg_a, reg_b, reg_c, reg_y;
    reg status_done;
    
    // FSM State and Counter
    reg [1:0] state;
    reg [3:0] counter;
    localparam IDLE = 2'b00, CALC = 2'b01, DONE = 2'b10;

    // The Pure Combinational MAC Unit (Instantiated exactly as it is)
    wire [31:0] mac_comb_result;
    mac_32 u_mac (
        .a(reg_a),
        .b(reg_b),
        .c(reg_c),
        .y(mac_comb_result)
    );

    // Sequential Logic: Bus Writes and Accelerator FSM
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reg_a <= 32'd0; 
            reg_b <= 32'd0; 
            reg_c <= 32'd0; 
            reg_y <= 32'd0;
            status_done <= 1'b0;
            mac_irq <= 1'b0;
            state <= IDLE;
            counter <= 4'd0;
        end else begin
            mac_irq <= 1'b0; // Default to no interrupt pulse (1 clock cycle pulse)
            
            // --- Bus Write Logic ---
            if (mac_en && mac_wen) begin
                // Use the lower bits of the address to write to specific registers
                case (mac_addr[7:0])
                    8'h00: reg_a <= mac_din;
                    8'h04: reg_b <= mac_din;
                    8'h08: reg_c <= mac_din;
                    8'h0C: begin
                        // Writing a 1 to bit 0 of the Control Register starts the MAC
                        if (mac_din[0] == 1'b1 && state == IDLE) begin
                            state <= CALC; 
                            status_done <= 1'b0;
                            counter <= 4'd0;
                        end
                    end
                endcase
            end
            
            // --- Hardware Accelerator FSM ---
            if (state == CALC) begin
                counter <= counter + 1;
                if (counter == WAIT_CYCLES - 1) begin
                    reg_y <= mac_comb_result; // Safely latch the stable combinational result
                    state <= DONE;
                end
            end else if (state == DONE) begin
                status_done <= 1'b1;
                mac_irq <= 1'b1; // Pulse the interrupt line to the RISC-V core
                state <= IDLE;
            end
        end
    end

    // --- Bus Read Logic (Combinational) ---
    always @(*) begin
        if (mac_en && !mac_wen) begin
            case (mac_addr[7:0])
                8'h00: mac_dout = reg_a;
                8'h04: mac_dout = reg_b;
                8'h08: mac_dout = reg_c;
                8'h0C: mac_dout = {30'd0, status_done, 1'b0}; // Status Register
                8'h10: mac_dout = reg_y;                      // Result Register
                default: mac_dout = 32'd0;
            endcase
        end else begin
            mac_dout = 32'd0;
        end
    end

endmodule




module half_adder(
    input a,
    input b,
    output sum,
    output cout
    );
    
    assign sum = a ^ b;
    assign cout = a & b;
    
endmodule



module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    assign sum = a ^ b ^ cin;
    assign cout = ( a & b ) | ( b & cin ) | ( cin & a );
    
endmodule


module comparator( // will have to modify this module later
    input [8:0] a,
    input [8:0] b,
    input [47:0] a_man,
    input [23:0] b_man,
    output [47:0] a_man_f,
    output [47:0] b_man_f,
    output [8:0] exp,
    output equal
    );

    wire [8:0] diff = (a > b) ? (a - b) : (b - a);
    wire greater = (a > b) ? 1'b0 : 1'b1;
    
    wire [47:0] b_man_imd;
    assign b_man_imd = {1'b0, b_man, 23'd0};
    
    assign a_man_f = (greater==1) ? a_man >> diff : a_man;
    assign b_man_f = (greater==0) ? b_man_imd >> diff : b_man_imd; // will handle the padding of 0s later
    assign exp = (greater==0) ? a : b;
    
    assign equal = (a_man_f == b_man_f) ? 1 : 0;
    
endmodule


module brent_kung_adder_64 #(parameter n = 64)(
    input [n-1:0] a,
    input [n-1:0] b,
    input cin,
    input op, // 0 means addition, 1 means subtraction
    output [n-1:0] sum,
    output cout
    );
    
    localparam l = $clog2(n) + 1;
    
    wire [n-1:0] b_new;
    
    assign b_new[n-1:0] = b[n-1:0]^{n{op}};
    
    wire [n-1:0] c;
    assign c[0] = cin^op;
    
    wire [n-1:0] g [0:l-1];
    wire [n-1:0] p [0:l-1];
      
    assign g[0][n-1:0] = a[n-1:0] & b_new[n-1:0];
    assign p[0][n-1:0] = a[n-1:0] ^ b_new[n-1:0];
    
    genvar i,j;
    generate
        for (i = 1; i < l; i = i + 1) begin
            assign g[i][0] = g[i-1][0];
            assign p[i][0] = p[i-1][0];
            for(j=1;j<n;j=j+1) begin
                if ((j+1)%(1<<i)==0) begin
                    assign g[i][j] = g[i-1][j] | (p[i-1][j] & g[i-1][j-(1<<(i-1))]);
                    assign p[i][j] = p[i-1][j] & p[i-1][j-(1<<(i-1))];
                end else begin
                    assign g[i][j] = g[i-1][j];
                    assign p[i][j] = p[i-1][j];
                end
            end
        end
    endgenerate
    
    wire cout_prepros = g[l-1][n-1] | (p[l-1][n-1] & c[0]);
    assign cout = cout_prepros ^ op;
    
    generate
        for (i=1;i<l;i=i+1) begin
            for(j=1<<(l-i-1);j<n;j=j+(1<<(l-i))) begin
               assign c[j] = g[l-1][j-1] | (p[l-1][j-1] & c[j-(1<<(l-i-1))]);
            end
        end
    endgenerate
    
    assign sum[n-1:0] = c[n-1:0] ^ p[0][n-1:0];
    
endmodule



module brent_kung_adder_32 #(parameter n = 32)(
    input [n-1:0] a,
    input [n-1:0] b,
    input cin,
    input op, // 0 means addition, 1 means subtraction
    output [n-1:0] sum,
    output cout
    );
    
    localparam l = $clog2(n) + 1;
    
    wire [n-1:0] b_new;
    
    assign b_new[n-1:0] = b[n-1:0]^{n{op}};
    
    wire [n-1:0] c;
    assign c[0] = cin^op;
    
    wire [n-1:0] g [0:l-1];
    wire [n-1:0] p [0:l-1];
      
    assign g[0][n-1:0] = a[n-1:0] & b_new[n-1:0];
    assign p[0][n-1:0] = a[n-1:0] ^ b_new[n-1:0];
    
    genvar i,j;
    generate
        for (i = 1; i < l; i = i + 1) begin
            assign g[i][0] = g[i-1][0];
            assign p[i][0] = p[i-1][0];
            for(j=1;j<n;j=j+1) begin
                if ((j+1)%(1<<i)==0) begin
                    assign g[i][j] = g[i-1][j] | (p[i-1][j] & g[i-1][j-(1<<(i-1))]);
                    assign p[i][j] = p[i-1][j] & p[i-1][j-(1<<(i-1))];
                end else begin
                    assign g[i][j] = g[i-1][j];
                    assign p[i][j] = p[i-1][j];
                end
            end
        end
    endgenerate
    
    wire cout_prepros = g[l-1][n-1] | (p[l-1][n-1] & c[0]);
    assign cout = cout_prepros ^ op;
    
    generate
        for (i=1;i<l;i=i+1) begin
            for(j=1<<(l-i-1);j<n;j=j+(1<<(l-i))) begin
               assign c[j] = g[l-1][j-1] | (p[l-1][j-1] & c[j-(1<<(l-i-1))]);
            end
        end
    endgenerate
    
    assign sum[n-1:0] = c[n-1:0] ^ p[0][n-1:0];
    
endmodule



module brent_kung_adder_16 #(parameter n = 16)(
    input [n-1:0] a,
    input [n-1:0] b,
    input cin,
    input op, // 0 means addition, 1 means subtraction
    output [n-1:0] sum,
    output cout
    );
    
    localparam l = $clog2(n) + 1;
    
    wire [n-1:0] b_new;
    
    assign b_new[n-1:0] = b[n-1:0]^{n{op}};
    
    wire [n-1:0] c;
    assign c[0] = cin^op;
    
    wire [n-1:0] g [0:l-1];
    wire [n-1:0] p [0:l-1];
      
    assign g[0][n-1:0] = a[n-1:0] & b_new[n-1:0];
    assign p[0][n-1:0] = a[n-1:0] ^ b_new[n-1:0];
    
    genvar i,j;
    generate
        for (i = 1; i < l; i = i + 1) begin
            assign g[i][0] = g[i-1][0];
            assign p[i][0] = p[i-1][0];
            for(j=1;j<n;j=j+1) begin
                if ((j+1)%(1<<i)==0) begin
                    assign g[i][j] = g[i-1][j] | (p[i-1][j] & g[i-1][j-(1<<(i-1))]);
                    assign p[i][j] = p[i-1][j] & p[i-1][j-(1<<(i-1))];
                end else begin
                    assign g[i][j] = g[i-1][j];
                    assign p[i][j] = p[i-1][j];
                end
            end
        end
    endgenerate
    
    wire cout_prepros = g[l-1][n-1] | (p[l-1][n-1] & c[0]);
    assign cout = cout_prepros ^ op;
    
    generate
        for (i=1;i<l;i=i+1) begin
            for(j=1<<(l-i-1);j<n;j=j+(1<<(l-i))) begin
               assign c[j] = g[l-1][j-1] | (p[l-1][j-1] & c[j-(1<<(l-i-1))]);
            end
        end
    endgenerate
    
    assign sum[n-1:0] = c[n-1:0] ^ p[0][n-1:0];
    
endmodule



module interrupt_controller (
    input clk,
    input rst,

    input gpio_irq,
    input spi_irq,
    input fpmac_irq,
    input global_int_enable,

 //   input [31:0] pc_wb,
    input [31:0] pc_ex,      // <--- NEW: PC from the Execute Stage
    input illegal_instr,

    output reg trap_taken,
    output reg [31:0] trap_pc,
    output reg [31:0] trap_cause
);
    wire cpu_irq;
    assign cpu_irq = gpio_irq | spi_irq | fpmac_irq;

   always @(posedge clk or negedge rst) begin
        if (!rst) begin
            trap_taken <= 0;
            trap_pc    <= 0;
            trap_cause <= 0;
        end else begin
            trap_taken <= 0; 
            
            // Priority 1: Internal Exceptions
            if (illegal_instr) begin
                trap_taken <= 1;
                trap_pc    <= pc_ex;     // Save the PC of the killed EX instruction
                trap_cause <= 32'd2;     
            end
            
            // Priority 2: External Interrupts
            else if (cpu_irq && global_int_enable) begin
                trap_taken <= 1;
                trap_pc    <= pc_ex;     // Save the PC of the killed EX instruction!
                trap_cause <= 32'h8000000B; 
            end
        end
    end
endmodule



module csr_file (
    input clk,
    input rst,

    // CSR instruction interface
    input        csr_en,
    input [2:0]  csr_op,       
    input [11:0] csr_addr,
    input [31:0] rs1_data,
    output reg [31:0] csr_rdata,

    // Pipeline signals
    input        instr_retired,

    // Interrupt interface
    input        trap_taken,
    input [31:0] trap_pc,
    input [31:0] trap_cause,
    input        mret,

    // Outputs to CPU
    output [31:0] mtvec_out,
    output [31:0] mepc_out,    // <--- ADDED
    output        global_int_enable
);

    reg [31:0] mstatus;
    reg [31:0] mtvec;
    reg [31:0] mepc;
    reg [31:0] mcause;
    reg [31:0] mcycle;
    reg [31:0] minstret;

    wire MIE  = mstatus[3];
    wire MPIE = mstatus[7];

    assign global_int_enable = MIE;
    assign mtvec_out = mtvec;
    assign mepc_out = mepc;

    always @(*) begin
        case (csr_addr)
            12'h300: csr_rdata = mstatus;
            12'h305: csr_rdata = mtvec;
            12'h341: csr_rdata = mepc;
            12'h342: csr_rdata = mcause;
            12'hB00: csr_rdata = mcycle;
            12'hB02: csr_rdata = minstret;
            default: csr_rdata = 32'b0;
        endcase
    end

    reg [31:0] csr_wdata;
    always @(*) begin
        case (csr_op)
            3'b001: csr_wdata = rs1_data;                 // CSRRW
            3'b010: csr_wdata = csr_rdata | rs1_data;     // CSRRS
            3'b011: csr_wdata = csr_rdata & ~rs1_data;    // CSRRC
            default: csr_wdata = csr_rdata;
        endcase
    end

    // Fixed Reset Polarity to Active-Low (!rst)
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            mstatus  <= 32'b0;
            mtvec    <= 32'b0;
            mepc     <= 32'b0;
            mcause   <= 32'b0;
            mcycle   <= 32'b0;
            minstret <= 32'b0;
        end else begin
            mcycle <= mcycle + 1;
            if (instr_retired)
                minstret <= minstret + 1;

            if (csr_en) begin
                case (csr_addr)
                    12'h300: mstatus <= csr_wdata;
                    12'h305: mtvec   <= csr_wdata;
                    12'h341: mepc    <= csr_wdata;
                    12'h342: mcause  <= csr_wdata;
                endcase
            end

            if (trap_taken) begin
                mepc   <= trap_pc;
                mcause <= trap_cause;
                mstatus[7] <= mstatus[3];
                mstatus[3] <= 1'b0;
            end

            if (mret) begin
                mstatus[3] <= mstatus[7];
            end
        end
    end
endmodule




module pc_mux(
    input trap_taken,         // From CSR Top
    input [31:0] mtvec,       // From CSR Top
    input mretE,              // From ID/EX Pipeline Register
    input [31:0] mepc,        // From CSR Top
    input branch_taken,       // From Execute Stage (ZeroE/PCSrc)
    input [31:0] pc_plus_4,   // From Fetch Stage
    input [31:0] branch_addr, // From Execute Stage target calculation
    output [31:0] pc
);

    // Priority encoded multiplexer
    assign pc = trap_taken   ? mtvec :       // Highest priority: Jump to trap handler
                mretE        ? mepc :        // Jump back to saved PC on return
                branch_taken ? branch_addr : // Jump on standard branch/jal
                pc_plus_4;                   // Default: Next sequential instruction

endmodule



module id_ex_reg(
    input clk,
    input rst_n,
    input stall,        
    input flush,        

    // Inputs from Decode (D)
    input [31:0] rs1_outD, rs2_outD, immextD, pc_in, pcplus4,
    input [4:0]  rdD, rs1D, rs2D,
    input [2:0]  functd,
    input [2:0]  ResSrcD, // EXPANDED to 3 bits
    input        RegWriteD, MemWriteD, JumpD, BranchD,
    input [3:0]  ALUcontrolD,
    input        ALUsrcD1, ALUsrcD2,
    input is_mulD,
    
    // NEW CSR Inputs from Decode
    input        csr_enD,
    input [2:0]  csr_opD,
    input [11:0] csr_addrD,
    input        mretD,
    input        illegal_instrD,

    // Outputs to Execute (E)
    output reg [31:0] rs1_outE, rs2_outE, immextE, pc, pcplus4E,
    output reg [4:0]  rdE, rs1E, rs2E,
    output reg [2:0]  funct3E,
    output reg [2:0]  ResSrcE, // EXPANDED to 3 bits
    output reg        RegWriteE, MemWriteE, JumpE, BranchE,
    output reg [3:0]  ALUcontrolE,
    output reg        ALUsrcE1, ALUsrcE2,
    output reg is_mulE,
    
    // NEW CSR Outputs to Execute
    output reg        csr_enE,
    output reg [2:0]  csr_opE,
    output reg [11:0] csr_addrE,
    output reg        mretE,
    output reg        illegal_instrE
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rs1_outE       <= 32'b0; rs2_outE <= 32'b0; immextE <= 32'b0;
            rdE            <= 5'b0;  rs1E     <= 5'b0;  rs2E    <= 5'b0;
            funct3E        <= 3'b0;  ResSrcE  <= 3'b0;
            RegWriteE      <= 1'b0;  MemWriteE<= 1'b0;  JumpE   <= 1'b0; BranchE <= 1'b0;

            ALUcontrolE    <= 4'b0;  ALUsrcE1 <= 1'b0;  ALUsrcE2<= 1'b0;
            is_mulE <= 1'b0;
            pc             <= 32'b0; pcplus4E <= 32'b0;
            csr_enE        <= 1'b0;  csr_opE  <= 3'b0;  csr_addrE <= 12'b0;
            mretE          <= 1'b0;  illegal_instrE <= 1'b0;
        end
        else if (flush) begin
            rs1_outE       <= 32'b0; rs2_outE <= 32'b0; immextE <= 32'b0;
            rdE            <= 5'b0;  rs1E     <= 5'b0;  rs2E    <= 5'b0;
            funct3E        <= 3'b0;  ResSrcE  <= 3'b0;
            RegWriteE      <= 1'b0;  MemWriteE<= 1'b0;  JumpE   <= 1'b0; BranchE <= 1'b0;
            ALUcontrolE    <= 4'b0;  ALUsrcE1 <= 1'b0;  ALUsrcE2<= 1'b0;
            pc             <= 32'b0; pcplus4E <= 32'b0;
            is_mulE <= 1'b0;
            csr_enE        <= 1'b0;  csr_opE  <= 3'b0;  csr_addrE <= 12'b0;
            mretE          <= 1'b0;  illegal_instrE <= 1'b0;
        end
        else if (!stall) begin
            rs1_outE       <= rs1_outD; rs2_outE <= rs2_outD; immextE <= immextD;
            rdE            <= rdD;      rs1E     <= rs1D;     rs2E    <= rs2D;
            funct3E        <= functd;   ResSrcE  <= ResSrcD;
            RegWriteE      <= RegWriteD;MemWriteE<= MemWriteD;JumpE   <= JumpD; BranchE <= BranchD;
            ALUcontrolE    <= ALUcontrolD;ALUsrcE1<= ALUsrcD1;ALUsrcE2<= ALUsrcD2;
            is_mulE <= is_mulD;
            pc             <= pc_in;    pcplus4E <= pcplus4;
            csr_enE        <= csr_enD;  csr_opE  <= csr_opD;  csr_addrE <= csr_addrD;
            mretE          <= mretD;    illegal_instrE <= illegal_instrD;
        end
    end
endmodule




`timescale 1ns / 1ps

module mux_wb(
    input [31:0] ALUoutW,    // result from ALU
    input [31:0] MEMdata,    // result from memory
    input [31:0] pcplus4W,   // pc+4
    input [31:0] immd,       // immediate
    input [31:0] csr_rdataW, // Data read from CSRs
    input [2:0]  ResSrcw, 
    input [31:0] mul_res,   // EXPANDED: 3-bit select line
    output reg [31:0] RdW    // output to reg file
);

    // Multiplexer Logic
    always @(*) begin
        case (ResSrcw)
            3'b000: RdW = ALUoutW;
            3'b001: RdW = MEMdata;
            3'b010: RdW = pcplus4W;
            3'b011: RdW = immd;
            3'b100: RdW = csr_rdataW;
            3'b101: RdW = mul_res; // Route CSR data to register file
            default: RdW = ALUoutW;
        endcase    
    end

endmodule




`timescale 1ns / 1ps

module MEM_WB_reg(
    input clk,
    input rst,
    input [2:0] ResSrcM,
    input [31:0] alu_outM,
    input [31:0] read_dataM,
    input [4:0] rdwM,
    input RegWriteM,
    input [31:0] immdM,
    input [31:0] pcplus4M,
    
    // NEW Inputs
    input [31:0] csr_rdataM,
    input [31:0] pcM,

    // NEW: MUL result input
    input [31:0] mulresM,

    output reg [31:0] alu_outW,
    output reg [4:0] rdwW,
    output reg RegWriteW,
    output reg [2:0] ResSrcW,
    output [31:0] read_dataW,
    output reg [31:0] immdW,
    output reg [31:0] pcplus4W,
    
    // NEW Outputs
    output reg [31:0] csr_rdataW,
    output reg [31:0] pcW,

    // NEW: MUL result output
    output reg [31:0] mulresW
);

    assign read_dataW = read_dataM;
    
    always@(posedge clk or negedge rst) begin 
        if(!rst) begin  
            alu_outW   <= 0; rdwW       <= 0; RegWriteW  <= 0;
            ResSrcW    <= 0; immdW      <= 0; pcplus4W   <= 0;
            csr_rdataW <= 0; pcW        <= 0;
            mulresW    <= 0;
        end else begin 
            alu_outW   <= alu_outM; rdwW       <= rdwM; RegWriteW  <= RegWriteM;
            ResSrcW    <= ResSrcM;  immdW      <= immdM; pcplus4W   <= pcplus4M;
            csr_rdataW <= csr_rdataM; pcW      <= pcM;
            mulresW    <= mulresM;
        end 
    end       

endmodule


module EX_MEM_reg(
    input clk,
    input rst,
    input flushM,           // NEW: Signal from Hazard Unit to insert a bubble
    input [2:0] ResSrcE,
    input [31:0] alu_outE,
    input [4:0] rdwE,
    input [31:0] rs2_outE,
    input RegWriteE,
    input MemWriteE,
    input [31:0] pcplus4E,
    input [31:0] immdE,
    
    // CSR Inputs
    input [31:0] csr_rdataE,
    input [31:0] pcE,

    // MUL result input
    input [31:0] mulresE,

    output reg [31:0] alu_outM,
    output reg [4:0] rdwM,
    output reg RegWriteM,
    output reg [31:0] rs2_outM,
    output reg [2:0] ResSrcM,
    output reg MemWriteM,
    output reg [31:0] immdM,
    output reg [31:0] pcplus4M,
    
    // CSR Outputs
    output reg [31:0] csr_rdataM,
    output reg [31:0] pcM,

    // MUL result output
    output reg [31:0] mulresM
);

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            // Synchronous or Asynchronous Reset
            alu_outM   <= 0; rdwM      <= 0; RegWriteM <= 0;
            ResSrcM    <= 0; MemWriteM <= 0; rs2_outM  <= 0;
            immdM      <= 0; pcplus4M  <= 0; csr_rdataM <= 0;
            pcM        <= 0; mulresM   <= 0;
        end 
        else if (flushM) begin
            // --- BUBBLE INSERTION ---
            // Clear control signals and destination to prevent state changes
            RegWriteM  <= 1'b0;
            MemWriteM  <= 1'b0;
            rdwM       <= 5'b0; 
            ResSrcM    <= 3'b000;
            
            // Optional: Clear data lines for cleaner simulation waveforms
            alu_outM   <= 0;
            rs2_outM   <= 0;
            mulresM    <= 0;
            csr_rdataM <= 0;
            immdM      <= 0;
            pcplus4M   <= 0;
            pcM        <= 0;
        end 
        else begin
            // Normal Operation
            alu_outM   <= alu_outE;
            rdwM       <= rdwE;
            RegWriteM  <= RegWriteE;
            ResSrcM    <= ResSrcE;
            rs2_outM   <= rs2_outE;
            MemWriteM  <= MemWriteE;
            immdM      <= immdE;
            pcplus4M   <= pcplus4E;
            csr_rdataM <= csr_rdataE;
            pcM        <= pcE;
            mulresM    <= mulresE;
        end 
    end     

endmodule

module if_stage (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [31:0] pc,
    input wire [31:0] pcplus4,
    input  wire        stall,
    input  wire        flush,

    input  wire [31:0] bram_data, 

    output wire        if_req,
    output wire        pc_en,
    output reg  [31:0] if_id_instr,
    output reg  [31:0] if_id_pc,
    output reg [31:0]  if_id_pcplus4
);

    assign if_req = 1'b1; 
    
    assign pc_en = ~stall; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            if_id_instr <= 32'h00000013; // RISC-V NOP
            if_id_pc    <= 32'b0;
            if_id_pcplus4 <= 32'b0;
        end
        else if (flush) begin
            if_id_instr <= 32'h00000013; // RISC-V NOP
            if_id_pc    <= 32'b0;
            if_id_pc    <= 32'b0;
        end
        else if (!stall) begin
            if_id_instr <= bram_data;    // Latch the immediately available instruction
            if_id_pc    <= pc; // Pass the PC down the pipeline
            if_id_pcplus4 <= pcplus4;          
        end
    end

endmodule



module mem_stage (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [31:0] bram_data, 
    
    output reg  [31:0] mem_data_out
);


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mem_data_out <= 32'b0;
        end
        else  begin
            mem_data_out <= bram_data; 
        end
       
    end

endmodule




module pc_reg_mux(pc,rs1E,ALUsrcE,rs1E_pc);

    // Input signals
    input [31:0] pc; // The pc value for alu operation
    input [31:0] rs1E; // The decode register value for alu operation
    input ALUsrcE; // select line for the mux

    // Output signals
    output reg [31:0] rs1E_pc;
    
    // Multiplexer logic
    
    always @(*) begin
            
        case (ALUsrcE)
        
            1'b0: begin
                rs1E_pc = rs1E;
            end
            1'b1: begin
                rs1E_pc = pc;
            end
        
        endcase
    end

endmodule



module alumuxA(rd1E_pcE,aluresultM,resultW,fwdA,srcAE);
    
    // input signals
    input [31:0] rd1E_pcE; // 32 bit data or PC that is coming from ID-EX pipeline register file in execute stage
    input [31:0] aluresultM; // 32 bit data which is the result of ALU in memory stage
    input [31:0] resultW; // 32 bit data which is written back to register file from write back stage
    input [1:0] fwdA; // select line
    
    // output signals
    output reg [31:0] srcAE; // To ALU 
    
    // multiplexer logic
    always @(*)begin
        case(fwdA)
        
            2'b01:begin
                srcAE = resultW;
            end
            2'b10:begin
                srcAE = aluresultM;
            end
            default:begin // that is 00
                srcAE = rd1E_pcE;        
            end
        endcase
    end
endmodule





module alumuxB(rd2E,aluresultM,resultW,fwdB,writedataE);
    // Input signals
    input [31:0] rd2E; // 32 bit data that is read from register file in execute stage
    input [31:0] aluresultM; // 32 bit data which is the result of ALU in memory stage
    input [31:0] resultW; // 32 bit data which is written back to register file from write back stage
    input [1:0] fwdB; // select line
    // output signals
    output reg [31:0] writedataE; // To immediate mux and EX-MEM pipeline register
    
    // multiplexer logic
    always @(*)begin
        case(fwdB)
        
            2'b01:begin
                writedataE = resultW;
            end
            2'b10:begin
                writedataE= aluresultM;
            end
            default:begin // that is 00
                writedataE = rd2E;        
            end
         
        endcase
    end
endmodule


module fetch_interface (
   
    input  wire        if_req,      
    input  wire [31:0] pc,         
    output wire [31:0] instr,      
    output wire        en,          
    output wire [31:0] addr,        
    input  wire [31:0] dout        
);


    assign en   = if_req;   
    assign addr = pc[31:2];       
    assign instr = dout;

endmodule



module pc_inc(
    input  wire [31:0] pc,
    output wire [31:0] pc_new
);


    assign pc_new = pc + 32'd4;

endmodule


module pc_reg(
 input clk,
 input rst_n,
 input pc_en,
 input [31:0] pc_new,
 output reg [31:0] pc
    );
   
 always@(posedge clk or negedge rst_n) begin
  if(!rst_n)
   pc <= 32'b0;
  else if(pc_en) begin
    pc <= pc_new; end
  end 
endmodule

module mux_source2(
    input [31:0] rs2,
    input [31:0] immd,
    input ALUsrcE,
    output[31:0] ALU_src2
    );
    assign ALU_src2 = (ALUsrcE)?  immd : rs2;
    
endmodule

module multiplier_multi_cycle (
    input  wire        clk,
    input  wire        reset,
    input  wire        start,
    input  wire [2:0]  func3,      
    input  wire [31:0] op_a,       
    input  wire [31:0] op_b,       
    
    // CHANGE 1: Make outputs wires instead of regs
    output wire [31:0] result,
    output wire        ready
);

    localparam IDLE    = 2'b00;
    localparam COMPUTE = 2'b01;
    localparam FINAL   = 2'b10;

    reg [1:0]  state;
    reg [5:0]  count;
    reg [31:0] multiplicand;
    reg [63:0] accumulator; 
    reg        sign_bit;
    
    wire [63:0] corrected_product = sign_bit ? (~accumulator + 1'b1) : accumulator; 

    wire rs1_signed = (func3 == 3'b000 || func3 == 3'b001 || func3 == 3'b010); 
    wire rs2_signed = (func3 == 3'b000 || func3 == 3'b001);                    

    // CHANGE 2: Assign outputs combinatorially based on state
    // This allows the pipeline hazard unit to see 'ready' immediately without a 1-cycle delay
    assign ready  = (state == FINAL);
    assign result = (func3 == 3'b000) ? corrected_product[31:0] : corrected_product[63:32];

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            state        <= IDLE;
            count        <= 6'd0;
            accumulator  <= 64'b0;
            multiplicand <= 32'b0;
            sign_bit     <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    if (start) begin
                        multiplicand <= (rs1_signed && op_a[31]) ? (~op_a + 1'b1) : op_a;
                        accumulator  <= {32'b0, (rs2_signed && op_b[31]) ? (~op_b + 1'b1) : op_b};
                        sign_bit     <= (rs1_signed && op_a[31]) ^ (rs2_signed && op_b[31]);
                        count        <= 6'd0;
                        state        <= COMPUTE;
                    end
                end

                COMPUTE: begin
                    if (count < 6'd32) begin
                        if (accumulator[0]) begin
                            accumulator <= { (accumulator[63:32] + multiplicand), accumulator[31:1] };
                        end else begin
                            accumulator <= accumulator >> 1;
                        end
                        count <= count + 1;
                    end else begin
                        state <= FINAL;
                    end
                end

                FINAL: begin
                    // CHANGE 3: Since outputs are combinatorial, we just transition to IDLE
                    state <= IDLE;
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule
