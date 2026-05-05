`timescale 1ns / 1ps

module tb_SUMBE_v2();
    // Inputs
    reg        clk;
    reg [31:0]      A;
    reg [31:0]      B;
    reg             s_u_a;      
    reg             s_u_b;    
    
    // CHANGE 1: Make outputs wires instead of regs
    wire [63:0]     PRODUCT;
    wire            COUT;
    
    // Instantiate your Python-Generated Multiplier
    SUMBE_Multiplier_32 MMMM(
	.A(A), .B(B),
	.s_u_a(s_u_a), .s_u_b(s_u_b),
	.COUT(COUT),
	.PRODUCT(PRODUCT)
);

    // 1. Start clock at 0 for a clean first rising edge
    initial begin
        clk = 0;
        //forever #8.33333 clk = ~clk;
        forever #10 clk = ~clk;
    end
    
    /*initial begin
        //#100  no zynq processing system, so gsr not needed
        #0  s_u_a=1'b1; s_u_b=1'b1; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #16 s_u_a=1'b0; s_u_b=1'b1; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #16 s_u_a=1'b0; s_u_b=1'b0; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #16 s_u_a=1'b1; s_u_b=1'b0; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
    end*/
    
    // Array to hold: {s_u_a (1), s_u_b (1), A (32), B (32), Expected (64)} = 130 bits
    reg [129:0] test_vectors [0:9]; 
    integer i, errors;
    
    initial begin
        //#100  no zynq processing system, so gsr not needed
        #0  s_u_a=1'b1; s_u_b=1'b1; A=32'h00000002;    B=32'h00000008;
        #20 s_u_a=1'b0; s_u_b=1'b1; A=32'h00000002;    B=32'h00000008;
        #20 s_u_a=1'b0; s_u_b=1'b0; A=32'h00000002;    B=32'h00000008;
        #20 s_u_a=1'b1; s_u_b=1'b0; A=32'h00000002;    B=32'h00000008;
        #20 s_u_a=1'b1; s_u_b=1'b1; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #20 s_u_a=1'b0; s_u_b=1'b1; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #20 s_u_a=1'b0; s_u_b=1'b0; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #20 s_u_a=1'b1; s_u_b=1'b0; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
        #20 s_u_a=1'b1; s_u_b=1'b0; A=32'hFFFFFFFE;    B=32'hFFFFFFF8;
    
        // Initialize inputs
        A = 0; B = 0; s_u_a = 0; s_u_b = 0;
        // Wait for a few clock cycles to let the simulator stabilize
        repeat(6) @(posedge clk);
        
        // --- M-EXTENSION TEST SUITE ---
        
        // 1. MULHU (Unsigned x Unsigned): Max Unsigned Bounds
        // A = 2^32-1, B = 2^32-1
        test_vectors[0] = {1'b0, 1'b0, 32'hFFFFFFFF, 32'hFFFFFFFF, 64'hFFFFFFFE00000001};
        
        // 2. MULH (Signed x Signed): Max Positive Bounds
        // A = 2^31-1, B = 2^31-1
        test_vectors[1] = {1'b1, 1'b1, 32'h7FFFFFFF, 32'h7FFFFFFF, 64'h3FFFFFFF00000001};
        
        // 3. MULH (Signed x Signed): Max Negative Bounds (The Booth Torture Test)
        // A = -2^31, B = -2^31
        test_vectors[2] = {1'b1, 1'b1, 32'h80000000, 32'h80000000, 64'h4000000000000000};
        
        // 4. MULH (Signed x Signed): Max Pos x Max Neg
        // A = 2^31-1, B = -2^31
        test_vectors[3] = {1'b1, 1'b1, 32'h7FFFFFFF, 32'h80000000, 64'hC000000080000000};
        
        // 5. MULHSU (Signed x Unsigned): Trap Test 1 (-1 x Max Unsigned)
        // A = -1 (Signed), B = 2^32-1 (Unsigned). Math: -1 * (2^32 - 1) = -2^32 + 1
        test_vectors[4] = {1'b1, 1'b0, 32'hFFFFFFFF, 32'hFFFFFFFF, 64'hFFFFFFFF00000001};
        
        // 6. MULHSU (Signed x Unsigned): Trap Test 2 (Max Neg x Max Unsigned)
        // A = -2^31 (Signed), B = 2^32-1 (Unsigned)
        test_vectors[5] = {1'b1, 1'b0, 32'h80000000, 32'hFFFFFFFF, 64'h8000000080000000};
        
        // 7. MULHSU (Signed x Unsigned): Max Pos x Max Unsigned 
        // A = 2^31-1 (Signed), B = 2^31 (Unsigned)
        test_vectors[6] = {1'b1, 1'b0, 32'h7FFFFFFF, 32'h80000000, 64'h3FFFFFFF80000000};
        
        // 8. General MUL: Alternating Booth Logic Stress
        // A = -1431655766, B = 1431655765
        test_vectors[7] = {1'b1, 1'b1, 32'hAAAAAAAA, 32'h55555555, 64'hE38E38E371C71C72};
        
        // 9. Carry Avalanche 1 (Forces a deep ripple through the Dadda Tree)
        test_vectors[8] = {1'b0, 1'b0, 32'hFFFFFFFF, 32'h00000001, 64'h00000000FFFFFFFF};
        
        // 10. Carry Avalanche 2
        test_vectors[9] = {1'b0, 1'b0, 32'hFFFFFFFE, 32'h00000002, 64'h00000001FFFFFFFC};

        errors = 0;
        $display("=====================================================");
        $display("   STARTING RISC-V M-EXTENSION COMPLIANCE TEST       ");
        $display("=====================================================");
        
        for (i = 0; i < 10; i = i + 1) begin
            // 2. ONLY apply new data on the falling edge of the clock!
            // This guarantees the data is stable when the rising edge hits.
            @(negedge clk);
            s_u_a = test_vectors[i][129];
            s_u_b = test_vectors[i][128];
            A     = test_vectors[i][127:96];
            B     = test_vectors[i][95:64];
            
            // 3. Wait for the pipeline to shift the data
            // Since you added 2 registers (Dadda and Final), we wait 2 clock cycles
            repeat(2) @(posedge clk);
            
            // Wait 1ns after the clock edge before reading the output to avoid another race
            #7;

            if (PRODUCT !== test_vectors[i][63:0]) begin
                $display("FAIL! s_u_a=%b, s_u_b=%b", s_u_a, s_u_b);
                $display("  A = %h", A);
                $display("  B = %h", B);
                $display("  Expected : %h", test_vectors[i][63:0]);
                $display("  Got      : %h", PRODUCT);
                $display("----------------------------------------");
                errors = errors + 1;
            end else begin
                $display("PASS: Mode[%b%b], A=%h, B=%h, A*B=%h", s_u_a, s_u_b, A, B, test_vectors[i][63:0]);
            end
        end

        if (errors == 0) begin
            $display("\n=====================================================");
            $display(" SUCCESS: SIGNALS PROPAGATED PROPERLY!               ");
            $display("=====================================================\n");
        end else begin
            $display("\n=====================================================");
            $display(" FAILED: %0d ERRORS FOUND ", errors);
            $display("=====================================================\n");
        end
            
        $finish;
    end
    
endmodule