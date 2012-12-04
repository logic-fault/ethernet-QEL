#-------------------------------------------------------------------------------
# Name:        QELink
# Purpose:
#
# Author:      Brock Anderson
#
# Created:     12 September 2012
# Copyright:   (c) Brock Anderson 2012
# Licence:   All rights reserved.
#            Not permitted for commercial use.
#
#  referenced https://gist.github.com/606178
#  referenced http://ilab.cs.byu.edu/python/select/echoserver.html
#-------------------------------------------------------------------------------
#!/usr/bin/env python

import select
import socket
import os
import mongoDriver

PORT = 12345
RECV_SIZE = 1024


class QEL_Server(object):
    def __init__(self, hostname, port):
        self.hostname =  '0.0.0.0'   #hostname
        self.port     = port
        self.db            = mongoDriver.Mongo_Driver('localhost', 'QEL_Server' , 27017)

    def handle_cmd(self,cmd):
        if (len(cmd) < 3):
           return ''

        QEL_IP  = cmd[0]
        QEL_ID  = cmd[1]
        QEL_cmd = cmd[2]

        if (QEL_cmd == 'CHECK_TAG'):
           if (len(cmd) < 3):
              return 'DENY'
           ID_num = cmd[3]
 
           grp = self.db.get_tag_group(ID_num)
           if (grp == ''):
              # add the id to the database, with group NO_ACCESS
              self.db.insert_tag(ID_num)
              return 'DENY'

           # exception for no_restrictions group
           if (grp == 'no_restrictions'):
              return 'GRANT'

           print 'Looking up group'
           per = self.db.find_QEL_in_group(grp, QEL_ID)
           if (per == False):
              print 'denying'
              return 'DENY'

           print 'accepting'
           return 'GRANT'

        elif (QEL_cmd == 'LATCH_OPENED'):
            # update db
            print 'latch ' + QEL_ID + 'opened'
            self.db.set_status_opened(QEL_ID, QEL_IP)
            return ''

        elif (QEL_cmd == 'LATCH_CLOSED'):
            #update db
            print 'latch' + QEL_ID + 'closed'
            self.db.set_status_closed(QEL_ID, QEL_IP)
            return ''

        return ''



    def run(self):
        # start mongodb
        self.db.init()

        self.socket = socket.socket()
        self.socket.bind((self.hostname, self.port))
        self.socket.listen(5)

        self.sockets = [self.socket]

        addr_list = []

        while(True):

           read_list  = []
           read_ready = []


           # wait until we can at least select something
           try:
              select.select(self.sockets,[],[])
           except:
              pass
           finally:
              pass

           for test_socket in self.sockets:
               try:
                 read_ready, write_ready, errors = select.select([test_socket], [], [], 0)
                 if (len(read_ready) > 0):
                     read_list.append(read_ready[0])
               except:
                 self.sockets.remove(test_socket)
               finally:
                 pass

           for ready_socket in read_list:

                # if server socket ready, we have new client
                if (ready_socket == self.socket):
                   connection, addr = ready_socket.accept()
                   self.sockets.append(connection)
                   #addr_list.append([connection, addr])
                   #print addr_list

                # otherwise, we are talking to a client
                else:
                    try:

                        # find addr
                        this_addr = ''
                        for item in addr_list:
                           #print item
                           if (item[0] == ready_socket):
                              this_addr = item[1[1]]
                        print 'peer: ' + this_addr

                        data = ready_socket.recv(RECV_SIZE)
                        if (data):
                            #handle it
                            print 'data= ' + data;
                            req = data.split(';')
                            response = self.handle_cmd(req)
                            if (response != ''):
                                ready_socket.send(response)
                            print 'response=' + response
                        else:
                            ready_socket.close()
                            sockets.remove(ready_socket)
                    except:
                        'socket error'
                        pass
                    finally:
                        pass

        self.socket.close()

def main():
    serv = QEL_Server(socket.gethostname(), PORT)
    serv.run()

if __name__ == '__main__':
    main()


