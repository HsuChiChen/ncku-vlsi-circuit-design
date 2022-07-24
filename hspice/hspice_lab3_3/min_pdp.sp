**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************
.param run_time = 2u
.param td = 0.1n

*************************

.include 'min_pdp.cir'

*************************

Xmin_pdp A B GND VDD vout min_pdp

*.SUBCKT min_pdp A B GND VDD vout

cload vout GND 500f
*************************

vvdd VDD GND 1.8
vb   B   GND 1.8
va A GND PULSE(0 1.8 0.1n 1n 1n 99.9n 200n)

.tran 1p 2u sweep size 0.25u 20u 10n
*************************

.meas tran rising_delay
+trig v(A)  val=0.9 td=td rise=5
+targ v(vout) val=0.9 td=td rise=5
.meas tran falling_delay
+trig v(A)  val=0.9 td=td fall=5
+targ v(vout) val=0.9 td=td fall=5
.meas tran delay_avg
+param = '(rising_delay + falling_delay) / 2'
.meas tran power
+avg p(vvdd) from=td to=run_time
.meas tran pdp
+param = 'abs(delay_avg * power)'

.end
