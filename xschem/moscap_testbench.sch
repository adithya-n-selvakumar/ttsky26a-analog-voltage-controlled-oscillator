v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -240 180 560 580 {flags=graph
y1=-2e-14
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6 5"
node="moscap
ceramic_cap
vin"}
N 20 20 150 20 {
lab=GND}
N 150 20 240 20 {
lab=GND}
N 240 -10 240 20 {
lab=GND}
N 240 -40 240 -10 {
lab=GND}
N 280 -40 280 -10 {
lab=MOSCAP}
N 150 -160 280 -160 {
lab=VIN}
N 20 -160 150 -160 {
lab=VIN}
N 0 -10 0 20 {
lab=GND}
N -130 -160 20 -160 {
lab=VIN}
N -130 -160 -130 -140 {
lab=VIN}
N 0 -80 0 -10 {
lab=GND}
N 0 20 20 20 {
lab=GND}
N -130 -80 0 -80 {
lab=GND}
C {devices/vsource.sym} -130 -110 0 0 {name=VIN value="PWL(0ns 0 5ns 0 5ns 1.8 100ns 1.8)" savecurrent=false}
C {devices/gnd.sym} 20 20 0 0 {name=l1 lab=GND}
C {devices/res.sym} 110 -130 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 280 -130 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} 110 -70 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 280 -70 0 0 {name=Vmeas1 savecurrent=true}
C {devices/capa.sym} 110 -10 2 0 {name=C1
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 260 -10 0 1 {name=M1
L=\{L\}
W=\{W\}
nf=\{nf\} 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/launcher.sym} -505 5 0 0 {name=h5
descr="Load waves."
tclcommand="xschem raw_read $netlist_dir/moscap_testbench.raw tran"
}
C {devices/simulator_commands_shown.sym} -560 90 0 0 {name=NGSPICE
only_toplevel=false 
value="

.param CL=0.8p
.param W=11
.param L=11
.param nf=1

.control

save all
* run ac simulation
tran 0.1ns 20ns

write moscap_testbench.raw
quit
.endc
"}
C {devices/launcher.sym} -155 5 0 0 {name=h1
descr="Simulate."
tclcommand="xschem netlist; xschem simulate"
}
C {devices/simulator_commands_shown.sym} -220 80 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
C {devices/lab_wire.sym} -60 -160 2 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 110 -40 0 0 {name=p2 sig_type=std_logic lab=CERAMIC_CAP
}
C {devices/lab_wire.sym} 280 -30 2 0 {name=p3 sig_type=std_logic lab=MOSCAP
}
