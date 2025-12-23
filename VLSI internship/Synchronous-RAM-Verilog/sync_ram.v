module sync_ram (
    input clk,
    input we,              // Write Enable
    input [1:0] addr,      // Address (4 locations)
    input [7:0] din,       // Data input
    output reg [7:0] dout  // Data output
);

reg [7:0] mem [0:3];      // 4x8 RAM

always @(posedge clk) begin
    if (we)
        mem[addr] <= din;   // WRITE
    else
        dout <= mem[addr];  // READ
end

endmodule
