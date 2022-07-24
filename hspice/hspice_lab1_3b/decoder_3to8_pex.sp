**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

*************************

.include 'decoder_3to8.pex.netlist'

*************************

XTEST W2 W1 W0 EN Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0 GND VDD decoder_3to8

*.subckt decoder_3to8  W2 W1 W0 EN Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0 GND VDD

*************************

VVDD VDD GND DC = 1.8
VEN EN GND PULSE(0 1.8 10n 100p 100p 79.8n 160n)
VW2 W2 GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VW1 W1 GND PULSE(0 1.8 10n 100p 100p 19.8n 40n)
VW0 W0 GND PULSE(0 1.8 10n 100p 100p 9.8n 20n)

*************************

.tran 1p 200n

.end
