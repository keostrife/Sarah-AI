<?php 

	session_start();
	$apikey = "719026fb4450f0fb8c106a3d79c01672";

	if(isset($_GET["lat"]) && isset($_GET["lng"]) && isset($_GET["secret"]) && $_GET["secret"] == "boobs") {
		$url = "http://api.openweathermap.org/data/2.5/forecast?lat=".$_GET["lat"]."&lon=".$_GET["lng"]."&cnt=8&units=metric&APPID=".$apikey;
		echo file_get_contents($url);
	} else if(isset($_GET["city"]) && isset($_GET["secret"]) && $_GET["secret"] == "boobs") {
		$url = "http://api.openweathermap.org/data/2.5/forecast?q=".$_GET["city"]."&cnt=8&units=metric&APPID=".$apikey;
		echo file_get_contents($url);
	} else {
		exit;
	}
