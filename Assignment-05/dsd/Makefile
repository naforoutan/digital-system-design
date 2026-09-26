#=====================================================================
# Makefile for Montgomery Exponentiation Testbench
#=====================================================================

# Simulator selection (change as needed)
SIM = iverilog

# Tool commands
IVERILOG = iverilog
VVP = vvp
VCD_VIEWER = gtkwave

# Source files
SOURCES = karatsuba_mul.v \
          non_restoring_div.v \
          extended_gcd.v \
          modular_inverse.v \
          montgomery_mul.v \
          montgomery_exp_top.v

# Testbench file
TESTBENCH = tb_montgomery_exp.v

# Output files
OUTPUT = sim.out
VCD_FILE = tb_montgomery_exp.vcd

#=====================================================================
# Targets
#=====================================================================

.PHONY: all compile run view clean

all: compile run

compile:
	@echo "Compiling with Icarus Verilog..."
	$(IVERILOG) -o $(OUTPUT) $(SOURCES) $(TESTBENCH)
	@echo "Compilation complete"

run: compile
	@echo "Running simulation..."
	$(VVP) $(OUTPUT)
	@echo "Simulation complete"

view:
	@if [ -f $(VCD_FILE) ]; then \
		$(VCD_VIEWER) $(VCD_FILE); \
	else \
		echo "VCD file not found. Run simulation first."; \
	fi

clean:
	rm -f $(OUTPUT) $(VCD_FILE) *.log *.vcd
	rm -rf work *.wlf transcript
	@echo "Cleaned up temporary files"

# Run with verbose output
debug: clean
	$(IVERILOG) -o $(OUTPUT) $(SOURCES) $(TESTBENCH)
	$(VVP) $(OUTPUT) -v

# Run only specific test (can be extended)
quick: clean
	iverilog -DQUICK_TEST -o $(OUTPUT) $(SOURCES) $(TESTBENCH)
	vvp $(OUTPUT)

help:
	@echo "Available targets:"
	@echo "  make compile  - Compile the design and testbench"
	@echo "  make run      - Compile and run simulation"
	@echo "  make view     - View waveform with GTKWave"
	@echo "  make clean    - Remove generated files"
	@echo "  make debug    - Run with verbose output"
	@echo "  make quick    - Run quick test (if defined)"