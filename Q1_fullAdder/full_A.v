module full_A(
input key1,key2, key3,
output led0,led1
);

assign led0 = (key1 & key2) | key3 & (key1 ^ key2);
assign led1 = key1 ^ key2 ^ key3;

endmodule