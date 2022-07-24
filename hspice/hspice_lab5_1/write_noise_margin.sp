**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.include 'write_noise_margin.cir'

*************************

Xwrite_noise_margin GND V1 V2 VDD write_noise_margin
*.SUBCKT write_noise_margin GND V1 V2 VDD

*************************

vvdd VDD GND 1.8

*output file : write_noise_margin_v1.lis
*vv1  V1  GND 0
*.DC vv1 0 1.8 0.0001
*.print V2 = 'V(V2)'

*output file : write_noise_margin_v2.lis
vv2  V2  GND 0
.DC vv2 0 1.8 0.0001
.print V1 = 'V(V1)'

.end
