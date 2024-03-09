`timescale 1ns / 1ps
module tb_updown_modN#(parameter N=10, parameter MSB=4)( );
    reg clk,arst,load;
    wire [MSB-1:0]count;
    
    updown_modN_counter modn(.clk(clk), .arst(arst), .load(load),.count(count));  
    
    always #5 clk= ~clk;
    
    initial
    begin
    clk=0;
    arst=1;
    load=0;
    #15
    arst=0;
    #18
    load=1;
    #20
    load=0;
    #40
    load=1;
    #15
    load=0;
    #500;
    $finish;
    
    end
endmodule
