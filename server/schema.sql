CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id integer auto_increment primary key,
  user_id integer,
  content text not null,
  room_id integer,
  foreign key(user_id) references users(id),
  foreign key(room_id) references rooms(id),
);

CREATE TABLE users (
  /* Describe your table here.*/
  id integer auto_increment primary key,
  name text not null,
);

CREATE TABLE rooms (
  /* Describe your table here.*/
  id integer auto_increment primary key,
  roomname text not null,
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

