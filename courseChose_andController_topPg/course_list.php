<?php include '../view/header.php' ?>

<style>
table, th, td {
    border: 2px solid black;
	width: 820px;
}

.boxed{
	border: 3px solid white;
	width: 820px;
}
</style>

<div id="main">

<br /> <br /> 
<h1><font color="blue"><center>Course List</center></font></h1>


<?php foreach ($courses as $course) : ?>

<!--Get Instructor Name-->
<?php //$instr_id = $course['instrID'];?>
<?php //$instr_name = get_prof_name(instr_id); ?>

<center><h2 class=boxed><?php echo $course['subjType'] ?> <?php echo $course['subjID'] ?> </h2>
<h3 class=boxed><?php echo $course['description'] ?></h3>

<table>
	<tr>
		<th>CRN</th>
		<th>Section</th>
		<th>Day</th>
		<th>Time</th>
		<th>Location</th>
		<th>Instructor</th>
		<th>Begin/End Dates</th>
	</tr>
	<tr>
		<td><?php echo $course['crn']; ?></td>
        <td><?php echo $course['crsSection']; ?></td>
		<td><?php echo $course['weekDay']; ?></td>
		<td><?php echo $course['beginTime'] ?> - 
			<?php echo $course['endTime']; ?>
		</td>
        <td><?php echo $course['building']; ?></td>
		<td>TBA</td>
		<td><?php echo $course['beginDate']; ?> /&nbsp &nbsp &nbsp
			<?php echo $course['endDate']; ?>
		</td>
    </tr>
</table></center>

<?php endforeach; ?>

</div>
<br /> <br /> <br />
<?php include '../view/footer.php' ?>