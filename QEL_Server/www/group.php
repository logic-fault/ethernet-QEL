<?php

/*
 *  QELink web server
 *   Index
 *
 *  Copyright (c) Brock Anderson 2012
 *  All rights reserved.  Not for commercial use
 *
 */

function print_group_entry()
{

?>


<?

}

session_start();

require_once('db/groups.php');
require_once('support/hf.php');

if(isset($_GET['action']))
{

   $action = $_GET['action'];
   
   if ($action == 'new_group')
   {  
      add_group($_POST['new_name']);
   }

}

if(isset($_POST['check_group']))
{
    delete_groups($_POST['check_group']);
}


printHeader( 'groups.php' ,'Modifying Groups');

?>

   <a class="groups_link" style="color: #ff0000" href="groups.php">&lt;&lt; Back to groups</a>

<?

printFooter();

?>
