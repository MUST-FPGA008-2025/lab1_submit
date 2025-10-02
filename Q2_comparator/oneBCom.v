module oneBCom(
input key1, key2,
output led0, led1, led2
);

assign led0 = key2 | (~key1);
assign led1 = key1 ^ key2;
assign led2 = key1 | (~key2);

endmodule