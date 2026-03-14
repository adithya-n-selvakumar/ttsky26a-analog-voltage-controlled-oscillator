v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1270 -1300 -470 -900 {flags=graph
y1=-1.3e-08
y2=0.0018
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
color="4 7"
node="i(vmeas)
i(vmeas1)"}
B 2 -380 -770 420 -370 {flags=graph
y1=-2.1e-14
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
node="moscap
ceramic_cap"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N -360 -1060 -360 -1020 {
lab=GND}
N -360 -1300 -300 -1300 {
lab=#net1}
N -360 -1300 -360 -1120 {
lab=#net1}
N -360 -1040 20 -1040 {
lab=GND}
N -50 -1300 90 -1300 {
lab=GND}
N -240 -1300 -210 -1300 {
lab=#net2}
N -150 -1300 -110 -1300 {
lab=CERAMIC_CAP}
N -230 -1210 -200 -1210 {
lab=#net3}
N -140 -1210 -100 -1210 {
lab=MOSCAP}
N -360 -1210 -290 -1210 {
lab=#net1}
N -60 -1210 40 -1210 {
lab=GND}
N -60 -1240 40 -1240 {
lab=GND}
N -60 -1180 40 -1180 {
lab=GND}
N 40 -1240 40 -1180 {
lab=GND}
N 40 -1210 90 -1210 {
lab=GND}
N 90 -1300 90 -1040 {
lab=GND}
N 20 -1040 90 -1040 {
lab=GND}
N -130 -1320 -130 -1300 {
lab=CERAMIC_CAP}
N -120 -1210 -120 -1200 {
lab=MOSCAP}
C {devices/launcher.sym} -360 -820 0 0 {name=h5
descr="Load waves!" 
tclcommand="xschem raw_read $netlist_dir/vco_stage_moscap_tb.raw tran"
}
C {devices/code_shown.sym} -1250 -820 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.param cl=1p
.param W=11
.param L=11
.param nf=1


.control

    save all
    * run tran simulation
    tran 0.1ns 20ns
    write vco_stage_moscap_tb.raw
    quit
.endc
"}
C {devices/launcher.sym} -360 -870 0 0 {name=h1
descr="Simulate!"
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} -360 -1090 0 0 {name=VIN 
value="PWL(0ns 0 5ns 0 5ns 1.8 100ns 1.8)" 
savecurrent=false}
C {devices/res.sym} -270 -1300 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -80 -1300 1 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/ammeter.sym} -180 -1300 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} -80 -1210 0 0 {name=M1
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
C {devices/gnd.sym} -360 -1020 0 0 {name=l1 lab=GND}
C {devices/res.sym} -260 -1210 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} -170 -1210 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -1100 -820 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
"}
C {devices/lab_wire.sym} -130 -1320 0 1 {name=p1 sig_type=std_logic lab=CERAMIC_CAP}
C {devices/lab_wire.sym} -120 -1200 2 1 {name=p2 sig_type=std_logic lab=MOSCAP}
