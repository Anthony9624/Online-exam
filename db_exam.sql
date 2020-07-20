/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50559
Source Host           : localhost:3306
Source Database       : db_exam

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2020-06-23 20:51:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_lesson
-- ----------------------------
DROP TABLE IF EXISTS `tb_lesson`;
CREATE TABLE `tb_lesson` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  `JoinTime` datetime DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_lesson
-- ----------------------------
INSERT INTO `tb_lesson` VALUES ('4', '数学', '2020-06-20 09:42:22', '计算机科学与技术');
INSERT INTO `tb_lesson` VALUES ('5', '语文', '2020-06-20 09:42:40', '古代汉语言文学');
INSERT INTO `tb_lesson` VALUES ('6', 'jsp课程设计', '2020-06-20 09:43:12', '计算机科学与技术');
INSERT INTO `tb_lesson` VALUES ('7', '电机控制', '2020-06-20 09:44:32', '自动化');
INSERT INTO `tb_lesson` VALUES ('8', '过程计算机控制系统', '2020-06-20 09:48:15', '自动化');
INSERT INTO `tb_lesson` VALUES ('10', 'java编程', '2020-06-22 19:00:14', '计算机科学与技术');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for tb_questions
-- ----------------------------
DROP TABLE IF EXISTS `tb_questions`;
CREATE TABLE `tb_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) DEFAULT NULL,
  `type` char(6) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  `lessonId` int(11) DEFAULT NULL,
  `taoTiId` int(11) DEFAULT NULL,
  `optionA` varchar(50) DEFAULT NULL,
  `optionB` varchar(50) DEFAULT NULL,
  `optionC` varchar(50) DEFAULT NULL,
  `optionD` varchar(50) DEFAULT NULL,
  `answer` varchar(10) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_questions
-- ----------------------------
INSERT INTO `tb_questions` VALUES ('1', '请问下列数那个大于0？', '单选题', '2020-06-20 09:52:08', '4', '1', '0', '-1', '-2', '4', 'D', null);
INSERT INTO `tb_questions` VALUES ('2', '请问2+2等于几？', '单选题', '2020-06-20 10:08:53', '4', '1', '0', '4', '6', '8', 'B', null);
INSERT INTO `tb_questions` VALUES ('3', '请问10*20等于多少？', '单选题', '2020-06-20 10:09:48', '4', '1', '200', '400', '20', '10', 'A', null);
INSERT INTO `tb_questions` VALUES ('4', '请问下列那些数是偶数？', '多选题', '2020-06-20 10:11:32', '4', '1', '0', '1', '2', '4', 'CD', null);
INSERT INTO `tb_questions` VALUES ('5', '请问下列哪些是数学家', '单选题', '2020-06-20 10:14:51', '4', '1', '李白', '杜甫', '华罗庚', '孙悟空', 'C', null);
INSERT INTO `tb_questions` VALUES ('6', '下列数字可以被5整除的是', '多选题', '2020-06-20 10:16:00', '4', '1', '10', '20', '3', '6', 'AB', null);
INSERT INTO `tb_questions` VALUES ('7', 'jsp课程设计属于哪个专业', '单选题', '2020-06-22 17:57:18', '6', '3', '语文', '数学', '计算机科学与技术', '英语', 'C', null);
INSERT INTO `tb_questions` VALUES ('8', '下列选项不属于编程语言的是？', '单选题', '2020-06-22 17:59:21', '6', '3', 'html', 'java', 'php', '英语', 'D', null);
INSERT INTO `tb_questions` VALUES ('9', '下列编程语言那些设计jsp课程设计需要用到的', '多选题', '2020-06-22 18:02:26', '6', '3', 'html', 'css', 'java', 'mysql', 'ABCD', null);
INSERT INTO `tb_questions` VALUES ('10', '请问jsp课程设计是那个年级设立的科目', '单选题', '2020-06-22 19:02:40', '6', '3', '大一', '大二', '大四', '大三', 'D', null);

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `ID` varchar(16) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `cardNo` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('CN20200620000001', '张千鑫', '123456', '男', '2020-06-20 10:30:18', '我的生日', '1221', '计算机科学与技术', '210281199902063015');
INSERT INTO `tb_student` VALUES ('CN20200622000004', '派大鑫', '123456', '女', '2020-06-22 18:03:42', '我的生日', '1221', '计算机科学与技术', '123456789741852963');
INSERT INTO `tb_student` VALUES ('CN20200622000005', '朱小明', '123456', '女', '2020-06-22 18:55:56', '我的生日是几号', '0206', '计算机科学与技术', '789456123147852963');

-- ----------------------------
-- Table structure for tb_sturesult
-- ----------------------------
DROP TABLE IF EXISTS `tb_sturesult`;
CREATE TABLE `tb_sturesult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` varchar(16) DEFAULT NULL,
  `whichLesson` varchar(60) DEFAULT NULL,
  `resSingle` int(11) DEFAULT NULL,
  `resMore` int(11) DEFAULT NULL,
  `resTotal` int(11) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sturesult
-- ----------------------------
INSERT INTO `tb_sturesult` VALUES ('1', 'CN20200620000001', '2020年期末高等数学考试', '60', '40', '100', '2020-06-20 10:33:21');
INSERT INTO `tb_sturesult` VALUES ('2', 'CN20200621000002', '2020年期末高等数学考试', '60', '40', '100', '2020-06-21 09:20:51');
INSERT INTO `tb_sturesult` VALUES ('3', 'CN20200621000003', '2020年期末高等数学考试', '60', '40', '100', '2020-06-21 16:00:07');
INSERT INTO `tb_sturesult` VALUES ('5', 'CN20200622000004', '2020年期末高等数学考试', '60', '40', '100', '2020-06-22 18:10:35');
INSERT INTO `tb_sturesult` VALUES ('6', 'CN20200622000006', '2020年期末高等数学考试', '60', '40', '100', '2020-06-22 18:50:33');
INSERT INTO `tb_sturesult` VALUES ('7', 'CN20200622000005', '2020年期末高等数学考试', '60', '20', '80', '2020-06-22 18:58:13');
INSERT INTO `tb_sturesult` VALUES ('8', 'CN20200622000005', '2020年jsp课程设计详情', '60', '40', '100', '2020-06-22 19:04:15');

-- ----------------------------
-- Table structure for tb_taoti
-- ----------------------------
DROP TABLE IF EXISTS `tb_taoti`;
CREATE TABLE `tb_taoti` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `LessonID` int(11) DEFAULT NULL,
  `JoinTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_lesson_taoti_LessonID` (`LessonID`),
  CONSTRAINT `fk_lesson_taoti_LessonID` FOREIGN KEY (`LessonID`) REFERENCES `tb_lesson` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_taoti
-- ----------------------------
INSERT INTO `tb_taoti` VALUES ('1', '2020年期末高等数学考试', '4', '2020-06-20 09:49:36');
INSERT INTO `tb_taoti` VALUES ('2', '2020年高等语文考试', '5', '2020-06-20 09:49:58');
INSERT INTO `tb_taoti` VALUES ('3', '2020年jsp课程设计详情', '6', '2020-06-22 17:53:52');
INSERT INTO `tb_taoti` VALUES ('4', '2020年java编程期末考试', '10', '2020-06-22 19:01:03');
