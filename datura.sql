/*
Navicat MySQL Data Transfer

Source Server         : mySql
Source Server Version : 50172
Source Host           : localhost:3306
Source Database       : datura

Target Server Type    : MYSQL
Target Server Version : 50172
File Encoding         : 65001

Date: 2017-04-12 11:34:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '习近平会见林郑月娥：希望你不负重托', '近平对林郑月娥当选并被任命为香港特别行政区第五任行政长官表示祝贺。习近平说，你在政府工作36年，特别是香港回归后在特别行政区政府担任多个重要职务，爱国爱港立场坚定，勤勉务实，敢于担当，行政经验丰富，具有驾驭复杂局面的能力，在香港社会认可度一直很高，对国家和香港有心、有力、有承担，符合中央对行政长官的一贯标准。你成功当选实至名归。', '2017-04-12 11:15:03');
INSERT INTO `news` VALUES ('2', '李克强坦诚回应美议员“重磅”问题', '这表现出美国国会对中美关系的重视，也希望各位在推动中美关系健康稳定发展方面发挥积极作用。”李克强开门见说。', '2017-04-12 11:15:09');
INSERT INTO `news` VALUES ('3', '达康书记想不火都难 一个水杯都是戏路满满', '吴刚最早并不太愿意接演李达康，第一个理由很简单，“咱没见过市委书记啊，都是我认识人家，人家不认识我”。第二个理由是，拍官场戏很怕费力不讨好。', '2017-04-12 11:15:12');
INSERT INTO `news` VALUES ('4', '白宫回应美联航暴力逐客:特朗普已看到视频', '美联航发言人当天承认，事发航班实际并未超售机票，强迫乘客下机只为安排公司机务人员。\r\n\r\n　　斯派塞说：“我认为任何看到视频的人，对一个人遭到那样方式的对待，都不会无动于衷。”', '2017-04-12 11:15:15');
INSERT INTO `news` VALUES ('5', '国台办回应李明哲妻子台胞证被注销', '国台办今天举行例行新闻发布会，台湾中天电视台记者提问，关于李明哲案的情况，李太太转交的药品，海协会是不是收到了？如果收到的话，有没有转交给李明哲？李明哲的身体状况怎么样，他是不是关押在广东？李太太希望能够来大陆探视，但是她上飞机之前发现她的台胞证被注销。想问一下她台胞证注销的原因是什么？', '2017-04-12 11:15:19');
INSERT INTO `news` VALUES ('6', '中纪委100天打落7只虎 河北5虎属同一届常委', '周日（4月9号），中国保监会主席项俊波落马。观海解局（微信ID：guanhaijieju）记者梳理发现，截止当时今年98天里，中纪委新打了6只大老虎。\r\n\r\n　　话音未落，在今天，也就是2017年第100天，强大的中纪委再接再厉，宣布河北人大常委会党组书记、副主任杨崇勇涉嫌严重违纪接受审查，终于打落了第7只新老虎。', '2017-04-12 11:33:42');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `desc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'green', '123456', '格林先生');
INSERT INTO `user` VALUES ('2', 'datura', '654321', '曼陀罗');
