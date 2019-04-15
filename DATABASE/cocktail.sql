/*
MySQL Data Transfer
Source Host: localhost
Source Database: cocktail
Target Host: localhost
Target Database: cocktail
Date: 12/8/2016 5:51:28 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `userid` varchar(50) NOT NULL,
  `str` varchar(45) NOT NULL,
  `end` varchar(45) NOT NULL,
  `intr` varchar(105) NOT NULL,
  `dot` varchar(45) NOT NULL,
  `dy` varchar(45) NOT NULL,
  `nop` varchar(45) NOT NULL,
  `status_` varchar(45) NOT NULL,
  `tcost` varchar(45) NOT NULL,
  `key_` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for regpage
-- ----------------------------
DROP TABLE IF EXISTS `regpage`;
CREATE TABLE `regpage` (
  `name` varchar(45) NOT NULL default '',
  `userid` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  `mail` varchar(45) NOT NULL default '',
  `age` varchar(45) NOT NULL default '',
  `loc` varchar(45) NOT NULL default '',
  `sex` varchar(45) NOT NULL default '',
  `time_` datetime NOT NULL default '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `plan` VALUES ('nandu', 'coorg', 'bangalore', 'temple', '15/12/2016', '5', '5', 'CONFIRMED', '15000', '79839');
INSERT INTO `regpage` VALUES ('nandu', 'nandu', '123456', 'nanduigeeks2010@gmail.com', '05/05/1982', 'bangalore', 'Male', '2016-12-08 17:41:21');
