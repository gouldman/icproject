// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.




module sp_ram_ip
  #(
    parameter RAM_SIZE   = 32768,              // 32KB
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
  localparam NUM_BANKS = 4;  // 16 个 SRAM，每个存 2KB

  logic [31:0] sram_rdata [NUM_BANKS-1:0];
	logic [1:0] addr_MSB2;
	always@(posedge clk) begin
		addr_MSB2 <= addr_i[ADDR_WIDTH - 1 : 13];
	end
  four_sram_wrapper four_sram_wrapper0 (
        .rdata_o      (sram_rdata[0]),               // 8-bit 读数据                            // 忽略 Ready 信号
        .wdata_i      (wdata_i),                     // 8-bit 写数据
        .addr_i      (addr_i[12:0]),                 // 2KB 地址范围 (11-bit)
        .clk     (clk),                          // 时钟
        .en_i    (en_i),                        // 片选，低有效                      // Test Bypass 设为 0
        .we_i    (addr_i[14:13] == 2'b00 & we_i),                   // 写使能，低有效
        .be_i     (be_i)
      );

  four_sram_wrapper four_sram_wrapper1 (
        .rdata_o      (sram_rdata[1]),               // 8-bit 读数据                            // 忽略 Ready 信号
        .wdata_i      (wdata_i),                     // 8-bit 写数据
        .addr_i      (addr_i[12:0]),                 // 2KB 地址范围 (11-bit)
        .clk     (clk),                          // 时钟
        .en_i    (en_i),                        // 片选，低有效                      // Test Bypass 设为 0
        .we_i    (addr_i[14:13] == 2'b01 & we_i) ,  
                .be_i     (be_i)             // 写使能，低有效
      );
  four_sram_wrapper four_sram_wrapper2(
        .rdata_o      (sram_rdata[2]),               // 8-bit 读数据                            // 忽略 Ready 信号
        .wdata_i      (wdata_i),                     // 8-bit 写数据
        .addr_i      (addr_i[12:0]),                 // 2KB 地址范围 (11-bit)
        .clk     (clk),                          // 时钟
        .en_i    (en_i),                        // 片选，低有效                      // Test Bypass 设为 0
        .we_i    (addr_i[14:13] == 2'b10 & we_i) ,  
                .be_i     (be_i)                // 写使能，低有效
      );

  four_sram_wrapper four_sram_wrapper3 (
        .rdata_o      (sram_rdata[3]),               // 8-bit 读数据                            // 忽略 Ready 信号
        .wdata_i      (wdata_i),                     // 8-bit 写数据
        .addr_i      (addr_i[12:0]),                 // 2KB 地址范围 (11-bit)
        .clk     (clk),                          // 时钟
        .en_i    (en_i),                        // 片选，低有效                      // Test Bypass 设为 0
        .we_i    (addr_i[14:13] == 2'b11 & we_i),
                .be_i     (be_i)                    // 写使能，低有效
      );

  always @(*) begin
      rdata_o= sram_rdata[addr_MSB2];
  end

endmodule
