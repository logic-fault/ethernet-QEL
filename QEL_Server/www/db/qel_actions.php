<?php

/*

   Find IP for qels specified, run curl action on each system 

*/

function qel_action($qel_list, $action)
{

   $m = new Mongo();
   $db = $m->selectDB("QEL_Server");

   foreach ($qel_list as $qel)
   {
      $item = $db->selectCollection('QEL_List')->findOne(array("name" => $qel));
      print $item['ip'];
     
      $addr = 'http://' . $item['ip'] . '/action.html?action=' . $action;
   
      $c = curl_init($addr);
      curl_setopt($c, CURLOPT_HEADER, 0);
      curl_setopt($c, CURLOPT_CONNECTTIMEOUT_MS, 200);
      curl_exec($c);
      curl_close($c);
   }

}
