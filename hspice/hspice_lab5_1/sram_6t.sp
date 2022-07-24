**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.param td = 100p

*************************

.include 'sram_6t.cir'

*************************

Xsram_6t CLK GND Q Q_b RE VDD WE bit bit_b data word sram_6t
*.SUBCKT sram_6t CLK GND Q Q_b RE VDD WE bit bit_b data word

*************************
* .ic V(Xsram_6t.Q) = 0
.ic V(Xsram_6t.Q) = 1.8

vvdd  VDD  GND 1.8
*vclk  CLK  GND PULSE(0 1.8 100n 1n 1n 200n 400n)
vclk  CLK  GND PWL(0n 1.8V 100n 1.8V 101n 0V 200n 0V 201n 1.8V 300n 1.8V 301n 0V 400n 0V 401n 1.8V 500n 1.8V)
vdata data GND 0 *0 or 1.8
vre   RE   GND 0   *0 or 1.8
vwe   WE   GND 1.8 *0 or 1.8


*.tran 1p 2u
.tran 1p 500n

.end
