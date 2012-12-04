#!/usr/bin/env python

#-------------------------------------------------------------------------
#Name:   QELink (mongodb driver)
#Purpose:
#
# Author: Brock Anderson
#
# Created: 15 September 2012
# Copyright (c) Brock Anderson 2012.
#
#License:  All rights reserved.  Not permitted for commercial use
#
#

import pymongo
import time

class Mongo_Driver(object):
    def __init__(self, server, db_name, port):
        self.server      = server
        self.db_name     = db_name
        self.port        = port
        self.conn        = 0
        self.db          = 0

    def init(self):
        self.conn = pymongo.Connection(self.server, self.port)    
        self.db   = self.conn[self.db_name]

    def _set_status(self, QEL_name, QEL_status, QEL_IP):
        if (self.db == 0):
           return
     
        QEL = None     

        try:
            QEL = self.db.QEL_List.find_one({"name" : QEL_name})
        except:
            QEL = None
        finally:
            pass      
 
        if (QEL != None):
           QEL['ip']     = QEL_IP
           QEL['status'] = QEL_status
           QEL['time']   = int(time.time()) # s since unix epoch
           self.db.QEL_List.save(QEL)
           return

        # if new QEL name, delete all qels at same ip with this name
        self.db.QEL_List.remove({"ip" : QEL_IP})       
        self.db.QEL_List.save({"ip" : QEL_IP, "name" : QEL_name, "status": QEL_status, "time" : int(time.time())}) 

    def find_QEL_in_group(self, group, QEL_name):
        if (self.db == 0):
            return False

        stat = None

        try:
            coll = 'GRP_' + group
            stat = self.db[coll].find_one({"qel_name" : QEL_name})
        except:
            stat = None
        finally:
            pass

        if (stat != None):
           return True

        return False
            

    def get_tag_group(self, tag_id):
        if (self.db == 0):
            return ''
        
        stat = self.db.tag_permissions.find_one({"ID" : tag_id},{"group" : 1})
        if (stat == None):
            return ''

        return stat['group']

    def insert_tag(self, tag_id):
       if (self.db == 0):
           return ''

       print 'before save'
       self.db.tag_permissions.save({"ID" : tag_id, "name" : "nobody", "group" : "NO_ACCESS"})
       print 'after save'

    def set_status_opened(self, QEL_name, QEL_IP):
        self._set_status(QEL_name, "LATCH_OPENED", QEL_IP)

    def set_status_closed(self, QEL_name, QEL_IP):
        self._set_status(QEL_name, "LATCH_CLOSED", QEL_IP)

    def get_all_status(self):
        if (self.db == 0):
            return ''

        return self.db.QEL_List.find()

    def get_status(self, QEL_name):
       if (self.db == 0):
          return ''

       stat = self.db.QEL_List.find_one({"name": QEL_name}, {"status" : 1})
       if (stat == None):
           return 'NOT_IN_DB'
       
       return stat['status']

def test_driver():
   driver = Mongo_Driver('localhost', 'QEL_Server', 27017)
   driver.init()
   print 'QEL_test status: ' + driver.get_status('QEL_test')
   print 'QEL_fake status: ' + driver.get_status('QEL_fake')

   print 'set QEL_test opened'
   driver.set_status_opened('QEL_test', "127.0.0.1")
   print driver.get_status('QEL_test')

   print 'set QEL_test closed'
   driver.set_status_closed('QEL_test', "127.0.0.1")
   print driver.get_status('QEL_test' )
    
   print 'ALL QEL Status:' 
   print driver.get_all_status()

if __name__ == '__main__':
   test_driver()
