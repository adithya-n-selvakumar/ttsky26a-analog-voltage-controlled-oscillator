v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -670 800 -270 {flags=graph
y1=-1.8
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.8
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout


vout_p
vout_n


vin_p
vin_n"
color="4 6 8 12 13"
dataset=-1
unitx=1
logx=0
logy=0
}
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
N -380 -1150 -260 -1150 {
lab=VB_PFET}
N -720 -1150 -720 -1130 {
lab=VB_NFET}
N -720 -1130 -680 -1130 {
lab=VB_NFET}
N -720 -1250 -720 -1210 {
lab=VDD}
C {devices/launcher.sym} -720 -540 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_stage_tb.raw dc"
}
C {devices/lab_wire.sym} -110 -1080 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -1260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -260 -1230 2 1 {name=p8 sig_type=std_logic lab=VIN_P}
C {devices/lab_pin.sym} -260 -1190 2 1 {name=p9 sig_type=std_logic lab=VIN_N}
C {devices/lab_pin.sym} -260 -1110 2 1 {name=p10 sig_type=std_logic lab=VB_NFET}
C {devices/code_shown.sym} -790 -330 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.param vdd=1.8
.param cl=0p

.param vcm=0.9

.param i_in=0.01m

.control

    save all
 
    * operating point
    op

    write vco_stage_tb_dc.raw
    set appendwrite

    * run dc simulation
    dc vdm -1.8 1.8 0.1

    write vco_stage_tb_dc.raw
.endc
"}
C {devices/launcher.sym} -720 -670 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} 150 -1210 2 0 {name=p25 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} 150 -1130 2 0 {name=p26 sig_type=std_logic lab=VOUT_N}
C {devices/vcvs.sym} 370 -1160 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 530 -1160 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 270 -1040 0 0 {name=VDM value="1.8" savecurrent=false}
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
C {devices/vcvs.sym} 270 -860 0 1 {name=E3 value=1.0}
C {devices/lab_pin.sym} 370 -880 2 0 {name=p11 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} 370 -840 2 0 {name=p13 sig_type=std_logic lab=VOUT_N}
C {devices/gnd.sym} 270 -790 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 270 -930 2 0 {name=p15 sig_type=std_logic lab=VOUT}
C {devices/launcher.sym} -720 -600 0 0 {name=h2
descr="Annotate OP!" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {vco_stage.sym} -110 -1170 0 0 {name=x1}
C {vco_bias.sym} -530 -1130 0 0 {name=x2}
C {devices/lab_wire.sym} -530 -1190 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -530 -1070 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -720 -1180 0 0 {name=I0 value=\{i_in\}}
C {devices/lab_wire.sym} -720 -1250 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -720 -1130 2 1 {name=p12 sig_type=std_logic lab=VB_NFET}
C {devices/code_shown.sym} -790 -450 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
C {devices/lab_wire.sym} -280 -1150 0 0 {name=p7 sig_type=std_logic lab=VB_PFET}
