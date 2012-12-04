<?php

/*

   Access server for monitoring QEL status and controlling them.
   Currently just a very basic table.

   Copyright (c) Brock Anderson 2012
   All rights reserved, not permitted for commercial use.


*/


require_once('db/groups.php');

/* Delete tags */
function delete_tags($tag_list, $m = '')
{
   if ($m == '')
      $m = new Mongo();

   $db = $m->selectDB("QEL_Server");

   foreach ($tag_list as $tag)
   {
      $db->selectCollection('tag_permissions')->remove(array('ID' => "$tag"));
   }
}

function add_tag($ID, $name, $group)
{
   
   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");

   // delete any old tags with same ID
   $tlist = array( $ID  );
   delete_tags($tlist, $m);

   $entry = array('ID'   => "$ID",
                  'name' => "$name",
                  'group'=> "$group"
                 );

   $db->selectCollection('tag_permissions')->save($entry);

}

function set_tags_group($tags, $group)
{

   $m = new Mongo();
   $db = $m->selectDB("QEL_Server");

   foreach ($tags as $tag)
   {
      $res = $db->selectCollection('tag_permissions')->find(array('ID' =>$tag));
      foreach($res as $item)
      {
         $item['group'] = $group;
         $db->selectCollection('tag_permissions')->save($item);
      }
   }
}

function set_tags_name($tags, $name)
{

   $m = new Mongo();
   $db = $m->selectDB("QEL_Server");

   foreach ($tags as $tag)
   {
      $res = $db->selectCollection('tag_permissions')->find(array('ID' =>$tag));
      foreach($res as $item)
      {
         $item['name'] = $name;
         $db->selectCollection('tag_permissions')->save($item);
      }
   }
}

/* Show all NFC tags */
function print_tag_list($sort_field = 'name')
{

   if ($sort_field != 'name' && $sort_field != 'group')
   {
      die("sorting by invalid field");
   }

   $m = new Mongo(); // connect
   $db = $m->selectDB("QEL_Server");
   $res = $db->selectCollection('tag_permissions')->find()->sort(array( "$sort_field" => 1));

   ?>
   <form action="tags.php" method="post">
   <table class="list_table">
   <tr class="list_head">
      <td>
          <input type="checkbox" onClick="toggle_tags(this)" /> 
      </td>

<td><a style="text-decoration:none" href="tags.php?tag_sort_field=name">Name</a></td><td><a style="text-decoration:none" href="tags.php?tag_sort_field=group">Group</a></td><td>TAG ID</td></tr>
   <?
   
   $odd = true;

   // find last update time in minutes

   foreach ($res as $nfc_tag)
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
      echo '<tr class="' . $class_name . '"><td class="table_c"><input type="checkbox" name="check_tag[]" value="' . $nfc_tag['ID']  . '" /> <br /> </td><td class="table_c"> ' . $nfc_tag['name'] . '</td> <td> ' . $nfc_tag['group'] . '</td><td style="float: right" class="table_c">' . $nfc_tag['ID']  .'</td></tr>';
   }
   ?>
   </table>
   <br />

   <input type="radio" name="tag_radio" value="set_group">set group </input>
   <?

   print_groups_dropdown();

   ?>
   <br />
   <input type="radio" name="tag_radio" value="set_name">set name</input>
   <input type="text" name="name" />
   <br />
   <input type="radio" name="tag_radio" value="delete">delete</input>
   <div class="submit_div">
   <input type="submit" value="Submit" />
   <?

   ?>
   </div>
   </form>
   <?

}

?>

