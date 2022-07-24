**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.param td = 100p

*************************

.include 'domino.cir'

*************************

Xdomino A B C CLK D E F GND VDD Y domino
*.SUBCKT domino A B C CLK D E F GND VDD Y

MM1 net1 Y VDD VDD p_18 W=7200n L=180.00n
MM2 net1 Y GND GND n_18 W=3600n L=180.00n
MM3 net2 net1 VDD VDD p_18 W=21600n L=180.00n
MM4 net2 net1 GND GND n_18 W=10800n L=180.00n

*************************

vvdd VDD GND 1.8
vclk CLK GND PULSE(0 1.8 100n 1n 1n 99.8n 200n)
va   A   GND 1.8
vb   B   GND 1.8
vc   C   GND 1.8
vd   D   GND 1.8
ve   E   GND 1.8
vf   F   GND PULSE(0 1.8 120n td td 70n 200n)

.tran 1p 2u
*************************

.meas tran rising_delay
+trig v(F)  val=0.9 td=td rise=5
+targ v(Y) val=0.9 td=td rise=5

.end
