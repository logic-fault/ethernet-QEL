EESchema Schematic File Version 2  date 10/5/2012 11:52:46 PM
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
Title "Ethernet Analog Subsystem w/ Polarity Switching"
Date "6 oct 2012"
Rev ""
Comp "Ingersoll Rand 402 Group"
Comment1 "Brock Anderson, 2012"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	7450 1250 7400 1250
Wire Notes Line
	7400 1250 7400 950 
Connection ~ 3700 5750
Wire Wire Line
	4000 5650 4000 5750
Wire Wire Line
	4000 5750 3450 5750
Connection ~ 4000 4850
Wire Wire Line
	4000 5150 4000 4850
Wire Wire Line
	9650 4950 9250 4950
Connection ~ 4750 5050
Wire Wire Line
	5150 4100 4750 4100
Wire Wire Line
	4750 4100 4750 5650
Connection ~ 5150 4850
Wire Wire Line
	5150 5250 5150 4500
Connection ~ 9250 4950
Wire Wire Line
	9250 4950 9250 5650
Wire Wire Line
	9250 5650 6550 5650
Wire Wire Line
	7000 6250 6800 6250
Wire Wire Line
	6800 6250 6800 6350
Wire Wire Line
	6550 5250 7000 5250
Wire Wire Line
	5050 4350 5050 4300
Wire Wire Line
	5050 4300 5150 4300
Wire Wire Line
	6550 5450 6850 5450
Connection ~ 7450 1300
Wire Wire Line
	7450 1200 7450 1350
Wire Wire Line
	7450 1200 7550 1200
Wire Wire Line
	7300 1950 7300 2100
Wire Wire Line
	3750 1450 5800 1450
Connection ~ 8100 1200
Wire Wire Line
	8100 1200 8100 1050
Wire Wire Line
	8100 1050 6500 1050
Wire Wire Line
	8050 1200 8550 1200
Wire Wire Line
	8050 1350 8550 1350
Wire Wire Line
	6500 1450 8100 1450
Wire Wire Line
	8100 1450 8100 1350
Connection ~ 8100 1350
Wire Wire Line
	3750 1050 5800 1050
Wire Wire Line
	7300 1550 7300 1300
Wire Wire Line
	7300 1300 7450 1300
Wire Wire Line
	7450 1350 7550 1350
Wire Wire Line
	6550 4300 6850 4300
Wire Wire Line
	5050 5500 5050 5450
Wire Wire Line
	5050 5450 5150 5450
Wire Wire Line
	6550 4100 7000 4100
Wire Wire Line
	6800 6850 6800 7000
Wire Wire Line
	6550 4500 9250 4500
Wire Wire Line
	9250 4500 9250 4800
Connection ~ 9250 4800
Wire Wire Line
	5150 4850 2500 4850
Wire Wire Line
	4750 5050 2500 5050
Wire Wire Line
	4750 5650 5150 5650
Wire Wire Line
	9250 4800 9650 4800
Wire Wire Line
	3450 5150 3450 5050
Connection ~ 3450 5050
Wire Wire Line
	3450 5750 3450 5650
Wire Wire Line
	3700 6150 3700 6300
Text Notes 7250 950  0    30   ~ 0
This is supposed to go to cener tap of transformer
$Comp
L VSS #PWR01
U 1 1 506EFD34
P 7300 2100
F 0 "#PWR01" H 7300 2100 30  0001 C CNN
F 1 "VSS" H 7300 2030 30  0000 C CNN
	1    7300 2100
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 506EFD16
P 3700 5950
F 0 "C1" H 3750 6050 50  0000 L CNN
F 1 "0.1uF" H 3750 5850 50  0000 L CNN
	1    3700 5950
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR02
U 1 1 506EFD0E
P 3700 6300
F 0 "#PWR02" H 3700 6300 30  0001 C CNN
F 1 "VSS" H 3700 6230 30  0000 C CNN
	1    3700 6300
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR03
U 1 1 506EFADF
P 6800 7000
F 0 "#PWR03" H 6800 7000 30  0001 C CNN
F 1 "VSS" H 6800 6930 30  0000 C CNN
	1    6800 7000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 506EFAD8
P 6800 6600
F 0 "R3" V 6880 6600 50  0000 C CNN
F 1 "100k" V 6800 6600 50  0000 C CNN
	1    6800 6600
	1    0    0    -1  
$EndComp
Text GLabel 7000 6250 2    60   Input ~ 0
RXSWAP
Text GLabel 7000 5250 2    60   Input ~ 0
RXSWAP
Text GLabel 7000 4100 2    60   Input ~ 0
RXSWAP
$Comp
L VSS #PWR04
U 1 1 506EFA1F
P 5050 4350
F 0 "#PWR04" H 5050 4350 30  0001 C CNN
F 1 "VSS" H 5050 4280 30  0000 C CNN
	1    5050 4350
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR05
U 1 1 506EF9D4
P 5050 5500
F 0 "#PWR05" H 5050 5500 30  0001 C CNN
F 1 "VSS" H 5050 5430 30  0000 C CNN
	1    5050 5500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 506EF9AE
P 6850 5450
F 0 "#PWR06" H 6850 5410 30  0001 C CNN
F 1 "+3.3V" H 6850 5560 30  0000 C CNN
	1    6850 5450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 506EF99F
P 6850 4300
F 0 "#PWR07" H 6850 4260 30  0001 C CNN
F 1 "+3.3V" H 6850 4410 30  0000 C CNN
	1    6850 4300
	1    0    0    -1  
$EndComp
$Comp
L SPDT_ANALOG U2
U 1 1 506EF954
P 5850 5400
F 0 "U2" H 5850 5700 60  0000 C CNN
F 1 "SPDT_ANALOG" H 5850 5000 60  0000 C CNN
	1    5850 5400
	1    0    0    -1  
$EndComp
$Comp
L SPDT_ANALOG U1
U 1 1 506EF94B
P 5850 4250
F 0 "U1" H 5850 4550 60  0000 C CNN
F 1 "SPDT_ANALOG" H 5850 3850 60  0000 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 506EF466
P 7300 1750
F 0 "C2" H 7350 1850 50  0000 L CNN
F 1 "0.1uF" H 7350 1650 50  0000 L CNN
	1    7300 1750
	1    0    0    -1  
$EndComp
Text Notes 6600 950  2    30   ~ 0
A102194CT-ND
$Comp
L FILTER FB2
U 1 1 506EF3B9
P 6150 1450
F 0 "FB2" H 6150 1600 60  0000 C CNN
F 1 "120 @ 100 MHz" H 6150 1350 60  0000 C CNN
	1    6150 1450
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 506EF3AF
P 6150 1050
F 0 "FB1" H 6150 1200 60  0000 C CNN
F 1 "120 @ 100 MHz" H 6150 950 60  0000 C CNN
	1    6150 1050
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 506EEDA5
P 7800 1350
F 0 "R5" V 7880 1350 50  0000 C CNN
F 1 "49.9" V 7800 1350 50  0000 C CNN
	1    7800 1350
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 506EED9D
P 7800 1200
F 0 "R4" V 7880 1200 50  0000 C CNN
F 1 "49.9" V 7800 1200 50  0000 C CNN
	1    7800 1200
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 506EED96
P 4000 5400
F 0 "R2" V 4080 5400 50  0000 C CNN
F 1 "49.9" V 4000 5400 50  0000 C CNN
	1    4000 5400
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 506EED8E
P 3450 5400
F 0 "R1" V 3530 5400 50  0000 C CNN
F 1 "49.9" V 3450 5400 50  0000 C CNN
	1    3450 5400
	-1   0    0    1   
$EndComp
Text GLabel 8550 1350 2    60   Output ~ 0
TX-
Text GLabel 8550 1200 2    60   Output ~ 0
TX+
Text GLabel 9650 4950 2    60   Input ~ 0
RX-
Text GLabel 9650 4800 2    60   Input ~ 0
RX+
Text GLabel 3750 1050 0    60   Input ~ 0
TPOUT+
Text GLabel 3750 1450 0    60   Input ~ 0
TPOUT-
Text GLabel 2500 4850 0    60   Output ~ 0
TPIN+
Text GLabel 2500 5050 0    60   Output ~ 0
TPIN-
$EndSCHEMATC
