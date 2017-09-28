// Khai bao module
module blinky(clk, LED); //<-- Khai bao so chan cua module

// Khai bao dau vao ra
input clk;
output LED;

// Khai bao bien dem counter dang thanh ghi 24 bit
reg [23:0] counter;

// Dem counter
always @(posedge clk) counter <= counter + 24'd1;

// Ket noi dau ra LED voi bit 23
assign LED = counter[23];

endmodule