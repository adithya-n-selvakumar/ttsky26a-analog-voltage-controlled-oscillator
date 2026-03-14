v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1200 -960 -400 -560 {flags=graph
y1=-37.353688
y2=32.948146
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.4527407
x2=9.1959975
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0



color="4 7 12"
node="\\"VOUT db20()\\"
\\"VOUT_P db20()\\"
\\"VOUT_N db20()\\""}
B 2 -1200 -540 -400 -140 {flags=graph
y1=-87
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.4527407
x2=9.1959975
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="ph(VOUT_P)
ph(VOUT_N)
ph(VOUT)"
color="7 12 4"
dataset=-1
unitx=1
logx=1
logy=0
}
T {tcleval(OF: [to_eng [xschem raw value OF 0]])} -1200 -110 0 0 0.4 0.4 {floater=1}
N -360 -1240 -320 -1240 {
lab=#net1}
N -540 -1290 -540 -1130 {
lab=#net1}
N -540 -1290 -360 -1290 {
lab=#net1}
N -540 -1070 -540 -1050 {
lab=GND}
N -360 -1070 -360 -1050 {
lab=GND}
N -360 -1150 -280 -1150 {
lab=#net2}
N -360 -1150 -360 -1130 {
lab=#net2}
N -360 -1200 -320 -1200 {
lab=GND}
N -360 -1200 -360 -1180 {
lab=GND}
N -440 -1190 -440 -1150 {
lab=#net2}
N -280 -1190 -280 -1150 {
lab=#net2}
N -360 -1290 -360 -1240 {
lab=#net1}
N -280 -1330 -280 -1250 {
lab=VIN_N}
N -440 -1330 -440 -1250 {
lab=VIN_P}
N -440 -1150 -360 -1150 {
lab=#net2}
N -400 -1200 -360 -1200 {
lab=GND}
N -400 -1240 -360 -1240 {
lab=#net1}
N -180 -1190 -180 -1170 {
lab=GND}
N -180 -1290 -180 -1250 {
lab=VSS}
N -100 -1190 -100 -1170 {
lab=GND}
N -180 -1170 -180 -1150 {
lab=GND}
N -100 -1290 -100 -1250 {
lab=VDD}
N -180 -1170 -100 -1170 {
lab=GND}
N -810 -1200 -700 -1200 {
lab=VOUT_P}
N -810 -1120 -700 -1120 {
lab=VOUT_N}
N 60 -1230 120 -1230 {
lab=VOUT_P}
N 60 -1190 120 -1190 {
lab=VOUT_N}
N 20 -1180 20 -1140 {
lab=GND}
N 20 -1280 20 -1240 {
lab=VOUT}
C {sky130_fd_pr/corner.sym} -50 -700 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 300 -1210 0 0 {name=V1 value=\{vb_pfet\} savecurrent=false}
C {devices/lab_pin.sym} 300 -1240 2 1 {name=p12 sig_type=std_logic lab=VB_PFET}
C {devices/vsource.sym} 400 -1210 0 0 {name=V4 value=\{vb_nfet\} savecurrent=false}
C {devices/lab_pin.sym} 400 -1240 2 1 {name=p14 sig_type=std_logic lab=VB_NFET}
C {devices/launcher.sym} -210 -790 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_stage_tb_ac.raw ac"
}
C {devices/lab_wire.sym} -960 -1070 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -960 -1250 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1110 -1140 2 1 {name=p7 sig_type=std_logic lab=VB_PFET}
C {devices/lab_pin.sym} -1110 -1220 2 1 {name=p8 sig_type=std_logic lab=VIN_P}
C {devices/lab_pin.sym} -1110 -1180 2 1 {name=p9 sig_type=std_logic lab=VIN_N}
C {devices/lab_pin.sym} -1110 -1100 2 1 {name=p10 sig_type=std_logic lab=VB_NFET}
C {devices/code_shown.sym} -300 -700 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.param vdd=1.8

.param vb_pfet=0.80254
.param vb_nfet=0.76407
.param vcm=0.9

.param vin=0.1

.control

    save all

    * operating point
    op

    write vco_stage_tb_ac.raw
    set appendwrite

    * run ac simulation
    ac dec 20 1k 10e9

    let vout_phase_margin = phase(v(vout)) * 180/pi
    meas ac OF when vout_phase_margin=135

    write vco_stage_tb_ac.raw
    * quit
.endc
"}
C {devices/launcher.sym} -210 -920 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} -700 -1200 2 0 {name=p25 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} -700 -1120 2 0 {name=p26 sig_type=std_logic lab=VOUT_N}
C {devices/vcvs.sym} -440 -1220 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} -280 -1220 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} -540 -1100 0 0 {name=VDM value="dc \{vin\} ac 1" savecurrent=false}
C {devices/vsource.sym} -360 -1100 0 0 {name=VCM value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} -540 -1050 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -360 -1050 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -360 -1180 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -440 -1330 0 0 {name=p1 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} -280 -1330 0 0 {name=p2 sig_type=std_logic lab=VIN_N}
C {devices/vsource.sym} -180 -1220 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} -180 -1150 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -100 -1220 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} -180 -1290 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -1290 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 300 -1180 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 400 -1180 0 0 {name=l2 lab=GND}
C {devices/vcvs.sym} 20 -1210 0 1 {name=E3 value=1.0}
C {devices/lab_pin.sym} 120 -1230 2 0 {name=p11 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} 120 -1190 2 0 {name=p13 sig_type=std_logic lab=VOUT_N}
C {devices/gnd.sym} 20 -1140 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 20 -1280 2 0 {name=p15 sig_type=std_logic lab=VOUT}
C {devices/launcher.sym} -210 -850 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {vco_stage.sym} -960 -1160 0 0 {name=x1}
