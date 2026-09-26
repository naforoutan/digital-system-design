#!/bin/bash

# run.sh - Script to compile and simulate Montgomery exponentiation

echo "========================================="
echo "Montgomery Exponentiation Hardware Test"
echo "========================================="

# Clean previous files
rm -f sim.out tb_montgomery_exp.vcd test_results.log

# Compile all Verilog files
echo "Compiling Verilog files..."
iverilog -Wall -g2012 -o sim.out \
    karatsuba_mul.v \
    non_restoring_div.v \
    extended_gcd.v \
    modular_inverse.v \
    montgomery_mul.v \
    montgomery_exp_top.v \
    tb_montgomery_exp.v

# Check if compilation succeeded
if [ $? -eq 0 ]; then
    echo "Compilation successful!"
    echo ""
    echo "Running simulation..."
    echo ""
    
    # Run simulation
    vvp sim.out
    
    # Check if simulation succeeded
    if [ $? -eq 0 ]; then
        echo ""
        echo "========================================="
        echo "Simulation completed successfully!"
        
        # Check if VCD file was created
        if [ -f tb_montgomery_exp.vcd ]; then
            echo "Waveform dump: tb_montgomery_exp.vcd"
            echo "View with: gtkwave tb_montgomery_exp.vcd"
        fi
        
        # Display log file if exists
        if [ -f test_results.log ]; then
            echo ""
            echo "Test results saved to: test_results.log"
        fi
    else
        echo "Simulation failed!"
        exit 1
    fi
else
    echo "Compilation failed!"
    exit 1
fi

echo "========================================="