#-------------------------------------------------------------------------------
# Name:        QEL example client.
# Purpose:     EXAMPLE QEL
#
# Author:      Brock Anderson
#
# Created:     15/09/2012
# Copyright:   (c) Brock Anderson 2012
# Licence:     All rights reserved.  May be used by Purdue University
#              faculty and students.
#              Not permitted for commercial use.
#-------------------------------------------------------------------------------
#!/usr/bin/env python

import os,socket,time

SERVER_NAME = "brock-Lenovo-G570"
SERVER_PORT = 12345
QEL_ID      = 'Example_QEL'

def server_session(msg):
   QEL_server = socket.socket( socket.AF_INET, socket.SOCK_STREAM)
   QEL_server.connect((SERVER_NAME, SERVER_PORT))

   packet = ';'.join(msg)
   print 'Sending packet=' + packet
   QEL_server.send(packet)

   if (msg[2] == 'CHECK_TAG'):
        #get the reply
        data = QEL_server.recv(1024)
        print 'response=' + data

   QEL_server.close()

def main():

    print 'Latch Open test...'
    message = ["127.0.0.1", QEL_ID, 'LATCH_OPENED', '']
    server_session(message)

 
    QEL_ID_list = ['QEL_EE1', 'QEL_EE2', 'QEL_EW1', 'QEL_EE3'];

    for qel in QEL_ID_list:
        message = ["127.0.0.1", qel, 'LATCH_OPENED', '']
        server_session(message)
        time.sleep(0.01);
    
    #time.sleep(10)

    print 'Latch Close test...'
    message[2] = 'LATCH_CLOSED'
    server_session(message)

    #time.sleep(10)

    message[3] = 'badtag' # example NFC tag num
    message[2] = 'CHECK_TAG'
    server_session(message)

    message[3] = 'eeeeee' # example NFC tag num
    message[2] = 'CHECK_TAG'
    server_session(message)

if __name__ == '__main__':
    main()
