module full_adder(sum, cout, a, b, cin);

// define ports
input a, b, cin;
output sum, cout;

// define nets
wire sum_temp, carry_temp1, carry_temp2;

// circuit functionality 
half_adder(sum_temp, carry_temp, a, b);
half_adder(sum, sum_temp, cin);
or(cout, carry_temp1, carry_temp2);

endmodule
