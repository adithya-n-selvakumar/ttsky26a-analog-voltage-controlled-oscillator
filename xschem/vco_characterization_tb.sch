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
x1=0
x2=4e-05
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
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=9
node=vp0}
T {tcleval(Period: [to_eng [xschem raw value PERIOD 0]]
Vb: [to_eng [xschem raw value vb_avg 0]]V
Vc: [to_eng [xschem raw value vc_avg 0]]V)} -270 -170 0 0 0.4 0.4 {floater=1}
N 180 -890 180 -870 {
lab=GND}
N 180 -990 180 -950 {
lab=VSS}
N 260 -890 260 -870 {
lab=GND}
N 180 -870 180 -850 {
lab=GND}
N 260 -990 260 -950 {
lab=VDD}
N 180 -870 260 -870 {
lab=GND}
N -240 -900 -240 -880 {
lab=VB_NFET}
N -240 -880 -200 -880 {
lab=VB_NFET}
N -240 -1000 -240 -960 {
lab=VDD}
C {devices/launcher.sym} -180 -220 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_characterization_tb.raw tran"
}
C {devices/code_shown.sym} 0 -490 0 0 {name=NGSPICE 
only_toplevel=false 
value="

.param i_in=0.0m

.option klu
.control
	echo 'i_in period vb_nfet vb_pfet' > vco_characterization_tt_0.txt
	let i_in_val = 0.01e-3
	let i_in_step = 0.01e-3

	while i_in_val <= 0.3e-3

		alterparam i_in = $&i_in_val

		reset
		tran 10n 40000n

		let PERIOD=2.1e-6
		meas tran PERIOD TRIG vp0 VAL=0.9 RISE=5 TARG vp0 VAL=0.9 RISE=6
		meas tran vb_pfet_avg AVG vb_pfet from=1n to=9n
		meas tran vb_nfet_avg AVG vb_nfet from=1n to=9n
		echo $&i_in_val $&PERIOD $&vb_nfet_avg $&vb_pfet_avg >> vco_characterization_tt_0.txt 
		
		let i_in_val = i_in_val + i_in_step
	end
.endc
"}
C {devices/launcher.sym} -180 -270 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} 180 -920 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 180 -850 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 260 -920 0 0 {name=V6 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 180 -990 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -990 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/isource.sym} -240 -930 0 0 {name=I0 value=\{i_in\}}
C {devices/lab_wire.sym} -240 -1000 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -50 -760 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -50 -980 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vco.sym} -50 -880 0 0 {name=x1}
C {devices/lab_wire.sym} 100 -940 0 1 {name=p8 sig_type=std_logic lab=Vp0}
C {devices/lab_wire.sym} 100 -920 0 1 {name=p9 sig_type=std_logic lab=Vp1}
C {devices/lab_wire.sym} 100 -900 0 1 {name=p10 sig_type=std_logic lab=Vp2}
C {devices/lab_wire.sym} 100 -880 0 1 {name=p12 sig_type=std_logic lab=Vp3}
C {devices/lab_wire.sym} 100 -860 0 1 {name=p14 sig_type=std_logic lab=Vn0}
C {devices/lab_wire.sym} 100 -840 0 1 {name=p16 sig_type=std_logic lab=Vn1}
C {devices/lab_wire.sym} 100 -820 0 1 {name=p17 sig_type=std_logic lab=Vn2}
C {devices/lab_wire.sym} 100 -800 0 1 {name=p18 sig_type=std_logic lab=Vn3}
C {devices/lab_wire.sym} -200 -860 2 1 {name=p4 sig_type=std_logic lab=VB_PFET}
C {devices/lab_wire.sym} -240 -890 2 1 {name=p6 sig_type=std_logic lab=VB_NFET}
C {devices/code_shown.sym} 0 -620 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
