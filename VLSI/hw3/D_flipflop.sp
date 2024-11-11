* SPICE3 file created from D_flipflop.ext - technology: scmos
*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM	bitrate1=0.01G
	+freq1='bitrate1/2'
	+per1='1/freq1'
	+td1='per1/2'
	+tr1='per1*0'
	+tf1='per1*0'
	+pw1='per1*0.5'

.PARAM	bitrate2=0.035G
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
X1	clk	D  Q	vdd	0	D_flipflop
*************************************************************************

************* Subcircuits ***********************************************
.subckt	D_flipflop clk D Q vdd gnd
M1000 D_latch_1/nand_3/out Q vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=106.25p ps=180u 
M1001 vdd D_latch_1/nand_3/in2 D_latch_1/nand_3/out vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1002 D_latch_1/nand_3/a_n3_n21# Q gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=79p ps=147u 
M1003 D_latch_1/nand_3/out D_latch_1/nand_3/in2 D_latch_1/nand_3/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1004 D_latch_1/nand_3/in2 clk vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1005 vdd D_latch_1/inv_0/out D_latch_1/nand_3/in2 vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1006 D_latch_1/nand_1/a_n3_n21# clk gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1007 D_latch_1/nand_3/in2 D_latch_1/inv_0/out D_latch_1/nand_1/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1008 D_latch_1/inv_0/out D_latch_1/D vdd vdd PMOS w=3.5u l=1u
+ ad=8.75p pd=12u as=0p ps=0u 
M1009 D_latch_1/inv_0/out D_latch_1/D gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u 
M1010 Q D_latch_1/nand_2/in1 vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1011 vdd D_latch_1/nand_3/out Q vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1012 D_latch_1/nand_2/a_n3_n21# D_latch_1/nand_2/in1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1013 Q D_latch_1/nand_3/out D_latch_1/nand_2/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1014 D_latch_1/nand_2/in1 D_latch_1/D vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1015 vdd clk D_latch_1/nand_2/in1 vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1016 D_latch_1/nand_0/a_n3_n21# D_latch_1/D gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1017 D_latch_1/nand_2/in1 clk D_latch_1/nand_0/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1018 D_latch_0/nand_3/out D_latch_1/D vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1019 vdd D_latch_0/nand_3/in2 D_latch_0/nand_3/out vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1020 D_latch_0/nand_3/a_n3_n21# D_latch_1/D gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1021 D_latch_0/nand_3/out D_latch_0/nand_3/in2 D_latch_0/nand_3/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1022 D_latch_0/nand_3/in2 inv_0/out vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1023 vdd D_latch_0/inv_0/out D_latch_0/nand_3/in2 vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1024 D_latch_0/nand_1/a_n3_n21# inv_0/out gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1025 D_latch_0/nand_3/in2 D_latch_0/inv_0/out D_latch_0/nand_1/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1026 D_latch_0/inv_0/out D vdd vdd PMOS w=3.5u l=1u
+ ad=8.75p pd=12u as=0p ps=0u 
M1027 D_latch_0/inv_0/out D gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u 
M1028 D_latch_1/D D_latch_0/nand_2/in1 vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1029 vdd D_latch_0/nand_3/out D_latch_1/D vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1030 D_latch_0/nand_2/a_n3_n21# D_latch_0/nand_2/in1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1031 D_latch_1/D D_latch_0/nand_3/out D_latch_0/nand_2/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1032 D_latch_0/nand_2/in1 D vdd vdd PMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1033 vdd inv_0/out D_latch_0/nand_2/in1 vdd PMOS w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u 
M1034 D_latch_0/nand_0/a_n3_n21# D gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1035 D_latch_0/nand_2/in1 inv_0/out D_latch_0/nand_0/a_n3_n21# gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u 
M1036 inv_0/out clk vdd vdd PMOS w=3.5u l=1u
+ ad=8.75p pd=12u as=0p ps=0u 
M1037 inv_0/out clk gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u 
C0 D_latch_1/D vdd 2.0fF
C1 inv_0/out vdd 2.5fF
C2 clk vdd 2.4fF
C3 gnd vdd 2.1fF
C4 D_latch_0/nand_2/in1 gnd 8.1fF
C5 D gnd 17.5fF
C6 D_latch_0/inv_0/out gnd 5.9fF
C7 inv_0/out gnd 15.3fF
C8 D_latch_0/nand_3/out gnd 16.5fF
C9 D_latch_0/nand_3/in2 gnd 8.7fF
C10 D_latch_1/nand_2/in1 gnd 8.1fF
C11 vdd gnd 259.2fF
C12 D_latch_1/D gnd 34.5fF
C13 D_latch_1/inv_0/out gnd 5.9fF
C14 clk gnd 40.5fF
C15 gnd gnd 63.0fF
C16 D_latch_1/nand_3/out gnd 16.5fF
C17 D_latch_1/nand_3/in2 gnd 8.7fF
C18 Q gnd 17.5fF
.ends
*************************************************************************

************* Define the resoltion and simulation time ******************
.tran 100p 500n
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