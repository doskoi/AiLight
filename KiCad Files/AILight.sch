EESchema Schematic File Version 4
LIBS:AILight-cache
EELAYER 26 0
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
L AILight-rescue:ATtiny13A-SSU-MCU_Microchip_ATtiny U2
U 1 1 5BED0A87
P 5450 3850
F 0 "U2" H 4920 3896 50  0000 R CNN
F 1 "ATtiny13A-SSU" H 4920 3805 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 3850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 5450 3850 50  0001 C CNN
	1    5450 3850
	1    0    0    -1  
$EndComp
$Comp
L AILight-rescue:Conn_01x02_Female-Connector J1
U 1 1 5BED0A26
P 2250 3250
F 0 "J1" H 2330 3242 50  0000 L CNN
F 1 "Connector 1x2" H 2330 3151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2250 3250 50  0001 C CNN
F 3 "~" H 2250 3250 50  0001 C CNN
	1    2250 3250
	-1   0    0    -1  
$EndComp
$Comp
L AILight-rescue:AMS1117-5.0-Regulator_Linear U1
U 1 1 5BED0B0E
P 3850 3250
F 0 "U1" H 3850 3492 50  0000 C CNN
F 1 "AMS1117-5.0" H 3850 3401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3850 3450 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3950 3000 50  0001 C CNN
	1    3850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3550 2450 3350
$Comp
L AILight-rescue:Conn_01x03_Female-Connector PIR1
U 1 1 5BED3257
P 5550 2650
F 0 "PIR1" V 5489 2462 50  0000 R CNN
F 1 "Conn_01x03_Female" V 5361 2462 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5550 2650 50  0001 C CNN
F 3 "~" H 5550 2650 50  0001 C CNN
	1    5550 2650
	0    -1   -1   0   
$EndComp
$Comp
L AILight-rescue:Conn_01x02_Female-Connector J2
U 1 1 5BED1B5C
P 8300 3250
F 0 "J2" H 8380 3242 50  0000 L CNN
F 1 "Connector 1x2" H 8380 3151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8300 3250 50  0001 C CNN
F 3 "~" H 8300 3250 50  0001 C CNN
	1    8300 3250
	1    0    0    -1  
$EndComp
$Comp
L AILight-rescue:IRF540N-Transistor_FET Q1
U 1 1 5BED405D
P 7600 3550
F 0 "Q1" H 7805 3596 50  0000 L CNN
F 1 "IRF530N" H 7805 3505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7850 3475 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 7600 3550 50  0001 L CNN
	1    7600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4450 7200 4100
Wire Wire Line
	7700 3750 7700 4450
Wire Wire Line
	7700 4450 7200 4450
Connection ~ 7200 3550
Wire Wire Line
	7200 3550 7400 3550
Connection ~ 7200 4450
Wire Wire Line
	7700 3350 8100 3350
Wire Wire Line
	8100 2400 3250 2400
Wire Wire Line
	5450 3250 5450 2850
Connection ~ 5450 3250
Wire Wire Line
	6050 3850 6300 3850
Wire Wire Line
	6300 3250 5550 3250
Wire Wire Line
	5550 3250 5550 2850
Wire Wire Line
	7050 3100 7050 4450
Connection ~ 7050 4450
Wire Wire Line
	7050 4450 7200 4450
$Comp
L AILight-rescue:R_Small-Device R1
U 1 1 5BED791D
P 7200 4000
F 0 "R1" H 7259 4046 50  0000 L CNN
F 1 "10K" H 7259 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7200 4000 50  0001 C CNN
F 3 "~" H 7200 4000 50  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3900 7200 3550
$Comp
L AILight-rescue:C_Small-Device C1
U 1 1 5BED8B93
P 3400 3400
F 0 "C1" H 3500 3400 50  0000 L CNN
F 1 "100nF" H 3450 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3400 3400 50  0001 C CNN
F 3 "~" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
Text Label 2400 3250 0    50   ~ 0
VCC
Text Label 2400 3350 0    50   ~ 0
GND
Wire Wire Line
	3250 2400 3250 3250
Wire Wire Line
	8100 2400 8100 3250
Connection ~ 3250 3250
Wire Wire Line
	3250 3250 3400 3250
$Comp
L AILight-rescue:Conn_Coaxial_Power-Connector J3
U 1 1 5BED30DD
P 1550 4250
F 0 "J3" H 1638 4246 50  0000 L CNN
F 1 "Conn_DC_Power" H 1638 4155 50  0000 L CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 1550 4200 50  0001 C CNN
F 3 "~" H 1550 4200 50  0001 C CNN
	1    1550 4250
	1    0    0    -1  
$EndComp
Text Label 1300 4200 0    50   ~ 0
VIN
Text Label 1300 4450 0    50   ~ 0
GND
Wire Wire Line
	1550 4450 3850 4450
Connection ~ 3850 4450
Wire Wire Line
	1550 4150 1850 4150
Wire Wire Line
	3850 3550 3850 4450
$Comp
L AILight-rescue:R_Small-Device R2
U 1 1 5BED6478
P 1850 4050
F 0 "R2" H 1909 4096 50  0000 L CNN
F 1 "20K" H 1909 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 4050 50  0001 C CNN
F 3 "~" H 1850 4050 50  0001 C CNN
	1    1850 4050
	1    0    0    -1  
$EndComp
$Comp
L AILight-rescue:R_Small-Device R3
U 1 1 5BED64F6
P 1950 4050
F 0 "R3" H 2009 4096 50  0000 L CNN
F 1 "20K" H 2009 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 4050 50  0001 C CNN
F 3 "~" H 1950 4050 50  0001 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
$Comp
L AILight-rescue:R_Small-Device R4
U 1 1 5BED6592
P 2050 4050
F 0 "R4" H 2109 4096 50  0000 L CNN
F 1 "20K" H 2109 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 4050 50  0001 C CNN
F 3 "~" H 2050 4050 50  0001 C CNN
	1    2050 4050
	1    0    0    -1  
$EndComp
$Comp
L AILight-rescue:R_Small-Device R5
U 1 1 5BED65D0
P 2150 4050
F 0 "R5" H 2209 4096 50  0000 L CNN
F 1 "20K" H 2209 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 4050 50  0001 C CNN
F 3 "~" H 2150 4050 50  0001 C CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4150 1950 4150
Connection ~ 1850 4150
Connection ~ 1950 4150
Wire Wire Line
	1950 4150 2050 4150
Connection ~ 2050 4150
Wire Wire Line
	2050 4150 2150 4150
Wire Wire Line
	2150 3950 2050 3950
Connection ~ 1950 3950
Wire Wire Line
	1950 3950 1850 3950
Connection ~ 2050 3950
Wire Wire Line
	2050 3950 1950 3950
Wire Wire Line
	3150 3250 3150 2400
Wire Wire Line
	3150 2400 1850 2400
Wire Wire Line
	1850 2400 1850 3600
Connection ~ 3150 3250
Wire Wire Line
	3150 3250 3250 3250
Connection ~ 1850 3950
$Comp
L AILight-rescue:D_Small-Device D1
U 1 1 5BED86D8
P 1850 3700
F 0 "D1" V 1804 3768 50  0000 L CNN
F 1 "1N5819" V 1895 3768 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 1850 3700 50  0001 C CNN
F 3 "~" V 1850 3700 50  0001 C CNN
	1    1850 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3800 1850 3950
$Comp
L AILight-rescue:D_Small-Device D2
U 1 1 5BED897D
P 2900 3250
F 0 "D2" H 2900 3045 50  0000 C CNN
F 1 "1N5819" H 2900 3136 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 2900 3250 50  0001 C CNN
F 3 "~" V 2900 3250 50  0001 C CNN
	1    2900 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 3250 3150 3250
Wire Wire Line
	2450 3250 2800 3250
Wire Wire Line
	2450 3550 3400 3550
Wire Wire Line
	3400 3300 3400 3250
Wire Wire Line
	3400 3500 3400 3550
Connection ~ 3400 3550
Wire Wire Line
	3400 3550 3850 3550
Connection ~ 3400 3250
Wire Wire Line
	3400 3250 3550 3250
$Comp
L Connector:AVR-ISP-6 J4
U 1 1 5BEEABA1
P 4200 4050
F 0 "J4" H 3920 4146 50  0000 R CNN
F 1 "AVR-ISP-6" H 3920 4055 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" V 3950 4100 50  0001 C CNN
F 3 " ~" H 2925 3500 50  0001 C CNN
	1    4200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3350 8950 3350
Connection ~ 8100 3350
Wire Wire Line
	5650 2850 5650 3100
Wire Wire Line
	5650 3100 7050 3100
Connection ~ 4100 4450
Wire Wire Line
	4100 4450 3850 4450
Connection ~ 5450 4450
Wire Wire Line
	5450 4450 7050 4450
Wire Wire Line
	4100 4450 5450 4450
Wire Wire Line
	6050 3550 6400 3550
Connection ~ 3850 3550
Wire Wire Line
	4150 3250 5450 3250
Wire Wire Line
	4100 3550 4100 3250
Wire Wire Line
	4100 3250 4150 3250
Connection ~ 4150 3250
Wire Wire Line
	6050 4050 6050 4150
Wire Wire Line
	6050 4150 4600 4150
Wire Wire Line
	6150 4050 6150 3750
Wire Wire Line
	4600 4050 6150 4050
Wire Wire Line
	6300 3850 6300 3250
Wire Wire Line
	6150 3750 6050 3750
Wire Wire Line
	6400 3950 6400 3550
Connection ~ 6400 3550
Wire Wire Line
	6400 3550 7200 3550
Wire Wire Line
	4600 3950 6400 3950
Wire Wire Line
	6050 3650 6150 3650
Wire Wire Line
	6150 3650 6150 3700
Wire Wire Line
	6150 3700 4600 3700
Wire Wire Line
	4600 3700 4600 3850
NoConn ~ 6050 3950
$EndSCHEMATC
