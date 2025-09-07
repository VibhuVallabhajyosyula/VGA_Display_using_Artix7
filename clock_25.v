module clock_25(
input clk,
output reg clk_25
    );
    always@(posedge clk)
    begin
    clk_25 <= ~clk_25;
    end
endmodule
