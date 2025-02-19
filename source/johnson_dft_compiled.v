/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP5-5
// Date      : Fri Aug 10 08:15:06 2018
/////////////////////////////////////////////////////////////


module johnson ( SCANINPORT, SCANOUTPORT, SE, clk, r, out );
  output [0:7] out;
  input SCANINPORT, SE, clk, r;
  output SCANOUTPORT;
  wire   n8, n10;

  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[7]  ( .D(out[6]), .SI(out[6]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[7]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[0]  ( .D(n10), .SI(SCANINPORT), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[0]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[1]  ( .D(out[0]), .SI(out[0]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[1]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[2]  ( .D(out[1]), .SI(out[1]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[2]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[3]  ( .D(out[2]), .SI(out[2]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[3]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[4]  ( .D(out[3]), .SI(out[3]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[4]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[5]  ( .D(out[4]), .SI(out[4]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[5]) );
  SAEDRVT14_FSDPRBQ_V2_0P5 \out_reg[6]  ( .D(out[5]), .SI(out[5]), .SE(SE), 
        .CK(clk), .RD(n8), .Q(out[6]) );
  SAEDRVT14_INV_S_0P75 U10 ( .A(r), .X(n8) );
  SAEDRVT14_INV_1 U14 ( .A(out[7]), .X(n10) );
  SAEDRVT14_BUF_S_1 U13 ( .A(out[7]), .X(SCANOUTPORT) );
endmodule

