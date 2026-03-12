v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -70 20 -20 {
lab=VIN_INV}
N 20 -70 40 -70 {
lab=VIN_INV}
N 20 -20 20 40 {
lab=VIN_INV}
N 20 40 40 40 {
lab=VIN_INV}
N 80 -40 80 10 {
lab=VOUT_INV}
N 80 70 80 80 {
lab=VSS}
N 80 -110 80 -100 {
lab=VDD}
N 80 40 90 40 {
lab=VSS}
N 90 40 160 40 {
lab=VSS}
N 160 40 160 90 {
lab=VSS}
N 80 90 160 90 {
lab=VSS}
N 80 80 80 90 {
lab=VSS}
N 80 -130 80 -110 {
lab=VDD}
N 80 -100 80 -70 {}
C {devices/iopin.sym} -50 -140 2 1 {name=p1 lab=VDD
}
C {devices/iopin.sym} -50 -110 2 1 {name=p2 lab=VSS

}
C {devices/ipin.sym} 20 -20 0 0 {name=p3 lab=VIN_INV}
C {devices/opin.sym} 80 -20 0 0 {name=p4 lab=VOUT_INV
}
C {sky130_fd_pr/nfet_01v8.sym} 60 40 0 0 {name=M2
L=0.15
W=1
nf=1 
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
C {devices/lab_wire.sym} 80 90 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -110 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8.sym} 60 -70 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
