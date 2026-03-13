v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -70 230 730 630 {flags=graph
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
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -0 -100 -0 -90 {
lab=VIN}
N -0 -100 90 -100 {
lab=VIN}
N -140 -30 -110 -30 {
lab=GND}
N -110 -30 -80 -30 {
lab=GND}
C {min_buffer.sym} 230 -100 0 0 {name=x1}
C {devices/vsource.sym} 0 -60 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 0 -30 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 240 -170 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 -30 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -100 2 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 40 -100 2 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/vsource.sym} -80 -60 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} -140 -60 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -110 -30 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -80 -90 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -140 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} -375 55 0 0 {name=h5
descr="Load waves."
tclcommand="xschem raw_read $netlist_dir/min_buffer_testbench.raw dc"
}
C {devices/simulator_commands_shown.sym} -430 140 0 0 {name=NGSPICE
only_toplevel=false 
value="

.control

save all
* run dc simulation
dc v1 0 1.8 0.01

write min_buffer_testbench.raw
quit
.endc
"}
C {devices/launcher.sym} -25 55 0 0 {name=h1
descr="Simulate."
tclcommand="xschem netlist; xschem simulate"
}
C {devices/simulator_commands_shown.sym} -90 130 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
