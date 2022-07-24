**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************


*************************

.include 'vco.cir'

*************************

Xvco1 vin  GND VDD net1 vctrl vctrl_b vco
Xvco2 net1 GND VDD net2 vctrl vctrl_b vco
Xvco3 net2 GND VDD net3 vctrl vctrl_b vco
Xvco4 net3 GND VDD net4 vctrl vctrl_b vco
Xvco5 net4 GND VDD vin  vctrl vctrl_b vco

*.SUBCKT vco vin GND VDD vout vctrl vctrl_b


*************************

vvdd VDD GND 1.8V
vvctrl   vctrl   GND 0.9V
vvctrl_b vctrl_b GND '1.8-0.9'
.ic V(Xvco1.vin) = 1.8V

.tran 1p 50ns uic
.MEAS tran period trig v(vin) val=0.9 fall=10 targ v(vin) val=0.9 fall=11
.MEAS tran frequency param = '1/period'
.MEAS tran t_on trig v(vin) val=0.9 rise=10 targ v(vin) val=0.9 fall=11
.MEAS tran duty_cycle param = 't_on/period'

.end
