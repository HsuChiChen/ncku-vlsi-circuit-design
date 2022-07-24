* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT multiplexer D0 VDD GND Y D1 S
** N=7 EP=6 IP=0 FDC=6
M0 Y 7 D0 GND N_18 L=1.8e-07 W=1e-06 AD=2.9e-13 AS=5.25e-13 PD=5.8e-07 PS=2.05e-06 $X=4985 $Y=1970 $D=0
M1 D1 S Y GND N_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=2.9e-13 PD=1.98e-06 PS=5.8e-07 $X=5745 $Y=1970 $D=0
M2 7 S GND GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=9130 $Y=3510 $D=0
M3 Y 7 D1 VDD P_18 L=1.8e-07 W=1e-06 AD=2.9e-13 AS=5.15e-13 PD=5.8e-07 PS=2.03e-06 $X=4985 $Y=35 $D=1
M4 D0 S Y VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=2.9e-13 PD=1.98e-06 PS=5.8e-07 $X=5745 $Y=35 $D=1
M5 7 S VDD VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=9130 $Y=905 $D=1
.ENDS
***************************************
