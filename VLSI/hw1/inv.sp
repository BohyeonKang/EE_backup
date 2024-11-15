* Inverter example source code

*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM	bitrate=2G
	+freq='bitrate/2'
	+per='1/freq'
	+td=0
	+tr='per*0.1'
	+tf='per*0.1'
	+pw='per*0.4'

Vin	in	0	pulse(0 3.3 td tr tf pw per )
*************************************************************************

************* Define the Vdd and Vss voltage level***********************
Vdd	vdd	0	DC	3.3v
*************************************************************************

************* Your Circuits *********************************************
X1	in	out	vdd	0	inv
*************************************************************************

************* Subcircuits ***********************************************
.subckt	inv	in	out	vdd	gnd
Mp1	out	in	vdd	vdd	PMOS	l=0.5u	w=20u

Mn1	out	in	gnd	gnd	NMOS	l=0.5u	w=10u
.ends
*************************************************************************

************* Define the resoltion and simulation time ******************
.tran 1p 1.5n
*************************************************************************

************* Plot the results ******************************************
.control
run
plot	v(in) v(out)
.endc
*************************************************************************

.end