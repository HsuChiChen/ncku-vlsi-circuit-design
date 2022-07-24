* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT inv in GND VDD out
** N=4 EP=4 IP=0 FDC=2
M0 out in GND GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=4250 $Y=-4235 $D=0
M1 out in VDD VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=4250 $Y=-2130 $D=1
.ENDS
***************************************
