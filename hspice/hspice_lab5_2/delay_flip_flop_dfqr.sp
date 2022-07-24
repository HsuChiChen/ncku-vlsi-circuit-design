**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post
.param td = 0

*************************

.include 'delay_flip_flop.cir'

*************************

*.SUBCKT delay_flip_flop CLK CLK_b D GND Q VDD
X1  CLK CLK_b D GND Q      VDD delay_flip_flop
X2  CLK CLK_b Q GND output VDD delay_flip_flop m = 4

.ic V(X1.Q) = 0

*************************

vvdd VDD GND 1.8
vclk    CLK    GND PULSE(0 1.8  '10n+80p' 80p 80p '10n-160p' 20n) *align clk with clk_b in different pulse width
vclk_b  CLK_b  GND PULSE(0 1.8   0n 80p 80p 10n 20n)
vD      D      GND PWL(
+ 0      1.8V
+ 'td'   1.8V
+ 'td+80p' 0V
)

.meas tran tdc trig v(D)   val=0.9 fall=1 targ v(CLK) val=0.9 rise=1
.meas tran tcq trig v(CLK) val=0.9 rise=1 targ v(Q)   val=0.9 rise=1

*.tran 1p 30ns
.tran 1p 15ns sweep td 9.5n 10.5n 1p

.end
