`timescale 1ns / 1ps

module updown_modN_counter #(parameter N=10, parameter MSB=4)(
    input clk,arst,load,
    output reg [MSB-1:0]count  
    );
    
    always @ (posedge clk, posedge arst) begin  
    if (arst) begin  
      count <= 0;  
    end else begin  
      if (count == N-1)  
        count <= 0;  
      else if(load==1) 
        count <= count + 1;
        else count<=count-1;
          
    end  
  end  
endmodule  

