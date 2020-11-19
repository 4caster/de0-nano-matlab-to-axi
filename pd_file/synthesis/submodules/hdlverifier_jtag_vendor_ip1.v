module hdlverifier_jtag_vendor_ip1
#(parameter JTAG_ID=56)
(
    output tdi,
    input  tdo,
    output tck,
    output jtag_reset,
    output capture_dr,
    output shift_dr,
    output update_dr
);
wire [7:0] ir;

assign jtag_reset = ir[0];

sld_virtual_jtag #(
        .sld_sim_n_scan         (0),
        .sld_sim_action          (""),
        .sld_sim_total_length   (0),
        .sld_auto_instance_index ("NO"),
        .sld_instance_index      (JTAG_ID),
        .sld_ir_width            (8)) 
u_virtual_jtag (
        .tdi                (tdi),                
        .tdo                (tdo),                
        .ir_in              (ir),
        .ir_out             (8'b0),
        .virtual_state_cdr  (capture_dr),
        .virtual_state_sdr  (shift_dr),
        .tck                (tck),
        .virtual_state_udr  (update_dr)
    );
    
endmodule