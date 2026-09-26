# Digital System Design

This repository contains three Digital System Design course assignments written in Verilog. The top-level folders use clear assignment names, while the original project contents inside each assignment are preserved.

The inspected files show Verilog/SystemVerilog-style HDL, ModelSim waveform screenshots, ModelSim Tcl scripts, and generated simulation artifacts. No Vivado project files (`.xpr`), constraint files (`.xdc`), or Vivado project directories were found in this checkout.

## Assignments

| Assignment | Topic from files | Tool evidence | Directory |
| --- | --- | --- | --- |
| Assignment 02 | Moore finite-state sequence detector for ASCII input streams | Verilog source/testbench and ModelSim waveform screenshot | [Assignment-02](Assignment-02/) |
| Assignment 03 | DES core and Triple DES modes for 256-bit test vectors | Verilog testbench with ECB, CBC, and OFB vectors; waveform/result screenshots | [Assignment-03](Assignment-03/) |
| Assignment 04 | Triple DES single-cycle, multi-cycle, and pipelined implementations | Verilog testbenches, ModelSim Tcl scripts, waveform screenshots, VCD/WLF outputs | [Assignment-04](Assignment-04/) |

## Repository Layout

The top-level assignment folders are named consistently for GitHub. Existing nested project folders, source files, testbenches, scripts, and generated outputs remain in their original locations inside each assignment.

```text
Digital-System-Design/
|-- README.md
|-- .gitignore
|-- Assignment-02/
|-- Assignment-03/
`-- Assignment-04/
```

## Opening the Projects

Open each assignment directory independently and keep the original relative layout intact. For ModelSim-based work, open the assignment folder as the working directory before running any provided Tcl script or compiling HDL files manually.

Assignment 04 includes ModelSim scripts for its implementation variants:

- `run_single.tcl`
- `run_multi.tct` (kept with its original extension)
- `run_pipeline.tcl`

Assignment 03 currently references DES helper files such as `E.v`, `S1.v`, `IP.v`, and `PC1.v` from `main.v`, but those files are not present in the Assignment 03 folder in this checkout. See the assignment README before attempting to compile it.
