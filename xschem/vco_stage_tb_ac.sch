v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1120 -1280 -320 -880 {flags=graph
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
B 2 -1120 -840 -320 -440 {flags=graph
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
T {tcleval(OF: [to_eng [xschem raw value OF 0]])} -250 -800 0 0 0.4 0.4 {floater=1}
N 450 -1180 490 -1180 {
lab=#net1}
N 270 -1230 270 -1070 {
lab=#net1}
N 270 -1230 450 -1230 {
lab=#net1}
N 270 -1010 270 -990 {
lab=GND}
N 450 -1010 450 -990 {
lab=GND}
N 450 -1090 530 -1090 {
lab=#net2}
N 450 -1090 450 -1070 {
lab=#net2}
N 450 -1140 490 -1140 {
lab=GND}
N 450 -1140 450 -1120 {
lab=GND}
N 370 -1130 370 -1090 {
lab=#net2}
N 530 -1130 530 -1090 {
lab=#net2}
N 450 -1230 450 -1180 {
lab=#net1}
N 530 -1270 530 -1190 {
lab=VIN_N}
N 370 -1270 370 -1190 {
lab=VIN_P}
N 370 -1090 450 -1090 {
lab=#net2}
N 410 -1140 450 -1140 {
lab=GND}
N 410 -1180 450 -1180 {
lab=#net1}
N 630 -1130 630 -1110 {
lab=GND}
N 630 -1230 630 -1190 {
lab=VSS}
N 710 -1130 710 -1110 {
lab=GND}
N 630 -1110 630 -1090 {
lab=GND}
N 710 -1230 710 -1190 {
lab=VDD}
N 630 -1110 710 -1110 {
lab=GND}
N 40 -1210 150 -1210 {
lab=VOUT_P}
N 40 -1130 150 -1130 {
lab=VOUT_N}
N 310 -880 370 -880 {
lab=VOUT_P}
N 310 -840 370 -840 {
lab=VOUT_N}
N 270 -830 270 -790 {
lab=GND}
N 270 -930 270 -890 {
lab=VOUT}
C {sky130_fd_pr/corner.sym} 30 -980 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 550 -860 0 0 {name=V1 value=\{vb_pfet\} savecurrent=false}
C {devices/lab_pin.sym} 550 -890 2 1 {name=p12 sig_type=std_logic lab=VB_PFET}
C {devices/vsource.sym} 650 -860 0 0 {name=V4 value=\{vb_nfet\} savecurrent=false}
C {devices/lab_pin.sym} 650 -890 2 1 {name=p14 sig_type=std_logic lab=VB_NFET}
C {devices/launcher.sym} -210 -870 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_stage_tb_ac.raw ac"
}
C {devices/lab_wire.sym} -110 -1080 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -1260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -260 -1150 2 1 {name=p7 sig_type=std_logic lab=VB_PFET}
C {devices/lab_pin.sym} -260 -1230 2 1 {name=p8 sig_type=std_logic lab=VIN_P}
C {devices/lab_pin.sym} -260 -1190 2 1 {name=p9 sig_type=std_logic lab=VIN_N}
C {devices/lab_pin.sym} -260 -1110 2 1 {name=p10 sig_type=std_logic lab=VB_NFET}
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
    meas ac OF when vout_phase_margin=120

    write vco_stage_tb_ac.raw
    * quit
.endc
"}
C {devices/launcher.sym} -210 -1000 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} 150 -1210 2 0 {name=p25 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} 150 -1130 2 0 {name=p26 sig_type=std_logic lab=VOUT_N}
C {devices/vcvs.sym} 370 -1160 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 530 -1160 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 270 -1040 0 0 {name=VDM value="dc \{vin\} ac 1" savecurrent=false}
C {devices/vsource.sym} 450 -1040 0 0 {name=VCM value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 270 -990 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 450 -990 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 450 -1120 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 370 -1270 0 0 {name=p1 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 530 -1270 0 0 {name=p2 sig_type=std_logic lab=VIN_N}
C {devices/vsource.sym} 630 -1160 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 630 -1090 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 710 -1160 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 630 -1230 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 710 -1230 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 550 -830 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 650 -830 0 0 {name=l2 lab=GND}
C {devices/vcvs.sym} 270 -860 0 1 {name=E3 value=1.0}
C {devices/lab_pin.sym} 370 -880 2 0 {name=p11 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} 370 -840 2 0 {name=p13 sig_type=std_logic lab=VOUT_N}
C {devices/gnd.sym} 270 -790 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 270 -930 2 0 {name=p15 sig_type=std_logic lab=VOUT}
C {devices/launcher.sym} -210 -930 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {vco_stage.sym} -110 -1170 0 0 {name=x1}
