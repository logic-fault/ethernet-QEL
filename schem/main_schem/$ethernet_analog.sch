EESchema Schematic File Version 2  date 10/7/2012 8:22:45 PM
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
Date "8 oct 2012"
Rev ""
Comp "Ingersoll Rand 402 Group"
Comment1 "Brock Anderson, 2012"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 8050 2050
Wire Wire Line
	8050 2050 8050 1950
Wire Wire Line
	8050 1950 7950 1950
Wire Wire Line
	8450 2050 6400 2050
Wire Wire Line
	7350 1750 7350 1950
Wire Wire Line
	7350 1750 7450 1750
Connection ~ 7350 1850
Wire Wire Line
	3000 1500 3000 1850
Wire Wire Line
	3800 5800 3800 5950
Wire Wire Line
	3550 5300 3550 5400
Connection ~ 3550 4700
Wire Wire Line
	3550 4800 3550 4700
Wire Wire Line
	9750 4450 9350 4450
Wire Wire Line
	5250 5300 4850 5300
Wire Wire Line
	4850 4700 2600 4700
Wire Wire Line
	5250 4500 2600 4500
Connection ~ 9350 4450
Wire Wire Line
	9350 4450 9350 4150
Wire Wire Line
	9350 4150 6650 4150
Wire Wire Line
	6900 6500 6900 6650
Wire Wire Line
	6650 3750 7100 3750
Wire Wire Line
	5250 5100 5150 5100
Wire Wire Line
	5150 5100 5150 5150
Wire Wire Line
	6650 3950 6950 3950
Wire Wire Line
	7350 1950 7450 1950
Wire Wire Line
	3650 1650 5700 1650
Wire Wire Line
	3650 2050 5700 2050
Wire Wire Line
	7200 2550 7200 2700
Wire Wire Line
	6650 5100 6950 5100
Wire Wire Line
	5250 3950 5150 3950
Wire Wire Line
	5150 3950 5150 4000
Wire Wire Line
	6650 4900 7100 4900
Wire Wire Line
	6900 6000 6900 5900
Wire Wire Line
	6900 5900 7100 5900
Wire Wire Line
	6650 5300 9350 5300
Wire Wire Line
	9350 5300 9350 4600
Connection ~ 9350 4600
Wire Wire Line
	5250 4900 5250 4150
Connection ~ 5250 4500
Wire Wire Line
	4850 5300 4850 3750
Wire Wire Line
	4850 3750 5250 3750
Connection ~ 4850 4700
Wire Wire Line
	9350 4600 9750 4600
Wire Wire Line
	4100 4800 4100 4500
Connection ~ 4100 4500
Wire Wire Line
	3550 5400 4100 5400
Wire Wire Line
	4100 5400 4100 5300
Connection ~ 3800 5400
Wire Notes Line
	7300 1550 7300 1850
Wire Notes Line
	7300 1850 7350 1850
Wire Wire Line
	7200 2150 7200 1850
Connection ~ 7200 1850
Wire Wire Line
	8450 1650 6400 1650
Wire Wire Line
	3000 1850 8450 1850
Wire Wire Line
	7950 1750 8050 1750
Wire Wire Line
	8050 1750 8050 1650
Connection ~ 8050 1650
Wire Notes Line
	1200 6900 1200 3050
Wire Notes Line
	1200 6900 10650 6900
Wire Notes Line
	10650 6900 10650 3050
Wire Notes Line
	10650 3050 1200 3050
$Comp
L +3.3V #PWR?
U 1 1 507229A7
P 3000 1500
F 0 "#PWR?" H 3000 1460 30  0001 C CNN
F 1 "+3.3V" H 3000 1610 30  0000 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
Text GLabel 8450 1850 2    60   Output ~ 0
TXC
Text Notes 7150 1550 0    30   ~ 0
This is supposed to go to cener tap of transformer
$Comp
L VSS #PWR01
U 1 1 506EFD34
P 7200 2700
F 0 "#PWR01" H 7200 2700 30  0001 C CNN
F 1 "VSS" H 7200 2630 30  0000 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 506EFD16
P 3800 5600
F 0 "C1" H 3850 5700 50  0000 L CNN
F 1 "0.1uF" H 3850 5500 50  0000 L CNN
	1    3800 5600
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR02
U 1 1 506EFD0E
P 3800 5950
F 0 "#PWR02" H 3800 5950 30  0001 C CNN
F 1 "VSS" H 3800 5880 30  0000 C CNN
	1    3800 5950
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR03
U 1 1 506EFADF
P 6900 6650
F 0 "#PWR03" H 6900 6650 30  0001 C CNN
F 1 "VSS" H 6900 6580 30  0000 C CNN
	1    6900 6650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 506EFAD8
P 6900 6250
F 0 "R3" V 6980 6250 50  0000 C CNN
F 1 "100k" V 6900 6250 50  0000 C CNN
	1    6900 6250
	1    0    0    -1  
$EndComp
Text GLabel 7100 5900 2    60   Input ~ 0
RXSWAP
Text GLabel 7100 4900 2    60   Input ~ 0
RXSWAP
Text GLabel 7100 3750 2    60   Input ~ 0
RXSWAP
$Comp
L VSS #PWR04
U 1 1 506EFA1F
P 5150 4000
F 0 "#PWR04" H 5150 4000 30  0001 C CNN
F 1 "VSS" H 5150 3930 30  0000 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR05
U 1 1 506EF9D4
P 5150 5150
F 0 "#PWR05" H 5150 5150 30  0001 C CNN
F 1 "VSS" H 5150 5080 30  0000 C CNN
	1    5150 5150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 506EF9AE
P 6950 5100
F 0 "#PWR06" H 6950 5060 30  0001 C CNN
F 1 "+3.3V" H 6950 5210 30  0000 C CNN
	1    6950 5100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 506EF99F
P 6950 3950
F 0 "#PWR07" H 6950 3910 30  0001 C CNN
F 1 "+3.3V" H 6950 4060 30  0000 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
$Comp
L SPDT_ANALOG U2
U 1 1 506EF954
P 5950 5050
F 0 "U2" H 5950 5350 60  0000 C CNN
F 1 "SPDT_ANALOG" H 5950 4650 60  0000 C CNN
	1    5950 5050
	1    0    0    -1  
$EndComp
$Comp
L SPDT_ANALOG U1
U 1 1 506EF94B
P 5950 3900
F 0 "U1" H 5950 4200 60  0000 C CNN
F 1 "SPDT_ANALOG" H 5950 3500 60  0000 C CNN
	1    5950 3900
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 506EF466
P 7200 2350
F 0 "C2" H 7250 2450 50  0000 L CNN
F 1 "0.1uF" H 7250 2250 50  0000 L CNN
	1    7200 2350
	1    0    0    -1  
$EndComp
Text Notes 6500 1550 2    30   ~ 0
A102194CT-ND
$Comp
L FILTER FB2
U 1 1 506EF3B9
P 6050 2050
F 0 "FB2" H 6050 2150 60  0000 C CNN
F 1 "120 @ 100 MHz" H 6050 1950 60  0000 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 506EF3AF
P 6050 1650
F 0 "FB1" H 6050 1750 60  0000 C CNN
F 1 "120 @ 100 MHz" H 6050 1550 60  0000 C CNN
	1    6050 1650
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 506EEDA5
P 7700 1950
F 0 "R5" V 7650 1750 50  0000 C CNN
F 1 "49.9" V 7700 1950 50  0000 C CNN
	1    7700 1950
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 506EED9D
P 7700 1750
F 0 "R4" V 7750 1550 50  0000 C CNN
F 1 "49.9" V 7700 1750 50  0000 C CNN
	1    7700 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 506EED96
P 4100 5050
F 0 "R2" V 4180 5050 50  0000 C CNN
F 1 "49.9" V 4100 5050 50  0000 C CNN
	1    4100 5050
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 506EED8E
P 3550 5050
F 0 "R1" V 3630 5050 50  0000 C CNN
F 1 "49.9" V 3550 5050 50  0000 C CNN
	1    3550 5050
	-1   0    0    1   
$EndComp
Text GLabel 8450 2050 2    60   Output ~ 0
TX-
Text GLabel 8450 1650 2    60   Output ~ 0
TX+
Text GLabel 9750 4600 2    60   Input ~ 0
RX-
Text GLabel 9750 4450 2    60   Input ~ 0
RX+
Text GLabel 3650 1650 0    60   Input ~ 0
TPOUT+
Text GLabel 3650 2050 0    60   Input ~ 0
TPOUT-
Text GLabel 2600 4500 0    60   Output ~ 0
TPIN+
Text GLabel 2600 4700 0    60   Output ~ 0
TPIN-
$EndSCHEMATC
