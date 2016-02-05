CREATE DATABASE chat;

USE chat;

CREATE TABLE Users (
  id int PRIMARY KEY, 
  username VARCHAR(40) 
);

CREATE TABLE Rooms (
  id int PRIMARY KEY, 
  roomname VARCHAR(40)
);

CREATE TABLE Messages (
  id int PRIMARY KEY, 
  date Date NOT NULL, 
  text text,
  FOREIGN KEY (id) REFERENCES Users(id),
  FOREIGN KEY (id) REFERENCES Rooms(id)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

