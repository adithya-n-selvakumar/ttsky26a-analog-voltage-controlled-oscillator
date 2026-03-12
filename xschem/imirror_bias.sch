v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 10 -80 40 {
lab=VSS}
N 70 10 70 40 {
lab=VSS}
N -80 40 -80 60 {
lab=VSS}
N -80 60 70 60 {
lab=VSS}
N 70 40 70 60 {
lab=VSS}
N -40 10 30 10 {
lab=I_IN}
N -10 -40 -10 10 {
lab=I_IN}
N -80 -40 -10 -40 {
lab=I_IN}
N -80 -40 -80 -20 {
lab=I_IN}
N -80 -70 -80 -40 {
lab=I_IN}
N -120 -70 -80 -70 {
lab=I_IN}
N 70 -130 70 -100 {
lab=VDD}
N 70 -70 70 -20 {
lab=V_BIAS_IMIRROR}
N 70 -40 110 -40 {
lab=V_BIAS_IMIRROR}
N 110 -100 110 -40 {
lab=V_BIAS_IMIRROR}
N 110 -100 130 -100 {
lab=V_BIAS_IMIRROR}
N -0 60 -0 70 {
lab=VSS}
N 70 -140 70 -130 {
lab=VDD}
N 70 -150 70 -140 {
lab=VDD}
N -0 70 0 80 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -60 10 0 1 {name=M1
L=2
W=4
nf=2 
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
C {sky130_fd_pr/nfet_01v8.sym} 50 10 0 0 {name=M2
L=2
W=4
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
C {sky130_fd_pr/pfet_01v8.sym} 90 -100 0 1 {name=M3
L=0.25
W=4
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
C {devices/iopin.sym} 70 -150 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 0 80 0 0 {name=p2 lab=VSS

}
C {devices/opin.sym} 130 -100 0 0 {name=p3 lab=V_BIAS_IMIRROR
}
C {devices/ipin.sym} -120 -70 0 0 {name=p4 lab=I_IN}
