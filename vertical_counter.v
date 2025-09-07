module vertical_counter(
input clk_25,
input v_enable,
output reg [15:0] v_count
);
always@(posedge clk_25)
begin
if(v_enable == 1)
begin
if(v_count < 524)
begin
v_count <= v_count + 1;
end
else
begin
v_count <= 0;
end
end
end
endmodule
