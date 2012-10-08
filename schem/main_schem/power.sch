EESchema Schematic File Version 2  date 10/7/2012 8:27:40 PM
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
Sheet 5 6
Title "Power Subsystem"
Date "8 oct 2012"
Rev ""
Comp "Ingersoll Rand 402 Senior Design group."
Comment1 "Copyright (c) Brock Anderson and Sankalp G Prakash 2012.  All rights reserved."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9700 800  0    30   ~ 0
These grounds should be connected via single points only,\n possibly with ferrite beads between them to minimize transients.
Connection ~ 10250 900 
Wire Wire Line
	10650 1000 10650 900 
Wire Wire Line
	10650 900  9850 900 
Wire Notes Line
	11150 2350 6350 2350
Wire Notes Line
	6350 2350 6350 500 
Wire Wire Line
	6700 1100 6700 1350
Wire Wire Line
	8050 1800 8050 2050
Connection ~ 9350 1350
Wire Wire Line
	6900 1800 6900 2050
Wire Wire Line
	7450 1650 7450 2050
Connection ~ 8150 1350
Wire Wire Line
	8150 1100 8150 1350
Wire Wire Line
	6700 1350 7050 1350
Wire Wire Line
	7850 1350 8400 1350
Wire Wire Line
	8050 1400 8050 1350
Connection ~ 8050 1350
Wire Wire Line
	6900 1400 6900 1350
Connection ~ 6900 1350
Wire Wire Line
	9200 1350 9450 1350
Wire Wire Line
	9450 1350 9450 1400
Wire Wire Line
	8800 1650 8800 2050
Wire Wire Line
	9350 1100 9350 1350
Wire Wire Line
	9450 1800 9450 2050
Wire Wire Line
	9850 900  9850 1000
Wire Wire Line
	10250 900  10250 1000
$Comp
L GNDPWR #PWR054
U 1 1 50674BFE
P 10650 1000
F 0 "#PWR054" H 10650 1050 40  0001 C CNN
F 1 "GNDPWR" H 10650 920 40  0000 C CNN
	1    10650 1000
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR055
U 1 1 50674BEC
P 10250 1000
F 0 "#PWR055" H 10250 1000 30  0001 C CNN
F 1 "VSS" H 10250 930 30  0000 C CNN
	1    10250 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 50674BE7
P 9850 1000
F 0 "#PWR056" H 9850 1000 30  0001 C CNN
F 1 "GND" H 9850 930 30  0001 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
Text Notes 6600 650  0    60   ~ 0
DIGITAL SYSTEM REGULATORS
$Comp
L GND #PWR057
U 1 1 50674B55
P 9450 2050
F 0 "#PWR057" H 9450 2050 30  0001 C CNN
F 1 "GND" H 9450 1980 30  0001 C CNN
	1    9450 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 50674B26
P 8050 2050
F 0 "#PWR058" H 8050 2050 30  0001 C CNN
F 1 "GND" H 8050 1980 30  0001 C CNN
	1    8050 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 50674B1A
P 8800 2050
F 0 "#PWR059" H 8800 2050 30  0001 C CNN
F 1 "GND" H 8800 1980 30  0001 C CNN
	1    8800 2050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 50674AF6
P 9350 1100
F 0 "#PWR060" H 9350 1060 30  0001 C CNN
F 1 "+3.3V" H 9350 1210 30  0000 C CNN
	1    9350 1100
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR061
U 1 1 506749D8
P 6900 2050
F 0 "#PWR061" H 6900 2100 40  0001 C CNN
F 1 "GNDPWR" H 6900 1970 40  0000 C CNN
	1    6900 2050
	1    0    0    -1  
$EndComp
$Comp
L CP C21
U 1 1 506749BB
P 9450 1600
F 0 "C21" H 9500 1700 50  0000 L CNN
F 1 "10uF" H 9500 1500 50  0000 L CNN
	1    9450 1600
	1    0    0    -1  
$EndComp
$Comp
L CP C19
U 1 1 506749B5
P 6900 1600
F 0 "C19" H 6950 1700 50  0000 L CNN
F 1 "0.33uF" H 6950 1500 50  0000 L CNN
	1    6900 1600
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR062
U 1 1 506749A3
P 7450 2050
F 0 "#PWR062" H 7450 2100 40  0001 C CNN
F 1 "GNDPWR" H 7450 1970 40  0000 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L CP C20
U 1 1 50674985
P 8050 1600
F 0 "C20" H 8100 1700 50  0000 L CNN
F 1 "0.1uF" H 8100 1500 50  0000 L CNN
	1    8050 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR063
U 1 1 50674976
P 8150 1100
F 0 "#PWR063" H 8150 1190 20  0001 C CNN
F 1 "+5V" H 8150 1190 30  0000 C CNN
	1    8150 1100
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR064
U 1 1 50674960
P 6700 1100
F 0 "#PWR064" H 6700 1050 20  0001 C CNN
F 1 "+24V" H 6700 1200 30  0000 C CNN
	1    6700 1100
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U7
U 1 1 50674945
P 8800 1400
F 0 "U7" H 8950 1204 60  0000 C CNN
F 1 "LM1117-3.3" H 8800 1600 60  0000 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U6
U 1 1 5067487E
P 7450 1400
F 0 "U6" H 7600 1204 60  0000 C CNN
F 1 "LM7805" H 7450 1600 60  0000 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
