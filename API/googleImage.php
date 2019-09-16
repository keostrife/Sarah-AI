<?php
	session_start();
	$apikey = "AIzaSyC0XRckudi5XGrGLkhyluv48doHimQcBoA";
	$engineID = "009614128495507084988:utzwquefton";

	
	if(isset($_GET["keyword"]) && isset($_GET["secret"]) && $_GET["secret"] == "boobs") {
		$url = "https://www.googleapis.com/customsearch/v1?cx=".$engineID."&searchType=image&q=".urlencode($_GET["keyword"])."&key=".$apikey;
		echo file_get_contents($url);
	} else {
		exit;
	}

?>