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
ifeq "$(wildcard nbproject/Makefile-local-C18-PIC18EX_MRF24WB.mk)" "nbproject/Makefile-local-C18-PIC18EX_MRF24WB.mk"
include nbproject/Makefile-local-C18-PIC18EX_MRF24WB.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=C18-PIC18EX_MRF24WB
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/FTP.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/SMTP.o.d ${OBJECTDIR}/_ext/1954962658/SNMP.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/243675038/WFConsole.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d ${OBJECTDIR}/_ext/243675038/WFInit.o.d ${OBJECTDIR}/_ext/243675038/WFMac.o.d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d ${OBJECTDIR}/_ext/243675038/WFScan.o.d ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d ${OBJECTDIR}/_ext/1472/WF_Config.o.d ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o ${OBJECTDIR}/_ext/243675038/WFConsole.o ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o ${OBJECTDIR}/_ext/243675038/WFDriverCom.o ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o ${OBJECTDIR}/_ext/243675038/WFEventHandler.o ${OBJECTDIR}/_ext/243675038/WFInit.o ${OBJECTDIR}/_ext/243675038/WFMac.o ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o ${OBJECTDIR}/_ext/243675038/WFParamMsg.o ${OBJECTDIR}/_ext/243675038/WFPowerSave.o ${OBJECTDIR}/_ext/243675038/WFScan.o ${OBJECTDIR}/_ext/243675038/WFTxPower.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/243675038/WF_Eint.o ${OBJECTDIR}/_ext/243675038/WF_Spi.o ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o


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
	${MAKE}  -f nbproject/Makefile-C18-PIC18EX_MRF24WB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F8722
MP_PROCESSOR_OPTION_LD=18f8722
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o   ../BerkeleyTCPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o   ../BerkeleyTCPServerDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o   ../BerkeleyUDPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPClient.o   ../GenericTCPClient.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPServer.o   ../GenericTCPServer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/PingDemo.o 
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/SMTPDemo.o   ../SMTPDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   "../../../Microchip/TCPIP Stack/ARP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ARP.o 
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   "../../../Microchip/TCPIP Stack/Announce.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Announce.o 
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   "../../../Microchip/TCPIP Stack/AutoIP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   "../../../Microchip/TCPIP Stack/DHCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   "../../../Microchip/TCPIP Stack/DHCPs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   "../../../Microchip/TCPIP Stack/DNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNS.o 
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DNSs.o   "../../../Microchip/TCPIP Stack/DNSs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   "../../../Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Delay.o 
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   "../../../Microchip/TCPIP Stack/DynDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   "../../../Microchip/TCPIP Stack/ENC28J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   "../../../Microchip/TCPIP Stack/ENCX24J600.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   "../../../Microchip/TCPIP Stack/FTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/FTP.o 
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   "../../../Microchip/TCPIP Stack/HTTP2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   "../../../Microchip/TCPIP Stack/Hashes.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   "../../../Microchip/TCPIP Stack/Helpers.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   "../../../Microchip/TCPIP Stack/ICMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   "../../../Microchip/TCPIP Stack/IP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/IP.o 
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   "../../../Microchip/TCPIP Stack/LCDBlocking.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   "../../../Microchip/TCPIP Stack/MPFS2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   "../../../Microchip/TCPIP Stack/NBNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   "../../../Microchip/TCPIP Stack/Reboot.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   "../../../Microchip/TCPIP Stack/SMTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   "../../../Microchip/TCPIP Stack/SNMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   "../../../Microchip/TCPIP Stack/SNTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   "../../../Microchip/TCPIP Stack/SPIEEPROM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   "../../../Microchip/TCPIP Stack/SPIFlash.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   "../../../Microchip/TCPIP Stack/SPIRAM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   "../../../Microchip/TCPIP Stack/StackTsk.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   "../../../Microchip/TCPIP Stack/TCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCP.o 
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   "../../../Microchip/TCPIP Stack/TFTPc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   "../../../Microchip/TCPIP Stack/Telnet.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   "../../../Microchip/TCPIP Stack/Tick.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Tick.o 
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   "../../../Microchip/TCPIP Stack/UART.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART.o 
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   "../../../Microchip/TCPIP Stack/UDP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDP.o 
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o   "../../../Microchip/TCPIP Stack/ZeroconfHelper.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o   "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o   "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o 
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o   "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o 
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o   "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o 
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o   "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o 
	
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsole.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsole.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o 
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o   "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o 
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverCom.o   "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDriverCom.o 
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o   "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o 
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o   "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o 
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFEventHandler.o   "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFEventHandler.o 
	
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFInit.o   "../../../Microchip/TCPIP Stack/WiFi/WFInit.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFInit.o 
	
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFMac.o   "../../../Microchip/TCPIP Stack/WiFi/WFMac.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFMac.o 
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o   "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o 
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFParamMsg.o   "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFParamMsg.o 
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFPowerSave.o   "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFPowerSave.o 
	
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFScan.o   "../../../Microchip/TCPIP Stack/WiFi/WFScan.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFScan.o 
	
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFTxPower.o   "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFTxPower.o 
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/WF_Config.o   ../WF_Config.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/WF_Config.o 
	
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WF_Eint.o   "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WF_Eint.o 
	
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WF_Spi.o   "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WF_Spi.o 
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o   "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o 
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o   ../CustomHTTPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o   ../CustomSNMPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MainDemo.o 
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o   ../BerkeleyTCPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o   ../BerkeleyTCPServerDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o   ../BerkeleyUDPClientDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPClient.o   ../GenericTCPClient.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/GenericTCPServer.o   ../GenericTCPServer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/PingDemo.o   ../PingDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/PingDemo.o 
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/SMTPDemo.o   ../SMTPDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/UARTConfig.o   ../UARTConfig.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ARP.o   "../../../Microchip/TCPIP Stack/ARP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ARP.o 
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Announce.o   "../../../Microchip/TCPIP Stack/Announce.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Announce.o 
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/AutoIP.o   "../../../Microchip/TCPIP Stack/AutoIP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o   "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DHCP.o   "../../../Microchip/TCPIP Stack/DHCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DHCPs.o   "../../../Microchip/TCPIP Stack/DHCPs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DNS.o   "../../../Microchip/TCPIP Stack/DNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNS.o 
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DNSs.o   "../../../Microchip/TCPIP Stack/DNSs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Delay.o   "../../../Microchip/TCPIP Stack/Delay.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Delay.o 
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/DynDNS.o   "../../../Microchip/TCPIP Stack/DynDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ENC28J60.o   "../../../Microchip/TCPIP Stack/ENC28J60.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o   "../../../Microchip/TCPIP Stack/ENCX24J600.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/FTP.o   "../../../Microchip/TCPIP Stack/FTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/FTP.o 
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/HTTP2.o   "../../../Microchip/TCPIP Stack/HTTP2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Hashes.o   "../../../Microchip/TCPIP Stack/Hashes.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Helpers.o   "../../../Microchip/TCPIP Stack/Helpers.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ICMP.o   "../../../Microchip/TCPIP Stack/ICMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/IP.o   "../../../Microchip/TCPIP Stack/IP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/IP.o 
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o   "../../../Microchip/TCPIP Stack/LCDBlocking.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/MPFS2.o   "../../../Microchip/TCPIP Stack/MPFS2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/NBNS.o   "../../../Microchip/TCPIP Stack/NBNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Reboot.o   "../../../Microchip/TCPIP Stack/Reboot.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SMTP.o   "../../../Microchip/TCPIP Stack/SMTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SNMP.o   "../../../Microchip/TCPIP Stack/SNMP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SNTP.o   "../../../Microchip/TCPIP Stack/SNTP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o   "../../../Microchip/TCPIP Stack/SPIEEPROM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SPIFlash.o   "../../../Microchip/TCPIP Stack/SPIFlash.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/SPIRAM.o   "../../../Microchip/TCPIP Stack/SPIRAM.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/StackTsk.o   "../../../Microchip/TCPIP Stack/StackTsk.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/TCP.o   "../../../Microchip/TCPIP Stack/TCP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCP.o 
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o   "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/TFTPc.o   "../../../Microchip/TCPIP Stack/TFTPc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Telnet.o   "../../../Microchip/TCPIP Stack/Telnet.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/Tick.o   "../../../Microchip/TCPIP Stack/Tick.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/Tick.o 
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UART.o   "../../../Microchip/TCPIP Stack/UART.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART.o 
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o   "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UDP.o   "../../../Microchip/TCPIP Stack/UDP.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDP.o 
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o   "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o   "../../../Microchip/TCPIP Stack/ZeroconfHelper.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o   "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o   "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o 
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o   "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.o 
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o   "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.o 
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o   "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.o 
	
${OBJECTDIR}/_ext/243675038/WFConsole.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsole.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsole.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.o 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o   "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.o 
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o   "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.o 
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverCom.o   "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDriverCom.o 
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o   "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.o 
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o   "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.o 
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFEventHandler.o   "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFEventHandler.o 
	
${OBJECTDIR}/_ext/243675038/WFInit.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFInit.o   "../../../Microchip/TCPIP Stack/WiFi/WFInit.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFInit.o 
	
${OBJECTDIR}/_ext/243675038/WFMac.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFMac.o   "../../../Microchip/TCPIP Stack/WiFi/WFMac.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFMac.o 
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o   "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.o 
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFParamMsg.o   "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFParamMsg.o 
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFPowerSave.o   "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFPowerSave.o 
	
${OBJECTDIR}/_ext/243675038/WFScan.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFScan.o   "../../../Microchip/TCPIP Stack/WiFi/WFScan.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFScan.o 
	
${OBJECTDIR}/_ext/243675038/WFTxPower.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFTxPower.o   "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFTxPower.o 
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/WF_Config.o   ../WF_Config.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/WF_Config.o 
	
${OBJECTDIR}/_ext/243675038/WF_Eint.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WF_Eint.o   "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WF_Eint.o 
	
${OBJECTDIR}/_ext/243675038/WF_Spi.o: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WF_Spi.o   "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WF_Spi.o 
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.o: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o   "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.o 
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o   ../CustomHTTPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o   ../CustomSNMPApp.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -k -sco -DCFG_INCLUDE_PIC18EX_MRF24WB -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -mL -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/MainDemo.o   ../MainDemo.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/MainDemo.o 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_ICD3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/C18-PIC18EX_MRF24WB
	${RM} -r dist/C18-PIC18EX_MRF24WB

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
