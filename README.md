# Single_Cycle_MIPS_Processor
This repository contains the Complete implementation of the Single Cycle MIPS processor using Verilog. The processor supports R-type, I-type, and J-type instructions. The working and waveforms  has been shown with the software Scansion. The waveform focusses on the Register File and the Data Memory visualisation. 

To run:

* Download the repository / code onto your pc  manually or using git clone 
* Use a simulator such as iverilog to compile the testbench / stimulus file
* Use Scansion / GTKWave or any alternate Waveform viewer to view the dump.vcd file generated to view the waveforms.

## Existing view on the Register File:

![Register File Contents](https://github.com/geekboi777/Single_Cycle_MIPS_Processor/blob/main/img/REG_File.png)

## Instructions Used:

```VERILOG

INSTRUCTIONS USED:

AND  $3, $1, $2
OR   $4, $1, $2
NOR  $5, $1, $2
NAND $6, $1, $2
ADD  $7, $1, $2
SUB  $8, $1, $2
SLT  $9, $1, $2
SLT  $10, $2, $1
lw   $11, 0004($0)
sw   $11, 0004($0)
beq  $0, $3, start
j    80
beq  $0, $3, start

```

## Updated View of the Register File:

![Register File Updated Contents](https://github.com/geekboi777/Single_Cycle_MIPS_Processor/blob/main/img/Updated_register_contents.png)


## Waveform

![Waveform](https://github.com/geekboi777/Single_Cycle_MIPS_Processor/blob/main/img/Waveforms.png)
