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


if(!isset($_GET['group_name']))
   die('ERROR: No group_name in $_GET');

if(isset($_GET['action']))
{

   $action = $_GET['action'];
   
   if ($action == 'new_qels')
   {  
      add_group_qels($_POST['new_qels']);
   }

}


$page_ref = 'group.php?group_name=' . $_GET['group_name'];

printHeader( 'groups.php' ,'Modifying Groups');

?>

   <a class="groups_link" style="color: #ff0000" href="groups.php">&lt;&lt; Back to groups</a>
   <br />
   <div class="qel_list"> 
   <div class="qel_list_header"> QELs in Group <? echo $_GET['group_name'];  ?></div>
<?

print_group_qels_not($_GET['group_name']);
echo '<br />';
echo '<br />';
print_group_qels($_GET['group_name']);


?>
    </div>
<?

printFooter();

?>
