EESchema Schematic File Version 2  date 10/7/2012 9:06:12 PM
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
Comment2 "http://ww1.microchip.com/downloads/en/DeviceDoc/39762f.pdf , pg 219"
Comment3 "http://ww1.microchip.com/downloads/en/DeviceDoc/51623d.pdf, pg 29"
Comment4 ""
$EndDescr
Wire Notes Line
	1150 6700 10600 6700
Wire Notes Line
	10600 2850 1150 2850
Connection ~ 8000 1450
Wire Wire Line
	8000 1450 8000 1550
Wire Wire Line
	8000 1550 7900 1550
Wire Wire Line
	8400 1650 2950 1650
Wire Wire Line
	8400 1450 6350 1450
Connection ~ 7150 1650
Wire Wire Line
	7150 1950 7150 1650
Wire Notes Line
	7300 1650 7250 1650
Wire Notes Line
	7250 1650 7250 1350
Connection ~ 3750 5200
Wire Wire Line
	4050 5100 4050 5200
Wire Wire Line
	4050 5200 3500 5200
Connection ~ 4050 4300
Wire Wire Line
	4050 4600 4050 4300
Wire Wire Line
	9700 4400 9300 4400
Connection ~ 4800 4500
Wire Wire Line
	5200 3550 4800 3550
Wire Wire Line
	4800 3550 4800 5100
Connection ~ 5200 4300
Wire Wire Line
	5200 4700 5200 3950
Connection ~ 9300 4400
Wire Wire Line
	9300 4400 9300 5100
Wire Wire Line
	9300 5100 6600 5100
Wire Wire Line
	7050 5700 6850 5700
Wire Wire Line
	6850 5700 6850 5800
Wire Wire Line
	6600 4700 7050 4700
Wire Wire Line
	5100 3800 5100 3750
Wire Wire Line
	5100 3750 5200 3750
Wire Wire Line
	6600 4900 6900 4900
Wire Wire Line
	7150 2350 7150 2500
Wire Wire Line
	3600 1850 5650 1850
Wire Wire Line
	3600 1450 5650 1450
Wire Wire Line
	7400 1750 7300 1750
Wire Wire Line
	6600 3750 6900 3750
Wire Wire Line
	5100 4950 5100 4900
Wire Wire Line
	5100 4900 5200 4900
Wire Wire Line
	6600 3550 7050 3550
Wire Wire Line
	6850 6300 6850 6450
Wire Wire Line
	6600 3950 9300 3950
Wire Wire Line
	9300 3950 9300 4250
Connection ~ 9300 4250
Wire Wire Line
	5200 4300 2550 4300
Wire Wire Line
	4800 4500 2550 4500
Wire Wire Line
	4800 5100 5200 5100
Wire Wire Line
	9300 4250 9700 4250
Wire Wire Line
	3500 4600 3500 4500
Connection ~ 3500 4500
Wire Wire Line
	3500 5200 3500 5100
Wire Wire Line
	3750 5600 3750 5750
Wire Wire Line
	2950 1650 2950 1300
Connection ~ 7300 1650
Wire Wire Line
	7400 1550 7300 1550
Wire Wire Line
	7300 1550 7300 1750
Wire Wire Line
	8400 1850 6350 1850
Wire Wire Line
	7900 1750 8000 1750
Wire Wire Line
	8000 1750 8000 1850
Connection ~ 8000 1850
Wire Notes Line
	1150 6700 1150 500 
Wire Notes Line
	1150 500  10600 500 
Wire Notes Line
	10600 500  10600 6700
Text Notes 1500 750  0    60   ~ 0
ETHERNET RX
Text Notes 1500 3050 0    60   ~ 0
ETHERNET TX
$Comp
L +3.3V #PWR?
U 1 1 507229A7
P 2950 1300
F 0 "#PWR?" H 2950 1260 30  0001 C CNN
F 1 "+3.3V" H 2950 1410 30  0000 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
Text GLabel 8400 1650 2    60   Output ~ 0
TXC
Text Notes 7100 1350 0    30   ~ 0
This is supposed to go to cener tap of transformer
$Comp
L VSS #PWR01
U 1 1 506EFD34
P 7150 2500
F 0 "#PWR01" H 7150 2500 30  0001 C CNN
F 1 "VSS" H 7150 2430 30  0000 C CNN
	1    7150 2500
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 506EFD16
P 3750 5400
F 0 "C1" H 3800 5500 50  0000 L CNN
F 1 "0.1uF" H 3800 5300 50  0000 L CNN
	1    3750 5400
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR02
U 1 1 506EFD0E
P 3750 5750
F 0 "#PWR02" H 3750 5750 30  0001 C CNN
F 1 "VSS" H 3750 5680 30  0000 C CNN
	1    3750 5750
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR03
U 1 1 506EFADF
P 6850 6450
F 0 "#PWR03" H 6850 6450 30  0001 C CNN
F 1 "VSS" H 6850 6380 30  0000 C CNN
	1    6850 6450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 506EFAD8
P 6850 6050
F 0 "R3" V 6930 6050 50  0000 C CNN
F 1 "100k" V 6850 6050 50  0000 C CNN
	1    6850 6050
	1    0    0    -1  
$EndComp
Text GLabel 7050 5700 2    60   Input ~ 0
RXSWAP
Text GLabel 7050 4700 2    60   Input ~ 0
RXSWAP
Text GLabel 7050 3550 2    60   Input ~ 0
RXSWAP
$Comp
L VSS #PWR04
U 1 1 506EFA1F
P 5100 3800
F 0 "#PWR04" H 5100 3800 30  0001 C CNN
F 1 "VSS" H 5100 3730 30  0000 C CNN
	1    5100 3800
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR05
U 1 1 506EF9D4
P 5100 4950
F 0 "#PWR05" H 5100 4950 30  0001 C CNN
F 1 "VSS" H 5100 4880 30  0000 C CNN
	1    5100 4950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 506EF9AE
P 6900 4900
F 0 "#PWR06" H 6900 4860 30  0001 C CNN
F 1 "+3.3V" H 6900 5010 30  0000 C CNN
	1    6900 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 506EF99F
P 6900 3750
F 0 "#PWR07" H 6900 3710 30  0001 C CNN
F 1 "+3.3V" H 6900 3860 30  0000 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
$Comp
L SPDT_ANALOG U2
U 1 1 506EF954
P 5900 4850
F 0 "U2" H 5900 5150 60  0000 C CNN
F 1 "SPDT_ANALOG" H 5900 4450 60  0000 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
$Comp
L SPDT_ANALOG U1
U 1 1 506EF94B
P 5900 3700
F 0 "U1" H 5900 4000 60  0000 C CNN
F 1 "SPDT_ANALOG" H 5900 3300 60  0000 C CNN
	1    5900 3700
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 506EF466
P 7150 2150
F 0 "C2" H 7200 2250 50  0000 L CNN
F 1 "0.1uF" H 7200 2050 50  0000 L CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
Text Notes 6450 1350 2    30   ~ 0
A102194CT-ND
$Comp
L FILTER FB2
U 1 1 506EF3B9
P 6000 1850
F 0 "FB2" H 6000 1950 60  0000 C CNN
F 1 "120 @ 100 MHz" H 6000 1750 60  0000 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 506EF3AF
P 6000 1450
F 0 "FB1" H 6000 1550 60  0000 C CNN
F 1 "120 @ 100 MHz" H 6000 1350 60  0000 C CNN
	1    6000 1450
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 506EEDA5
P 7650 1750
F 0 "R5" V 7600 1550 50  0000 C CNN
F 1 "49.9" V 7650 1750 50  0000 C CNN
	1    7650 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 506EED9D
P 7650 1550
F 0 "R4" V 7700 1350 50  0000 C CNN
F 1 "49.9" V 7650 1550 50  0000 C CNN
	1    7650 1550
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 506EED96
P 4050 4850
F 0 "R2" V 4130 4850 50  0000 C CNN
F 1 "49.9" V 4050 4850 50  0000 C CNN
	1    4050 4850
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 506EED8E
P 3500 4850
F 0 "R1" V 3580 4850 50  0000 C CNN
F 1 "49.9" V 3500 4850 50  0000 C CNN
	1    3500 4850
	-1   0    0    1   
$EndComp
Text GLabel 8400 1850 2    60   Output ~ 0
TX-
Text GLabel 8400 1450 2    60   Output ~ 0
TX+
Text GLabel 9700 4400 2    60   Input ~ 0
RX-
Text GLabel 9700 4250 2    60   Input ~ 0
RX+
Text GLabel 3600 1450 0    60   Input ~ 0
TPOUT+
Text GLabel 3600 1850 0    60   Input ~ 0
TPOUT-
Text GLabel 2550 4300 0    60   Output ~ 0
TPIN+
Text GLabel 2550 4500 0    60   Output ~ 0
TPIN-
$EndSCHEMATC
