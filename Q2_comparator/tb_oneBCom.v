`timescale 1ns/1ns
module tb_oneBCom();
reg key1; // A
reg key2; // B

wire led0; // when A < B,led0 on
wire led1; // equal
wire led2; // greater

oneBCom oneBCom_instance
(
.key1(key1),
.key2(key2),
.led2(led2),
.led0(led0),
.led1(led1)
);

initial begin
    
    //print
    $display(" time  key1 key2 | led0(less) led1(equal) led2(greater)");
    $monitor("%4t    %0b    %0b  |  %0b     %0b      %0b",
             $time, key1, key2, led0, led1, led2);

    //init
    key1 = 1'b0; key2 = 1'b0;  #10;

    //all input possibilities
  key1 = 1'b1; key2 = 1'b1;  #10;
  key1 = 1'b1; key2 = 1'b0;  #10;
  key1 = 1'b0; key2 = 1'b1;  #10;
  key1 = 1'b0; key2 = 1'b0;  #10;

    $stop; // end simulation
  end


endmodule
