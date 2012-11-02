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
ifeq "$(wildcard nbproject/Makefile-local-XC16-DA210_BRD_MRF24WB.mk)" "nbproject/Makefile-local-XC16-DA210_BRD_MRF24WB.mk"
include nbproject/Makefile-local-XC16-DA210_BRD_MRF24WB.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC16-DA210_BRD_MRF24WB
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1 ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1 ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1 ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1 ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1 ${OBJECTDIR}/_ext/1472/PingDemo.p1 ${OBJECTDIR}/_ext/1472/SMTPDemo.p1 ${OBJECTDIR}/_ext/1472/UARTConfig.p1 ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1 ${OBJECTDIR}/_ext/1954962658/ARP.p1 ${OBJECTDIR}/_ext/1954962658/Announce.p1 ${OBJECTDIR}/_ext/1954962658/AutoIP.p1 ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1 ${OBJECTDIR}/_ext/1954962658/BigInt.p1 ${OBJECTDIR}/_ext/1954962658/DHCP.p1 ${OBJECTDIR}/_ext/1954962658/DHCPs.p1 ${OBJECTDIR}/_ext/1954962658/DNS.p1 ${OBJECTDIR}/_ext/1954962658/DNSs.p1 ${OBJECTDIR}/_ext/1954962658/Delay.p1 ${OBJECTDIR}/_ext/1954962658/DynDNS.p1 ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1 ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1 ${OBJECTDIR}/_ext/1954962658/FTP.p1 ${OBJECTDIR}/_ext/1954962658/FileSystem.p1 ${OBJECTDIR}/_ext/1954962658/HTTP2.p1 ${OBJECTDIR}/_ext/1954962658/Hashes.p1 ${OBJECTDIR}/_ext/1954962658/Helpers.p1 ${OBJECTDIR}/_ext/1954962658/ICMP.p1 ${OBJECTDIR}/_ext/1954962658/IP.p1 ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1 ${OBJECTDIR}/_ext/1954962658/MPFS2.p1 ${OBJECTDIR}/_ext/1954962658/NBNS.p1 ${OBJECTDIR}/_ext/1954962658/RSA.p1 ${OBJECTDIR}/_ext/1954962658/Random.p1 ${OBJECTDIR}/_ext/1954962658/Reboot.p1 ${OBJECTDIR}/_ext/1954962658/SMTP.p1 ${OBJECTDIR}/_ext/1954962658/SNMP.p1 ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1 ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1 ${OBJECTDIR}/_ext/1954962658/SNTP.p1 ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1 ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1 ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1 ${OBJECTDIR}/_ext/1954962658/SSL.p1 ${OBJECTDIR}/_ext/1954962658/StackTsk.p1 ${OBJECTDIR}/_ext/1954962658/TCP.p1 ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1 ${OBJECTDIR}/_ext/1954962658/TFTPc.p1 ${OBJECTDIR}/_ext/1954962658/Telnet.p1 ${OBJECTDIR}/_ext/1954962658/Tick.p1 ${OBJECTDIR}/_ext/1954962658/UART.p1 ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1 ${OBJECTDIR}/_ext/1954962658/UDP.p1 ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1 ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1 ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1 ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1 ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1 ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1 ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1 ${OBJECTDIR}/_ext/243675038/WFConsole.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1 ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1 ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1 ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1 ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1 ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1 ${OBJECTDIR}/_ext/243675038/WFInit.p1 ${OBJECTDIR}/_ext/243675038/WFMac.p1 ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1 ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1 ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1 ${OBJECTDIR}/_ext/243675038/WFScan.p1 ${OBJECTDIR}/_ext/243675038/WFTxPower.p1 ${OBJECTDIR}/_ext/1472/WF_Config.p1 ${OBJECTDIR}/_ext/243675038/WF_Eint.p1 ${OBJECTDIR}/_ext/243675038/WF_Spi.p1 ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1 ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1 ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1 ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1 ${OBJECTDIR}/_ext/1472/MainDemo.p1 ${OBJECTDIR}/qel_state.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d ${OBJECTDIR}/_ext/1472/PingDemo.p1.d ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d ${OBJECTDIR}/_ext/1954962658/ARP.p1.d ${OBJECTDIR}/_ext/1954962658/Announce.p1.d ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d ${OBJECTDIR}/_ext/1954962658/DNS.p1.d ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d ${OBJECTDIR}/_ext/1954962658/Delay.p1.d ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d ${OBJECTDIR}/_ext/1954962658/FTP.p1.d ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d ${OBJECTDIR}/_ext/1954962658/IP.p1.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d ${OBJECTDIR}/_ext/1954962658/RSA.p1.d ${OBJECTDIR}/_ext/1954962658/Random.p1.d ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d ${OBJECTDIR}/_ext/1954962658/SSL.p1.d ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d ${OBJECTDIR}/_ext/1954962658/TCP.p1.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d ${OBJECTDIR}/_ext/1954962658/Tick.p1.d ${OBJECTDIR}/_ext/1954962658/UART.p1.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d ${OBJECTDIR}/_ext/1954962658/UDP.p1.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d ${OBJECTDIR}/_ext/243675038/WFInit.p1.d ${OBJECTDIR}/_ext/243675038/WFMac.p1.d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d ${OBJECTDIR}/_ext/243675038/WFScan.p1.d ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d ${OBJECTDIR}/_ext/1472/WF_Config.p1.d ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d ${OBJECTDIR}/_ext/1472/MainDemo.p1.d ${OBJECTDIR}/qel_state.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1 ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1 ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1 ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1 ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1 ${OBJECTDIR}/_ext/1472/PingDemo.p1 ${OBJECTDIR}/_ext/1472/SMTPDemo.p1 ${OBJECTDIR}/_ext/1472/UARTConfig.p1 ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1 ${OBJECTDIR}/_ext/1954962658/ARP.p1 ${OBJECTDIR}/_ext/1954962658/Announce.p1 ${OBJECTDIR}/_ext/1954962658/AutoIP.p1 ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1 ${OBJECTDIR}/_ext/1954962658/BigInt.p1 ${OBJECTDIR}/_ext/1954962658/DHCP.p1 ${OBJECTDIR}/_ext/1954962658/DHCPs.p1 ${OBJECTDIR}/_ext/1954962658/DNS.p1 ${OBJECTDIR}/_ext/1954962658/DNSs.p1 ${OBJECTDIR}/_ext/1954962658/Delay.p1 ${OBJECTDIR}/_ext/1954962658/DynDNS.p1 ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1 ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1 ${OBJECTDIR}/_ext/1954962658/FTP.p1 ${OBJECTDIR}/_ext/1954962658/FileSystem.p1 ${OBJECTDIR}/_ext/1954962658/HTTP2.p1 ${OBJECTDIR}/_ext/1954962658/Hashes.p1 ${OBJECTDIR}/_ext/1954962658/Helpers.p1 ${OBJECTDIR}/_ext/1954962658/ICMP.p1 ${OBJECTDIR}/_ext/1954962658/IP.p1 ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1 ${OBJECTDIR}/_ext/1954962658/MPFS2.p1 ${OBJECTDIR}/_ext/1954962658/NBNS.p1 ${OBJECTDIR}/_ext/1954962658/RSA.p1 ${OBJECTDIR}/_ext/1954962658/Random.p1 ${OBJECTDIR}/_ext/1954962658/Reboot.p1 ${OBJECTDIR}/_ext/1954962658/SMTP.p1 ${OBJECTDIR}/_ext/1954962658/SNMP.p1 ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1 ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1 ${OBJECTDIR}/_ext/1954962658/SNTP.p1 ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1 ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1 ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1 ${OBJECTDIR}/_ext/1954962658/SSL.p1 ${OBJECTDIR}/_ext/1954962658/StackTsk.p1 ${OBJECTDIR}/_ext/1954962658/TCP.p1 ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1 ${OBJECTDIR}/_ext/1954962658/TFTPc.p1 ${OBJECTDIR}/_ext/1954962658/Telnet.p1 ${OBJECTDIR}/_ext/1954962658/Tick.p1 ${OBJECTDIR}/_ext/1954962658/UART.p1 ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1 ${OBJECTDIR}/_ext/1954962658/UDP.p1 ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1 ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1 ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1 ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1 ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1 ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1 ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1 ${OBJECTDIR}/_ext/243675038/WFConsole.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1 ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1 ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1 ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1 ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1 ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1 ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1 ${OBJECTDIR}/_ext/243675038/WFInit.p1 ${OBJECTDIR}/_ext/243675038/WFMac.p1 ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1 ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1 ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1 ${OBJECTDIR}/_ext/243675038/WFScan.p1 ${OBJECTDIR}/_ext/243675038/WFTxPower.p1 ${OBJECTDIR}/_ext/1472/WF_Config.p1 ${OBJECTDIR}/_ext/243675038/WF_Eint.p1 ${OBJECTDIR}/_ext/243675038/WF_Spi.p1 ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1 ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1 ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1 ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1 ${OBJECTDIR}/_ext/1472/MainDemo.p1 ${OBJECTDIR}/qel_state.p1


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
	${MAKE}  -f nbproject/Makefile-XC16-DA210_BRD_MRF24WB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F97J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1  ../BerkeleyTCPClientDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1  ../BerkeleyTCPServerDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1  ../BerkeleyUDPClientDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.p1: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/GenericTCPClient.p1  ../GenericTCPClient.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/GenericTCPClient.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.p1: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/GenericTCPServer.p1  ../GenericTCPServer.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/GenericTCPServer.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/PingDemo.p1: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/PingDemo.p1  ../PingDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/PingDemo.d ${OBJECTDIR}/_ext/1472/PingDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/PingDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/SMTPDemo.p1: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/SMTPDemo.p1  ../SMTPDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/SMTPDemo.d ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/UARTConfig.p1: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/UARTConfig.p1  ../UARTConfig.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/UARTConfig.d ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1  "../../../Microchip/TCPIP Stack/ARCFOUR.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ARP.p1: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ARP.p1  "../../../Microchip/TCPIP Stack/ARP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ARP.d ${OBJECTDIR}/_ext/1954962658/ARP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ARP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Announce.p1: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Announce.p1  "../../../Microchip/TCPIP Stack/Announce.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Announce.d ${OBJECTDIR}/_ext/1954962658/Announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Announce.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/AutoIP.p1: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/AutoIP.p1  "../../../Microchip/TCPIP Stack/AutoIP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/AutoIP.d ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1  "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/BigInt.p1: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/BigInt.p1  "../../../Microchip/TCPIP Stack/BigInt.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/BigInt.d ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DHCP.p1: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DHCP.p1  "../../../Microchip/TCPIP Stack/DHCP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DHCP.d ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DHCPs.p1: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DHCPs.p1  "../../../Microchip/TCPIP Stack/DHCPs.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DHCPs.d ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DNS.p1: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DNS.p1  "../../../Microchip/TCPIP Stack/DNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DNS.d ${OBJECTDIR}/_ext/1954962658/DNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DNSs.p1: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DNSs.p1  "../../../Microchip/TCPIP Stack/DNSs.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DNSs.d ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Delay.p1: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Delay.p1  "../../../Microchip/TCPIP Stack/Delay.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Delay.d ${OBJECTDIR}/_ext/1954962658/Delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Delay.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DynDNS.p1: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DynDNS.p1  "../../../Microchip/TCPIP Stack/DynDNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DynDNS.d ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.p1: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ENC28J60.p1  "../../../Microchip/TCPIP Stack/ENC28J60.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ENC28J60.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1  "../../../Microchip/TCPIP Stack/ENCX24J600.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/FTP.p1: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/FTP.p1  "../../../Microchip/TCPIP Stack/FTP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/FTP.d ${OBJECTDIR}/_ext/1954962658/FTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/FTP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/FileSystem.p1: ../../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/FileSystem.p1  "../../../Microchip/TCPIP Stack/FileSystem.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/FileSystem.d ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/HTTP2.p1: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/HTTP2.p1  "../../../Microchip/TCPIP Stack/HTTP2.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/HTTP2.d ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Hashes.p1: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Hashes.p1  "../../../Microchip/TCPIP Stack/Hashes.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Hashes.d ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Helpers.p1: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Helpers.p1  "../../../Microchip/TCPIP Stack/Helpers.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Helpers.d ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ICMP.p1: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ICMP.p1  "../../../Microchip/TCPIP Stack/ICMP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ICMP.d ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/IP.p1: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/IP.p1  "../../../Microchip/TCPIP Stack/IP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/IP.d ${OBJECTDIR}/_ext/1954962658/IP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/IP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1  "../../../Microchip/TCPIP Stack/LCDBlocking.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/MPFS2.p1: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/MPFS2.p1  "../../../Microchip/TCPIP Stack/MPFS2.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/MPFS2.d ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/NBNS.p1: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/NBNS.p1  "../../../Microchip/TCPIP Stack/NBNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/NBNS.d ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/RSA.p1: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/RSA.p1  "../../../Microchip/TCPIP Stack/RSA.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/RSA.d ${OBJECTDIR}/_ext/1954962658/RSA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/RSA.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Random.p1: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Random.p1  "../../../Microchip/TCPIP Stack/Random.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Random.d ${OBJECTDIR}/_ext/1954962658/Random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Random.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Reboot.p1: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Reboot.p1  "../../../Microchip/TCPIP Stack/Reboot.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Reboot.d ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SMTP.p1: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SMTP.p1  "../../../Microchip/TCPIP Stack/SMTP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SMTP.d ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNMP.p1: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNMP.p1  "../../../Microchip/TCPIP Stack/SNMP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNMP.d ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.p1: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNMPv3.p1  "../../../Microchip/TCPIP Stack/SNMPv3.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNMPv3.d ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1  "../../../Microchip/TCPIP Stack/SNMPv3USM.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.d ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNTP.p1: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNTP.p1  "../../../Microchip/TCPIP Stack/SNTP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNTP.d ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1  "../../../Microchip/TCPIP Stack/SPIEEPROM.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.p1: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SPIFlash.p1  "../../../Microchip/TCPIP Stack/SPIFlash.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SPIFlash.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.p1: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SPIRAM.p1  "../../../Microchip/TCPIP Stack/SPIRAM.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SPIRAM.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SSL.p1: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SSL.p1  "../../../Microchip/TCPIP Stack/SSL.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SSL.d ${OBJECTDIR}/_ext/1954962658/SSL.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SSL.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/StackTsk.p1: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/StackTsk.p1  "../../../Microchip/TCPIP Stack/StackTsk.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/StackTsk.d ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/TCP.p1: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/TCP.p1  "../../../Microchip/TCPIP Stack/TCP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/TCP.d ${OBJECTDIR}/_ext/1954962658/TCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/TCP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1  "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/TFTPc.p1: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/TFTPc.p1  "../../../Microchip/TCPIP Stack/TFTPc.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/TFTPc.d ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Telnet.p1: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Telnet.p1  "../../../Microchip/TCPIP Stack/Telnet.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Telnet.d ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Tick.p1: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Tick.p1  "../../../Microchip/TCPIP Stack/Tick.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Tick.d ${OBJECTDIR}/_ext/1954962658/Tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Tick.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UART.p1: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UART.p1  "../../../Microchip/TCPIP Stack/UART.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UART.d ${OBJECTDIR}/_ext/1954962658/UART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UART.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1  "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UDP.p1: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UDP.p1  "../../../Microchip/TCPIP Stack/UDP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UDP.d ${OBJECTDIR}/_ext/1954962658/UDP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UDP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1  "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1  "../../../Microchip/TCPIP Stack/ZeroconfHelper.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1  "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1  "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsole.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsole.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsole.d ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDriverCom.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDriverCom.d ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1  "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFEventHandler.p1  "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFEventHandler.d ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFInit.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFInit.p1  "../../../Microchip/TCPIP Stack/WiFi/WFInit.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFInit.d ${OBJECTDIR}/_ext/243675038/WFInit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFInit.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFMac.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFMac.p1  "../../../Microchip/TCPIP Stack/WiFi/WFMac.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFMac.d ${OBJECTDIR}/_ext/243675038/WFMac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFMac.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1  "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFParamMsg.p1  "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFParamMsg.d ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFPowerSave.p1  "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFPowerSave.d ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFScan.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFScan.p1  "../../../Microchip/TCPIP Stack/WiFi/WFScan.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFScan.d ${OBJECTDIR}/_ext/243675038/WFScan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFScan.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFTxPower.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFTxPower.p1  "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFTxPower.d ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/WF_Config.p1: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/WF_Config.p1  ../WF_Config.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/WF_Config.d ${OBJECTDIR}/_ext/1472/WF_Config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/WF_Config.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WF_Eint.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WF_Eint.p1  "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WF_Eint.d ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WF_Spi.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WF_Spi.p1  "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WF_Spi.d ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1  ../CustomHTTPApp.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1  ../CustomSNMPApp.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.p1: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/CustomSSLCert.p1  ../CustomSSLCert.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/CustomSSLCert.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/MainDemo.p1: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/MainDemo.p1  ../MainDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/MainDemo.d ${OBJECTDIR}/_ext/1472/MainDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/MainDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/qel_state.p1: qel_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/qel_state.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/qel_state.p1  qel_state.c 
	@-${MV} ${OBJECTDIR}/qel_state.d ${OBJECTDIR}/qel_state.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/qel_state.p1.d $(SILENT) 
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1  ../BerkeleyTCPClientDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1  ../BerkeleyTCPServerDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1  ../BerkeleyUDPClientDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.p1: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/GenericTCPClient.p1  ../GenericTCPClient.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/GenericTCPClient.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/GenericTCPClient.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.p1: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/GenericTCPServer.p1  ../GenericTCPServer.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/GenericTCPServer.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/GenericTCPServer.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/PingDemo.p1: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/PingDemo.p1  ../PingDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/PingDemo.d ${OBJECTDIR}/_ext/1472/PingDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/PingDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/SMTPDemo.p1: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/SMTPDemo.p1  ../SMTPDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/SMTPDemo.d ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/SMTPDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/UARTConfig.p1: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/UARTConfig.p1  ../UARTConfig.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/UARTConfig.d ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/UARTConfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1  "../../../Microchip/TCPIP Stack/ARCFOUR.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ARP.p1: ../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ARP.p1  "../../../Microchip/TCPIP Stack/ARP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ARP.d ${OBJECTDIR}/_ext/1954962658/ARP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ARP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Announce.p1: ../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Announce.p1  "../../../Microchip/TCPIP Stack/Announce.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Announce.d ${OBJECTDIR}/_ext/1954962658/Announce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Announce.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/AutoIP.p1: ../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/AutoIP.p1  "../../../Microchip/TCPIP Stack/AutoIP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/AutoIP.d ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/AutoIP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1  "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/BigInt.p1: ../../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/BigInt.p1  "../../../Microchip/TCPIP Stack/BigInt.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/BigInt.d ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/BigInt.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DHCP.p1: ../../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DHCP.p1  "../../../Microchip/TCPIP Stack/DHCP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DHCP.d ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DHCP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DHCPs.p1: ../../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DHCPs.p1  "../../../Microchip/TCPIP Stack/DHCPs.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DHCPs.d ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DHCPs.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DNS.p1: ../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DNS.p1  "../../../Microchip/TCPIP Stack/DNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DNS.d ${OBJECTDIR}/_ext/1954962658/DNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DNSs.p1: ../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DNSs.p1  "../../../Microchip/TCPIP Stack/DNSs.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DNSs.d ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DNSs.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Delay.p1: ../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Delay.p1  "../../../Microchip/TCPIP Stack/Delay.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Delay.d ${OBJECTDIR}/_ext/1954962658/Delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Delay.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/DynDNS.p1: ../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/DynDNS.p1  "../../../Microchip/TCPIP Stack/DynDNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/DynDNS.d ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/DynDNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.p1: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ENC28J60.p1  "../../../Microchip/TCPIP Stack/ENC28J60.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ENC28J60.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ENC28J60.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1  "../../../Microchip/TCPIP Stack/ENCX24J600.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/FTP.p1: ../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/FTP.p1  "../../../Microchip/TCPIP Stack/FTP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/FTP.d ${OBJECTDIR}/_ext/1954962658/FTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/FTP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/FileSystem.p1: ../../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/FileSystem.p1  "../../../Microchip/TCPIP Stack/FileSystem.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/FileSystem.d ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/FileSystem.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/HTTP2.p1: ../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/HTTP2.p1  "../../../Microchip/TCPIP Stack/HTTP2.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/HTTP2.d ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/HTTP2.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Hashes.p1: ../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Hashes.p1  "../../../Microchip/TCPIP Stack/Hashes.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Hashes.d ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Hashes.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Helpers.p1: ../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Helpers.p1  "../../../Microchip/TCPIP Stack/Helpers.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Helpers.d ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Helpers.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ICMP.p1: ../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ICMP.p1  "../../../Microchip/TCPIP Stack/ICMP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ICMP.d ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ICMP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/IP.p1: ../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/IP.p1  "../../../Microchip/TCPIP Stack/IP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/IP.d ${OBJECTDIR}/_ext/1954962658/IP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/IP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1  "../../../Microchip/TCPIP Stack/LCDBlocking.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/MPFS2.p1: ../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/MPFS2.p1  "../../../Microchip/TCPIP Stack/MPFS2.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/MPFS2.d ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/MPFS2.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/NBNS.p1: ../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/NBNS.p1  "../../../Microchip/TCPIP Stack/NBNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/NBNS.d ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/NBNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/RSA.p1: ../../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/RSA.p1  "../../../Microchip/TCPIP Stack/RSA.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/RSA.d ${OBJECTDIR}/_ext/1954962658/RSA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/RSA.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Random.p1: ../../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Random.p1  "../../../Microchip/TCPIP Stack/Random.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Random.d ${OBJECTDIR}/_ext/1954962658/Random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Random.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Reboot.p1: ../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Reboot.p1  "../../../Microchip/TCPIP Stack/Reboot.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Reboot.d ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Reboot.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SMTP.p1: ../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SMTP.p1  "../../../Microchip/TCPIP Stack/SMTP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SMTP.d ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SMTP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNMP.p1: ../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNMP.p1  "../../../Microchip/TCPIP Stack/SNMP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNMP.d ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNMP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.p1: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNMPv3.p1  "../../../Microchip/TCPIP Stack/SNMPv3.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNMPv3.d ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNMPv3.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1  "../../../Microchip/TCPIP Stack/SNMPv3USM.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.d ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SNTP.p1: ../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SNTP.p1  "../../../Microchip/TCPIP Stack/SNTP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SNTP.d ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SNTP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1  "../../../Microchip/TCPIP Stack/SPIEEPROM.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.p1: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SPIFlash.p1  "../../../Microchip/TCPIP Stack/SPIFlash.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SPIFlash.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SPIFlash.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.p1: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SPIRAM.p1  "../../../Microchip/TCPIP Stack/SPIRAM.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SPIRAM.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SPIRAM.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/SSL.p1: ../../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/SSL.p1  "../../../Microchip/TCPIP Stack/SSL.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/SSL.d ${OBJECTDIR}/_ext/1954962658/SSL.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/SSL.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/StackTsk.p1: ../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/StackTsk.p1  "../../../Microchip/TCPIP Stack/StackTsk.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/StackTsk.d ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/StackTsk.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/TCP.p1: ../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/TCP.p1  "../../../Microchip/TCPIP Stack/TCP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/TCP.d ${OBJECTDIR}/_ext/1954962658/TCP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/TCP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1  "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/TFTPc.p1: ../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/TFTPc.p1  "../../../Microchip/TCPIP Stack/TFTPc.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/TFTPc.d ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/TFTPc.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Telnet.p1: ../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Telnet.p1  "../../../Microchip/TCPIP Stack/Telnet.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Telnet.d ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Telnet.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/Tick.p1: ../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/Tick.p1  "../../../Microchip/TCPIP Stack/Tick.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/Tick.d ${OBJECTDIR}/_ext/1954962658/Tick.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/Tick.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UART.p1: ../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UART.p1  "../../../Microchip/TCPIP Stack/UART.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UART.d ${OBJECTDIR}/_ext/1954962658/UART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UART.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1  "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UDP.p1: ../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UDP.p1  "../../../Microchip/TCPIP Stack/UDP.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UDP.d ${OBJECTDIR}/_ext/1954962658/UDP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UDP.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1  "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1  "../../../Microchip/TCPIP Stack/ZeroconfHelper.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1  "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1954962658 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1  "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" 
	@-${MV} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.d ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConnectionAlgorithm.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.d ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConnectionManager.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.d ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConnectionProfile.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsole.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsole.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsole.d ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsole.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.d ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleIfconfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleIwconfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.d ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleIwpriv.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgHandler.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1  "../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.d ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFConsoleMsgs.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.d ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDataTxRx.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDriverCom.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDriverCom.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDriverCom.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDriverCom.d ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDriverCom.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.d ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDriverRaw.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1  "../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.d ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFEasyConfig.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFEventHandler.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFEventHandler.p1  "../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFEventHandler.d ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFEventHandler.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFInit.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFInit.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFInit.p1  "../../../Microchip/TCPIP Stack/WiFi/WFInit.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFInit.d ${OBJECTDIR}/_ext/243675038/WFInit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFInit.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFMac.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMac.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFMac.p1  "../../../Microchip/TCPIP Stack/WiFi/WFMac.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFMac.d ${OBJECTDIR}/_ext/243675038/WFMac.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFMac.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1  "../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.d ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFMgmtMsg.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFParamMsg.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFParamMsg.p1  "../../../Microchip/TCPIP Stack/WiFi/WFParamMsg.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFParamMsg.d ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFParamMsg.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFPowerSave.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFPowerSave.p1  "../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFPowerSave.d ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFPowerSave.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFScan.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFScan.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFScan.p1  "../../../Microchip/TCPIP Stack/WiFi/WFScan.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFScan.d ${OBJECTDIR}/_ext/243675038/WFScan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFScan.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFTxPower.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFTxPower.p1  "../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFTxPower.d ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFTxPower.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/WF_Config.p1: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/WF_Config.p1  ../WF_Config.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/WF_Config.d ${OBJECTDIR}/_ext/1472/WF_Config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/WF_Config.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WF_Eint.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WF_Eint.p1  "../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WF_Eint.d ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WF_Eint.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WF_Spi.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WF_Spi.p1  "../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WF_Spi.d ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WF_Spi.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1: ../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/243675038 
	@${RM} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1  "../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" 
	@-${MV} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.d ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/243675038/WFDebugStrings.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1  ../CustomHTTPApp.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1  ../CustomSNMPApp.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.p1: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/CustomSSLCert.p1  ../CustomSSLCert.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/CustomSSLCert.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/CustomSSLCert.p1.d $(SILENT) 
	
${OBJECTDIR}/_ext/1472/MainDemo.p1: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/_ext/1472/MainDemo.p1  ../MainDemo.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/MainDemo.d ${OBJECTDIR}/_ext/1472/MainDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/MainDemo.p1.d $(SILENT) 
	
${OBJECTDIR}/qel_state.p1: qel_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/qel_state.p1.d 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G --asmlist  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"  -o${OBJECTDIR}/qel_state.p1  qel_state.c 
	@-${MV} ${OBJECTDIR}/qel_state.d ${OBJECTDIR}/qel_state.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/qel_state.p1.d $(SILENT) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../Microchip/TCPIP\ Stack/BigInt_helper_elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=icd3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"   -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    "../../../Microchip/TCPIP Stack/BigInt_helper_elf.a" 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../Microchip/TCPIP\ Stack/BigInt_helper_elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G --asmlist -mdist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug,9 --addrqual=ignore -P -N255 --warn=0 --summary=default,-psect,-class,+mem,-hex,-file --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+config,+clib,+plib "--errformat=%f:%l: error: %s" "--warnformat=%f:%l: warning: %s" "--msgformat=%f:%l: advisory: %s"   -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    "../../../Microchip/TCPIP Stack/BigInt_helper_elf.a" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XC16-DA210_BRD_MRF24WB
	${RM} -r dist/XC16-DA210_BRD_MRF24WB

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
