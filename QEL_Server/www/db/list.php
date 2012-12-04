<?php

/*

   Access server for monitoring QEL status and controlling them.
   Currently just a very basic table.

   Copyright (c) Brock Anderson 2012
   All rights reserved, not permitted for commercial use.


*/

/* Don't show QELs with no response in the last hour */

$TIME_THRESHOLD = 60;

function get_QEL_status($qel_name)
{
   return "";
}

function get_QEL_time($qel_name)
{
   $m = new Mongo();
   $db = $m->selectDB("QEL_Server");
   $res = $db->selectCollection('QEL_List')->findOne(array("name" => $qel_name));

   return $res['time'];
}

function print_QEL_list($sort_field = 'name')
{
   global $TIME_THRESHOLD;

   if ($sort_field != 'name' && $sort_field != 'status')
   {
      die("sorting by invalid field");
   }

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");
   $res = $db->selectCollection('QEL_List')->find()->sort(array( "$sort_field" => 1));

   ?>
   <form action="index.php" method="post">
   <table class="list_table">
   <tr class="list_head">
      <td>
          <input type="checkbox" onClick="toggle_qel(this)" /> 
      </td>

<td><a style="text-decoration:none" href="index.php?list_sort_field=name">Name</a></td><td><a style="text-decoration:none" href="index.php?list_sort_field=status">Status</a></td><td>Last Update(m)</td></tr>
   <?
   
   $odd = true;

   // find last update time in minutes

   foreach ($res as $qel)
   {
      if (!isset($qel['time']))
         continue;

      $timediff = intval((time() - intval($qel['time'])) / 60);
      if ($timediff > $TIME_THRESHOLD)
          continue;

      $odd = !$odd;
      if ($odd)
      {
          $class_name = 'element_odd';
      }
      else
      {
          $class_name = 'element_even';
      }
      echo '<tr class="' . $class_name . '"><td class="table_c"><input type="checkbox" name="check_qel[]" value="' . $qel['name']  . '" /> <br /> </td><td class="table_c"> <a style="text-decoration:none" href="http://' . $qel['ip']  .  '" >' . $qel['name'] . '</a></td> <td> ' .$qel['status'] . '</td><td style="float: right" class="table_c">' . $timediff  .'</td></tr>';
   }
   ?>
   </table>
   <br />
   <div class="submit_div">
   <input type="radio" name="qel_action" value="Lock" /> <img src="img/locked.png" alt="Lock" /><br />
   <input type="radio" name="qel_action" value="Unlock" /> <img src="img/unlocked.png" alt="Unlock" /> <br /> 
   <input type="radio" name="qel_action" value="Secure" /> No Entry (no NFC access) <br />
   <input type="submit" value="Submit" />
   </div>
   </form>
   <?

}

?>

