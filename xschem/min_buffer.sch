v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -220 -180 -170 {
lab=VDD}
N -180 -220 190 -220 {
lab=VDD}
N 190 -220 190 -170 {
lab=VDD}
N -190 -30 -190 20 {
lab=VSS}
N -190 20 180 20 {
lab=VSS}
N 180 -30 180 20 {
lab=VSS}
N -20 -100 40 -100 {
lab=INT_BUFFER}
N -350 -100 -330 -100 {
lab=VIN_BUFFER}
N 350 -100 370 -100 {
lab=VOUT_BUFFER}
C {min_inv.sym} 190 -100 0 0 {name=x1}
C {min_inv.sym} -180 -100 0 0 {name=x2}
C {devices/lab_wire.sym} 0 -220 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 0 20 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 20 -100 3 0 {name=p3 sig_type=std_logic lab=INT_BUFFER
}
C {devices/ipin.sym} -350 -100 0 0 {name=p4 lab=VIN_BUFFER
}
C {devices/opin.sym} 370 -100 0 0 {name=p5 lab=VOUT_BUFFER
}
C {devices/iopin.sym} -250 -300 0 0 {name=p6 lab=VDD
}
C {devices/iopin.sym} -250 -270 0 0 {name=p7 lab=VSS}
