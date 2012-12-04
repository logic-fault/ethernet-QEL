<?php

/*
 *  QELink web server
 *   Index
 *
 *  Copyright (c) Brock Anderson 2012
 *  All rights reserved.  Not for commercial use
 *
 */

function print_tag_entry()
{

?>

<form action="tags.php?action=new_tag" method="post">
<br />
Tag ID: <input type="text" name="new_ID"> <br />
Name&nbsp;&nbsp;: <input type="text" name="new_name"> <br />
<input type="submit" name="submit_new_tag" value="New Tag"/>
</form>

<?

}

session_start();

require_once('db/tags.php');
require_once('support/hf.php');

if(isset($_GET['action']))
{

   $action = $_GET['action'];
   
   if ($action == 'new_tag')
   {  
      add_tag($_POST['new_ID'], $_POST['new_name'], '');
   }

}

if(isset($_GET['tag_sort_field']))
{
   $_SESSION['tag_sort'] = $_GET["tag_sort_field"];
}

if(!isset($_SESSION['tag_sort']))
{
    $tag_sort = 'name';
}
else
{
    $tag_sort = $_SESSION['tag_sort'];
}


if(isset($_POST['check_tag']))
{
    if (isset($_POST['tag_radio']))
    {
   
       if($_POST['tag_radio'] == 'delete')
          delete_tags($_POST['check_tag']);

       if($_POST['tag_radio'] == 'set_name')
          set_tags_name($_POST['check_tag'], $_POST['name']);

       if($_POST['tag_radio'] == 'set_group')
          set_tags_group($_POST['check_tag'], $_POST['group_select']);
    }
}


printHeader( 'tags.php' ,'Tags');

print_tag_list($tag_sort);
//print_tag_entry();

printFooter();

?>
