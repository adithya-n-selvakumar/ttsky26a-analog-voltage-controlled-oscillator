v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 250 -40 250 {
lab=VB_NFET}
N -520 90 -500 90 {
lab=VB_PFET}
N 110 90 130 90 {
lab=VB_PFET}
N -350 0 -350 40 {
lab=VDD}
N 0 280 0 310 {
lab=VSS}
N 0 250 0 280 {
lab=VSS}
N 0 190 -0 220 {
lab=VDRAIN_M5}
N 130 50 130 70 {
lab=VIN_N}
N 100 50 130 50 {
lab=VIN_N}
N 110 130 130 130 {
lab=VOUT_P}
N 130 110 130 130 {
lab=VOUT_P}
N -500 110 -500 130 {
lab=VOUT_N}
N -520 130 -500 130 {
lab=VOUT_N}
N -500 50 -500 70 {
lab=VIN_P}
N -520 50 -500 50 {
lab=VIN_P}
N -200 50 -200 70 {
lab=VOUT_P}
N -200 50 -170 50 {
lab=VOUT_P}
N -200 110 -200 130 {
lab=VOUT_P_BUF}
N -200 130 -170 130 {
lab=VOUT_P_BUF}
N 430 110 430 130 {
lab=VOUT_N_BUF}
N 430 130 470 130 {
lab=VOUT_N_BUF}
N 430 50 430 70 {
lab=VOUT_N}
N 430 50 470 50 {
lab=VOUT_N}
N 280 -0 280 40 {
lab=VDD}
N -350 0 280 0 {
lab=VDD}
N 0 -30 -0 -0 {}
C {devices/iopin.sym} 0 -30 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 310 0 1 {name=p1 lab=VSS}
C {devices/ipin.sym} -520 50 0 0 {name=p4 lab=VIN_P}
C {devices/ipin.sym} 100 50 0 0 {name=p6 lab=VIN_N}
C {devices/ipin.sym} -520 90 2 1 {name=p2 lab=VB_PFET}
C {devices/ipin.sym} -100 250 0 0 {name=p5 lab=VB_NFET}
C {devices/opin.sym} -170 50 0 0 {name=p8 lab=VOUT_P}
C {devices/opin.sym} 470 50 0 0 {name=p7 lab=VOUT_N}
C {devices/opin.sym} -170 130 0 0 {name=p18 lab=VOUT_P_BUF}
C {devices/opin.sym} 470 130 0 0 {name=p19 lab=VOUT_N_BUF}
C {devices/lab_pin.sym} 110 90 2 1 {name=p10 sig_type=std_logic lab=VB_PFET}
C {vco_stage_half.sym} -350 90 0 0 {name=x1}
C {vco_stage_half.sym} 280 90 0 0 {name=x2}
C {devices/lab_pin.sym} -350 140 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 140 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 40 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 90 0 1 {name=p14 sig_type=std_logic lab=VDRAIN_M5}
C {devices/lab_pin.sym} -200 90 0 1 {name=p15 sig_type=std_logic lab=VDRAIN_M5}
C {devices/lab_pin.sym} 110 130 2 1 {name=p16 sig_type=std_logic lab=VOUT_P}
C {devices/lab_pin.sym} -520 130 2 1 {name=p17 sig_type=std_logic lab=VOUT_N}
C {sky130_fd_pr/nfet_01v8.sym} -20 250 0 0 {name=M5
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
C {devices/lab_pin.sym} 0 190 0 1 {name=p9 sig_type=std_logic lab=VDRAIN_M5
}
