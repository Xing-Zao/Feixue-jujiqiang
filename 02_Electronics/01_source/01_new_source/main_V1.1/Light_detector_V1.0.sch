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
Wire Notes Line
	3365 490  3365 7800
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
Text Notes 1150 865  2    79   ~ 16
Power IN
$Comp
L power:Earth #PWR017
U 1 1 60B1893A
P 3800 3175
F 0 "#PWR017" H 3800 2925 50  0001 C CNN
F 1 "Earth" H 3800 3025 50  0001 C CNN
F 2 "" H 3800 3175 50  0001 C CNN
F 3 "~" H 3800 3175 50  0001 C CNN
	1    3800 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3175 3800 3175
Wire Wire Line
	4050 3075 3800 3075
$Comp
L SamacSys_Parts:STM32G031G6U6 IC1
U 1 1 60B10257
P 4050 2875
F 0 "IC1" H 4925 2450 50  0000 L CNN
F 1 "STM32G031G6U6" H 4700 2325 50  0000 L CNN
F 2 "SamacSys_Parts:UFQFPN28" H 5900 3275 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32g031c6.pdf" H 5900 3175 50  0001 L CNN
F 4 "STMICROELECTRONICS - STM32G031G6U6 - ARM MCU, STM32 Family STM32G0 Series Microcontrollers, ARM Cortex-M0+, 32bit, 64 MHz, 32 KB, 8 KB" H 5900 3075 50  0001 L CNN "Description"
F 5 "0.6" H 5900 2975 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 5900 2875 50  0001 L CNN "Manufacturer_Name"
F 7 "STM32G031G6U6" H 5900 2775 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "STM32G031G6U6" H 5900 2675 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/stm32g031g6u6/stmicroelectronics" H 5900 2575 50  0001 L CNN "Arrow Price/Stock"
F 10 "511-STM32G031G6U6" H 5900 2475 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/STM32G031G6U6?qs=uwxL4vQweFPW1MMtF4vVDQ%3D%3D" H 5900 2375 50  0001 L CNN "Mouser Price/Stock"
	1    4050 2875
	1    0    0    -1  
$EndComp
Text Label 4750 4075 3    50   ~ 0
SPK_TX
Text Label 4950 2275 1    50   ~ 0
TX
Text Label 4850 2275 1    50   ~ 0
RX
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 60C6704C
P 6250 3175
F 0 "J3" H 6330 3167 50  0000 L CNN
F 1 "EXT" H 6330 3076 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 6250 3175 50  0001 C CNN
F 3 "~" H 6250 3175 50  0001 C CNN
	1    6250 3175
	1    0    0    -1  
$EndComp
Text Label 4850 4075 3    50   ~ 0
LEDC_DI_IN
Text Label 4950 4075 3    50   ~ 0
LEDD_DI_IN
NoConn ~ 5050 4075
NoConn ~ 5350 2275
NoConn ~ 5250 2275
NoConn ~ 5150 2275
NoConn ~ 5050 2275
NoConn ~ 4750 2275
Text Label 5350 4075 3    50   ~ 0
LED_R
NoConn ~ 4050 3275
Text Label 4050 2975 2    50   ~ 0
OSC_OUT
$Comp
L power:Earth #PWR019
U 1 1 60B328D9
P 4108 4205
F 0 "#PWR019" H 4108 3955 50  0001 C CNN
F 1 "Earth" H 4108 4055 50  0001 C CNN
F 2 "" H 4108 4205 50  0001 C CNN
F 3 "~" H 4108 4205 50  0001 C CNN
	1    4108 4205
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 60B31EAA
P 3908 4205
F 0 "#PWR018" H 3908 4055 50  0001 C CNN
F 1 "+3.3V" H 3923 4378 50  0000 C CNN
F 2 "" H 3908 4205 50  0001 C CNN
F 3 "" H 3908 4205 50  0001 C CNN
	1    3908 4205
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 60B3151E
P 4008 4205
F 0 "C1" H 3888 4265 50  0000 L CNN
F 1 "0.1uF" H 3888 4145 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4008 4205 50  0001 C CNN
F 3 "~" H 4008 4205 50  0001 C CNN
	1    4008 4205
	0    -1   -1   0   
$EndComp
Text Label 6050 2875 0    50   ~ 0
SWCLK
Text Label 6050 2975 0    50   ~ 0
SWDIO
Text Label 5250 4075 3    50   ~ 0
SERVOA_IN
Text Label 5150 4075 3    50   ~ 0
SERVOB_IN
$Comp
L power:+3.3V #PWR014
U 1 1 60B13E46
P 3800 3075
F 0 "#PWR014" H 3800 2925 50  0001 C CNN
F 1 "+3.3V" H 3815 3248 50  0000 C CNN
F 2 "" H 3800 3075 50  0001 C CNN
F 3 "" H 3800 3075 50  0001 C CNN
	1    3800 3075
	0    -1   -1   0   
$EndComp
Text Label 4050 3375 2    50   ~ 0
MODE_KEY
Text Label 4050 3475 2    50   ~ 0
SHOT_KEY
Text Label 6050 3475 0    50   ~ 0
5V_check
$Comp
L Device:C_Small C17
U 1 1 5FF36286
P 7145 1370
F 0 "C17" V 7185 1180 50  0000 L CNN
F 1 "20pF" V 7185 1410 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7145 1370 50  0001 C CNN
F 3 "~" H 7145 1370 50  0001 C CNN
	1    7145 1370
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5FF3628C
P 7145 1010
F 0 "C16" V 7085 830 50  0000 L CNN
F 1 "20pF" V 7085 1040 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7145 1010 50  0001 C CNN
F 3 "~" H 7145 1010 50  0001 C CNN
	1    7145 1010
	0    1    1    0   
$EndComp
Connection ~ 7045 1010
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5FF36292
P 6565 1220
F 0 "Y1" H 6515 1020 50  0000 L CNN
F 1 "8MHz" H 6480 1390 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 6565 1220 50  0001 C CNN
F 3 "~" H 6565 1220 50  0001 C CNN
	1    6565 1220
	1    0    0    -1  
$EndComp
Wire Wire Line
	6465 1220 6465 1370
Connection ~ 6465 1370
$Comp
L power:Earth #PWR027
U 1 1 5FF362A2
P 6505 1100
F 0 "#PWR027" H 6505 850 50  0001 C CNN
F 1 "Earth" H 6505 950 50  0001 C CNN
F 2 "" H 6505 1100 50  0001 C CNN
F 3 "~" H 6505 1100 50  0001 C CNN
	1    6505 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	6505 1100 6565 1100
Wire Wire Line
	6565 1100 6565 1120
$Comp
L power:Earth #PWR031
U 1 1 5FF362AB
P 7245 1190
F 0 "#PWR031" H 7245 940 50  0001 C CNN
F 1 "Earth" H 7245 1040 50  0001 C CNN
F 2 "" H 7245 1190 50  0001 C CNN
F 3 "~" H 7245 1190 50  0001 C CNN
	1    7245 1190
	0    -1   -1   0   
$EndComp
Connection ~ 7245 1190
Wire Wire Line
	7245 1010 7245 1190
Wire Wire Line
	7245 1190 7245 1260
Wire Wire Line
	6565 1320 7075 1320
Wire Wire Line
	7075 1320 7075 1260
Wire Wire Line
	7075 1260 7245 1260
Connection ~ 7245 1260
Wire Wire Line
	7245 1260 7245 1370
Wire Wire Line
	6125 1270 6125 1010
Wire Wire Line
	7045 1370 6465 1370
Wire Wire Line
	7045 1220 7045 1010
Wire Wire Line
	6665 1220 7045 1220
Text Label 5875 1270 0    50   ~ 0
OSC_IN
Text Label 5875 1370 0    50   ~ 0
OSC_OUT
Wire Wire Line
	5875 1270 6125 1270
Wire Wire Line
	6125 1010 7045 1010
$Comp
L Device:R_Small R7
U 1 1 60B4EDE4
P 6365 1370
F 0 "R7" V 6295 1370 50  0000 C CNN
F 1 "390R" V 6440 1380 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6365 1370 50  0001 C CNN
F 3 "~" H 6365 1370 50  0001 C CNN
	1    6365 1370
	0    1    1    0   
$EndComp
Wire Wire Line
	6265 1370 5875 1370
Wire Notes Line
	4260 1630 4260 780 
Wire Notes Line
	5750 1630 4250 1630
Text Notes 4590 930  2    79   ~ 16
SWD
Text Notes 3875 950  2    79   ~ 16
MCU
$Comp
L power:Earth #PWR032
U 1 1 5FCDB720
P 5180 1040
F 0 "#PWR032" H 5180 790 50  0001 C CNN
F 1 "Earth" H 5180 890 50  0001 C CNN
F 2 "" H 5180 1040 50  0001 C CNN
F 3 "~" H 5180 1040 50  0001 C CNN
	1    5180 1040
	-1   0    0    1   
$EndComp
Text Label 5180 1240 0    50   ~ 0
SWCLK
Text Label 5180 1140 0    50   ~ 0
SWDIO
$Comp
L power:+3.3V #PWR033
U 1 1 5FCD9E03
P 5180 1340
F 0 "#PWR033" H 5180 1190 50  0001 C CNN
F 1 "+3.3V" H 5195 1513 50  0000 C CNN
F 2 "" H 5180 1340 50  0001 C CNN
F 3 "" H 5180 1340 50  0001 C CNN
	1    5180 1340
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FCD92D6
P 4980 1240
F 0 "J4" H 4970 940 50  0000 C CNN
F 1 "SWD" V 5120 1170 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 4980 1240 50  0001 C CNN
F 3 "~" H 4980 1240 50  0001 C CNN
	1    4980 1240
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push_Open SW1
U 1 1 60E1266E
P 7050 2725
F 0 "SW1" H 6910 2815 50  0000 C CNN
F 1 "MODE_BTN" H 7055 2635 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 7050 2925 50  0001 C CNN
F 3 "~" H 7050 2925 50  0001 C CNN
	1    7050 2725
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 60E12674
P 6850 2725
F 0 "#PWR01" H 6850 2475 50  0001 C CNN
F 1 "Earth" H 6850 2575 50  0001 C CNN
F 2 "" H 6850 2725 50  0001 C CNN
F 3 "~" H 6850 2725 50  0001 C CNN
	1    6850 2725
	0    1    1    0   
$EndComp
Text Label 7250 2725 0    50   ~ 0
MODE_KEY
$Comp
L Switch:SW_Push_Open SW2
U 1 1 60E18E17
P 7050 3075
F 0 "SW2" H 6910 3165 50  0000 C CNN
F 1 "SHOT_BTN" H 7055 2985 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 7050 3275 50  0001 C CNN
F 3 "~" H 7050 3275 50  0001 C CNN
	1    7050 3075
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR02
U 1 1 60E18E1D
P 6850 3075
F 0 "#PWR02" H 6850 2825 50  0001 C CNN
F 1 "Earth" H 6850 2925 50  0001 C CNN
F 2 "" H 6850 3075 50  0001 C CNN
F 3 "~" H 6850 3075 50  0001 C CNN
	1    6850 3075
	0    1    1    0   
$EndComp
Text Label 7250 3075 0    50   ~ 0
SHOT_KEY
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60B700B9
P 7725 3575
F 0 "J2" H 7805 3567 50  0000 L CNN
F 1 "R_LED" H 7805 3476 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 7725 3575 50  0001 C CNN
F 3 "~" H 7725 3575 50  0001 C CNN
	1    7725 3575
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 60B71E2F
P 7425 3875
F 0 "Q2" H 7615 3921 50  0000 L CNN
F 1 "SS8050" H 7615 3830 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7625 3975 50  0001 C CNN
F 3 "~" H 7425 3875 50  0001 C CNN
	1    7425 3875
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 60B72588
P 7125 3875
F 0 "R6" V 7200 3875 50  0000 C CNN
F 1 "1K" V 7050 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7125 3875 50  0001 C CNN
F 3 "~" H 7125 3875 50  0001 C CNN
	1    7125 3875
	0    -1   -1   0   
$EndComp
Text Label 7025 3875 2    50   ~ 0
LED_R
$Comp
L power:Earth #PWR013
U 1 1 60B73E50
P 7525 4075
F 0 "#PWR013" H 7525 3825 50  0001 C CNN
F 1 "Earth" H 7525 3925 50  0001 C CNN
F 2 "" H 7525 4075 50  0001 C CNN
F 3 "~" H 7525 4075 50  0001 C CNN
	1    7525 4075
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 60B77B70
P 7525 3575
F 0 "#PWR012" H 7525 3425 50  0001 C CNN
F 1 "+3.3V" V 7625 3650 50  0000 C CNN
F 2 "" H 7525 3575 50  0001 C CNN
F 3 "" H 7525 3575 50  0001 C CNN
	1    7525 3575
	0    -1   -1   0   
$EndComp
Text Notes 1315 3095 2    79   ~ 16
Back Power
$Comp
L Device:Battery_Cell BT1
U 1 1 60C5F4E2
P 1400 4025
F 0 "BT1" H 1250 4175 50  0000 L CNN
F 1 "MS621FE" H 1025 4000 50  0000 L CNN
F 2 "Battery:BatteryHolder_Seiko_MS621F" V 1400 4085 50  0001 C CNN
F 3 "~" V 1400 4085 50  0001 C CNN
	1    1400 4025
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60C6AF29
P 1400 3600
F 0 "R1" H 1310 3560 50  0000 C CNN
F 1 "680R" H 1260 3640 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1400 3600 50  0001 C CNN
F 3 "~" H 1400 3600 50  0001 C CNN
	1    1400 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 3500 1400 3425
Connection ~ 1400 3425
$Comp
L power:+3.3V #PWR05
U 1 1 60CA2066
P 1400 3400
F 0 "#PWR05" H 1400 3250 50  0001 C CNN
F 1 "+3.3V" H 1415 3573 50  0000 C CNN
F 2 "" H 1400 3400 50  0001 C CNN
F 3 "" H 1400 3400 50  0001 C CNN
	1    1400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3700 1400 3800
Connection ~ 1400 3800
Wire Wire Line
	1550 3800 1400 3800
Wire Wire Line
	1400 3800 1400 3825
$Comp
L power:Earth #PWR023
U 1 1 5FE5FC73
P 1400 4325
F 0 "#PWR023" H 1400 4075 50  0001 C CNN
F 1 "Earth" H 1400 4175 50  0001 C CNN
F 2 "" H 1400 4325 50  0001 C CNN
F 3 "~" H 1400 4325 50  0001 C CNN
	1    1400 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4325 1400 4300
Connection ~ 1400 4300
Wire Wire Line
	1400 4125 1400 4300
Wire Wire Line
	1400 4300 1750 4300
$Comp
L power:+5V #PWR06
U 1 1 60D7D019
P 1850 4100
F 0 "#PWR06" H 1850 3950 50  0001 C CNN
F 1 "+5V" H 1865 4273 50  0000 C CNN
F 2 "" H 1850 4100 50  0001 C CNN
F 3 "" H 1850 4100 50  0001 C CNN
	1    1850 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 4100 1750 4100
Connection ~ 1750 4100
$Comp
L Device:R_Small R2
U 1 1 60D41348
P 1750 4200
F 0 "R2" H 1660 4160 50  0000 C CNN
F 1 "100K" H 1610 4240 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1750 4200 50  0001 C CNN
F 3 "~" H 1750 4200 50  0001 C CNN
	1    1750 4200
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:IRLML6401TRPBF Q1
U 1 1 60CBEA08
P 1750 3800
F 0 "Q1" V 1600 3625 50  0000 C CNN
F 1 "AO3400" V 1675 3525 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1950 4200 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/0301316P" H 1950 4100 50  0001 L CNN
F 4 "INFINEON - IRLML6401TRPBF - MOSFET, P, MICRO3" H 1950 4000 50  0001 L CNN "Description"
F 5 "1.12" H 1950 3900 50  0001 L CNN "Height"
F 6 "0301316P" H 1950 3800 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/0301316P" H 1950 3700 50  0001 L CNN "RS Price/Stock"
F 8 "Infineon" H 1950 3600 50  0001 L CNN "Manufacturer_Name"
F 9 "IRLML6401TRPBF" H 1950 3500 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70017403" H 1950 3400 50  0001 L CNN "Allied_Number"
	1    1750 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 60DB9CE4
P 2495 3650
F 0 "#PWR08" H 2495 3500 50  0001 C CNN
F 1 "+5V" H 2510 3823 50  0000 C CNN
F 2 "" H 2495 3650 50  0001 C CNN
F 3 "" H 2495 3650 50  0001 C CNN
	1    2495 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60DC7590
P 2495 3750
F 0 "R3" H 2405 3710 50  0000 C CNN
F 1 "1M" H 2385 3790 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2495 3750 50  0001 C CNN
F 3 "~" H 2495 3750 50  0001 C CNN
	1    2495 3750
	-1   0    0    1   
$EndComp
Connection ~ 2495 3860
Wire Wire Line
	2495 3850 2495 3860
Wire Wire Line
	2495 3860 2495 3870
$Comp
L Device:R_Small R5
U 1 1 60DCD263
P 2495 3970
F 0 "R5" H 2405 3930 50  0000 C CNN
F 1 "1M" H 2385 4010 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2495 3970 50  0001 C CNN
F 3 "~" H 2495 3970 50  0001 C CNN
	1    2495 3970
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR010
U 1 1 60DD392C
P 2495 4070
F 0 "#PWR010" H 2495 3820 50  0001 C CNN
F 1 "Earth" H 2495 3920 50  0001 C CNN
F 2 "" H 2495 4070 50  0001 C CNN
F 3 "~" H 2495 4070 50  0001 C CNN
	1    2495 4070
	1    0    0    -1  
$EndComp
Wire Wire Line
	2495 3860 2895 3860
Text Label 2665 3860 0    50   ~ 0
5V_check
Wire Wire Line
	1950 3800 1950 3425
Wire Wire Line
	1950 3425 1400 3425
Wire Wire Line
	1400 3425 1400 3400
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 5FCB61E5
P 1485 2475
F 0 "U2" H 1485 2717 50  0000 C CNN
F 1 "XC6206" H 1485 2626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1485 2475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1485 2475 50  0001 C CNN
	1    1485 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1185 2475 1155 2475
$Comp
L Device:C_Small C15
U 1 1 5FCC37FE
P 1155 2585
F 0 "C15" H 980 2645 50  0000 L CNN
F 1 "1uF" H 1005 2525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1155 2585 50  0001 C CNN
F 3 "~" H 1155 2585 50  0001 C CNN
	1    1155 2585
	1    0    0    -1  
$EndComp
Wire Wire Line
	1155 2485 1155 2475
$Comp
L power:Earth #PWR028
U 1 1 5FCC5235
P 1485 2785
F 0 "#PWR028" H 1485 2535 50  0001 C CNN
F 1 "Earth" H 1485 2635 50  0001 C CNN
F 2 "" H 1485 2785 50  0001 C CNN
F 3 "~" H 1485 2785 50  0001 C CNN
	1    1485 2785
	1    0    0    -1  
$EndComp
Wire Wire Line
	1485 2775 1155 2775
Wire Wire Line
	1155 2685 1155 2775
Wire Wire Line
	1485 2785 1485 2775
Connection ~ 1485 2775
$Comp
L Device:C_Small C18
U 1 1 5FCC7340
P 1855 2595
F 0 "C18" H 1880 2665 50  0000 L CNN
F 1 "1uF" H 1880 2540 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1855 2595 50  0001 C CNN
F 3 "~" H 1855 2595 50  0001 C CNN
	1    1855 2595
	1    0    0    -1  
$EndComp
Wire Wire Line
	1785 2475 1855 2475
Wire Wire Line
	1855 2475 1855 2495
Wire Wire Line
	1855 2695 1855 2775
Wire Wire Line
	1855 2775 1485 2775
$Comp
L power:+3.3V #PWR029
U 1 1 5FCC7F29
P 1855 2475
F 0 "#PWR029" H 1855 2325 50  0001 C CNN
F 1 "+3.3V" H 1870 2648 50  0000 C CNN
F 2 "" H 1855 2475 50  0001 C CNN
F 3 "" H 1855 2475 50  0001 C CNN
	1    1855 2475
	1    0    0    -1  
$EndComp
Connection ~ 1855 2475
Text Notes 1305 1925 2    79   ~ 16
3.3V Power
$Comp
L power:+5V #PWR026
U 1 1 60DCA3E7
P 1155 2200
F 0 "#PWR026" H 1155 2050 50  0001 C CNN
F 1 "+5V" H 1170 2373 50  0000 C CNN
F 2 "" H 1155 2200 50  0001 C CNN
F 3 "" H 1155 2200 50  0001 C CNN
	1    1155 2200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60C2927D
P 2930 2475
F 0 "#FLG01" H 2930 2550 50  0001 C CNN
F 1 "PWR_FLAG" H 2930 2648 50  0000 C CNN
F 2 "" H 2930 2475 50  0001 C CNN
F 3 "~" H 2930 2475 50  0001 C CNN
	1    2930 2475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 60C2EA35
P 2930 2475
F 0 "#PWR011" H 2930 2325 50  0001 C CNN
F 1 "+5V" H 2945 2648 50  0000 C CNN
F 2 "" H 2930 2475 50  0001 C CNN
F 3 "" H 2930 2475 50  0001 C CNN
	1    2930 2475
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60E51215
P 2555 2475
F 0 "#FLG0101" H 2555 2550 50  0001 C CNN
F 1 "PWR_FLAG" H 2555 2648 50  0000 C CNN
F 2 "" H 2555 2475 50  0001 C CNN
F 3 "~" H 2555 2475 50  0001 C CNN
	1    2555 2475
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 60E516F3
P 2555 2475
F 0 "#PWR0101" H 2555 2225 50  0001 C CNN
F 1 "Earth" H 2555 2325 50  0001 C CNN
F 2 "" H 2555 2475 50  0001 C CNN
F 3 "~" H 2555 2475 50  0001 C CNN
	1    2555 2475
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:SS34A D1
U 1 1 60B94BE2
P 1155 2325
F 0 "D1" V 1180 2125 50  0000 L CNN
F 1 "SS14F" V 1105 1975 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 1605 2325 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/9179196P" H 1605 2225 50  0001 L CNN
F 4 "HY Electronic Corp SS34A, SMT Rectifier Schottky Diode, 40V 3A, 2-Pin SMA" H 1605 2125 50  0001 L CNN "Description"
F 5 "2.62" H 1605 2025 50  0001 L CNN "Height"
F 6 "9179196P" H 1605 1925 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/9179196P" H 1605 1825 50  0001 L CNN "RS Price/Stock"
F 8 "HY Electronic Corp" H 1605 1725 50  0001 L CNN "Manufacturer_Name"
F 9 "SS34A" H 1605 1625 50  0001 L CNN "Manufacturer_Part_Number"
	1    1155 2325
	0    1    -1   0   
$EndComp
Connection ~ 1155 2475
Text Label 4050 2875 2    50   ~ 0
OSC_IN
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 60B5AD89
P 1960 1380
F 0 "J7" H 2040 1372 50  0000 L CNN
F 1 "UART" H 2040 1281 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1960 1380 50  0001 C CNN
F 3 "~" H 1960 1380 50  0001 C CNN
	1    1960 1380
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60B5A17C
P 1960 1110
F 0 "J1" H 2040 1102 50  0000 L CNN
F 1 "POWER" H 2040 1011 50  0000 L CNN
F 2 "Connector:JWT_A3963_1x02_P3.96mm_Vertical" H 1960 1110 50  0001 C CNN
F 3 "~" H 1960 1110 50  0001 C CNN
	1    1960 1110
	1    0    0    -1  
$EndComp
Text Label 1760 1480 2    50   ~ 0
TX
Text Label 1760 1380 2    50   ~ 0
RX
$Comp
L power:+5V #PWR04
U 1 1 60B2871D
P 1760 1110
F 0 "#PWR04" H 1760 960 50  0001 C CNN
F 1 "+5V" H 1775 1283 50  0000 C CNN
F 2 "" H 1760 1110 50  0001 C CNN
F 3 "" H 1760 1110 50  0001 C CNN
	1    1760 1110
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR09
U 1 1 60B26894
P 1760 1210
F 0 "#PWR09" H 1760 960 50  0001 C CNN
F 1 "Earth" H 1760 1060 50  0001 C CNN
F 2 "" H 1760 1210 50  0001 C CNN
F 3 "~" H 1760 1210 50  0001 C CNN
	1    1760 1210
	0    1    1    0   
$EndComp
$EndSCHEMATC