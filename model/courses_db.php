<?php

function get_courses_by_subj_term_id($semester_id, $subject_type)
{
	global $db;
	$query = "SELECT * FROM courses
			 WHERE courses.subjType = '$subject_type' AND courses.termID = '$semester_id'
			 ORDER BY termID";
	$result = $db->query($query);
	return $result;

}

function get_courses()
{
	global $db;
	$query = "SELECT * FROM courses
			 ORDER BY termID";
	$result = $db->query($query);
	return $result;
}

function get_prof_name($instr_id)
{
	global $db;
	$query = "SELECT * FROM instructors
			  WHERE instrID = '$instr_id'";
	$name = $db->query($query);
	return $name;
}
?>