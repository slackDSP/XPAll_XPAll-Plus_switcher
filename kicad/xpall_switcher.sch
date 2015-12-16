EESchema Schematic File Version 2  date Sat 26 Sep 2015 04:44:52 PM BST
LIBS:PIC16F636
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:xpall_switcher-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "26 sep 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PIC16F636 U1
U 1 1 55BA6DB2
P 2800 3300
F 0 "U1" H 2400 1900 50  0000 C CNN
F 1 "PIC16F636" H 2800 3800 50  0000 C CNN
F 2 "MODULE" H 2800 3300 50  0001 C CNN
F 3 "DOCUMENTATION" H 2850 3200 50  0001 C CNN
	1    2800 3300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 55BA6E07
P 2750 2500
F 0 "C2" H 2800 2600 50  0000 L CNN
F 1 "10uF" H 2800 2400 50  0000 L CNN
F 2 "~" H 2750 2500 60  0000 C CNN
F 3 "~" H 2750 2500 60  0000 C CNN
	1    2750 2500
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 55BA6E16
P 2750 2150
F 0 "C1" H 2750 2250 40  0000 L CNN
F 1 "100n" H 2756 2065 40  0000 L CNN
F 2 "~" H 2788 2000 30  0000 C CNN
F 3 "~" H 2750 2150 60  0000 C CNN
	1    2750 2150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR3
U 1 1 55BA6E44
P 3750 3050
F 0 "#PWR3" H 3750 3050 30  0001 C CNN
F 1 "GND" H 3750 2980 30  0001 C CNN
F 2 "" H 3750 3050 60  0000 C CNN
F 3 "" H 3750 3050 60  0000 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
Text Label 3650 3750 0    60   ~ 0
XP100 eeprom pin20 (9)
Text Label 3650 4000 0    60   ~ 0
XP400 eeprom pin20 (10)
Text Label 3650 4250 0    60   ~ 0
XP300 eeprom pin20 (11)
Text Label 3650 4500 0    60   ~ 0
XP200 eeprom pin20 (12)
Text Label 1900 4500 2    60   ~ 0
Red CLR (5)
Text Label 1900 4250 2    60   ~ 0
Green CLR (6)
Text Label 1900 4000 2    60   ~ 0
Blue CLR (8)
Text Label 1900 3500 2    60   ~ 0
MC34064 pin2 (A)
$Comp
L R R1
U 1 1 55BA6F19
P 1050 3000
F 0 "R1" V 1130 3000 40  0000 C CNN
F 1 "10k" V 1057 3001 40  0000 C CNN
F 2 "~" V 980 3000 30  0000 C CNN
F 3 "~" H 1050 3000 30  0000 C CNN
	1    1050 3000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55BA6F26
P 1800 3250
F 0 "R2" V 1880 3250 40  0000 C CNN
F 1 "1k" V 1807 3251 40  0000 C CNN
F 2 "~" V 1730 3250 30  0000 C CNN
F 3 "~" H 1800 3250 30  0000 C CNN
	1    1800 3250
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW1
U 1 1 55BA6F57
P 1050 3750
F 0 "SW1" H 1050 3850 70  0000 C CNN
F 1 "SPST" H 1050 3650 70  0000 C CNN
F 2 "~" H 1050 3750 60  0000 C CNN
F 3 "~" H 1050 3750 60  0000 C CNN
	1    1050 3750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1
U 1 1 55BA6F8C
P 1050 4250
F 0 "#PWR1" H 1050 4250 30  0001 C CNN
F 1 "GND" H 1050 4180 30  0001 C CNN
F 2 "" H 1050 4250 60  0000 C CNN
F 3 "" H 1050 4250 60  0000 C CNN
	1    1050 4250
	1    0    0    -1  
$EndComp
Text GLabel 1700 2500 0    60   Input ~ 0
+5 Volts
$Comp
L PIC16F636 U2
U 1 1 56067241
P 7150 3300
F 0 "U2" H 6750 1900 50  0000 C CNN
F 1 "PIC16F636" H 7150 3800 50  0000 C CNN
F 2 "MODULE" H 7150 3300 50  0001 C CNN
F 3 "DOCUMENTATION" H 7200 3200 50  0001 C CNN
	1    7150 3300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 56067247
P 7100 2500
F 0 "C4" H 7150 2600 50  0000 L CNN
F 1 "10uF" H 7150 2400 50  0000 L CNN
F 2 "~" H 7100 2500 60  0000 C CNN
F 3 "~" H 7100 2500 60  0000 C CNN
	1    7100 2500
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 5606724D
P 7100 2150
F 0 "C3" H 7100 2250 40  0000 L CNN
F 1 "100n" H 7106 2065 40  0000 L CNN
F 2 "~" H 7138 2000 30  0000 C CNN
F 3 "~" H 7100 2150 60  0000 C CNN
	1    7100 2150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR5
U 1 1 5606725B
P 8100 3050
F 0 "#PWR5" H 8100 3050 30  0001 C CNN
F 1 "GND" H 8100 2980 30  0001 C CNN
F 2 "" H 8100 3050 60  0000 C CNN
F 3 "" H 8100 3050 60  0000 C CNN
	1    8100 3050
	1    0    0    -1  
$EndComp
Text Label 6250 4500 2    60   ~ 0
Red CLR (5)
Text Label 6050 4250 2    60   ~ 0
Green CLR (6)
Text Label 6250 4000 2    60   ~ 0
Blue CLR (8)
Text Label 6050 3500 2    60   ~ 0
MC34064 pin2 (A)
$Comp
L R R3
U 1 1 56067272
P 5200 3000
F 0 "R3" V 5280 3000 40  0000 C CNN
F 1 "10k" V 5207 3001 40  0000 C CNN
F 2 "~" V 5130 3000 30  0000 C CNN
F 3 "~" H 5200 3000 30  0000 C CNN
	1    5200 3000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 56067278
P 6150 3250
F 0 "R4" V 6230 3250 40  0000 C CNN
F 1 "1k" V 6157 3251 40  0000 C CNN
F 2 "~" V 6080 3250 30  0000 C CNN
F 3 "~" H 6150 3250 30  0000 C CNN
	1    6150 3250
	0    -1   -1   0   
$EndComp
$Comp
L SPST SW2
U 1 1 5606727E
P 5200 3750
F 0 "SW2" H 5200 3850 70  0000 C CNN
F 1 "SPST" H 5200 3650 70  0000 C CNN
F 2 "~" H 5200 3750 60  0000 C CNN
F 3 "~" H 5200 3750 60  0000 C CNN
	1    5200 3750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR4
U 1 1 56067284
P 5200 4250
F 0 "#PWR4" H 5200 4250 30  0001 C CNN
F 1 "GND" H 5200 4180 30  0001 C CNN
F 2 "" H 5200 4250 60  0000 C CNN
F 3 "" H 5200 4250 60  0000 C CNN
	1    5200 4250
	1    0    0    -1  
$EndComp
Text GLabel 6050 2500 0    60   Input ~ 0
+5 Volts
Text Notes 2400 1750 0    118  ~ 0
XP-All
Text Notes 6750 1800 0    118  ~ 0
XP-All+
Text Label 8000 4500 0    60   ~ 0
A16
Text Label 8000 4250 0    60   ~ 0
A15
Text Label 8000 4000 0    60   ~ 0
A14
Wire Wire Line
	2950 2150 3550 2150
Wire Wire Line
	3550 2150 3550 3000
Wire Wire Line
	2950 2500 3550 2500
Connection ~ 3550 2500
Wire Wire Line
	2550 2150 2050 2150
Wire Wire Line
	2050 2150 2050 3000
Wire Wire Line
	2550 2500 2050 2500
Connection ~ 2050 2500
Wire Wire Line
	3550 3000 3750 3000
Wire Wire Line
	3750 3000 3750 3050
Wire Wire Line
	3650 3750 3550 3750
Wire Wire Line
	3650 4000 3550 4000
Wire Wire Line
	3650 4250 3550 4250
Wire Wire Line
	3650 4500 3550 4500
Wire Wire Line
	1900 4000 2050 4000
Wire Wire Line
	2050 4250 1900 4250
Wire Wire Line
	2050 4500 1900 4500
Wire Wire Line
	1050 2750 2050 2750
Connection ~ 2050 2750
Wire Wire Line
	1750 2500 1750 2750
Connection ~ 1750 2750
Wire Wire Line
	1050 3250 1550 3250
Wire Wire Line
	2050 3500 1900 3500
Wire Wire Line
	1750 2500 1700 2500
Wire Wire Line
	7300 2150 7900 2150
Wire Wire Line
	7900 2150 7900 3000
Wire Wire Line
	7300 2500 7900 2500
Connection ~ 7900 2500
Wire Wire Line
	6900 2150 6400 2150
Wire Wire Line
	6400 2150 6400 3000
Wire Wire Line
	6900 2500 6400 2500
Connection ~ 6400 2500
Wire Wire Line
	7900 3000 8100 3000
Wire Wire Line
	8100 3000 8100 3050
Wire Wire Line
	8000 3750 7900 3750
Wire Wire Line
	8000 4000 7900 4000
Wire Wire Line
	8000 4250 7900 4250
Wire Wire Line
	8000 4500 7900 4500
Wire Wire Line
	6250 4000 6400 4000
Wire Wire Line
	6400 4250 6250 4250
Wire Wire Line
	6400 4500 6250 4500
Wire Wire Line
	5200 2750 6400 2750
Connection ~ 6400 2750
Connection ~ 6100 2750
Wire Wire Line
	5200 3250 5900 3250
Wire Wire Line
	6400 3500 6250 3500
Wire Wire Line
	6100 2500 6050 2500
Wire Wire Line
	2050 3850 2050 3750
$Comp
L GND #PWR2
U 1 1 560671CB
P 2050 3850
F 0 "#PWR2" H 2050 3850 30  0001 C CNN
F 1 "GND" H 2050 3780 30  0001 C CNN
F 2 "" H 2050 3850 60  0000 C CNN
F 3 "" H 2050 3850 60  0000 C CNN
	1    2050 3850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 56067341
P 6150 3750
F 0 "R5" V 6230 3750 40  0000 C CNN
F 1 "10k" V 6157 3751 40  0000 C CNN
F 2 "~" V 6080 3750 30  0000 C CNN
F 3 "~" H 6150 3750 30  0000 C CNN
	1    6150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3750 5700 3750
Wire Wire Line
	5700 3750 5700 2750
Connection ~ 5700 2750
$Comp
L R R6
U 1 1 5606740C
P 8250 3750
F 0 "R6" V 8330 3750 40  0000 C CNN
F 1 "2k2" V 8257 3751 40  0000 C CNN
F 2 "~" V 8180 3750 30  0000 C CNN
F 3 "~" H 8250 3750 30  0000 C CNN
	1    8250 3750
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q1
U 1 1 5606741B
P 8700 3750
F 0 "Q1" H 8700 3600 50  0000 R CNN
F 1 "2N3904" H 8700 3900 50  0000 R CNN
F 2 "~" H 8700 3750 60  0000 C CNN
F 3 "~" H 8700 3750 60  0000 C CNN
	1    8700 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5606742A
P 8800 3950
F 0 "#PWR6" H 8800 3950 30  0001 C CNN
F 1 "GND" H 8800 3880 30  0001 C CNN
F 2 "" H 8800 3950 60  0000 C CNN
F 3 "" H 8800 3950 60  0000 C CNN
	1    8800 3950
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 56067439
P 8500 3150
F 0 "D1" H 8500 3250 40  0000 C CNN
F 1 "DIODE" H 8500 3050 40  0000 C CNN
F 2 "~" H 8500 3150 60  0000 C CNN
F 3 "~" H 8500 3150 60  0000 C CNN
	1    8500 3150
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 56067465
P 8800 3250
F 0 "L1" V 8750 3250 40  0000 C CNN
F 1 "Relay Coil" V 8900 3250 40  0000 C CNN
F 2 "~" H 8800 3250 60  0000 C CNN
F 3 "~" H 8800 3250 60  0000 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2950 8800 2950
Wire Wire Line
	8800 3550 8500 3550
Wire Wire Line
	8500 3550 8500 3350
Wire Wire Line
	8800 2950 8800 1950
Connection ~ 6100 2500
Wire Wire Line
	8800 1950 6100 1950
Wire Wire Line
	6100 1950 6100 2750
$EndSCHEMATC
