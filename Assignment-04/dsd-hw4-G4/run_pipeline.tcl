transcript on

# recreate work library
if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vmap work work

# compile DES components
vlog E.v
vlog P.v
vlog S1.v
vlog S2.v
vlog S3.v
vlog S4.v
vlog S5.v
vlog S6.v
vlog S7.v
vlog S8.v
vlog IP.v
vlog IP_inv.v
vlog PC1.v
vlog PC2.v

# compile DES core
vlog main.v

# compile triple DES (pipeline version)
vlog triple_des_pipeline.v

# compile testbench
vlog tb_triple_des_pipeline.v

# start simulation
vsim -voptargs=+acc work.tb_triple_des_pipeline

# add selected waves
add wave -position insertpoint sim:/tb_triple_des_pipeline/clk
add wave -position insertpoint sim:/tb_triple_des_pipeline/nrst
add wave -position insertpoint sim:/tb_triple_des_pipeline/start
add wave -position insertpoint sim:/tb_triple_des_pipeline/mode
add wave -position insertpoint sim:/tb_triple_des_pipeline/key
add wave -position insertpoint sim:/tb_triple_des_pipeline/iv

# DUT 256 signals
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/busy
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/done
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/data_in
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/data_out

# Add pipeline internal signals for DUT 256 (optional - uncomment if needed)
# add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/feed_index
# add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/output_count
# add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_256/valid_pipe

# DUT 300 signals
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/busy
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/done
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/data_in
add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/data_out

# Add pipeline internal signals for DUT 300 (optional - uncomment if needed)
# add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/feed_index
# add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/output_count
# add wave -position insertpoint sim:/tb_triple_des_pipeline/dut_300/valid_pipe

# run simulation
run -all

# Add this to see waves after simulation
wave zoom full