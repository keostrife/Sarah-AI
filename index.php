<?php
	//assume that user already logged in
	session_start();

	include_once("./tool/database.php");
	include_once("./tool/databaseInit.php");

	
	include_once("./brain/Processor.sarah");
	include_once("./brain/Brain.sarah");
	include_once("./core.sarah");

	$processor = new Processor();
	$brain = new Brain(array(
		"processor" => $processor
	));
	$sarah = new Sarah($brain);
	
	if(!isset($_GET["s"])) {
		echo $sarah->think("Hi");
	} else {
		echo $sarah->think($_GET["s"]);
	}
?>

<form action="">
	<input type="text" id="s" name="s" value="<?=$_GET["s"]?>">
	<input type="submit">
</form>