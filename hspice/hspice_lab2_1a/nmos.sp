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

.include 'nmos.cir'

*************************

XTEST GND D G nmos

*.SUBCKT nmos GND D G

*************************

VG G GND VGV
VD D GND VDV
*.DC VDV 0 1.8 0.1 sweep VGV 0 1.8 0.1 *y-axis - vds
.DC VGV 0 1.8 0.1 sweep VDV 0 1.8 0.1  *y-axis - vgs

.probe i(MM0) vds(MM0) vgs(MM0)

*************************

.end
