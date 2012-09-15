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
import socket               # Import socket module
import os
import multiprocessing

PORT = 12345                # Reserve a port for your service.
RECV_SIZE = 1024


def QEL_conn(connection, addr):
    print 'conn'
    print addr

    comm_active = True

    # timeout after 1 second
    while(comm_active):
       read_ready, write_ready, errors = select.select([connection,],[],[], 5.0)
       if (len(read_ready) > 0):
          #interpet the information
          pass
       else:
          # no info within 1 second, disconnect
          comm_active = False

    connection.close()


class QEL_Server(object):
    def __init__(self, hostname, port):
        self.hostname = hostname
        self.port     = port

    def run(self):
        self.socket = socket.socket()
        self.socket.bind((self.hostname, self.port))
        self.socket.listen(5)

        self.sockets = [self.socket]

        while(True):

            read_ready, write_ready, errors = select.select(self.sockets,[],[])
            for ready_socket in self.sockets:

                # if server socket ready, we have new client
                if (ready_socket == self.socket):
                   connection, addr = ready_socket.accept()
                   self.sockets.append(connection)

                # otherwise, we are talking to a client
                else:
                    try:
                        data = ready_socket.recv(RECV_SIZE)
                        if (data):
                            #handle it
                            print 'got data'

                            #echo it
                            ready_socket.send(data)
                            print 'data sent'
                        else:
                            ready_socket.close()
                            sockets.remove(ready_socket)
                    except:
                        pass
                    finally:
                        pass

        self.socket.close()

def main():
    serv = QEL_Server(socket.gethostname(), PORT)
    serv.run()

    print 'terminating processes'
    for p in multiprocessing.active_children():
        process.terminate()
        process.join()

if __name__ == '__main__':
    main()

#!/usr/bin/python           # This is server.py file

