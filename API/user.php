<?php
	session_start();
	

	include_once("../tool/database.php");
	include_once("../tool/databaseInit.php");

	
	
	if(!isset($_REQUEST["u"])) {
		echo json_encode(array(
			"status" => "0"
		));
	} else if (isset($_POST["set"])) {
		if (isset($_POST["ram"])) {
			$query = $dbk->prepare("UPDATE users SET ram=:ram WHERE uid=:uid");
			$query->execute(array(
				":ram" => $_POST["ram"],
				":uid" => $_POST["u"]
			));
		} else if (isset($_POST["context"])) {
			$query = $dbk->prepare("UPDATE users SET context=:context WHERE uid=:uid");
			$query->execute(array(
				":context" => $_POST["context"],
				":uid" => $_POST["u"]
			));
		}
		if($query->rowCount > 0) {
			echo json_encode(array(
				"set" => true,
			));
		} else {
			echo json_encode(array(
				"set" => false,
			));
		}
	} else {
		global $dbk;
		$query = $dbk->prepare("SELECT * FROM users WHERE uid = ?");
		$query->execute(array($_GET["u"]));
		if($query && $query->rowCount() <= 0) {
			if(!isset($_GET["add"])) {
				echo json_encode(array(
					"exist" => false
				));
			} else {
				$query = $dbk->prepare("INSERT INTO users(email, username, first_name, last_name, full_name, gender, profile_pic, uid) VALUES(:email, :username, :first_name, :last_name, :full_name, :gender, :profile_pic, :uid)");
				$query->execute(array(
					":email" => $_GET["email"],
					":username" => $_GET["username"],
					":first_name" => $_GET["first_name"],
					":last_name" => $_GET["last_name"],
					":full_name" => $_GET["full_name"],
					":gender" => $_GET["gender"],
					":profile_pic" => $_GET["profile_pic"],
					":uid" => $_GET["u"]
				));
				if($query->rowCount > 0) {
					echo json_encode(array(
						"exist" => true,
						"added" => true,
						"user" => $_GET["u"]
					));
				} else {
					echo json_encode(array(
						"exist" => false
					));
				}
			}
		} else {
			echo json_encode(array(
				"exist" => true,
				"user" => $query->fetchAll()
			));
		}
	}

?>