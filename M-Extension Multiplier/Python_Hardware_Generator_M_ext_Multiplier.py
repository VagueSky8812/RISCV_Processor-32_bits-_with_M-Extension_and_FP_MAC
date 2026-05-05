import math

N_bits = 32 #use N_bits > 2
N_as_power_of_2 = math.ceil(math.log2(N_bits))
print(f"{N_bits}, {N_as_power_of_2}")

filename_main = f"M-Extension_Multiplier_{N_bits}_Final.v"
filename_assists = f"Multiplier_Helper_Modules.v"

with open(filename_assists, "w") as f:
    #Initiate Half and Full Adders
    f.write(f"module ha(\n")
    f.write(f"\tinput wire a, b,\n")
    f.write(f"\toutput wire c, s\n")
    f.write(f");\n")
    f.write(f"\tassign s = a ^ b;\n")
    f.write(f"\tassign c = a & b;\n")
    f.write(f"endmodule\n")
    
    f.write(f"module fa(\n")
    f.write(f"\tinput wire a, b, cin,\n")
    f.write(f"\toutput wire cout, s\n")
    f.write(f");\n")
    f.write(f"\tassign s = a ^ b ^ cin;\n")
    f.write(f"\tassign cout = (a & b) | cin&(a | b);\n")
    f.write(f"endmodule\n")

####################################################################################
    #Initiate Sign Extender Module
    f.write(f"module Sign_Extender(\n")
    f.write(f"\tinput wire A_N, B_N,\n")
    f.write(f"\tinput wire s_u_a, s_u_b,\n")
    f.write(f"\toutput wire [1:0] A_N_p1_2, B_N_p1_2\n")
    f.write(f");\n")
    f.write(f"\tassign A_N_p1_2 = {{2{{s_u_a & A_N}}}};\n")
    f.write(f"\tassign B_N_p1_2 = {{2{{s_u_b & B_N}}}};\n")
    f.write(f"endmodule\n")
    
    ###################################################################################
    #Yeh Jen Booth Encoder Module
    f.write(f"module Yeh_Jen_Modified_Booth_Encoder(\n")
    f.write(f"\tinput wire B_2i_p1, B_2i, B_2i_m1,\n")
    f.write(f"\toutput wire Neg, Z, X1_b, X2_b\n")
    f.write(f");\n")
    f.write(f"\tassign Neg = B_2i_p1;\n")
    f.write(f"\tassign Z = ~(B_2i_p1 ^ B_2i);\n")
    f.write(f"\tassign X1_b = ~(B_2i ^ B_2i_m1);\n")
    f.write(f"\tassign X2_b = (B_2i ^ B_2i_m1);\n")
    f.write(f"endmodule\n")
    ###################################################################################
    #Yeh Jen Modified Booth Decoder
    f.write(f"module Yeh_Jen_Modified_Booth_Decoder(\n")
    f.write(f"\tinput wire A_j, A_j_m1,\n")
    f.write(f"\tinput wire Neg, Z, X1_b, X2_b,\n")
    f.write(f"\toutput wire PP_ij\n")
    f.write(f");\n")
    f.write(f"\tassign PP_ij = ~(((A_j ~^ Neg) | X1_b) & ((A_j_m1 ~^ Neg) | X2_b | Z));\n")
    f.write(f"endmodule\n")
        ###################################################################################
    f.write(f"module Negate_bit_add(\n")
    f.write(f"\tinput wire B_2i_p1, B_2i, B_2i_m1,\n")
    f.write(f"\toutput wire N_2i\n")
    f.write(f"\t);\n")
    f.write(f"\tassign N_2i = B_2i_p1 & ~(B_2i & B_2i_m1);\n")
    f.write(f"endmodule\n")
    ###################################################################################
    f.close()
    
    
    
#create/open the module file
with open(filename_main, "w") as f:
    #Initiate the Module
    f.write(f"module SUMBE_Multiplier_{N_bits}(\n")
    f.write(f"\tinput wire [{N_bits-1}:0] A, B,\n")
    #f.write(f"\tinput wire [1:0] func,\n")
    f.write(f"\tinput wire s_u_a, s_u_b,\n")
    f.write(f"\toutput wire COUT,\n")
    f.write(f"\toutput wire [{2*N_bits-1}:0] PRODUCT\n")
    f.write(");\n")
    #sIGN eXTEND
    f.write(f"\t//Sign Extension\n")
    f.write(f"\twire [{N_bits+1}:0] a, b;\n")
    f.write(f"\tassign a[{N_bits-1}:0] = A;\n")
    f.write(f"\tassign b[{N_bits-1}:0] = B;\n")
    f.write(f"\tSign_Extender S_E (.A_N(A[{N_bits-1}]), .B_N(B[{N_bits-1}]), .s_u_a(s_u_a), .s_u_b(s_u_b), .A_N_p1_2(a[{N_bits+1}:{N_bits}]), .B_N_p1_2(b[{N_bits+1}:{N_bits}]));\n")
    #f.write(f"\tassign a[0] = 1'b0;\n")
    #f.write(f"\tassign b[0] = 1'b0;\n")
    #Partial Product Generation
    f.write(f"\t//Generate Partial Products\n")
    for i in range(int(N_bits/2) + 1):
        f.write(f"\t//Encode for 2i = {2*i}\n")
        f.write(f"\twire Neg{2*i}, Z{2*i}, X1_b{2*i}, X2_b{2*i};\n")
        f.write(f"\tYeh_Jen_Modified_Booth_Encoder Enc_{2*i} (\n")
        if (i==0):
            f.write(f"\t\t.B_2i_p1(b[{2*i+1}]), .B_2i(b[{2*i}]), .B_2i_m1(1'b0),\n")
        else:
            f.write(f"\t\t.B_2i_p1(b[{2*i+1}]), .B_2i(b[{2*i}]), .B_2i_m1(b[{2*i-1}]),\n")
        f.write(f"\t\t.Neg(Neg{2*i}), .Z(Z{2*i}), .X1_b(X1_b{2*i}), .X2_b(X2_b{2*i})\n")
        f.write(f"\t);\n")
        f.write(f"\t//Decode for 2i = {2*i}\n")
        for j in range(N_bits+2):
            #drop the bits above 2N-1
            if(2*i+j > 2*N_bits-1):
                continue
            else:
                f.write(f"\twire PP_{2*i}_{j};\n")
            if (j==0):
                f.write(f"\tYeh_Jen_Modified_Booth_Decoder Dec_{2*i}_{j} (\n")
                f.write(f"\t\t.A_j(a[{j}]), .A_j_m1(1'b0),\n")
                f.write(f"\t\t.Neg(Neg{2*i}), .Z(Z{2*i}), .X1_b(X1_b{2*i}), .X2_b(X2_b{2*i}),\n")
                f.write(f"\t\t.PP_ij(PP_{2*i}_{j})\n")
                f.write(f"\t);\n")
            elif (j==N_bits+1):
                f.write(f"\twire PP_{2*i}_{j}_true;\n")
                f.write(f"\tYeh_Jen_Modified_Booth_Decoder Dec_{2*i}_{j} (\n")
                f.write(f"\t\t.A_j(a[{j}]), .A_j_m1(a[{j-1}]),\n")
                f.write(f"\t\t.Neg(Neg{2*i}), .Z(Z{2*i}), .X1_b(X1_b{2*i}), .X2_b(X2_b{2*i}),\n")
                f.write(f"\t\t.PP_ij(PP_{2*i}_{j}_true)\n")
                f.write(f"\t);\n")
                f.write(f"\tassign PP_{2*i}_{N_bits+1} = ~PP_{2*i}_{N_bits+1}_true;\n")
            else:
                f.write(f"\tYeh_Jen_Modified_Booth_Decoder Dec_{2*i}_{j} (\n")
                f.write(f"\t\t.A_j(a[{j}]), .A_j_m1(a[{j-1}]),\n")
                f.write(f"\t\t.Neg(Neg{2*i}), .Z(Z{2*i}), .X1_b(X1_b{2*i}), .X2_b(X2_b{2*i}),\n")
                f.write(f"\t\t.PP_ij(PP_{2*i}_{j})\n")
                f.write(f"\t);\n")
    #ADD the last row of neg_cin and correction bits
    f.write(f"\t//Generate Negate Carry Bits for LSB\n")
    for i in range(int(N_bits/2) + 1):
        f.write(f"\twire NegCin_{2*i}_0;\n")
        f.write(f"\tNegate_bit_add Neg_{2*i}(\n")
        if (i == 0):
            f.write(f"\t\t.B_2i_p1(b[{2*i+1}]), .B_2i(b[{2*i}]), .B_2i_m1(1'b0),\n")
        else:
            f.write(f"\t\t.B_2i_p1(b[{2*i+1}]), .B_2i(b[{2*i}]), .B_2i_m1(b[{2*i-1}]),\n")
        f.write(f"\t\t.N_2i(NegCin_{2*i}_0)\n")
        f.write(f"\t);\n")
    f.write(f"\t//Generate Correction Bits for LSB\n")
    f.write(f"\twire Corr_0_{N_bits+1};")
    f.write(f"\tassign Corr_0_{N_bits+1} = 1'b1;\n")
    for i in range(int(N_bits/2) + 1):
        if(2*i + N_bits+2 > 2*N_bits -1):
            continue
        f.write(f"\twire Corr_{2*i}_{N_bits+2};")
        f.write(f"\tassign Corr_{2*i}_{N_bits+2} = 1'b1;\n")
    #DADDA Tree
    f.write(f"\t//Dadda Tree\n")
    #Create a list of empty columns to contain dadda partial products
    columns = [[] for _ in range(2*N_bits)]
    #print(columns)
    #Add PP signals to the relevant columns in the bucket
    for i in range(int(N_bits/2) + 1):
        shift = 2*i
        for j in range(N_bits+2):
            column_index = shift+j
            if (column_index > 2*N_bits-1):
                continue
            columns[column_index].append(f"PP_{shift}_{j}")
    #Add Neg signals to the bucket
    for i in range(int(N_bits/2) + 1):
        shift = 2*i
        columns[shift].append(f"NegCin_{shift}_{0}")
    #Add Corr signals to bucket
    columns[N_bits+1].append(f"Corr_{0}_{N_bits+1}")
    for i in range(int(N_bits/2) + 1):
        if(2*i + N_bits+2 > 2*N_bits -1):
            continue
        columns[2*i + N_bits+2].append(f"Corr_{2*i}_{N_bits+2}")
    #for _ in range(2*N_bits):
    #    print(columns[_])
    
    # 1. Find the maximum column height of your populated buckets
    max_height = max(len(col) for col in columns)
    
    # 2. Generate the Dadda sequence until it reaches your max height
    dadda_sequence = [2]
    while dadda_sequence[-1] < max_height:
        next_stage = math.floor(dadda_sequence[-1] * 1.5)
        dadda_sequence.append(next_stage)
    
    # 3. Filter out targets that are >= max_height, and reverse the list
    targets = sorted([t for t in dadda_sequence if t < max_height], reverse=True)

    print(f"Maximum Column Height: {max_height}")
    print(f"Dadda Targets: {targets}")
    
    # --- DADDA TREE REDUCTION LOGIC--------------------------------------------------
    ha_count = 0
    fa_count = 0
    # Loop through each reduction stage
    for stage_idx, target in enumerate(targets):
        f.write(f"\n\t// --- Dadda Stage {stage_idx + 1}: Target Height = {target} ---\n")
        # We use incoming_carries to immediately route carries to the next column (The Sweep Method)
        incoming_carries = [[] for _ in range(2*N_bits)]
        
        for i in range(2*N_bits):
            current_bits = columns[i] + incoming_carries[i]
            excess = len(current_bits) - target
            
            while excess > 0:
                if excess >= 2 and len(current_bits) >= 3:
                    # Full Adder
                    fa_name = f"FA_{stage_idx}_{fa_count}"
                    op1 = current_bits.pop(0)
                    op2 = current_bits.pop(0)
                    op3 = current_bits.pop(0)
                    
                    sum_wire = f"S_{fa_name}"
                    carry_wire = f"C_{fa_name}"
                    
                    f.write(f"\twire {sum_wire}, {carry_wire};\n")
                    f.write(f"\tfa {fa_name} (.a({op1}), .b({op2}), .cin({op3}), .s({sum_wire}), .cout({carry_wire}));\n")
                    
                    current_bits.append(sum_wire)
                    # Sweep the carry immediately to the next column
                    if i + 1 < 2*N_bits:
                        incoming_carries[i+1].append(carry_wire)
                    
                    fa_count += 1
                    excess -= 2
                    
                else:
                    # Half Adder
                    ha_name = f"HA_{stage_idx}_{ha_count}"
                    op1 = current_bits.pop(0)
                    op2 = current_bits.pop(0)
                    
                    sum_wire = f"S_{ha_name}"
                    carry_wire = f"C_{ha_name}"
                    
                    f.write(f"\twire {sum_wire}, {carry_wire};\n")
                    f.write(f"\tha {ha_name} (.a({op1}), .b({op2}), .s({sum_wire}), .c({carry_wire}));\n")
                    
                    current_bits.append(sum_wire)
                    # Sweep the carry immediately to the next column
                    if i + 1 < 2*N_bits:
                        incoming_carries[i+1].append(carry_wire)
                    
                    ha_count += 1
                    excess -= 1
                    
            # Save the reduced bits back to the main array
            columns[i] = current_bits
                    
    # --- FINAL CPA PREPARATION ---  
    f.write(f"\n\t// --- Final CPA Wiring ---\n")
    f.write(f"\twire [{2*N_bits-1}:0] Final_A, Final_B;\n")
    for i in range(2*N_bits):
        if len(columns[i]) > 0:
            f.write(f"\tassign Final_A[{i}] = {columns[i][0]};\n")
        else:
            f.write(f"\tassign Final_A[{i}] = 1'b0;\n")
        
        if len(columns[i]) > 1:
            f.write(f"\tassign Final_B[{i}] = {columns[i][1]};\n")
        else:
            f.write(f"\tassign Final_B[{i}] = 1'b0;\n")
    
    #Final Adder
    f.write(f"\t//Final Adder\n")
    f.write(f"\tBK_Adder_{2*N_bits} final_adder (.A(Final_A), .B(Final_B), .CIN(1'b0), .COUT(COUT), .SUM(PRODUCT));\n")
    
    #End the Module
    f.write("endmodule")
f.close()
print("Task Completed")
