#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-XC32-EX16_MRF24WB.mk)" "nbproject/Makefile-local-XC32-EX16_MRF24WB.mk"
include nbproject/Makefile-local-XC32-EX16_MRF24WB.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC32-EX16_MRF24WB
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/qel_state.o ${OBJECTDIR}/qel_action.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d ${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1954962658/BigInt.o.d ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/FTP.o.d ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/RSA.o.d ${OBJECTDIR}/_ext/1954962658/Random.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/SMTP.o.d ${OBJECTDIR}/_ext/1954962658/SNMP.o.d ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d ${OBJECTDIR}/_ext/1954962658/SSL.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/243675038/WFConsole.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d ${OBJECTDIR}/_ext/243675038/WFInit.o.d ${OBJECTDIR}/_ext/243675038/WFMac.o.d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d ${OBJECTDIR}/_ext/243675038/WFScan.o.d ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d ${OBJECTDIR}/_ext/1472/WF_Config.o.d ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/qel_state.o.d ${OBJECTDIR}/qel_action.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/qel_state.o ${OBJECTDIR}/qel_action.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-XC32-EX16_MRF24WB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX360F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -c  ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d",--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I".."
	
else
${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -c  ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d",--gdwarf-2,-I".."
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FTP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o "../../../Microchip/TCPIP Stack/FileSystem.c"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/RSA.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Random.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o "../../../Microchip/TCPIP Stack/SNMPv3.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o "../../../Microchip/TCPIP Stack/SNMPv3USM.c"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SSL.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsole.o "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFInit.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFInit.o.d" -o ${OBJECTDIR}/_ext/243675038/WFInit.o "../../../Microchip/TCPIP Stack/WiFi/WFInit.c"  
	
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMac.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMac.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMac.o "../../../Microchip/TCPIP Stack/WiFi/WFMac.c"  
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"  
	
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFScan.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFScan.o.d" -o ${OBJECTDIR}/_ext/243675038/WFScan.o "../../../Microchip/TCPIP Stack/WiFi/WFScan.c"  
	
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/243675038/WFTxPower.o "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"  
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/WF_Config.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c  
	
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Eint.o "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"  
	
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Spi.o "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"  
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"  
	
${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o "../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/qel_state.o: qel_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/qel_state.o.d 
	@${FIXDEPS} "${OBJECTDIR}/qel_state.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/qel_state.o.d" -o ${OBJECTDIR}/qel_state.o qel_state.c  
	
${OBJECTDIR}/qel_action.o: qel_action.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/qel_action.o.d 
	@${FIXDEPS} "${OBJECTDIR}/qel_action.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/qel_action.o.d" -o ${OBJECTDIR}/qel_action.o qel_action.c  
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ARP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Announce.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Delay.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FTP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o "../../../Microchip/TCPIP Stack/FileSystem.c"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/IP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/RSA.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Random.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o "../../../Microchip/TCPIP Stack/SNMPv3.c"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o "../../../Microchip/TCPIP Stack/SNMPv3USM.c"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/SSL.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/Tick.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDP.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsole.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsole.o "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c"  
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"  
	
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFInit.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFInit.o.d" -o ${OBJECTDIR}/_ext/243675038/WFInit.o "../../../Microchip/TCPIP Stack/WiFi/WFInit.c"  
	
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMac.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMac.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMac.o "../../../Microchip/TCPIP Stack/WiFi/WFMac.c"  
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c"  
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"  
	
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFScan.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFScan.o.d" -o ${OBJECTDIR}/_ext/243675038/WFScan.o "../../../Microchip/TCPIP Stack/WiFi/WFScan.c"  
	
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/243675038/WFTxPower.o "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"  
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/WF_Config.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c  
	
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Eint.o "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"  
	
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_Spi.o "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"  
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"  
	
${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/243675038/WF_pbkdf2.o "../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/qel_state.o: qel_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/qel_state.o.d 
	@${FIXDEPS} "${OBJECTDIR}/qel_state.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/qel_state.o.d" -o ${OBJECTDIR}/qel_state.o qel_state.c  
	
${OBJECTDIR}/qel_action.o: qel_action.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/qel_action.o.d 
	@${FIXDEPS} "${OBJECTDIR}/qel_action.o.d" $(SILENT) -c  ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_EX16_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MMD -MF "${OBJECTDIR}/qel_action.o.d" -o ${OBJECTDIR}/qel_action.o qel_action.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem "-mperipheral-libs"
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"..",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem "-mperipheral-libs"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XC32-EX16_MRF24WB
	${RM} -r dist/XC32-EX16_MRF24WB

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif