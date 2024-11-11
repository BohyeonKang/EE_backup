* full adder_nand source code

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
Xinv1 a a a_bar vdd 0 nand2
Xinv2 b b b_bar vdd 0 nand2
Xinv3 cin cin cin_bar vdd 0 nand2

X1 a b n1 vdd 0 nand2
X2 a_bar b_bar n2 vdd 0 nand2
X3 n2 cin n3 vdd 0 nand2
X4 n1 n3 Cout vdd 0 nand2

Xinv4 Cout Cout Cout_bar vdd 0 nand2

X5 a b cin n4 vdd 0 nand3
X6 a_bar b_bar cin_bar n5 vdd 0 nand3
X7 Cout_bar n5 n6 vdd 0 nand2
X8 n4 n6 S vdd 0 nand2
*************************************************************************

************* Subcircuits ***********************************************
.subckt	nand2	in1	in2 out	vdd	gnd
Mp1	out	in1	vdd	vdd	PMOS	l=0.5u	w=20u
Mp2	out	in2	vdd	vdd	PMOS	l=0.5u	w=20u
Mn1	out	in1	n1	gnd	NMOS	l=0.5u	w=10u
Mn2	n1	in2	gnd	gnd	NMOS	l=0.5u	w=10u
.ends

.subckt	nand3 in1 in2 in3 out vdd gnd
X1 in1 in2 n1 vdd gnd nand2
X2 n1 n1 n2 vdd gnd nand2
X3 n2 in3 out vdd gnd nand2
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
plot	v(Cout) v(S)
.endc
*************************************************************************

.end