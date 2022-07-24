**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

*************************

.include 'decoder_2to4.cir'

*************************

XTEST EN GND VDD W0 W1 Y0 Y1 Y2 Y3 decoder_2to4

*.SUBCKT decoder_2to4 EN GND VDD W0 W1 Y0 Y1 Y2 Y3

*************************

VVDD VDD GND DC = 1.8
VEN EN GND PULSE(0 1.8 10n 100p 100p 79.8n 160n)
VW1 W1 GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VW0 W0 GND PULSE(0 1.8 10n 100p 100p 19.8n 40n)

*************************

.tran 1p 200n

.end
