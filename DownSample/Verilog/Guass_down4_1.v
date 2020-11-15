// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Guass_down4_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        imgs_V_address0,
        imgs_V_ce0,
        imgs_V_q0,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] imgs_V_address0;
output   imgs_V_ce0;
input  [15:0] imgs_V_q0;
output  [4:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgs_V_ce0;
reg output_V_ce0;
reg output_V_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] Guass_kernel_V_address0;
reg    Guass_kernel_V_ce0;
wire   [3:0] Guass_kernel_V_q0;
wire   [2:0] i_1_fu_243_p2;
reg   [2:0] i_1_reg_561;
wire    ap_CS_fsm_state2;
wire  signed [31:0] n_cast_fu_273_p1;
reg  signed [31:0] n_cast_reg_566;
wire   [0:0] exitcond3_fu_237_p2;
wire   [31:0] tmp_cast_fu_283_p1;
reg   [31:0] tmp_cast_reg_571;
wire   [5:0] tmp_3_fu_295_p2;
reg   [5:0] tmp_3_reg_576;
wire   [2:0] j_1_fu_325_p2;
reg   [2:0] j_1_reg_584;
wire    ap_CS_fsm_state3;
wire  signed [31:0] m_cast_fu_355_p1;
reg  signed [31:0] m_cast_reg_589;
wire   [0:0] exitcond_fu_319_p2;
wire   [31:0] tmp_6_cast_fu_365_p1;
reg   [31:0] tmp_6_cast_reg_594;
wire  signed [31:0] p_cast_fu_375_p1;
reg  signed [31:0] p_cast_reg_599;
wire   [31:0] k_2_fu_384_p2;
reg   [31:0] k_2_reg_607;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_7_fu_379_p2;
wire  signed [9:0] tmp_12_fu_544_p2;
reg  signed [9:0] tmp_12_reg_612;
wire   [5:0] tmp_15_fu_397_p2;
reg   [5:0] tmp_15_reg_617;
wire   [64:0] mul_fu_406_p2;
reg   [64:0] mul_reg_622;
reg   [24:0] tmp_18_reg_627;
wire   [4:0] indvars_iv_next_fu_422_p2;
reg   [4:0] indvars_iv_next_reg_632;
wire   [4:0] indvars_iv_next1_fu_428_p2;
reg   [4:0] indvars_iv_next1_reg_637;
wire   [5:0] indvars_iv_next2_fu_434_p2;
reg   [5:0] indvars_iv_next2_reg_642;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_11_fu_440_p2;
wire   [31:0] tmp_14_fu_464_p2;
reg   [31:0] tmp_14_reg_660;
wire   [31:0] m_1_fu_470_p2;
reg   [31:0] m_1_reg_665;
wire   [31:0] n_1_fu_476_p2;
reg   [15:0] imgs_V_load_reg_675;
wire    ap_CS_fsm_state6;
reg   [3:0] Guass_kernel_V_load_reg_680;
wire   [31:0] grp_fu_550_p3;
wire    ap_CS_fsm_state7;
wire   [15:0] tmp_21_fu_532_p3;
reg   [15:0] tmp_21_reg_690;
wire    ap_CS_fsm_state8;
reg   [2:0] i_reg_113;
reg   [5:0] indvars_iv1_reg_124;
wire    ap_CS_fsm_state9;
reg   [4:0] indvars_iv2_reg_136;
reg   [4:0] indvars_iv_reg_148;
reg   [2:0] j_reg_160;
reg  signed [31:0] sum_reg_172;
reg   [31:0] k_reg_184;
reg   [31:0] n1_reg_196;
reg   [31:0] sum_1_reg_206;
reg  signed [31:0] k_1_reg_218;
reg   [31:0] m1_reg_228;
wire  signed [63:0] tmp_26_cast_fu_454_p1;
wire  signed [63:0] tmp_13_fu_459_p1;
wire   [63:0] tmp_19_cast_fu_540_p1;
wire   [4:0] tmp_fu_249_p3;
wire   [4:0] ii_fu_257_p2;
wire   [5:0] ii_cast_fu_263_p1;
wire   [5:0] n_fu_267_p2;
wire   [5:0] tmp_s_fu_277_p2;
wire   [5:0] tmp_3_cast_fu_287_p1;
wire   [5:0] p_shl_cast_fu_291_p1;
wire   [0:0] tmp_4_fu_301_p2;
wire   [4:0] smax_fu_307_p3;
wire   [4:0] tmp_5_fu_331_p3;
wire   [4:0] jj_fu_339_p2;
wire   [5:0] jj_cast_fu_345_p1;
wire   [5:0] m_fu_349_p2;
wire   [5:0] tmp_6_fu_359_p2;
wire   [5:0] smax_cast_fu_315_p1;
wire   [5:0] tmp_9_fu_369_p2;
wire   [5:0] tmp_10_cast_fu_393_p1;
wire  signed [31:0] mul_fu_406_p1;
wire   [9:0] tmp_22_fu_445_p1;
(* use_dsp48 = "no" *) wire   [9:0] tmp_23_fu_449_p2;
wire   [64:0] neg_mul_fu_488_p2;
wire   [0:0] tmp_16_fu_493_p3;
wire   [24:0] tmp_17_fu_501_p4;
wire   [24:0] p_v_v_fu_511_p3;
wire   [15:0] tmp_19_fu_518_p1;
wire   [15:0] neg_ti_fu_522_p2;
wire   [15:0] tmp_20_fu_528_p1;
wire   [5:0] tmp_12_fu_544_p0;
wire  signed [9:0] tmp_12_fu_544_p1;
wire   [15:0] grp_fu_550_p0;
wire   [3:0] grp_fu_550_p1;
reg   [8:0] ap_NS_fsm;
wire   [19:0] grp_fu_550_p00;
wire   [19:0] grp_fu_550_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
end

Guass_down4_1_Guabkb #(
    .DataWidth( 4 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
Guass_kernel_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(Guass_kernel_V_address0),
    .ce0(Guass_kernel_V_ce0),
    .q0(Guass_kernel_V_q0)
);

DownSample_mul_mucud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 10 ))
DownSample_mul_mucud_U1(
    .din0(tmp_12_fu_544_p0),
    .din1(tmp_12_fu_544_p1),
    .dout(tmp_12_fu_544_p2)
);

DownSample_mac_mudEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 4 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
DownSample_mac_mudEe_U2(
    .din0(grp_fu_550_p0),
    .din1(grp_fu_550_p1),
    .din2(sum_1_reg_206),
    .dout(grp_fu_550_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_113 <= i_1_reg_561;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_113 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv1_reg_124 <= 6'd63;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        indvars_iv1_reg_124 <= indvars_iv_next2_reg_642;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv2_reg_136 <= 5'd1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        indvars_iv2_reg_136 <= indvars_iv_next1_reg_637;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv_reg_148 <= 5'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        indvars_iv_reg_148 <= indvars_iv_next_reg_632;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_160 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        j_reg_160 <= j_1_reg_584;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        k_1_reg_218 <= tmp_14_reg_660;
    end else if (((tmp_7_fu_379_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        k_1_reg_218 <= k_reg_184;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        k_reg_184 <= k_2_reg_607;
    end else if (((exitcond_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_184 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m1_reg_228 <= m_1_reg_665;
    end else if (((tmp_7_fu_379_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        m1_reg_228 <= m_cast_reg_589;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        n1_reg_196 <= n_1_fu_476_p2;
    end else if (((exitcond_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        n1_reg_196 <= n_cast_reg_566;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_reg_206 <= grp_fu_550_p3;
    end else if (((tmp_7_fu_379_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_reg_206 <= sum_reg_172;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        sum_reg_172 <= sum_1_reg_206;
    end else if (((exitcond_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_reg_172 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        Guass_kernel_V_load_reg_680 <= Guass_kernel_V_q0;
        imgs_V_load_reg_675 <= imgs_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_561 <= i_1_fu_243_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_379_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv_next1_reg_637 <= indvars_iv_next1_fu_428_p2;
        indvars_iv_next2_reg_642 <= indvars_iv_next2_fu_434_p2;
        indvars_iv_next_reg_632 <= indvars_iv_next_fu_422_p2;
        mul_reg_622 <= mul_fu_406_p2;
        tmp_15_reg_617 <= tmp_15_fu_397_p2;
        tmp_18_reg_627 <= {{mul_fu_406_p2[64:40]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_584 <= j_1_fu_325_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_379_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        k_2_reg_607 <= k_2_fu_384_p2;
        tmp_12_reg_612 <= tmp_12_fu_544_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_440_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        m_1_reg_665 <= m_1_fu_470_p2;
        tmp_14_reg_660 <= tmp_14_fu_464_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        m_cast_reg_589[31 : 2] <= m_cast_fu_355_p1[31 : 2];
        p_cast_reg_599 <= p_cast_fu_375_p1;
        tmp_6_cast_reg_594[5 : 2] <= tmp_6_cast_fu_365_p1[5 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        n_cast_reg_566[31 : 2] <= n_cast_fu_273_p1[31 : 2];
        tmp_3_reg_576 <= tmp_3_fu_295_p2;
        tmp_cast_reg_571[5 : 2] <= tmp_cast_fu_283_p1[5 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_21_reg_690 <= tmp_21_fu_532_p3;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        Guass_kernel_V_ce0 = 1'b1;
    end else begin
        Guass_kernel_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond3_fu_237_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond3_fu_237_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        imgs_V_ce0 = 1'b1;
    end else begin
        imgs_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond3_fu_237_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_7_fu_379_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_11_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Guass_kernel_V_address0 = tmp_13_fu_459_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond3_fu_237_p2 = ((i_reg_113 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond_fu_319_p2 = ((j_reg_160 == 3'd5) ? 1'b1 : 1'b0);

assign grp_fu_550_p0 = grp_fu_550_p00;

assign grp_fu_550_p00 = imgs_V_load_reg_675;

assign grp_fu_550_p1 = grp_fu_550_p10;

assign grp_fu_550_p10 = Guass_kernel_V_load_reg_680;

assign i_1_fu_243_p2 = (i_reg_113 + 3'd1);

assign ii_cast_fu_263_p1 = ii_fu_257_p2;

assign ii_fu_257_p2 = (tmp_fu_249_p3 | 5'd3);

assign imgs_V_address0 = tmp_26_cast_fu_454_p1;

assign indvars_iv_next1_fu_428_p2 = (5'd4 + indvars_iv2_reg_136);

assign indvars_iv_next2_fu_434_p2 = ($signed(6'd60) + $signed(indvars_iv1_reg_124));

assign indvars_iv_next_fu_422_p2 = (5'd4 + indvars_iv_reg_148);

assign j_1_fu_325_p2 = (j_reg_160 + 3'd1);

assign jj_cast_fu_345_p1 = jj_fu_339_p2;

assign jj_fu_339_p2 = (tmp_5_fu_331_p3 | 5'd3);

assign k_2_fu_384_p2 = ($signed(p_cast_reg_599) + $signed(k_reg_184));

assign m_1_fu_470_p2 = (32'd1 + m1_reg_228);

assign m_cast_fu_355_p1 = $signed(m_fu_349_p2);

assign m_fu_349_p2 = ($signed(jj_cast_fu_345_p1) + $signed(6'd62));

assign mul_fu_406_p1 = sum_reg_172;

assign mul_fu_406_p2 = ($signed({{1'b0}, {65'd6915167471}}) * $signed(mul_fu_406_p1));

assign n_1_fu_476_p2 = (n1_reg_196 + 32'd1);

assign n_cast_fu_273_p1 = $signed(n_fu_267_p2);

assign n_fu_267_p2 = ($signed(ii_cast_fu_263_p1) + $signed(6'd62));

assign neg_mul_fu_488_p2 = (65'd0 - mul_reg_622);

assign neg_ti_fu_522_p2 = (16'd0 - tmp_19_fu_518_p1);

assign output_V_address0 = tmp_19_cast_fu_540_p1;

assign output_V_d0 = tmp_21_reg_690;

assign p_cast_fu_375_p1 = $signed(tmp_9_fu_369_p2);

assign p_shl_cast_fu_291_p1 = tmp_fu_249_p3;

assign p_v_v_fu_511_p3 = ((tmp_16_fu_493_p3[0:0] === 1'b1) ? tmp_17_fu_501_p4 : tmp_18_reg_627);

assign smax_cast_fu_315_p1 = smax_fu_307_p3;

assign smax_fu_307_p3 = ((tmp_4_fu_301_p2[0:0] === 1'b1) ? indvars_iv_reg_148 : indvars_iv2_reg_136);

assign tmp_10_cast_fu_393_p1 = j_reg_160;

assign tmp_11_fu_440_p2 = (($signed(m1_reg_228) < $signed(tmp_6_cast_reg_594)) ? 1'b1 : 1'b0);

assign tmp_12_fu_544_p0 = 10'd21;

assign tmp_12_fu_544_p1 = n1_reg_196[9:0];

assign tmp_13_fu_459_p1 = k_1_reg_218;

assign tmp_14_fu_464_p2 = ($signed(32'd1) + $signed(k_1_reg_218));

assign tmp_15_fu_397_p2 = (tmp_3_reg_576 + tmp_10_cast_fu_393_p1);

assign tmp_16_fu_493_p3 = sum_reg_172[32'd31];

assign tmp_17_fu_501_p4 = {{neg_mul_fu_488_p2[64:40]}};

assign tmp_19_cast_fu_540_p1 = tmp_15_reg_617;

assign tmp_19_fu_518_p1 = p_v_v_fu_511_p3[15:0];

assign tmp_20_fu_528_p1 = p_v_v_fu_511_p3[15:0];

assign tmp_21_fu_532_p3 = ((tmp_16_fu_493_p3[0:0] === 1'b1) ? neg_ti_fu_522_p2 : tmp_20_fu_528_p1);

assign tmp_22_fu_445_p1 = m1_reg_228[9:0];

assign tmp_23_fu_449_p2 = ($signed(tmp_12_reg_612) + $signed(tmp_22_fu_445_p1));

assign tmp_26_cast_fu_454_p1 = $signed(tmp_23_fu_449_p2);

assign tmp_3_cast_fu_287_p1 = i_reg_113;

assign tmp_3_fu_295_p2 = (tmp_3_cast_fu_287_p1 + p_shl_cast_fu_291_p1);

assign tmp_4_fu_301_p2 = ((indvars_iv_reg_148 > indvars_iv2_reg_136) ? 1'b1 : 1'b0);

assign tmp_5_fu_331_p3 = {{j_reg_160}, {2'd0}};

assign tmp_6_cast_fu_365_p1 = tmp_6_fu_359_p2;

assign tmp_6_fu_359_p2 = (jj_cast_fu_345_p1 + 6'd2);

assign tmp_7_fu_379_p2 = (($signed(n1_reg_196) < $signed(tmp_cast_reg_571)) ? 1'b1 : 1'b0);

assign tmp_9_fu_369_p2 = (smax_cast_fu_315_p1 + indvars_iv1_reg_124);

assign tmp_cast_fu_283_p1 = tmp_s_fu_277_p2;

assign tmp_fu_249_p3 = {{i_reg_113}, {2'd0}};

assign tmp_s_fu_277_p2 = (ii_cast_fu_263_p1 + 6'd2);

always @ (posedge ap_clk) begin
    n_cast_reg_566[1:0] <= 2'b01;
    tmp_cast_reg_571[1:0] <= 2'b01;
    tmp_cast_reg_571[31:6] <= 26'b00000000000000000000000000;
    m_cast_reg_589[1:0] <= 2'b01;
    tmp_6_cast_reg_594[1:0] <= 2'b01;
    tmp_6_cast_reg_594[31:6] <= 26'b00000000000000000000000000;
end

endmodule //Guass_down4_1
