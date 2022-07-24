**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.param td = 100p

*************************

*.include 'pseudo_nmos.cir'
.include 'pseudo_nmos.pex.netlist'

*************************

*Xpseudo_nmos A B C D E F GND VDD Y pseudo_nmos
*.SUBCKT pseudo_nmos A B C D E F GND VDD Y
Xpseudo_nmos B A D C F E VDD GND Y pseudo_nmos
*.subckt pseudo_nmos  B A D C F E VDD GND Y

MM1 net1 Y VDD VDD p_18 W=7200n L=180.00n
MM2 net1 Y GND GND n_18 W=3600n L=180.00n
MM3 net2 net1 VDD VDD p_18 W=21600n L=180.00n
MM4 net2 net1 GND GND n_18 W=10800n L=180.00n

*************************

vvdd VDD GND 1.8
va   A   GND 1.8
vb   B   GND 1.8
vc   C   GND 1.8
vd   D   GND 1.8
ve   E   GND 1.8
vf   F   GND PULSE(0 1.8 120n td td 70n 200n)

.tran 1p 2u
*sweep1 .tran 1p 2u sweep size 0.25u 10u 10n

*************************

.meas tran rising_delay
+trig v(F)  val=0.9 td=td rise=5
+targ v(Y) val=0.9 td=td rise=5
.meas tran falling_delay
+trig v(F)  val=0.9 td=td fall=5
+targ v(Y) val=0.9 td=td fall=5
.meas tran delay_avg
+param = '(rising_delay + falling_delay) / 2'

.end
