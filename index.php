<?php
	use sarah;

	error_reporting(E_ALL);
	ini_set('display_errors', 1);

	define('ROOT_DIR', dirname(__FILE__));

	//assume that user already logged in
	session_start();

	include_once("./tool/database.php");
	include_once("./tool/databaseInit.php");

	include_once("./sarah/core.sarah");
	include_once("./sarah/Master.sarah");

	//constructing Sarah
	$masterUser = new sarah\Master(array(
		"first_name" => "Keo",
		"last_name" => "Strife",
		"birth_day" => 13,
		"birth_month" => 5,
		"birth_year" => 1992,
		"email" => "keo.strife@gmail.com",
		"gender" => "male"
	));

	$sarah = new Sarah(array(
		"master" => $masterUser
	));
	
	if(!isset($_GET["s"])) {
		echo $sarah->think("Hi");
	} else {
		echo $sarah->think($_GET["s"]);
	}
?>

<form action="">
	<input type="text" id="s" name="s" value="<?=$_GET["s"]??""?>">
	<input type="submit">
</form>