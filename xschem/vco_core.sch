v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -430 -70 -400 -70 {
lab=S0_BAR}
N -390 -130 -390 -70 {
lab=S0_BAR}
N -390 -130 -360 -130 {
lab=S0_BAR}
N -400 -70 -390 -70 {
lab=S0_BAR}
N -50 -70 -20 -70 {
lab=S1_BAR}
N -20 -130 -20 -70 {
lab=S1_BAR}
N -20 -130 10 -130 {
lab=S1_BAR}
N 320 -70 350 -70 {
lab=S2_BAR}
N 350 -130 350 -70 {
lab=S2_BAR}
N 350 -130 380 -130 {
lab=S2_BAR}
N -430 -130 -400 -130 {
lab=S0}
N -400 -150 -400 -130 {
lab=S0}
N -400 -150 -360 -150 {
lab=S0}
N -50 -130 -30 -130 {
lab=S1}
N -30 -150 -30 -130 {
lab=S1}
N -30 -150 10 -150 {
lab=S1}
N 320 -130 340 -130 {
lab=S2}
N 340 -150 340 -130 {
lab=S2}
N 340 -150 380 -150 {
lab=S2}
N -590 -200 -590 -180 {
lab=VDD}
N -590 -20 -590 -10 {
lab=VSS}
N -590 -10 -590 0 {
lab=VSS}
N -220 -200 -220 -180 {
lab=VDD}
N -220 -20 -220 0 {
lab=VSS}
N 150 -200 150 -180 {
lab=VDD}
N 150 -20 150 0 {
lab=VSS}
N 520 -200 520 -180 {
lab=VDD}
N 520 -20 520 0 {
lab=VSS}
N -740 -50 -730 -50 {
lab=VB2}
N -740 -70 -730 -70 {
lab=VB1}
N -370 -70 -360 -70 {
lab=VB1}
N -370 -50 -360 -50 {
lab=VB2}
N 0 -70 10 -70 {
lab=VB1}
N 0 -50 10 -50 {
lab=VB2}
N 370 -70 380 -70 {
lab=VB1}
N 370 -50 380 -50 {
lab=VB2}
N -370 -80 -370 -70 {
lab=VB1}
N -370 -80 -350 -80 {
lab=VB1}
N -350 -90 -350 -80 {
lab=VB1}
N 0 -80 0 -70 {
lab=VB1}
N 0 -80 20 -80 {
lab=VB1}
N 20 -90 20 -80 {
lab=VB1}
N 370 -80 370 -70 {
lab=VB1}
N 370 -80 390 -80 {
lab=VB1}
N 390 -90 390 -80 {
lab=VB1}
N -60 -70 -50 -70 {
lab=S1_BAR}
N -60 -130 -50 -130 {
lab=S1}
N 310 -130 320 -130 {
lab=S2}
N 310 -70 320 -70 {
lab=S2_BAR}
N -740 -150 -730 -150 {
lab=S3}
N -740 -130 -730 -130 {
lab=S3_BAR}
N 680 -130 690 -130 {
lab=S3}
N 680 -70 690 -70 {
lab=S3_BAR}
N -430 -200 -430 -150 {
lab=V_PHASE0_PLUS}
N -60 -200 -60 -150 {
lab=V_PHASE1_PLUS}
N 310 -200 310 -150 {
lab=V_PHASE2_PLUS}
N 680 -200 680 -150 {
lab=V_PHASE3_PLUS}
N -430 -50 -430 -10 {
lab=V_PHASE0_MINUS}
N -60 -50 -60 -10 {
lab=V_PHASE1_MINUS}
N 310 -50 310 -10 {
lab=V_PHASE2_MINUS}
N 680 -50 680 -10 {
lab=V_PHASE3_MINUS}
N -680 -310 -670 -310 {
lab=V_BIAS_IMIRROR}
N -680 -280 -670 -280 {
lab=V_BIAS_TAIL}
C {diff_stage.sym} -580 -100 0 0 {name=x1}
C {diff_stage.sym} -210 -100 0 0 {name=x2}
C {diff_stage.sym} 160 -100 0 0 {name=x3}
C {diff_stage.sym} 530 -100 0 0 {name=x4}
C {devices/lab_wire.sym} -590 -190 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -220 -190 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 150 -190 0 0 {name=p3 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 520 -190 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 520 -10 2 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 150 -10 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 520 -10 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -220 -10 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 520 -10 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -590 -10 2 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -740 -70 0 0 {name=p11 sig_type=std_logic lab=VB1
}
C {devices/lab_wire.sym} -350 -90 0 0 {name=p12 sig_type=std_logic lab=VB1
}
C {devices/lab_wire.sym} 20 -90 0 0 {name=p13 sig_type=std_logic lab=VB1
}
C {devices/lab_wire.sym} 390 -90 0 0 {name=p14 sig_type=std_logic lab=VB1
}
C {devices/lab_wire.sym} -740 -50 0 0 {name=p15 sig_type=std_logic lab=VB2
}
C {devices/lab_wire.sym} -370 -50 0 0 {name=p16 sig_type=std_logic lab=VB2
}
C {devices/lab_wire.sym} 0 -50 0 0 {name=p17 sig_type=std_logic lab=VB2
}
C {devices/lab_wire.sym} 370 -50 0 0 {name=p18 sig_type=std_logic lab=VB2
}
C {devices/lab_wire.sym} -370 -150 0 0 {name=p19 sig_type=std_logic lab=S0
}
C {devices/lab_wire.sym} 0 -150 0 0 {name=p20 sig_type=std_logic lab=S1

}
C {devices/lab_wire.sym} 370 -150 0 0 {name=p21 sig_type=std_logic lab=S2
}
C {devices/lab_wire.sym} -390 -90 0 0 {name=p22 sig_type=std_logic lab=S0_BAR}
C {devices/lab_wire.sym} -20 -90 0 0 {name=p23 sig_type=std_logic lab=S1_BAR}
C {devices/lab_wire.sym} 350 -90 0 0 {name=p24 sig_type=std_logic lab=S2_BAR}
C {devices/lab_wire.sym} -740 -150 0 0 {name=p25 sig_type=std_logic lab=S3
}
C {devices/lab_wire.sym} -740 -130 0 0 {name=p26 sig_type=std_logic lab=S3_BAR}
C {devices/lab_wire.sym} 690 -130 2 0 {name=p27 sig_type=std_logic lab=S3
}
C {devices/lab_wire.sym} 690 -70 2 0 {name=p28 sig_type=std_logic lab=S3_BAR}
C {devices/opin.sym} -430 -200 0 0 {name=p29 lab=V_PHASE0_PLUS
}
C {devices/opin.sym} -60 -200 0 0 {name=p30 lab=V_PHASE1_PLUS
}
C {devices/opin.sym} 310 -200 0 0 {name=p31 lab=V_PHASE2_PLUS
}
C {devices/opin.sym} 680 -200 0 0 {name=p32 lab=V_PHASE3_PLUS
}
C {devices/opin.sym} -430 -10 0 0 {name=p33 lab=V_PHASE0_MINUS

}
C {devices/opin.sym} -60 -10 0 0 {name=p34 lab=V_PHASE1_MINUS

}
C {devices/opin.sym} 310 -10 0 0 {name=p35 lab=V_PHASE2_MINUS

}
C {devices/opin.sym} 680 -10 0 0 {name=p36 lab=V_PHASE3_MINUS

}
C {devices/ipin.sym} -680 -310 0 0 {name=p37 lab=V_BIAS_IMIRROR}
C {devices/ipin.sym} -680 -280 0 0 {name=p38 lab=V_BIAS_TAIL}
C {devices/lab_wire.sym} -670 -310 2 0 {name=p39 sig_type=std_logic lab=VB1}
C {devices/lab_wire.sym} -670 -280 2 0 {name=p40 sig_type=std_logic lab=VB2}
C {devices/iopin.sym} -590 -310 0 0 {name=p41 lab=VDD}
C {devices/iopin.sym} -590 -280 0 0 {name=p42 lab=VSS}
