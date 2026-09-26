
catch { quit -sim }
if { [file exists work] } { catch { vdel -lib work -all } }

vlib work
vmap work work

vlog -work work karatsuba_mul.v
vlog -work work non_restoring_div.v
vlog -work work extended_gcd.v
vlog -work work modular_inverse.v
vlog -work work montgomery_mul.v
vlog -work work montgomery_exp_top.v


vlog -work work tb_montgomery_exp.v


vsim -voptargs=+acc work.tb_montgomery_exp

catch {
    add wave -divider "Control"
    add wave             sim:/tb_montgomery_exp/clk
    add wave             sim:/tb_montgomery_exp/rst
    add wave             sim:/tb_montgomery_exp/start
    add wave             sim:/tb_montgomery_exp/done

    add wave -divider "Inputs / Output"
    add wave -radix unsigned sim:/tb_montgomery_exp/A
    add wave -radix unsigned sim:/tb_montgomery_exp/E
    add wave -radix unsigned sim:/tb_montgomery_exp/N
    add wave -radix unsigned sim:/tb_montgomery_exp/result

    add wave -divider "Top FSM"
    add wave -radix unsigned sim:/tb_montgomery_exp/dut/state
    add wave -radix unsigned sim:/tb_montgomery_exp/dut/N_prime
    add wave -radix unsigned sim:/tb_montgomery_exp/dut/A_bar
    add wave -radix unsigned sim:/tb_montgomery_exp/dut/mont_result
    add wave -radix unsigned sim:/tb_montgomery_exp/dut/bit_index

    add wave -divider "Submodule done strobes"
    add wave             sim:/tb_montgomery_exp/dut/inv_done
    add wave             sim:/tb_montgomery_exp/dut/div_done
    add wave             sim:/tb_montgomery_exp/dut/mont_done
}

run -all

catch { wave zoom full }