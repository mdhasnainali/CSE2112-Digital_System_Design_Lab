module half_adder(sum, carry, a, b);

// Define in ports
input a,b;
output sum, carry;

// Circuit Functionlity in data flow level
assign sum = a ^ b;
assign carry = a & b;

// or Circuit Functionlity in gate level
xor x1(sum, a, b);
and a1(carry, a, b);

endmodule
