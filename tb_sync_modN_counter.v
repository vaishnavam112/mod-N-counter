`timescale 1ns / 1ps
module tb_sync_modN_counter();
  
  parameter N = 10;  
  parameter MSB = 4;  
  
  reg clk, rst;  
  wire [MSB-1:0] count;  
  
  sync_modN_counter u0  (.clk(clk),  
                    .rst(rst),  
                    .count(count));  
  
  always #10 clk = ~clk;  
  
  initial begin  
    //{clk, rst} <= 0;  
    clk=0;
    rst=0;
    #10
    clk=1;
    rst=1;
    #10
    rst=0;
    
    
    $monitor ("T=%0t rst=%0b count=0x%0h", $time, rst, count);  
    //repeat(2) @ (posedge clk);  
    //rst <= 0;  
  
    repeat(20) @ (posedge clk);  
    $finish;  
  end  
endmodule  

