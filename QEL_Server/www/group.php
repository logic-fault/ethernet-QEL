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
   
   if ($action == 'submit_new_qels')
   {  
      add_group_qels($_GET['group_name'], $_POST['qels_not_list']);
   }

   elseif ($action == 'submit_delete_qels')
   {  
      delete_group_qels($_GET['group_name'], $_POST['qels_list']);
   }
}


$page_ref = 'group.php?group_name=' . $_GET['group_name'];

printHeader( 'groups.php' ,'Modifying Groups');

?>

   <a class="groups_link" style="color: #ff0000" href="groups.php">&lt;&lt; Back to groups</a>
   <br />
   <div class="qel_list"> 
   <div class="qel_list_header"> Group <? echo $_GET['group_name'];  ?></div>
<br />
<div class="info">Use the CTRL and SHIFT keys to select QELs to add or remove from the group.</div>
<br />
<br />

<div style="float:left">

<?
echo '<form name="qel_not_form" action="' . $page_ref .  '&action=submit_new_qels" method="post">'; 

print_group_qels_not($_GET['group_name']);

echo '<br />';
echo '<input type="submit" value="Add" />';
echo '</form>';

echo '</div>';
echo '<div style="float:right; margin-left: 100px; border-left: 1px dotted #ffffff;"><div style="margin-left: 100px">';

echo '<form name="qel_delete_form" action="' . $page_ref .  '&action=submit_delete_qels" method="post">'; 
print_group_qels($_GET['group_name']);
echo '<br />';
echo '<input type="submit" value="Remove" />';
echo '</form>';
echo '</div></div>';


?>
    </div>
<?

printFooter();

?>
