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

.include 'nor_3.cir'

*************************

Xnor_a pulse_in GND GND GND VDD wire1 nor_3
Xnor_b wire1 GND GND GND VDD in nor_3 m='h'
Xnor_c in GND GND GND VDD out nor_3 m='h^2'
Xnor_d out GND GND GND VDD wire2 nor_3 m='h^3'
Xnor_e wire2 GND GND GND VDD pulse_out nor_3 m='h^4'

*.SUBCKT nor_3 A B C GND VDD Y

*************************

VVDD VDD GND 1.8
*VCLK pulse_in GND PULSE(VL VH delay trise tfall pulse_width period)
VCLK pulse_in GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
.tran 1p 200n

*************************
.measure tran tdelay_rise trig v(in) val=0.9 td=0 fall=2 targ v(out) val=0.9 rise=2
.measure tran tdelay_fall trig v(in) val=0.9 td=0 rise=2 targ v(out) val=0.9 fall=2
.measure tran tdelay_avg param = '(tdelay_rise + tdelay_fall) / 2'

.end
