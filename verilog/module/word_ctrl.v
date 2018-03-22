module word_ctrl(
    input wc,
    input half_word_t,
    input [31:0] D,

    output reg [31:0] D_out
    );

    wire [15:0] low;
    wire [15:0] high;
    wire [15:0] half;
    wire [31:0] half_ext;

    assign high = D[31:16];
    assign low = D[15:0];
    assign half_ext = {{16{half[15]}}, half};
    
    MUX_2 #32 mux_1(wc, low, high, half, 0);
    MUX_2 #32 mux_2(half_word_t, D, half_ext, D_out ,0);
    
endmodule
