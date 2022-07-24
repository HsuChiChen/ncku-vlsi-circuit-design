**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.param td = 100p

*************************

*.include 'charge_sharing.cir'
.include 'charge_sharing_re.cir'

*************************

Xcharge_sharing A B C CLK D GND VDD Y charge_sharing

*.SUBCKT charge_sharing A B C CLK D GND VDD Y

*************************

vvdd VDD GND 1.8
vclk CLK GND PULSE(0 1.8 100n 1n 1n 99.8n 200n)
va     A GND PULSE(0 1.8 120n td td 70n 200n)
vb     B GND PULSE(0 1.8 120n td td 70n 200n)
vc     C GND PULSE(0 1.8 120n td td 70n 200n)
vd     D GND PULSE(0 1.8 170n td td 20n 200n)

.tran 1p 2u
*************************

.probe v(Y)

.end
