`timescale 1ns/1ns
module tb_full_A();

  reg  key1;
  reg  key2;
  reg  key3;
  wire led1; // sum
  wire led0; // cout

  full_A full_A_instance (
    .key1(key1),
    .key2(key2),
    .key3(key3),
    .led1(led1),
    .led0(led0)
  );

  initial begin
    

    //print
    $display(" time  key1 key2 key3 | led0(cout) led1(sum)");
    $monitor("%4t    %0b    %0b    %0b |     %0b         %0b",
             $time, key1, key2, key3, led0, led1);

    //init
    key1 = 1'b0; key2 = 1'b0; key3 = 1'b0; #10;

    //all input possibilities
  key1 = 1'b1; key2 = 1'b1; key3 = 1'b1; #10;
  key1 = 1'b1; key2 = 1'b1; key3 = 1'b0; #10;
  key1 = 1'b1; key2 = 1'b0; key3 = 1'b1; #10;
  key1 = 1'b1; key2 = 1'b0; key3 = 1'b0; #10;
  key1 = 1'b0; key2 = 1'b1; key3 = 1'b1; #10;
  key1 = 1'b0; key2 = 1'b1; key3 = 1'b0; #10;
  key1 = 1'b0; key2 = 1'b0; key3 = 1'b1; #10;
  key1 = 1'b0; key2 = 1'b0; key3 = 1'b0; #10;

    $stop; // end simulation
  end

endmodule

