v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 -130 -200 -110 {
lab=VDD}
N -200 -130 210 -130 {
lab=VDD}
N 360 -130 360 -110 {
lab=VDD}
N -50 -60 60 -60 {
lab=V_OUT_PLUS}
N -370 -60 -350 -60 {
lab=V_OUT_MINUS}
N -370 -160 -370 -60 {
lab=V_OUT_MINUS}
N -370 -160 390 -160 {
lab=V_OUT_MINUS}
N 540 -160 540 -60 {
lab=V_OUT_MINUS}
N 510 -60 540 -60 {
lab=V_OUT_MINUS}
N 180 -40 180 60 {
lab=V_BIAS_IMIRROR}
N -380 60 10 60 {
lab=V_BIAS_IMIRROR}
N -380 -40 -380 60 {
lab=V_BIAS_IMIRROR}
N -380 -40 -350 -40 {
lab=V_BIAS_IMIRROR}
N 180 -60 210 -60 {
lab=V_OUT_PLUS}
N 180 -40 210 -40 {
lab=V_BIAS_IMIRROR}
N 510 -160 540 -160 {
lab=V_OUT_MINUS}
N 330 -130 360 -130 {
lab=VDD}
N -40 -80 -40 -60 {
lab=V_OUT_PLUS}
N 10 60 60 60 {
lab=V_BIAS_IMIRROR}
N -40 -80 -30 -80 {
lab=V_OUT_PLUS}
N 60 -60 120 -60 {
lab=V_OUT_PLUS}
N 270 -130 330 -130 {
lab=VDD}
N 450 -160 510 -160 {
lab=V_OUT_MINUS}
N 210 -130 270 -130 {
lab=VDD}
N 390 -160 450 -160 {
lab=V_OUT_MINUS}
N 120 -60 180 -60 {
lab=V_OUT_PLUS}
N -50 -40 -40 -40 {
lab=V_OUT_PLUS_BUFFER}
N 60 60 180 60 {
lab=V_BIAS_IMIRROR}
N 510 -40 520 -40 {
lab=V_OUT_MINUS_BUFFER}
N 540 -80 550 -80 {
lab=V_OUT_MINUS}
N -200 60 -200 80 {
lab=V_BIAS_IMIRROR}
N -220 80 -200 80 {
lab=V_BIAS_IMIRROR}
N -360 -20 -350 -20 {
lab=V_IN_MINUS}
N -360 -20 -360 40 {
lab=V_IN_MINUS}
N -360 40 -350 40 {
lab=V_IN_MINUS}
N 200 -20 210 -20 {
lab=V_IN_PLUS}
N 200 -20 200 40 {
lab=V_IN_PLUS}
N 200 40 210 40 {
lab=V_IN_PLUS}
N -200 30 -160 30 {
lab=VSS}
N 360 30 400 30 {
lab=VSS}
N -50 -20 -40 -20 {
lab=V_DRAIN_TAIL}
N 510 -20 520 -20 {
lab=V_DRAIN_TAIL}
N 140 90 140 120 {
lab=V_DRAIN_TAIL}
N 140 150 140 180 {
lab=VSS}
N 140 180 140 210 {
lab=VSS}
N 60 150 100 150 {
lab=V_BIAS_TAIL}
C {diff_stage_half.sym} -200 -40 0 0 {name=x1}
C {diff_stage_half.sym} 360 -40 0 0 {name=x2}
C {devices/lab_wire.sym} 90 -130 2 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/opin.sym} -30 -80 0 0 {name=p2 lab=V_OUT_PLUS
}
C {devices/opin.sym} -40 -40 0 0 {name=p3 lab=V_OUT_PLUS_BUFFER

}
C {devices/opin.sym} 550 -80 0 0 {name=p4 lab=V_OUT_MINUS
}
C {devices/opin.sym} 520 -40 0 0 {name=p5 lab=V_OUT_MINUS_BUFFER

}
C {devices/ipin.sym} -220 80 0 0 {name=p6 lab=V_BIAS_IMIRROR
}
C {devices/ipin.sym} -350 40 2 0 {name=p7 lab=V_IN_MINUS

}
C {devices/ipin.sym} 210 40 2 0 {name=p8 lab=V_IN_PLUS


}
C {devices/lab_wire.sym} -190 30 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 370 30 2 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -40 -20 2 0 {name=p12 sig_type=std_logic lab=V_DRAIN_TAIL


}
C {devices/lab_wire.sym} 520 -20 2 0 {name=p13 sig_type=std_logic lab=V_DRAIN_TAIL

}
C {sky130_fd_pr/nfet_01v8.sym} 120 150 0 0 {name=M1
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
C {devices/lab_wire.sym} 140 190 2 0 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 140 90 2 0 {name=p15 sig_type=std_logic lab=V_DRAIN_TAIL

}
C {devices/ipin.sym} 60 150 0 0 {name=p16 lab=V_BIAS_TAIL
}
C {devices/iopin.sym} 0 -260 0 0 {name=p17 lab=VDD}
C {devices/iopin.sym} 0 -230 0 0 {name=p18 lab=VSS}
