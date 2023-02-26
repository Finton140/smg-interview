CREATE DATABASE sketchbook;
USE sketchbook;
CREATE USER sketchbook IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON *.* TO sketchbook;

FLUSH PRIVILEGES;

CREATE TABLE user (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(4000) NOT NULL
);

CREATE TABLE email_folder (
	email_folder_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    folder_name VARCHAR(4000) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE email (
	email_id INT PRIMARY KEY AUTO_INCREMENT,
    email_folder_id INT NOT NULL,
    email_title VARCHAR(4000),
    email_body VARCHAR(4000),
    datetime_recieved TIMESTAMP,
    FOREIGN KEY (email_folder_id) REFERENCES email_folder(email_folder_id)
);