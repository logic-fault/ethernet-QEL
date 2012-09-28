<?php

/*
 *  QELink web server
 *   Header and footer generation
 *
 *  Copyright (c) Brock Anderson 2012
 *  All rights reserved.  Not for commercial use
 *
 */

function printHeader($caller = 'index.php', $title = 'QEL panel')
{
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">

<!--  QEL Interface copyright (c) Brock Anderson 2012.  Not for commercial use-->

<head>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script src="js/funcs.js"> </script>
	<title>QELink: <? echo $title ?></title>
	<meta http-equiv="content-type" 
		content="text/html;charset=utf-8" />
</head>

<body>
<div class="outer_body"> 
<div class="QEL_header">
 &nbsp;QELink Control System
</div>
<?
//   echo $caller
?>
<div class="menu_left">
<?

   $pages = array( 'QEL panel' => 'index.php',
              'Groups'    => 'groups.php',
              'NFC Tags'  => 'tags.php',
            );

   foreach ($pages as $name => $url)
   {
      $class_name = "menu_link";

      if ($caller == $url)
         $class_name = "menu_link_here";
      echo '<a class="' . $class_name . '" href="' . $url . '">' . $name .'</a><br />';
   }
?>

</div>
<div class="body_right">
<div class="inner_body_right">
<?
}

function printFooter()
{
?>
</div>
</div>
</div>
</body>
</html>

<?
}

?>
