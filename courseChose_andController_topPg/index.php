<?php 
require('../model/database.php');
require('../model/semesters_db.php');
require('../model/subjects_db.php');
require('../model/courses_db.php');



if (isset($_POST['action'])) {
    $action = $_POST['action'];
} else if (isset($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'default';
}

if($action == 'default')
{
	include('choose_course.php');
}
else if ($action == 'choose_semester')
{
	//$subjectss = get_subjects2();
	$semester_id = $_POST['term_id'];
	$subject_type = $_POST['subj_type'];
	$courses = get_courses_by_subj_term_id($semester_id, $subject_type);
	//$instr_id = get_prof_name()
	
	if (empty($semester_id) || empty($subject_type)) 
	{
        $error = "Invalid course data. Check all fields and try again.";
        include('../errors/error.php');
    }
	else
	{
		include('course_list.php');
	}
	
}
?>

