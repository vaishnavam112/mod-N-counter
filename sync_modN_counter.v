`timescale 1ns / 1ps

module sync_modN_counter #(parameter N=10, parameter MSB=4)(
    input clk,rst,
    output reg [MSB-1:0]count  
    );
    
    always @ (posedge clk) begin  
    if (rst) begin  
      count <= 0;  
    end else begin  
      if (count == N-1)  
        count <= 0;  
      else  
        count <= count + 1;  
    end  
  end  
endmodule  

