<?php

/*

   Find IP for qels specified, run curl action on each system 

*/

function qel_action($qel_list, $action)
{
   $action_map['Lock'] = '1';
   $action_map['Unlock'] = '3';
   $action_map['Secure']= '2'; 

   if (!isset($action_map[$action]))
      die('Unknown action num');

   
   $action_num = $action_map[$action];

   $m = new Mongo();
   $db = $m->selectDB("QEL_Server");

   foreach ($qel_list as $qel)
   {
      $item = $db->selectCollection('QEL_List')->findOne(array("name" => $qel));
//      print $item['ip'];
     

    $addr = 'http://' . $item['ip'] . '/qel_state.htm?qel=' . "$action_num";

      // 1 = locked, waiting
      // 2 = locknig to hold
//ll      echo $addr;
      $c = curl_init($addr);
      curl_setopt($c, CURLOPT_HEADER, 0);
      curl_setopt($c, CURLOPT_RETURNTRANSFER, 1);
      curl_setopt($c, CURLOPT_FRESH_CONNECT, 1);
      curl_exec($c);
      curl_close($c);

      // now wait 5 ms for a response
      usleep(50000);
   }

}
