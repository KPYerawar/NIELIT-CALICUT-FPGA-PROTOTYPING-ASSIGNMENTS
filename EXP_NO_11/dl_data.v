module dl_data(
input e , d ,
output q , qbar );

assign q = (e & d ) | ( ~e & q );
assign qbar = ~((e & d ) | ( ~e & q ));

endmodule 
