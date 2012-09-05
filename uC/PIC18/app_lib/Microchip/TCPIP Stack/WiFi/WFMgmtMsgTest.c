



#if 0

/*==========================================================================*/
/*                                  INCLUDES                                */
/*==========================================================================*/
#include <stdio.h>
#include <stdarg.h>
#include "WFMac.h"
#if defined(WF_CS_TRIS)



/*==========================================================================*/
/*                                  GLOBALS                                 */
/*==========================================================================*/



tWFCPElements cp[2];
tWFCAElements ca[2];

static UINT8 activeKeyIndex;


static UINT8 ssid[64];
static UINT8 ssidLength;
static UINT8 cpList;
static UINT8  profile_id[2];

static UINT16 TestCASetElements(void);    
static UINT16 TestCAIndividualSets(void);
static UINT16 TestCPSetElements(void);
static UINT16 TestCPIndividualSets(void);
static UINT16 TestTxPowerFuncs(void);
static void TestMisc(void);
static void TestPowerSaveFuncs(void);
static void TestMultiCast(void);

int WF_printf(const char *fmt, ...);


    

    
void WFMgmtMessageTest()
{
    tWFDeviceInfo  deviceInfo;
    
    WF_GetDeviceInfo(&deviceInfo);
    WF_printf("Rom Version = %02X  Patch Version = %02X\n", deviceInfo.romVersion, deviceInfo.patchVersion);
    
    TestCPSetElements();
    TestCPIndividualSets();

    TestCAIndividualSets();
    TestCASetElements();
    
    TestTxPowerFuncs(); 
    
    TestPowerSaveFuncs();
    
    TestMultiCast();
    
    TestMisc();
    
}    

static UINT16 TestCPSetElements(void)
{
    UINT8 cpList;
    int i;
   
    WF_printf("\r\nStarting TestCPSetElements test . . .\r\n");

    /* Create a connection profile and verify the CP ID List is correct*/
    WF_CPCreate(&profile_id[0]);
    WF_CPGetIds(&cpList);
    if (cpList != 0x01)
    {
        WF_printf("  ERROR: WF_CPGetIds - expected %d, got %d\r\n", 0x01, cpList);
    }    

    /* zero out CP Elements Structure */
    memset(&cp[0], 0x00, sizeof(tWFCPElements));
    
    WF_printf("%s\r\n", MY_DEFAULT_SSID_NAME);

    /* put data into it and write to MRF24W10C */
    memcpy(cp[0].ssid, MY_DEFAULT_SSID_NAME, strlen(MY_DEFAULT_SSID_NAME));
    memset(cp[0].bssid, 0xff, sizeof(cp[0].bssid));
    cp[0].ssidLength = strlen(MY_DEFAULT_SSID_NAME);
    cp[0].securityType = WF_SECURITY_OPEN;
    cp[0].networkType = WF_INFRASTRUCTURE;
    cp[0].securityKeyLength = 0;
    
    WF_CPSetElements(profile_id[0], &cp[0]);

    /* read it back into a different structure */
    memset(&cp[1], 0xff, sizeof(cp[1]));
    WF_CPGetElements(profile_id[0], &cp[1]);

    if (cp[0].ssidLength != cp[1].ssidLength)
    {
       WF_printf("  ERROR: Mismatch on SSID length, ");
    }    
    if ( memcmp(cp[0].ssid, cp[1].ssid, cp[0].ssidLength) != 0 )
    {
       WF_printf("  ERROR: Mismatch on SSID, ");
       WF_printf("expected %s, got %s\r\n", cp[0].ssid, cp[1].ssid);
    }  
    
    if (cp[0].ssidLength != cp[1].ssidLength)
    {
       WF_printf("  ERROR: Mismatch on SSID length, ");
       WF_printf("expected %d, got %d\r\n", cp[0].ssidLength, cp[1].ssidLength);
    }    
    
    if (cp[0].securityType != cp[1].securityType)
    {
       WF_printf("  ERROR: Mismatch on security type, ");
       WF_printf("expected %d, got %d\r\n", cp[0].securityType, cp[1].securityType);
    }    
    
    if (cp[0].securityKeyLength != cp[1].securityKeyLength)
    {
       WF_printf("  ERROR: Mismatch on security key length, ");
       WF_printf("expected %d, got %d\r\n", cp[0].securityKeyLength, cp[1].securityKeyLength);
    }    
    
    for ( i = 0; i < 6; ++i)
    {
        if (cp[0].bssid[i] != cp[1].bssid[i])
        {
           WF_printf("  ERROR: Mismatch on BSSID, expected bssid[%d] = %#x, got bssid[%d] = %#x\r\n", 
                                                   i, cp[0].bssid[i], i, cp[1].bssid[i]);
        }    
    }    
    
    if (cp[0].adHocBehavior != cp[1].adHocBehavior)
    {
       WF_printf("  ERROR: Mismatch on adhoc behavior, ");
       WF_printf("expected %d, got %d\r\n", cp[0].adHocBehavior, cp[1].adHocBehavior);
    }    
    

    /* Delete a connection profile and verify the CP ID List is correct*/    
    WF_CPDelete(profile_id[0]); 
    WF_CPGetIds(&cpList);
    if (cpList != 0x00)
    {
       WF_printf("  ERROR: WF_CPGetIds - expected %d, got %d\r\n", 0x00, cpList);
    } 
    
    return WF_SUCCESS; 
}    

static UINT16 TestCPIndividualSets(void)
{
    int i;
    UINT8 networkType;
    UINT8 srcBssid[WF_BSSID_LENGTH] = {1,2,3,4,5,6};    
    UINT8 destBssid[WF_BSSID_LENGTH];
    UINT8 adhocBehavior;
    
    WF_printf("\r\nStarting TestCPIndividualSets test . . .\r\n");    
    
    WF_CPCreate(&profile_id[0]);
    
    /* set/get ssid */
    WF_CPSetSsid(profile_id[0], (UINT8 *)(MY_DEFAULT_SSID_NAME), strlen(MY_DEFAULT_SSID_NAME));
    WF_CPGetSsid(profile_id[0], ssid, &ssidLength);
    if (strncmp(MY_DEFAULT_SSID_NAME, (char *)ssid, strlen(MY_DEFAULT_SSID_NAME)) != 0)
    {
       WF_printf("  ERROR: Mismatch on SSID, ");
       WF_printf("expected %s, got %s\r\n", MY_DEFAULT_SSID_NAME, ssid);
    }  

    WF_CPSetNetworkType(profile_id[0], WF_ADHOC);
    WF_CPGetNetworkType(profile_id[0], &networkType);
    if (networkType != WF_ADHOC)
    {
       WF_printf("  ERROR: network type - expected %d, got %d\r\n", WF_ADHOC, networkType);
    }
    
    /* set/get bssid */
    WF_CPSetBssid(profile_id[0], srcBssid); 
    memset(destBssid, 0x00, sizeof(destBssid));
    WF_CPGetBssid(profile_id[0], destBssid);
    for (i = 0; i < WF_BSSID_LENGTH; ++i)
    {
        if (srcBssid[i] != destBssid[i])
        {
           WF_printf("  ERROR: Mismatch on BSSID, expected ");
           WF_printf("bssid[%d] = %#x, got bssid[%d] = %#x\r\n",  i, srcBssid[i], i, destBssid[i]);
        }    
    }    
   
    WF_CPSetAdHocBehavior(profile_id[0], WF_ADHOC_START_ONLY);
    WF_CPGetAdHocBehavior(profile_id[0], &adhocBehavior);
    if (adhocBehavior != WF_ADHOC_START_ONLY)
    {
       WF_printf("  ERROR: adhoc behavior -- expected %d, got %d\r\n", WF_ADHOC_START_ONLY, adhocBehavior);
    }    
   
    WF_CPSetActiveWepKeyIndex(profile_id[0], 3);
    WF_CPGetActiveWepKeyIndex(profile_id[0], &activeKeyIndex);
    if (activeKeyIndex != 3)
    {
       WF_printf("  ERROR: activeKeyIndex -- expected %d, got %d\r\n", 3, activeKeyIndex);
    }        
    
    
    /* Delete a connection profile and verify the CP ID List is correct*/    
    WF_CPDelete(profile_id[0]); 
    WF_CPGetIds(&cpList);
    if (cpList != 0x00)
    {
       WF_printf("ERROR: WF_CPGetIds - expected %d, got %d\r\n", 0x00, cpList);
    } 
        
    
    return WF_SUCCESS;
}    

static UINT16 TestCAIndividualSets()
{
    UINT8  scanCode;
    UINT8  rssi;
//    UINT8  cpList[WF_CP_LIST_LENGTH];
    UINT8  listRetryCount;
    UINT8  action;
    UINT8  beaconTimeoutAction;
    UINT8  deauthAction;
    UINT8  channelList[] = {1,6,11};
    UINT8  numChannels;
    UINT16 listenInterval;
    UINT8  beaconTimeout;
    UINT8  scanCount;
    
    WF_printf("\r\nStarting TestCAIndividualSets test . . .\r\n");    
    
    WF_CASetScanType(WF_ACTIVE_SCAN);
    WF_CAGetScanType(&scanCode);
    if (scanCode != WF_ACTIVE_SCAN)
    {
        WF_printf("  ERROR: WF_CASetScanType - expected %d, got %d\r\n", WF_ACTIVE_SCAN, scanCode);
    }    
    
    WF_CASetRssi(155);
    WF_CAGetRssi(&rssi);
    if (rssi != 155)
    {
        WF_printf("  ERROR: WF_CAGetRssi - expected %d, got %d\r\n", 155, rssi);
    }    

#if 0
    /* CP list */
    memset(cpList, 0xff, WF_CP_LIST_LENGTH);
    WF_CPCreate(&profile_id[0]);   
    WF_CPCreate(&profile_id[1]);   
    cpList[0] = profile_id[1];
    cpList[1] = profile_id[0];
    WF_CASetConnectionProfileList(cpList);
    memset(cpList, 0xff, WF_CP_LIST_LENGTH);
    WF_CAGetConnectionProfileList(cpList);
    if ( (cpList[0] != profile_id[1]) || (cpList[1] != profile_id[0]))
    {
        WF_printf("   ERROR: WF_CAGetConnectionProfileList failed\r\n");
    }   
    WF_CPDelete(profile_id[0]);   
    WF_CPDelete(profile_id[1]);   
#endif
     
    /* list retry count */
    WF_CASetListRetryCount(96);
    WF_CAGetListRetryCount(&listRetryCount);
    if (listRetryCount != 96)
    {
        WF_printf("  ERROR: WF_CAGetListRetryCount - expected %d, got %d\r\n", 96, listRetryCount);        
    }    
    
    
    /* Event notification */
    action = WF_NOTIFY_CONNECTION_ATTEMPT_SUCCESSFUL   |
             WF_NOTIFY_CONNECTION_TEMPORARILY_LOST |
             WF_NOTIFY_CONNECTION_REESTABLISHED    |
             WF_NOTIFY_CONNECTION_PERMANENTLY_LOST;
    WF_CASetEventNotificationAction(action);
    action = 0;
    WF_CAGetEventNotificationAction(&action);
    if (action != (WF_NOTIFY_CONNECTION_ATTEMPT_SUCCESSFUL   |
                  WF_NOTIFY_CONNECTION_TEMPORARILY_LOST |
                  WF_NOTIFY_CONNECTION_REESTABLISHED    |
                  WF_NOTIFY_CONNECTION_PERMANENTLY_LOST))
    {
        WF_printf("  ERROR: WF_CAGetEventNotificationAction - expected %d, got %d\r\n", 0xf, action);                
    }    
    
    /* beacon timeout */
    WF_CASetBeaconTimeoutAction(WF_ATTEMPT_TO_RECONNECT);
    WF_CAGetBeaconTimeoutAction(&beaconTimeoutAction);
    if (beaconTimeoutAction != WF_ATTEMPT_TO_RECONNECT)
    {
        WF_printf("  ERROR: WF_CASetBeaconTimeoutAction - expected %d, got %d\r\n", WF_ATTEMPT_TO_RECONNECT, beaconTimeoutAction);                        
    }    
    
    /* deauth */
    WF_CASetDeauthAction(WF_ATTEMPT_TO_RECONNECT);
    WF_CAGetDeauthAction(&deauthAction);
    if (deauthAction != WF_ATTEMPT_TO_RECONNECT)
    {
        WF_printf("  ERROR: WF_CASetDeauthAction - expected %d, got %d\r\n", WF_ATTEMPT_TO_RECONNECT, deauthAction);                        
    }    

    WF_CASetChannelList(channelList, sizeof(channelList));
    memset(channelList, 0xff, sizeof(channelList));
    WF_CAGetChannelList(channelList, &numChannels);
    if ( (channelList[0] != 1) ||
         (channelList[1] != 6) ||
         (channelList[2] != 11))
    {
        WF_printf("  ERROR: WF_CAGetChannelList \r\n");
    }    
    
    /* listen interval */
    WF_CASetListenInterval(0x1234);
    WF_CAGetListenInterval(&listenInterval);
    if (listenInterval != 0x1234)
    {
        WF_printf("  ERROR: WF_CAGetListenInterval - expected %u, got %u \r\n", 0x1234, listenInterval);        
    }    
    
    WF_CASetBeaconTimeout(100);
    WF_CAGetBeaconTimeout(&beaconTimeout);
    if (beaconTimeout != 100)
    {
        WF_printf("  ERROR: WF_CAGetBeaconTiemout - expected %u, got %u \r\n", 100, beaconTimeout);        
    }  
    
    WF_CASetScanCount(1);
    WF_CAGetScanCount(&scanCount);
    if (scanCount != 1)
    {
        WF_printf("  ERROR: WF_CAGetScanCount - expected %u, got %u \r\n", 1, scanCount);        
    }    
        
    
    return WF_SUCCESS;
}    

static UINT16 TestCASetElements(void)
{
    
    WF_printf("\r\nStarting TestCASetElements test . . .\r\n");    
    
    memset(&ca[0], 0x00, sizeof(ca[0]));
    
    /* create two CP's */
    WF_CPCreate(&profile_id[0]);   
    WF_CPCreate(&profile_id[1]);   
    
    ca[0].scanType = WF_ACTIVE_SCAN;
    ca[0].rssi     = 100;
    
    memset(ca[0].connectionProfileList, 0xff, sizeof(ca[0].connectionProfileList));
//    ca[0].connectionProfileList[0] = profile_id[0];
//    ca[0].connectionProfileList[1] = profile_id[1];
 
    ca[0].listRetryCount = 3;   
    ca[0].listenInterval = 0x1234;
    ca[0].eventNotificationAction = 0x0f;
    ca[0].beaconTimeoutAction = WF_ATTEMPT_TO_RECONNECT;
    ca[0].deauthAction        = WF_ATTEMPT_TO_RECONNECT;
    ca[0].channelList[0] = 1;
    ca[0].channelList[1] = 6;
    ca[0].channelList[2] = 11;
    ca[0].numChannelsInList = 3;
    ca[0].beaconTimeout = 100;
    ca[0].scanCount = 1;
    ca[0].eventNotificationAction = WF_NOTIFY_ALL_EVENTS;
        
    WF_CASetElements(&ca[0]);
    
    WF_CAGetElements(&ca[1]);
    
    if ( memcmp(&ca[0], &ca[1], sizeof(ca[0])) != 0)
    {
        WF_printf("  ERROR: WF_CASetElements\r\n");
    } 
    
    WF_CPDelete(profile_id[0]);   
    WF_CPDelete(profile_id[1]);   
    
   return WF_SUCCESS;
}    

static UINT16 TestTxPowerFuncs(void)
{
    tWFThrottleTable tableIn, tableOut;
    BOOL state;
    UINT8 bitRate;
    INT8 factory_max_tx_power;
    INT8 maxTxPower;

    WF_printf("\r\nStarting TxPower Functions test . . .\r\n");    

#if 1    
    WF_TxPowerSetMax(8);
    WF_TxPowerGetMax(&maxTxPower);
    if (maxTxPower != 8)
    {
        WF_printf("ERROR: WF_TxPowerSetMax mismatch\r\n");                
    }    
#endif    


    WF_TxPowerGetFactoryMax(&factory_max_tx_power);

    WF_ThrottleTableGetState(&state, &bitRate);
    WF_ThrottleTableGet(&tableOut);
       
    tableIn.dataRate[0] = WF_TWO_MBIT_TX_RATE;
    tableIn.txPower[0]  = -1;
    
    tableIn.dataRate[1] = WF_TWO_MBIT_TX_RATE;
    tableIn.txPower[1]  = 8;
    
    tableIn.dataRate[2] = WF_ONE_MBIT_TX_RATE;
    tableIn.txPower[2]  = 9;
    
    tableIn.dataRate[3] = WF_ONE_MBIT_TX_RATE;
    tableIn.txPower[3]  = 10;

    WF_ThrottleTableSet(&tableIn);
    
    WF_ThrottleTableGet(&tableOut);

    if (memcmp(&tableIn, &tableOut, sizeof(tWFThrottleTable)) != 0)
    {
        WF_printf("  ERROR: TestTxPowerFuncs\r\n");        
    }    
    
    WF_ThrottleTableEnable();
    
    WF_ThrottleTableGetState(&state, &bitRate);
    
    if (state != TRUE)
    {
        WF_printf("ERROR: WF_TxPowerEnableThrottleTable\r\n");
    }    

    WF_ThrottleTableDisable(WF_TWO_MBIT_TX_RATE);
    WF_ThrottleTableGetState(&state, &bitRate);
        
    if (state != FALSE)
    {
        WF_printf("ERROR: WF_TxPowerDisableThrottleTable\r\n");
    }    
    
    if (bitRate != WF_TWO_MBIT_TX_RATE)
    {
        WF_printf("ERROR: WF_TxPowerDisableThrottleTable (invalid bit rate)\r\n");        
    }    

    
    
    return WF_SUCCESS;
}    

static void TestMisc(void)
{
    UINT16 rtsThreshold;
    UINT8  domain;
    UINT8  state;
    UINT8  cpId;

    WF_printf("\r\nStarting Misc Functions test . . .\r\n");    
        
    WF_CMGetConnectionState(&state, &cpId);
    WF_GetRtsThreshold(&rtsThreshold);

    WF_SetRtsThreshold(1550);

    WF_GetRtsThreshold(&rtsThreshold);
    
    if (rtsThreshold != 1550)
    {
        WF_printf("ERROR: WF_SetRtsThreshold (mismatch on 1550)\n"); 
    }    
    
    WF_SetRtsThreshold(2347);
    WF_GetRtsThreshold(&rtsThreshold);

    if (rtsThreshold != 2347)
    {
        WF_printf("ERROR: WF_SetRtsThreshold (mismatch on 2347)\n"); 
    }   
    
    WF_GetRegionalDomain(&domain);
    WF_SetRegionalDomain(WF_DOMAIN_JAPAN_A);
    WF_GetRegionalDomain(&domain);
    if (domain != WF_DOMAIN_JAPAN_A)
    {
        WF_printf("ERROR: WF_SetRegionalDomain (mismatch)\n"); 
    }   
    WF_SetRegionalDomain(WF_DOMAIN_FCC);
}  

static void TestPowerSaveFuncs(void)
{
    UINT8 state;
    
    WF_printf("\r\nStarting Power-Save Functions test . . .\r\n");    

    WF_GetPowerSaveState(&state);
    if (state != WF_PS_OFF)
    {
        WF_printf("ERROR: WF_PsPollEnable (mismatch)\n");         
    }    
    
    WF_PsPollEnable(TRUE);
    WF_GetPowerSaveState(&state);
    if (state != WF_PS_PS_POLL_DTIM_ENABLED)
    {
        WF_printf("ERROR: WF_PsPollEnable (mismatch)\n");         
    }    
    WF_PsPollDisable();
    WF_GetPowerSaveState(&state);
    if (state != WF_PS_OFF)
    {
        WF_printf("ERROR: WF_PsPollEnable (mismatch)\n");         
    }    
    
}      

static void TestMultiCast(void)
{
    UINT8  Saddress_a[6] = {0x11,0x22,0x33,0x44,0x55,0x66};
    UINT8  Saddress_b[6] = {0xaa,0xbb,0xcc,0xdd,0xee,0xff};    
    UINT8  Daddress[6];
    
    WF_printf("\r\nStarting Multicast Functions test . . .\r\n");  
         
   
    WF_SetMultiCastFilter(WF_MULTICAST_FILTER_1, Saddress_a);
    WF_GetMultiCastFilter(WF_MULTICAST_FILTER_1, Daddress);
    if (memcmp(Saddress_a, Daddress, 6) != 0)
    {
        WF_printf("ERROR: WF_SetMultiCastFilter (mismatch)\n");         
    }    

    WF_SetMultiCastFilter(WF_MULTICAST_FILTER_2, Saddress_b);
    WF_GetMultiCastFilter(WF_MULTICAST_FILTER_2, Daddress);
    if (memcmp(Saddress_b, Daddress, 6) != 0)
    {
        WF_printf("ERROR: WF_SetMultiCastFilter (mismatch)\n");         
    }    
    
    memset(Saddress_a, 0xff, 6);
    WF_SetMultiCastFilter(WF_MULTICAST_FILTER_2, Saddress_a);
    WF_GetMultiCastFilter(WF_MULTICAST_FILTER_2, Daddress);
    if (memcmp(Saddress_a, Daddress, 6) != 0)
    {
        WF_printf("ERROR: WF_SetMultiCastFilter (mismatch)\n");         
    }    
   
}    

/*==========================================================================*/
/*                                                                          */
/*                                  PRINTF FUNCTIONS                        */
/*                                                                          */
/*==========================================================================*/

/*****************************************************************************
 * FUNCTION: WF_printf
 *
 * RETURNS:  None
 *
 * PARAMS:   same as printf
 *
 *  NOTES:   Allows the MRF24W10C driver to utilize printf capability (if WF_PRINTF 
 *           is defined).
 *
 *           Customize this function as needed for your application.
 *****************************************************************************/
int WF_printf(const char *fmt, ...)

{
   va_list args;
   char printBuffer[64];

   va_start (args, fmt);

   /* For this to work, printBuffer must be larger than
    * anything we ever want to print.
    */
   vsprintf (printBuffer, fmt, args);
   va_end (args);
   
   /* Print the string to UART */
   putsUART(printBuffer);

   return 0;
} 



#endif /* WF_CS_TRIS */


#endif

#if defined(__18CXX)
/* dummy func to keep C18 compiler happy when module has no executeable code */
void WFMgmtTest_EmptyFunc(void)
{
    ;
}
#endif

