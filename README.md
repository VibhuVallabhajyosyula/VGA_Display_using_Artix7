This project implements a VGA display driver that outputs video signals for a standard 640×480 @ 60 Hz VGA monitor. It consists of four modules:

clock_25

Divides the incoming clk (likely 50 MHz) by two to generate a 25 MHz pixel clock (clk_25), which is the standard pixel frequency for 640×480 VGA.

horizontal_counter

Counts pixel positions across a single scan line.

h_count runs from 0 to 799 (total 800 pixel clocks per line: 640 active + front porch + sync + back porch).

Generates v_enable (a pulse at the end of each line) to tell the vertical counter to increment.

vertical_counter

Counts scan lines vertically.

v_count runs from 0 to 524 (total 525 lines per frame: 480 active + porches + sync).

Resets to 0 at the end of a frame.

top_module

Instantiates all submodules.

Generates the horizontal sync (h_sync) and vertical sync (v_sync) signals by checking h_count and v_count against VGA timing thresholds.

Calculates the display area (the visible 640×480 region) and outputs the selected RGB color if the pixel is inside this region:

red_sw shows full red,

green_sw shows full green,

blue_sw shows full blue.
