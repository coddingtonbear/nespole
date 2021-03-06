EESchema Schematic File Version 2
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
LIBS:maxim-ic
LIBS:ch340g
LIBS:IRF
LIBS:max6675
LIBS:ch341t
LIBS:tinkerforge
LIBS:as1108
LIBS:nespole-cache
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
L R R1
U 1 1 5866AB9C
P 1700 3200
F 0 "R1" H 1770 3246 50  0000 L CNN
F 1 "270" H 1770 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1630 3200 50  0001 C CNN
F 3 "" H 1700 3200 50  0000 C CNN
	1    1700 3200
	1    0    0    -1  
$EndComp
Text Label 2550 3900 1    60   ~ 0
to_relay
$Comp
L MAX31855KASA U1
U 1 1 586A96D6
P 2150 1850
F 0 "U1" H 2150 2518 50  0000 C CNN
F 1 "MAX6675" H 2150 2427 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2150 2336 50  0000 C CIN
F 3 "" H 2150 1850 50  0000 C CNN
	1    2150 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 586ABFD3
P 2150 2450
F 0 "#PWR01" H 2150 2200 50  0001 C CNN
F 1 "GND" H 2155 2277 50  0000 C CNN
F 2 "" H 2150 2450 50  0000 C CNN
F 3 "" H 2150 2450 50  0000 C CNN
	1    2150 2450
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J1
U 1 1 586AC08E
P 1200 1850
F 0 "J1" H 1280 2192 50  0000 C CNN
F 1 "Screw_Terminal_1x02" H 1280 2101 50  0000 C CNN
F 2 "nespole:01x02_7.5mm_Header_Screw_Terminal" H 1200 1625 50  0001 C CNN
F 3 "" H 1175 1850 50  0001 C CNN
	1    1200 1850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 586AC22B
P 2150 850
F 0 "#PWR02" H 2150 700 50  0001 C CNN
F 1 "+5V" H 2165 1023 50  0000 C CNN
F 2 "" H 2150 850 50  0000 C CNN
F 3 "" H 2150 850 50  0000 C CNN
	1    2150 850 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 586AC251
P 2950 3900
F 0 "#PWR03" H 2950 3750 50  0001 C CNN
F 1 "+5V" H 2965 4073 50  0000 C CNN
F 2 "" H 2950 3900 50  0000 C CNN
F 3 "" H 2950 3900 50  0000 C CNN
	1    2950 3900
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J2
U 1 1 586AC399
P 2700 4350
F 0 "J2" V 2827 4145 50  0000 R CNN
F 1 "Screw_Terminal_1x02" V 2736 4145 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2700 4125 50  0001 C CNN
F 3 "" H 2675 4350 50  0001 C CNN
	1    2700 4350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 586AC414
P 2100 3850
F 0 "#PWR04" H 2100 3600 50  0001 C CNN
F 1 "GND" H 2105 3677 50  0000 C CNN
F 2 "" H 2100 3850 50  0000 C CNN
F 3 "" H 2100 3850 50  0000 C CNN
	1    2100 3850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 586B35EE
P 6700 2550
F 0 "C3" H 6815 2596 50  0000 L CNN
F 1 "22p" H 6815 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6738 2400 50  0001 C CNN
F 3 "" H 6700 2550 50  0000 C CNN
	1    6700 2550
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 586B3640
P 6700 3400
F 0 "C5" H 6815 3446 50  0000 L CNN
F 1 "22p" H 6815 3355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6738 3250 50  0001 C CNN
F 3 "" H 6700 3400 50  0000 C CNN
	1    6700 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 586B3691
P 6300 3000
F 0 "#PWR05" H 6300 2750 50  0001 C CNN
F 1 "GND" H 6305 2827 50  0000 C CNN
F 2 "" H 6300 3000 50  0000 C CNN
F 3 "" H 6300 3000 50  0000 C CNN
	1    6300 3000
	0    1    1    0   
$EndComp
$Comp
L USB_OTG P1
U 1 1 586B3A1B
P 1600 7350
F 0 "P1" H 1312 7227 50  0000 R CNN
F 1 "USB_OTG" H 1312 7318 50  0000 R CNN
F 2 "nespole:USB_Mini-B" V 1550 7250 50  0001 C CNN
F 3 "" V 1550 7250 50  0000 C CNN
	1    1600 7350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 586B3C72
P 1150 7050
F 0 "#PWR06" H 1150 6800 50  0001 C CNN
F 1 "GND" H 1155 6877 50  0000 C CNN
F 2 "" H 1150 7050 50  0000 C CNN
F 3 "" H 1150 7050 50  0000 C CNN
	1    1150 7050
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 586B4418
P 9250 4200
F 0 "C4" H 9365 4246 50  0000 L CNN
F 1 "0.1u" H 9365 4155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9288 4050 50  0001 C CNN
F 3 "" H 9250 4200 50  0000 C CNN
	1    9250 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 586B50BA
P 2650 6100
F 0 "#PWR07" H 2650 5850 50  0001 C CNN
F 1 "GND" H 2655 5927 50  0000 C CNN
F 2 "" H 2650 6100 50  0000 C CNN
F 3 "" H 2650 6100 50  0000 C CNN
	1    2650 6100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 586B5575
P 1900 1000
F 0 "C2" V 1648 1000 50  0000 C CNN
F 1 "0.1u" V 1739 1000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1938 850 50  0001 C CNN
F 3 "" H 1900 1000 50  0000 C CNN
	1    1900 1000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 586B55F9
P 1600 1050
F 0 "#PWR08" H 1600 800 50  0001 C CNN
F 1 "GND" H 1605 877 50  0000 C CNN
F 2 "" H 1600 1050 50  0000 C CNN
F 3 "" H 1600 1050 50  0000 C CNN
	1    1600 1050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 586B5746
P 1600 1750
F 0 "C1" H 1715 1796 50  0000 L CNN
F 1 "0.1u" H 1715 1705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1638 1600 50  0001 C CNN
F 3 "" H 1600 1750 50  0000 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 586B5E65
P 9250 4600
F 0 "C7" H 9368 4646 50  0000 L CNN
F 1 "10m" H 9368 4555 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 9288 4450 50  0001 C CNN
F 3 "" H 9250 4600 50  0000 C CNN
	1    9250 4600
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 586BD5C8
P 2700 3900
F 0 "D1" H 2700 4116 50  0000 C CNN
F 1 "D" H 2700 4025 50  0000 C CNN
F 2 "nespole:SOT-323_DIODE" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0000 C CNN
	1    2700 3900
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 586CA5FE
P 1300 3450
F 0 "R2" V 1093 3450 50  0000 C CNN
F 1 "10k" V 1184 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1230 3450 50  0001 C CNN
F 3 "" H 1300 3450 50  0000 C CNN
	1    1300 3450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5871E6B4
P 9450 800
F 0 "#PWR09" H 9450 550 50  0001 C CNN
F 1 "GND" H 9455 627 50  0000 C CNN
F 2 "" H 9450 800 50  0000 C CNN
F 3 "" H 9450 800 50  0000 C CNN
	1    9450 800 
	1    0    0    -1  
$EndComp
Text GLabel 3500 1200 3    60   Output ~ 0
RESET
Text GLabel 6350 2250 0    60   Input ~ 0
RESET
$Comp
L R R3
U 1 1 5871F93B
P 6200 2100
F 0 "R3" V 5993 2100 50  0000 C CNN
F 1 "10k" V 6084 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 2100 50  0001 C CNN
F 3 "" H 6200 2100 50  0000 C CNN
	1    6200 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 58720265
P 9550 4600
F 0 "#PWR010" H 9550 4350 50  0001 C CNN
F 1 "GND" H 9555 4427 50  0000 C CNN
F 2 "" H 9550 4600 50  0000 C CNN
F 3 "" H 9550 4600 50  0000 C CNN
	1    9550 4600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 587AA39E
P 1600 2250
F 0 "R4" H 1659 2296 50  0000 L CNN
F 1 "0" H 1659 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1600 2250 50  0001 C CNN
F 3 "" H 1600 2250 50  0000 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 5885C84A
P 1600 4750
F 0 "#PWR011" H 1600 4600 50  0001 C CNN
F 1 "+5V" H 1615 4923 50  0000 C CNN
F 2 "" H 1600 4750 50  0000 C CNN
F 3 "" H 1600 4750 50  0000 C CNN
	1    1600 4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 5885E06F
P 8850 4200
F 0 "#PWR012" H 8850 4050 50  0001 C CNN
F 1 "+5V" H 8865 4373 50  0000 C CNN
F 2 "" H 8850 4200 50  0000 C CNN
F 3 "" H 8850 4200 50  0000 C CNN
	1    8850 4200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 5885E512
P 5950 2100
F 0 "#PWR013" H 5950 1950 50  0001 C CNN
F 1 "+5V" H 5965 2273 50  0000 C CNN
F 2 "" H 5950 2100 50  0000 C CNN
F 3 "" H 5950 2100 50  0000 C CNN
	1    5950 2100
	0    -1   -1   0   
$EndComp
$Comp
L C C8
U 1 1 5889C1D8
P 2500 6000
F 0 "C8" V 2248 6000 50  0000 C CNN
F 1 "0.1u" V 2339 6000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2538 5850 50  0001 C CNN
F 3 "" H 2500 6000 50  0000 C CNN
	1    2500 6000
	0    -1   -1   0   
$EndComp
Text GLabel 1800 4750 1    60   Input ~ 0
TXD
Text GLabel 1900 4750 1    60   Output ~ 0
RXD
$Comp
L CA56-12 AFF1
U 1 1 588AC18B
P 5350 5550
F 0 "AFF1" H 4222 5504 50  0000 R CNN
F 1 "CA56-12" H 4222 5595 50  0000 R CNN
F 2 "Displays_7-Segment:Cx56-12" H 4850 5550 50  0001 C CNN
F 3 "" H 4850 5550 50  0000 C CNN
	1    5350 5550
	-1   0    0    1   
$EndComp
$Comp
L AS1108 U3
U 1 1 588ACBB1
P 7850 5550
F 0 "U3" H 7825 4663 60  0000 C CNN
F 1 "AS1108" H 7825 4769 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 7600 5800 60  0001 C CNN
F 3 "" H 7600 5800 60  0001 C CNN
	1    7850 5550
	-1   0    0    1   
$EndComp
Text GLabel 8550 5800 2    60   Input ~ 0
SCK
Text GLabel 9300 5900 2    60   Input ~ 0
LED_CS
Text GLabel 8550 6000 2    60   Input ~ 0
MOSI
Text GLabel 8550 6100 2    60   Output ~ 0
MISO
$Comp
L +5V #PWR014
U 1 1 588AE1AA
P 9500 6200
F 0 "#PWR014" H 9500 6050 50  0001 C CNN
F 1 "+5V" V 9515 6328 50  0000 L CNN
F 2 "" H 9500 6200 50  0000 C CNN
F 3 "" H 9500 6200 50  0000 C CNN
	1    9500 6200
	0    1    1    0   
$EndComp
$Comp
L R_Small R13
U 1 1 588AE27E
P 9200 6200
F 0 "R13" V 9004 6200 50  0000 C CNN
F 1 "10k" V 9095 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 9200 6200 50  0001 C CNN
F 3 "" H 9200 6200 50  0000 C CNN
	1    9200 6200
	0    1    1    0   
$EndComp
$Comp
L R_Small R12
U 1 1 588AE604
P 8650 5650
F 0 "R12" V 8454 5650 50  0000 C CNN
F 1 "9.53k" V 8545 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8650 5650 50  0001 C CNN
F 3 "" H 8650 5650 50  0000 C CNN
	1    8650 5650
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR015
U 1 1 588AE6CC
P 8900 5650
F 0 "#PWR015" H 8900 5500 50  0001 C CNN
F 1 "+5V" V 8915 5778 50  0000 L CNN
F 2 "" H 8900 5650 50  0000 C CNN
F 3 "" H 8900 5650 50  0000 C CNN
	1    8900 5650
	0    1    1    0   
$EndComp
$Comp
L C_Small C12
U 1 1 588AEB89
P 8650 5300
F 0 "C12" H 8742 5346 50  0000 L CNN
F 1 "0.1uF" H 8742 5255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8650 5300 50  0001 C CNN
F 3 "" H 8650 5300 50  0000 C CNN
	1    8650 5300
	1    0    0    -1  
$EndComp
Text GLabel 1900 3050 2    60   Input ~ 0
ENABLE_RELAY
$Comp
L GND #PWR016
U 1 1 588B0518
P 1150 3450
F 0 "#PWR016" H 1150 3200 50  0001 C CNN
F 1 "GND" H 1155 3277 50  0000 C CNN
F 2 "" H 1150 3450 50  0000 C CNN
F 3 "" H 1150 3450 50  0000 C CNN
	1    1150 3450
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328PB-A IC1
U 1 1 588B0FF2
P 9000 2400
F 0 "IC1" H 9000 722 50  0000 C CNN
F 1 "ATMEGA328PB-A" H 9000 813 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 8950 1000 50  0001 L CIN
F 3 "" H 8700 2450 50  0000 C CNN
	1    9000 2400
	-1   0    0    1   
$EndComp
$Comp
L Screw_Terminal_1x05 J3
U 1 1 588B24D7
P 3900 900
F 0 "J3" V 3683 900 50  0000 C CNN
F 1 "Screw_Terminal_1x05" V 3774 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3900 375 50  0001 C CNN
F 3 "" H 3875 1200 50  0001 C CNN
	1    3900 900 
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x02 J4
U 1 1 588B26AC
P 4900 900
F 0 "J4" V 4934 1105 50  0000 L CNN
F 1 "Screw_Terminal_1x02" V 5025 1105 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4900 675 50  0001 C CNN
F 3 "" H 4875 900 50  0001 C CNN
	1    4900 900 
	0    1    1    0   
$EndComp
Text GLabel 3700 1200 3    60   BiDi ~ 0
SCK
Text GLabel 4100 1200 3    60   BiDi ~ 0
MOSI
Text GLabel 3900 1200 3    60   BiDi ~ 0
MISO
Text GLabel 4300 1200 3    60   Output ~ 0
MC_CS
$Comp
L MOSFET_P_CH Q2
U 1 1 588B3B73
P 4700 1400
F 0 "Q2" H 4891 1446 50  0000 L CNN
F 1 "MOSFET_P_CH" H 4891 1355 50  0000 L CNN
F 2 "nespole:SOT-23_Handsoldering" H 4900 1500 50  0001 C CNN
F 3 "" H 4700 1400 50  0000 C CNN
	1    4700 1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 588B3C8D
P 4800 1700
F 0 "#PWR017" H 4800 1550 50  0001 C CNN
F 1 "+5V" H 4815 1873 50  0000 C CNN
F 2 "" H 4800 1700 50  0000 C CNN
F 3 "" H 4800 1700 50  0000 C CNN
	1    4800 1700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR018
U 1 1 588B3D37
P 5100 1700
F 0 "#PWR018" H 5100 1450 50  0001 C CNN
F 1 "GND" H 5105 1527 50  0000 C CNN
F 2 "" H 5100 1700 50  0000 C CNN
F 3 "" H 5100 1700 50  0000 C CNN
	1    5100 1700
	1    0    0    -1  
$EndComp
Text GLabel 2650 1650 2    60   Input ~ 0
SCK
Text GLabel 2650 1750 2    60   Output ~ 0
MISO
Text GLabel 2800 1950 2    60   Input ~ 0
TEMP_CS
$Comp
L R_Small R5
U 1 1 588B45C2
P 2750 2250
F 0 "R5" V 2554 2250 50  0000 C CNN
F 1 "10k" V 2645 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2750 2250 50  0001 C CNN
F 3 "" H 2750 2250 50  0000 C CNN
	1    2750 2250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR019
U 1 1 588B466A
P 3000 2250
F 0 "#PWR019" H 3000 2100 50  0001 C CNN
F 1 "+5V" V 3015 2378 50  0000 L CNN
F 2 "" H 3000 2250 50  0000 C CNN
F 3 "" H 3000 2250 50  0000 C CNN
	1    3000 2250
	0    1    1    0   
$EndComp
Text GLabel 7600 1900 0    60   Input ~ 0
RXD
Text GLabel 7600 1800 0    60   Output ~ 0
TXD
Text GLabel 7600 3100 0    60   Output ~ 0
SCK
Text GLabel 7600 3200 0    60   Input ~ 0
MISO
Text GLabel 7600 3300 0    60   Output ~ 0
MOSI
Text GLabel 7600 3600 0    60   Output ~ 0
CLKOUT
Text GLabel 1900 6000 3    60   Input ~ 0
CLKOUT
Text GLabel 7600 1200 0    60   Output ~ 0
ENABLE_RELAY
Text GLabel 10400 1600 2    60   Output ~ 0
TEMP_CS
Text GLabel 7600 3400 0    60   Input ~ 0
MC_CS
Text GLabel 10400 1500 2    60   Output ~ 0
LED_CS
$Comp
L Rotary_Encoder_Switch SW1
U 1 1 588B7861
P 4300 3100
F 0 "SW1" H 4300 2733 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 4300 2824 50  0000 C CNN
F 2 "nespole:ROTARY-ENCODER-PEC11S" H 4200 3260 50  0001 C CNN
F 3 "" H 4300 3360 50  0001 C CNN
	1    4300 3100
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR020
U 1 1 588B8426
P 3100 2900
F 0 "#PWR020" H 3100 2750 50  0001 C CNN
F 1 "+5V" H 3115 3073 50  0000 C CNN
F 2 "" H 3100 2900 50  0000 C CNN
F 3 "" H 3100 2900 50  0000 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 588B849A
P 3350 2900
F 0 "R6" V 3154 2900 50  0000 C CNN
F 1 "1k" V 3245 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3350 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0000 C CNN
	1    3350 2900
	0    1    1    0   
$EndComp
Text GLabel 3550 3200 0    60   Output ~ 0
SW_BUTTON
$Comp
L GND #PWR021
U 1 1 588B8706
P 3500 3450
F 0 "#PWR021" H 3500 3200 50  0001 C CNN
F 1 "GND" V 3505 3322 50  0000 R CNN
F 2 "" H 3500 3450 50  0000 C CNN
F 3 "" H 3500 3450 50  0000 C CNN
	1    3500 3450
	0    1    1    0   
$EndComp
$Comp
L R_Small R7
U 1 1 588B879C
P 3750 3450
F 0 "R7" V 3554 3450 50  0000 C CNN
F 1 "10k" V 3645 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3750 3450 50  0001 C CNN
F 3 "" H 3750 3450 50  0000 C CNN
	1    3750 3450
	0    1    1    0   
$EndComp
$Comp
L C C9
U 1 1 588B908E
P 3650 3050
F 0 "C9" H 3765 3096 50  0000 L CNN
F 1 "0.1u" H 3765 3005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 2900 50  0001 C CNN
F 3 "" H 3650 3050 50  0000 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 850  2150 1450
Wire Wire Line
	2150 1000 2050 1000
Wire Wire Line
	1400 1950 1750 1950
Wire Wire Line
	2150 2450 2150 2250
Wire Wire Line
	6550 2550 6550 3400
Wire Wire Line
	6300 3000 6700 3000
Connection ~ 6550 3000
Wire Wire Line
	6900 2550 6850 2550
Wire Wire Line
	1600 5850 1600 7050
Wire Wire Line
	1700 5850 1700 7050
Wire Wire Line
	1150 7050 1150 6950
Wire Wire Line
	1150 6950 1400 6950
Wire Wire Line
	1400 6950 1400 7050
Wire Wire Line
	6900 3400 6850 3400
Wire Wire Line
	1600 1050 1600 1000
Wire Wire Line
	1600 1000 1750 1000
Connection ~ 2150 1000
Connection ~ 1600 1950
Wire Wire Line
	1750 1600 1750 1750
Wire Wire Line
	1400 1600 1750 1600
Wire Wire Line
	1400 1600 1400 1750
Connection ~ 1600 1600
Wire Wire Line
	1450 3450 1800 3450
Wire Wire Line
	2450 3900 2550 3900
Wire Wire Line
	2850 3900 2950 3900
Wire Wire Line
	2800 4150 2850 4150
Wire Wire Line
	2850 4150 2850 3900
Wire Wire Line
	2600 4150 2550 4150
Wire Wire Line
	2550 4150 2550 3900
Connection ~ 1700 3450
Wire Wire Line
	9100 3900 9100 4600
Connection ~ 9100 4200
Wire Wire Line
	9400 4200 9400 4600
Wire Wire Line
	9100 900  9100 800 
Wire Wire Line
	6350 2100 7700 2100
Wire Wire Line
	9400 4600 9550 4600
Wire Wire Line
	9100 800  9450 800 
Connection ~ 2150 2450
Wire Wire Line
	1600 1900 1600 2150
Wire Wire Line
	1600 2450 2150 2450
Wire Wire Line
	1600 2450 1600 2350
Wire Wire Line
	8850 4200 9100 4200
Wire Wire Line
	6050 2100 5950 2100
Wire Wire Line
	5650 4850 6700 4850
Wire Wire Line
	6700 4850 6700 5650
Wire Wire Line
	6700 5650 7300 5650
Wire Wire Line
	7300 5550 6750 5550
Wire Wire Line
	6750 5550 6750 4800
Wire Wire Line
	6750 4800 5550 4800
Wire Wire Line
	5550 4800 5550 4850
Wire Wire Line
	7300 5450 6800 5450
Wire Wire Line
	6800 5450 6800 4750
Wire Wire Line
	6800 4750 5450 4750
Wire Wire Line
	5450 4750 5450 4850
Wire Wire Line
	7300 5350 6850 5350
Wire Wire Line
	6850 5350 6850 4700
Wire Wire Line
	6850 4700 5350 4700
Wire Wire Line
	5350 4700 5350 4850
Wire Wire Line
	7300 5250 6900 5250
Wire Wire Line
	6900 5250 6900 4650
Wire Wire Line
	6900 4650 5250 4650
Wire Wire Line
	5250 4650 5250 4850
Wire Wire Line
	7300 5150 6950 5150
Wire Wire Line
	6950 5150 6950 4600
Wire Wire Line
	6950 4600 5150 4600
Wire Wire Line
	5150 4600 5150 4850
Wire Wire Line
	7300 5050 7000 5050
Wire Wire Line
	7000 5050 7000 4550
Wire Wire Line
	7000 4550 5050 4550
Wire Wire Line
	5050 4550 5050 4850
Wire Wire Line
	7300 4950 7050 4950
Wire Wire Line
	7050 4950 7050 4500
Wire Wire Line
	7050 4500 4950 4500
Wire Wire Line
	4950 4500 4950 4850
Wire Wire Line
	6050 6250 6750 6250
Wire Wire Line
	6750 6250 6750 6100
Wire Wire Line
	6750 6100 7300 6100
Wire Wire Line
	5550 6250 5550 6300
Wire Wire Line
	5550 6300 6800 6300
Wire Wire Line
	6800 6300 6800 6000
Wire Wire Line
	6800 6000 7300 6000
Wire Wire Line
	5050 6250 5050 6350
Wire Wire Line
	5050 6350 6850 6350
Wire Wire Line
	6850 6350 6850 5900
Wire Wire Line
	6850 5900 7300 5900
Wire Wire Line
	4550 6250 4550 6400
Wire Wire Line
	4550 6400 6900 6400
Wire Wire Line
	6900 6400 6900 5800
Wire Wire Line
	6900 5800 7300 5800
Wire Wire Line
	8450 5800 8550 5800
Wire Wire Line
	8450 5900 9300 5900
Wire Wire Line
	8450 6000 8550 6000
Wire Wire Line
	8450 6100 8550 6100
Wire Wire Line
	9300 6200 9500 6200
Wire Wire Line
	9100 6200 9000 6200
Wire Wire Line
	9000 6200 9000 5900
Connection ~ 9000 5900
Wire Wire Line
	8450 5650 8550 5650
Wire Wire Line
	8750 5650 8900 5650
Wire Wire Line
	8450 5500 8450 5400
Wire Wire Line
	8450 5400 9450 5400
Connection ~ 8650 5400
Wire Wire Line
	8450 5300 8450 5200
Wire Wire Line
	8450 5200 8650 5200
Wire Wire Line
	8650 5200 8650 5100
Wire Wire Line
	8650 5100 9450 5100
Wire Wire Line
	1700 3450 1700 3350
Wire Wire Line
	1700 3050 1900 3050
Wire Wire Line
	9200 900  9200 800 
Connection ~ 9200 800 
Wire Wire Line
	6350 2250 6500 2250
Wire Wire Line
	6500 2250 6500 2100
Connection ~ 6500 2100
Wire Wire Line
	3500 1200 3500 1100
Wire Wire Line
	3700 1200 3700 1100
Wire Wire Line
	3900 1200 3900 1100
Wire Wire Line
	4100 1200 4100 1100
Wire Wire Line
	4300 1200 4300 1100
Wire Wire Line
	4800 1200 4800 1100
Wire Wire Line
	5000 1100 5100 1100
Wire Wire Line
	4800 1700 4800 1600
Wire Wire Line
	2550 1650 2650 1650
Wire Wire Line
	2650 1750 2550 1750
Wire Wire Line
	2550 1950 2800 1950
Wire Wire Line
	2650 2250 2600 2250
Wire Wire Line
	2600 2250 2600 1950
Connection ~ 2600 1950
Wire Wire Line
	2850 2250 3000 2250
Wire Wire Line
	7600 1800 7700 1800
Wire Wire Line
	7700 1900 7600 1900
Wire Wire Line
	7600 3100 7700 3100
Wire Wire Line
	7700 3200 7600 3200
Wire Wire Line
	7600 3300 7700 3300
Wire Wire Line
	7200 3000 7700 3000
Wire Wire Line
	7600 3600 7700 3600
Wire Wire Line
	7600 3400 7700 3400
Wire Wire Line
	7600 1200 7700 1200
Wire Wire Line
	3550 3200 4000 3200
Wire Wire Line
	3450 2900 4000 2900
Wire Wire Line
	3250 2900 3100 2900
Wire Wire Line
	3500 3450 3650 3450
Wire Wire Line
	3850 3450 3950 3450
Wire Wire Line
	3950 3450 3950 3200
Connection ~ 3950 3200
Wire Wire Line
	4000 2900 4000 3000
Connection ~ 3650 2900
$Comp
L GND #PWR022
U 1 1 588BA6C6
P 4500 1400
F 0 "#PWR022" H 4500 1150 50  0001 C CNN
F 1 "GND" H 4505 1227 50  0000 C CNN
F 2 "" H 4500 1400 50  0000 C CNN
F 3 "" H 4500 1400 50  0000 C CNN
	1    4500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1100 5100 1700
$Comp
L GND #PWR023
U 1 1 588BAEC7
P 5450 3100
F 0 "#PWR023" H 5450 2850 50  0001 C CNN
F 1 "GND" V 5455 2972 50  0000 R CNN
F 2 "" H 5450 3100 50  0000 C CNN
F 3 "" H 5450 3100 50  0000 C CNN
	1    5450 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3100 5450 3100
Text GLabel 4750 3200 2    60   Output ~ 0
SW_INT
Text GLabel 4750 3000 2    60   Output ~ 0
SW_DIR
Wire Wire Line
	4600 3200 4750 3200
Wire Wire Line
	4600 3000 4750 3000
$Comp
L C C10
U 1 1 588BB94A
P 5250 2800
F 0 "C10" V 4998 2800 50  0000 C CNN
F 1 "0.1u" V 5089 2800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5288 2650 50  0001 C CNN
F 3 "" H 5250 2800 50  0000 C CNN
	1    5250 2800
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 588BB9FC
P 5250 3400
F 0 "C11" V 4998 3400 50  0000 C CNN
F 1 "0.1u" V 5089 3400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5288 3250 50  0001 C CNN
F 3 "" H 5250 3400 50  0000 C CNN
	1    5250 3400
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR024
U 1 1 588BBA85
P 4700 2500
F 0 "#PWR024" H 4700 2350 50  0001 C CNN
F 1 "+5V" H 4715 2673 50  0000 C CNN
F 2 "" H 4700 2500 50  0000 C CNN
F 3 "" H 4700 2500 50  0000 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 588BBAFF
P 4700 3650
F 0 "#PWR025" H 4700 3500 50  0001 C CNN
F 1 "+5V" H 4715 3823 50  0000 C CNN
F 2 "" H 4700 3650 50  0000 C CNN
F 3 "" H 4700 3650 50  0000 C CNN
	1    4700 3650
	-1   0    0    1   
$EndComp
$Comp
L R_Small R8
U 1 1 588BBCF4
P 4700 2600
F 0 "R8" H 4641 2554 50  0000 R CNN
F 1 "10k" H 4641 2645 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4700 2600 50  0001 C CNN
F 3 "" H 4700 2600 50  0000 C CNN
	1    4700 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 3150 7200 3000
Wire Wire Line
	7200 2750 7200 2900
Wire Wire Line
	7200 2900 7700 2900
$Comp
L R_Small R9
U 1 1 588BC860
P 4700 3550
F 0 "R9" H 4641 3504 50  0000 R CNN
F 1 "10k" H 4641 3595 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0000 C CNN
	1    4700 3550
	-1   0    0    1   
$EndComp
$Comp
L R_Small R10
U 1 1 588BC9F6
P 5000 2800
F 0 "R10" V 5196 2800 50  0000 C CNN
F 1 "2.2k" V 5105 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5000 2800 50  0001 C CNN
F 3 "" H 5000 2800 50  0000 C CNN
	1    5000 2800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R11
U 1 1 588BCB0A
P 5000 3400
F 0 "R11" V 5196 3400 50  0000 C CNN
F 1 "2.2k" V 5105 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5000 3400 50  0001 C CNN
F 3 "" H 5000 3400 50  0000 C CNN
	1    5000 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2800 5400 3400
Connection ~ 5400 3100
Wire Wire Line
	4900 3400 4700 3400
Wire Wire Line
	4700 3200 4700 3450
Wire Wire Line
	4700 2700 4700 3000
Wire Wire Line
	4700 2800 4900 2800
Connection ~ 4700 3000
Connection ~ 4700 2800
Connection ~ 4700 3200
Connection ~ 4700 3400
Text GLabel 7600 1700 0    60   Input ~ 0
SW_BUTTON
Text GLabel 7600 1600 0    60   Input ~ 0
SW_INT
Text GLabel 7600 1500 0    60   Input ~ 0
SW_DIR
Wire Wire Line
	7600 1500 7700 1500
Wire Wire Line
	7700 1600 7600 1600
Wire Wire Line
	7600 1700 7700 1700
$Comp
L CP C13
U 1 1 588BF988
P 9100 5250
F 0 "C13" H 9218 5296 50  0000 L CNN
F 1 "10u" H 9218 5205 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 9138 5100 50  0001 C CNN
F 3 "" H 9100 5250 50  0000 C CNN
	1    9100 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 588B4381
P 9450 5400
F 0 "#PWR026" H 9450 5150 50  0001 C CNN
F 1 "GND" H 9455 5227 50  0000 C CNN
F 2 "" H 9450 5400 50  0000 C CNN
F 3 "" H 9450 5400 50  0000 C CNN
	1    9450 5400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 588B4410
P 9450 5050
F 0 "#PWR027" H 9450 4900 50  0001 C CNN
F 1 "+5V" H 9465 5223 50  0000 C CNN
F 2 "" H 9450 5050 50  0000 C CNN
F 3 "" H 9450 5050 50  0000 C CNN
	1    9450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5100 9450 5050
Connection ~ 9100 5100
Connection ~ 9100 5400
Connection ~ 3650 3200
Wire Wire Line
	10300 1600 10400 1600
Wire Wire Line
	10300 1500 10400 1500
$Comp
L LED_RGB D2
U 1 1 588C3B38
P 3550 7000
F 0 "D2" H 3550 7497 50  0000 C CNN
F 1 "LED_RGB" H 3550 7406 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLCC-6" H 3550 6950 50  0001 C CNN
F 3 "" H 3550 6950 50  0000 C CNN
	1    3550 7000
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 588C3CC7
P 3900 6800
F 0 "R14" V 3693 6800 50  0000 C CNN
F 1 "1k" V 3784 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3830 6800 50  0001 C CNN
F 3 "" H 3900 6800 50  0000 C CNN
	1    3900 6800
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 588C3DF5
P 3900 7000
F 0 "R15" V 3693 7000 50  0000 C CNN
F 1 "1k" V 3784 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3830 7000 50  0001 C CNN
F 3 "" H 3900 7000 50  0000 C CNN
	1    3900 7000
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 588C3E89
P 3900 7200
F 0 "R16" V 3693 7200 50  0000 C CNN
F 1 "1.5k" V 3784 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3830 7200 50  0001 C CNN
F 3 "" H 3900 7200 50  0000 C CNN
	1    3900 7200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 588C3F22
P 3350 7350
F 0 "#PWR028" H 3350 7100 50  0001 C CNN
F 1 "GND" H 3355 7177 50  0000 C CNN
F 2 "" H 3350 7350 50  0000 C CNN
F 3 "" H 3350 7350 50  0000 C CNN
	1    3350 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6800 3350 7350
Connection ~ 3350 7200
Connection ~ 3350 7000
Text GLabel 4050 7200 2    60   Input ~ 0
LED_R
Text GLabel 4050 7000 2    60   Input ~ 0
LED_G
Text GLabel 4050 6800 2    60   Input ~ 0
LED_B
Text GLabel 7600 3500 0    60   Output ~ 0
LED_R
Text GLabel 7600 1300 0    60   Output ~ 0
LED_G
Text GLabel 7600 1400 0    60   Output ~ 0
LED_B
Wire Wire Line
	7600 3500 7700 3500
Wire Wire Line
	7600 1400 7700 1400
Wire Wire Line
	7600 1300 7700 1300
Text GLabel 7700 2200 0    60   BiDi ~ 0
SCL
Text GLabel 7700 2300 0    60   BiDi ~ 0
SDA
$Comp
L Screw_Terminal_1x02 J5
U 1 1 588D1482
P 5650 900
F 0 "J5" V 5684 1105 50  0000 L CNN
F 1 "Screw_Terminal_1x02" V 5775 1105 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5650 675 50  0001 C CNN
F 3 "" H 5625 900 50  0001 C CNN
	1    5650 900 
	0    1    1    0   
$EndComp
Text GLabel 5550 1200 3    60   BiDi ~ 0
SCL
Text GLabel 5750 1200 3    60   BiDi ~ 0
SDA
Wire Wire Line
	5550 1200 5550 1100
Wire Wire Line
	5750 1200 5750 1100
$Comp
L Crystal_GND24 Y1
U 1 1 588D5707
P 6900 2950
F 0 "Y1" V 6946 2709 50  0000 R CNN
F 1 "Crystal_GND24" V 6855 2709 50  0000 R CNN
F 2 "Crystals:Crystal_SMD_TXC_7M-4pin_3.2x2.5mm_HandSoldering" H 6900 2950 50  0001 C CNN
F 3 "" H 6900 2950 50  0000 C CNN
	1    6900 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 2550 6900 2800
Wire Wire Line
	6900 3100 6900 3400
Wire Wire Line
	7200 3150 6900 3150
Connection ~ 6900 3150
Wire Wire Line
	7200 2750 6900 2750
Connection ~ 6900 2750
Wire Wire Line
	6700 3000 6700 2950
Wire Wire Line
	7100 2950 7100 3200
Wire Wire Line
	7100 3200 6650 3200
Wire Wire Line
	6650 3200 6650 3000
Connection ~ 6650 3000
$Comp
L CH340G U2
U 1 1 588D6C32
P 2200 5350
F 0 "U2" V 2253 4722 60  0000 R CNN
F 1 "CH340G" V 2147 4722 60  0000 R CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 2150 6450 60  0001 C CNN
F 3 "" H 2150 6450 60  0000 C CNN
	1    2200 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 4850 1800 4750
Wire Wire Line
	1900 4850 1900 4750
$Comp
L GND #PWR029
U 1 1 588D7828
P 1150 4800
F 0 "#PWR029" H 1150 4550 50  0001 C CNN
F 1 "GND" H 1155 4627 50  0000 C CNN
F 2 "" H 1150 4800 50  0000 C CNN
F 3 "" H 1150 4800 50  0000 C CNN
	1    1150 4800
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 588D78BD
P 1400 4750
F 0 "C6" V 1148 4750 50  0000 C CNN
F 1 "0.1u" V 1239 4750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1438 4600 50  0001 C CNN
F 3 "" H 1400 4750 50  0000 C CNN
	1    1400 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 4850 1600 4750
Wire Wire Line
	1600 4750 1550 4750
Wire Wire Line
	1250 4750 1150 4750
Wire Wire Line
	1150 4750 1150 4800
Wire Wire Line
	2300 5850 2300 6000
Wire Wire Line
	2300 6000 2350 6000
Wire Wire Line
	2650 6000 2650 6100
Wire Wire Line
	1900 6000 1900 5850
$Comp
L Jumper_NO_Small JP1
U 1 1 588D89A9
P 1900 6950
F 0 "JP1" H 1900 7135 50  0000 C CNN
F 1 "Jumper_NO_Small" H 1900 7044 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1900 6950 50  0001 C CNN
F 3 "" H 1900 6950 50  0000 C CNN
	1    1900 6950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 588D8A6E
P 2150 6950
F 0 "#PWR030" H 2150 6800 50  0001 C CNN
F 1 "+5V" H 2165 7123 50  0000 C CNN
F 2 "" H 2150 6950 50  0000 C CNN
F 3 "" H 2150 6950 50  0000 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7050 1800 6950
Wire Wire Line
	2000 6950 2150 6950
Text GLabel 2750 4550 2    60   Output ~ 0
RESET
$Comp
L C C14
U 1 1 588D965B
P 2450 4550
F 0 "C14" V 2198 4550 50  0000 C CNN
F 1 "0.1u" V 2289 4550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2488 4400 50  0001 C CNN
F 3 "" H 2450 4550 50  0000 C CNN
	1    2450 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4550 2750 4550
Wire Wire Line
	2300 4850 2300 4550
$Comp
L GND #PWR031
U 1 1 58955EA1
P 2850 4850
F 0 "#PWR031" H 2850 4600 50  0001 C CNN
F 1 "GND" H 2855 4677 50  0000 C CNN
F 2 "" H 2850 4850 50  0000 C CNN
F 3 "" H 2850 4850 50  0000 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4850 2850 4850
Text Label 7050 4500 0    60   ~ 0
LED_SEGMENT_DP
Text Label 7000 4550 0    60   ~ 0
LED_SEGMENT_G
Text Label 6950 4600 0    60   ~ 0
LED_SEGMENT_F
Text Label 6900 4650 0    60   ~ 0
LED_SEGMENT_E
Text Label 6700 4850 0    60   ~ 0
LED_SEGMENT_A
Text Label 6750 4800 0    60   ~ 0
LED_SEGMENT_B
Text Label 6800 4750 0    60   ~ 0
LED_SEGMENT_C
Text Label 6850 4700 0    60   ~ 0
LED_SEGMENT_D
Text Label 6900 5800 0    60   ~ 0
LED_DIGIT_3
Text Label 6850 5900 0    60   ~ 0
LED_DIGIT_2
Text Label 6800 6000 0    60   ~ 0
LED_DIGIT_1
Text Label 6750 6100 0    60   ~ 0
LED_DIGIT_0
Wire Wire Line
	9300 3900 9850 3900
$Comp
L GND #PWR032
U 1 1 5897A510
P 10250 4600
F 0 "#PWR032" H 10250 4350 50  0001 C CNN
F 1 "GND" H 10255 4427 50  0000 C CNN
F 2 "" H 10250 4600 50  0000 C CNN
F 3 "" H 10250 4600 50  0000 C CNN
	1    10250 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR033
U 1 1 5897A5AB
P 9700 4200
F 0 "#PWR033" H 9700 4050 50  0001 C CNN
F 1 "+5V" H 9715 4373 50  0000 C CNN
F 2 "" H 9700 4200 50  0000 C CNN
F 3 "" H 9700 4200 50  0000 C CNN
	1    9700 4200
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5897A7FC
P 10000 4200
F 0 "C15" H 10115 4246 50  0000 L CNN
F 1 "0.1u" H 10115 4155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10038 4050 50  0001 C CNN
F 3 "" H 10000 4200 50  0000 C CNN
	1    10000 4200
	0    1    1    0   
$EndComp
$Comp
L CP C16
U 1 1 5897A802
P 10000 4600
F 0 "C16" H 10118 4646 50  0000 L CNN
F 1 "22m" H 10118 4555 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 10038 4450 50  0001 C CNN
F 3 "" H 10000 4600 50  0000 C CNN
	1    10000 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 4200 9850 4200
Wire Wire Line
	9850 3900 9850 4600
Wire Wire Line
	10150 4200 10150 4600
Wire Wire Line
	10150 4600 10250 4600
Connection ~ 9850 3900
Connection ~ 9850 4200
$Comp
L MOSFET_N_CH Q?
U 1 1 5897BEE3
P 2000 3450
F 0 "Q?" H 2191 3496 50  0000 L CNN
F 1 "MOSFET_N_CH" H 2191 3405 50  0000 L CNN
F 2 "" H 2200 3550 50  0000 C CNN
F 3 "" H 2000 3450 50  0000 C CNN
	1    2000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3250 2450 3250
Wire Wire Line
	2450 3250 2450 3900
Wire Wire Line
	2100 3650 2100 3850
$EndSCHEMATC
