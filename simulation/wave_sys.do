onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /risc_v_tb/DUT/U0_PC/CLK
add wave -noupdate /risc_v_tb/DUT/U0_PC/RST
add wave -noupdate /risc_v_tb/DUT/U0_PC/Stall
add wave -noupdate -radix hexadecimal /risc_v_tb/DUT/U0_PC/PC
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/MemRead
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/MemWrite
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/ready
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/tag
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/index
add wave -noupdate -color Green -itemcolor Green /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/refill
add wave -noupdate -color Green -itemcolor Green /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/update
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/write
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/read
add wave -noupdate -color Green -itemcolor Green /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/stall
add wave -noupdate -color Green -itemcolor Green /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/hit
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/current_state
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/next_state
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/valid_bit
add wave -noupdate -color Coral -itemcolor Coral /risc_v_tb/DUT/U0_data_mem_sys/U0_cache_controller/cache_tag
add wave -noupdate -radix decimal /risc_v_tb/DUT/U0_data_mem_sys/WordAddress
add wave -noupdate -radix decimal /risc_v_tb/DUT/U0_data_mem_sys/DataIn
add wave -noupdate -radix decimal /risc_v_tb/DUT/U0_data_mem_sys/DataOut
add wave -noupdate -expand -group {Memory Location} -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/U0_data_memory/data_ram[96]}
add wave -noupdate -expand -group {Memory Location} -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/U0_data_memory/data_ram[112]}
add wave -noupdate -expand -group {Memory Location} -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/U0_data_memory/data_ram[114]}
add wave -noupdate -expand -group {Memory Location} -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/U0_data_memory/data_ram[200]}
add wave -noupdate -expand -group reg_locations -radix decimal {/risc_v_tb/DUT/U0_Register_File/MEM[7]}
add wave -noupdate -expand -group reg_locations -radix decimal {/risc_v_tb/DUT/U0_Register_File/MEM[4]}
add wave -noupdate -expand -group reg_locations -radix decimal {/risc_v_tb/DUT/U0_Register_File/MEM[3]}
add wave -noupdate -expand -group reg_locations -radix decimal {/risc_v_tb/DUT/U0_Register_File/MEM[2]}
add wave -noupdate -expand -group reg_locations -radix decimal {/risc_v_tb/DUT/U0_Register_File/MEM[1]}
add wave -noupdate -expand -group reg_locations -radix decimal {/risc_v_tb/DUT/U0_Register_File/MEM[0]}
add wave -noupdate -expand -group Cache_Locations -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/cache_mem_i/cache[72]}
add wave -noupdate -expand -group Cache_Locations -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/cache_mem_i/cache[96]}
add wave -noupdate -expand -group Cache_Locations -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/cache_mem_i/cache[112]}
add wave -noupdate -expand -group Cache_Locations -radix decimal {/risc_v_tb/DUT/U0_data_mem_sys/cache_mem_i/cache[114]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {465 ps} 0} {{Cursor 2} {245 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {318 ps}
