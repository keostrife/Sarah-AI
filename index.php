<?php
	use sarah;

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
	
	echo "<span id='response'>".$sarah->think($_GET["s"]??"Hi")."</span>";
?>
<style>
	img {
		max-width: 300px;
		max-height: 300px;
	}
</style>
<form action="">
	<input type="text" id="s" name="s" value="<?=$_GET["s"]??""?>">
	<input type="submit">
</form>

<script>
	let response =document.querySelector("#response").innerHTML.trim(); 
	if(response.indexOf("/img ") >= 0) {
		let imgKeyword = response.substring(5);
		fetch(`https://www.googleapis.com/customsearch/v1?cx=009614128495507084988:utzwquefton&searchType=image&q=${imgKeyword}&key=AIzaSyC0XRckudi5XGrGLkhyluv48doHimQcBoA`).then(function(response) {
	    return response.json();
	  })
	  .then(function(data) {
	  	let firstResultIndex = 0;
	  	while(data.items[firstResultIndex].link.substring(0.-4) != ".jpg" || data.items[firstResultIndex].link.substring(0.-4) != ".png") {
	  		firstResultIndex++;
	  	}
	    document.querySelector("#response").innerHTML = `<img src="${data.items[firstResultIndex].link}">`;
	  });
	}
</script>