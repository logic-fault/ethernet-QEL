/*********************************************************************
 *
 *  Generic TCP Client Example Application
 *  Module for Microchip TCP/IP Stack
 *   -Implements an example HTTP client and should be used as a basis 
 *	  for creating new TCP client applications
 *	 -Reference: None.  Hopefully AN833 in the future.
 *
 *********************************************************************
 * FileName:        GenericTCPClient.c
 * Dependencies:    TCP, DNS, ARP, Tick
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder     8/01/06	Original
 ********************************************************************/
#define __GENERICTCPCLIENT_C

#include "TCPIPConfig.h"
#include "qel_state.h"
#include "qel_action.h"


#include "TCPIP Stack/TCPIP.h"


// Defines the server to be accessed for this application
static WORD ServerPort = 12345;


// Defines the URL to be requested by this HTTP client
//static ROM BYTE RemoteURL[] = "/search?as_q=Microchip&as_sitesearch=microchip.com";


/*****************************************************************************
  Function:
	void GenericTCPClient(void)

  Summary:
	Implements a simple HTTP client (over TCP).

  Description:
	This function implements a simple HTTP client, which operates over TCP.  
	The function is called periodically by the stack, and waits for BUTTON1 
	to be pressed.  When the button is pressed, the application opens a TCP
	connection to an Internet search engine, performs a search for the word
	"Microchip" on "microchip.com", and prints the resulting HTML page to
	the UART.
	
	This example can be used as a model for many TCP and HTTP client
	applications.

  Precondition:
	TCP is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/
void GenericTCPClient(const SYSTEM_STATE_STRUCT * qel_state, const APP_CONFIG * config)
{
	BYTE 				i;
	WORD				w;
	BYTE				vBuffer[8];  // should be 'GRANT' OR 'DENY'
	static DWORD		Timer = 0;
        static DWORD            Refresh_Timer = 0;
	static TCP_SOCKET	MySocket = INVALID_SOCKET;
	static enum QEL_TCP_STATE_T
	{
		SM_HOME = 0,
		SM_SOCKET_OBTAINED,
		SM_PROCESS_RESPONSE,
		SM_DISCONNECT,
		SM_DONE
	} QEL_TCP_state = SM_DONE;

	switch(QEL_TCP_state)
	{
		case SM_HOME:
			// Connect a socket to the remote TCP server
			MySocket = TCPOpen((DWORD)&config->QEL_server[0], TCP_OPEN_RAM_HOST, ServerPort, TCP_PURPOSE_GENERIC_TCP_CLIENT);
			
			// Abort operation if no TCP socket of type TCP_PURPOSE_GENERIC_TCP_CLIENT is available
			// If this ever happens, you need to go add one to TCPIPConfig.h
			if(MySocket == INVALID_SOCKET)
				break;

			QEL_TCP_state++;
			Timer = TickGet();
			break;

		case SM_SOCKET_OBTAINED:
			// Wait for the remote server to accept our connection request
			if(!TCPIsConnected(MySocket))
			{
				// Time out if too much time is spent in this state
				if(TickGet()-Timer > 5*TICK_SECOND)
				{
					// Close the socket so it can be used by other modules
					TCPDisconnect(MySocket);
					MySocket = INVALID_SOCKET;
					QEL_TCP_state--;
				}
				break;
			}

			Timer = TickGet();
			
			// Make certain the socket can be written to
			if(TCPIsPutReady(MySocket) < 125u)
				break;

                        /*
                        for(i = 0; i < sizeof(IP_ADDR); i++)
                        {
                            uitoa((WORD)IPVal.v[i], IPDigit);
                            TCPPutString((char *) IPDigit);

                            if(i == sizeof(IP_ADDR)-1)
                              break;

                            TCPPutRomString(MySocket, (ROM BYTE *) ".");
                        }
                         */

			//TCPPutString(MySocket, get_system_name(qel_state));
                        TCPPutString(MySocket, config->QEL_name);
                        TCPPutROMString(MySocket, (ROM BYTE *)";");


                        // process nfc request if needed
                        if (qel_state->nfc_request == NFC_IS_REQUEST)
                        {
                            TCPPutROMString(MySocket, (ROM BYTE*)"CHECK_TAG;");
                            TCPPutString(MySocket, qel_state->nfc_data);
                            TCPPutROMString(MySocket, ";");
                        }

                        else
                        {
                            switch(get_system_state(qel_state))
                            {
                                case SYS_INIT: 
                                case SYS_LOCKED_WAITING:
                                case SYS_NFC_AUTH_WAITING:
                                case SYS_LOCKING_TO_WAIT:
                                case SYS_LOCKED_HOLDING:
                                case SYS_LOCKING_TO_HOLD:
                                    TCPPutROMString(MySocket, (ROM BYTE*)"LATCH_CLOSED;");
                                    break;
                                case SYS_UNLOCKED_HOLDING:
                                case SYS_UNLOCKING_TO_HOLD:
                                case SYS_TEMPORARY_UNLOCK:
                                    TCPPutROMString(MySocket, (ROM BYTE*)"LATCH_OPENED;");
                                    break;
                                default:
                                    TCPPutROMString(MySocket, (ROM BYTE*)"LATCH_UNKNOWN;");
                                    break;
                            }
                        }

			// Send the packet
			TCPFlush(MySocket);
			QEL_TCP_state++;
			break;

		case SM_PROCESS_RESPONSE:
			// Check to see if the remote node has disconnected from us or sent us any application data
			// If application data is available, write it to the UART
			if(!TCPIsConnected(MySocket))
			{
				QEL_TCP_state = SM_DISCONNECT;
				// Do not break;  We might still have data in the TCP RX FIFO waiting for us
			}


                        // don't wait for a response if shouldn't have one
                        if (qel_state->nfc_request != NFC_IS_REQUEST)
                        {
                            QEL_TCP_state++;
                            break;
                        }

			// Get count of RX bytes waiting
			w = TCPIsGetReady(MySocket);	
	
			// Obtian and print the server reply
			i = sizeof(vBuffer)-1;
			vBuffer[i] = '\0';
			while(w)
			{
				if(w < i)
				{
					i = w;
					vBuffer[i] = '\0';
				}
				w -= TCPGetArray(MySocket, vBuffer, i);
				#if defined(STACK_USE_UART)
				putsUART((char*)vBuffer);
				#endif


                                // process nfc response if needed
                                if (qel_state->nfc_request == NFC_IS_REQUEST)
                                // check if access granted
                                {
                                    if (vBuffer[0] == 'G' || vBuffer[0] == 'g')
                                    {
                                        clear_nfc_state(qel_state);
                                        update_system_state(qel_state, SYS_TEMPORARY_UNLOCK);
                                        QEL_TCP_state++;
                                        break;
                                    }

                                    if (vBuffer[0] == 'D' || vBuffer[0] == 'd')
                                    {
                                        clear_nfc_state(qel_state);
                                        update_system_state(qel_state, SYS_LOCKED_WAITING);
                                        QEL_TCP_state++;
                                        break;
                                    }
                                }
                                else
                                    QEL_TCP_state++;
                                
				// putsUART is a blocking call which will slow down the rest of the stack 
				// if we shovel the whole TCP RX FIFO into the serial port all at once.  
				// Therefore, let's break out after only one chunk most of the time.  The 
				// only exception is when the remote node disconncets from us and we need to 
				// use up all the data before changing states.
				if(QEL_TCP_state == SM_PROCESS_RESPONSE)
					break;
			}
	
			break;
	
		case SM_DISCONNECT:
			// Close the socket so it can be used by other modules
			// For this application, we wish to stay connected, but this state will still get entered if the remote server decides to disconnect
                        clear_nfc_state(qel_state);
                        clear_update_system_state(qel_state);
			TCPDisconnect(MySocket);
			MySocket = INVALID_SOCKET;
			QEL_TCP_state = SM_DONE;
			break;
	
		case SM_DONE:

			// nfc request or tcp update request is made
			if(qel_state->nfc_request  == NFC_IS_REQUEST || qel_state->tcp_update == TCP_IS_UPDATE)
				QEL_TCP_state = SM_HOME;

                        // check to see if 1 minute has elapsed, if so send an update
                        if (Refresh_Timer < TickGet() - 10 * TICK_SECOND)
                        {
                            Refresh_Timer = TickGet();
                            QEL_TCP_state = SM_HOME;
                        }

			break;
	}
}

