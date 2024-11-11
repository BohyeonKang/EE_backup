* SPICE3 file created from /home/Bohyeon/nand.ext - technology: scmos
*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM	bitrate1=0.2G
	+freq1='bitrate1/2'
	+per1='1/freq1'
	+td1='per1/2'
	+tr1='per1*0'
	+tf1='per1*0'
	+pw1='per1*0.5'

.PARAM	bitrate2=0.1G
	+freq2='bitrate2/2'
	+per2='1/freq2'
	+td2='per2/2'
	+tr2='per2*0'
	+tf2='per2*0'
	+pw2='per2*0.5'

Vin1	in1	0	pulse(0 3.3 td1 tr1 tf1 pw1 per1)
Vin2	in2	0	pulse(0 3.3 td2 tr2 tf2 pw2 per2)
*************************************************************************

************* Define the Vdd and Vss voltage level***********************
VDD	vdd	0	DC	3.3v
*************************************************************************

************* Your Circuits *********************************************
X1	in1	in2  out	vdd	0	nand
*************************************************************************

************* Subcircuits ***********************************************
.subckt	nand    in1 in2	out	vdd	gnd
M1000 out in1 vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=10p ps=18u 
M1001 vdd in2 out vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1002 a_n3_n21# in1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=5p ps=9u 
M1003 out in2 a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
C0 out gnd 2.5fF
C1 in2 gnd 3.3fF
C2 in1 gnd 2.8fF
C3 vdd gnd 20.8fF
.ends
*************************************************************************

************* Define the resoltion and simulation time ******************
.tran 100p 30n
*************************************************************************

************* Plot the results ******************************************
.control
set linewidth=2
run
plot	v(in1) 	v(in2)
plot    v(out)
.endc
*************************************************************************
.end