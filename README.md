-----------------------------------------------------------------------
Serial Adder Finite State Machine (FSM)
-----------------------------------------------------------------------

Serial Adder FSM is a digital circuit that perform binary addition bit-by-bit.

-----------------------------------------------------------------------
Acknowledgement
-----------------------------------------------------------------------

This project is created as a requirement to complete assignment 3 for subject 
Digital Design (SEM 5) at Universiti Tun Hussein Onn Malaysia (UTHM). 
Thanks to Muhammad Iman Bin Zainudin, @imnzainudin, for completing and sharing this project files.

-----------------------------------------------------------------------
Usage Tips
-----------------------------------------------------------------------

This project consisting a single Verilog-HDL (.v) file which comprises a Serial Adder
and a Shift Register. To start making your own Serial Adder FSM, please saperate
Serial Adder and the Shift Register into two saperate modules by using module function.

The final state of the serial adder can be written in a new file which will be use to call
a Serial Adder module and three Shift Register modules as in the full machine diagram: https://www.electronics-tutorial.net/finite-state-machines/FSM-Applications/Serial-Adder/Fig1-Serial-Adder.png

Therefore, there will be three files, Serial Adder module, Shift Register module and Final Serial FSM
respectively.

-----------------------------------------------------------------------
Installation
-----------------------------------------------------------------------

This module is tested on Visual Studio Code (VS Code) Windows 10 using 
Verilog-HDL/SystemVerilog/Bluespec SystemVerilog extension from the marketplace.


The verilog code then was tested on Quartus Altera II for simulation purpose including 
generating waveform.
