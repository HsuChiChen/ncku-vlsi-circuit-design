**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

************************* circuit 1

.include 'path_delay_1.cir'
XTEST GND VDD out pulse_in path_delay_1

*.SUBCKT path_delay_1 GND VDD out pulse_in

************************* circuit 2

*.include 'path_delay_2.cir'
*XTEST GND VDD out pulse_in path_delay_2

*.SUBCKT path_delay_2 GND VDD out pulse_in

************************* circuit 3

*.include 'path_delay_3.cir'
*XTEST GND VDD out pulse_in path_delay_3

*.SUBCKT path_delay_3 GND VDD out pulse_in

************************* circuit 4
******** presim
*.include 'path_delay_4.cir'
*XTEST GND VDD out pulse_in path_delay_4

*.SUBCKT path_delay_4 GND VDD out pulse_in

******** postsim
*.include 'path_delay_4.pex.netlist'
*XTEST OUT GND PULSE_IN VDD path_delay_4

*.subckt path_delay_4  OUT GND PULSE_IN VDD

*************************

cload out gnd 1000f *output loading
VVDD VDD GND 1.8
*VCLK pulse_in GND PULSE(VL VH delay trise tfall pulse_width period)
VCLK pulse_in GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
.tran 1p 200n

*************************
.measure tran tdelay_rise trig v(pulse_in) val=0.9 td=0 rise=2 targ v(out) val=0.9 rise=2
.measure tran tdelay_fall trig v(pulse_in) val=0.9 td=0 fall=2 targ v(out) val=0.9 fall=2
.measure tran tdelay_avg param = '(tdelay_rise + tdelay_fall) / 2'

.tran 1p 200n
.end
