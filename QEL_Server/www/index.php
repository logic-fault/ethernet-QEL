<?php

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

?>

