# ⚡ Digital Logic Design & Computer Architecture Lab (Verilog HDL)

[![HDL: Verilog](https://img.shields.io/badge/Language-Verilog%20HDL-blue.svg)]()
[![EDA: Xilinx Vivado](https://img.shields.io/badge/EDA-Xilinx%20Vivado-red.svg)](https://www.xilinx.com/products/design-tools/vivado.html)
[![Simulation: Icarus Verilog](https://img.shields.io/badge/Simulation-Icarus%20Verilog-green.svg)](http://iverilog.icarus.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A structured laboratory suite of hardware description modules implemented in **Verilog HDL**, encompassing combinational logic, data-routing multiplexers, synchronous modulo counters, Finite State Machines (FSM), and universal gate logic realization. Each experiment contains synthesizeable register-transfer level (RTL) code alongside dedicated self-checking testbenches.

---

## 📁 Repository Hierarchy

```
Verilog-Digital-Design-Lab/
├── 01_Half_Adder/               # 1-bit combinational adder (Sum, Carry)
│   ├── half_adder.v             # Gate-level RTL module
│   └── tb_half_adder.v          # Verification testbench
├── 02_Multiplexer_8to1/         # 8:1 Multiplexer with 3-bit select bus
│   ├── mux_8to1.v               # Structural gate-level MUX RTL
│   └── tb_mux_8to1.v            # Complete truth table stimulus testbench
├── 03_Counter_Mod6/             # Synchronous Modulo-6 Up-Counter (0-5)
│   ├── counter_mod6.v           # Clocked behavioral counter RTL
│   └── tb_counter_mod6.v        # Clock generator & reset testbench
├── 04_Sequence_Detector_FSM/    # Finite State Machine bitstream detector
│   ├── seq_det.v                # FSM state register & next-state logic
│   └── tb_seq_det.v             # Serial input stream testbench
├── 05_Universal_NAND_SOP/       # Sum of Products using universal NAND logic
│   ├── sop.v                    # De Morgan minimized SOP RTL
│   └── tb_sop.v                 # Exhaustive input verification testbench
├── .gitignore                   # Ignore Vivado temporary synthesis & sim files
└── README.md                    # Hardware suite documentation
```

---

## 🛠️ Circuit Specifications

### 1. 01_Half_Adder
* **Inputs:** `a`, `b` (1-bit)
* **Outputs:** `sum = a ^ b`, `carry = a & b`
* **Implementation:** Gate-level primitives (`xor`, `and`).

### 2. 02_Multiplexer_8to1
* **Data Inputs:** `I0` through `I7` (8 parallel data lines)
* **Select Lines:** `S2`, `S1`, `S0` (3 control inputs)
* **Output:** $F = \sum_{k=0}^{7} I_k \cdot m_k(S_2, S_1, S_0)$
* **Implementation:** Structural NOT, AND, and multi-input OR gate network.

### 3. 03_Counter_Mod6
* **Function:** Counts sequentially $000_2 \to 001_2 \to 010_2 \to 011_2 \to 100_2 \to 101_2 \to 000_2$.
* **Controls:** Active-high synchronous reset `reset` and positive-edge clock `clk`.
* **Bit Width:** 3-bit output register `dout[2:0]`.

### 4. 04_Sequence_Detector_FSM
* **Function:** Serial bitstream pattern recognizer.
* **Architecture:** 2-bit state register (`state[1:0]`) evaluating inputs on `posedge clk`.
* **Output:** `Dout = 1` upon recognizing the target sequence `111`.

### 5. 05_Universal_NAND_SOP
* **Boolean Realization:** Converts multi-term AND-OR expressions into equivalent inverted NAND representations via De Morgan's Laws.
* **Gate Architecture:** Built strictly from 2-input NAND primitives.

---

## 💻 Simulation & Verification

### Using Open-Source Icarus Verilog (`iverilog`) & GTKWave
You can simulate any module without proprietary tools:

```bash
# 1. Compile module and testbench
iverilog -o sim_counter 03_Counter_Mod6/counter_mod6.v 03_Counter_Mod6/tb_counter_mod6.v

# 2. Execute simulation
vvp sim_counter

# 3. View waveforms (if VCD dumping is enabled)
gtkwave dump.vcd
```

### Using Xilinx Vivado
1. Create a new Vivado project (`RTL Project`).
2. Add the design source `.v` from the respective experiment directory.
3. Add the simulation source `tb_*.v`.
4. Click **Run Simulation -> Run Behavioral Simulation**.
