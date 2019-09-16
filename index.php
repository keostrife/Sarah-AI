<?php
	error_reporting(E_ALL);
	ini_set('display_errors', 1);

	//assume that user already logged in
	session_start();

	include_once("./tool/database.php");
	include_once("./tool/databaseInit.php");

	include_once("./sarah/core.sarah");
	include_once("./sarah/Master.sarah");

	//constructing Sarah
	$masterUser = new sarah\Master(array(
		"first_name" => "Friend",
		"last_name" => "",
		"birth_day" => 13,
		"birth_month" => 5,
		"birth_year" => 1992,
		"email" => "keo.strife@gmail.com",
		"gender" => "male"
	));

	$sarah = new sarah\Master(array(
		"first_name" => "Sarah",
		"last_name" => "Lockhart",
		"birth_day" => 3,
		"birth_month" => 5,
		"birth_year" => 1987,
		"email" => "keo.strife@gmail.com",
		"gender" => "female"
	));

	$sarah = new Sarah(array(
		"master" => $masterUser,
		"self" => $sarah
	));

	echo $sarah->think($_GET["s"]??"Hi");
?>