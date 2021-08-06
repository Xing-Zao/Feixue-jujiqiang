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
Text Notes 1100 625  2    79   ~ 16
Power IN
Text Notes 1265 1545 2    79   ~ 16
Battery ADC
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 60B3B97C
P 1405 965
F 0 "J1" H 1485 957 50  0000 L CNN
F 1 "Conn_01x06" H 1485 866 50  0000 L CNN
F 2 "SamacSys_Parts:JL-6P-4.0PH-5.65H" H 1405 965 50  0001 C CNN
F 3 "~" H 1405 965 50  0001 C CNN
	1    1405 965 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60B3D6BE
P 1185 765
F 0 "#PWR0102" H 1185 615 50  0001 C CNN
F 1 "+5V" V 1185 940 50  0000 C CNN
F 2 "" H 1185 765 50  0001 C CNN
F 3 "" H 1185 765 50  0001 C CNN
	1    1185 765 
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 60B45ECF
P 1130 1065
F 0 "#PWR0105" H 1130 815 50  0001 C CNN
F 1 "Earth" H 1130 915 50  0001 C CNN
F 2 "" H 1130 1065 50  0001 C CNN
F 3 "~" H 1130 1065 50  0001 C CNN
	1    1130 1065
	0    1    1    0   
$EndComp
Wire Wire Line
	1205 1065 1130 1065
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 60B9E3C8
P 825 965
F 0 "J3" H 905 957 50  0000 L CNN
F 1 "POWER" H 905 866 50  0000 L CNN
F 2 "Connector:JWT_A3963_1x02_P3.96mm_Vertical" H 825 965 50  0001 C CNN
F 3 "~" H 825 965 50  0001 C CNN
	1    825  965 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60B2F82F
P 830 1265
F 0 "J2" H 910 1257 50  0000 L CNN
F 1 "UART" H 910 1166 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 830 1265 50  0001 C CNN
F 3 "~" H 830 1265 50  0001 C CNN
	1    830  1265
	-1   0    0    1   
$EndComp
Wire Wire Line
	1030 1165 1205 1165
Wire Wire Line
	1205 1265 1030 1265
Wire Wire Line
	1025 865  1205 865 
Wire Wire Line
	1025 965  1205 965 
Wire Wire Line
	1185 765  1205 765 
Wire Wire Line
	1205 865  1205 765 
Wire Wire Line
	1205 765  1200 765 
Connection ~ 1205 865 
Connection ~ 1205 765 
Wire Wire Line
	1210 965  1205 965 
Wire Wire Line
	1205 965  1205 1065
Connection ~ 1205 965 
Connection ~ 1205 1065
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 60B32625
P 2950 800
F 0 "J4" H 3030 792 50  0000 L CNN
F 1 "LED" H 3025 700 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2950 800 50  0001 C CNN
F 3 "~" H 2950 800 50  0001 C CNN
	1    2950 800 
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 60B34665
P 3000 1325
F 0 "D2" H 3000 1250 50  0000 C CNN
F 1 "LED_Small" H 3000 1209 50  0001 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" V 3000 1325 50  0001 C CNN
F 3 "~" V 3000 1325 50  0001 C CNN
	1    3000 1325
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 60B3746B
P 3000 1525
F 0 "D3" H 3000 1450 50  0000 C CNN
F 1 "LED_Small" H 3000 1409 50  0001 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" V 3000 1525 50  0001 C CNN
F 3 "~" V 3000 1525 50  0001 C CNN
	1    3000 1525
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 60B37471
P 3000 1725
F 0 "D4" H 3000 1650 50  0000 C CNN
F 1 "LED_Small" H 3000 1609 50  0001 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" V 3000 1725 50  0001 C CNN
F 3 "~" V 3000 1725 50  0001 C CNN
	1    3000 1725
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 60B37DD1
P 3000 1925
F 0 "D5" H 3000 1850 50  0000 C CNN
F 1 "LED_Small" H 3000 1809 50  0001 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" V 3000 1925 50  0001 C CNN
F 3 "~" V 3000 1925 50  0001 C CNN
	1    3000 1925
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 60B37DD7
P 3000 2125
F 0 "D6" H 3000 2050 50  0000 C CNN
F 1 "LED_Small" H 3000 2009 50  0001 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" V 3000 2125 50  0001 C CNN
F 3 "~" V 3000 2125 50  0001 C CNN
	1    3000 2125
	-1   0    0    1   
$EndComp
Connection ~ 3100 1325
Wire Wire Line
	3100 1325 3100 1525
Connection ~ 3100 1525
Wire Wire Line
	3100 1525 3100 1725
Connection ~ 3100 1725
Wire Wire Line
	3100 1725 3100 1925
Connection ~ 3100 1925
Wire Wire Line
	3100 1925 3100 2125
Wire Wire Line
	3050 1000 3100 1000
$Comp
L Device:R_Small R1
U 1 1 60B47631
P 2800 1125
F 0 "R1" V 2725 1125 50  0000 C CNN
F 1 "R_Small" V 2695 1125 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 1125 50  0001 C CNN
F 3 "~" H 2800 1125 50  0001 C CNN
	1    2800 1125
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1000 3100 1125
Wire Wire Line
	3100 1125 3100 1325
Connection ~ 3100 1125
$Comp
L Device:LED_Small D1
U 1 1 60B33182
P 3000 1125
F 0 "D1" H 3000 1050 50  0000 C CNN
F 1 "LED_Small" H 3000 1009 50  0001 C CNN
F 2 "LED_SMD:LED_0201_0603Metric" V 3000 1125 50  0001 C CNN
F 3 "~" V 3000 1125 50  0001 C CNN
	1    3000 1125
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60B48664
P 2800 1325
F 0 "R2" V 2725 1325 50  0000 C CNN
F 1 "R_Small" V 2695 1325 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 1325 50  0001 C CNN
F 3 "~" H 2800 1325 50  0001 C CNN
	1    2800 1325
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60B48940
P 2800 1525
F 0 "R3" V 2725 1525 50  0000 C CNN
F 1 "R_Small" V 2695 1525 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 1525 50  0001 C CNN
F 3 "~" H 2800 1525 50  0001 C CNN
	1    2800 1525
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 60B48C8C
P 2800 1725
F 0 "R4" V 2725 1725 50  0000 C CNN
F 1 "R_Small" V 2695 1725 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 1725 50  0001 C CNN
F 3 "~" H 2800 1725 50  0001 C CNN
	1    2800 1725
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60B4913A
P 2800 1925
F 0 "R5" V 2725 1925 50  0000 C CNN
F 1 "R_Small" V 2695 1925 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 1925 50  0001 C CNN
F 3 "~" H 2800 1925 50  0001 C CNN
	1    2800 1925
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 60B4947B
P 2800 2125
F 0 "R6" V 2725 2125 50  0000 C CNN
F 1 "R_Small" V 2695 2125 50  0001 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2800 2125 50  0001 C CNN
F 3 "~" H 2800 2125 50  0001 C CNN
	1    2800 2125
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1125 2700 1325
Connection ~ 2700 1325
Wire Wire Line
	2700 1325 2700 1525
Connection ~ 2700 1525
Wire Wire Line
	2700 1525 2700 1725
Connection ~ 2700 1725
Wire Wire Line
	2700 1725 2700 1925
Connection ~ 2700 1925
Wire Wire Line
	2700 1925 2700 2125
Wire Wire Line
	2700 1000 2700 1125
Wire Wire Line
	2700 1000 2950 1000
Connection ~ 2700 1125
$Comp
L Mechanical:MountingHole H1
U 1 1 60C03634
P 1220 3170
F 0 "H1" H 1320 3216 50  0000 L CNN
F 1 "MountingHole" H 1320 3125 50  0000 L CNN
F 2 "SamacSys_Parts:MountingHole_1.5x4mm" H 1220 3170 50  0001 C CNN
F 3 "~" H 1220 3170 50  0001 C CNN
	1    1220 3170
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60C03A88
P 1220 3360
F 0 "H2" H 1320 3406 50  0000 L CNN
F 1 "MountingHole" H 1320 3315 50  0000 L CNN
F 2 "SamacSys_Parts:MountingHole_1.5x4mm" H 1220 3360 50  0001 C CNN
F 3 "~" H 1220 3360 50  0001 C CNN
	1    1220 3360
	1    0    0    -1  
$EndComp
$EndSCHEMATC