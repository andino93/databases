DROP DATABASE IF EXISTS `chat`;

CREATE DATABASE chat;

USE chat;

-- CREATE TABLE messages (
--    Describe your table here.

-- );

/* Create other tables and define schemas for them here! */

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- Primary Storage for messages
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(200),
  `username` VARCHAR(20),
  `roomname` VARCHAR(20),
  PRIMARY KEY (`id`)
) COMMENT 'Primary Storage for messages';

-- ---
-- Foreign Keys
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Messages` (`id`,`text`,`username`,`roomname`) VALUES
-- ('','','','');



/*  Execute this file from the command line by typing:
 *    mysql -u student < server/schema.sql
 *  to create the database and the tables.*/

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- Primary Storage for messages
-- ---

-- DROP TABLE IF EXISTS `Messages`;

-- CREATE TABLE `Messages` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `text` CHAR(200) NOT NULL,
--   `UserID` INTEGER NOT NULL,
--   `RoomID` INTEGER NOT NULL,
--   PRIMARY KEY (`id`)
-- ) COMMENT 'Primary Storage for messages';

-- -- ---
-- -- Table 'Rooms'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `Rooms`;

-- CREATE TABLE `Rooms` (
--   `RoomID` INTEGER NOT NULL AUTO_INCREMENT,
--   `roomname` CHAR(20) NOT NULL,
--   PRIMARY KEY (`RoomID`)
-- );

-- -- ---
-- -- Table 'User'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `User`;

-- CREATE TABLE `User` (
--   `UserID` INTEGER NOT NULL AUTO_INCREMENT,
--   `name` CHAR(20) NOT NULL,
--   PRIMARY KEY (`UserID`)
-- );

-- -- ---
-- -- Foreign Keys
-- -- ---

-- ALTER TABLE `Messages` ADD FOREIGN KEY (UserID) REFERENCES `User` (`UserID`);
-- ALTER TABLE `Messages` ADD FOREIGN KEY (RoomID) REFERENCES `Rooms` (`RoomID`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `User` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Messages` (`id`,`text`,`UserID`,`RoomID`) VALUES
-- ('','','','');
-- INSERT INTO `Rooms` (`RoomID`,`roomname`) VALUES
-- ('','');
-- INSERT INTO `User` (`UserID`,`name`) VALUES
-- ('','');
