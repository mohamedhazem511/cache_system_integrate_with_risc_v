onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /data_mem_sys_tb/clk
add wave -noupdate /data_mem_sys_tb/rst
add wave -noupdate /data_mem_sys_tb/MemRead
add wave -noupdate /data_mem_sys_tb/MemWrite
add wave -noupdate -color Salmon -itemcolor Salmon -radix decimal /data_mem_sys_tb/WordAddress
add wave -noupdate -radix decimal /data_mem_sys_tb/DataIn
add wave -noupdate /data_mem_sys_tb/Stall
add wave -noupdate -radix decimal /data_mem_sys_tb/DataOut
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/ready
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/tag
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/index
add wave -noupdate -color {Sky Blue} -itemcolor {Sky Blue} /data_mem_sys_tb/UUT/U0_cache_controller/stall
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/write
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/read
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/update
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/refill
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/hit
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/current_state
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/next_state
add wave -noupdate -radix binary -childformat {{{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[0]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[1]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[2]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[3]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[4]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[5]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[6]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[7]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[8]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[9]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[10]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[11]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[12]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[13]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[14]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[15]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[16]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[17]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[18]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[19]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[20]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[21]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[22]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[23]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[24]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[25]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[26]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[27]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[28]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[29]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[30]} -radix binary} {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[31]} -radix binary}} -subitemconfig {{/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[0]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[1]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[2]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[3]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[4]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[5]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[6]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[7]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[8]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[9]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[10]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[11]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[12]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[13]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[14]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[15]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[16]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[17]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[18]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[19]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[20]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[21]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[22]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[23]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[24]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[25]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[26]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[27]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[28]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[29]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[30]} {-height 15 -radix binary} {/data_mem_sys_tb/UUT/U0_cache_controller/valid_bit[31]} {-height 15 -radix binary}} /data_mem_sys_tb/UUT/U0_cache_controller/valid_bit
add wave -noupdate /data_mem_sys_tb/UUT/U0_cache_controller/cache_tag
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/U0_data_memory/data_ram[20]}
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/U0_data_memory/data_ram[21]}
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/U0_data_memory/data_ram[29]}
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/U0_data_memory/data_ram[52]}
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/U0_data_memory/data_ram[157]}
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/cache_mem_i/cache[21]}
add wave -noupdate -expand -group Locations -radix decimal {/data_mem_sys_tb/UUT/cache_mem_i/cache[29]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {379 ps} 0} {{Cursor 2} {50 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 215
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
WaveRestoreZoom {0 ps} {808 ps}
