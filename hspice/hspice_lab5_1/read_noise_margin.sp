**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.include 'read_noise_margin.cir'

*************************

Xread_noise_margin GND V1 V2 VDD read_noise_margin
*.SUBCKT read_noise_margin GND V1 V2 VDD

*************************

vvdd VDD GND 1.8
vv1  V1  GND 0

.DC vv1 0 1.8 0.0001
.print V2 = 'V(V2)'

.end
