v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -210 70 -150 {
lab=VDD}
N -70 180 -70 260 {
lab=VDRAIN_TAIL}
N -150 150 -110 150 {
lab=VIN_DIFF}
N 70 -210 70 -120 {
lab=VDD}
N -130 -120 -110 -120 {
lab=VB_PFET}
N -70 -210 -70 -150 {
lab=VDD}
N -70 -210 -70 -120 {
lab=VDD}
N -70 -90 -70 -50 {
lab=VOUT_DIFF}
N -70 -50 70 -50 {
lab=VOUT_DIFF}
N 70 -90 70 -50 {
lab=VOUT_DIFF}
N 100 50 120 50 {
lab=VSS}
N 100 80 120 80 {
lab=VSS}
N 100 110 120 110 {
lab=VSS}
N -0 -50 -0 80 {
lab=VOUT_DIFF}
N -70 80 -0 80 {
lab=VOUT_DIFF}
N -70 80 -70 120 {
lab=VOUT_DIFF}
N 0 80 60 80 {
lab=VOUT_DIFF}
N 110 -120 130 -120 {
lab=Vd}
N -70 150 140 150 {
lab=VSS}
N 120 50 120 150 {
lab=VSS}
N 0 0 230 0 {
lab=VOUT_DIFF}
N 530 0 560 -0 {
lab=VOUT_DIFF_BUF}
N 140 150 380 150 {
lab=VSS}
N 380 70 380 150 {
lab=VSS}
N 200 150 200 180 {
lab=VSS}
N 110 -30 110 -0 {
lab=VOUT_DIFF}
N 70 -210 380 -210 {
lab=VDD}
N 380 -210 380 -70 {
lab=VDD}
N -70 -210 70 -210 {
lab=VDD}
N 190 -240 190 -210 {
lab=VDD}
C {devices/iopin.sym} 190 -240 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} 200 180 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} -150 150 0 0 {name=p4 lab=VIN_DIFF}
C {devices/ipin.sym} -130 -120 2 1 {name=p10 lab=VB_PFET}
C {devices/ipin.sym} 130 -120 2 0 {name=p2 lab=VFB}
C {devices/opin.sym} 110 -30 0 0 {name=p8 lab=VOUT_DIFF}
C {devices/opin.sym} -70 260 2 1 {name=p3 lab=VDRAIN_TAIL}
C {devices/opin.sym} 560 0 2 1 {name=p7 lab=VOUT_DIFF_BUF}
C {sky130_fd_pr/pfet_01v8.sym} 90 -120 0 1 {name=M7
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -90 -120 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -90 150 0 0 {name=M1
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
C {vco_buffer.sym} 380 0 0 0 {name=x1}
C {sky130_fd_pr/nfet_01v8.sym} 80 80 0 0 {name=M8
L=11
W=11
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
