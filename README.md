# SiliconScope

SiliconScope is an ongoing digital hardware design and verification project focused on understanding, testing, and analysing digital systems at the Register Transfer Level (RTL).

The project uses a RISC-V processor as its initial hardware platform. Alongside processor development, I aim to build a fault-injection and diagnostic framework to study how hardware behaves under different fault conditions and how those faults can be detected and analysed.

## Objectives

- Design and simulate digital hardware components using SystemVerilog.
- Develop a basic RISC-V processor, starting with its fundamental building blocks.
- Create testbenches to verify expected hardware behaviour.
- Introduce controlled faults into simulated hardware.
- Compare expected and observed outputs to identify functional mismatches.
- Develop methods to classify and analyse detected faults.

## Project Structure

```text
SiliconScope/
├── rtl/       # Hardware design files
├── tb/        # Testbenches
└── sim/       # Simulation outputs and waveforms
```

## Tools and Technologies

- SystemVerilog
- Icarus Verilog
- Surfer Waveform Viewer
- Visual Studio Code
- Git and GitHub

## Current Progress

The project is currently in its foundational development stage.

Completed:
- 32-bit 2-to-1 multiplexer
- Basic logic gate implementation
- Initial Arithmetic Logic Unit (ALU) design
- Exploration of signed and unsigned arithmetic
- Initial simulation and waveform inspection

In progress:
- ALU verification and testing
- Development of the processor's remaining components
- Integration of individual components into a working processor

## Future Work

- Complete the initial RISC-V processor implementation.
- Develop systematic test cases for processor verification.
- Introduce fault models and controlled fault injection.
- Build a diagnostic mechanism to detect and analyse faulty behaviour.
- Explore test coverage and fault classification.

## About

SiliconScope is a personal hardware engineering project developed to strengthen my understanding of digital design, computer architecture, and hardware verification.

The implementation and documentation will evolve as the project progresses.

## Licence

This project is licensed under the MIT Licence. See the `LICENSE` file for details.
