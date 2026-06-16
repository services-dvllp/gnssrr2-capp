
module pl_mts_sync_clk(
    input  pl_clk_p,
    input  pl_clk_n,
    input  pl_sys_ref_p,
    input  pl_sys_ref_n,

    output pl_clk ,
    output user_sysref_adc,
    output user_sysref_dac
    );
wire pl_clk_bufds;
wire pl_sys_ref_bufds;
wire pl_clk_bufg;
reg  pl_sys_ref_captrue;

IBUFDS BUFGDS_pl_clk (
    .I(pl_clk_p),
    .IB(pl_clk_n),
    .O(pl_clk_bufds)
    );    

IBUFG IBUFG_inst (
    .I(pl_clk_bufds),
    .O(pl_clk_bufg)
    );

IBUFDS IBUFDS_pl_sys (
    .I(pl_sys_ref_p),
    .IB(pl_sys_ref_n),
    .O(pl_sys_ref_bufds)
    );
//********用pl_clk的时钟去抓取pl_sys_ref************
always@(posedge pl_clk_bufg)begin
    pl_sys_ref_captrue<=pl_sys_ref_bufds;                 
end

assign user_sysref_dac=pl_sys_ref_captrue;
assign user_sysref_adc=pl_sys_ref_captrue;

assign pl_clk=pl_clk_bufg;
endmodule
