CREATE DATABASE chat;

USE chat;

CREATE TABLE users(
  /* Describe your table here.*/
  id integer NOT NULL PRIMARY KEY,
  username text NOT NULL
);

CREATE TABLE rooms(
  /* Describe your table here.*/
  id integer NOT NULL PRIMARY KEY,
  roomname text NOT NULL
);

CREATE TABLE messages(
  /* Describe your table here.*/
  id integer AUTO_INCREMENT PRIMARY KEY,
  content text NOT NULL,
  userId integer NOT NULL,
  roomId integer NOT NULL,
  FOREIGN KEY(userId) REFERENCES `users`(id),
  FOREIGN KEY(roomId) REFERENCES `rooms`(id)
);


INSERT INTO users VALUES(1, 'becca');
INSERT INTO users VALUES(2, 'lee');
INSERT INTO rooms VALUES(1, 'hackreactor');
INSERT INTO rooms VALUES(2, 'bedroom');
INSERT INTO messages VALUES(0, 'ready for bed!', 1 , 2);
INSERT INTO messages VALUES(0, 'good morning!',  2, 1);

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