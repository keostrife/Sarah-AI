<?php
	error_reporting(E_ALL);
	ini_set('display_errors', 1);

	session_start();
	

	include_once("../tool/database.php");
	// include_once("../tool/databaseInit.php");

	if(isset($_POST["add"])) {
		if(isset($_POST["type"]) && $_POST["type"] == "directResponse") {
			$query = $dbk->prepare("SELECT * FROM immediateResponse WHERE input = :input");
			$query->execute(array(
				":input" => $_POST["input"]
			));
			if($query->rowCount() > 0) {
				echo json_encode(array(
					"success" => "false"
				));
			}

			$query = $dbk->prepare("INSERT INTO immediateResponse(input, output) VALUES(:input, :output)");
			$query->execute(array(
				":input" => $_POST["input"],
				":output" => $_POST["output"],
			));
			if($query->rowCount() > 0) {
				echo json_encode(array(
					"success" => "true"
				));
			} else {
				echo json_encode(array(
					"success" => "false"
				));
			}
		}

		if(isset($_POST["type"]) && $_POST["type"] == "inputAlias") {
			$query = $dbk->prepare("SELECT * FROM inputAlias WHERE alias = :alias");
			$query->execute(array(
				":alias" => $_POST["alias"]
			));
			if($query->rowCount() > 0) {
				echo json_encode(array(
					"success" => "false"
				));
			}

			$query = $dbk->prepare("INSERT INTO inputAlias(input, alias, created_at) VALUES(:input, :alias, NOW())");
			$query->execute(array(
				":input" => $_POST["input"],
				":alias" => $_POST["alias"],
			));
			if($query->rowCount() > 0) {
				echo json_encode(array(
					"success" => "true"
				));
			} else {
				echo json_encode(array(
					"success" => "false"
				));
			}
		}

		if(isset($_POST["type"]) && $_POST["type"] == "outputAlias") {
			$query = $dbk->prepare("SELECT * FROM outputAlias WHERE alias = :alias AND output = :output");
			$query->execute(array(
				":alias" => $_POST["alias"],
				":output" => $_POST["output"]
			));
			if($query->rowCount() > 0) {
				echo json_encode(array(
					"success" => "false"
				));
			}

			$query = $dbk->prepare("INSERT INTO outputAlias(output, alias) VALUES(:output, :alias)");
			$query->execute(array(
				":output" => $_POST["output"],
				":alias" => $_POST["alias"],
			));
			if($query->rowCount() > 0) {
				echo json_encode(array(
					"success" => "true"
				));
			} else {
				echo json_encode(array(
					"success" => "false"
				));
			}
		}
	}
?>