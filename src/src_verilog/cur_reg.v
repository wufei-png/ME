`timescale 1ns/1ps
module cur_reg(
  input wire clk,rst,
  input wire [15:0]data_input,
  input wire  ber,//????
 input wire  pause_in,//????
    input wire [4:0]counter,

  output wire [7:0]reg00,output wire [7:0]reg01,output wire [7:0]reg02,output wire [7:0]reg03,output wire [7:0]reg04,output wire [7:0]reg05,output wire [7:0]reg06,output wire [7:0]reg07,

output wire [7:0]reg10,output wire [7:0]reg11,output wire [7:0]reg12,output wire [7:0]reg13,output wire [7:0]reg14,output wire [7:0]reg15,output wire [7:0]reg16,output wire [7:0]reg17,

output wire [7:0]reg20,output wire [7:0]reg21,output wire [7:0]reg22,output wire [7:0]reg23,output wire [7:0]reg24,output wire [7:0]reg25,output wire [7:0]reg26,output wire [7:0]reg27,

output wire [7:0]reg30,output wire [7:0]reg31,output wire [7:0]reg32,output wire [7:0]reg33,output wire [7:0]reg34,output wire [7:0]reg35,output wire [7:0]reg36,output wire [7:0]reg37,

output wire [7:0]reg40,output wire [7:0]reg41,output wire [7:0]reg42,output wire [7:0]reg43,output wire [7:0]reg44,output wire [7:0]reg45,output wire [7:0]reg46,output wire [7:0]reg47,

output wire [7:0]reg50,output wire [7:0]reg51,output wire [7:0]reg52,output wire [7:0]reg53,output wire [7:0]reg54,output wire [7:0]reg55,output wire [7:0]reg56,output wire [7:0]reg57,

output wire [7:0]reg60,output wire [7:0]reg61,output wire [7:0]reg62,output wire [7:0]reg63,output wire [7:0]reg64,output wire [7:0]reg65,output wire [7:0]reg66,output wire [7:0]reg67,

output wire [7:0]reg70,output wire [7:0]reg71,output wire [7:0]reg72,output wire [7:0]reg73,output wire [7:0]reg74,output wire [7:0]reg75,output wire [7:0]reg76,output wire [7:0]reg77
  );
//区别大么，和512的reg ；怎么实现counter =0 0-3 counter =1 4-7  移位 //case
reg [7:0]reg1_00;reg [7:0]reg1_01;reg [7:0]reg1_02;reg [7:0]reg1_03;reg [7:0]reg1_04;reg [7:0]reg1_05;reg [7:0]reg1_06;reg [7:0]reg1_07;

reg [7:0]reg1_10;reg [7:0]reg1_11;reg [7:0]reg1_12;reg [7:0]reg1_13;reg [7:0]reg1_14;reg [7:0]reg1_15;reg [7:0]reg1_16;reg [7:0]reg1_17;

reg [7:0]reg1_20;reg [7:0]reg1_21;reg [7:0]reg1_22;reg [7:0]reg1_23;reg [7:0]reg1_24;reg [7:0]reg1_25;reg [7:0]reg1_26;reg [7:0]reg1_27;

reg [7:0]reg1_30;reg [7:0]reg1_31;reg [7:0]reg1_32;reg [7:0]reg1_33;reg [7:0]reg1_34;reg [7:0]reg1_35;reg [7:0]reg1_36;reg [7:0]reg1_37;

reg [7:0]reg1_40;reg [7:0]reg1_41;reg [7:0]reg1_42;reg [7:0]reg1_43;reg [7:0]reg1_44;reg [7:0]reg1_45;reg [7:0]reg1_46;reg [7:0]reg1_47;

reg [7:0]reg1_50;reg [7:0]reg1_51;reg [7:0]reg1_52;reg [7:0]reg1_53;reg [7:0]reg1_54;reg [7:0]reg1_55;reg [7:0]reg1_56;reg [7:0]reg1_57;

reg [7:0]reg1_60;reg [7:0]reg1_61;reg [7:0]reg1_62;reg [7:0]reg1_63;reg [7:0]reg1_64;reg [7:0]reg1_65;reg [7:0]reg1_66;reg [7:0]reg1_67;

reg [7:0]reg1_70;reg [7:0]reg1_71;reg [7:0]reg1_72;reg [7:0]reg1_73;reg [7:0]reg1_74;reg [7:0]reg1_75;reg [7:0]reg1_76;reg [7:0]reg1_77;


reg [7:0]reg2_00;reg [7:0]reg2_01;reg [7:0]reg2_02;reg [7:0]reg2_03;reg [7:0]reg2_04;reg [7:0]reg2_05;reg [7:0]reg2_06;reg [7:0]reg2_07;

reg [7:0]reg2_10;reg [7:0]reg2_11;reg [7:0]reg2_12;reg [7:0]reg2_13;reg [7:0]reg2_14;reg [7:0]reg2_15;reg [7:0]reg2_16;reg [7:0]reg2_17;

reg [7:0]reg2_20;reg [7:0]reg2_21;reg [7:0]reg2_22;reg [7:0]reg2_23;reg [7:0]reg2_24;reg [7:0]reg2_25;reg [7:0]reg2_26;reg [7:0]reg2_27;

reg [7:0]reg2_30;reg [7:0]reg2_31;reg [7:0]reg2_32;reg [7:0]reg2_33;reg [7:0]reg2_34;reg [7:0]reg2_35;reg [7:0]reg2_36;reg [7:0]reg2_37;

reg [7:0]reg2_40;reg [7:0]reg2_41;reg [7:0]reg2_42;reg [7:0]reg2_43;reg [7:0]reg2_44;reg [7:0]reg2_45;reg [7:0]reg2_46;reg [7:0]reg2_47;

reg [7:0]reg2_50;reg [7:0]reg2_51;reg [7:0]reg2_52;reg [7:0]reg2_53;reg [7:0]reg2_54;reg [7:0]reg2_55;reg [7:0]reg2_56;reg [7:0]reg2_57;

reg [7:0]reg2_60;reg [7:0]reg2_61;reg [7:0]reg2_62;reg [7:0]reg2_63;reg [7:0]reg2_64;reg [7:0]reg2_65;reg [7:0]reg2_66;reg [7:0]reg2_67;

reg [7:0]reg2_70;reg [7:0]reg2_71;reg [7:0]reg2_72;reg [7:0]reg2_73;reg [7:0]reg2_74;reg [7:0]reg2_75;reg [7:0]reg2_76;reg [7:0]reg2_77;

//?????????
// reg [511:0]reg1;
// reg [511:0]reg2;


always@(posedge clk)//还是* 电路怎么实现
begin
    if (!pause_in)
    begin 
    if(!ber)
        begin
            case(counter)
                0:begin
                    // reg1_00<=data_input[7:0];
                    {reg1_00,reg1_01} <= data_input;
                end

                1:begin
                    // reg1_00<=data_input[7:0];
                    {reg1_02,reg1_03} <= data_input;
                end

                2:begin
                    {reg1_04,reg1_05} <= data_input;
                end

                3:begin
                    {reg1_06,reg1_07} <= data_input;
                end

                4:begin
                    {reg1_10,reg1_11} <= data_input;
                end

                5:begin
                    {reg1_12,reg1_13} <= data_input;
                end

                6:begin
                    {reg1_14,reg1_15} <= data_input;
                end

                7:begin
                    {reg1_16,reg1_17} <= data_input;
                end

                8:begin
                    {reg1_20,reg1_21} <= data_input;
                end

                9:begin
                    {reg1_22,reg1_23} <= data_input;
                end

                10:begin
                    {reg1_24,reg1_25} <= data_input;
                end

                11:begin
                    {reg1_26,reg1_27} <= data_input;
                end

                
                12:begin
                    {reg1_30,reg1_31} <= data_input;
                end

                13:begin
                    {reg1_32,reg1_33} <= data_input;
                end
                14:begin
                    {reg1_34,reg1_35} <= data_input;
                end
                15:begin
                    {reg1_36,reg1_37} <= data_input;
                end

                16:begin
                {reg1_40,reg1_41} <= data_input;
                end
                17:begin
                {reg1_42,reg1_43} <= data_input;
                end

                18:begin
                {reg1_44,reg1_45} <= data_input;
                end

                19:begin
                {reg1_46,reg1_47} <= data_input;
                end

                20:begin
                    {reg1_50,reg1_51} <= data_input;
                end
                21:begin
                    {reg1_52,reg1_53} <= data_input;
                end
                22:begin
                    {reg1_54,reg1_55} <= data_input;
                end
                23:begin
                    {reg1_56,reg1_57} <= data_input;
                end
                24:begin
                    {reg1_60,reg1_61} <= data_input;
                end
                25:begin
                    {reg1_62,reg1_63} <= data_input;
                end
                26:begin
                {reg1_64,reg1_65} <= data_input;
                end
                27:begin
                {reg1_66,reg1_67} <= data_input;
                end
                28:begin
                    {reg1_70,reg1_71} <= data_input;
                end
                29:begin
                    {reg1_72,reg1_73} <= data_input;
                end

                30:begin
                    {reg1_74,reg1_75} <= data_input;
                end
                31:begin
                    {reg1_76,reg1_77} <= data_input;
                end
                default:begin

                end
            endcase
        end
    else begin
            case(counter)
                0:begin
                    // reg2_00<=data_input[7:0];
                    {reg2_00,reg2_01} <= data_input;//这种语法没问题
                end

                1:begin
                    // reg2_00<=data_input[7:0];
                    {reg2_02,reg2_03} <= data_input;//这种语法没问题
                end

                2:begin
                    {reg2_04,reg2_05} <= data_input;
                end

                3:begin
                    {reg2_06,reg2_07} <= data_input;
                end

                4:begin
                    {reg2_10,reg2_11} <= data_input;
                end

                5:begin
                    {reg2_12,reg2_13} <= data_input;
                end

                6:begin
                    {reg2_14,reg2_15} <= data_input;
                end

                7:begin
                    {reg2_16,reg2_17} <= data_input;
                end

                8:begin
                    {reg2_20,reg2_21} <= data_input;
                end

                9:begin
                    {reg2_22,reg2_23} <= data_input;
                end

                10:begin
                    {reg2_24,reg2_25} <= data_input;
                end

                11:begin
                    {reg2_26,reg2_27} <= data_input;
                end

                
                12:begin
                    {reg2_30,reg2_31} <= data_input;
                end

                13:begin
                    {reg2_32,reg2_33} <= data_input;
                end
                14:begin
                    {reg2_34,reg2_35} <= data_input;
                end
                15:begin
                    {reg2_36,reg2_37} <= data_input;
                end

                16:begin
                {reg2_40,reg2_41} <= data_input;
                end
                17:begin
                {reg2_42,reg2_43} <= data_input;
                end

                18:begin
                {reg2_44,reg2_45} <= data_input;
                end

                19:begin
                {reg2_46,reg2_47} <= data_input;
                end

                20:begin
                    {reg2_50,reg2_51} <= data_input;
                end
                21:begin
                    {reg2_52,reg2_53} <= data_input;
                end
                22:begin
                    {reg2_54,reg2_55} <= data_input;
                end
                23:begin
                    {reg2_56,reg2_57} <= data_input;
                end
                24:begin
                    {reg2_60,reg2_61} <= data_input;
                end
                25:begin
                    {reg2_62,reg2_63} <= data_input;
                end
                26:begin
                {reg2_64,reg2_65} <= data_input;
                end
                27:begin
                {reg2_66,reg2_67} <= data_input;
                end
                28:begin
                    {reg2_70,reg2_71} <= data_input;
                end
                29:begin
                    {reg2_72,reg2_73} <= data_input;
                end

                30:begin
                    {reg2_74,reg2_75} <= data_input;
                end
                31:begin
                    {reg2_76,reg2_77} <= data_input;
                end
                default:begin

                end
            endcase
        end
    end
end
assign reg00= ber ? reg1_00:reg2_00;assign reg01= ber ? reg1_01:reg2_01;assign reg02= ber ? reg1_02:reg2_02;assign reg03= ber ? reg1_03:reg2_03;
assign reg04= ber ? reg1_04:reg2_04;assign reg05= ber ? reg1_05:reg2_05;assign reg06= ber ? reg1_06:reg2_06;assign reg07= ber ? reg1_07:reg2_07;
assign reg10= ber ? reg1_10:reg2_10;assign reg11= ber ? reg1_11:reg2_11;assign reg12= ber ? reg1_12:reg2_12;assign reg13= ber ? reg1_13:reg2_13;
assign reg14= ber ? reg1_14:reg2_14;assign reg15= ber ? reg1_15:reg2_15;assign reg16= ber ? reg1_16:reg2_16;assign reg17= ber ? reg1_17:reg2_17;
assign reg20= ber ? reg1_20:reg2_20;assign reg21= ber ? reg1_21:reg2_21;assign reg22= ber ? reg1_22:reg2_22;assign reg23= ber ? reg1_23:reg2_23;
assign reg24= ber ? reg1_24:reg2_24;assign reg25= ber ? reg1_25:reg2_25;assign reg26= ber ? reg1_26:reg2_26;assign reg27= ber ? reg1_27:reg2_27;
assign reg30= ber ? reg1_30:reg2_30;assign reg31= ber ? reg1_31:reg2_31;assign reg32= ber ? reg1_32:reg2_32;assign reg33= ber ? reg1_33:reg2_33;
assign reg34= ber ? reg1_34:reg2_34;assign reg35= ber ? reg1_35:reg2_35;assign reg36= ber ? reg1_36:reg2_36;assign reg37= ber ? reg1_37:reg2_37;
assign reg40= ber ? reg1_40:reg2_40;assign reg41= ber ? reg1_41:reg2_41;assign reg42= ber ? reg1_42:reg2_42;assign reg43= ber ? reg1_43:reg2_43;
assign reg44= ber ? reg1_44:reg2_44;assign reg45= ber ? reg1_45:reg2_45;assign reg46= ber ? reg1_46:reg2_46;assign reg47= ber ? reg1_47:reg2_47;
assign reg50= ber ? reg1_50:reg2_50;assign reg51= ber ? reg1_51:reg2_51;assign reg52= ber ? reg1_52:reg2_52;assign reg53= ber ? reg1_53:reg2_53;
assign reg54= ber ? reg1_54:reg2_54;assign reg55= ber ? reg1_55:reg2_55;assign reg56= ber ? reg1_56:reg2_56;assign reg57= ber ? reg1_57:reg2_57;
assign reg60= ber ? reg1_60:reg2_60;assign reg61= ber ? reg1_61:reg2_61;assign reg62= ber ? reg1_62:reg2_62;assign reg63= ber ? reg1_63:reg2_63;
assign reg64= ber ? reg1_64:reg2_64;assign reg65= ber ? reg1_65:reg2_65;assign reg66= ber ? reg1_66:reg2_66;assign reg67= ber ? reg1_67:reg2_67;
assign reg70= ber ? reg1_70:reg2_70;assign reg71= ber ? reg1_71:reg2_71;assign reg72= ber ? reg1_72:reg2_72;assign reg73= ber ? reg1_73:reg2_73;
assign reg74= ber ? reg1_74:reg2_74;assign reg75= ber ? reg1_75:reg2_75;assign reg76= ber ?reg1_76:reg2_76;assign reg77= ber ? reg1_77:reg2_77;

endmodule