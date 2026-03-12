v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -60 30 -60 {
lab=VB}
N -340 -60 -320 -60 {
lab=I_IN}
N -340 -60 -340 50 {
lab=I_IN}
N -340 50 30 50 {
lab=I_IN}
N 30 -40 30 50 {
lab=I_IN}
N -150 -10 -150 0 {
lab=VSS}
N -150 -120 -150 -110 {
lab=VDD}
N 180 -180 180 -170 {
lab=VDD}
N 180 70 180 80 {
lab=VSS}
N -350 -60 -340 -60 {
lab=I_IN}
N 330 -140 340 -140 {
lab=VP0}
N 330 -120 340 -120 {
lab=VP1}
N 330 -100 340 -100 {
lab=VP2}
N 330 -80 340 -80 {
lab=VP3}
N 330 -20 340 -20 {
lab=VN0}
N 330 0 340 0 {
lab=VN1}
N 330 20 340 20 {
lab=VN2}
N 330 40 340 40 {
lab=VN3}
C {imirror_bias.sym} -170 -60 0 0 {name=x1}
C {vco_core.sym} 180 -50 0 0 {name=x2}
C {devices/lab_wire.sym} -150 -120 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 180 -180 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -150 0 2 0 {name=p3 sig_type=std_logic lab=VSS

}
C {devices/lab_wire.sym} 180 80 2 0 {name=p4 sig_type=std_logic lab=VSS

}
C {devices/ipin.sym} -350 -60 0 0 {name=p5 lab=I_IN}
C {devices/opin.sym} 340 -140 0 0 {name=p6 lab=VP0}
C {devices/opin.sym} 340 -120 0 0 {name=p7 lab=VP1
}
C {devices/opin.sym} 340 -100 0 0 {name=p8 lab=VP2}
C {devices/opin.sym} 340 -80 0 0 {name=p9 lab=VP3}
C {devices/opin.sym} 340 -20 0 0 {name=p10 lab=VN0}
C {devices/opin.sym} 340 0 0 0 {name=p11 lab=VN1
}
C {devices/opin.sym} 340 20 0 0 {name=p12 lab=VN2}
C {devices/opin.sym} 340 40 0 0 {name=p13 lab=VN3}
C {devices/lab_wire.sym} 20 -60 0 0 {name=p14 sig_type=std_logic lab=VB
}
C {devices/iopin.sym} -90 -180 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} -90 -150 0 0 {name=p16 lab=VSS}
