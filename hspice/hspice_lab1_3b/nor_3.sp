**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

*************************

.include 'nor_3.cir'

*************************

XTEST A B C GND VDD Y nor_3

*.SUBCKT nor_3 A B C GND VDD Y

*************************

VVDD VDD GND DC = 1.8
VA A GND PULSE(0 1.8 10n 100p 100p 79.8n 160n)
VB B GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VC C GND PULSE(0 1.8 10n 100p 100p 19.8n 40n)

*************************

.tran 1p 200n

.end
