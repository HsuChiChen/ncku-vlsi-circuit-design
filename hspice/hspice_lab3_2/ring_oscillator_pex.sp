**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************


*************************

.include 'ring_oscillator.pex.netlist'

*************************

Xring_oscillator vin GND VDD ring_oscillator

*.subckt ring_oscillator  VIN GND VDD

*************************

vvdd VDD GND 1.8
.ic V(vin) = 1.8

.tran 1p 50ns uic
.MEAS tran period trig v(vin) val=0.9 fall=10 targ v(vin) val=0.9 fall=11
.MEAS tran frequency param = '1/period'
.MEAS tran t_on trig v(vin) val=0.9 rise=10 targ v(vin) val=0.9 fall=11
.MEAS tran duty_cycle param = 't_on/period'

.end
