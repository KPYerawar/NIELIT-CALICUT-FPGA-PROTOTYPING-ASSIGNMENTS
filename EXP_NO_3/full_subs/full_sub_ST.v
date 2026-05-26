module full_sub_ST(
input a , b , bin ,
output difference , borrow );
wire h1_diff , h1_borrow;
wire h2_borrow;
half_sub h1 (.a(a),.b(b),.difference(h1_diff),.borrow(h1_borrow));
half_sub h2 (.a(bin),.b(h1_diff),.difference(difference),.borrow(h2_borrow));
or1 o1 (.a(h1_borrow),.b(h2_borrow),.out1(borrow));
endmodule
