v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1130 -860 -330 -460 {flags=graph
y1=-0.00049
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7916573e-05
x2=3.6951342e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 5"
node="x1.x6.vp
x1.x6.vn"}
B 2 -1130 -450 -330 -50 {flags=graph
y1=-0.14
y2=1.96
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7916573e-05
x2=3.6951342e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="9 10 17 20"
node="vp0
vp1
vp2
vp3"}
B 2 380 -820 1180 -420 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7916573e-05
x2=3.6951342e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vp0
vn0"
color="6 8"
dataset=-1
unitx=1
logx=0
logy=0
}
T {tcleval(Period: [to_eng [xschem raw value PERIOD 0]]
VB_PFET: [to_eng [xschem raw value vb_pfet_avg 0]]V
VB_NFET: [to_eng [xschem raw value vb_nfet_avg 0]]V
VIN: [to_eng [xschem raw value vin_avg 0]]V)} -270 -170 0 0 0.4 0.4 {floater=1}
N 170 -700 170 -680 {
lab=GND}
N 170 -800 170 -760 {
lab=VSS}
N 250 -700 250 -680 {
lab=GND}
N 170 -680 170 -660 {
lab=GND}
N 250 -800 250 -760 {
lab=VDD}
N 170 -680 250 -680 {
lab=GND}
N -250 -710 -250 -690 {
lab=VB_NFET}
N -250 -690 -210 -690 {
lab=VB_NFET}
N -250 -810 -250 -770 {
lab=VDD}
C {devices/launcher.sym} -180 -220 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_tb.raw tran"
}
C {devices/vsource.sym} 170 -730 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 170 -660 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 250 -730 0 0 {name=V6 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 170 -800 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -800 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 10 -490 0 0 {name=NGSPICE 
only_toplevel=false 
value="

.param i_in=0.05m

.option klu
.control
	save all
	tran 10n 40000n
	let PERIOD=2.1e-6
	meas tran PERIOD TRIG x1.x6.vp VAL=0.5 RISE=5 TARG x1.x6.vp VAL=0.5 RISE=6
	meas tran vin_avg AVG x1.x6.vp from=1000n to=9000n

	meas tran vb_pfet_avg AVG vb_pfet from=1n to=9n
	meas tran vb_nfet_avg AVG vb_nfet from=1n to=9n
	remzerovec
	write vco_tb.raw
	quit
.endc
"}
C {devices/launcher.sym} -180 -270 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/isource.sym} -250 -740 0 0 {name=I0 value=\{i_in\}}
C {devices/lab_wire.sym} -250 -810 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 -570 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 -790 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vco.sym} -60 -690 0 0 {name=x1}
C {devices/lab_wire.sym} 90 -750 0 1 {name=p8 sig_type=std_logic lab=Vp0}
C {devices/lab_wire.sym} 90 -730 0 1 {name=p9 sig_type=std_logic lab=Vp1}
C {devices/lab_wire.sym} 90 -710 0 1 {name=p10 sig_type=std_logic lab=Vp2}
C {devices/lab_wire.sym} 90 -690 0 1 {name=p12 sig_type=std_logic lab=Vp3}
C {devices/lab_wire.sym} 90 -670 0 1 {name=p14 sig_type=std_logic lab=Vn0}
C {devices/lab_wire.sym} 90 -650 0 1 {name=p16 sig_type=std_logic lab=Vn1}
C {devices/lab_wire.sym} 90 -630 0 1 {name=p17 sig_type=std_logic lab=Vn2}
C {devices/lab_wire.sym} 90 -610 0 1 {name=p18 sig_type=std_logic lab=Vn3}
C {devices/lab_wire.sym} -210 -670 2 1 {name=p4 sig_type=std_logic lab=VB_PFET}
C {devices/lab_wire.sym} -250 -690 2 1 {name=p6 sig_type=std_logic lab=VB_NFET}
C {devices/code_shown.sym} -200 -950 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
