EESchema Schematic File Version 2  date 9/29/2012 1:33:09 PM
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
LIBS:QEL
LIBS:pic18f97j60
LIBS:pwr
LIBS:main_schem-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 2 6
Title "QEL_Driver"
Date "29 sep 2012"
Rev "2"
Comp "ECE 402 Senior Design"
Comment1 "Copyright (c) Brock Anderson 2012"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR?
U 1 1 5058DB93
P 7000 4550
F 0 "#PWR?" H 7000 4550 30  0001 C CNN
F 1 "GND" H 7000 4480 30  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3750 6500 4050
Wire Wire Line
	6300 3750 6500 3750
Wire Wire Line
	7700 3850 8150 3850
Connection ~ 7250 3450
Wire Wire Line
	8550 3650 8150 3650
Wire Wire Line
	8150 4250 8150 4400
Wire Wire Line
	4300 3800 4300 3650
Wire Wire Line
	4300 3650 4350 3650
Wire Wire Line
	4050 3350 5050 3350
Wire Wire Line
	4850 3650 5050 3650
Wire Wire Line
	7250 3550 7250 3400
Wire Wire Line
	8550 3450 6300 3450
Wire Wire Line
	8150 3650 8150 3850
Wire Wire Line
	7000 4050 7850 4050
$Comp
L R R?
U 1 1 5058DB7E
P 6750 4050
F 0 "R?" V 6830 4050 50  0000 C CNN
F 1 "68" V 6750 4050 50  0000 C CNN
	1    6750 4050
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5058DB66
P 7000 4300
F 0 "R?" V 7080 4300 50  0000 C CNN
F 1 "680" V 7000 4300 50  0000 C CNN
	1    7000 4300
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 5058DB32
P 7700 3650
F 0 "D?" H 7700 3750 40  0000 C CNN
F 1 "DIODE" H 7700 3550 40  0000 C CNN
	1    7700 3650
	0    -1   -1   0   
$EndComp
$Comp
L MOSFET_N Q?
U 1 1 5058DB1C
P 8050 4050
F 0 "Q?" H 7750 3800 60  0000 R CNN
F 1 "ENHANCED_MOSFET_N" H 8060 3900 60  0000 R CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 504BA571
P 8900 3550
F 0 "P?" V 8850 3550 40  0000 C CNN
F 1 "CONN_2" V 8950 3550 40  0000 C CNN
	1    8900 3550
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR?
U 1 1 504BA51D
P 7250 3400
F 0 "#PWR?" H 7250 3350 20  0001 C CNN
F 1 "+24V" H 7250 3500 30  0000 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 504BA4EF
P 8150 4400
F 0 "#PWR?" H 8150 4400 30  0001 C CNN
F 1 "GND" H 8150 4330 30  0001 C CNN
	1    8150 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 504BA3D2
P 4300 3800
F 0 "#PWR?" H 4300 3800 30  0001 C CNN
F 1 "GND" H 4300 3730 30  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
Text Notes 4100 3300 0    60   ~ 0
Draws approx 20 mA @ 3.3
$Comp
L R R?
U 1 1 504B9FF4
P 4600 3650
F 0 "R?" V 4680 3650 50  0000 C CNN
F 1 "100" V 4600 3650 50  0000 C CNN
	1    4600 3650
	0    -1   -1   0   
$EndComp
Text GLabel 4050 3350 0    60   Output ~ 0
QEL_PWR_ENABLE
$Comp
L PS2501-2 U?
U 1 1 504B9FB2
P 5700 3550
F 0 "U?" H 5875 2625 60  0000 C CNN
F 1 "PS2501-2" H 5650 2750 60  0000 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
