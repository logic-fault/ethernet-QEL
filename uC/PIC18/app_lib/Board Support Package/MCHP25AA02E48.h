/*****************************************************************************
 *
 * Basic access to Microchip 2K SPI Bus Serial EEPROM with 
 * EUI-48� Node Identity.
 *
 *****************************************************************************
 * FileName:        MCHP25AA02E48.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright � 2011 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 06/27/11		...
 *****************************************************************************/

#ifndef _MCHP25AA02E48_EEPROM_H
    #define _MCHP25AA02E48_EEPROM_H

/************************************************************************
* EEPROM Commands                                                       
************************************************************************/
#define EEPROM_PAGE_SIZE    (unsigned)16
#define EEPROM_PAGE_MASK    (unsigned)0x000f
#define EEPROM_CMD_READ     (unsigned)0x03
#define EEPROM_CMD_WRITE    (unsigned)0x02
#define EEPROM_CMD_WRDI     (unsigned)0x04
#define EEPROM_CMD_WREN     (unsigned)0x06
#define EEPROM_CMD_RDSR     (unsigned)0x05
#define EEPROM_CMD_WRSR     (unsigned)0x01

/************************************************************************
* Structure STATREG and union _MCHP25AA02E48Status_                            
*                                                                       
* Overview: provide bits and byte access to EEPROM status value      
*                                                                       
************************************************************************/
struct STATREG
{
    BYTE    WIP : 1;
    BYTE    WEL : 1;
    BYTE    BP0 : 1;
    BYTE    BP1 : 1;
    BYTE    RESERVED : 3;
    BYTE    WPEN : 1;
};

union _MCHP25AA02E48Status_
{
    struct STATREG  Bits;
    BYTE            Char;
};

/************************************************************************
* Macro: MCHP25AA02E48CSLow()                                                   
*                                                                       
* Preconditions: CS IO must be configured as output
*                                                                       
* Overview: this macro pulls down CS line                    
*                                                                       
* Input: none                                                          
*                                                                       
* Output: none                                                         
*                                                                       
************************************************************************/
    #define MCHP25AA02E48CSLow()   MCHP25AA02E48_CS_LAT = 0;

/************************************************************************
* Macro: MCHP25AA02E48CSHigh()
*                                                                       
* Preconditions: CS IO must be configured as output
*                                                                       
* Overview: this macro set CS line to high level
*                                                                       
* Input: none                                                          
*                                                                       
* Output: none
*                                                                       
************************************************************************/
    #define MCHP25AA02E48CSHigh()  MCHP25AA02E48_CS_LAT = 1;

/************************************************************************
* Function: MCHP25AA02E48Init()
*                                                                       
* Overview: this function setups SPI and IOs connected to EEPROM
*                                                                       
* Input: none
*                                                                       
* Output: none  
*                                                                       
************************************************************************/
void MCHP25AA02E48Init(DRV_SPI_INIT_DATA *pInitData);

/************************************************************************
* Function: union _MCHP25LC256Status_ MCHP25LC256ReadStatus()
*                                                                       
* Overview: this function reads status register
*                                                                       
* Input: none             
*                                                                       
* Output: status register value
*                                                                       
************************************************************************/
union _MCHP25AA02E48Status_    MCHP25AA02E48ReadStatus(void);

/************************************************************************
* Function: void MCHP25LC256WriteByte()                                           
*                                                                       
* Overview: this function writes a byte to the address specified
*                                                                       
* Input: byte to be written and address
*                                                                       
* Output: none
*                                                                       
************************************************************************/
void                    MCHP25AA02E48WriteByte(BYTE data, WORD address);

/************************************************************************
* Function: BYTE MCHP25AA02E48ReadByte(WORD address)       
*                                                                       
* Overview: this function reads a byte from the address specified
*                                                                       
* Input: address          
*                                                                       
* Output: data read
*                                                                       
************************************************************************/
BYTE                    MCHP25AA02E48ReadByte(WORD address);

/************************************************************************
* Function: void MCHP25AA02E48WriteWord(WODR data, WORD address)                                           
*                                                                       
* Overview: this function writes a 16-bit word to the address specified
*                                                                       
* Input: data to be written and address
*                                                                       
* Output: none                                                         
*                                                                       
************************************************************************/
void                    MCHP25AA02E48WriteWord(WORD data, DWORD address);

/************************************************************************
* Function: WORD MCHP25AA02E48ReadWord(WORD address)             
*                                                                       
* Overview: this function reads a 16-bit word from the address specified         
*                                                                       
* Input: address                                                     
*                                                                       
* Output: data read
*                                                                       
************************************************************************/
WORD                    MCHP25AA02E48ReadWord(DWORD address);

/************************************************************************
* Function: MCHP25AA02E48WriteEnable()                                       
*
* Overview: this function allows writing into EEPROM. Must be called
*           before every write/erase command
*
* Input: none
*            
* Output: none
*
************************************************************************/
void                    MCHP25AA02E48WriteEnable(void);

/************************************************************************
* Function: BYTE MCHP25LC256WriteArray(DWORD address, BYTE* pData, nCount)
*                                                                       
* Overview: this function writes data array at the address specified
*                                                                       
* Input: flash memory address, pointer to the data array, data number
*                                                                       
* Output: return 1 if the operation was successfull
*                                                                     
************************************************************************/
BYTE                    MCHP25AA02E48WriteArray(DWORD address, BYTE *pData, WORD nCount);

/************************************************************************
* Function: void MCHP25AA02E48ReadArray(WORD address, BYTE* pData, nCount)
*                                                                       
* Overview: this function reads  data into buffer specified
*                                                                       
* Input: flash memory address, pointer to the buffer, data number
*                                                                       
************************************************************************/
void                    MCHP25AA02E48ReadArray(WORD address, BYTE *pData, WORD nCount);
/************************************************************************
* Function: DWORD MCHP25AA02E48GetEUI48NodeAddress(BYTE *eui48NodeAddr)
************************************************************************/
void MCHP25AA02E48GetEUI48NodeAddress(BYTE *eui48NodeAddr);
/************************************************************************
* Function: void MCHP25AA02E64GetEUI48NodeAddress(BYTE *eui64NodeAddr)
************************************************************************/
void MCHP25AA02E48GetEUI64NodeAddress(BYTE *eui64NodeAddr);

#endif //_MCHP25AA02E48_EEPROM_H
