**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

*************************

.include 'oai14.pex.netlist'

*************************

XTEST A Y B C D VDD GND E oai14

*.subckt oai14  A Y B C D VDD GND E

*************************

VVDD VDD GND 1.8
*VCLK pulse_in GND PULSE(VL VH delay trise tfall pulse_width period)

************************ pattern1 rising

*VA A GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
*VB B GND 1.8
*VC C GND 1.8
*VD D GND 1.8
*VE E GND 1.8
*.measure tran tdelay_rise trig v(A) val=0.9 td=0 fall=2 targ v(Y) val=0.9 rise=2

************************ pattern2 falling

*VA A GND 1.8
*VB B GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
*VC C GND 0
*VD D GND 0
*VE E GND 0
*.measure tran tdelay_fall trig v(B) val=0.9 td=0 rise=2 targ v(Y) val=0.9 fall=2

************************ pattern3 rising

*VA A GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
*VB B GND 0
*VC C GND 0
*VD D GND 0
*VE E GND 1.8
*.measure tran tdelay_rise trig v(A) val=0.9 td=0 fall=2 targ v(Y) val=0.9 rise=2

************************ pattern4 falling

*VA A GND 1.8
*VB B GND 0
*VC C GND 0
*VD D GND 0
*VE E GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
*.measure tran tdelay_fall trig v(E) val=0.9 td=0 rise=2 targ v(Y) val=0.9 fall=2

************************ pattern5 rising

*VA A GND 1.8
*VB B GND 0
*VC C GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
*VD D GND 0
*VE E GND 0
*.measure tran tdelay_rise trig v(C) val=0.9 td=0 fall=2 targ v(Y) val=0.9 rise=2

************************ pattern6 falling

VA A GND PULSE(0V 1.8V 9.8n 0.2n 0.2n 9.8n 20n)
VB B GND 0
VC C GND 0
VD D GND 1.8
VE E GND 1.8
.measure tran tdelay_fall trig v(A) val=0.9 td=0 rise=2 targ v(Y) val=0.9 fall=2

*************************

.tran 1p 200n
.end
