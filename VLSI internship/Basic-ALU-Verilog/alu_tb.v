module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] SEL;
wire [3:0] RESULT;

alu uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .RESULT(RESULT)
);

initial begin
    A = 4'd5;
    B = 4'd3;

    SEL = 3'b000; #10;
    SEL = 3'b001; #10;
    SEL = 3'b010; #10;
    SEL = 3'b011; #10;
    SEL = 3'b100; #10;

    $stop;
end

endmodule
