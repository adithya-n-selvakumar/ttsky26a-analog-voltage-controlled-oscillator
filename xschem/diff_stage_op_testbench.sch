v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 530 -40 590 -40 {
lab=GND}
N 700 -40 850 -40 {
lab=GND}
N 790 -130 790 -100 {
lab=#net1}
N 790 -100 850 -100 {
lab=#net1}
N 850 -100 910 -100 {
lab=#net1}
N 910 -130 910 -100 {
lab=#net1}
N 830 -140 850 -140 {
lab=GND}
N 850 -140 870 -140 {
lab=GND}
N 830 -180 870 -180 {
lab=#net2}
N 850 -200 850 -180 {
lab=#net2}
N 700 -200 850 -200 {
lab=#net2}
N 700 -200 700 -90 {
lab=#net2}
N 790 -230 790 -190 {
lab=VIN_PLUS}
N 910 -230 910 -190 {
lab=VIN_MINUS}
N -310 -70 -250 -70 {
lab=VB2}
N -280 -70 -280 20 {
lab=VB2}
N -280 20 80 20 {
lab=VB2}
N 80 -50 80 20 {
lab=VB2}
N 50 -70 80 -70 {
lab=VB1}
N 380 -70 400 -70 {
lab=VOUT_MINUS}
N 380 -130 400 -130 {
lab=VOUT_PLUS}
C {devices/isource.sym} -310 -100 0 0 {name=I0 value=\{I_IN\}}
C {imirror_bias.sym} -100 -70 0 0 {name=x1}
C {diff_stage.sym} 230 -100 0 0 {name=x2}
C {devices/vsource.sym} 530 -70 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 590 -70 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/vsource.sym} 700 -70 0 0 {name=VDM value=0 savecurrent=false}
C {devices/vsource.sym} 850 -70 0 0 {name=VCM value=\{VCM\} savecurrent=false}
C {devices/vcvs.sym} 910 -160 0 0 {name=E1 value=-0.5}
C {devices/vcvs.sym} 790 -160 0 1 {name=E2 value=0.5}
C {devices/vcvs.sym} 530 -220 0 1 {name=E3 value=1}
C {devices/gnd.sym} 560 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 780 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 530 -190 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 850 -140 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 530 -250 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 570 -240 2 0 {name=p2 sig_type=std_logic lab=VOUT_PLUS}
C {devices/lab_wire.sym} 570 -200 2 0 {name=p3 sig_type=std_logic lab=VOUT_MINUS}
C {devices/lab_wire.sym} 530 -100 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 590 -100 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -180 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -80 -120 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -20 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -20 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 790 -230 0 0 {name=p10 sig_type=std_logic lab=VIN_PLUS}
C {devices/lab_wire.sym} 910 -230 0 0 {name=p11 sig_type=std_logic lab=VIN_MINUS}
C {devices/lab_wire.sym} 80 -130 0 0 {name=p12 sig_type=std_logic lab=VIN_MINUS}
C {devices/lab_wire.sym} 80 -150 0 0 {name=p13 sig_type=std_logic lab=VIN_PLUS}
C {devices/lab_wire.sym} 400 -130 2 0 {name=p14 sig_type=std_logic lab=VOUT_PLUS}
C {devices/lab_wire.sym} 400 -70 2 0 {name=p15 sig_type=std_logic lab=VOUT_MINUS}
C {devices/launcher.sym} -225 85 0 0 {name=h5
descr="Annotate OP."
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/simulator_commands_shown.sym} -280 170 0 0 {name=NGSPICE
only_toplevel=false 
value="

.param VDD=1.8
.param VCM=0.9
.param I_IN=0.01m

.control

save all
* operating point
op

write diff_stage_op_testbench.raw

quit
.endc
"}
C {devices/launcher.sym} 125 85 0 0 {name=h1
descr="Simulate."
tclcommand="xschem netlist; xschem simulate"
}
C {devices/simulator_commands_shown.sym} 60 160 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
C {devices/lab_wire.sym} -310 -130 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -230 20 0 1 {name=p16 sig_type=std_logic lab=VB2
}
C {devices/lab_wire.sym} 60 -70 0 1 {name=p18 sig_type=std_logic lab=VB1
}
