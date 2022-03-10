# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
numOfInNeurons { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
numOfOutNeurons { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
activation { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
input_s { 
	dir I
	width 16
	depth 256
	mode ap_memory
	offset 512
	offset_end 1023
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
output_r { 
	dir IO
	width 16
	depth 256
	mode ap_memory
	offset 1024
	offset_end 1535
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
bias_s { 
	dir I
	width 16
	depth 256
	mode ap_memory
	offset 1536
	offset_end 2047
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weights_s { 
	dir I
	width 16
	depth 65536
	mode ap_memory
	offset 131072
	offset_end 262143
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
ap_local_deadlock { 
	dir O
	width 1
	depth 1
	mode ap_none
	offset -1
	offset_end -1
}
interrupt {
    ap_local_deadlock 5
}
}
dict set axilite_register_dict control $port_control


