v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -30 -0 30 {
lab=Vout}
N -0 -140 0 -90 {
lab=VDD}
N -0 -140 -0 -60 {
lab=VDD}
N 0 90 -0 130 {
lab=VSS}
N 0 60 -0 130 {
lab=VSS}
N -60 -60 -40 -60 {
lab=VIN_INV}
N -60 -60 -60 60 {
lab=VIN_INV}
N -60 60 -40 60 {
lab=VIN_INV}
N -110 -0 -60 -0 {
lab=VIN_INV}
N -0 -0 50 -0 {
lab=Vout}
C {devices/iopin.sym} 0 -140 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 0 130 2 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -110 0 0 0 {name=p3 lab=VIN_INV}
C {devices/opin.sym} 50 0 0 0 {name=p4 lab=VOUT_INV}
C {sky130_fd_pr/nfet_01v8.sym} -20 60 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -60 0 0 {name=M2
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
