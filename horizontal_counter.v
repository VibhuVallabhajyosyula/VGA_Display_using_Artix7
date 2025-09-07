module horizontal_counter(
input clk_25,
output reg [15:0] h_count,
output reg v_enable
);

always@(posedge clk_25)
begin
if(h_count < 799)
begin
h_count <= h_count + 1;
v_enable <= 0;
end
else
begin
h_count <= 0;
v_enable <= 1;
end
end
endmodule
