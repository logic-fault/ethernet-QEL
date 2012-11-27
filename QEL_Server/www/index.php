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


if(isset($_POST['check_qel']) && isset($_POST['qel_action']))
{
   qel_action($_POST['check_qel'], $_POST['qel_action']);
}

if(isset($_GET['list_sort_field']))
{
   $_SESSION['list_sort'] = $_GET["list_sort_field"];
}

if(!isset($_SESSION['list_sort']))
{
    $list_sort = 'name';
}
else
{
    $list_sort = $_SESSION['list_sort'];
}



printHeader( 'index.php' ,'QEL Panel');
print_QEL_list($list_sort);
printFooter();

?>
