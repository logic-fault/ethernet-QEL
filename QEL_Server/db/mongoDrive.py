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

    def _set_status(self, QEL_name, QEL_status):
        if (self.db == 0)
           return

        self.db.QEL_List.save({"name" : QEL_name, "status": QEL_status}) 

    def set_status_locked(self, QEL_name):
        self._set_status(QEL_name, "LATCH_OPEN")

    def set_status_unlocked(self, QEL_name):
        self._setstatus(QEL_name, "LATCH_CLOSED")

    def get_status(self, QEL_name):
       if (self.db == 0):
          return ''

       stat = self.db.QEL_List.find_one({"name": QEL_name}, {"status" : 1})
       if (stat == 'none'):
           return 'NOT_IN_DB'
       
       return stat['status']

def test_driver():
   driver = Mongo_Driver('localhost', 'QEL_Server', 27017)
   driver.init()
   print driver.get_status('QEL_test');
    
if __name__ == '__main__':
   test_driver()
