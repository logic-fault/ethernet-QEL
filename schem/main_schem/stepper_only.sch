EESchema Schematic File Version 2  date 8/31/2012 10:34:03 AM
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
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "31 aug 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4650 4450
Wire Wire Line
	4650 4450 4650 5750
Wire Wire Line
	4650 5750 4550 5750
Wire Wire Line
	4550 4450 4550 5650
Wire Wire Line
	3450 5100 3450 4950
Wire Wire Line
	4100 4950 4100 5100
Wire Bus Line
	2500 6450 2500 4350
Wire Wire Line
	2950 7350 2950 6750
Wire Wire Line
	2950 6750 3000 6750
Wire Wire Line
	2600 6450 3000 6450
Wire Wire Line
	2600 6250 3000 6250
Wire Wire Line
	2600 5900 3000 5900
Wire Wire Line
	3550 7150 3350 7150
Wire Wire Line
	3350 7150 3350 7050
Wire Wire Line
	3900 7150 3900 7350
Wire Wire Line
	3800 7150 3800 7250
Wire Wire Line
	3800 7250 3900 7250
Connection ~ 3900 7250
Wire Wire Line
	2600 5800 3000 5800
Wire Wire Line
	2600 6000 3000 6000
Wire Wire Line
	2600 6350 3000 6350
Wire Wire Line
	2600 6550 3000 6550
Wire Bus Line
	2500 4350 5000 4350
Wire Wire Line
	3900 5100 3900 4550
Wire Wire Line
	3900 4550 4100 4550
Wire Wire Line
	3700 4950 3700 5100
Wire Wire Line
	3050 5250 3050 4550
Wire Wire Line
	3050 4550 3450 4550
Wire Wire Line
	3700 4550 3700 4450
Wire Wire Line
	3700 4450 7600 4450
Connection ~ 4550 4450
$Comp
L GND #PWR?
U 1 1 5040CAD5
P 3050 5250
F 0 "#PWR?" H 3050 5250 30  0001 C CNN
F 1 "GND" H 3050 5180 30  0001 C CNN
	1    3050 5250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5040CAAB
P 4100 4750
F 0 "C?" H 4150 4850 50  0000 L CNN
F 1 ".1uF" H 4150 4650 50  0000 L CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5040CAA4
P 3700 4750
F 0 "C?" H 3750 4850 50  0000 L CNN
F 1 ".1uF" H 3700 4650 50  0000 L CNN
	1    3700 4750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5040CA9E
P 3450 4750
F 0 "C?" H 3500 4850 50  0000 L CNN
F 1 ".22uF" H 3200 4650 50  0000 L CNN
	1    3450 4750
	1    0    0    -1  
$EndComp
Text Label 2600 6550 0    60   ~ 0
BUSA_7
Text Label 2600 6450 0    60   ~ 0
BUSA_6
Text Label 2600 6350 0    60   ~ 0
BUSA_5
Text Label 2600 6250 0    60   ~ 0
BUSA_4
Text Label 2600 6000 0    60   ~ 0
BUSA_3
Text Label 2600 5900 0    60   ~ 0
BUSA_2
Text Label 2600 5800 0    60   ~ 0
BUSA_1
Entry Wire Line
	2500 6450 2600 6550
$Comp
L GND #PWR?
U 1 1 5040C7D6
P 2950 7350
F 0 "#PWR?" H 2950 7350 30  0001 C CNN
F 1 "GND" H 2950 7280 30  0001 C CNN
	1    2950 7350
	1    0    0    -1  
$EndComp
Entry Wire Line
	2500 6450 2600 6550
Entry Wire Line
	2500 6350 2600 6450
Entry Wire Line
	2500 6250 2600 6350
Entry Wire Line
	2500 6150 2600 6250
Entry Wire Line
	2500 5900 2600 6000
Entry Wire Line
	2500 5800 2600 5900
Entry Wire Line
	2500 5700 2600 5800
$Comp
L VCC #PWR?
U 1 1 5040C6E7
P 3350 7050
F 0 "#PWR?" H 3350 7150 30  0001 C CNN
F 1 "VCC" H 3350 7150 30  0000 C CNN
	1    3350 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5040C6CB
P 3900 7350
F 0 "#PWR?" H 3900 7350 30  0001 C CNN
F 1 "GND" H 3900 7280 30  0001 C CNN
	1    3900 7350
	1    0    0    -1  
$EndComp
$Comp
L A4983 U?
U 1 1 5040C6B8
P 3750 5800
F 0 "U?" H 3800 5650 60  0000 C CNN
F 1 "A4983" H 3800 5750 60  0000 C CNN
	1    3750 5800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
