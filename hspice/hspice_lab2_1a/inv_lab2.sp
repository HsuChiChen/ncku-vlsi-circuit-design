**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

*************************

.include 'inv_lab2.cir'

*************************

XTEST GND VDD in out inv_lab2

*.SUBCKT inv_lab2 GND VDD in out

*************************

VVDD VDD GND 1.8
VIN in GND 0                 *intializtion
.DC VIN 0 1.8 0.01
.meas DC Vth FIND V(out) WHEN V(out) = V(in)

*************************

.end
