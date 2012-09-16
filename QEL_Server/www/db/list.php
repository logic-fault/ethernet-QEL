<?php

/*

   Access server for monitoring QEL status and controlling them.
   Currently just a very basic table.

   Copyright (c) Brock Anderson 2012
   All rights reserved, not permitted for commercial use.


*/


function print_QEL_list($sort_field = 'name')
{
   if ($sort_field != 'name' && $sort_field != 'status')
   {
      die("sorting by invalid field");
   }

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");
   $res = $db->selectCollection('QEL_List')->find()->sort(array( "$sort_field" => 1));

   ?>
   <table class="list_table">
   <tr class="list_head"><td><a style="text-decoration:none" href="index.php?list_sort_field=name">Name</a></td><td><a style="text-decoration:none" href="index.php?list_sort_field=status">Status</a></td></tr>
   <?
   
   $odd = true;

   foreach ($res as $qel)
   {
      $odd = !$odd;
      if ($odd)
      {
          $class_name = 'element_odd';
      }
      else
      {
          $class_name = 'element_even';
      }
      echo '<tr class="' . $class_name . '"><td class="table_c"> ' . $qel['name'] . '</td> <td> ' .$qel['status'] . '</td></tr>';
   }
   ?>
   </table>
   <?

}

?>

