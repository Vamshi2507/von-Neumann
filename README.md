# von-Neumann
---

John von-Neumann was a founding figure in computing. He made significant contributions to the fields of computing hardware design, theoretical computer science, and the philosophy of computer science. During his time as a member of the Scientific Advisory Committee , he consulted for the US Army's Ballistic Research Laboratory on the revolutionary ENIAC and EDVAC projects. The inputs he picked up from his time there served as a precursor to the invention of the Von-Neumann Architecture. 

This project aims to create an 8-bit micro computer that emulates the Von-Neumann architecture. 

## Code Overview
This computer is based on the Von Neumann architechture. Verilog source codes are used to simulate the 8-bit computer and also the testbench file. The modules required for the computer are defined separately and then combined and interfaced in a common module named CPU.v. It also contains a testbench file named CPU_tb.v which is used to simulate the behaviour of the computer.

The Assembly language compiler is in the form of a python script as well as a demo.asm file which is essentially a 16 byte executable assembly code.

## Using The Assembler

In order to use the assembler, use the syntax mentioned below:

```shell
$ python assembler.py <input_filename_with_extension>
```

And press Enter.

Now the RAM.v module in the VerilogModules folder will be updated with the new set of instructions.
No need to copy paste anything into the RAM module.

Then, use the following commands:

```shell
$ iverilog CPU_tb.v
$ vvp a.out
$ gtkwave dump.vcd
```

The above commands run the GTKWave program which will display the output of the 8-bit Computer.
