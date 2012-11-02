<?php

/*

   Access server for monitoring QEL status and controlling them.
   Currently just a very basic table.

   Copyright (c) Brock Anderson 2012
   All rights reserved, not permitted for commercial use.


*/

$TIME_THRESHOLD = 60; // minutes

/* Delete tags */
function delete_groups($group_list, $m = '')
{
   if ($m == '')
      $m = new Mongo();

   $db = $m->selectDB("QEL_Server");


   # remove the group from the group list and remove the collection
   foreach ($group_list as $group)
   {
      $collection_name = 'GRP_' + $group;
      $db->selectCollection('group_list')->remove(array('name' => "$group"));
      $db->selectCollection($collection_name)->drop();
   }
}

function add_group($group)
{

   // no_restrictions group is a special keyword
   if (strtolower($group) == 'no_restrictions')
      return;   


   // must contain some characters
   if ($group == '')
      return;

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");

   // delete any old group with the same name
   $glist = array( $group  );
   delete_groups($glist, $m);

   $entry = array(
                  'name'=> "$group"
                 );

    $collection_name = 'GRP_' + $group;

   $db->selectCollection('group_list')->save($entry);
   $db->createCollection($collection_name);

}


/* Show all NFC tags */
function get_group_list($sort_field = 'name')
{

   if ($sort_field != 'name' )
   {
      die("sorting by invalid field");
   }

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");
   $res = $db->selectCollection('group_list')->find()->sort(array( "$sort_field" => 1));

   return $res;
}


/* Get all the qels in a group */
function get_group_qels($group, $m = '')
{
   if ($m == '')
      $m = new Mongo(); // connect

   $db = $m->selectDB("QEL_Server");

   $collection = 'GRP_' . $group;

   $res = $db->selectCollection($collection)->find()->sort(array( "qel_name" => 1));

   return $res;

}

/* Get all qels not in the group, filter only for ones that have reported in the last hour */
function get_group_qels_not($group)
{
   global $TIME_THRESHOLD;

   $cutoff = intval(time()) - $TIME_THRESHOLD * 60;

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");

   // get the list of all the qels
   $full_list = $db->selectCollection('QEL_List')->find(array("time" => array('$gt' => $cutoff)))->sort(array( "name" => 1));
   //$full_list = $db->selectCollection('QEL_List')->find()->sort(array( "name" => 1));   

   // get list of qels we have in this group
   $local_list = get_group_qels($group, $m);

   $full_list_len = count($full_list);
   $full_list_ptr = 0;

   $final_list = array();

   //return $full_list;

   // add the entries\

   $end = False; // end of local list

   // try to get first element of local list
   if ($local_list->hasNext())
      $local_list->next();

   foreach ($full_list as $present_qel)
   {
      $local_element = $local_list->current();

      if (!$end && ($present_qel['name'] == $local_element['qel_name']))
      {
         if ($local_list->hasNext())
            $local_list->next();
         else
            $end = True;
      }
      else
      {
         $final_list[] = $present_qel['name'];
      }
   }

   return $final_list; 
}

function print_group_qels_not($group)
{
   $qels_not_list = get_group_qels_not($group);
   $list_len = count($qels_not_list);

   $size_len = 10;
 
//   if ($size_len > $list_len)
//      $size_len = $list_len;

   echo '<select name="qels_not_list[]" multiple="multiple" size="' . $size_len . '">';

   foreach(get_group_qels_not($group) as $qel)
   {
       echo '<option value="' . $qel . '">' . $qel . '</option>';
   }
   echo '</select>';
}

function print_group_qels($group)
{

   $size_len = 10;
 
   echo '<select name="qels_list[]" multiple="multiple" size="' . $size_len . '">';

   foreach(get_group_qels($group) as $qel)
   {
       echo '<option value="' . $qel['qel_name'] . '">' . $qel['qel_name'] . '</option>';
   }
   echo '</select>';
}


function delete_group_qels($group, $qels)
{
   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");

   $collection = 'GRP_' . $group;

   foreach ($qels as $qel)
   {
      $res = $db->selectCollection($collection)->remove(array( "qel_name" => $qel));
   }

   return $res;
}

function add_group_qels($group, $qels)
{
   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");

   $collection = 'GRP_' . $group;

    foreach ($qels as $qel)
    {
       $entry = array(
                     'qel_name'=> "$qel"
                     );

       $db->selectCollection($collection)->save($entry);
    }

   return;
}

function print_groups_dropdown($select_name = 'group_select')
{
   $res = get_group_list();

   echo '<select name="' . $select_name . '">';

   // print the no_restrictions group
   echo '<option value="no_restrictions">no_restrictions</option>';

   foreach ($res as $group)
   {
      echo '<option value="' . $group['name'] . '">' . $group['name'] . '</option>';
   }

   echo '</select>';
}

function print_group_list($sort_field = 'name')
{
   
   $res = get_group_list();
   ?>
   <form action="groups.php" method="post">
   <table class="list_table">
   <tr class="list_head">
      <td>
          <input type="checkbox" onClick="toggle_groups(this)" /> 
      </td>

<td><a style="text-decoration:none" href="groups.php?tag_sort_field=group">Group</a></td></tr>
   <?
   
   $odd = true;

   // find last update time in minutes

   foreach ($res as $group)
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
      echo '<tr class="' . $class_name . '"><td class="table_c"><input type="checkbox" name="check_group[]" value="' . $group['name']  . '" /> <br /> </td><td class="table_c"> <a class="group_link" href="group.php?group_name=' . $group['name'] . '">' . $group['name'] . '</a></td> </tr>';
   }
   ?>
   </table>
   <br />
   <div class="submit_div">
   <input type="submit" value="Delete" />
   </div>
   </form>
   <?

}

?>

