<?php
function get_semesters($user)
{
	global $db;
	$query = 'SELECT * FROM semesters
			 ORDER BY termID';
	$result = $db->query($query);
	return $result;

}

?>