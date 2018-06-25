<?php
	global $dbk;

	try {
        $dbk->beginTransaction();

        /* ImmediateResponse Table  */
        $dbk->exec("CREATE TABLE IF NOT EXISTS immediateResponse (
            id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
            created_at DATETIME NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            input VARCHAR(255) NOT NULL UNIQUE,
            output VARCHAR(255) NOT NULL
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        /* InputAlias Table */
        $dbk->exec("CREATE TABLE IF NOT EXISTS inputAlias (
            id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
            created_at DATETIME NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            input VARCHAR(255) NOT NULL,
            alias VARCHAR(255) NOT NULL UNIQUE,
            regex VARCHAR(255) UNIQUE
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        /* OutputAlias Table */
        $dbk->exec("CREATE TABLE IF NOT EXISTS outputAlias (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            created_at DATETIME NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            output VARCHAR(255) NOT NULL,
            alias VARCHAR(255) NOT NULL UNIQUE,
            validation TEXT
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        $dbk->exec('INSERT IGNORE INTO inputAlias(input, alias) VALUES("greeting","Hi")');
        $dbk->exec('INSERT IGNORE INTO immediateResponse(input, output) VALUES("greeting","greeting")');
        $dbk->exec('INSERT IGNORE INTO outputAlias(output, alias) VALUES("greeting", "Hi")');
        $dbk->exec('INSERT IGNORE INTO outputAlias(output, alias) VALUES("unknown_command","I do not understand")');
        $dbk->exec('INSERT IGNORE INTO outputAlias(output, alias) VALUES("end_convo", "cool")');

        /* Questions Table  */
        $dbk->exec("CREATE TABLE IF NOT EXISTS questions (
            id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
            created_at DATETIME NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            question VARCHAR(255) NOT NULL UNIQUE,
            validation TEXT NOT NULL,
            askValidation TEXT
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        /* Question Alias Table */
        $dbk->exec("CREATE TABLE IF NOT EXISTS questionAlias (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            created_at DATETIME NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            question VARCHAR(255) NOT NULL,
            alias VARCHAR(255) NOT NULL UNIQUE
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        /* Unregistered Input */
        $dbk->exec("CREATE TABLE IF NOT EXISTS unregisteredInput (
            id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            created_at DATETIME NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            input VARCHAR(255) NOT NULL UNIQUE
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");


        $dbk->exec("CREATE TABLE IF NOT EXISTS `users` (
            `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
            uid VARCHAR(255) UNIQUE,
            `created_at` datetime NOT NULL,
            `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            email VARCHAR(255) UNIQUE,
            username VARCHAR(128) UNIQUE,
            password VARCHAR(128),
            first_name VARCHAR(128),
            last_name VARCHAR(128),
            gender VARCHAR(128),
            age VARCHAR(128),
            context VARCHAR(255),
            PRIMARY KEY (`id`)
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        
        $dbk->exec("INSERT IGNORE INTO users(username, uid) VALUES('guest','default')");
        $sarahAge = date("Y")-1992;
        $dbk->exec("INSERT IGNORE INTO users(email, username, first_name, last_name, full_name, age, gender, uid) VALUES('keo.strife@gmail.com','keo','Keo','Strife', 'Keo Strife', ".$sarahAge.", 'male', 'keo')");

        $dbk->commit();
		
    } catch(PDOException $e) {
        $dbk->rollback();
        echo "Failed: " . $e->getMessage();
    }


	