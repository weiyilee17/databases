CREATE DATABASE chat;

USE chat;

CREATE TABLE messages(
  /* Describe your table here.*/
  id integer auto_increment primary key,
  content text not null,
  user_id integer,
  room_id integer,
  foreign key(user_id) references users(id),
  foreign key(room_id) references rooms(id)
);

CREATE TABLE users(
  /* Describe your table here.*/
  id integer,
  username text not null
);

CREATE TABLE rooms(
  /* Describe your table here.*/
  id integer,
  roomname text not null
);

INSERT INTO users VALUES(0, 'becca');
INSERT INTO rooms VALUES(0, 'hackreactor');
INSERT INTO messages VALUES(0, 'ready for bed!',  0, 0);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
/*

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Games'
-- 
-- ---

DROP TABLE IF EXISTS `Games`;
    
CREATE TABLE `Games` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Title` MEDIUMTEXT NULL DEFAULT NULL,
  `Author_id` MEDIUMTEXT NULL DEFAULT NULL,
  `id_Authors` INTEGER NULL DEFAULT NULL
);

-- ---
-- Table 'Authors'
-- 
-- ---

DROP TABLE IF EXISTS `Authors`;
    
CREATE TABLE `Authors` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Games` ADD FOREIGN KEY (id_Authors) REFERENCES `Authors` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Games` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Authors` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Games` (`id`,`Title`,`Author_id`,`id_Authors`) VALUES
-- ('','','','');
-- INSERT INTO `Authors` (`id`,`Name`) VALUES
-- ('','');

*/