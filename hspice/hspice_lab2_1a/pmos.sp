**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

*.global GND
*+ VDD

.param VGV = 0
+ VDV = 0

*************************

.include 'pmos.cir'

*************************

XTEST VDD G D pmos

*.SUBCKT pmos VDD G D

*************************

v1 VDD 0 DC 1.8
VG VDD G VGV
VD VDD D VDV
*.DC VDV 0 1.8 0.1 sweep VGV 0 1.8 0.1 *y-axis - vds
.DC VGV 0 1.8 0.1 sweep VDV 0 1.8 0.1  *y-axis - vgs

.probe i(MM0) vds(MM0) vgs(MM0)

*************************

.end
