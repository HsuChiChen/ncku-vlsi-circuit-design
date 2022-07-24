**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.global GND
+ VDD

*************************

.include 'd_flip_flop.cir'

*************************

XTEST CLK D GND Q VDD d_flip_flop

*.SUBCKT d_flip_flop CLK D GND Q VDD

*************************

VVDD VDD GND DC = 1.8
VVIN D GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VCLK CLK GND PULSE(0 1.8 20n 100p 100p 29.8n 60n)

*************************

.tran 1p 200n

.end
