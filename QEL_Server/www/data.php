<?php

/*
 *  QELink web server
 *   Index
 *
 *  Copyright (c) Brock Anderson 2012
 *  All rights reserved.  Not for commercial use
 *
 */

session_start();

require_once('db/list.php');
require_once('support/hf.php');
require_once('db/qel_actions.php');



if(isset($_GET['action'])  && isset($_GET['qel']))
{
   if ($_GET['action'] == "time")
   {
     echo get_QEL_time($_GET['qel');
   }

   if ($_GET['action'] == "status")
   {
      echo get_QEL_status($_GET['qel');
   }

}

?>
