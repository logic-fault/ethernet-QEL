<?php

/*

   Access server for monitoring QEL status and controlling them.
   Currently just a very basic table.

   Copyright (c) Brock Anderson 2012
   All rights reserved, not permitted for commercial use.


*/

function print_QEL_list()
{

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");
   $res = $db->selectCollection('QEL_List')->find();

   ?>
   <table>
   <tr><td>Name</td><td>Status</td></tr>
   <?
   foreach ($res as $qel)
   {
      echo '<tr> ' . '<td> ' . $qel['name'] . '</td> <td> ' .$qel['status'] . '</td></tr>';
   }
   ?>
   </table>
   <?

}

?>

