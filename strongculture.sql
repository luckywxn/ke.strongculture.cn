/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : strongculture

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-06-04 23:03:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `strongculture_system_attach`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_attach`;
CREATE TABLE `strongculture_system_attach` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(255) NOT NULL COMMENT '附件名称',
  `path` varchar(255) NOT NULL COMMENT '附件路径',
  `type` varchar(20) NOT NULL COMMENT '附件文件类型',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL COMMENT '对应模块',
  `action` varchar(50) NOT NULL COMMENT '对应操作',
  `doc_sysno` bigint(20) NOT NULL DEFAULT '0' COMMENT '对应的模块id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号：不需要的不用管这字段',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统-附件表';

-- ----------------------------
-- Records of strongculture_system_attach
-- ----------------------------

-- ----------------------------
-- Table structure for `strongculture_system_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_privilege`;
CREATE TABLE `strongculture_system_privilege` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `privilegeno` varchar(20) NOT NULL COMMENT '权限编号',
  `privilegename` varchar(50) NOT NULL COMMENT '权限名称',
  `privilegedesc` varchar(255) DEFAULT NULL,
  `privilegeresource` varchar(255) DEFAULT NULL COMMENT '权限资源',
  `parent_sysno` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属上级主键，没有为0',
  `parentsysnotype` tinyint(1) NOT NULL DEFAULT '1' COMMENT '权限类型：1菜单2显示权限3操作权限',
  `menuorder` int(11) NOT NULL DEFAULT '1' COMMENT '数字越大越靠前',
  `privilegecontroller` varchar(50) NOT NULL COMMENT '用来权限判断controller',
  `privilegeaction` varchar(50) NOT NULL COMMENT '用来判断模块权限action',
  `needcheck` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否需要验证权限 0  否 1 是',
  `parentsysnoicon` varchar(255) DEFAULT NULL COMMENT '权限图标',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号：不需要的不用管这字段',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COMMENT='系统-权限信息表';

-- ----------------------------
-- Records of strongculture_system_privilege
-- ----------------------------
INSERT INTO `strongculture_system_privilege` VALUES ('1', 'A0001', '国学教育', '', '', '0', '1', '6', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2017-02-26 11:01:01');
INSERT INTO `strongculture_system_privilege` VALUES ('2', 'A0002', '小学教育', '', '', '0', '1', '5', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2016-12-31 20:52:16');
INSERT INTO `strongculture_system_privilege` VALUES ('3', 'A0003', '初中教育', '', '', '0', '1', '4', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2016-12-31 20:52:24');
INSERT INTO `strongculture_system_privilege` VALUES ('4', 'A0004', '高中教育', '', '', '0', '1', '3', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2016-12-31 20:52:31');
INSERT INTO `strongculture_system_privilege` VALUES ('5', 'A0005', '大学教育', '', '', '0', '1', '2', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2016-12-31 20:52:35');
INSERT INTO `strongculture_system_privilege` VALUES ('6', 'A0006', '社会教育', '', '', '0', '1', '1', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2016-12-31 20:51:21');
INSERT INTO `strongculture_system_privilege` VALUES ('7', 'A0000', '系统管理', '', '', '0', '1', '-1', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2017-04-21 15:04:35');
INSERT INTO `strongculture_system_privilege` VALUES ('8', 'A0000-0001', '权限树', '', '/system/privilegetree', '7', '1', '3', '', '', '1', '', '1', '0', '1', '0000-00-00 00:00:00', '2017-02-26 21:34:39');
INSERT INTO `strongculture_system_privilege` VALUES ('9', 'A0000-0002', '会员级别', '', '/system/rolelist', '7', '1', '2', '', 'rolelist', '1', '', '1', '0', '1', '2016-12-31 20:44:15', '2017-06-02 22:23:28');
INSERT INTO `strongculture_system_privilege` VALUES ('10', 'A0001-0005', '弟子规', '', 'SinologyEdu/Sinologylist/subject/Disciple', '1', '1', '94', '', 'Sinologylist', '1', '', '1', '0', '1', '2016-12-31 20:55:14', '2017-02-26 19:32:24');
INSERT INTO `strongculture_system_privilege` VALUES ('11', 'A0002-0001', '一年级', '', '', '2', '1', '6', '', '', '1', '', '1', '0', '1', '2016-12-31 20:56:02', '2016-12-31 21:49:32');
INSERT INTO `strongculture_system_privilege` VALUES ('12', 'A0003-0001', '初一（上）', '', '', '3', '1', '6', '', '', '1', '', '1', '0', '1', '2016-12-31 20:56:28', '2017-01-04 20:07:14');
INSERT INTO `strongculture_system_privilege` VALUES ('13', 'A0004-0001', '高一（上）', '', '', '4', '1', '6', '', '', '1', '', '1', '0', '1', '2016-12-31 20:57:08', '2017-01-04 21:36:36');
INSERT INTO `strongculture_system_privilege` VALUES ('14', 'A0005-0001', '大一', '', '', '5', '1', '4', '', '', '1', '', '1', '0', '1', '2016-12-31 20:57:28', '2016-12-31 21:52:00');
INSERT INTO `strongculture_system_privilege` VALUES ('15', 'A0006-0001', '市场倍增学', '', '', '6', '1', '3', '', '', '1', '', '1', '0', '1', '2016-12-31 20:58:00', '2016-12-31 21:52:30');
INSERT INTO `strongculture_system_privilege` VALUES ('16', 'A0001-0006', '增广贤文', '', 'SinologyEdu/Sinologylist/subject/Augmented', '1', '1', '93', '', 'Sinologylist', '1', '', '1', '0', '1', '2016-12-31 21:33:38', '2017-02-26 19:34:47');
INSERT INTO `strongculture_system_privilege` VALUES ('17', 'A0002-0002', '二年级', '', '', '2', '1', '5', '', '', '1', '', '1', '0', '1', '2016-12-31 21:34:06', '2016-12-31 21:49:38');
INSERT INTO `strongculture_system_privilege` VALUES ('18', 'A0006-0002', '人际关系学', '', '', '6', '1', '2', '', '', '1', '', '1', '0', '1', '2016-12-31 21:35:10', '2016-12-31 21:52:36');
INSERT INTO `strongculture_system_privilege` VALUES ('19', 'A0006-0003', '政治经济学', '', '', '6', '1', '1', '', '', '1', '', '1', '0', '1', '2016-12-31 21:37:27', '2016-12-31 21:52:48');
INSERT INTO `strongculture_system_privilege` VALUES ('20', 'A0003-0003', '初二（上）', '', '', '3', '1', '4', '', '', '1', '', '1', '0', '1', '2016-12-31 21:40:10', '2017-01-04 20:09:10');
INSERT INTO `strongculture_system_privilege` VALUES ('21', 'A0003-0005', '初三（上）', '', '', '3', '1', '2', '', '', '1', '', '1', '0', '1', '2016-12-31 21:40:25', '2017-01-04 20:09:49');
INSERT INTO `strongculture_system_privilege` VALUES ('22', 'A0004-0003', '高二（上）', '', '', '4', '1', '4', '', '', '1', '', '1', '0', '1', '2016-12-31 21:40:49', '2017-01-04 21:37:00');
INSERT INTO `strongculture_system_privilege` VALUES ('23', 'A0004-0003', '高三（上）', '', '', '4', '1', '2', '', '', '1', '', '1', '0', '1', '2016-12-31 21:41:04', '2017-01-04 21:36:51');
INSERT INTO `strongculture_system_privilege` VALUES ('24', 'A0005-0002', '大二', '', '', '5', '1', '3', '', '', '1', '', '1', '0', '1', '2016-12-31 21:41:24', '2016-12-31 21:52:06');
INSERT INTO `strongculture_system_privilege` VALUES ('25', 'A0005-0003', '大三', '', '', '5', '1', '2', '', '', '1', '', '1', '0', '1', '2016-12-31 21:41:41', '2016-12-31 21:52:11');
INSERT INTO `strongculture_system_privilege` VALUES ('26', 'A0005-0004', '大四', '', '', '5', '1', '1', '', '', '1', '', '1', '0', '1', '2016-12-31 21:42:01', '2016-12-31 21:52:18');
INSERT INTO `strongculture_system_privilege` VALUES ('27', 'A0002-0003', '三年级', '', '', '2', '1', '4', '', '', '1', '', '1', '0', '1', '2016-12-31 21:49:14', '2016-12-31 21:49:14');
INSERT INTO `strongculture_system_privilege` VALUES ('28', 'A0002-0004', '四年级', '', '', '2', '1', '3', '', '', '1', '', '1', '0', '1', '2016-12-31 21:49:58', '2016-12-31 21:49:58');
INSERT INTO `strongculture_system_privilege` VALUES ('29', 'A0002-0005', '五年级', '', '', '2', '1', '2', '', '', '1', '', '1', '0', '1', '2016-12-31 21:50:13', '2016-12-31 21:54:56');
INSERT INTO `strongculture_system_privilege` VALUES ('30', 'A0002-0006', '六年级', '', '', '2', '1', '1', '', '', '1', '', '1', '0', '1', '2016-12-31 21:50:33', '2016-12-31 21:50:33');
INSERT INTO `strongculture_system_privilege` VALUES ('31', 'A0001-0001-0001', '总序', '', '/preschooledu/diziguilist', '10', '1', '99', '', 'diziguilist', '1', '', '1', '1', '1', '2016-12-31 22:49:27', '2016-12-31 22:50:04');
INSERT INTO `strongculture_system_privilege` VALUES ('32', 'A0002-0001-0001', '语文（上）', '', '/primaryschooledu/primaryschooledulist/grade/1.1', '11', '1', '99', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2016-12-31 23:03:48', '2017-01-02 12:34:04');
INSERT INTO `strongculture_system_privilege` VALUES ('33', 'A0002-0001-0002', '数学（上）', '', '/primaryschooledu/primaryschooledulist2/grade/1.3', '11', '1', '98', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2016-12-31 23:04:14', '2017-01-02 12:36:38');
INSERT INTO `strongculture_system_privilege` VALUES ('34', 'A0001-0004', '道德经', '', 'SinologyEdu/Sinologylist/subject/taoteching', '1', '1', '96', '', 'Sinologylist', '1', '', '1', '0', '1', '2016-12-31 23:06:50', '2017-02-26 19:29:36');
INSERT INTO `strongculture_system_privilege` VALUES ('35', 'A0001-0003', '鬼谷子', '', 'SinologyEdu/Sinologylist/subject/guiguzi', '1', '1', '97', '', 'Sinologylist', '1', '', '1', '0', '1', '2016-12-31 23:07:26', '2017-02-26 19:27:09');
INSERT INTO `strongculture_system_privilege` VALUES ('36', 'A0006-0006', '天道', '', '/socialedu/socialedulist/subject/tiandao', '6', '1', '-2', '', 'socialedulist', '1', '', '1', '0', '1', '2017-01-01 00:04:50', '2017-02-26 21:18:24');
INSERT INTO `strongculture_system_privilege` VALUES ('37', 'A0006-0007', '卓有成效的管理者', '', '/socialedu/socialedulist/subject/effectivemanage', '6', '1', '-3', '', 'socialedulist', '1', '', '1', '0', '1', '2017-01-01 00:19:09', '2017-02-26 21:19:15');
INSERT INTO `strongculture_system_privilege` VALUES ('38', 'A0005-0005', '复旦大学', '', '', '5', '1', '-1', '', '', '1', '', '1', '0', '1', '2017-01-01 09:50:26', '2017-01-01 09:50:26');
INSERT INTO `strongculture_system_privilege` VALUES ('39', 'A0005-0005', '陈果老师', '', '/universityedu/fudanmrchenlist', '38', '1', '99', '', 'fudanmrchenlist', '1', '', '1', '0', '1', '2017-01-01 09:51:30', '2017-01-01 09:55:08');
INSERT INTO `strongculture_system_privilege` VALUES ('40', 'A0005-0006', '上海第二工业大学', '', '', '5', '1', '-2', '', '', '1', '', '1', '0', '1', '2017-01-01 09:52:40', '2017-01-01 09:52:40');
INSERT INTO `strongculture_system_privilege` VALUES ('41', 'A0005-0006-0001', '杨冠群老师', '', '/universityedu/universityeduList/subject/MrsYang', '40', '1', '99', '', 'universityeduList', '1', '', '1', '0', '1', '2017-01-01 09:53:50', '2017-02-26 21:30:11');
INSERT INTO `strongculture_system_privilege` VALUES ('42', 'A0006-0001-0001', '市场倍增学', '', '/socialedu/socialedulist/subject/markettheory', '15', '1', '99', '', 'socialedulist', '1', '', '1', '0', '1', '2017-01-01 11:21:46', '2017-02-26 20:54:21');
INSERT INTO `strongculture_system_privilege` VALUES ('43', 'A0006-0003-0001', '李嘉诚语录一', '', '/socialedu/socialedulist/subject/MrsLi1', '19', '1', '99', '', 'socialedulist', '1', '', '1', '0', '1', '2017-01-01 11:45:07', '2017-02-26 21:14:00');
INSERT INTO `strongculture_system_privilege` VALUES ('44', 'A0006-0003-0002', '李嘉诚语录二', '', '/socialedu/socialedulist/subject/MrsLi2', '19', '1', '98', '', 'socialedulist', '1', '', '1', '0', '1', '2017-01-01 12:05:13', '2017-02-26 21:14:25');
INSERT INTO `strongculture_system_privilege` VALUES ('45', 'A0006-0002-0001', '梁凯恩', '', '/socialedu/socialedulist/subject/liangkaien', '18', '1', '99', '', 'socialedulist', '1', '', '1', '0', '1', '2017-01-01 20:04:53', '2017-02-26 21:09:37');
INSERT INTO `strongculture_system_privilege` VALUES ('46', 'A0004-0007-0001', '阿房宫赋', '', '/highschooledu/meiwenlist/subject/efanggong', '195', '1', '99', '', 'meiwenlist', '1', '', '1', '0', '1', '2017-01-01 22:11:05', '2017-02-26 20:23:50');
INSERT INTO `strongculture_system_privilege` VALUES ('47', 'A0002-0001-0003', '语文（下）', '', '/primaryschooledu/primaryschooledulist/grade/1.2', '11', '1', '97', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:39:28', '2017-01-02 12:39:28');
INSERT INTO `strongculture_system_privilege` VALUES ('48', 'A0002-0001-0004', '数学（下）', '', '/primaryschooledu/primaryschooledulist2/grade/1.4', '11', '1', '96', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:41:47', '2017-01-02 12:41:47');
INSERT INTO `strongculture_system_privilege` VALUES ('49', 'A0002-0002-001', '语文（上）', '', '/primaryschooledu/primaryschooledulist/grade/2.1', '17', '1', '99', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:43:15', '2017-01-02 12:43:15');
INSERT INTO `strongculture_system_privilege` VALUES ('50', 'A0002-0002-002', '数学（上）', '', '/primaryschooledu/primaryschooledulist2/grade/2.3', '17', '1', '98', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:44:20', '2017-01-02 12:44:20');
INSERT INTO `strongculture_system_privilege` VALUES ('51', 'A0002-0002-003', '语文（下）', '', '/primaryschooledu/primaryschooledulist/grade/2.2', '17', '1', '97', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:51:04', '2017-01-02 12:51:04');
INSERT INTO `strongculture_system_privilege` VALUES ('52', 'A0002-0002-0004', '数学（下）', '', '/primaryschooledu/primaryschooledulist2/grade/2.4', '17', '1', '96', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:52:06', '2017-01-02 12:52:06');
INSERT INTO `strongculture_system_privilege` VALUES ('53', 'A0002-0003-0001', '语文（上）', '', '/primaryschooledu/primaryschooledulist/grade/3.1', '27', '1', '99', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:53:00', '2017-01-02 12:53:00');
INSERT INTO `strongculture_system_privilege` VALUES ('54', 'A0002-0003-0002', '数学（上）', '', '/primaryschooledu/primaryschooledulist2/grade/3.3', '27', '1', '98', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:53:55', '2017-01-02 12:53:55');
INSERT INTO `strongculture_system_privilege` VALUES ('55', 'A0002-0003-0003', '语文（下）', '', '/primaryschooledu/primaryschooledulist/grade/3.2', '27', '1', '97', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:54:43', '2017-01-02 12:54:43');
INSERT INTO `strongculture_system_privilege` VALUES ('56', 'A0002-0003-0004', '数学（下）', '', '/primaryschooledu/primaryschooledulist2/grade/3.4', '27', '1', '96', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:55:42', '2017-01-02 12:55:42');
INSERT INTO `strongculture_system_privilege` VALUES ('57', 'A0002-0004-0001', '语文（上）', '', '/primaryschooledu/primaryschooledulist/grade/4.1', '28', '1', '99', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:56:35', '2017-01-02 12:56:35');
INSERT INTO `strongculture_system_privilege` VALUES ('58', 'A0002-0004-0002', '数学（上）', '', '/primaryschooledu/primaryschooledulist2/grade/4.3', '28', '1', '98', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:57:21', '2017-01-02 12:57:21');
INSERT INTO `strongculture_system_privilege` VALUES ('59', 'A0002-0004-0003', '语文（下）', '', '/primaryschooledu/primaryschooledulist/grade/4.2', '28', '1', '97', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:58:13', '2017-01-02 12:58:13');
INSERT INTO `strongculture_system_privilege` VALUES ('60', 'A0002-0004-0004', '数学（下）', '', '/primaryschooledu/primaryschooledulist2/grade/4.4', '28', '1', '96', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 12:59:02', '2017-01-02 12:59:02');
INSERT INTO `strongculture_system_privilege` VALUES ('61', 'A0002-0005-0001', '语文（上）', '', '/primaryschooledu/primaryschooledulist/grade/5.1', '29', '1', '99', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 12:59:57', '2017-01-02 12:59:57');
INSERT INTO `strongculture_system_privilege` VALUES ('62', 'A0002-0005-0002', '数学（上）', '', '/primaryschooledu/primaryschooledulist2/grade/5.3', '29', '1', '98', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 13:00:49', '2017-01-02 13:00:49');
INSERT INTO `strongculture_system_privilege` VALUES ('63', 'A0002-0005-0003', '语文（下）', '', '/primaryschooledu/primaryschooledulist/grade/5.2', '29', '1', '97', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 13:01:33', '2017-01-02 13:01:33');
INSERT INTO `strongculture_system_privilege` VALUES ('64', 'A0002-0005-0004', '数学（下）', '', '/primaryschooledu/primaryschooledulist2/grade/5.4', '29', '1', '96', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 13:02:23', '2017-01-02 13:02:23');
INSERT INTO `strongculture_system_privilege` VALUES ('65', 'A0002-0006-0001', '语文（上）', '', '/primaryschooledu/primaryschooledulist/grade/6.1', '30', '1', '99', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 13:03:05', '2017-01-02 13:03:05');
INSERT INTO `strongculture_system_privilege` VALUES ('66', 'A0002-0006-0002', '数学（上）', '', '/primaryschooledu/primaryschooledulist2/grade/6.3', '30', '1', '98', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 13:03:52', '2017-01-02 13:03:52');
INSERT INTO `strongculture_system_privilege` VALUES ('67', 'A0002-0006-0003', '语文（下）', '', '/primaryschooledu/primaryschooledulist/grade/6.2', '30', '1', '97', '', 'primaryschooledulist', '1', '', '1', '0', '1', '2017-01-02 13:04:32', '2017-01-02 13:04:32');
INSERT INTO `strongculture_system_privilege` VALUES ('68', 'A0002-0006-0004', '数学（下）', '', '/primaryschooledu/primaryschooledulist2/grade/6.4', '30', '1', '96', '', 'primaryschooledulist2', '1', '', '1', '0', '1', '2017-01-02 13:05:20', '2017-01-02 13:05:20');
INSERT INTO `strongculture_system_privilege` VALUES ('69', 'A0001-0001', '论语', '', '/preschooledu/analectslist', '1', '1', '99', '', 'analectslist', '1', '', '1', '1', '1', '2017-01-02 21:23:30', '2017-01-02 21:23:30');
INSERT INTO `strongculture_system_privilege` VALUES ('70', 'A0003-0001-0001', '初一语文（上）', '', '/middleschooledu/middleschoollist/grade/1.1.1', '12', '1', '99', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-03 21:12:25', '2017-01-04 19:56:47');
INSERT INTO `strongculture_system_privilege` VALUES ('71', 'A0003-0001-0002', '初一数学（上）', '', '/middleschooledu/middleschoollist/grade/1.1.2', '12', '1', '98', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-03 21:27:59', '2017-01-04 21:09:06');
INSERT INTO `strongculture_system_privilege` VALUES ('72', 'A0003-0001-0003', '初一英语（上）', '', '/middleschooledu/middleschoollist/grade/1.1.3', '12', '1', '97', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 19:59:23', '2017-01-04 21:09:17');
INSERT INTO `strongculture_system_privilege` VALUES ('73', 'A0003-0001-0004', '初一物理（上）', '', '/middleschooledu/middleschoollist/grade/1.1.4', '12', '1', '96', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:00:12', '2017-01-04 21:09:27');
INSERT INTO `strongculture_system_privilege` VALUES ('74', 'A0003-0001-0005', '初一化学（上）', '', '/middleschooledu/middleschoollist/grade/1.1.5', '12', '1', '95', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:01:09', '2017-01-04 21:09:41');
INSERT INTO `strongculture_system_privilege` VALUES ('75', 'A0003-0001-0006', '初一生物（上）', '', '/middleschooledu/middleschoollist/grade/1.1.6', '12', '1', '94', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:01:54', '2017-01-04 21:09:51');
INSERT INTO `strongculture_system_privilege` VALUES ('76', 'A0003-0001-0007', '初一历史（上）', '', '/middleschooledu/middleschoollist/grade/1.1.7', '12', '1', '94', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:02:53', '2017-01-04 21:10:00');
INSERT INTO `strongculture_system_privilege` VALUES ('77', 'A0003-0001-0008', '初一政治（上）', '', '/middleschooledu/middleschoollist/grade/1.1.8', '12', '1', '93', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:03:43', '2017-01-04 21:10:09');
INSERT INTO `strongculture_system_privilege` VALUES ('78', 'A0003-0001-0009', '初一地理（上）', '', '/middleschooledu/middleschoollist/grade/1.1.9', '12', '1', '92', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:04:21', '2017-01-04 21:10:17');
INSERT INTO `strongculture_system_privilege` VALUES ('79', 'A0003-0002', '初一（下）', '', '', '3', '1', '5', '', '', '1', '', '1', '0', '1', '2017-01-04 20:08:46', '2017-01-04 20:08:46');
INSERT INTO `strongculture_system_privilege` VALUES ('80', 'A0003-0004', '初二（下）', '', '', '3', '1', '3', '', '', '1', '', '1', '0', '1', '2017-01-04 20:10:26', '2017-01-04 20:10:26');
INSERT INTO `strongculture_system_privilege` VALUES ('81', 'A0003-0006', '初三（下）', '', '', '3', '1', '1', '', '', '1', '', '1', '0', '1', '2017-01-04 20:10:48', '2017-01-04 20:10:48');
INSERT INTO `strongculture_system_privilege` VALUES ('82', 'A0003-0002-0001', '初一语文（下）', '', '/middleschooledu/middleschoollist/grade/1.2.1', '79', '1', '99', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:12:29', '2017-01-04 20:32:45');
INSERT INTO `strongculture_system_privilege` VALUES ('83', 'A0003-0002-0002', '初一数学（下）', '', '/middleschooledu/middleschoollist/grade/1.2.2', '79', '1', '8', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:13:50', '2017-01-04 21:17:40');
INSERT INTO `strongculture_system_privilege` VALUES ('84', 'A0003-0002-0003', '初一英语（下）', '', '/middleschooledu/middleschoollist/grade/1.2.3', '79', '1', '7', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:14:41', '2017-01-04 21:17:51');
INSERT INTO `strongculture_system_privilege` VALUES ('85', 'A0003-0002-0004', '初一物理（下）', '', '/middleschooledu/middleschoollist/grade/1.2.4', '79', '1', '7', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:15:43', '2017-01-15 11:42:59');
INSERT INTO `strongculture_system_privilege` VALUES ('86', 'A0003-0002-0005', '初一化学（下）', '', '/middleschooledu/middleschoollist/grade/1.2.5', '79', '1', '4', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:18:11');
INSERT INTO `strongculture_system_privilege` VALUES ('87', 'A0003-0002-0006', '初一生物（下）', '', '/middleschooledu/middleschoollist/grade/1.2.6', '79', '1', '4', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:18:20');
INSERT INTO `strongculture_system_privilege` VALUES ('88', 'A0003-0002-0007', '初一历史（下）', '', '/middleschooledu/middleschoollist/grade/1.2.7', '79', '1', '3', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:18:30');
INSERT INTO `strongculture_system_privilege` VALUES ('89', 'A0003-0002-0008', '初一政治（下）', '', '/middleschooledu/middleschoollist/grade/1.2.8', '79', '1', '2', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:18:40');
INSERT INTO `strongculture_system_privilege` VALUES ('90', 'A0003-0002-0009', '初一地理（下）', '', '/middleschooledu/middleschoollist/grade/1.2.9', '79', '1', '1', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:18:48');
INSERT INTO `strongculture_system_privilege` VALUES ('91', 'A0003-0003-0001', '初二语文（上）', '', '/middleschooledu/middleschoollist/grade/2.1.1', '20', '1', '9', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('92', 'A0003-0003-0002', '初二数学（上）', '', '/middleschooledu/middleschoollist/grade/2.1.2', '20', '1', '8', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('93', 'A0003-0003-0003', '初二英语（上）', '', '/middleschooledu/middleschoollist/grade/2.1.3', '20', '1', '7', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('94', 'A0003-0003-0004', '初二物理（上）', '', '/middleschooledu/middleschoollist/grade/2.1.4', '20', '1', '6', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('95', 'A0003-0003-0005', '初二化学（上）', '', '/middleschooledu/middleschoollist/grade/2.1.5', '20', '1', '5', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('96', 'A0003-0003-0006', '初二生物（上）', '', '/middleschooledu/middleschoollist/grade/2.1.6', '20', '1', '4', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('97', 'A0003-0003-0007', '初二历史（上）', '', '/middleschooledu/middleschoollist/grade/2.1.7', '20', '1', '3', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('98', 'A0003-0003-0008', '初二政治（上）', '', '/middleschooledu/middleschoollist/grade/2.1.8', '20', '1', '2', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('99', 'A0003-0003-0009', '初二地理（上）', '', '/middleschooledu/middleschoollist/grade/2.1.9', '20', '1', '1', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('100', 'A0003-0004-0001', '初二语文（下）', '', '/middleschooledu/middleschoollist/grade/2.2.1', '80', '1', '9', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('101', 'A0003-0004-0002', '初二数学（下）', '', '/middleschooledu/middleschoollist/grade/2.2.2', '80', '1', '8', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('102', 'A0003-0004-0003', '初二英语（下）', '', '/middleschooledu/middleschoollist/grade/2.2.3', '80', '1', '7', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('103', 'A0003-0004-0004', '初二物理（下）', '', '/middleschooledu/middleschoollist/grade/2.2.4', '80', '1', '6', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('104', 'A0003-0004-0005', '初二化学（下）', '', '/middleschooledu/middleschoollist/grade/2.2.5', '80', '1', '5', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('105', 'A0003-0004-0006', '初二生物（下）', '', '/middleschooledu/middleschoollist/grade/2.2.6', '80', '1', '4', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('106', 'A0003-0004-0007', '初二历史（下）', '', '/middleschooledu/middleschoollist/grade/2.2.7', '80', '1', '3', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('107', 'A0003-0004-0008', '初二政治（下）', '', '/middleschooledu/middleschoollist/grade/2.2.8', '80', '1', '2', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('108', 'A0003-0004-0009', '初二地理（下）', '', '/middleschooledu/middleschoollist/grade/2.2.9', '80', '1', '1', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('109', 'A0003-0005-0001', '初三语文（上）', '', '/middleschooledu/middleschoollist/grade/3.1.1', '21', '1', '9', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('110', 'A0003-0005-0002', '初三数学（上）', '', '/middleschooledu/middleschoollist/grade/3.1.2', '21', '1', '8', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:46:27');
INSERT INTO `strongculture_system_privilege` VALUES ('111', 'A0003-0005-0003', '初三英语（上）', '', '/middleschooledu/middleschoollist/grade/3.1.3', '21', '1', '7', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('112', 'A0003-0005-0004', '初三物理（上）', '', '/middleschooledu/middleschoollist/grade/3.1.4', '21', '1', '6', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('113', 'A0003-0005-0005', '初三化学（上）', '', '/middleschooledu/middleschoollist/grade/3.1.5', '21', '1', '5', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('114', 'A0003-0005-0006', '初三生物（上）', '', '/middleschooledu/middleschoollist/grade/3.1.6', '21', '1', '4', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('115', 'A0003-0005-0007', '初三历史（上）', '', '/middleschooledu/middleschoollist/grade/3.1.7', '21', '1', '3', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('116', 'A0003-0005-0008', '初三政治（上）', '', '/middleschooledu/middleschoollist/grade/3.1.8', '21', '1', '2', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('117', 'A0003-0005-0009', '初三地理（上）', '', '/middleschooledu/middleschoollist/grade/3.1.9', '21', '1', '1', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('118', 'A0003-0006-0001', '初三语文（下）', '', '/middleschooledu/middleschoollist/grade/3.2.1', '81', '1', '9', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('119', 'A0003-0006-0002', '初三数学（下）', '', '/middleschooledu/middleschoollist/grade/3.2.2', '81', '1', '8', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('120', 'A0003-0006-0003', '初三英语（下）', '', '/middleschooledu/middleschoollist/grade/3.2.3', '81', '1', '7', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('121', 'A0003-0006-0004', '初三物理（下）', '', '/middleschooledu/middleschoollist/grade/3.2.4', '81', '1', '6', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('122', 'A0003-0006-0005', '初三化学（下）', '', '/middleschooledu/middleschoollist/grade/3.2.5', '81', '1', '5', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('123', 'A0003-0006-0006', '初三生物（下）', '', '/middleschooledu/middleschoollist/grade/3.2.6', '81', '1', '4', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('124', 'A0003-0006-0007', '初三历史（下）', '', '/middleschooledu/middleschoollist/grade/3.2.7', '81', '1', '3', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('125', 'A0003-0006-0008', '初三政治（下）', '', '/middleschooledu/middleschoollist/grade/3.2.8', '81', '1', '2', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('126', 'A0003-0006-0009', '初三地理（下）', '', '/middleschooledu/middleschoollist/grade/3.2.9', '81', '1', '1', '', 'middleschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('127', 'A0004-0002', '高一（下）', '', '', '4', '1', '5', '', '', '1', '', '1', '0', '1', '2017-01-04 20:08:46', '2017-01-04 20:08:46');
INSERT INTO `strongculture_system_privilege` VALUES ('128', 'A0004-0004', '高二（下）', '', '', '4', '1', '3', '', '', '1', '', '1', '0', '1', '2017-01-04 20:08:46', '2017-01-04 20:08:46');
INSERT INTO `strongculture_system_privilege` VALUES ('129', 'A0004-0006', '高三（下）', '', '', '4', '1', '1', '', '', '1', '', '1', '0', '1', '2017-01-04 20:08:46', '2017-01-04 20:08:46');
INSERT INTO `strongculture_system_privilege` VALUES ('130', 'A0004-0001-0001', '高一语文（上）', '', '/highschooledu/highschoollist/grade/1.1.1', '13', '1', '9', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:14:30');
INSERT INTO `strongculture_system_privilege` VALUES ('131', 'A0004-0001-0002', '高一数学（上）', '', '/highschooledu/highschoollist/grade/1.1.2', '13', '1', '8', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:45:37');
INSERT INTO `strongculture_system_privilege` VALUES ('132', 'A0004-0001-0003', '高一英语（上）', '', '/highschooledu/highschoollist/grade/1.1.3', '13', '1', '7', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:45:48');
INSERT INTO `strongculture_system_privilege` VALUES ('133', 'A0004-0001-0004', '高一物理（上）', '', '/highschooledu/highschoollist/grade/1.1.4', '13', '1', '6', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:45:58');
INSERT INTO `strongculture_system_privilege` VALUES ('134', 'A0004-0001-0005', '高一化学（上）', '', '/highschooledu/highschoollist/grade/1.1.5', '13', '1', '5', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:46:07');
INSERT INTO `strongculture_system_privilege` VALUES ('135', 'A0004-0001-0006', '高一生物（上）', '', '/highschooledu/highschoollist/grade/1.1.6', '13', '1', '4', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:46:19');
INSERT INTO `strongculture_system_privilege` VALUES ('136', 'A0004-0001-0007', '高一历史（上）', '', '/highschooledu/highschoollist/grade/1.1.7', '13', '1', '3', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:46:33');
INSERT INTO `strongculture_system_privilege` VALUES ('137', 'A0004-0001-0008', '高一政治（上）', '', '/highschooledu/highschoollist/grade/1.1.8', '13', '1', '2', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:46:43');
INSERT INTO `strongculture_system_privilege` VALUES ('138', 'A0004-0001-0009', '高一地理（上）', '', '/highschooledu/highschoollist/grade/1.1.9', '13', '1', '1', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:46:51');
INSERT INTO `strongculture_system_privilege` VALUES ('139', 'A0004-0002-0001', '高一语文（下）', '', '/highschooledu/highschoollist/grade/1.2.1', '127', '1', '9', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('140', 'A0004-0002-0002', '高一数学（下）', '', '/highschooledu/highschoollist/grade/1.2.2', '127', '1', '8', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('141', 'A0004-0002-0003', '高一英语（下）', '', '/highschooledu/highschoollist/grade/1.2.3', '127', '1', '7', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('142', 'A0004-0002-0004', '高一物理（下）', '', '/highschooledu/highschoollist/grade/1.2.4', '127', '1', '6', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('143', 'A0004-0002-0005', '高一化学（下）', '', '/highschooledu/highschoollist/grade/1.2.5', '127', '1', '5', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('144', 'A0004-0002-0006', '高一生物（下）', '', '/highschooledu/highschoollist/grade/1.2.6', '127', '1', '4', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('145', 'A0004-0002-0007', '高一历史（下）', '', '/highschooledu/highschoollist/grade/1.2.7', '127', '1', '3', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('146', 'A0004-0002-0008', '高一政治（下）', '', '/highschooledu/highschoollist/grade/1.2.8', '127', '1', '2', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('147', 'A0004-0002-0009', '高一地理（下）', '', '/highschooledu/highschoollist/grade/1.2.9', '127', '1', '1', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('148', 'A0004-0003-0001', '高二语文（上）', '', '/highschooledu/highschoollist/grade/2.1.1', '22', '1', '9', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:59:30');
INSERT INTO `strongculture_system_privilege` VALUES ('149', 'A0004-0003-0002', '高二数学（上）', '', '/highschooledu/highschoollist/grade/2.1.2', '22', '1', '8', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:59:40');
INSERT INTO `strongculture_system_privilege` VALUES ('150', 'A0004-0003-0003', '高二英语（上）', '', '/highschooledu/highschoollist/grade/2.1.3', '22', '1', '7', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:59:47');
INSERT INTO `strongculture_system_privilege` VALUES ('151', 'A0004-0003-0004', '高二物理（上）', '', '/highschooledu/highschoollist/grade/2.1.4', '22', '1', '6', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 21:59:55');
INSERT INTO `strongculture_system_privilege` VALUES ('152', 'A0004-0003-0005', '高二化学（上）', '', '/highschooledu/highschoollist/grade/2.1.5', '22', '1', '5', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:00:06');
INSERT INTO `strongculture_system_privilege` VALUES ('153', 'A0004-0003-0006', '高二生物（上）', '', '/highschooledu/highschoollist/grade/2.1.6', '22', '1', '4', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:00:14');
INSERT INTO `strongculture_system_privilege` VALUES ('154', 'A0004-0003-0007', '高二历史（上）', '', '/highschooledu/highschoollist/grade/2.1.7', '22', '1', '3', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:00:22');
INSERT INTO `strongculture_system_privilege` VALUES ('155', 'A0004-0003-0008', '高二政治（上）', '', '/highschooledu/highschoollist/grade/2.1.8', '22', '1', '2', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:00:30');
INSERT INTO `strongculture_system_privilege` VALUES ('156', 'A0004-0003-0009', '高二地理（上）', '', '/highschooledu/highschoollist/grade/2.1.9', '22', '1', '1', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:00:38');
INSERT INTO `strongculture_system_privilege` VALUES ('157', 'A0004-0004-0001', '高二语文（下）', '', '/highschooledu/highschoollist/grade/2.2.1', '128', '1', '9', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('158', 'A0004-0004-0002', '高二数学（下）', '', '/highschooledu/highschoollist/grade/2.2.2', '128', '1', '8', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('159', 'A0004-0004-0003', '高二英语（下）', '', '/highschooledu/highschoollist/grade/2.2.3', '128', '1', '7', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('160', 'A0004-0004-0004', '高二物理（下）', '', '/highschooledu/highschoollist/grade/2.2.4', '128', '1', '6', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('161', 'A0004-0004-0005', '高二化学（下）', '', '/highschooledu/highschoollist/grade/2.2.5', '128', '1', '5', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('162', 'A0004-0004-0006', '高二生物（下）', '', '/highschooledu/highschoollist/grade/2.2.6', '128', '1', '4', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('163', 'A0004-0004-0007', '高二历史（下）', '', '/highschooledu/highschoollist/grade/2.2.7', '128', '1', '3', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('164', 'A0004-0004-0008', '高二政治（下）', '', '/highschooledu/highschoollist/grade/2.2.8', '128', '1', '2', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('165', 'A0004-0004-0009', '高二地理（下）', '', '/highschooledu/highschoollist/grade/2.2.9', '128', '1', '1', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('166', 'A0004-0005-0001', '高三语文（上）', '', '/highschooledu/highschoollist/grade/3.1.1', '23', '1', '9', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('167', 'A0004-0005-0002', '高三数学（上）', '', '/highschooledu/highschoollist/grade/3.1.2', '23', '1', '8', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('168', 'A0004-0005-0003', '高三英语（上）', '', '/highschooledu/highschoollist/grade/3.1.3', '23', '1', '7', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('169', 'A0004-0005-0004', '高三物理（上）', '', '/highschooledu/highschoollist/grade/3.1.4', '23', '1', '6', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('170', 'A0004-0005-0005', '高三化学（上）', '', '/highschooledu/highschoollist/grade/3.1.5', '23', '1', '5', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('171', 'A0004-0005-0006', '高三生物（上）', '', '/highschooledu/highschoollist/grade/3.1.6', '23', '1', '4', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('172', 'A0004-0005-0007', '高三历史（上）', '', '/highschooledu/highschoollist/grade/3.1.7', '23', '1', '3', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('173', 'A0004-0005-0008', '高三政治（上）', '', '/highschooledu/highschoollist/grade/3.1.8', '23', '1', '2', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('174', 'A0004-0005-0009', '高三地理（上）', '', '/highschooledu/highschoollist/grade/3.1.9', '23', '1', '1', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('175', 'A0004-0006-0001', '高三语文（下）', '', '/highschooledu/highschoollist/grade/3.2.1', '129', '1', '9', '', 'highschoollist', '1', '', '2', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:21:05');
INSERT INTO `strongculture_system_privilege` VALUES ('176', 'A0004-0006-0002', '高三数学（下）', '', '/highschooledu/highschoollist/grade/3.2.2', '129', '1', '8', '', 'highschoollist', '1', '', '2', '0', '1', '2017-01-04 20:17:26', '2017-01-04 22:21:22');
INSERT INTO `strongculture_system_privilege` VALUES ('177', 'A0004-0006-0003', '高三英语（下）', '', '/highschooledu/highschoollist/grade/3.2.3', '129', '1', '7', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('178', 'A0004-0006-0004', '高三物理（下）', '', '/highschooledu/highschoollist/grade/3.2.4', '129', '1', '6', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('179', 'A0004-0006-0005', '高三化学（下）', '', '/highschooledu/highschoollist/grade/3.2.5', '129', '1', '5', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('180', 'A0004-0006-0006', '高三生物（下）', '', '/highschooledu/highschoollist/grade/3.2.6', '129', '1', '4', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('181', 'A0004-0006-0007', '高三历史（下）', '', '/highschooledu/highschoollist/grade/3.2.7', '129', '1', '3', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('182', 'A0004-0006-0008', '高三政治（下）', '', '/highschooledu/highschoollist/grade/3.2.8', '129', '1', '2', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('183', 'A0004-0006-0009', '高三地理（下）', '', '/highschooledu/highschoollist/grade/3.2.9', '129', '1', '1', '', 'highschoollist', '1', '', '1', '0', '1', '2017-01-04 20:17:26', '2017-01-04 20:17:26');
INSERT INTO `strongculture_system_privilege` VALUES ('184', 'A0001-0001', '四书', '', '', '1', '1', '99', '', '', '1', '', '1', '0', '1', '2017-02-26 11:21:23', '2017-02-26 11:21:39');
INSERT INTO `strongculture_system_privilege` VALUES ('185', 'A0001-0001-0001', '大学', '', 'SinologyEdu/Sinologylist/subject/university', '184', '1', '4', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:22:43', '2017-02-26 11:42:22');
INSERT INTO `strongculture_system_privilege` VALUES ('186', 'A0001-0001-0002', '中庸', '', 'SinologyEdu/Sinologylist/subject/mean', '184', '1', '3', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:23:24', '2017-02-26 11:54:15');
INSERT INTO `strongculture_system_privilege` VALUES ('187', 'A0001-0001-0003', '论语', '', 'SinologyEdu/Sinologylist/subject/analects', '184', '1', '2', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:23:52', '2017-02-26 12:06:26');
INSERT INTO `strongculture_system_privilege` VALUES ('188', 'A0001-0001-0004', '孟子', '', 'SinologyEdu/Sinologylist/subject/Mencius', '184', '1', '1', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:24:20', '2017-02-26 12:15:01');
INSERT INTO `strongculture_system_privilege` VALUES ('189', 'A0001-0002', '五经', '', '', '1', '1', '98', '', '', '1', '', '1', '0', '1', '2017-02-26 11:24:52', '2017-02-26 11:24:52');
INSERT INTO `strongculture_system_privilege` VALUES ('190', 'A0001-0002-0001', '诗经', '', 'SinologyEdu/Sinologylist/subject/poetry', '189', '1', '5', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:25:28', '2017-02-26 12:46:37');
INSERT INTO `strongculture_system_privilege` VALUES ('191', 'A0001-0002-0002', '尚书', '', 'SinologyEdu/Sinologylist/subject/minister', '189', '1', '4', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:25:52', '2017-02-26 13:04:42');
INSERT INTO `strongculture_system_privilege` VALUES ('192', 'A0001-0002-0003', '礼记', '', 'SinologyEdu/Sinologylist/subject/Rites', '189', '1', '3', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:26:38', '2017-02-26 13:26:02');
INSERT INTO `strongculture_system_privilege` VALUES ('193', 'A0001-0002-0004', '易经', '', 'SinologyEdu/Sinologylist/subject/Changes', '189', '1', '2', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:27:05', '2017-02-26 13:43:16');
INSERT INTO `strongculture_system_privilege` VALUES ('194', 'A0001-0002-0005', '春秋', '', 'SinologyEdu/Sinologylist/subject/annals', '189', '1', '1', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 11:27:29', '2017-02-26 13:55:36');
INSERT INTO `strongculture_system_privilege` VALUES ('195', 'A0004-0007', '美文节选', '', '', '4', '1', '-1', '', '', '1', '', '1', '0', '1', '2017-02-26 20:02:58', '2017-02-26 20:23:18');
INSERT INTO `strongculture_system_privilege` VALUES ('196', 'A0000-0003', '账号', '', '/user/list', '7', '1', '1', '', 'list', '1', '', '1', '0', '1', '2017-02-26 21:33:53', '2017-02-26 21:33:53');
INSERT INTO `strongculture_system_privilege` VALUES ('198', 'A0001-0007', '文心雕龙', '', 'SinologyEdu/Sinologylist/subject/wenxin', '1', '1', '90', '', 'Sinologylist', '1', '', '1', '0', '1', '2017-02-26 21:57:13', '2017-02-26 21:57:13');
INSERT INTO `strongculture_system_privilege` VALUES ('199', 'A0007', '个人中心', '', '', '0', '1', '0', '', '', '1', '', '1', '0', '1', '2017-04-21 15:01:43', '2017-04-21 15:04:18');
INSERT INTO `strongculture_system_privilege` VALUES ('200', 'A0007-0001-0001', '旅游历史', '', 'Travel/historylist', '201', '1', '99', '', 'historylist', '1', '', '1', '0', '1', '2017-04-21 15:06:46', '2017-04-24 11:18:42');
INSERT INTO `strongculture_system_privilege` VALUES ('201', 'A0007-0001', '旅游', '', '', '199', '1', '99', '', '', '1', '', '1', '0', '1', '2017-04-21 15:57:47', '2017-04-21 15:57:47');
INSERT INTO `strongculture_system_privilege` VALUES ('202', 'A0007-0001-0002', '旅游计划', '', 'Travel/planlist', '201', '1', '98', '', 'planlist', '1', '', '1', '0', '1', '2017-04-21 15:58:58', '2017-04-24 11:19:12');
INSERT INTO `strongculture_system_privilege` VALUES ('203', 'A0007-0002', '学习', '', 'study/list', '199', '1', '98', '', 'list', '1', '', '1', '0', '1', '2017-04-21 16:46:35', '2017-04-21 17:15:07');
INSERT INTO `strongculture_system_privilege` VALUES ('204', 'A0007-0003', '投资', '', 'invest/list', '199', '1', '97', '', 'list', '1', '', '1', '0', '1', '2017-04-21 16:46:59', '2017-04-21 17:25:35');
INSERT INTO `strongculture_system_privilege` VALUES ('205', 'A0007-0004', '个人资料', '', 'user/userinfo', '199', '1', '100', '', 'userinfo', '1', '', '1', '0', '1', '2017-06-04 10:06:30', '2017-06-04 10:08:12');

-- ----------------------------
-- Table structure for `strongculture_system_role`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_role`;
CREATE TABLE `strongculture_system_role` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `roleno` varchar(20) NOT NULL COMMENT '角色编号',
  `rolename` varchar(50) NOT NULL COMMENT '角色名称',
  `roledesc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号：不需要的不用管这字段',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='系统-角色信息表表';

-- ----------------------------
-- Records of strongculture_system_role
-- ----------------------------
INSERT INTO `strongculture_system_role` VALUES ('1', 'R0001', '超级管理员', '', '1', '0', '1', '0000-00-00 00:00:00', '2017-06-04 12:30:24');
INSERT INTO `strongculture_system_role` VALUES ('2', 'R0002', '董事长', '', '1', '0', '1', '2017-06-02 22:25:57', '2017-06-04 10:07:35');
INSERT INTO `strongculture_system_role` VALUES ('3', 'R0003', '总裁', '', '1', '0', '1', '2017-06-02 22:26:59', '2017-06-02 22:34:44');
INSERT INTO `strongculture_system_role` VALUES ('4', 'R0004', '总经理', '', '1', '0', '1', '2017-06-02 22:28:04', '2017-06-02 22:35:09');
INSERT INTO `strongculture_system_role` VALUES ('5', 'R0005', '省代理', '', '1', '0', '1', '2017-06-02 22:28:45', '2017-06-02 22:35:30');
INSERT INTO `strongculture_system_role` VALUES ('6', 'R0006', '市代理', '', '1', '0', '1', '2017-06-02 22:29:25', '2017-06-02 22:36:07');
INSERT INTO `strongculture_system_role` VALUES ('7', 'R0007', '钻石会员', '', '1', '0', '1', '2017-06-02 22:30:12', '2017-06-02 22:34:19');
INSERT INTO `strongculture_system_role` VALUES ('8', 'R0008', '黄金会员', '', '1', '0', '1', '2017-06-02 22:30:43', '2017-06-02 22:33:54');
INSERT INTO `strongculture_system_role` VALUES ('9', 'R0009', '铂金会员', '', '1', '0', '1', '2017-06-02 22:31:25', '2017-06-02 22:33:32');
INSERT INTO `strongculture_system_role` VALUES ('10', 'R0010', 'VIP会员', '', '1', '0', '1', '2017-06-02 22:32:06', '2017-06-02 22:33:10');
INSERT INTO `strongculture_system_role` VALUES ('11', 'R0011', '普通会员', '', '1', '0', '1', '2017-06-02 22:32:40', '2017-06-02 22:32:40');

-- ----------------------------
-- Table structure for `strongculture_system_role-r-privilege`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_role-r-privilege`;
CREATE TABLE `strongculture_system_role-r-privilege` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `role_sysno` bigint(20) NOT NULL COMMENT '所属角色表主键',
  `privilege_sysno` bigint(20) NOT NULL COMMENT '所属权限表主键',
  PRIMARY KEY (`sysno`),
  KEY `role_sysno` (`role_sysno`),
  KEY `privilege_sysno` (`privilege_sysno`)
) ENGINE=InnoDB AUTO_INCREMENT=5213 DEFAULT CHARSET=utf8 COMMENT='系统-角色与权限多对多关系信息表';

-- ----------------------------
-- Records of strongculture_system_role-r-privilege
-- ----------------------------
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3743', '11', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3744', '11', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3745', '11', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3746', '11', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3747', '11', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3748', '11', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3749', '11', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3750', '11', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3751', '11', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3752', '11', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3753', '11', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3754', '11', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3755', '11', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3756', '11', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3757', '11', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3758', '11', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3759', '11', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3760', '11', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3761', '11', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3762', '11', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3763', '11', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3764', '11', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3765', '11', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3766', '11', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3767', '11', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3768', '11', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3769', '11', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3770', '11', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3771', '11', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3772', '11', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3773', '11', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3774', '11', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3775', '11', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3776', '11', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3777', '11', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3778', '11', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3779', '11', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3780', '11', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3781', '11', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3782', '11', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3783', '11', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3784', '11', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3785', '11', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3786', '11', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3787', '11', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3788', '11', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3789', '11', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3790', '11', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3791', '11', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3792', '11', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3793', '11', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3794', '11', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3795', '11', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3796', '11', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3797', '11', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3798', '11', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3799', '11', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3800', '11', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3801', '11', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3802', '11', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3803', '11', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3804', '11', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3805', '11', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3806', '11', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3807', '11', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3808', '11', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3809', '11', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3810', '11', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3811', '11', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3812', '11', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3813', '11', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3814', '11', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3815', '11', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3816', '11', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3817', '11', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3818', '11', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3819', '11', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3820', '11', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3821', '11', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3822', '11', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3823', '11', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3824', '11', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3825', '11', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3826', '11', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3827', '11', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3828', '11', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3829', '11', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3830', '11', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3831', '11', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3832', '11', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3833', '11', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3834', '11', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3835', '11', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3836', '11', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3837', '11', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3838', '11', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3839', '11', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3840', '11', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3841', '11', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3842', '11', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3843', '11', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3844', '11', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3845', '11', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3846', '11', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3847', '11', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3848', '11', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3849', '11', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3850', '11', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3851', '11', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3852', '11', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3853', '11', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3854', '11', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3855', '11', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3856', '11', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3857', '11', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3858', '10', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3859', '10', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3860', '10', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3861', '10', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3862', '10', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3863', '10', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3864', '10', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3865', '10', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3866', '10', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3867', '10', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3868', '10', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3869', '10', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3870', '10', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3871', '10', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3872', '10', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3873', '10', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3874', '10', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3875', '10', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3876', '10', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3877', '10', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3878', '10', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3879', '10', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3880', '10', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3881', '10', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3882', '10', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3883', '10', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3884', '10', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3885', '10', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3886', '10', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3887', '10', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3888', '10', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3889', '10', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3890', '10', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3891', '10', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3892', '10', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3893', '10', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3894', '10', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3895', '10', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3896', '10', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3897', '10', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3898', '10', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3899', '10', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3900', '10', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3901', '10', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3902', '10', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3903', '10', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3904', '10', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3905', '10', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3906', '10', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3907', '10', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3908', '10', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3909', '10', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3910', '10', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3911', '10', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3912', '10', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3913', '10', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3914', '10', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3915', '10', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3916', '10', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3917', '10', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3918', '10', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3919', '10', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3920', '10', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3921', '10', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3922', '10', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3923', '10', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3924', '10', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3925', '10', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3926', '10', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3927', '10', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3928', '10', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3929', '10', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3930', '10', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3931', '10', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3932', '10', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3933', '10', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3934', '10', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3935', '10', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3936', '10', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3937', '10', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3938', '10', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3939', '10', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3940', '10', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3941', '10', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3942', '10', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3943', '10', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3944', '10', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3945', '10', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3946', '10', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3947', '10', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3948', '10', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3949', '10', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3950', '10', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3951', '10', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3952', '10', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3953', '10', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3954', '10', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3955', '10', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3956', '10', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3957', '10', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3958', '10', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3959', '10', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3960', '10', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3961', '10', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3962', '10', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3963', '10', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3964', '10', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3965', '10', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3966', '10', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3967', '10', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3968', '10', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3969', '10', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3970', '10', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3971', '10', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3972', '10', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3973', '9', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3974', '9', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3975', '9', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3976', '9', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3977', '9', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3978', '9', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3979', '9', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3980', '9', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3981', '9', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3982', '9', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3983', '9', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3984', '9', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3985', '9', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3986', '9', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3987', '9', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3988', '9', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3989', '9', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3990', '9', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3991', '9', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3992', '9', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3993', '9', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3994', '9', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3995', '9', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3996', '9', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3997', '9', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3998', '9', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('3999', '9', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4000', '9', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4001', '9', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4002', '9', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4003', '9', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4004', '9', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4005', '9', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4006', '9', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4007', '9', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4008', '9', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4009', '9', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4010', '9', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4011', '9', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4012', '9', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4013', '9', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4014', '9', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4015', '9', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4016', '9', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4017', '9', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4018', '9', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4019', '9', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4020', '9', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4021', '9', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4022', '9', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4023', '9', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4024', '9', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4025', '9', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4026', '9', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4027', '7', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4028', '7', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4029', '7', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4030', '7', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4031', '7', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4032', '7', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4033', '7', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4034', '7', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4035', '7', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4036', '7', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4037', '7', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4038', '7', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4039', '7', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4040', '7', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4041', '7', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4042', '7', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4043', '7', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4044', '7', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4045', '7', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4046', '7', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4047', '7', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4048', '7', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4049', '7', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4050', '7', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4051', '7', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4052', '7', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4053', '7', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4054', '7', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4055', '7', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4056', '7', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4057', '7', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4058', '7', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4059', '7', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4060', '7', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4061', '7', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4062', '7', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4063', '7', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4064', '7', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4065', '7', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4066', '7', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4067', '7', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4068', '7', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4069', '7', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4070', '7', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4071', '7', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4072', '7', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4073', '7', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4074', '7', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4075', '7', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4076', '7', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4077', '7', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4078', '7', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4079', '7', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4080', '7', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4081', '7', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4082', '7', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4083', '7', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4084', '7', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4085', '7', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4086', '7', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4087', '7', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4088', '7', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4089', '7', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4090', '7', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4091', '7', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4092', '7', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4093', '7', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4094', '7', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4095', '7', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4096', '7', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4097', '7', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4098', '7', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4099', '7', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4100', '7', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4101', '7', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4102', '7', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4103', '7', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4104', '7', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4105', '7', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4106', '7', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4107', '7', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4108', '7', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4109', '7', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4110', '7', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4111', '7', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4112', '7', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4113', '7', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4114', '7', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4115', '7', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4116', '7', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4117', '7', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4118', '7', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4119', '7', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4120', '7', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4121', '7', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4122', '7', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4123', '7', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4124', '7', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4125', '7', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4126', '7', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4127', '7', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4128', '7', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4129', '7', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4130', '7', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4131', '7', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4132', '7', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4133', '7', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4134', '7', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4135', '7', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4136', '7', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4137', '7', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4138', '7', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4139', '7', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4140', '7', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4141', '7', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4142', '3', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4143', '3', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4144', '3', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4145', '3', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4146', '3', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4147', '3', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4148', '3', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4149', '3', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4150', '3', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4151', '3', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4152', '3', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4153', '3', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4154', '3', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4155', '3', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4156', '3', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4157', '3', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4158', '3', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4159', '3', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4160', '3', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4161', '3', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4162', '3', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4163', '3', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4164', '3', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4165', '3', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4166', '3', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4167', '3', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4168', '3', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4169', '3', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4170', '3', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4171', '3', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4172', '3', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4173', '3', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4174', '3', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4175', '3', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4176', '3', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4177', '3', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4178', '3', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4179', '3', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4180', '3', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4181', '3', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4182', '3', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4183', '3', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4184', '3', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4185', '3', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4186', '3', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4187', '3', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4188', '3', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4189', '3', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4190', '3', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4191', '3', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4192', '3', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4193', '3', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4194', '3', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4195', '3', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4196', '3', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4197', '3', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4198', '3', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4199', '3', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4200', '3', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4201', '3', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4202', '3', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4203', '3', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4204', '3', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4205', '3', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4206', '3', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4207', '3', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4208', '3', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4209', '3', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4210', '3', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4211', '3', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4212', '3', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4213', '3', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4214', '3', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4215', '3', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4216', '3', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4217', '3', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4218', '3', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4219', '3', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4220', '3', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4221', '3', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4222', '3', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4223', '3', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4224', '3', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4225', '3', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4226', '3', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4227', '3', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4228', '3', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4229', '3', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4230', '3', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4231', '3', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4232', '3', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4233', '3', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4234', '3', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4235', '3', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4236', '3', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4237', '3', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4238', '3', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4239', '3', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4240', '3', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4241', '3', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4242', '3', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4243', '3', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4244', '3', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4245', '3', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4246', '3', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4247', '3', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4248', '3', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4249', '3', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4250', '3', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4251', '3', '46');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4252', '3', '195');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4253', '3', '183');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4254', '3', '182');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4255', '3', '181');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4256', '3', '180');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4257', '3', '179');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4258', '3', '178');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4259', '3', '177');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4260', '3', '129');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4261', '3', '165');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4262', '3', '164');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4263', '3', '163');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4264', '3', '162');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4265', '3', '161');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4266', '3', '160');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4267', '3', '159');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4268', '3', '158');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4269', '3', '157');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4270', '3', '128');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4271', '3', '147');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4272', '3', '146');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4273', '3', '145');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4274', '3', '144');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4275', '3', '143');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4276', '3', '142');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4277', '3', '141');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4278', '3', '140');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4279', '3', '139');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4280', '3', '127');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4281', '3', '174');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4282', '3', '173');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4283', '3', '172');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4284', '3', '171');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4285', '3', '170');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4286', '3', '169');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4287', '3', '168');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4288', '3', '167');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4289', '3', '166');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4290', '3', '23');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4291', '3', '156');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4292', '3', '155');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4293', '3', '154');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4294', '3', '153');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4295', '3', '152');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4296', '3', '151');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4297', '3', '150');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4298', '3', '149');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4299', '3', '148');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4300', '3', '22');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4301', '3', '138');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4302', '3', '137');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4303', '3', '136');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4304', '3', '135');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4305', '3', '134');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4306', '3', '133');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4307', '3', '132');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4308', '3', '131');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4309', '3', '130');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4310', '3', '13');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4311', '3', '4');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4312', '3', '41');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4313', '3', '40');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4314', '3', '39');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4315', '3', '38');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4316', '3', '26');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4317', '3', '25');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4318', '3', '24');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4319', '3', '14');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4320', '3', '5');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4321', '3', '37');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4322', '3', '36');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4323', '3', '44');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4324', '3', '43');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4325', '3', '19');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4326', '3', '45');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4327', '3', '18');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4328', '3', '42');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4329', '3', '15');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4330', '3', '6');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4331', '3', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4332', '3', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4333', '3', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4334', '3', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4335', '3', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4336', '3', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4337', '4', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4338', '4', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4339', '4', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4340', '4', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4341', '4', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4342', '4', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4343', '4', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4344', '4', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4345', '4', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4346', '4', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4347', '4', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4348', '4', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4349', '4', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4350', '4', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4351', '4', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4352', '4', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4353', '4', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4354', '4', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4355', '4', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4356', '4', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4357', '4', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4358', '4', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4359', '4', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4360', '4', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4361', '4', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4362', '4', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4363', '4', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4364', '4', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4365', '4', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4366', '4', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4367', '4', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4368', '4', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4369', '4', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4370', '4', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4371', '4', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4372', '4', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4373', '4', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4374', '4', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4375', '4', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4376', '4', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4377', '4', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4378', '4', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4379', '4', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4380', '4', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4381', '4', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4382', '4', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4383', '4', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4384', '4', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4385', '4', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4386', '4', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4387', '4', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4388', '4', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4389', '4', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4390', '4', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4391', '4', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4392', '4', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4393', '4', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4394', '4', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4395', '4', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4396', '4', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4397', '4', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4398', '4', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4399', '4', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4400', '4', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4401', '4', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4402', '4', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4403', '4', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4404', '4', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4405', '4', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4406', '4', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4407', '4', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4408', '4', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4409', '4', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4410', '4', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4411', '4', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4412', '4', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4413', '4', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4414', '4', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4415', '4', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4416', '4', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4417', '4', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4418', '4', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4419', '4', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4420', '4', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4421', '4', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4422', '4', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4423', '4', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4424', '4', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4425', '4', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4426', '4', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4427', '4', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4428', '4', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4429', '4', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4430', '4', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4431', '4', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4432', '4', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4433', '4', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4434', '4', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4435', '4', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4436', '4', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4437', '4', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4438', '4', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4439', '4', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4440', '4', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4441', '4', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4442', '4', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4443', '4', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4444', '4', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4445', '4', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4446', '4', '46');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4447', '4', '195');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4448', '4', '183');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4449', '4', '182');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4450', '4', '181');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4451', '4', '180');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4452', '4', '179');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4453', '4', '178');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4454', '4', '177');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4455', '4', '129');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4456', '4', '165');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4457', '4', '164');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4458', '4', '163');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4459', '4', '162');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4460', '4', '161');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4461', '4', '160');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4462', '4', '159');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4463', '4', '158');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4464', '4', '157');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4465', '4', '128');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4466', '4', '147');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4467', '4', '146');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4468', '4', '145');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4469', '4', '144');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4470', '4', '143');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4471', '4', '142');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4472', '4', '141');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4473', '4', '140');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4474', '4', '139');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4475', '4', '127');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4476', '4', '174');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4477', '4', '173');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4478', '4', '172');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4479', '4', '171');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4480', '4', '170');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4481', '4', '169');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4482', '4', '168');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4483', '4', '167');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4484', '4', '166');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4485', '4', '23');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4486', '4', '156');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4487', '4', '155');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4488', '4', '154');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4489', '4', '153');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4490', '4', '152');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4491', '4', '151');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4492', '4', '150');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4493', '4', '149');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4494', '4', '148');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4495', '4', '22');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4496', '4', '138');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4497', '4', '137');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4498', '4', '136');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4499', '4', '135');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4500', '4', '134');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4501', '4', '133');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4502', '4', '132');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4503', '4', '131');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4504', '4', '130');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4505', '4', '13');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4506', '4', '4');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4507', '4', '41');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4508', '4', '40');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4509', '4', '39');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4510', '4', '38');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4511', '4', '26');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4512', '4', '25');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4513', '4', '24');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4514', '4', '14');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4515', '4', '5');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4516', '4', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4517', '4', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4518', '4', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4519', '4', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4520', '4', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4521', '4', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4522', '5', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4523', '5', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4524', '5', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4525', '5', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4526', '5', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4527', '5', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4528', '5', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4529', '5', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4530', '5', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4531', '5', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4532', '5', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4533', '5', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4534', '5', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4535', '5', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4536', '5', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4537', '5', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4538', '5', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4539', '5', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4540', '5', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4541', '5', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4542', '5', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4543', '5', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4544', '5', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4545', '5', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4546', '5', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4547', '5', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4548', '5', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4549', '5', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4550', '5', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4551', '5', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4552', '5', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4553', '5', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4554', '5', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4555', '5', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4556', '5', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4557', '5', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4558', '5', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4559', '5', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4560', '5', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4561', '5', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4562', '5', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4563', '5', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4564', '5', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4565', '5', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4566', '5', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4567', '5', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4568', '5', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4569', '5', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4570', '5', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4571', '5', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4572', '5', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4573', '5', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4574', '5', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4575', '5', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4576', '5', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4577', '5', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4578', '5', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4579', '5', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4580', '5', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4581', '5', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4582', '5', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4583', '5', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4584', '5', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4585', '5', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4586', '5', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4587', '5', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4588', '5', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4589', '5', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4590', '5', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4591', '5', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4592', '5', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4593', '5', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4594', '5', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4595', '5', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4596', '5', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4597', '5', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4598', '5', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4599', '5', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4600', '5', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4601', '5', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4602', '5', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4603', '5', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4604', '5', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4605', '5', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4606', '5', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4607', '5', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4608', '5', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4609', '5', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4610', '5', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4611', '5', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4612', '5', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4613', '5', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4614', '5', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4615', '5', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4616', '5', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4617', '5', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4618', '5', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4619', '5', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4620', '5', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4621', '5', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4622', '5', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4623', '5', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4624', '5', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4625', '5', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4626', '5', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4627', '5', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4628', '5', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4629', '5', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4630', '5', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4631', '5', '46');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4632', '5', '195');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4633', '5', '183');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4634', '5', '182');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4635', '5', '181');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4636', '5', '180');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4637', '5', '179');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4638', '5', '178');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4639', '5', '177');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4640', '5', '129');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4641', '5', '165');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4642', '5', '164');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4643', '5', '163');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4644', '5', '162');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4645', '5', '161');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4646', '5', '160');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4647', '5', '159');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4648', '5', '158');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4649', '5', '157');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4650', '5', '128');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4651', '5', '147');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4652', '5', '146');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4653', '5', '145');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4654', '5', '144');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4655', '5', '143');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4656', '5', '142');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4657', '5', '141');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4658', '5', '140');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4659', '5', '139');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4660', '5', '127');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4661', '5', '174');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4662', '5', '173');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4663', '5', '172');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4664', '5', '171');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4665', '5', '170');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4666', '5', '169');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4667', '5', '168');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4668', '5', '167');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4669', '5', '166');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4670', '5', '23');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4671', '5', '156');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4672', '5', '155');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4673', '5', '154');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4674', '5', '153');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4675', '5', '152');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4676', '5', '151');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4677', '5', '150');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4678', '5', '149');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4679', '5', '148');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4680', '5', '22');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4681', '5', '138');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4682', '5', '137');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4683', '5', '136');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4684', '5', '135');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4685', '5', '134');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4686', '5', '133');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4687', '5', '132');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4688', '5', '131');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4689', '5', '130');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4690', '5', '13');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4691', '5', '4');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4692', '5', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4693', '5', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4694', '5', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4695', '5', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4696', '5', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4697', '5', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4698', '6', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4699', '6', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4700', '6', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4701', '6', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4702', '6', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4703', '6', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4704', '6', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4705', '6', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4706', '6', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4707', '6', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4708', '6', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4709', '6', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4710', '6', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4711', '6', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4712', '6', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4713', '6', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4714', '6', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4715', '6', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4716', '6', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4717', '6', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4718', '6', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4719', '6', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4720', '6', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4721', '6', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4722', '6', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4723', '6', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4724', '6', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4725', '6', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4726', '6', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4727', '6', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4728', '6', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4729', '6', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4730', '6', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4731', '6', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4732', '6', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4733', '6', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4734', '6', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4735', '6', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4736', '6', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4737', '6', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4738', '6', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4739', '6', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4740', '6', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4741', '6', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4742', '6', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4743', '6', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4744', '6', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4745', '6', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4746', '6', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4747', '6', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4748', '6', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4749', '6', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4750', '6', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4751', '6', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4752', '6', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4753', '6', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4754', '6', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4755', '6', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4756', '6', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4757', '6', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4758', '6', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4759', '6', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4760', '6', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4761', '6', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4762', '6', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4763', '6', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4764', '6', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4765', '6', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4766', '6', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4767', '6', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4768', '6', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4769', '6', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4770', '6', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4771', '6', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4772', '6', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4773', '6', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4774', '6', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4775', '6', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4776', '6', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4777', '6', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4778', '6', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4779', '6', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4780', '6', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4781', '6', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4782', '6', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4783', '6', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4784', '6', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4785', '6', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4786', '6', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4787', '6', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4788', '6', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4789', '6', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4790', '6', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4791', '6', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4792', '6', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4793', '6', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4794', '6', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4795', '6', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4796', '6', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4797', '6', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4798', '6', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4799', '6', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4800', '6', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4801', '6', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4802', '6', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4803', '6', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4804', '6', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4805', '6', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4806', '6', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4807', '6', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4808', '6', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4809', '6', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4810', '6', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4811', '6', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4812', '6', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4813', '2', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4814', '2', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4815', '2', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4816', '2', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4817', '2', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4818', '2', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4819', '2', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4820', '2', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4821', '2', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4822', '2', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4823', '2', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4824', '2', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4825', '2', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4826', '2', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4827', '2', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4828', '2', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4829', '2', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4830', '2', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4831', '2', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4832', '2', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4833', '2', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4834', '2', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4835', '2', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4836', '2', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4837', '2', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4838', '2', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4839', '2', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4840', '2', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4841', '2', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4842', '2', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4843', '2', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4844', '2', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4845', '2', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4846', '2', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4847', '2', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4848', '2', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4849', '2', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4850', '2', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4851', '2', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4852', '2', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4853', '2', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4854', '2', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4855', '2', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4856', '2', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4857', '2', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4858', '2', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4859', '2', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4860', '2', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4861', '2', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4862', '2', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4863', '2', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4864', '2', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4865', '2', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4866', '2', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4867', '2', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4868', '2', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4869', '2', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4870', '2', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4871', '2', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4872', '2', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4873', '2', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4874', '2', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4875', '2', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4876', '2', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4877', '2', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4878', '2', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4879', '2', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4880', '2', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4881', '2', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4882', '2', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4883', '2', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4884', '2', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4885', '2', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4886', '2', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4887', '2', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4888', '2', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4889', '2', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4890', '2', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4891', '2', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4892', '2', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4893', '2', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4894', '2', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4895', '2', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4896', '2', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4897', '2', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4898', '2', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4899', '2', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4900', '2', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4901', '2', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4902', '2', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4903', '2', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4904', '2', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4905', '2', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4906', '2', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4907', '2', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4908', '2', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4909', '2', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4910', '2', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4911', '2', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4912', '2', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4913', '2', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4914', '2', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4915', '2', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4916', '2', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4917', '2', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4918', '2', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4919', '2', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4920', '2', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4921', '2', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4922', '2', '46');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4923', '2', '195');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4924', '2', '183');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4925', '2', '182');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4926', '2', '181');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4927', '2', '180');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4928', '2', '179');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4929', '2', '178');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4930', '2', '177');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4931', '2', '129');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4932', '2', '165');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4933', '2', '164');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4934', '2', '163');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4935', '2', '162');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4936', '2', '161');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4937', '2', '160');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4938', '2', '159');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4939', '2', '158');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4940', '2', '157');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4941', '2', '128');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4942', '2', '147');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4943', '2', '146');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4944', '2', '145');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4945', '2', '144');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4946', '2', '143');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4947', '2', '142');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4948', '2', '141');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4949', '2', '140');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4950', '2', '139');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4951', '2', '127');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4952', '2', '174');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4953', '2', '173');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4954', '2', '172');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4955', '2', '171');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4956', '2', '170');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4957', '2', '169');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4958', '2', '168');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4959', '2', '167');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4960', '2', '166');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4961', '2', '23');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4962', '2', '156');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4963', '2', '155');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4964', '2', '154');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4965', '2', '153');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4966', '2', '152');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4967', '2', '151');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4968', '2', '150');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4969', '2', '149');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4970', '2', '148');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4971', '2', '22');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4972', '2', '138');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4973', '2', '137');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4974', '2', '136');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4975', '2', '135');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4976', '2', '134');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4977', '2', '133');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4978', '2', '132');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4979', '2', '131');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4980', '2', '130');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4981', '2', '13');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4982', '2', '4');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4983', '2', '41');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4984', '2', '40');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4985', '2', '39');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4986', '2', '38');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4987', '2', '26');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4988', '2', '25');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4989', '2', '24');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4990', '2', '14');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4991', '2', '5');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4992', '2', '37');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4993', '2', '36');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4994', '2', '44');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4995', '2', '43');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4996', '2', '19');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4997', '2', '45');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4998', '2', '18');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('4999', '2', '42');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5000', '2', '15');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5001', '2', '6');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5002', '2', '196');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5003', '2', '9');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5004', '2', '8');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5005', '2', '7');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5006', '2', '205');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5007', '2', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5008', '2', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5009', '2', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5010', '2', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5011', '2', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5012', '2', '199');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5013', '1', '198');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5014', '1', '194');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5015', '1', '193');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5016', '1', '192');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5017', '1', '191');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5018', '1', '190');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5019', '1', '189');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5020', '1', '188');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5021', '1', '187');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5022', '1', '186');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5023', '1', '185');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5024', '1', '184');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5025', '1', '35');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5026', '1', '34');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5027', '1', '16');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5028', '1', '10');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5029', '1', '1');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5030', '1', '68');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5031', '1', '67');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5032', '1', '66');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5033', '1', '65');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5034', '1', '30');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5035', '1', '64');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5036', '1', '63');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5037', '1', '62');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5038', '1', '61');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5039', '1', '29');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5040', '1', '60');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5041', '1', '59');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5042', '1', '58');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5043', '1', '57');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5044', '1', '28');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5045', '1', '56');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5046', '1', '55');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5047', '1', '54');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5048', '1', '53');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5049', '1', '27');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5050', '1', '52');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5051', '1', '51');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5052', '1', '50');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5053', '1', '49');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5054', '1', '17');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5055', '1', '48');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5056', '1', '47');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5057', '1', '33');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5058', '1', '32');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5059', '1', '11');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5060', '1', '2');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5061', '1', '126');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5062', '1', '125');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5063', '1', '124');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5064', '1', '123');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5065', '1', '122');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5066', '1', '121');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5067', '1', '120');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5068', '1', '119');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5069', '1', '118');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5070', '1', '81');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5071', '1', '108');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5072', '1', '107');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5073', '1', '106');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5074', '1', '105');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5075', '1', '104');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5076', '1', '103');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5077', '1', '102');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5078', '1', '101');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5079', '1', '100');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5080', '1', '80');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5081', '1', '90');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5082', '1', '89');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5083', '1', '88');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5084', '1', '87');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5085', '1', '86');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5086', '1', '85');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5087', '1', '84');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5088', '1', '83');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5089', '1', '82');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5090', '1', '79');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5091', '1', '117');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5092', '1', '116');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5093', '1', '115');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5094', '1', '114');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5095', '1', '113');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5096', '1', '112');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5097', '1', '111');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5098', '1', '110');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5099', '1', '109');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5100', '1', '21');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5101', '1', '99');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5102', '1', '98');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5103', '1', '97');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5104', '1', '96');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5105', '1', '95');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5106', '1', '94');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5107', '1', '93');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5108', '1', '92');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5109', '1', '91');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5110', '1', '20');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5111', '1', '78');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5112', '1', '77');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5113', '1', '76');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5114', '1', '75');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5115', '1', '74');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5116', '1', '73');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5117', '1', '72');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5118', '1', '71');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5119', '1', '70');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5120', '1', '12');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5121', '1', '3');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5122', '1', '46');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5123', '1', '195');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5124', '1', '183');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5125', '1', '182');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5126', '1', '181');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5127', '1', '180');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5128', '1', '179');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5129', '1', '178');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5130', '1', '177');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5131', '1', '129');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5132', '1', '165');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5133', '1', '164');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5134', '1', '163');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5135', '1', '162');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5136', '1', '161');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5137', '1', '160');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5138', '1', '159');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5139', '1', '158');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5140', '1', '157');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5141', '1', '128');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5142', '1', '147');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5143', '1', '146');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5144', '1', '145');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5145', '1', '144');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5146', '1', '143');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5147', '1', '142');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5148', '1', '141');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5149', '1', '140');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5150', '1', '139');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5151', '1', '127');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5152', '1', '174');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5153', '1', '173');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5154', '1', '172');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5155', '1', '171');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5156', '1', '170');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5157', '1', '169');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5158', '1', '168');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5159', '1', '167');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5160', '1', '166');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5161', '1', '23');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5162', '1', '156');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5163', '1', '155');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5164', '1', '154');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5165', '1', '153');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5166', '1', '152');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5167', '1', '151');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5168', '1', '150');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5169', '1', '149');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5170', '1', '148');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5171', '1', '22');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5172', '1', '138');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5173', '1', '137');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5174', '1', '136');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5175', '1', '135');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5176', '1', '134');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5177', '1', '133');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5178', '1', '132');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5179', '1', '131');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5180', '1', '130');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5181', '1', '13');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5182', '1', '4');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5183', '1', '41');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5184', '1', '40');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5185', '1', '39');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5186', '1', '38');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5187', '1', '26');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5188', '1', '25');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5189', '1', '24');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5190', '1', '14');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5191', '1', '5');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5192', '1', '37');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5193', '1', '36');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5194', '1', '44');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5195', '1', '43');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5196', '1', '19');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5197', '1', '45');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5198', '1', '18');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5199', '1', '42');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5200', '1', '15');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5201', '1', '6');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5202', '1', '196');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5203', '1', '9');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5204', '1', '8');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5205', '1', '7');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5206', '1', '205');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5207', '1', '204');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5208', '1', '203');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5209', '1', '202');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5210', '1', '200');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5211', '1', '201');
INSERT INTO `strongculture_system_role-r-privilege` VALUES ('5212', '1', '199');

-- ----------------------------
-- Table structure for `strongculture_system_user`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_user`;
CREATE TABLE `strongculture_system_user` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `username` varchar(60) NOT NULL COMMENT '登录帐号',
  `userpwd` varchar(60) NOT NULL COMMENT '登录密码',
  `reference` bigint(20) NOT NULL COMMENT '推荐人账号',
  `realname` varchar(20) NOT NULL COMMENT '用户姓名',
  `nickname` varchar(60) NOT NULL COMMENT '所属员工信息表主键',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `lastloginip` varchar(255) DEFAULT NULL COMMENT '最后登录IP',
  `sex` bigint(1) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `origin` varchar(60) DEFAULT NULL,
  `marriage` bigint(1) DEFAULT NULL,
  `politics` varchar(20) DEFAULT NULL,
  `education` varchar(60) DEFAULT NULL,
  `university` varchar(60) DEFAULT NULL,
  `major` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `idcard` varchar(18) DEFAULT NULL,
  `bankaccount` varchar(20) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号：不需要的不用管这字段',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='系统-帐户信息表';

-- ----------------------------
-- Records of strongculture_system_user
-- ----------------------------
INSERT INTO `strongculture_system_user` VALUES ('1', 'super@scsg.com', '$2y$10$IFKLgA8ySNc1e3lyhyTPK.4DXbTCNhxL5GlAnVntm5qfwHarWgi8G', '0', '超级管理员', 'lucky', '2017-06-04 14:37:43', '127.0.0.1', '0', '', '', '0000-00-00', '', '', '0', '', '', '', '', '', '', '', '', '1', '0', '1', '2017-06-01 16:21:13', '2017-06-04 12:31:33');
INSERT INTO `strongculture_system_user` VALUES ('27', '18801628396', '$2y$10$m2rE94nntgwKaJe5fXybk.CkGM240tmxvNJr57noJm1LWMixJlhT6', '1', '伍贤能', '神话', '2017-06-04 16:32:28', '127.0.0.1', '0', '', '', '1991-01-21', '', '', '0', '', '', '二工大', '', '', '', '', '', '1', '0', '1', '2017-06-02 21:02:36', '2017-06-04 16:11:05');

-- ----------------------------
-- Table structure for `strongculture_system_user-r-role`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_user-r-role`;
CREATE TABLE `strongculture_system_user-r-role` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_sysno` bigint(20) NOT NULL COMMENT '所属帐户信息表主键',
  `role_sysno` bigint(20) NOT NULL COMMENT '所属角色信息表主键',
  PRIMARY KEY (`sysno`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='系统-帐户与角色多对多关系信息表';

-- ----------------------------
-- Records of strongculture_system_user-r-role
-- ----------------------------
INSERT INTO `strongculture_system_user-r-role` VALUES ('5', '1', '1');
INSERT INTO `strongculture_system_user-r-role` VALUES ('15', '27', '2');

-- ----------------------------
-- Table structure for `strongculture_system_user_invest`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_user_invest`;
CREATE TABLE `strongculture_system_user_invest` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_sysno` bigint(20) DEFAULT NULL,
  `projectname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstamount` decimal(20,2) DEFAULT NULL,
  `lastamount` decimal(20,2) DEFAULT NULL,
  `firsttime` date DEFAULT NULL,
  `lasttime` date DEFAULT NULL,
  `memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of strongculture_system_user_invest
-- ----------------------------
INSERT INTO `strongculture_system_user_invest` VALUES ('1', '1', '重庆快联', '1000.00', '1200.00', '2017-03-01', '2017-04-01', null, '1', '0', '2017-04-21 17:03:13', '2017-04-21 17:03:16');
INSERT INTO `strongculture_system_user_invest` VALUES ('2', '1', '和退热贴', '1000.00', '1210.00', '2017-01-01', '2017-04-01', '合肥', '1', '1', '2017-04-24 14:48:41', '2017-04-24 14:49:00');

-- ----------------------------
-- Table structure for `strongculture_system_user_study`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_user_study`;
CREATE TABLE `strongculture_system_user_study` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_sysno` bigint(20) DEFAULT NULL,
  `grade` float(20,1) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  `memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of strongculture_system_user_study
-- ----------------------------
INSERT INTO `strongculture_system_user_study` VALUES ('1', '1', '1.1', '语文', '98', null, '1', '0', '2017-04-21 16:56:38', '2017-04-21 16:56:41');
INSERT INTO `strongculture_system_user_study` VALUES ('2', '1', '1.2', '防干扰', '56', '热风', '1', '1', '2017-04-24 14:31:58', '2017-04-24 14:32:09');

-- ----------------------------
-- Table structure for `strongculture_system_user_travelplan`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_system_user_travelplan`;
CREATE TABLE `strongculture_system_user_travelplan` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_sysno` bigint(20) DEFAULT NULL,
  `placename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plantime` date DEFAULT NULL,
  `memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `planstatus` bigint(20) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of strongculture_system_user_travelplan
-- ----------------------------
INSERT INTO `strongculture_system_user_travelplan` VALUES ('1', '1', '湖南省新化县孟公镇曲溪山村', '1991-01-21', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('2', '1', '湖南省长沙市长沙大学', '2010-06-07', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('3', '1', '浙江省宁波市', '2010-06-20', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('4', '1', '浙江省杭州市西湖风景区', '2010-08-10', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('5', '1', '上海市浦东新区金海路2360号', '2010-09-12', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('6', '1', '江苏省常熟市虞山风景区', '2011-05-09', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('7', '1', '北京市天安门', '2013-07-20', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('8', '1', '天津市静海县惠民医院', '2013-07-21', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('9', '1', '湖北省武汉市蔡甸区赛洛城', '2014-10-15', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('10', '1', '湖北省宜昌市夷陵区清江润城', '2014-11-15', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('11', '1', '浙江省安吉市天下银坑景区', '2015-06-10', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('12', '1', '山东省曲阜市孔庙', '2016-06-07', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('13', '1', '安徽省合肥市天鹅湖', '2016-10-02', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('14', '1', '安徽省黄山市黄山风景区', '2016-10-03', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('15', '1', '江苏省南京市总统府', '2016-10-06', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('16', '1', '浙江省海盐县隐马山', '2016-12-03', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('17', '1', '上海市崇明县东平国家森林公园', '2017-04-02', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('18', '1', '浙江省宁波市东钱湖风景区', '2017-04-07', null, '1', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('19', '1', '广西省北海市北部湾一号', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('20', '1', '拉萨布达拉宫', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('21', '1', '黑龙江省哈尔滨市', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('22', '1', '河南少林寺', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('23', '1', '五台山', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('24', '1', '青海省青海湖', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('25', '1', '甘肃省嘉峪关', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('26', '1', '云南省西双版纳', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('27', '1', '四川省九寨沟', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('28', '1', '贵州省黄果树瀑布', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('29', '1', '乌鲁木齐', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('30', '1', '呼和浩特', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('31', '1', '陕西省西安市秦兵马俑', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('32', '1', '香港', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('33', '1', '福建省莆田市', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('34', '1', '江西省庐山', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('35', '1', '海南省三亚市', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('36', '1', '德国柏林', '2017-10-01', null, '2', '1', '0', '2017-04-21 16:23:09', '2017-04-21 16:23:09');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('37', '1', '歌瑞尔', '2017-04-24', '范德萨', '1', '1', '1', '2017-04-24 11:53:27', '2017-04-24 11:53:27');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('38', '1', '方式规范', '2017-04-24', '还特地', '1', '1', '1', '2017-04-24 11:58:21', '2017-04-24 11:58:37');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('39', '1', '范德萨分', '2017-04-24', '分公司规范', '1', '1', '1', '2017-04-24 12:02:43', '2017-04-24 12:02:43');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('40', '1', '他有人提议', '2017-04-24', '合同', '2', '1', '1', '2017-04-24 14:07:41', '2017-04-24 14:12:39');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('41', '27', '湖南省新化县孟公镇曲溪山村', '1991-01-21', '出生地', '1', '1', '0', '2017-06-02 21:43:50', '2017-06-02 21:43:50');
INSERT INTO `strongculture_system_user_travelplan` VALUES ('42', '27', '西藏维吾尔自治区拉萨市', '2017-06-02', '10.1', '2', '1', '0', '2017-06-02 21:46:43', '2017-06-02 21:46:43');

-- ----------------------------
-- Table structure for `strongculture_universityedu`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_universityedu`;
CREATE TABLE `strongculture_universityedu` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `city_sysno` bigint(20) DEFAULT NULL,
  `universityname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of strongculture_universityedu
-- ----------------------------
INSERT INTO `strongculture_universityedu` VALUES ('1', '1', '清华大学', null, '1', '0', '2017-04-21 10:31:54', '2017-04-21 10:31:56');
INSERT INTO `strongculture_universityedu` VALUES ('2', '1', '北京大学', null, '1', '0', '2017-04-21 10:32:17', '2017-04-21 10:32:19');
INSERT INTO `strongculture_universityedu` VALUES ('3', '2', '复旦大学', null, '1', '0', '2017-04-21 10:32:51', '2017-04-21 10:32:55');
INSERT INTO `strongculture_universityedu` VALUES ('4', '2', '上海交通大学', null, '1', '0', '2017-04-21 10:33:15', '2017-04-21 10:33:18');
INSERT INTO `strongculture_universityedu` VALUES ('5', '3', '厦门大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('6', '5', '南京大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('7', '6', '天津大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('8', '7', '浙江大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('9', '8', '西安交通大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('10', '5', '东南大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('11', '9', '山东大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('12', '1', '中国人民大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('13', '10', '吉林大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('14', '11', '电子科技大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('15', '11', '四川大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('16', '12', '华南理工大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('17', '13', '兰州大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('18', '8', '西北工业大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('19', '2', '同济大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('20', '4', '中国科技大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('21', '14', '哈尔滨工业大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('22', '6', '南开大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('23', '15', '华中科技大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('24', '15', '武汉大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('25', '9', '中国海洋大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('26', '16', '湖南大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('27', '1', '北京理工大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('28', '17', '重庆大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('29', '18', '大连理工大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('30', '12', '中山大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('31', '1', '北京航空航空大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('32', '18', '东北大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('33', '1', '北京师范大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_universityedu` VALUES ('34', '16', '中南大学', null, '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `strongculture_university_city`
-- ----------------------------
DROP TABLE IF EXISTS `strongculture_university_city`;
CREATE TABLE `strongculture_university_city` (
  `sysno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `cityname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用2停用',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除：1是0否',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`sysno`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of strongculture_university_city
-- ----------------------------
INSERT INTO `strongculture_university_city` VALUES ('1', '北京', '1', '0', '2017-04-21 10:30:31', '2017-04-21 10:30:34');
INSERT INTO `strongculture_university_city` VALUES ('2', '上海', '1', '0', '2017-04-21 10:30:52', '2017-04-21 10:30:55');
INSERT INTO `strongculture_university_city` VALUES ('3', '福建', '1', '0', '2017-04-21 11:36:53', '2017-04-21 11:36:56');
INSERT INTO `strongculture_university_city` VALUES ('4', '安徽', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('5', '江苏', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('6', '天津', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('7', '浙江', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('8', '陕西', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('9', '山东', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('10', '吉林', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('11', '四川', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('12', '广东', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('13', '甘肃', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('14', '黑龙江', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('15', '湖北', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('16', '湖南', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('17', '重庆', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `strongculture_university_city` VALUES ('18', '辽宁', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
