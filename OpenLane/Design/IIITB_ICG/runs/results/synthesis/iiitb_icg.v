/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module iiitb_icg(in, clk, d0, d1, q0, q1);
  wire _0_;
  wire _1_;
  wire cgclk;
  input clk;
  input d0;
  input d1;
  wire \dff1.q ;
  wire \dff2.d ;
  wire \dff2.q ;
  input in;
  output q0;
  output q1;
  sky130_fd_sc_hd__and2_2 _2_ (
    .A(\dff2.q ),
    .B(clk),
    .X(_1_)
  );
  sky130_fd_sc_hd__buf_1 _3_ (
    .A(_1_),
    .X(cgclk)
  );
  sky130_vsdinv _4_ (
    .A(\dff1.q ),
    .Y(\dff2.d )
  );
  sky130_vsdinv _5_ (
    .A(clk),
    .Y(_0_)
  );
  sky130_fd_sc_hd__dfxtp_2 _6_ (
    .CLK(cgclk),
    .D(d1),
    .Q(q1)
  );
  sky130_fd_sc_hd__dfxtp_2 _7_ (
    .CLK(cgclk),
    .D(d0),
    .Q(q0)
  );
  sky130_fd_sc_hd__dfxtp_2 _8_ (
    .CLK(clk),
    .D(in),
    .Q(\dff1.q )
  );
  sky130_fd_sc_hd__dfxtp_2 _9_ (
    .CLK(_0_),
    .D(\dff2.d ),
    .Q(\dff2.q )
  );
endmodule
