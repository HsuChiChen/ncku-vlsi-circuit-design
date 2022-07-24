**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

*************************

.include 'fun2.cir'

*************************

XTEST A B C D GND VDD Y fun2

*.SUBCKT fun2 A B C D GND VDD Y

*************************

VVDD VDD GND DC = 1.8
VA A GND PULSE(0 1.8 10n 100p 100p 79.8n 160n)
VB B GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VC C GND PULSE(0 1.8 10n 100p 100p 19.8n 40n)
VD D GND PULSE(0 1.8 10n 100p 100p 9.8n 20n)

*************************

.tran 1p 200n

.end
