**testbench**
.protect
.lib cic018.l tt
.unprotect
.option post

*************************

.param clock_rate = 1Meg
.param clk_period = '1/clock_rate'
*.param td = 100p
.param td = 100000p

*************************

.include 'inv_2.cir'

*************************

XTEST vin GND VDD vout inv_2

*.SUBCKT inv_2 vin GND VDD vout

cload vout GND 100f
*************************

vvdd VDD GND 1.8V
vvin vin GND pwl(
+ 0 0V
+ '  clk_period - td/2' 0V
+ '  clk_period + td/2' 1.8V
+ '2*clk_period - td/2' 1.8V
+ '2*clk_period + td/2' 0V
+ '4*clk_period - td/2' 0V
+ '4*clk_period + td/2' 1.8V
+ '8*clk_period - td/2' 1.8V
+ '8*clk_period + td/2' 0V
+ '10*clk_period' 0V
)

.tran 1p '10*clk_period'
.MEAS power_avg AVG power

.end
