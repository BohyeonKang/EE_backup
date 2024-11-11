* SPICE3 file created from /home/Bohyeon/D_latch.ext - technology: scmos
*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM	bitrate1=0.1G
	+freq1='bitrate1/2'
	+per1='1/freq1'
	+td1='per1/2'
	+tr1='per1*0'
	+tf1='per1*0'
	+pw1='per1*0.5'

.PARAM	bitrate2=0.4G
	+freq2='bitrate2/2'
	+per2='1/freq2'
	+td2='per2/2'
	+tr2='per2*0.1'
	+tf2='per2*0.1'
	+pw2='per2*0.3'

Vin1	clk	0	pulse(0 3.3 td1 tr1 tf1 pw1 per1)
Vin2	D	0	pulse(0 3.3 td2 tr2 tf2 pw2 per2)
*************************************************************************

************* Define the Vdd and Vss voltage level***********************
VDD	vdd	0	DC	3.3v
*************************************************************************

************* Your Circuits *********************************************
X1	clk	D  Q	vdd	0	D_latch
*************************************************************************

************* Subcircuits ***********************************************
.subckt	D_latch   clk D Q vdd gnd
M1000 nand_3/out Q vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=48.75p ps=84u 
M1001 vdd nand_3/in2 nand_3/out vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1002 nand_3/a_n3_n21# Q gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=33p ps=61u 
M1003 nand_3/out nand_3/in2 nand_3/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1004 nand_3/in2 clk vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1005 vdd inv_0/out nand_3/in2 vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1006 nand_1/a_n3_n21# clk gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1007 nand_3/in2 inv_0/out nand_1/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1008 inv_0/out D vdd vdd PMOS w=3.5u l=1u
+ ad=8.75p pd=12u as=0p ps=0u 
M1009 inv_0/out D gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u 
M1010 Q nand_2/in1 vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1011 vdd nand_3/out Q vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1012 nand_2/a_n3_n21# nand_2/in1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1013 Q nand_3/out nand_2/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1014 nand_2/in1 D vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1015 vdd clk nand_2/in1 vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1016 nand_0/a_n3_n21# D gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1017 nand_2/in1 clk nand_0/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
C0 nand_2/in1 gnd 8.1fF
C1 vdd gnd 112.0fF
C2 D gnd 15.2fF
C3 inv_0/out gnd 5.9fF
C4 clk gnd 14.2fF
C5 gnd gnd 20.4fF
C6 nand_3/out gnd 16.5fF
C7 nand_3/in2 gnd 8.7fF
C8 Q gnd 16.9fF
.ends
*************************************************************************

************* Define the resoltion and simulation time ******************
.tran 100p 30n
*************************************************************************

************* Plot the results ******************************************
.control
set linewidth=2
run
plot	v(clk) 	v(D)
plot    v(Q)
.endc
*************************************************************************
.end