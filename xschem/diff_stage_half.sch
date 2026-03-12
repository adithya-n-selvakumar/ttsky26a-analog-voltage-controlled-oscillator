v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 30 -220 70 {
lab=V_OUT_DIFF}
N -220 50 -110 50 {
lab=V_OUT_DIFF}
N -220 20 -220 30 {
lab=V_OUT_DIFF}
N -220 20 -150 20 {
lab=V_OUT_DIFF}
N -150 -20 -150 20 {
lab=V_OUT_DIFF}
N -150 -40 -150 -20 {
lab=V_OUT_DIFF}
N -150 -40 -70 -40 {
lab=V_OUT_DIFF}
N -70 -70 -70 -40 {
lab=V_OUT_DIFF}
N -220 -40 -150 -40 {
lab=V_OUT_DIFF}
N -220 -70 -220 -40 {
lab=V_OUT_DIFF}
N -220 -130 -220 -100 {
lab=VDD}
N -70 -130 -70 -100 {
lab=VDD}
N -220 -160 -220 -130 {
lab=VDD}
N -220 -160 -70 -160 {
lab=VDD}
N -70 -160 -70 -130 {
lab=VDD}
N -70 20 -60 20 {
lab=VSS}
N -60 20 -60 50 {
lab=VSS}
N -70 50 -60 50 {
lab=VSS}
N -60 50 -60 80 {
lab=VSS}
N -70 80 -60 80 {
lab=VSS}
N -220 100 -60 100 {
lab=VSS}
N -60 80 -60 100 {
lab=VSS}
N -220 130 -220 170 {
lab=#net1}
N -220 170 -140 170 {
lab=#net1}
N -280 -100 -260 -100 {
lab=V_BIAS_IMIRROR}
N -30 -100 -10 -100 {
lab=V_FB_CROSSCOUPLED}
N -280 100 -260 100 {
lab=V_IN_RING}
N -150 0 -40 0 {
lab=V_OUT_DIFF}
N -40 -40 -40 0 {
lab=V_OUT_DIFF}
N -40 -40 -0 -40 {
lab=V_OUT_DIFF}
N -40 0 200 0 {
lab=V_OUT_DIFF}
N 340 70 340 100 {
lab=VSS}
N -60 100 340 100 {
lab=VSS}
N 350 -160 350 -70 {
lab=VDD}
N -70 -160 350 -160 {
lab=VDD}
N -150 -180 -150 -160 {
lab=VDD}
N -120 100 -120 120 {
lab=VSS}
N 510 0 530 0 {
lab=V_OUT_DIFF_BUFFER}
C {sky130_fd_pr/pfet_01v8.sym} -240 -100 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -50 -100 0 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -240 100 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -90 50 0 0 {name=M4
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
C {devices/ipin.sym} -280 -100 0 0 {name=p1 lab=V_BIAS_IMIRROR
}
C {devices/ipin.sym} -10 -100 2 0 {name=p2 lab=V_FB_CROSSCOUPLED

}
C {devices/ipin.sym} -280 100 0 0 {name=p3 lab=V_IN_RING

}
C {devices/opin.sym} 0 -40 0 0 {name=p5 lab=V_OUT_DIFF
}
C {min_buffer.sym} 340 0 0 0 {name=x1}
C {devices/iopin.sym} -150 -180 0 0 {name=p6 lab=VDD
}
C {devices/iopin.sym} -120 120 0 0 {name=p7 lab=VSS}
C {devices/opin.sym} 530 0 0 0 {name=p8 lab=V_OUT_DIFF_BUFFER
}
C {devices/iopin.sym} -140 170 0 0 {name=p4 lab=V_DRAIN_TAIL
}
