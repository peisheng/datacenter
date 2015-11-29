/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : datacenter

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2015-01-04 20:33:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement` (
  `Id` int(11) NOT NULL,
  `AdName` varchar(100) NOT NULL DEFAULT '''''',
  `Code` longtext NOT NULL,
  `Width` int(11) NOT NULL DEFAULT '0',
  `Height` int(11) NOT NULL DEFAULT '0',
  `AdType` int(11) NOT NULL DEFAULT '0',
  `BeginDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `WebsiteId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `AD_TYPE_FK` (`AdType`),
  CONSTRAINT `AD_TYPE_FK` FOREIGN KEY (`AdType`) REFERENCES `advertisement_type` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisement
-- ----------------------------

-- ----------------------------
-- Table structure for advertisement_type
-- ----------------------------
DROP TABLE IF EXISTS `advertisement_type`;
CREATE TABLE `advertisement_type` (
  `Id` int(11) NOT NULL,
  `TypeName` varchar(255) NOT NULL,
  `Descripiton` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisement_type
-- ----------------------------

-- ----------------------------
-- Table structure for advertisement_vistedlog
-- ----------------------------
DROP TABLE IF EXISTS `advertisement_vistedlog`;
CREATE TABLE `advertisement_vistedlog` (
  `Id` bigint(20) NOT NULL,
  `AdvertisementId` int(11) NOT NULL,
  `VistedDate` date NOT NULL,
  `ShowTimes` bigint(20) NOT NULL,
  `ClickTimes` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AD_VISITED_FK` (`AdvertisementId`),
  CONSTRAINT `AD_VISITED_FK` FOREIGN KEY (`AdvertisementId`) REFERENCES `advertisement` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisement_vistedlog
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `ID` bigint(11) NOT NULL,
  `Title` varchar(100) NOT NULL DEFAULT '''''',
  `Description` text NOT NULL,
  `CategoryId` int(11) NOT NULL DEFAULT '0',
  `Author` varchar(20) NOT NULL DEFAULT '''''',
  `PublishedDate` datetime NOT NULL,
  `ArticleSource` varchar(200) NOT NULL DEFAULT '''''',
  `SourceUrl` varchar(512) NOT NULL DEFAULT '''''',
  `IsImageAticle` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `ART_CAT_FK` (`CategoryId`),
  CONSTRAINT `ART_CAT_FK` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', 'tiutle0', 'hellod 0', '20', 'heello fdfd0', '0001-01-01 00:00:00', 'http://www.baidu.com   0', 'sourceURl0', '\0');
INSERT INTO `article` VALUES ('3', 'tiutle1', 'hellod 1', '21', 'heello fdfd1', '0001-01-01 00:00:00', 'http://www.baidu.com   1', 'sourceURl1', '\0');
INSERT INTO `article` VALUES ('4', 'tiutle2', 'hellod 2', '22', 'heello fdfd2', '0001-01-01 00:00:00', 'http://www.baidu.com   2', 'sourceURl2', '\0');
INSERT INTO `article` VALUES ('5', 'tiutle3', 'hellod 3', '23', 'heello fdfd3', '0001-01-01 00:00:00', 'http://www.baidu.com   3', 'sourceURl3', '\0');
INSERT INTO `article` VALUES ('6', 'tiutle4', 'hellod 4', '24', 'heello fdfd4', '0001-01-01 00:00:00', 'http://www.baidu.com   4', 'sourceURl4', '\0');
INSERT INTO `article` VALUES ('7', 'tiutle5', 'hellod 5', '25', 'heello fdfd5', '0001-01-01 00:00:00', 'http://www.baidu.com   5', 'sourceURl5', '\0');
INSERT INTO `article` VALUES ('8', 'tiutle6', 'hellod 6', '26', 'heello fdfd6', '0001-01-01 00:00:00', 'http://www.baidu.com   6', 'sourceURl6', '\0');
INSERT INTO `article` VALUES ('9', 'tiutle7', 'hellod 7', '27', 'heello fdfd7', '0001-01-01 00:00:00', 'http://www.baidu.com   7', 'sourceURl7', '\0');
INSERT INTO `article` VALUES ('10', 'tiutle8', 'hellod 8', '28', 'heello fdfd8', '0001-01-01 00:00:00', 'http://www.baidu.com   8', 'sourceURl8', '\0');
INSERT INTO `article` VALUES ('11', 'tiutle9', 'hellod 9', '29', 'heello fdfd9', '0001-01-01 00:00:00', 'http://www.baidu.com   9', 'sourceURl9', '\0');
INSERT INTO `article` VALUES ('12', 'tiutle10', 'hellod 10', '30', 'heello fdfd10', '0001-01-01 00:00:00', 'http://www.baidu.com   10', 'sourceURl10', '\0');
INSERT INTO `article` VALUES ('13', 'tiutle11', 'hellod 11', '31', 'heello fdfd11', '0001-01-01 00:00:00', 'http://www.baidu.com   11', 'sourceURl11', '\0');
INSERT INTO `article` VALUES ('14', 'tiutle12', 'hellod 12', '32', 'heello fdfd12', '0001-01-01 00:00:00', 'http://www.baidu.com   12', 'sourceURl12', '\0');
INSERT INTO `article` VALUES ('15', 'tiutle13', 'hellod 13', '33', 'heello fdfd13', '0001-01-01 00:00:00', 'http://www.baidu.com   13', 'sourceURl13', '\0');
INSERT INTO `article` VALUES ('16', 'tiutle14', 'hellod 14', '34', 'heello fdfd14', '0001-01-01 00:00:00', 'http://www.baidu.com   14', 'sourceURl14', '\0');
INSERT INTO `article` VALUES ('17', 'tiutle15', 'hellod 15', '35', 'heello fdfd15', '0001-01-01 00:00:00', 'http://www.baidu.com   15', 'sourceURl15', '\0');
INSERT INTO `article` VALUES ('18', 'tiutle16', 'hellod 16', '36', 'heello fdfd16', '0001-01-01 00:00:00', 'http://www.baidu.com   16', 'sourceURl16', '\0');
INSERT INTO `article` VALUES ('19', 'tiutle17', 'hellod 17', '37', 'heello fdfd17', '0001-01-01 00:00:00', 'http://www.baidu.com   17', 'sourceURl17', '\0');
INSERT INTO `article` VALUES ('20', 'tiutle18', 'hellod 18', '38', 'heello fdfd18', '0001-01-01 00:00:00', 'http://www.baidu.com   18', 'sourceURl18', '\0');
INSERT INTO `article` VALUES ('21', 'tiutle19', 'hellod 19', '39', 'heello fdfd19', '0001-01-01 00:00:00', 'http://www.baidu.com   19', 'sourceURl19', '\0');

-- ----------------------------
-- Table structure for article_contents
-- ----------------------------
DROP TABLE IF EXISTS `article_contents`;
CREATE TABLE `article_contents` (
  `ID` bigint(20) NOT NULL,
  `ArticleID` bigint(20) NOT NULL,
  `ArticleContent` longtext NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ART_CONTENT_FK` (`ArticleID`),
  CONSTRAINT `ART_CONTENT_FK` FOREIGN KEY (`ArticleID`) REFERENCES `article` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_contents
-- ----------------------------

-- ----------------------------
-- Table structure for article_images
-- ----------------------------
DROP TABLE IF EXISTS `article_images`;
CREATE TABLE `article_images` (
  `Id` bigint(20) NOT NULL,
  `ArticleId` bigint(20) NOT NULL,
  `ImagePath` varchar(500) NOT NULL,
  `Width` smallint(6) NOT NULL,
  `Heigth` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Art_IMAGE_FK` (`ArticleId`),
  CONSTRAINT `Art_IMAGE_FK` FOREIGN KEY (`ArticleId`) REFERENCES `article` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_images
-- ----------------------------

-- ----------------------------
-- Table structure for article_keyword
-- ----------------------------
DROP TABLE IF EXISTS `article_keyword`;
CREATE TABLE `article_keyword` (
  `Id` bigint(20) NOT NULL,
  `ArticleId` bigint(20) NOT NULL,
  `KeyWordId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ArticleId` (`ArticleId`),
  KEY `KeyWordId` (`KeyWordId`),
  CONSTRAINT `article_keyword_ibfk_1` FOREIGN KEY (`ArticleId`) REFERENCES `article` (`ID`),
  CONSTRAINT `article_keyword_ibfk_2` FOREIGN KEY (`KeyWordId`) REFERENCES `keywords` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for article_website
-- ----------------------------
DROP TABLE IF EXISTS `article_website`;
CREATE TABLE `article_website` (
  `ID` bigint(20) NOT NULL,
  `ArticleId` bigint(20) NOT NULL DEFAULT '0',
  `WebsiteId` int(11) NOT NULL DEFAULT '0',
  `IsPublished` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `article_website_Fk` (`ArticleId`),
  KEY `article_website_site_FK` (`WebsiteId`),
  CONSTRAINT `article_website_Fk` FOREIGN KEY (`ArticleId`) REFERENCES `article` (`ID`),
  CONSTRAINT `article_website_site_FK` FOREIGN KEY (`WebsiteId`) REFERENCES `website` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_website
-- ----------------------------

-- ----------------------------
-- Table structure for base_action
-- ----------------------------
DROP TABLE IF EXISTS `base_action`;
CREATE TABLE `base_action` (
  `Id` int(11) NOT NULL,
  `ActionName` varchar(50) NOT NULL DEFAULT '''''',
  `ActionUrl` varchar(200) NOT NULL DEFAULT '''''',
  `CreateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_action
-- ----------------------------

-- ----------------------------
-- Table structure for base_role
-- ----------------------------
DROP TABLE IF EXISTS `base_role`;
CREATE TABLE `base_role` (
  `Id` int(11) NOT NULL,
  `RoleName` varchar(50) NOT NULL DEFAULT '''''',
  `RoleValue` int(11) NOT NULL DEFAULT '0',
  `CreateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role
-- ----------------------------

-- ----------------------------
-- Table structure for base_role_action
-- ----------------------------
DROP TABLE IF EXISTS `base_role_action`;
CREATE TABLE `base_role_action` (
  `Id` int(11) NOT NULL,
  `ActionId` int(11) NOT NULL DEFAULT '0',
  `RoleId` int(11) NOT NULL DEFAULT '0',
  `CreateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `ActionId` (`ActionId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `base_role_action_ibfk_1` FOREIGN KEY (`ActionId`) REFERENCES `base_action` (`Id`),
  CONSTRAINT `base_role_action_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `base_role` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role_action
-- ----------------------------

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `Id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL DEFAULT '''''',
  `Password` varchar(50) NOT NULL DEFAULT '''''',
  `Email` varchar(50) NOT NULL DEFAULT '''''',
  `Mobile` varchar(20) NOT NULL DEFAULT '''''',
  `LastLoginTime` datetime NOT NULL,
  `CreateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user
-- ----------------------------

-- ----------------------------
-- Table structure for base_user_role
-- ----------------------------
DROP TABLE IF EXISTS `base_user_role`;
CREATE TABLE `base_user_role` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL DEFAULT '0',
  `RoleId` int(11) NOT NULL DEFAULT '0',
  `CreateDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `UserId` (`UserId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `base_user_role_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `base_user` (`Id`),
  CONSTRAINT `base_user_role_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `base_role` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `CateName` varchar(30) NOT NULL DEFAULT '''''',
  `Description` varchar(200) NOT NULL DEFAULT '''''',
  `PingYin` varchar(255) NOT NULL,
  `IsEnabled` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('2', 'Cate0', 'CateDesc0', 'PingYin', '\0');
INSERT INTO `category` VALUES ('20', 'Cate0', 'CateDesc0', 'PingYin', '\0');
INSERT INTO `category` VALUES ('21', 'Cate1', 'CateDesc1', 'PingYin', '\0');
INSERT INTO `category` VALUES ('22', 'Cate2', 'CateDesc2', 'PingYin', '\0');
INSERT INTO `category` VALUES ('23', 'Cate3', 'CateDesc3', 'PingYin', '\0');
INSERT INTO `category` VALUES ('24', 'Cate4', 'CateDesc4', 'PingYin', '\0');
INSERT INTO `category` VALUES ('25', 'Cate5', 'CateDesc5', 'PingYin', '\0');
INSERT INTO `category` VALUES ('26', 'Cate6', 'CateDesc6', 'PingYin', '\0');
INSERT INTO `category` VALUES ('27', 'Cate7', 'CateDesc7', 'PingYin', '\0');
INSERT INTO `category` VALUES ('28', 'Cate8', 'CateDesc8', 'PingYin', '\0');
INSERT INTO `category` VALUES ('29', 'Cate9', 'CateDesc9', 'PingYin', '\0');
INSERT INTO `category` VALUES ('30', 'Cate10', 'CateDesc10', 'PingYin', '\0');
INSERT INTO `category` VALUES ('31', 'Cate11', 'CateDesc11', 'PingYin', '\0');
INSERT INTO `category` VALUES ('32', 'Cate12', 'CateDesc12', 'PingYin', '\0');
INSERT INTO `category` VALUES ('33', 'Cate13', 'CateDesc13', 'PingYin', '\0');
INSERT INTO `category` VALUES ('34', 'Cate14', 'CateDesc14', 'PingYin', '\0');
INSERT INTO `category` VALUES ('35', 'Cate15', 'CateDesc15', 'PingYin', '\0');
INSERT INTO `category` VALUES ('36', 'Cate16', 'CateDesc16', 'PingYin', '\0');
INSERT INTO `category` VALUES ('37', 'Cate17', 'CateDesc17', 'PingYin', '\0');
INSERT INTO `category` VALUES ('38', 'Cate18', 'CateDesc18', 'PingYin', '\0');
INSERT INTO `category` VALUES ('39', 'Cate19', 'CateDesc19', 'PingYin', '\0');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Id` bigint(11) NOT NULL,
  `ArticleId` bigint(11) NOT NULL DEFAULT '0',
  `CommentContent` text NOT NULL,
  `WebsiteId` int(11) NOT NULL DEFAULT '0',
  `CommentTime` datetime NOT NULL,
  `IpAddress` varchar(50) NOT NULL DEFAULT '''''',
  `IsPublish` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `ArticleId` (`ArticleId`),
  KEY `WebsiteId` (`WebsiteId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ArticleId`) REFERENCES `article` (`ID`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`WebsiteId`) REFERENCES `website` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for keywords
-- ----------------------------
DROP TABLE IF EXISTS `keywords`;
CREATE TABLE `keywords` (
  `Id` bigint(20) NOT NULL,
  `Keyword` varchar(255) NOT NULL,
  `CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keywords
-- ----------------------------

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(50) NOT NULL,
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('advertisement', '0');
INSERT INTO `sequence` VALUES ('advertisement_type', '0');
INSERT INTO `sequence` VALUES ('advertisement_vistedlog', '0');
INSERT INTO `sequence` VALUES ('article', '21');
INSERT INTO `sequence` VALUES ('article_contents', '0');
INSERT INTO `sequence` VALUES ('article_images', '0');
INSERT INTO `sequence` VALUES ('article_keyword', '0');
INSERT INTO `sequence` VALUES ('article_website', '0');
INSERT INTO `sequence` VALUES ('base_action', '0');
INSERT INTO `sequence` VALUES ('base_role', '0');
INSERT INTO `sequence` VALUES ('base_role_action', '0');
INSERT INTO `sequence` VALUES ('base_user', '0');
INSERT INTO `sequence` VALUES ('base_user_role', '0');
INSERT INTO `sequence` VALUES ('category', '39');
INSERT INTO `sequence` VALUES ('comment', '0');
INSERT INTO `sequence` VALUES ('keywords', '0');
INSERT INTO `sequence` VALUES ('new_business', '6');
INSERT INTO `sequence` VALUES ('spider_content', '0');
INSERT INTO `sequence` VALUES ('spider_keyword', '0');
INSERT INTO `sequence` VALUES ('spider_link', '0');
INSERT INTO `sequence` VALUES ('visited_log', '0');
INSERT INTO `sequence` VALUES ('website', '0');
INSERT INTO `sequence` VALUES ('website_category', '0');
INSERT INTO `sequence` VALUES ('website_setting', '0');

-- ----------------------------
-- Table structure for spider_content
-- ----------------------------
DROP TABLE IF EXISTS `spider_content`;
CREATE TABLE `spider_content` (
  `Id` bigint(11) NOT NULL,
  `Title` varchar(100) NOT NULL DEFAULT '''''',
  `Description` text NOT NULL,
  `HtmlContent` longtext NOT NULL,
  `TextContent` longtext NOT NULL,
  `SourceUrl` varchar(200) NOT NULL DEFAULT '''''',
  `ExpiredDate` datetime NOT NULL,
  `CategoryId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_content
-- ----------------------------

-- ----------------------------
-- Table structure for spider_keyword
-- ----------------------------
DROP TABLE IF EXISTS `spider_keyword`;
CREATE TABLE `spider_keyword` (
  `Id` bigint(20) NOT NULL,
  `KeyWord` varchar(200) NOT NULL DEFAULT '''''',
  `CreateDate` datetime NOT NULL,
  `IsCatched` bit(1) NOT NULL DEFAULT b'0',
  `IsExpired` bit(1) NOT NULL DEFAULT b'0',
  `ExpiredDate` datetime NOT NULL,
  `CategoryId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for spider_link
-- ----------------------------
DROP TABLE IF EXISTS `spider_link`;
CREATE TABLE `spider_link` (
  `Id` bigint(11) NOT NULL,
  `LinkUrl` varchar(200) NOT NULL DEFAULT '''''',
  `IsCatched` bit(1) NOT NULL DEFAULT b'0',
  `CategoryId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_link
-- ----------------------------

-- ----------------------------
-- Table structure for visited_log
-- ----------------------------
DROP TABLE IF EXISTS `visited_log`;
CREATE TABLE `visited_log` (
  `ID` bigint(20) NOT NULL,
  `WebSiteId` int(11) NOT NULL,
  `PageUrl` varchar(600) NOT NULL,
  `VisitedDate` datetime NOT NULL,
  `UserName` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `WebSiteId` (`WebSiteId`),
  CONSTRAINT `visited_log_ibfk_1` FOREIGN KEY (`WebSiteId`) REFERENCES `website` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visited_log
-- ----------------------------

-- ----------------------------
-- Table structure for website
-- ----------------------------
DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL DEFAULT '''''',
  `SiteNameCn` varchar(30) NOT NULL DEFAULT '''''',
  `SiteNameEn` varchar(30) NOT NULL DEFAULT '''''',
  `SiteUrl` varchar(50) NOT NULL DEFAULT '''''',
  `CreateTime` datetime NOT NULL,
  `UpdateTime` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of website
-- ----------------------------

-- ----------------------------
-- Table structure for website_category
-- ----------------------------
DROP TABLE IF EXISTS `website_category`;
CREATE TABLE `website_category` (
  `Id` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL DEFAULT '0',
  `WebsiteId` int(11) NOT NULL DEFAULT '0',
  `MappingName` varchar(50) NOT NULL DEFAULT '''''',
  `Ispublished` bit(1) NOT NULL,
  `OrderNum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `CategoryId` (`CategoryId`),
  KEY `WebsiteId` (`WebsiteId`),
  CONSTRAINT `website_category_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`),
  CONSTRAINT `website_category_ibfk_2` FOREIGN KEY (`WebsiteId`) REFERENCES `website` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of website_category
-- ----------------------------

-- ----------------------------
-- Table structure for website_setting
-- ----------------------------
DROP TABLE IF EXISTS `website_setting`;
CREATE TABLE `website_setting` (
  `Id` int(11) NOT NULL,
  `ParentId` int(11) NOT NULL DEFAULT '0',
  `SettingGroupName` varchar(30) NOT NULL DEFAULT '''''',
  `SettingKey` varchar(100) NOT NULL DEFAULT '''''',
  `SettingValue` varchar(800) NOT NULL,
  `Description` varchar(200) NOT NULL DEFAULT '''''',
  `CreateTime` datetime NOT NULL,
  `WebsiteId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `WebsiteId` (`WebsiteId`),
  CONSTRAINT `website_setting_ibfk_1` FOREIGN KEY (`WebsiteId`) REFERENCES `website` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of website_setting
-- ----------------------------
