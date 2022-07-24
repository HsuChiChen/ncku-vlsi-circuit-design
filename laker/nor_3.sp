* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT nor_3 C B A Y GND VDD
** N=8 EP=6 IP=0 FDC=6
M0 GND C Y GND N_18 L=1.8e-07 W=5e-07 AD=1.35e-13 AS=2.45e-13 PD=5.4e-07 PS=1.48e-06 $X=665 $Y=-440 $D=0
M1 Y B GND GND N_18 L=1.8e-07 W=5e-07 AD=1.275e-13 AS=1.35e-13 PD=5.1e-07 PS=5.4e-07 $X=1385 $Y=-440 $D=0
M2 GND A Y GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=1.275e-13 PD=1.48e-06 PS=5.1e-07 $X=2075 $Y=-440 $D=0
M3 7 C Y VDD P_18 L=1.8e-07 W=1e-06 AD=2.7e-13 AS=4.9e-13 PD=5.4e-07 PS=1.98e-06 $X=665 $Y=1195 $D=1
M4 8 B 7 VDD P_18 L=1.8e-07 W=1e-06 AD=2.55e-13 AS=2.7e-13 PD=5.1e-07 PS=5.4e-07 $X=1385 $Y=1195 $D=1
M5 VDD A 8 VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=2.55e-13 PD=1.98e-06 PS=5.1e-07 $X=2075 $Y=1195 $D=1
.ENDS
***************************************
