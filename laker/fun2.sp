* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT fun2 Y A B C GND VDD D
** N=10 EP=7 IP=0 FDC=8
M0 10 A 7 GND N_18 L=1.8e-07 W=5e-07 AD=1.275e-13 AS=2.45e-13 PD=5.1e-07 PS=1.48e-06 $X=-130 $Y=-1900 $D=0
M1 GND B 10 GND N_18 L=1.8e-07 W=5e-07 AD=1.35e-13 AS=1.275e-13 PD=5.4e-07 PS=5.1e-07 $X=560 $Y=-1900 $D=0
M2 7 C GND GND N_18 L=1.8e-07 W=5e-07 AD=1.275e-13 AS=1.35e-13 PD=5.1e-07 PS=5.4e-07 $X=1280 $Y=-1900 $D=0
M3 Y D 7 GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=1.275e-13 PD=1.48e-06 PS=5.1e-07 $X=1970 $Y=-1900 $D=0
M4 Y A 5 VDD P_18 L=1.8e-07 W=1e-06 AD=2.55e-13 AS=4.9e-13 PD=5.1e-07 PS=1.98e-06 $X=-130 $Y=320 $D=1
M5 5 B Y VDD P_18 L=1.8e-07 W=1e-06 AD=2.7e-13 AS=2.55e-13 PD=5.4e-07 PS=5.1e-07 $X=560 $Y=320 $D=1
M6 VDD C 5 VDD P_18 L=1.8e-07 W=1e-06 AD=2.55e-13 AS=2.7e-13 PD=5.1e-07 PS=5.4e-07 $X=1280 $Y=320 $D=1
M7 Y D VDD VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=2.55e-13 PD=1.98e-06 PS=5.1e-07 $X=1970 $Y=320 $D=1
.ENDS
***************************************
