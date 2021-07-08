CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        username VARCHAR (50),
                        email VARCHAR (50),
                        password VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);

CREATE TABLE ads (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        user_id INT UNSIGNED NOT NULL FOREIGN KEY (id) ,
                        title VARCHAR (50),
                        description VARCHAR(120) NOT NULL


);

