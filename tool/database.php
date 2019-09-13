<?php
	require_once(dirname(__FILE__)."/../../config.php");

	//database config
	$db_use = 'local';
	if($_SERVER["HTTP_HOST"] == "i.sarahai.com") {
		$db_use = 'production';
	}

	if($db_use == 'local'){
		$db_hostname = "localhost";
		$db_username = "root";
		$db_password = "root";
		$db_database = "sarah";
	} else if($db_use == 'production') {
		//server infos
		$db_hostname = "localhost";
		$db_username = DB_USER;
		$db_password = DB_PASS;
		$db_database = "sarah";
	}

	//set up PDO
	try {
		$dbk = new PDO('mysql:host='.$db_hostname.';dbname='.$db_database,$db_username,$db_password,array(PDO::ATTR_PERSISTENT => true));
	} catch (PDOException $err) {
		die("Unable to connect: ". $err->getMessage());
	}
	$dbk->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$dbk->exec("SET CHARACTER SET utf8");