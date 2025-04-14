module four_sram_wrapper
  #(
    parameter RAM_SIZE   = 8192,              // 32KB
    parameter ADDR_WIDTH = $clog2(RAM_SIZE),   // 15-bit 地址宽度
    parameter DATA_WIDTH = 32                  // 32-bit 数据总线
  )(
    input  logic                    clk,
    input  logic                    en_i,
    input  logic [ADDR_WIDTH-1:0]   addr_i,
    input  logic [DATA_WIDTH-1:0]   wdata_i,
    output logic [DATA_WIDTH-1:0]   rdata_o,
    input  logic                    we_i,
    input  logic [DATA_WIDTH/8-1:0] be_i
  );

  localparam NUM_BANKS = 4;  
  
  logic [7:0] sram_rdata [NUM_BANKS-1:0];
  logic [7:0] wdata [NUM_BANKS-1:0];
    logic sram_wen [NUM_BANKS-1:0];

genvar i;
generate
    for (i = 0; i < NUM_BANKS; i=i+1) begin : gen_block
        assign wdata[i] = wdata_i[i*8 +: 8];  // 选择写入 8-bit 数据
        assign sram_wen[i] = be_i[i] & we_i;
    end
endgenerate

  ST_SPHDL_2048x8m8_L sram_inst0 (
        .Q      (sram_rdata[0]),               // 8-bit 读数据
        .RY     (),                             // 忽略 Ready 信号
        .D      (wdata[0]),                     // 8-bit 写数据
        .A      (addr_i[12:2]),                 // 2KB 地址范围 (11-bit)
        .CK     (clk),                          // 时钟
        .CSN    (~en_i),                        // 片选，低有效
        .TBYPASS(1'b0),                         // Test Bypass 设为 0
        .WEN    (~sram_wen[0])                   // 写使能，低有效
      );

  ST_SPHDL_2048x8m8_L sram_inst1 (
        .Q      (sram_rdata[1]),               // 8-bit 读数据
        .RY     (),                             // 忽略 Ready 信号
        .D      (wdata[1]),                     // 8-bit 写数据
        .A      (addr_i[12:2]),                 // 2KB 地址范围 (11-bit)
        .CK     (clk),                          // 时钟
        .CSN    (~en_i),                        // 片选，低有效
        .TBYPASS(1'b0),                         // Test Bypass 设为 0
        .WEN    (~sram_wen[1])                   // 写使能，低有效
      );
  ST_SPHDL_2048x8m8_L sram_inst2(
        .Q      (sram_rdata[2]),               // 8-bit 读数据
        .RY     (),                             // 忽略 Ready 信号
        .D      (wdata[2]),                     // 8-bit 写数据
        .A      (addr_i[12:2]),                 // 2KB 地址范围 (11-bit)
        .CK     (clk),                          // 时钟
        .CSN    (~en_i),                        // 片选，低有效
        .TBYPASS(1'b0),                         // Test Bypass 设为 0
        .WEN    (~sram_wen[2])                   // 写使能，低有效
      );

  ST_SPHDL_2048x8m8_L sram_inst3 (
        .Q      (sram_rdata[3]),               // 8-bit 读数据
        .RY     (),                             // 忽略 Ready 信号
        .D      (wdata[3]),                     // 8-bit 写数据
        .A      (addr_i[12:2]),                 // 2KB 地址范围 (11-bit)
        .CK     (clk),                          // 时钟
        .CSN    (~en_i),                        // 片选，低有效
        .TBYPASS(1'b0),                         // Test Bypass 设为 0
        .WEN    (~sram_wen[3])                   // 写使能，低有效
      );

  always @(*) begin
    for (int i = 0; i < 4; i++) begin
      rdata_o[i*8 +: 8] = sram_rdata[i];
    end
  end

endmodule

