**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.global GND
+ VDD

*************************

.include 'multiplexer.cir'

*************************

XTEST D0 D1 GND S VDD Y multiplexer

*.SUBCKT multiplexer D0 D1 GND S VDD Y

*************************

VVDD VDD GND DC = 1.8
VD1 D1 GND PULSE(0 1.8 10n 100p 100p 79.8n 160n)
VD0 D0 GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VS S GND PULSE(0 1.8 20n 100p 100p 19.8n 40n)

*************************

.tran 1p 200n

.end
