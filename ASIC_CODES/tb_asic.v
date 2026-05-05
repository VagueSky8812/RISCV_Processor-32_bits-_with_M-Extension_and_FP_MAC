`timescale 1ns / 1ps

module core_TB;

    // --- Inputs to UUT (Registers) ---
    reg clk;
    reg rst_n;
    reg [6:0] waddr;
    reg [31:0] din;
    reg wen;
    reg spi_miso;

    // --- Outputs from UUT (Wires) ---
    wire spi_cs_n;
    wire spi_sclk;
    wire spi_mosi;
    
    // --- Bidirectional Inout (Wire) ---
    wire [31:0] gpio_pins;

    // --- Instantiate the Unit Under Test (UUT) ---
    core uut (
        .clk(clk),
        .rst_n(rst_n),
        .waddr(waddr),
        .din(din),
        .wen(wen),
        .spi_cs_n(spi_cs_n),
        .spi_sclk(spi_sclk),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        .gpio_pins(gpio_pins)
    );

    // --- Clock Generation (100 MHz) ---
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // --- Helper Task to Load Instructions ---
    task load_instr(input [6:0] address, input [31:0] data);
        begin
            @(posedge clk);
            wen = 1;
            waddr = address;
            din = data;
            @(posedge clk);
            wen = 0;
        end
    endtask

    // --- Main Simulation Block ---
    initial begin
        // 1. Generate Waveform File for GTKWave
        $dumpfile("core.vcd");
        $dumpvars(0, core_TB);

        // 2. Initialize Signals (Hold Reset Low)
        rst_n = 0;
        waddr = 0;
        din = 0;
        wen = 0;
        spi_miso = 0;

        // Wait a few cycles
        #20;

        // 3. Load the Factorial Program (5!) into the Instruction RAM
        // The CPU is held in reset, so it won't execute garbage while we write
        $display("Loading Factorial Program into Instruction RAM...");
        load_instr(7'd0,  32'h00500093); // addi x1, x0, 5   (n = 5)
        load_instr(7'd1,  32'h00100113); // addi x2, x0, 1   (result = 1)
        load_instr(7'd2,  32'h00200293); // addi x5, x0, 2
        load_instr(7'd3,  32'h0250C463); // blt  x1, x5, +40 bytes (Jumps to end)
        load_instr(7'd4,  32'h000001B3); // add  x3, x0, x0  (temp sum = 0)
        load_instr(7'd5,  32'h00100233); // add  x4, x0, x1  (counter = n)
        load_instr(7'd6,  32'h00020863); // beq  x4, x0, +16 bytes (Jumps to mul_done)
        load_instr(7'd7,  32'h002181B3); // add  x3, x3, x2  (sum = sum + result)
        load_instr(7'd8,  32'hFFF20213); // addi x4, x4, -1  (counter--)
        load_instr(7'd9,  32'hFF5FF06F); // jal  x0, -12 bytes (Jumps to mul_loop)
        load_instr(7'd10, 32'h00300133); // add  x2, x0, x3  (result = sum)
        load_instr(7'd11, 32'hFFF08093); // addi x1, x1, -1  (n--)
        load_instr(7'd12, 32'hFD9FF06F); // jal  x0, -40 bytes (Jumps to fact_loop)
        load_instr(7'd13, 32'h0000006F); // jal  x0, 0 (Infinite Loop at End)

        // Wait a cycle to ensure final write completes
        @(posedge clk);
        $display("Program Loaded. Releasing Reset...");

        // 4. Release Reset to Boot the CPU
        rst_n = 1;

        // 5. Let the simulation run to calculate 5!
        // 2000ns is enough time for the loops to finish calculating 120
        #2000;

        $display("Simulation Complete.");
        $finish;
    end

endmodule
