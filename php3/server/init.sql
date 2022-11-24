CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;


USE appDB;

CREATE TABLE IF NOT EXISTS accounts(
	acc_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	username VARCHAR(50) NOT NULL,
  	passwords VARCHAR(50) NOT NULL,
  	email VARCHAR(100) NOT NULL
);




INSERT INTO accounts (username, passwords, email) VALUES ('admin', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('user', 'user', 'test@test.com');

CREATE TABLE IF NOT EXISTS mesto(
	mesto_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	mesto_user VARCHAR(50) NOT NULL,
  	mesto_img LONGBLOB
);

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('admin', 'Lorem ipsum dolor');

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('user', 'User information!');

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('admin', 'Lorem ipsum dolor');

INSERT INTO mesto (mesto_user, mesto_img) VALUES ('user', 'User information!');
