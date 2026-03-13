v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 500 250 1300 650 {flags=graph
y1=2.5e-06
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0

color=4
node=vout_phase_margin}
N 800 60 860 60 {
lab=GND}
N 970 60 1120 60 {
lab=GND}
N 1060 -30 1060 0 {
lab=#net1}
N 1060 0 1120 0 {
lab=#net1}
N 1120 0 1180 0 {
lab=#net1}
N 1180 -30 1180 0 {
lab=#net1}
N 1100 -40 1120 -40 {
lab=GND}
N 1120 -40 1140 -40 {
lab=GND}
N 1100 -80 1140 -80 {
lab=#net2}
N 1120 -100 1120 -80 {
lab=#net2}
N 970 -100 1120 -100 {
lab=#net2}
N 970 -100 970 10 {
lab=#net2}
N 1060 -130 1060 -90 {
lab=VIN_PLUS}
N 1180 -130 1180 -90 {
lab=VIN_MINUS}
N 320 30 350 30 {
lab=VB1}
N 650 30 670 30 {
lab=VOUT_MINUS}
N 650 -30 670 -30 {
lab=VOUT_PLUS}
N 800 180 860 180 {
lab=GND}
N 320 50 350 50 {
lab=VB2}
C {diff_stage.sym} 500 0 0 0 {name=x2}
C {devices/vsource.sym} 800 30 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 860 30 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/vsource.sym} 970 30 0 0 {name=VDM value="dc \\\{vin\\\} ac 1" savecurrent=false}
C {devices/vsource.sym} 1120 30 0 0 {name=VCM value=\{VCM\} savecurrent=false}
C {devices/vcvs.sym} 1180 -60 0 0 {name=E1 value=-0.5}
C {devices/vcvs.sym} 1060 -60 0 1 {name=E2 value=0.5}
C {devices/vcvs.sym} 800 -120 0 1 {name=E3 value=1}
C {devices/gnd.sym} 830 60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1050 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 800 -90 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1120 -40 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 800 -150 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 840 -140 2 0 {name=p2 sig_type=std_logic lab=VOUT_PLUS}
C {devices/lab_wire.sym} 840 -100 2 0 {name=p3 sig_type=std_logic lab=VOUT_MINUS}
C {devices/lab_wire.sym} 800 0 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 860 0 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 -80 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 80 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1060 -130 0 0 {name=p10 sig_type=std_logic lab=VIN_PLUS}
C {devices/lab_wire.sym} 1180 -130 0 0 {name=p11 sig_type=std_logic lab=VIN_MINUS}
C {devices/lab_wire.sym} 350 -30 0 0 {name=p12 sig_type=std_logic lab=VIN_MINUS}
C {devices/lab_wire.sym} 350 -50 0 0 {name=p13 sig_type=std_logic lab=VIN_PLUS}
C {devices/lab_wire.sym} 670 -30 2 0 {name=p14 sig_type=std_logic lab=VOUT_PLUS}
C {devices/lab_wire.sym} 670 30 2 0 {name=p15 sig_type=std_logic lab=VOUT_MINUS}
C {devices/launcher.sym} 45 185 0 0 {name=h5
descr="Load waves."
tclcommand="xschem raw_read $netlist_dir/diff_stage_ac_testbench.raw ac"
}
C {devices/simulator_commands_shown.sym} -10 270 0 0 {name=NGSPICE
only_toplevel=false 
value="

.param VDD=1.8
.param VCM=0.9
.param VB1=0.79574
.param VB2=0.76407

.param vin=0.1

.control

save all
* run ac simulation
ac dec 20 1 10e9

let vout_phase_margin = phase(v(VOUT)) * 180/pi

write diff_stage_ac_testbench.raw

*quit
.endc
"}
C {devices/launcher.sym} 395 185 0 0 {name=h1
descr="Simulate."
tclcommand="xschem netlist; xschem simulate"
}
C {devices/vsource.sym} 800 150 0 0 {name=V3 value=\{VB1\} savecurrent=false}
C {devices/vsource.sym} 860 150 0 0 {name=V4 value=\{VB2\} savecurrent=false}
C {devices/gnd.sym} 830 180 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 800 120 0 0 {name=p16 sig_type=std_logic lab=VB1
}
C {devices/lab_wire.sym} 860 120 0 1 {name=p18 sig_type=std_logic lab=VB2}
C {devices/lab_wire.sym} 320 30 0 0 {name=p9 sig_type=std_logic lab=VB1}
C {devices/lab_wire.sym} 320 50 0 0 {name=p17 sig_type=std_logic lab=VB2}
C {sky130_fd_pr/corner.sym} 70 20 0 0 {name=CORNER only_toplevel=true corner=tt}
