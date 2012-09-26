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

<form action="groups.php?action=new_group" method="post">
<br />
Group Name: <input type="text" name="new_name"> <br />
<input type="submit" name="submit_new_group" value="New Group"/>
</form>

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


printHeader( 'groups.php' ,'Groups');

?>

<br />

<div class="info">Click on a group to modify which QELs that the users of those groups are allowed to use.</div>

<br />

<?

print_group_list();
print_group_entry();
printFooter();

?>
