package require -exact qsys 14.0

add_instance validator_subsys_0 validator_subsys 1.0

add_connection hps_0.h2f_user1_clock validator_subsys_0.clk clock

add_connection hps_0.h2f_reset validator_subsys_0.reset reset

add_connection hps_0.h2f_lw_axi_master validator_subsys_0.val_mm_bridge_s0 avalon
set_connection_parameter_value hps_0.h2f_lw_axi_master/validator_subsys_0.val_mm_bridge_s0 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/validator_subsys_0.val_mm_bridge_s0 baseAddress {0x00040000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/validator_subsys_0.val_mm_bridge_s0 defaultConnection {0}

add_connection fpga_only_master.master validator_subsys_0.val_mm_bridge_s0 avalon
set_connection_parameter_value fpga_only_master.master/validator_subsys_0.val_mm_bridge_s0 arbitrationPriority {1}
set_connection_parameter_value fpga_only_master.master/validator_subsys_0.val_mm_bridge_s0 baseAddress {0x00040000}
set_connection_parameter_value fpga_only_master.master/validator_subsys_0.val_mm_bridge_s0 defaultConnection {0}

save_system