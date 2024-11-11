* SPICE3 file created from /home/Bohyeon/inv.ext - technology: scmos
*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM	bitrate=0.2G
	+freq='bitrate/2'
	+per='1/freq'
	+td='per/2'
	+tr='per*0'
	+tf='per*0'
	+pw='per*0.5'

Vin	in	0	pulse(0 3.3 td tr tf pw per)
*************************************************************************

************* Define the Vdd and Vss voltage level***********************
VDD	vdd	0	DC	3.3v
*************************************************************************

************* Your Circuits *********************************************
X1	in  out	vdd	0	inv
*************************************************************************

************* Subcircuits ***********************************************
.subckt	inv    in out	vdd	gnd
M1000 out in vdd vdd PMOS w=3.5u l=1u
+ ad=8.75p pd=12u as=8.75p ps=12u 
M1001 out in gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=13p ps=25u 
C0 in gnd 2.1fF
C1 vdd gnd 15.9fF
.ends
*************************************************************************

************* Define the resoltion and simulation time ******************
.tran 100p 30n
*************************************************************************

************* Plot the results ******************************************
.control
set linewidth=2
run
plot	v(in) v(out)
.endc
*************************************************************************
.end