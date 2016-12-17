<?php

function get_subjects()
{
	global $db;
	$query = 'SELECT DISTINCT subjType FROM subjects
			 ORDER BY subjID';
	$result = $db->query($query);
	return $result;

}

function get_subjects2()
{
	global $db;
	$query = 'SELECT * FROM subjects
			 ORDER BY subjID';
	$result = $db->query($query);
	return $result;
}
?>