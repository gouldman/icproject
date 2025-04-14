module top_top  #(
    parameter USE_ZERO_RISCY       = 0,
    parameter RISCY_RV32F          = 0,
    parameter ZERO_RV32M           = 1,
    parameter ZERO_RV32E           = 0
  )(
    input  logic              in_clk, // global clock
    input  logic              in_rst_n,
    input  logic              in_testmode_i,
    input  logic              in_fetch_enable_i,
    input  logic              in_spi_clk_i /*verilator clocker*/,
    input  logic              in_spi_cs_i /*verilator clocker*/,
    output logic [1:0]        out_spi_mode_o,
    output logic              out_spi_sdo0_o,
    output logic              out_spi_sdo1_o,
    output logic              out_spi_sdo2_o,
    output logic              out_spi_sdo3_o,
    input  logic              in_spi_sdi0_i,
    input  logic              in_spi_sdi1_i,
    input  logic              in_spi_sdi2_i,
    input  logic              in_spi_sdi3_i,
    output logic              out_uart_tx,
    input  logic              in_uart_rx,
    output logic              out_uart_rts,
    output logic              out_uart_dtr,
    input  logic              in_uart_cts,
    input  logic              in_uart_dsr,
    input  logic              in_tck_i,
    input  logic              in_trstn_i,
    input  logic              in_tms_i,
    input  logic              in_tdi_i,
    output logic              gpio_out8,

    output logic              out_tdo_o

);

logic clk, rst_n, testmode_i, fetch_enable_i;
logic [1:0]spi_mode_o;
logic spi_clk_i,spi_cs_i, spi_sdo0_o,spi_sdo1_o, spi_sdo2_o, spi_sdo3;
logic spi_sdi0_i, spi_sdi1_i, spi_sdi2_i,spi_sdi3_i;
logic uart_tx, uart_rx, uart_rts, uart_dtr, uart_cts, uart_dsr;
logic tck_i, trstn_i, tms_i, tdi_i, tdo_o;

CPAD_S_74x50u_IN clkpad(
        .COREIO( clk),
        .PADIO(  in_clk)
);

CPAD_S_74x50u_IN rst_pad (
         .COREIO(rst_n),
         .PADIO(in_rst_n)
    );

CPAD_S_74x50u_IN testmode_pad (
         .COREIO( testmode_i),
         .PADIO( in_testmode_i)
    );

CPAD_S_74x50u_IN fetch_en_pad (
         .COREIO( fetch_enable_i),
         .PADIO( in_fetch_enable_i)
    );

CPAD_S_74x50u_IN spi_clk_pad (
         .COREIO( spi_clk_i),
         .PADIO( in_spi_clk_i)
    );

CPAD_S_74x50u_IN spi_cs_pad (
         .COREIO( spi_cs_i),
         .PADIO( in_spi_cs_i)
    );

CPAD_S_74x50u_IN spi_sdi0_pad (
         .COREIO( spi_sdi0_i),
         .PADIO( in_spi_sdi0_i)
    );

CPAD_S_74x50u_IN spi_sdi1_pad (
         .COREIO( spi_sdi1_i),
         .PADIO( in_spi_sdi1_i)
    );

CPAD_S_74x50u_IN spi_sdi2_pad (
         .COREIO( spi_sdi2_i),
         .PADIO( in_spi_sdi2_i)
    );

CPAD_S_74x50u_IN spi_sdi3_pad (
         .COREIO( spi_sdi3_i),
         .PADIO( in_spi_sdi3_i)
    );

CPAD_S_74x50u_IN uart_rx_pad (
         .COREIO( uart_rx),
         .PADIO( in_uart_rx)
    );

CPAD_S_74x50u_IN uart_cts_pad (
         .COREIO( uart_cts),
         .PADIO( in_uart_cts)
    );

CPAD_S_74x50u_IN uart_dsr_pad (
         .COREIO( uart_dsr),
         .PADIO( in_uart_dsr)
    );

CPAD_S_74x50u_IN tck_i_pad (
         .COREIO( tck_i),
         .PADIO( in_tck_i)
    );

CPAD_S_74x50u_IN trstn_i_pad (
         .COREIO( trstn_i),
         .PADIO( in_trstn_i)
    );

CPAD_S_74x50u_IN tms_i_pad (
         .COREIO( tms_i),
         .PADIO( in_tms_i)
    );

CPAD_S_74x50u_IN tdi_i_pad (
         .COREIO( tdi_i),
         .PADIO( in_tdi_i)
    );

CPAD_S_74x50u_OUT spi_mode_o0_pad (
        .COREIO( spi_mode_o[0]),
        .PADIO( out_spi_mode_o[0])
);

CPAD_S_74x50u_OUT spi_mode_o1_pad (
        .COREIO( spi_mode_o[1]),
        .PADIO( out_spi_mode_o[1])
);

CPAD_S_74x50u_OUT spi_sdo0_o_pad (
        .COREIO( spi_sdo0_o),
        .PADIO( out_spi_sdo0_o)
);

CPAD_S_74x50u_OUT spi_sdo1_o_pad (
        .COREIO( spi_sdo1_o),
        .PADIO( out_spi_sdo1_o)
);

CPAD_S_74x50u_OUT spi_sdo2_o_pad (
        .COREIO( spi_sdo2_o),
        .PADIO( out_spi_sdo2_o)
);

CPAD_S_74x50u_OUT spi_sdo3_o_pad (
        .COREIO( spi_sdo3_o),
        .PADIO( out_spi_sdo3_o)
);

CPAD_S_74x50u_OUT uart_tx_pad (
        .COREIO( uart_tx),
        .PADIO( out_uart_tx)
);

CPAD_S_74x50u_OUT uart_rts_pad (
        .COREIO( uart_rts),
        .PADIO( out_uart_rts)
);

CPAD_S_74x50u_OUT uart_dtr_pad (
        .COREIO( uart_dtr),
        .PADIO( out_uart_dtr)
);

CPAD_S_74x50u_OUT gpio_out8_pad (
        .COREIO( gpio_out8),
        .PADIO( out_gpio_out8)
);

CPAD_S_74x50u_OUT tdo_o_pad (
        .COREIO( tdo_o),
        .PADIO( out_tdo_o)
);

pulpino_top 
  #(
    .USE_ZERO_RISCY  (USE_ZERO_RISCY),
    .RISCY_RV32F     (RISCY_RV32F),
    .ZERO_RV32M      (ZERO_RV32M),
    .ZERO_RV32E      (ZERO_RV32E)
  )

top_inst(
    .clk                ( clk),
    .rst_n              (  rst_n),
    .testmode_i         (  testmode_i),
    .fetch_enable_i     ( fetch_enable_i),
    .spi_clk_i          ( spi_clk_i),
    .spi_cs_i           ( spi_cs_i),
    .spi_mode_o         ( spi_mode_o),
    .spi_sdo0_o         ( spi_sdo0_o),
    .spi_sdo1_o         ( spi_sdo1_o),
    .spi_sdo2_o         ( spi_sdo2_o),
    .spi_sdo3_o         ( spi_sdo3_o),
    .spi_sdi0_i         ( spi_sdi0_i),
    .spi_sdi1_i         ( spi_sdi1_i),
    .spi_sdi2_i         ( spi_sdi2_i),
    .spi_sdi3_i         ( spi_sdi3_i),
    .uart_tx            ( uart_tx),
    .uart_rx            ( uart_rx),
    .uart_rts           ( uart_rts),
    .uart_dtr       ( uart_dtr),
    .uart_cts        ( uart_cts),
    .uart_dsr        ( uart_dsr),
    .tck_i           ( tck_i),
    .trstn_i         ( trstn_i),
    .tms_i           ( tms_i),
    .tdi_i           ( tdi_i),
    .gpio_out8       (gpio_out8),
    .tdo_o          ( tdo_o)
);

endmodule

module CPAD_S_74x50u_IN(
    output COREIO,
    input  PADIO
);
    // 模块内部实现根据实际工艺库定义
endmodule

// -----------------------------------------------------------------------------
// 输出 PAD 模块：CPAD_S_74x50u_OUT
// 说明：将内部信号转换为外部 PAD 信号
// -----------------------------------------------------------------------------
module CPAD_S_74x50u_OUT(
    input  COREIO,
    output PADIO
);
    // 模块内部实现根据实际工艺库定义
endmodule
