CREATE DATABASE chat;

USE chat;

CREATE TABLE Users (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(40) UNIQUE
);

CREATE TABLE Rooms (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  roomname VARCHAR(40)
);

CREATE TABLE Messages (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  timestamp timestamp DEFAULT CURRENT_TIMESTAMP, 
  text text,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

