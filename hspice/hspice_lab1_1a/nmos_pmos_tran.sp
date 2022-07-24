**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.global GND
+ VDD

*************************

.include 'nmos_pmos_tran.cir'

*************************

XTEST CLK GND VDD Vin Vout Vout_n Vout_p nmos_pmos_tran

*.SUBCKT nmos_pmos_tran CLK GND VDD Vin Vout Vout_n Vout_p

*************************

VVDD VDD GND DC = 1.8
VVIN Vin GND PULSE(0 1.8 10n 100p 100p 39.8n 80n)
VCLK CLK GND PULSE(0 1.8 20n 100p 100p 39.8n 80n)

*************************

cload1 vout_n GND 0.1p
cload2 vout_p GND 0.1p
cload3 vout GND 0.1p

*************************

.tran 1p 200n

.end
