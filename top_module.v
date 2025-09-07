module top_module(
input clk,
input red_sw,
input green_sw,
input blue_sw,
output h_sync,
output v_sync,
output [3:0] red,
output [3:0] green,
output [3:0] blue
    );
    wire clk_25, v_enable, display_area;
    wire [15:0] h_count, v_count;
    clock_25(clk, clk_25);
    horizontal_counter(clk_25, h_count, v_enable);
    vertical_counter(clk_25, v_enable, v_count);
    
    assign h_sync = (h_count < 96) ? 1:0;
    assign v_sync = (v_count < 2) ? 1:0;
    
    assign display_area = (h_count < 784 && h_count > 143 && v_count < 515 && v_count > 35);
    assign red = (red_sw && display_area) ? 4'hF:4'h0;
    assign green = (green_sw && display_area) ? 4'hF:4'h0;
    assign blue = (blue_sw && display_area) ? 4'hF:4'h0;
endmodule
