**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post
.param h = 7

*************************

*.global GND
*+ VDD

*************************

.include 'inv.cir'

*************************

Xinv_a GND VDD pulse_in wire1 inv
Xinv_b GND VDD wire1 in inv m='h'
Xinv_c GND VDD in out inv m='h^2'
Xinv_d GND VDD out wire2 inv m='h^3'
Xinv_e GND VDD wire2 pulse_out inv m='h^4'

*.SUBCKT inv GND VDD in out

*************************

VVDD VDD GND 1.8
*VCLK pulse_in GND PULSE(VL VH delay trise tfall pulse_width period)
VCLK pulse_in GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
.tran 1p 200n

*************************
.measure tran tdelay_rise trig v(in) val=0.9 td=0 fall=2 targ v(out) val=0.9 rise=2
.measure tran tdelay_fall trig v(in) val=0.9 td=0 rise=2 targ v(out) val=0.9 fall=2
.measure tran tdelay_avg param = '(tdelay_rise + tdelay_fall) / 2'
.tran 1p 200n
.end
