**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.global GND
+ VDD

*************************

.include 'inv.pex.netlist'

*************************

XTEST IN GND VDD OUT inv

*.subckt inv  IN GND VDD OUT

*************************

VVDD VDD GND DC = 1.8
VVIN IN GND PULSE(0 1.8 1n 100p 100p 20n 40n)

*************************

.tran 1p 200n

.end
