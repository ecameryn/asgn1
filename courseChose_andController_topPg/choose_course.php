<?php include '../view/header.php'; ?>

<div id="main">
	
	<?php $semesters = get_semesters(); 
		  $subjects = get_subjects(); 
		  ?>
		  
	<center><form action="index.php" method="post" id="choose_semester_form">
		<input type="hidden" name="action" value="choose_semester" />
		
		<p></p> <br /> <br /> <br /> <br />
		
		<span style="font-size : x-large;"><label>Semester</label>
		<select name="term_id">
		<?php foreach ($semesters as $semester) : ?>
			<option value="<?php echo $semester['termID']; ?>">
				<?php echo $semester['term']; ?>
			</option>
		<?php endforeach; ?>
		</select>
		<p></p> <br />
		
		
		<label>Subject</label>
		<select name="subj_type">
		<?php foreach ($subjects as $subject) : ?>
			<option value="<?php echo $subject['subjType']; ?>">
				<?php echo $subject['subjType']; ?>
			</option>
		<?php endforeach; ?>
		</select>
		<br /><br />
		
		<label>&nbsp;</label>
        <input type="submit" value="Submit" /></span>
        <br />  <br />
	</form></center>
	
	
</div>
<br /> <br /> <br />


<?php include '../view/footer.php'; ?>