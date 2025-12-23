module sync_ram_tb;

reg clk;
reg we;
reg [1:0] addr;
reg [7:0] din;
wire [7:0] dout;

sync_ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

always #5 clk = ~clk;  // Clock generation

initial begin
    clk = 0;
    we = 1;

    // Write operations
    addr = 2'b00; din = 8'hAA; #10;
    addr = 2'b01; din = 8'h55; #10;
    addr = 2'b10; din = 8'hFF; #10;

    // Read operations
    we = 0;
    addr = 2'b00; #10;
    addr = 2'b01; #10;
    addr = 2'b10; #10;

    $stop;
end

endmodule
