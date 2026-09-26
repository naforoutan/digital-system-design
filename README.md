# Digital System Design

This repository contains Digital System Design course assignments and a final project. The top-level folders use clear names, while the original project contents inside each assignment or project are preserved.

The inspected files include Verilog/SystemVerilog-style HDL, ModelSim waveform screenshots, ModelSim Tcl scripts, Icarus Verilog helpers, Xilinx Vivado projects, Xilinx SDK software, and generated simulation/build artifacts.

## Assignments

| Assignment | Topic from files | Tool evidence | Directory |
| --- | --- | --- | --- |
| Assignment 02 | Moore finite-state sequence detector for ASCII input streams | Verilog source/testbench and ModelSim waveform screenshot | [Assignment-02](Assignment-02/) |
| Assignment 03 | DES core and Triple DES modes for 256-bit test vectors | Verilog testbench with ECB, CBC, and OFB vectors; waveform/result screenshots | [Assignment-03](Assignment-03/) |
| Assignment 04 | Triple DES single-cycle, multi-cycle, and pipelined implementations | Verilog testbenches, ModelSim Tcl scripts, waveform screenshots, VCD/WLF outputs | [Assignment-04](Assignment-04/) |
| Assignment 05 | Montgomery modular exponentiation hardware | Verilog modules, Icarus Verilog/Makefile flow, ModelSim Tcl script, waveform/result screenshots | [Assignment-05](Assignment-05/) |
| Assignment 06 | TEA encryption on a Vivado/Zynq AXI project | Vivado project, TEA HDL, Xilinx SDK screenshot | [Assignment-06](Assignment-06/) |
| Final Project | AXI4-Lite CNN/convolution project for RemoteFPGA | Vivado projects, custom AXI IP, SDK software, build Tcl, RealTerm output screenshot | [Final-Project](Final-Project/) |

## Repository Layout

The top-level assignment folders are named consistently for GitHub. Existing nested project folders, source files, testbenches, scripts, and generated outputs remain in their original locations inside each assignment.

```text
Digital-System-Design/
|-- README.md
|-- .gitignore
|-- Assignment-02/
|-- Assignment-03/
|-- Assignment-04/
|-- Assignment-05/
|-- Assignment-06/
`-- Final-Project/
```

## Opening the Projects

Open each assignment directory independently and keep the original relative layout intact. For ModelSim-based work, open the assignment folder as the working directory before running any provided Tcl script or compiling HDL files manually.

Assignment 04 includes ModelSim scripts for its implementation variants:

- `run_single.tcl`
- `run_multi.tct` (kept with its original extension)
- `run_pipeline.tcl`

Assignment 05 includes both a ModelSim script (`run.tcl`) and Icarus Verilog helpers (`Makefile` and `run.sh`) inside its `dsd/` project folder.

Assignment 06 and the final project are Vivado/Xilinx SDK projects. Open their `.xpr` files with a compatible Vivado version and keep the original nested project folders in place because the project files include relative IP, block design, SDK, and constraint references.

Assignment 03 currently references DES helper files such as `E.v`, `S1.v`, `IP.v`, and `PC1.v` from `main.v`, but those files are not present in the Assignment 03 folder in this checkout. See the assignment README before attempting to compile it.
