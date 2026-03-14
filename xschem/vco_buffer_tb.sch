v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1320 -1280 -520 -880 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 70 -1090 70 -1070 {
lab=GND}
N 70 -1190 70 -1150 {
lab=VSS}
N 150 -1090 150 -1070 {
lab=GND}
N 70 -1070 70 -1050 {
lab=GND}
N 150 -1190 150 -1150 {
lab=VDD}
N 70 -1070 150 -1070 {
lab=GND}
N -430 -1120 -430 -1100 {
lab=VIN}
N -430 -1120 -310 -1120 {
lab=VIN}
C {devices/launcher.sym} -1250 -670 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_buffer_tb.raw dc"
}
C {devices/code_shown.sym} -980 -690 0 0 {name=NGSPICE 
only_toplevel=false 
value="

.control

    save all
    * run dc simulation
    dc v1 0 1.8 0.01

    write vco_buffer_tb.raw
    quit
.endc
"}
C {devices/launcher.sym} -1250 -800 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} 70 -1120 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 70 -1050 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 150 -1120 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 70 -1190 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 150 -1190 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -980 -830 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
C {vco_buffer.sym} -160 -1120 0 0 {name=x1}
C {devices/lab_wire.sym} -160 -1050 1 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -160 -1190 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -10 -1120 0 1 {name=p4 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} -310 -1120 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} -430 -1070 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -430 -1040 0 0 {name=l1 lab=GND}
