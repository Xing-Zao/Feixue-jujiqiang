EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 5FCB61E5
P 1455 3050
F 0 "U2" H 1455 3292 50  0000 C CNN
F 1 "XC6206" H 1455 3201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1455 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1455 3050 50  0001 C CNN
	1    1455 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1155 3050 1125 3050
$Comp
L Device:C_Small C15
U 1 1 5FCC37FE
P 1125 3160
F 0 "C15" H 950 3220 50  0000 L CNN
F 1 "1uF" H 975 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1125 3160 50  0001 C CNN
F 3 "~" H 1125 3160 50  0001 C CNN
	1    1125 3160
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 3060 1125 3050
$Comp
L power:Earth #PWR028
U 1 1 5FCC5235
P 1455 3360
F 0 "#PWR028" H 1455 3110 50  0001 C CNN
F 1 "Earth" H 1455 3210 50  0001 C CNN
F 2 "" H 1455 3360 50  0001 C CNN
F 3 "~" H 1455 3360 50  0001 C CNN
	1    1455 3360
	1    0    0    -1  
$EndComp
Wire Wire Line
	1455 3350 1125 3350
Wire Wire Line
	1125 3260 1125 3350
Wire Wire Line
	1455 3360 1455 3350
Connection ~ 1455 3350
$Comp
L Device:C_Small C18
U 1 1 5FCC7340
P 1825 3170
F 0 "C18" H 1850 3240 50  0000 L CNN
F 1 "1uF" H 1850 3115 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1825 3170 50  0001 C CNN
F 3 "~" H 1825 3170 50  0001 C CNN
	1    1825 3170
	1    0    0    -1  
$EndComp
Wire Wire Line
	1755 3050 1825 3050
Wire Wire Line
	1825 3050 1825 3070
Wire Wire Line
	1825 3270 1825 3350
Wire Wire Line
	1825 3350 1455 3350
$Comp
L power:+3.3V #PWR029
U 1 1 5FCC7F29
P 1825 3050
F 0 "#PWR029" H 1825 2900 50  0001 C CNN
F 1 "+3.3V" H 1840 3223 50  0000 C CNN
F 2 "" H 1825 3050 50  0001 C CNN
F 3 "" H 1825 3050 50  0001 C CNN
	1    1825 3050
	1    0    0    -1  
$EndComp
Connection ~ 1825 3050
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FCD92D6
P 4760 930
F 0 "J4" H 4750 630 50  0000 C CNN
F 1 "SWD" V 4900 860 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 4760 930 50  0001 C CNN
F 3 "~" H 4760 930 50  0001 C CNN
	1    4760 930 
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 5FCD9E03
P 4960 1030
F 0 "#PWR033" H 4960 880 50  0001 C CNN
F 1 "+3.3V" H 4975 1203 50  0000 C CNN
F 2 "" H 4960 1030 50  0001 C CNN
F 3 "" H 4960 1030 50  0001 C CNN
	1    4960 1030
	-1   0    0    1   
$EndComp
Text Label 4960 830  0    50   ~ 0
SWDIO
Text Label 4960 930  0    50   ~ 0
SWCLK
$Comp
L power:Earth #PWR032
U 1 1 5FCDB720
P 4960 730
F 0 "#PWR032" H 4960 480 50  0001 C CNN
F 1 "Earth" H 4960 580 50  0001 C CNN
F 2 "" H 4960 730 50  0001 C CNN
F 3 "~" H 4960 730 50  0001 C CNN
	1    4960 730 
	-1   0    0    1   
$EndComp
Text Notes 1275 2500 2    79   ~ 16
3.3V Power
Text Notes 3655 640  2    79   ~ 16
MCU
Text Notes 4370 620  2    79   ~ 16
SWD
Wire Notes Line
	5530 1320 4030 1320
Wire Notes Line
	4040 1320 4040 470 
$Comp
L Device:C_Small C17
U 1 1 5FF36286
P 6925 1060
F 0 "C17" V 6965 870 50  0000 L CNN
F 1 "20pF" V 6965 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6925 1060 50  0001 C CNN
F 3 "~" H 6925 1060 50  0001 C CNN
	1    6925 1060
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5FF3628C
P 6925 700
F 0 "C16" V 6865 520 50  0000 L CNN
F 1 "20pF" V 6865 730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6925 700 50  0001 C CNN
F 3 "~" H 6925 700 50  0001 C CNN
	1    6925 700 
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5FF36292
P 6345 910
F 0 "Y1" H 6295 710 50  0000 L CNN
F 1 "8MHz" H 6260 1080 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 6345 910 50  0001 C CNN
F 3 "~" H 6345 910 50  0001 C CNN
	1    6345 910 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6245 910  6245 1060
$Comp
L power:Earth #PWR027
U 1 1 5FF362A2
P 6285 790
F 0 "#PWR027" H 6285 540 50  0001 C CNN
F 1 "Earth" H 6285 640 50  0001 C CNN
F 2 "" H 6285 790 50  0001 C CNN
F 3 "~" H 6285 790 50  0001 C CNN
	1    6285 790 
	0    1    1    0   
$EndComp
Wire Wire Line
	6285 790  6345 790 
Wire Wire Line
	6345 790  6345 810 
$Comp
L power:Earth #PWR031
U 1 1 5FF362AB
P 7025 880
F 0 "#PWR031" H 7025 630 50  0001 C CNN
F 1 "Earth" H 7025 730 50  0001 C CNN
F 2 "" H 7025 880 50  0001 C CNN
F 3 "~" H 7025 880 50  0001 C CNN
	1    7025 880 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7025 700  7025 880 
Wire Wire Line
	7025 880  7025 950 
Connection ~ 7025 880 
Wire Wire Line
	6345 1010 6855 1010
Wire Wire Line
	6855 1010 6855 950 
Wire Wire Line
	6855 950  7025 950 
Connection ~ 7025 950 
Wire Wire Line
	7025 950  7025 1060
Wire Wire Line
	5905 960  5905 700 
Wire Wire Line
	6825 1060 6245 1060
Wire Wire Line
	6825 910  6825 700 
Wire Wire Line
	6445 910  6825 910 
Connection ~ 6825 700 
Text Label 5655 960  0    50   ~ 0
OSC_IN
Text Label 5655 1060 0    50   ~ 0
OSC_OUT
Wire Wire Line
	5655 960  5905 960 
Wire Notes Line
	3365 490  3365 7800
$Comp
L power:+5V #PWR026
U 1 1 60DCA3E7
P 1125 2775
F 0 "#PWR026" H 1125 2625 50  0001 C CNN
F 1 "+5V" H 1140 2948 50  0000 C CNN
F 2 "" H 1125 2775 50  0001 C CNN
F 3 "" H 1125 2775 50  0001 C CNN
	1    1125 2775
	1    0    0    -1  
$EndComp
Wire Notes Line
	8280 410  8280 7720
Text Label 8890 2480 2    50   ~ 0
LEDC_DI_OUT
Text Label 9690 2480 0    50   ~ 0
LEDC_DI_IN
$Comp
L Logic_LevelTranslator:SN74LVC2T45DCUR U6
U 1 1 61076642
P 9290 2580
F 0 "U6" H 9510 3020 50  0000 C CNN
F 1 "SN74LVC2T45DCUR" H 9700 2100 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 9340 2030 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc2t45.pdf" H 8390 2030 50  0001 C CNN
	1    9290 2580
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR048
U 1 1 61076648
P 9190 2080
F 0 "#PWR048" H 9190 1930 50  0001 C CNN
F 1 "+5V" H 9180 2220 50  0000 C CNN
F 2 "" H 9190 2080 50  0001 C CNN
F 3 "" H 9190 2080 50  0001 C CNN
	1    9190 2080
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR054
U 1 1 6107664E
P 9390 2080
F 0 "#PWR054" H 9390 1930 50  0001 C CNN
F 1 "+3.3V" H 9400 2220 50  0000 C CNN
F 2 "" H 9390 2080 50  0001 C CNN
F 3 "" H 9390 2080 50  0001 C CNN
	1    9390 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	8890 2880 8890 3080
Wire Wire Line
	8890 3080 9290 3080
$Comp
L power:Earth #PWR051
U 1 1 61076656
P 9290 3080
F 0 "#PWR051" H 9290 2830 50  0001 C CNN
F 1 "Earth" H 9290 2930 50  0001 C CNN
F 2 "" H 9290 3080 50  0001 C CNN
F 3 "~" H 9290 3080 50  0001 C CNN
	1    9290 3080
	1    0    0    -1  
$EndComp
Connection ~ 9290 3080
$Comp
L Logic_LevelTranslator:SN74LVC2T45DCUR U7
U 1 1 610A0C57
P 9290 3960
F 0 "U7" H 9510 4400 50  0000 C CNN
F 1 "SN74LVC2T45DCUR" H 9700 3480 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 9340 3410 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc2t45.pdf" H 8390 3410 50  0001 C CNN
	1    9290 3960
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR049
U 1 1 610A0C5D
P 9190 3460
F 0 "#PWR049" H 9190 3310 50  0001 C CNN
F 1 "+5V" H 9180 3600 50  0000 C CNN
F 2 "" H 9190 3460 50  0001 C CNN
F 3 "" H 9190 3460 50  0001 C CNN
	1    9190 3460
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR055
U 1 1 610A0C63
P 9390 3460
F 0 "#PWR055" H 9390 3310 50  0001 C CNN
F 1 "+3.3V" H 9400 3600 50  0000 C CNN
F 2 "" H 9390 3460 50  0001 C CNN
F 3 "" H 9390 3460 50  0001 C CNN
	1    9390 3460
	1    0    0    -1  
$EndComp
Wire Wire Line
	8890 4260 8890 4460
Wire Wire Line
	8890 4460 9290 4460
$Comp
L power:Earth #PWR052
U 1 1 610A0C6B
P 9290 4460
F 0 "#PWR052" H 9290 4210 50  0001 C CNN
F 1 "Earth" H 9290 4310 50  0001 C CNN
F 2 "" H 9290 4460 50  0001 C CNN
F 3 "~" H 9290 4460 50  0001 C CNN
	1    9290 4460
	1    0    0    -1  
$EndComp
Connection ~ 9290 4460
Text Label 9690 2680 0    50   ~ 0
LEDD_DI_IN
Text Label 8890 2680 2    50   ~ 0
LEDD_DI_OUT
Text Label 8890 3860 2    50   ~ 0
SERVOA_OUT
Text Label 9690 3860 0    50   ~ 0
SERVOA_IN
Text Label 8890 4060 2    50   ~ 0
SERVOB_OUT
Text Label 9690 4060 0    50   ~ 0
SERVOB_IN
$Comp
L power:Earth #PWR062
U 1 1 6046107D
P 10520 2120
F 0 "#PWR062" H 10520 1870 50  0001 C CNN
F 1 "Earth" H 10520 1970 50  0001 C CNN
F 2 "" H 10520 2120 50  0001 C CNN
F 3 "~" H 10520 2120 50  0001 C CNN
	1    10520 2120
	1    0    0    -1  
$EndComp
Text Label 10420 2120 3    50   ~ 0
LEDC_DI_OUT
$Comp
L power:+5V #PWR059
U 1 1 60461076
P 10320 2120
F 0 "#PWR059" H 10320 1970 50  0001 C CNN
F 1 "+5V" V 10320 2310 50  0000 C CNN
F 2 "" H 10320 2120 50  0001 C CNN
F 3 "" H 10320 2120 50  0001 C CNN
	1    10320 2120
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 60461070
P 10420 1920
F 0 "J8" H 10500 1962 50  0000 L CNN
F 1 "LEDA" H 10500 1871 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S3B-XH-A-1_1x03_P2.50mm_Horizontal" H 10420 1920 50  0001 C CNN
F 3 "~" H 10420 1920 50  0001 C CNN
	1    10420 1920
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR066
U 1 1 61108ADA
P 10950 2120
F 0 "#PWR066" H 10950 1870 50  0001 C CNN
F 1 "Earth" H 10950 1970 50  0001 C CNN
F 2 "" H 10950 2120 50  0001 C CNN
F 3 "~" H 10950 2120 50  0001 C CNN
	1    10950 2120
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR063
U 1 1 61108AE1
P 10750 2120
F 0 "#PWR063" H 10750 1970 50  0001 C CNN
F 1 "+5V" V 10750 2310 50  0000 C CNN
F 2 "" H 10750 2120 50  0001 C CNN
F 3 "" H 10750 2120 50  0001 C CNN
	1    10750 2120
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 61108AE7
P 10850 1920
F 0 "J9" H 10930 1962 50  0000 L CNN
F 1 "LEDA" H 10930 1871 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S3B-XH-A-1_1x03_P2.50mm_Horizontal" H 10850 1920 50  0001 C CNN
F 3 "~" H 10850 1920 50  0001 C CNN
	1    10850 1920
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR060
U 1 1 6111863C
P 10500 3830
F 0 "#PWR060" H 10500 3580 50  0001 C CNN
F 1 "Earth" H 10500 3680 50  0001 C CNN
F 2 "" H 10500 3830 50  0001 C CNN
F 3 "~" H 10500 3830 50  0001 C CNN
	1    10500 3830
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR057
U 1 1 61118643
P 10300 3830
F 0 "#PWR057" H 10300 3680 50  0001 C CNN
F 1 "+5V" V 10300 4020 50  0000 C CNN
F 2 "" H 10300 3830 50  0001 C CNN
F 3 "" H 10300 3830 50  0001 C CNN
	1    10300 3830
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 61118649
P 10400 3630
F 0 "J6" H 10480 3672 50  0000 L CNN
F 1 "SERVOA" H 10480 3581 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 10400 3630 50  0001 C CNN
F 3 "~" H 10400 3630 50  0001 C CNN
	1    10400 3630
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR067
U 1 1 61126B28
P 10970 3830
F 0 "#PWR067" H 10970 3580 50  0001 C CNN
F 1 "Earth" H 10970 3680 50  0001 C CNN
F 2 "" H 10970 3830 50  0001 C CNN
F 3 "~" H 10970 3830 50  0001 C CNN
	1    10970 3830
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR064
U 1 1 61126B2F
P 10770 3830
F 0 "#PWR064" H 10770 3680 50  0001 C CNN
F 1 "+5V" V 10770 4020 50  0000 C CNN
F 2 "" H 10770 3830 50  0001 C CNN
F 3 "" H 10770 3830 50  0001 C CNN
	1    10770 3830
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 61126B35
P 10870 3630
F 0 "J10" H 10950 3672 50  0000 L CNN
F 1 "SERVOB" H 10950 3581 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 10870 3630 50  0001 C CNN
F 3 "~" H 10870 3630 50  0001 C CNN
	1    10870 3630
	0    -1   -1   0   
$EndComp
Text Label 10400 3830 3    50   ~ 0
SERVOA_OUT
Text Label 10870 3830 3    50   ~ 0
SERVOB_OUT
Text Label 10850 2120 3    50   ~ 0
LEDD_DI_OUT
Text Notes 1100 625  2    79   ~ 16
Power IN
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60C2927D
P 2900 3050
F 0 "#FLG01" H 2900 3125 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 3223 50  0000 C CNN
F 2 "" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 60C2EA35
P 2900 3050
F 0 "#PWR011" H 2900 2900 50  0001 C CNN
F 1 "+5V" H 2915 3223 50  0000 C CNN
F 2 "" H 2900 3050 50  0001 C CNN
F 3 "" H 2900 3050 50  0001 C CNN
	1    2900 3050
	-1   0    0    1   
$EndComp
Text Notes 1240 3645 2    79   ~ 16
Back Power
$Comp
L Device:Battery_Cell BT1
U 1 1 60C5F4E2
P 1325 4575
F 0 "BT1" H 1175 4725 50  0000 L CNN
F 1 "MS621FE" H 950 4550 50  0000 L CNN
F 2 "Battery:BatteryHolder_Seiko_MS621F" V 1325 4635 50  0001 C CNN
F 3 "~" V 1325 4635 50  0001 C CNN
	1    1325 4575
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60C6AF29
P 1325 4150
F 0 "R1" H 1235 4110 50  0000 C CNN
F 1 "680R" H 1185 4190 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1325 4150 50  0001 C CNN
F 3 "~" H 1325 4150 50  0001 C CNN
	1    1325 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1325 4050 1325 3975
$Comp
L power:+3.3V #PWR05
U 1 1 60CA2066
P 1325 3950
F 0 "#PWR05" H 1325 3800 50  0001 C CNN
F 1 "+3.3V" H 1340 4123 50  0000 C CNN
F 2 "" H 1325 3950 50  0001 C CNN
F 3 "" H 1325 3950 50  0001 C CNN
	1    1325 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 4250 1325 4350
Wire Wire Line
	1475 4350 1325 4350
Connection ~ 1325 4350
Wire Wire Line
	1325 4350 1325 4375
$Comp
L power:Earth #PWR023
U 1 1 5FE5FC73
P 1325 4875
F 0 "#PWR023" H 1325 4625 50  0001 C CNN
F 1 "Earth" H 1325 4725 50  0001 C CNN
F 2 "" H 1325 4875 50  0001 C CNN
F 3 "~" H 1325 4875 50  0001 C CNN
	1    1325 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 4875 1325 4850
Wire Wire Line
	1325 4675 1325 4850
Connection ~ 1325 4850
Wire Wire Line
	1325 4850 1675 4850
$Comp
L power:+5V #PWR06
U 1 1 60D7D019
P 1775 4650
F 0 "#PWR06" H 1775 4500 50  0001 C CNN
F 1 "+5V" H 1790 4823 50  0000 C CNN
F 2 "" H 1775 4650 50  0001 C CNN
F 3 "" H 1775 4650 50  0001 C CNN
	1    1775 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1775 4650 1675 4650
$Comp
L Device:R_Small R2
U 1 1 60D41348
P 1675 4750
F 0 "R2" H 1585 4710 50  0000 C CNN
F 1 "100K" H 1535 4790 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1675 4750 50  0001 C CNN
F 3 "~" H 1675 4750 50  0001 C CNN
	1    1675 4750
	-1   0    0    1   
$EndComp
Connection ~ 1675 4650
$Comp
L SamacSys_Parts:IRLML6401TRPBF Q1
U 1 1 60CBEA08
P 1675 4350
F 0 "Q1" V 1525 4175 50  0000 C CNN
F 1 "AO3400" V 1600 4075 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1875 4750 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/0301316P" H 1875 4650 50  0001 L CNN
F 4 "INFINEON - IRLML6401TRPBF - MOSFET, P, MICRO3" H 1875 4550 50  0001 L CNN "Description"
F 5 "1.12" H 1875 4450 50  0001 L CNN "Height"
F 6 "0301316P" H 1875 4350 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/0301316P" H 1875 4250 50  0001 L CNN "RS Price/Stock"
F 8 "Infineon" H 1875 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "IRLML6401TRPBF" H 1875 4050 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70017403" H 1875 3950 50  0001 L CNN "Allied_Number"
	1    1675 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 60DB9CE4
P 2420 4200
F 0 "#PWR08" H 2420 4050 50  0001 C CNN
F 1 "+5V" H 2435 4373 50  0000 C CNN
F 2 "" H 2420 4200 50  0001 C CNN
F 3 "" H 2420 4200 50  0001 C CNN
	1    2420 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60DC7590
P 2420 4300
F 0 "R3" H 2330 4260 50  0000 C CNN
F 1 "1M" H 2310 4340 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2420 4300 50  0001 C CNN
F 3 "~" H 2420 4300 50  0001 C CNN
	1    2420 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60DCD263
P 2420 4520
F 0 "R5" H 2330 4480 50  0000 C CNN
F 1 "1M" H 2310 4560 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2420 4520 50  0001 C CNN
F 3 "~" H 2420 4520 50  0001 C CNN
	1    2420 4520
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR010
U 1 1 60DD392C
P 2420 4620
F 0 "#PWR010" H 2420 4370 50  0001 C CNN
F 1 "Earth" H 2420 4470 50  0001 C CNN
F 2 "" H 2420 4620 50  0001 C CNN
F 3 "~" H 2420 4620 50  0001 C CNN
	1    2420 4620
	1    0    0    -1  
$EndComp
Wire Wire Line
	2420 4400 2420 4410
Wire Wire Line
	2420 4410 2820 4410
Connection ~ 2420 4410
Wire Wire Line
	2420 4410 2420 4420
Text Label 2590 4410 0    50   ~ 0
5V_check
Text Label 5900 4475 0    50   ~ 0
5V_check
Wire Wire Line
	1875 4350 1875 3975
Wire Wire Line
	1875 3975 1325 3975
Connection ~ 1325 3975
Wire Wire Line
	1325 3975 1325 3950
$Comp
L Switch:SW_Push_Open SW1
U 1 1 60E1266E
P 1025 5600
F 0 "SW1" H 885 5690 50  0000 C CNN
F 1 "MODE_BTN" H 1030 5510 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 1025 5800 50  0001 C CNN
F 3 "~" H 1025 5800 50  0001 C CNN
	1    1025 5600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 60E12674
P 825 5600
F 0 "#PWR01" H 825 5350 50  0001 C CNN
F 1 "Earth" H 825 5450 50  0001 C CNN
F 2 "" H 825 5600 50  0001 C CNN
F 3 "~" H 825 5600 50  0001 C CNN
	1    825  5600
	0    1    1    0   
$EndComp
Text Label 1225 5600 0    50   ~ 0
MODE_KEY
$Comp
L Switch:SW_Push_Open SW2
U 1 1 60E18E17
P 1025 5950
F 0 "SW2" H 885 6040 50  0000 C CNN
F 1 "SHOT_BTN" H 1030 5860 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 1025 6150 50  0001 C CNN
F 3 "~" H 1025 6150 50  0001 C CNN
	1    1025 5950
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR02
U 1 1 60E18E1D
P 825 5950
F 0 "#PWR02" H 825 5700 50  0001 C CNN
F 1 "Earth" H 825 5800 50  0001 C CNN
F 2 "" H 825 5950 50  0001 C CNN
F 3 "~" H 825 5950 50  0001 C CNN
	1    825  5950
	0    1    1    0   
$EndComp
Text Label 1225 5950 0    50   ~ 0
SHOT_KEY
Text Label 3900 4475 2    50   ~ 0
SHOT_KEY
Text Label 3900 4375 2    50   ~ 0
MODE_KEY
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60E51215
P 2525 3050
F 0 "#FLG0101" H 2525 3125 50  0001 C CNN
F 1 "PWR_FLAG" H 2525 3223 50  0000 C CNN
F 2 "" H 2525 3050 50  0001 C CNN
F 3 "~" H 2525 3050 50  0001 C CNN
	1    2525 3050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 60E516F3
P 2525 3050
F 0 "#PWR0101" H 2525 2800 50  0001 C CNN
F 1 "Earth" H 2525 2900 50  0001 C CNN
F 2 "" H 2525 3050 50  0001 C CNN
F 3 "~" H 2525 3050 50  0001 C CNN
	1    2525 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 60B13E46
P 3675 4075
F 0 "#PWR014" H 3675 3925 50  0001 C CNN
F 1 "+3.3V" H 3690 4248 50  0000 C CNN
F 2 "" H 3675 4075 50  0001 C CNN
F 3 "" H 3675 4075 50  0001 C CNN
	1    3675 4075
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR017
U 1 1 60B1893A
P 3675 4175
F 0 "#PWR017" H 3675 3925 50  0001 C CNN
F 1 "Earth" H 3675 4025 50  0001 C CNN
F 2 "" H 3675 4175 50  0001 C CNN
F 3 "~" H 3675 4175 50  0001 C CNN
	1    3675 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4175 3675 4175
Wire Wire Line
	3900 4075 3675 4075
Text Label 5000 5075 3    50   ~ 0
SERVOB_IN
Text Label 5100 5075 3    50   ~ 0
SERVOA_IN
Text Label 5900 3975 0    50   ~ 0
SWDIO
Text Label 5900 3875 0    50   ~ 0
SWCLK
$Comp
L Device:C_Small C1
U 1 1 60B3151E
P 3875 5200
F 0 "C1" H 3755 5260 50  0000 L CNN
F 1 "0.1uF" H 3755 5140 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3875 5200 50  0001 C CNN
F 3 "~" H 3875 5200 50  0001 C CNN
	1    3875 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 60B31EAA
P 3775 5200
F 0 "#PWR018" H 3775 5050 50  0001 C CNN
F 1 "+3.3V" H 3790 5373 50  0000 C CNN
F 2 "" H 3775 5200 50  0001 C CNN
F 3 "" H 3775 5200 50  0001 C CNN
	1    3775 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR019
U 1 1 60B328D9
P 3975 5200
F 0 "#PWR019" H 3975 4950 50  0001 C CNN
F 1 "Earth" H 3975 5050 50  0001 C CNN
F 2 "" H 3975 5200 50  0001 C CNN
F 3 "~" H 3975 5200 50  0001 C CNN
	1    3975 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5905 700  6825 700 
$Comp
L Device:R_Small R7
U 1 1 60B4EDE4
P 6145 1060
F 0 "R7" V 6075 1060 50  0000 C CNN
F 1 "390R" V 6220 1070 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6145 1060 50  0001 C CNN
F 3 "~" H 6145 1060 50  0001 C CNN
	1    6145 1060
	0    1    1    0   
$EndComp
Connection ~ 6245 1060
Wire Wire Line
	6045 1060 5655 1060
Text Label 3900 3875 2    50   ~ 0
OSC_IN
Text Label 3900 3975 2    50   ~ 0
OSC_OUT
NoConn ~ 3900 4275
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60B700B9
P 1700 6450
F 0 "J2" H 1780 6442 50  0000 L CNN
F 1 "R_LED" H 1780 6351 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 1700 6450 50  0001 C CNN
F 3 "~" H 1700 6450 50  0001 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 60B71E2F
P 1400 6750
F 0 "Q2" H 1590 6796 50  0000 L CNN
F 1 "SS8050" H 1590 6705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1600 6850 50  0001 C CNN
F 3 "~" H 1400 6750 50  0001 C CNN
	1    1400 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 60B72588
P 1100 6750
F 0 "R6" V 1175 6750 50  0000 C CNN
F 1 "1K" V 1025 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1100 6750 50  0001 C CNN
F 3 "~" H 1100 6750 50  0001 C CNN
	1    1100 6750
	0    -1   -1   0   
$EndComp
Text Label 1000 6750 2    50   ~ 0
LED_R
$Comp
L power:Earth #PWR013
U 1 1 60B73E50
P 1500 6950
F 0 "#PWR013" H 1500 6700 50  0001 C CNN
F 1 "Earth" H 1500 6800 50  0001 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "~" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 60B77B70
P 1500 6450
F 0 "#PWR012" H 1500 6300 50  0001 C CNN
F 1 "+3.3V" V 1600 6525 50  0000 C CNN
F 2 "" H 1500 6450 50  0001 C CNN
F 3 "" H 1500 6450 50  0001 C CNN
	1    1500 6450
	0    -1   -1   0   
$EndComp
Text Label 5200 5075 3    50   ~ 0
LED_R
NoConn ~ 4600 3275
NoConn ~ 4900 3275
NoConn ~ 5000 3275
NoConn ~ 5100 3275
NoConn ~ 5200 3275
NoConn ~ 4900 5075
Text Label 4800 5075 3    50   ~ 0
LEDD_DI_IN
Text Label 4700 5075 3    50   ~ 0
LEDC_DI_IN
$Comp
L SamacSys_Parts:STM32G031G6U6 IC1
U 1 1 60B10257
P 3900 3875
F 0 "IC1" H 4775 3450 50  0000 L CNN
F 1 "STM32G031G6U6" H 4550 3325 50  0000 L CNN
F 2 "SamacSys_Parts:UFQFPN28" H 5750 4275 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32g031c6.pdf" H 5750 4175 50  0001 L CNN
F 4 "STMICROELECTRONICS - STM32G031G6U6 - ARM MCU, STM32 Family STM32G0 Series Microcontrollers, ARM Cortex-M0+, 32bit, 64 MHz, 32 KB, 8 KB" H 5750 4075 50  0001 L CNN "Description"
F 5 "0.6" H 5750 3975 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 5750 3875 50  0001 L CNN "Manufacturer_Name"
F 7 "STM32G031G6U6" H 5750 3775 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "STM32G031G6U6" H 5750 3675 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/stm32g031g6u6/stmicroelectronics" H 5750 3575 50  0001 L CNN "Arrow Price/Stock"
F 10 "511-STM32G031G6U6" H 5750 3475 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/STM32G031G6U6?qs=uwxL4vQweFPW1MMtF4vVDQ%3D%3D" H 5750 3375 50  0001 L CNN "Mouser Price/Stock"
	1    3900 3875
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:SS34A D1
U 1 1 60B94BE2
P 1125 2900
F 0 "D1" V 1150 2700 50  0000 L CNN
F 1 "SS14F" V 1075 2550 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 1575 2900 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/9179196P" H 1575 2800 50  0001 L CNN
F 4 "HY Electronic Corp SS34A, SMT Rectifier Schottky Diode, 40V 3A, 2-Pin SMA" H 1575 2700 50  0001 L CNN "Description"
F 5 "2.62" H 1575 2600 50  0001 L CNN "Height"
F 6 "9179196P" H 1575 2500 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/9179196P" H 1575 2400 50  0001 L CNN "RS Price/Stock"
F 8 "HY Electronic Corp" H 1575 2300 50  0001 L CNN "Manufacturer_Name"
F 9 "SS34A" H 1575 2200 50  0001 L CNN "Manufacturer_Part_Number"
	1    1125 2900
	0    1    -1   0   
$EndComp
Connection ~ 1125 3050
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 60C6704C
P 6100 4175
F 0 "J3" H 6180 4167 50  0000 L CNN
F 1 "EXT" H 6180 4076 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 6100 4175 50  0001 C CNN
F 3 "~" H 6100 4175 50  0001 C CNN
	1    6100 4175
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR09
U 1 1 60B26894
P 1710 970
F 0 "#PWR09" H 1710 720 50  0001 C CNN
F 1 "Earth" H 1710 820 50  0001 C CNN
F 2 "" H 1710 970 50  0001 C CNN
F 3 "~" H 1710 970 50  0001 C CNN
	1    1710 970 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 60B2871D
P 1710 870
F 0 "#PWR04" H 1710 720 50  0001 C CNN
F 1 "+5V" H 1725 1043 50  0000 C CNN
F 2 "" H 1710 870 50  0001 C CNN
F 3 "" H 1710 870 50  0001 C CNN
	1    1710 870 
	0    -1   -1   0   
$EndComp
Text Label 1710 1140 2    50   ~ 0
RX
Text Label 1710 1240 2    50   ~ 0
TX
Text Label 4700 3275 1    50   ~ 0
RX
Text Label 4800 3275 1    50   ~ 0
TX
$Comp
L SamacSys_Parts:JQ8900-16P U1
U 1 1 60B2E03E
P 9370 890
F 0 "U1" H 9470 1285 50  0000 C CNN
F 1 "JQ8900-16P" H 9470 1194 50  0000 C CNN
F 2 "SamacSys_Parts:JQ8900-16P" H 9370 1150 50  0001 C CNN
F 3 "" H 9370 1150 50  0001 C CNN
	1    9370 890 
	1    0    0    -1  
$EndComp
Text Label 4600 5075 3    50   ~ 0
SPK_TX
Text Label 9000 940  2    50   ~ 0
SPK_TX
NoConn ~ 9000 1040
NoConn ~ 9000 840 
NoConn ~ 9000 740 
NoConn ~ 9940 750 
NoConn ~ 9940 850 
NoConn ~ 9940 950 
NoConn ~ 9940 1050
NoConn ~ 9940 1150
NoConn ~ 9940 1250
NoConn ~ 9940 1350
NoConn ~ 9940 1450
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 60B3AA08
P 8800 1440
F 0 "J5" H 8820 1175 50  0000 C CNN
F 1 "SPK" H 8800 1250 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 8800 1440 50  0001 C CNN
F 3 "~" H 8800 1440 50  0001 C CNN
	1    8800 1440
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60B3BEB3
P 8705 1240
F 0 "#PWR016" H 8705 1090 50  0001 C CNN
F 1 "+5V" H 8720 1413 50  0000 C CNN
F 2 "" H 8705 1240 50  0001 C CNN
F 3 "" H 8705 1240 50  0001 C CNN
	1    8705 1240
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 1240 8705 1240
Wire Wire Line
	9000 1140 8705 1140
$Comp
L power:Earth #PWR015
U 1 1 60B3F423
P 8705 1140
F 0 "#PWR015" H 8705 890 50  0001 C CNN
F 1 "Earth" H 8705 990 50  0001 C CNN
F 2 "" H 8705 1140 50  0001 C CNN
F 3 "~" H 8705 1140 50  0001 C CNN
	1    8705 1140
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60B5A17C
P 1910 870
F 0 "J1" H 1990 862 50  0000 L CNN
F 1 "POWER" H 1990 771 50  0000 L CNN
F 2 "Connector:JWT_A3963_1x02_P3.96mm_Vertical" H 1910 870 50  0001 C CNN
F 3 "~" H 1910 870 50  0001 C CNN
	1    1910 870 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 60B5AD89
P 1910 1140
F 0 "J7" H 1990 1132 50  0000 L CNN
F 1 "UART" H 1990 1041 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1910 1140 50  0001 C CNN
F 3 "~" H 1910 1140 50  0001 C CNN
	1    1910 1140
	1    0    0    -1  
$EndComp
$EndSCHEMATC
