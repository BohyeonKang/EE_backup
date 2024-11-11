* full adder source code

*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM	bitrate1=0.4G
	+freq1='bitrate1/2'
	+per1='1/freq1'
	+td1='per1/2'
	+tr1='per1*0'
	+tf1='per1*0'
	+pw1='per1*0.5'

.PARAM	bitrate2=0.2G
	+freq2='bitrate2/2'
	+per2='1/freq2'
	+td2='per2/2'
	+tr2='per2*0'
	+tf2='per2*0'
	+pw2='per2*0.5'

.PARAM	bitrate3=0.1G
	+freq3='bitrate3/2'
	+per3='1/freq3'
	+td3='per3/2'
	+tr3='per3*0'
	+tf3='per3*0'
	+pw3='per3*0.5'

VA		a	0	pulse(0 3.3 td1 tr1 tf1 pw1 per1)
VB		b	0	pulse(0 3.3 td2 tr2 tf2 pw2 per2)
VCin	cin	0   pulse(0 3.3 td3 tr3 tf3 pw3 per3)
*************************************************************************

************* Define the Vdd and Vss voltage level***********************
Vdd	vdd	0	DC	3.3v
*************************************************************************

************* Your Circuits *********************************************
X1 a b cin x vdd 0 ckt_cout_bar
X2 x co vdd 0 inv
X3 a b cin x y vdd 0 ckt_s_bar
X4 y s vdd 0 inv
*************************************************************************

************* Subcircuits ***********************************************
.subckt	inv	in	out	vdd	gnd
Mp1	out	in	vdd	vdd	PMOS	l=0.5u	w=20u
Mn1	out	in	gnd	gnd	NMOS	l=0.5u	w=10u
.ends

.subckt ckt_cout_bar in1 in2 in3 out vdd gnd
Mp1	out	in1 n1	vdd	PMOS l=0.5u	w=20u
Mp2	n1	in2	n2	vdd	PMOS l=0.5u	w=20u
Mp3 out in3 n2 vdd PMOS	l=0.5u	w=20u
Mp4 n2 in1 vdd vdd PMOS	l=0.5u	w=20u
Mp5 n2 in2 vdd vdd PMOS	l=0.5u	w=20u
Mn1 out in1 n3 gnd NMOS	l=0.5u	w=10u
Mn2 n3 in2 gnd gnd NMOS	l=0.5u	w=10u
Mn3 out in3 n4 gnd NMOS	l=0.5u	w=10u
Mn4 n4 in1 gnd gnd NMOS	l=0.5u	w=10u
Mn5 n4 in2 gnd gnd NMOS	l=0.5u	w=10u
.ends

.subckt ckt_s_bar in1 in2 in3 in4 out vdd gnd
Mp1 n1 in1 n3 vdd PMOS l=0.5u	w=20u
Mp2 n2 in2 n1 vdd PMOS l=0.5u	w=20u
Mp3 out in3 n2 vdd PMOS l=0.5u	w=20u
Mp4 out in4 n3 vdd PMOS l=0.5u	w=20u
Mp5 n3 in1 vdd vdd PMOS l=0.5u	w=20u
Mp6 n3 in2 vdd vdd PMOS l=0.5u	w=20u
Mp7 n3 in3 vdd vdd PMOS l=0.5u	w=20u
Mn1 out in3 n4 gnd NMOS	l=0.5u	w=10u
Mn2 n4 in1 n5 gnd NMOS	l=0.5u	w=10u
Mn3 n5 in2 gnd gnd NMOS	l=0.5u	w=10u
Mn4 out in4 n6 gnd NMOS	l=0.5u	w=10u
Mn5 n6 in1 gnd gnd NMOS	l=0.5u	w=10u
Mn6 n6 in2 gnd gnd NMOS	l=0.5u	w=10u
Mn7 n6 in3 gnd gnd NMOS	l=0.5u	w=10u
.ends
*************************************************************************

************* Define the resoltion and simulation time ******************
.tran 1p 25n
*************************************************************************

************* Plot the results ******************************************
.control
set linewidth=2
run
plot	v(a) v(b) v(cin)
plot	v(co) v(s)
.endc
*************************************************************************

.end