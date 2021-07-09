CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

# DROP TABLE IF EXISTS users;

CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        username VARCHAR (50),
                        email VARCHAR (50),
                        password VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);

INSERT INTO users (username, email, password)
VALUES ('JimmyNeutron', 'jimbob@jimbob.com', '12345'),
       ('BillHader', 'baggins@lotr.com', 'precious');

# DROP TABLE IF EXISTS ads;

CREATE TABLE ads (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        user_id INT UNSIGNED NOT NULL,
                        title VARCHAR (50),
                        description VARCHAR(120) NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (user_id) REFERENCES users (id)

);

INSERT INTO ads (user_id, title, description)
VALUES (1, 'Honda Civic for sale', 'Very clean garage kept low mileage'),
       (2, 'Ring for sale', 'Ordinary gold 24k ring in good condition'),
       (2, 'Robe for sale', 'Grey robe slightly used smells of magic');



# Create user

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';

# Grant permissions only on this db

GRANT CREATE, ALTER, INSERT, DROP ON adLister_db.* TO 'admin'@'localhost';


