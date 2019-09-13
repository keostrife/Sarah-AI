<?php

	error_reporting(E_ALL);
	ini_set('display_errors', 1);
	
	session_start();

	require_once("../../tool/database.php");
	require_once("../../tool/databaseInit.php");

	global $dbk;

	//get input-output pairs
	$pairs = array();
	$query = $dbk->prepare("SELECT * FROM immediateResponse");
	$query->execute();
	$pairs = $query->fetchAll();

	//get alias
	$inputAlias = array();
	$query = $dbk->prepare("SELECT * FROM inputAlias");
	$query->execute();
	$inputAlias = $query->fetchAll();

	$outputAlias = array();
	$query = $dbk->prepare("SELECT * FROM outputAlias");
	$query->execute();
	$outputAlias = $query->fetchAll();
?>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,300italic,700,700italic">
<link rel="stylesheet" href="//cdn.rawgit.com/necolas/normalize.css/master/normalize.css">
<link rel="stylesheet" href="//cdn.rawgit.com/milligram/milligram/master/dist/milligram.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<title>Sarah Lockhart</title>
</head>
<body>
		<div id="input-alias">
			<h1>Input</h1> 
			<a href="" class="close">__close</a>
			<input type="text" id="inputAliasAdd">
			<button id="inputAliasAddBtn">Add</button>
			<ul>
				<?php
					foreach($inputAlias as $inputAlias) {
						echo "<li data-input='{$inputAlias["input"]}'>{$inputAlias['alias']}</li>";
					}
				?>
			</ul>
		</div>
		<div id="output-alias">
			<h1>Output</h1>
			<a href="" class="close">__close</a>
			<input type="text" id="outputAliasAdd">
			<button id="outputAliasAddBtn">Add</button>
			<ul>
				<?php
					foreach($outputAlias as $outputAlias) {
						echo "<li data-output='{$outputAlias["output"]}'>{$outputAlias['alias']}</li>";
					}
				?>
			</ul>
		</div>

		
		<table id="direct-response">
			<tr>
				<th>input</th>
				<th>output</th>
			</tr>
			<tr>
				<td><input type="text" id="inputAdd"></td>
				<td><input type="text" id="outputAdd"></td>
			</tr>
			<tr>
				<td colspan="2"><button id="directResponseAddBtn">Add</button></td>
			</tr>
		<?php
			foreach($pairs as $pair) {
				echo "<tr>";
					echo "<td><a href='' class='input'>{$pair['input']}</a></td>";
					echo "<td><a href='' class='output'>{$pair['output']}</a></td>";
				echo "</tr>";
			}
		?>
		</table>
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="assets/js/main.min.js"></script>
</body>
</html>