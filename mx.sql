/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : mx

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2017-05-19 17:53:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mx_authgroup
-- ----------------------------
DROP TABLE IF EXISTS `mx_authgroup`;
CREATE TABLE `mx_authgroup` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `description` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mx_authgroup
-- ----------------------------
INSERT INTO `mx_authgroup` VALUES ('1', '超级管理员', '拥有所有管理权限', '1', '');
INSERT INTO `mx_authgroup` VALUES ('2', '高级管理员', '', '1', 'a:14:{s:9:\"dashboard\";a:1:{i:0;s:5:\"board\";}s:9:\"webconfig\";a:2:{i:0;s:10:\"webconfig1\";i:1;s:10:\"webconfig2\";}s:7:\"webtype\";a:3:{i:0;s:8:\"webtype1\";i:1;s:8:\"webtype2\";i:2;s:8:\"webtype3\";}s:7:\"cn_prov\";a:4:{i:0;s:8:\"cn_prov1\";i:1;s:8:\"cn_prov2\";i:2;s:8:\"cn_prov3\";i:3;s:8:\"cn_prov4\";}s:7:\"manager\";a:4:{i:0;s:4:\"man1\";i:1;s:4:\"man2\";i:2;s:4:\"man3\";i:3;s:4:\"man4\";}s:9:\"authgroup\";a:5:{i:0;s:10:\"authgroup1\";i:1;s:10:\"authgroup2\";i:2;s:10:\"authgroup3\";i:3;s:10:\"authgroup4\";i:4;s:10:\"authgroup5\";}s:9:\"infoclass\";a:4:{i:0;s:10:\"infoclass1\";i:1;s:10:\"infoclass2\";i:2;s:10:\"infoclass3\";i:3;s:10:\"infoclass4\";}s:8:\"infolist\";a:4:{i:0;s:9:\"infolist1\";i:1;s:9:\"infolist2\";i:2;s:9:\"infolist3\";i:3;s:9:\"infolist4\";}s:4:\"user\";a:4:{i:0;s:5:\"user1\";i:1;s:5:\"user2\";i:2;s:5:\"user3\";i:3;s:5:\"user4\";}s:3:\"job\";a:4:{i:0;s:4:\"job1\";i:1;s:4:\"job2\";i:2;s:4:\"job3\";i:3;s:4:\"job4\";}s:10:\"goods_type\";a:3:{i:0;s:11:\"goods_type1\";i:1;s:11:\"goods_type2\";i:2;s:11:\"goods_type3\";}s:5:\"goods\";a:3:{i:0;s:6:\"goods1\";i:1;s:6:\"goods2\";i:2;s:6:\"goods4\";}s:11:\"formbuilder\";a:1:{i:0;s:5:\"build\";}s:8:\"generate\";a:1:{i:0;s:6:\"gener1\";}}');
INSERT INTO `mx_authgroup` VALUES ('3', '测试', '水电费', '1', '');
INSERT INTO `mx_authgroup` VALUES ('4', '文章发布员', '文章发布员', '1', 'a:18:{s:9:\"dashboard\";a:1:{i:0;s:5:\"board\";}s:6:\"system\";a:2:{i:0;s:3:\"at1\";i:1;s:3:\"at2\";}s:7:\"cn_prov\";a:4:{i:0;s:8:\"cn_prov1\";i:1;s:8:\"cn_prov2\";i:2;s:8:\"cn_prov3\";i:3;s:8:\"cn_prov4\";}s:7:\"cn_city\";a:4:{i:0;s:8:\"cn_city1\";i:1;s:8:\"cn_city2\";i:2;s:8:\"cn_city3\";i:3;s:8:\"cn_city4\";}s:7:\"cn_area\";a:4:{i:0;s:8:\"cn_area1\";i:1;s:8:\"cn_area2\";i:2;s:8:\"cn_area3\";i:3;s:8:\"cn_area4\";}s:7:\"manager\";a:4:{i:0;s:4:\"man1\";i:1;s:4:\"man2\";i:2;s:4:\"man3\";i:3;s:4:\"man4\";}s:9:\"authgroup\";a:5:{i:0;s:10:\"authgroup1\";i:1;s:10:\"authgroup2\";i:2;s:10:\"authgroup3\";i:3;s:10:\"authgroup4\";i:4;s:10:\"authgroup5\";}s:4:\"info\";a:4:{i:0;s:5:\"info1\";i:1;s:5:\"info2\";i:2;s:5:\"info3\";i:3;s:5:\"info4\";}s:7:\"product\";a:4:{i:0;s:8:\"product1\";i:1;s:8:\"product2\";i:2;s:8:\"product3\";i:3;s:8:\"product4\";}s:12:\"product_type\";a:3:{i:0;s:13:\"product_type2\";i:1;s:13:\"product_type3\";i:2;s:13:\"product_type4\";}s:9:\"infoclass\";a:4:{i:0;s:10:\"infoclass1\";i:1;s:10:\"infoclass2\";i:2;s:10:\"infoclass3\";i:3;s:10:\"infoclass4\";}s:8:\"infolist\";a:4:{i:0;s:9:\"infolist1\";i:1;s:9:\"infolist2\";i:2;s:9:\"infolist3\";i:3;s:9:\"infolist4\";}s:4:\"user\";a:4:{i:0;s:5:\"user1\";i:1;s:5:\"user2\";i:2;s:5:\"user3\";i:3;s:5:\"user4\";}s:3:\"job\";a:4:{i:0;s:4:\"job1\";i:1;s:4:\"job2\";i:2;s:4:\"job3\";i:3;s:4:\"job4\";}s:3:\"nav\";a:3:{i:0;s:4:\"nav1\";i:1;s:4:\"nav2\";i:2;s:4:\"nav3\";}s:11:\"formbuilder\";a:1:{i:0;s:5:\"build\";}s:8:\"generate\";a:1:{i:0;s:6:\"gener1\";}s:8:\"solution\";a:4:{i:0;s:9:\"solution1\";i:1;s:9:\"solution2\";i:2;s:9:\"solution3\";i:3;s:9:\"solution4\";}}');

-- ----------------------------
-- Table structure for mx_banner
-- ----------------------------
DROP TABLE IF EXISTS `mx_banner`;
CREATE TABLE `mx_banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'banner管理主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `type_id` int(10) NOT NULL,
  `picurl` varchar(55) NOT NULL COMMENT '图片',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `linkurl` varchar(55) NOT NULL COMMENT '跳转链接',
  `target` char(6) NOT NULL COMMENT '跳转方式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='banner管理';

-- ----------------------------
-- Records of mx_banner
-- ----------------------------
INSERT INTO `mx_banner` VALUES ('1', 'Mx营销平台', '1', 'uploads/20170418/7c71b214fc83e170a61bbd4dc470bb09.jpg', '一套能在互联网上跑业务的系统', '', '_self', '1', '1', '1484214269', '1492509566');
INSERT INTO `mx_banner` VALUES ('2', '加入我们', '1', 'uploads/20170418/80956dc43098d79a8f77f3f7c722b707.jpg', '充满热情的队友，也是一起撸串、篮球、足球、动感单车、甚至桌上足球组队互虐的好基友 ', '', '_self', '1', '2', '1492497049', '1492498560');

-- ----------------------------
-- Table structure for mx_banner_type
-- ----------------------------
DROP TABLE IF EXISTS `mx_banner_type`;
CREATE TABLE `mx_banner_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'banner分类主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='banner分类';

-- ----------------------------
-- Records of mx_banner_type
-- ----------------------------
INSERT INTO `mx_banner_type` VALUES ('1', '首页幻灯片', '1');

-- ----------------------------
-- Table structure for mx_cn_area
-- ----------------------------
DROP TABLE IF EXISTS `mx_cn_area`;
CREATE TABLE `mx_cn_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '区管理主键',
  `code` char(6) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `pcode` char(6) NOT NULL COMMENT '父编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3148 DEFAULT CHARSET=utf8 COMMENT='区管理';

-- ----------------------------
-- Records of mx_cn_area
-- ----------------------------
INSERT INTO `mx_cn_area` VALUES ('1', '110101', '东城区', '110100');
INSERT INTO `mx_cn_area` VALUES ('2', '110102', '西城区', '110100');
INSERT INTO `mx_cn_area` VALUES ('3', '110103', '崇文区', '110100');
INSERT INTO `mx_cn_area` VALUES ('4', '110104', '宣武区', '110100');
INSERT INTO `mx_cn_area` VALUES ('5', '110105', '朝阳区', '110100');
INSERT INTO `mx_cn_area` VALUES ('6', '110106', '丰台区', '110100');
INSERT INTO `mx_cn_area` VALUES ('7', '110107', '石景山区', '110100');
INSERT INTO `mx_cn_area` VALUES ('8', '110108', '海淀区', '110100');
INSERT INTO `mx_cn_area` VALUES ('9', '110109', '门头沟区', '110100');
INSERT INTO `mx_cn_area` VALUES ('10', '110111', '房山区', '110100');
INSERT INTO `mx_cn_area` VALUES ('11', '110112', '通州区', '110100');
INSERT INTO `mx_cn_area` VALUES ('12', '110113', '顺义区', '110100');
INSERT INTO `mx_cn_area` VALUES ('13', '110114', '昌平区', '110100');
INSERT INTO `mx_cn_area` VALUES ('14', '110115', '大兴区', '110100');
INSERT INTO `mx_cn_area` VALUES ('15', '110116', '怀柔区', '110100');
INSERT INTO `mx_cn_area` VALUES ('16', '110117', '平谷区', '110100');
INSERT INTO `mx_cn_area` VALUES ('17', '110228', '密云县', '110200');
INSERT INTO `mx_cn_area` VALUES ('18', '110229', '延庆县', '110200');
INSERT INTO `mx_cn_area` VALUES ('19', '120101', '和平区', '120100');
INSERT INTO `mx_cn_area` VALUES ('20', '120102', '河东区', '120100');
INSERT INTO `mx_cn_area` VALUES ('21', '120103', '河西区', '120100');
INSERT INTO `mx_cn_area` VALUES ('22', '120104', '南开区', '120100');
INSERT INTO `mx_cn_area` VALUES ('23', '120105', '河北区', '120100');
INSERT INTO `mx_cn_area` VALUES ('24', '120106', '红桥区', '120100');
INSERT INTO `mx_cn_area` VALUES ('25', '120107', '塘沽区', '120100');
INSERT INTO `mx_cn_area` VALUES ('26', '120108', '汉沽区', '120100');
INSERT INTO `mx_cn_area` VALUES ('27', '120109', '大港区', '120100');
INSERT INTO `mx_cn_area` VALUES ('28', '120110', '东丽区', '120100');
INSERT INTO `mx_cn_area` VALUES ('29', '120111', '西青区', '120100');
INSERT INTO `mx_cn_area` VALUES ('30', '120112', '津南区', '120100');
INSERT INTO `mx_cn_area` VALUES ('31', '120113', '北辰区', '120100');
INSERT INTO `mx_cn_area` VALUES ('32', '120114', '武清区', '120100');
INSERT INTO `mx_cn_area` VALUES ('33', '120115', '宝坻区', '120100');
INSERT INTO `mx_cn_area` VALUES ('34', '120221', '宁河县', '120200');
INSERT INTO `mx_cn_area` VALUES ('35', '120223', '静海县', '120200');
INSERT INTO `mx_cn_area` VALUES ('36', '120225', '蓟　县', '120200');
INSERT INTO `mx_cn_area` VALUES ('37', '130101', '市辖区', '130100');
INSERT INTO `mx_cn_area` VALUES ('38', '130102', '长安区', '130100');
INSERT INTO `mx_cn_area` VALUES ('39', '130103', '桥东区', '130100');
INSERT INTO `mx_cn_area` VALUES ('40', '130104', '桥西区', '130100');
INSERT INTO `mx_cn_area` VALUES ('41', '130105', '新华区', '130100');
INSERT INTO `mx_cn_area` VALUES ('42', '130107', '井陉矿区', '130100');
INSERT INTO `mx_cn_area` VALUES ('43', '130108', '裕华区', '130100');
INSERT INTO `mx_cn_area` VALUES ('44', '130121', '井陉县', '130100');
INSERT INTO `mx_cn_area` VALUES ('45', '130123', '正定县', '130100');
INSERT INTO `mx_cn_area` VALUES ('46', '130124', '栾城县', '130100');
INSERT INTO `mx_cn_area` VALUES ('47', '130125', '行唐县', '130100');
INSERT INTO `mx_cn_area` VALUES ('48', '130126', '灵寿县', '130100');
INSERT INTO `mx_cn_area` VALUES ('49', '130127', '高邑县', '130100');
INSERT INTO `mx_cn_area` VALUES ('50', '130128', '深泽县', '130100');
INSERT INTO `mx_cn_area` VALUES ('51', '130129', '赞皇县', '130100');
INSERT INTO `mx_cn_area` VALUES ('52', '130130', '无极县', '130100');
INSERT INTO `mx_cn_area` VALUES ('53', '130131', '平山县', '130100');
INSERT INTO `mx_cn_area` VALUES ('54', '130132', '元氏县', '130100');
INSERT INTO `mx_cn_area` VALUES ('55', '130133', '赵　县', '130100');
INSERT INTO `mx_cn_area` VALUES ('56', '130181', '辛集市', '130100');
INSERT INTO `mx_cn_area` VALUES ('57', '130182', '藁城市', '130100');
INSERT INTO `mx_cn_area` VALUES ('58', '130183', '晋州市', '130100');
INSERT INTO `mx_cn_area` VALUES ('59', '130184', '新乐市', '130100');
INSERT INTO `mx_cn_area` VALUES ('60', '130185', '鹿泉市', '130100');
INSERT INTO `mx_cn_area` VALUES ('61', '130201', '市辖区', '130200');
INSERT INTO `mx_cn_area` VALUES ('62', '130202', '路南区', '130200');
INSERT INTO `mx_cn_area` VALUES ('63', '130203', '路北区', '130200');
INSERT INTO `mx_cn_area` VALUES ('64', '130204', '古冶区', '130200');
INSERT INTO `mx_cn_area` VALUES ('65', '130205', '开平区', '130200');
INSERT INTO `mx_cn_area` VALUES ('66', '130207', '丰南区', '130200');
INSERT INTO `mx_cn_area` VALUES ('67', '130208', '丰润区', '130200');
INSERT INTO `mx_cn_area` VALUES ('68', '130223', '滦　县', '130200');
INSERT INTO `mx_cn_area` VALUES ('69', '130224', '滦南县', '130200');
INSERT INTO `mx_cn_area` VALUES ('70', '130225', '乐亭县', '130200');
INSERT INTO `mx_cn_area` VALUES ('71', '130227', '迁西县', '130200');
INSERT INTO `mx_cn_area` VALUES ('72', '130229', '玉田县', '130200');
INSERT INTO `mx_cn_area` VALUES ('73', '130230', '唐海县', '130200');
INSERT INTO `mx_cn_area` VALUES ('74', '130281', '遵化市', '130200');
INSERT INTO `mx_cn_area` VALUES ('75', '130283', '迁安市', '130200');
INSERT INTO `mx_cn_area` VALUES ('76', '130301', '市辖区', '130300');
INSERT INTO `mx_cn_area` VALUES ('77', '130302', '海港区', '130300');
INSERT INTO `mx_cn_area` VALUES ('78', '130303', '山海关区', '130300');
INSERT INTO `mx_cn_area` VALUES ('79', '130304', '北戴河区', '130300');
INSERT INTO `mx_cn_area` VALUES ('80', '130321', '青龙满族自治县', '130300');
INSERT INTO `mx_cn_area` VALUES ('81', '130322', '昌黎县', '130300');
INSERT INTO `mx_cn_area` VALUES ('82', '130323', '抚宁县', '130300');
INSERT INTO `mx_cn_area` VALUES ('83', '130324', '卢龙县', '130300');
INSERT INTO `mx_cn_area` VALUES ('84', '130401', '市辖区', '130400');
INSERT INTO `mx_cn_area` VALUES ('85', '130402', '邯山区', '130400');
INSERT INTO `mx_cn_area` VALUES ('86', '130403', '丛台区', '130400');
INSERT INTO `mx_cn_area` VALUES ('87', '130404', '复兴区', '130400');
INSERT INTO `mx_cn_area` VALUES ('88', '130406', '峰峰矿区', '130400');
INSERT INTO `mx_cn_area` VALUES ('89', '130421', '邯郸县', '130400');
INSERT INTO `mx_cn_area` VALUES ('90', '130423', '临漳县', '130400');
INSERT INTO `mx_cn_area` VALUES ('91', '130424', '成安县', '130400');
INSERT INTO `mx_cn_area` VALUES ('92', '130425', '大名县', '130400');
INSERT INTO `mx_cn_area` VALUES ('93', '130426', '涉　县', '130400');
INSERT INTO `mx_cn_area` VALUES ('94', '130427', '磁　县', '130400');
INSERT INTO `mx_cn_area` VALUES ('95', '130428', '肥乡县', '130400');
INSERT INTO `mx_cn_area` VALUES ('96', '130429', '永年县', '130400');
INSERT INTO `mx_cn_area` VALUES ('97', '130430', '邱　县', '130400');
INSERT INTO `mx_cn_area` VALUES ('98', '130431', '鸡泽县', '130400');
INSERT INTO `mx_cn_area` VALUES ('99', '130432', '广平县', '130400');
INSERT INTO `mx_cn_area` VALUES ('100', '130433', '馆陶县', '130400');
INSERT INTO `mx_cn_area` VALUES ('101', '130434', '魏　县', '130400');
INSERT INTO `mx_cn_area` VALUES ('102', '130435', '曲周县', '130400');
INSERT INTO `mx_cn_area` VALUES ('103', '130481', '武安市', '130400');
INSERT INTO `mx_cn_area` VALUES ('104', '130501', '市辖区', '130500');
INSERT INTO `mx_cn_area` VALUES ('105', '130502', '桥东区', '130500');
INSERT INTO `mx_cn_area` VALUES ('106', '130503', '桥西区', '130500');
INSERT INTO `mx_cn_area` VALUES ('107', '130521', '邢台县', '130500');
INSERT INTO `mx_cn_area` VALUES ('108', '130522', '临城县', '130500');
INSERT INTO `mx_cn_area` VALUES ('109', '130523', '内丘县', '130500');
INSERT INTO `mx_cn_area` VALUES ('110', '130524', '柏乡县', '130500');
INSERT INTO `mx_cn_area` VALUES ('111', '130525', '隆尧县', '130500');
INSERT INTO `mx_cn_area` VALUES ('112', '130526', '任　县', '130500');
INSERT INTO `mx_cn_area` VALUES ('113', '130527', '南和县', '130500');
INSERT INTO `mx_cn_area` VALUES ('114', '130528', '宁晋县', '130500');
INSERT INTO `mx_cn_area` VALUES ('115', '130529', '巨鹿县', '130500');
INSERT INTO `mx_cn_area` VALUES ('116', '130530', '新河县', '130500');
INSERT INTO `mx_cn_area` VALUES ('117', '130531', '广宗县', '130500');
INSERT INTO `mx_cn_area` VALUES ('118', '130532', '平乡县', '130500');
INSERT INTO `mx_cn_area` VALUES ('119', '130533', '威　县', '130500');
INSERT INTO `mx_cn_area` VALUES ('120', '130534', '清河县', '130500');
INSERT INTO `mx_cn_area` VALUES ('121', '130535', '临西县', '130500');
INSERT INTO `mx_cn_area` VALUES ('122', '130581', '南宫市', '130500');
INSERT INTO `mx_cn_area` VALUES ('123', '130582', '沙河市', '130500');
INSERT INTO `mx_cn_area` VALUES ('124', '130601', '市辖区', '130600');
INSERT INTO `mx_cn_area` VALUES ('125', '130602', '新市区', '130600');
INSERT INTO `mx_cn_area` VALUES ('126', '130603', '北市区', '130600');
INSERT INTO `mx_cn_area` VALUES ('127', '130604', '南市区', '130600');
INSERT INTO `mx_cn_area` VALUES ('128', '130621', '满城县', '130600');
INSERT INTO `mx_cn_area` VALUES ('129', '130622', '清苑县', '130600');
INSERT INTO `mx_cn_area` VALUES ('130', '130623', '涞水县', '130600');
INSERT INTO `mx_cn_area` VALUES ('131', '130624', '阜平县', '130600');
INSERT INTO `mx_cn_area` VALUES ('132', '130625', '徐水县', '130600');
INSERT INTO `mx_cn_area` VALUES ('133', '130626', '定兴县', '130600');
INSERT INTO `mx_cn_area` VALUES ('134', '130627', '唐　县', '130600');
INSERT INTO `mx_cn_area` VALUES ('135', '130628', '高阳县', '130600');
INSERT INTO `mx_cn_area` VALUES ('136', '130629', '容城县', '130600');
INSERT INTO `mx_cn_area` VALUES ('137', '130630', '涞源县', '130600');
INSERT INTO `mx_cn_area` VALUES ('138', '130631', '望都县', '130600');
INSERT INTO `mx_cn_area` VALUES ('139', '130632', '安新县', '130600');
INSERT INTO `mx_cn_area` VALUES ('140', '130633', '易　县', '130600');
INSERT INTO `mx_cn_area` VALUES ('141', '130634', '曲阳县', '130600');
INSERT INTO `mx_cn_area` VALUES ('142', '130635', '蠡　县', '130600');
INSERT INTO `mx_cn_area` VALUES ('143', '130636', '顺平县', '130600');
INSERT INTO `mx_cn_area` VALUES ('144', '130637', '博野县', '130600');
INSERT INTO `mx_cn_area` VALUES ('145', '130638', '雄　县', '130600');
INSERT INTO `mx_cn_area` VALUES ('146', '130681', '涿州市', '130600');
INSERT INTO `mx_cn_area` VALUES ('147', '130682', '定州市', '130600');
INSERT INTO `mx_cn_area` VALUES ('148', '130683', '安国市', '130600');
INSERT INTO `mx_cn_area` VALUES ('149', '130684', '高碑店市', '130600');
INSERT INTO `mx_cn_area` VALUES ('150', '130701', '市辖区', '130700');
INSERT INTO `mx_cn_area` VALUES ('151', '130702', '桥东区', '130700');
INSERT INTO `mx_cn_area` VALUES ('152', '130703', '桥西区', '130700');
INSERT INTO `mx_cn_area` VALUES ('153', '130705', '宣化区', '130700');
INSERT INTO `mx_cn_area` VALUES ('154', '130706', '下花园区', '130700');
INSERT INTO `mx_cn_area` VALUES ('155', '130721', '宣化县', '130700');
INSERT INTO `mx_cn_area` VALUES ('156', '130722', '张北县', '130700');
INSERT INTO `mx_cn_area` VALUES ('157', '130723', '康保县', '130700');
INSERT INTO `mx_cn_area` VALUES ('158', '130724', '沽源县', '130700');
INSERT INTO `mx_cn_area` VALUES ('159', '130725', '尚义县', '130700');
INSERT INTO `mx_cn_area` VALUES ('160', '130726', '蔚　县', '130700');
INSERT INTO `mx_cn_area` VALUES ('161', '130727', '阳原县', '130700');
INSERT INTO `mx_cn_area` VALUES ('162', '130728', '怀安县', '130700');
INSERT INTO `mx_cn_area` VALUES ('163', '130729', '万全县', '130700');
INSERT INTO `mx_cn_area` VALUES ('164', '130730', '怀来县', '130700');
INSERT INTO `mx_cn_area` VALUES ('165', '130731', '涿鹿县', '130700');
INSERT INTO `mx_cn_area` VALUES ('166', '130732', '赤城县', '130700');
INSERT INTO `mx_cn_area` VALUES ('167', '130733', '崇礼县', '130700');
INSERT INTO `mx_cn_area` VALUES ('168', '130801', '市辖区', '130800');
INSERT INTO `mx_cn_area` VALUES ('169', '130802', '双桥区', '130800');
INSERT INTO `mx_cn_area` VALUES ('170', '130803', '双滦区', '130800');
INSERT INTO `mx_cn_area` VALUES ('171', '130804', '鹰手营子矿区', '130800');
INSERT INTO `mx_cn_area` VALUES ('172', '130821', '承德县', '130800');
INSERT INTO `mx_cn_area` VALUES ('173', '130822', '兴隆县', '130800');
INSERT INTO `mx_cn_area` VALUES ('174', '130823', '平泉县', '130800');
INSERT INTO `mx_cn_area` VALUES ('175', '130824', '滦平县', '130800');
INSERT INTO `mx_cn_area` VALUES ('176', '130825', '隆化县', '130800');
INSERT INTO `mx_cn_area` VALUES ('177', '130826', '丰宁满族自治县', '130800');
INSERT INTO `mx_cn_area` VALUES ('178', '130827', '宽城满族自治县', '130800');
INSERT INTO `mx_cn_area` VALUES ('179', '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `mx_cn_area` VALUES ('180', '130901', '市辖区', '130900');
INSERT INTO `mx_cn_area` VALUES ('181', '130902', '新华区', '130900');
INSERT INTO `mx_cn_area` VALUES ('182', '130903', '运河区', '130900');
INSERT INTO `mx_cn_area` VALUES ('183', '130921', '沧　县', '130900');
INSERT INTO `mx_cn_area` VALUES ('184', '130922', '青　县', '130900');
INSERT INTO `mx_cn_area` VALUES ('185', '130923', '东光县', '130900');
INSERT INTO `mx_cn_area` VALUES ('186', '130924', '海兴县', '130900');
INSERT INTO `mx_cn_area` VALUES ('187', '130925', '盐山县', '130900');
INSERT INTO `mx_cn_area` VALUES ('188', '130926', '肃宁县', '130900');
INSERT INTO `mx_cn_area` VALUES ('189', '130927', '南皮县', '130900');
INSERT INTO `mx_cn_area` VALUES ('190', '130928', '吴桥县', '130900');
INSERT INTO `mx_cn_area` VALUES ('191', '130929', '献　县', '130900');
INSERT INTO `mx_cn_area` VALUES ('192', '130930', '孟村回族自治县', '130900');
INSERT INTO `mx_cn_area` VALUES ('193', '130981', '泊头市', '130900');
INSERT INTO `mx_cn_area` VALUES ('194', '130982', '任丘市', '130900');
INSERT INTO `mx_cn_area` VALUES ('195', '130983', '黄骅市', '130900');
INSERT INTO `mx_cn_area` VALUES ('196', '130984', '河间市', '130900');
INSERT INTO `mx_cn_area` VALUES ('197', '131001', '市辖区', '131000');
INSERT INTO `mx_cn_area` VALUES ('198', '131002', '安次区', '131000');
INSERT INTO `mx_cn_area` VALUES ('199', '131003', '广阳区', '131000');
INSERT INTO `mx_cn_area` VALUES ('200', '131022', '固安县', '131000');
INSERT INTO `mx_cn_area` VALUES ('201', '131023', '永清县', '131000');
INSERT INTO `mx_cn_area` VALUES ('202', '131024', '香河县', '131000');
INSERT INTO `mx_cn_area` VALUES ('203', '131025', '大城县', '131000');
INSERT INTO `mx_cn_area` VALUES ('204', '131026', '文安县', '131000');
INSERT INTO `mx_cn_area` VALUES ('205', '131028', '大厂回族自治县', '131000');
INSERT INTO `mx_cn_area` VALUES ('206', '131081', '霸州市', '131000');
INSERT INTO `mx_cn_area` VALUES ('207', '131082', '三河市', '131000');
INSERT INTO `mx_cn_area` VALUES ('208', '131101', '市辖区', '131100');
INSERT INTO `mx_cn_area` VALUES ('209', '131102', '桃城区', '131100');
INSERT INTO `mx_cn_area` VALUES ('210', '131121', '枣强县', '131100');
INSERT INTO `mx_cn_area` VALUES ('211', '131122', '武邑县', '131100');
INSERT INTO `mx_cn_area` VALUES ('212', '131123', '武强县', '131100');
INSERT INTO `mx_cn_area` VALUES ('213', '131124', '饶阳县', '131100');
INSERT INTO `mx_cn_area` VALUES ('214', '131125', '安平县', '131100');
INSERT INTO `mx_cn_area` VALUES ('215', '131126', '故城县', '131100');
INSERT INTO `mx_cn_area` VALUES ('216', '131127', '景　县', '131100');
INSERT INTO `mx_cn_area` VALUES ('217', '131128', '阜城县', '131100');
INSERT INTO `mx_cn_area` VALUES ('218', '131181', '冀州市', '131100');
INSERT INTO `mx_cn_area` VALUES ('219', '131182', '深州市', '131100');
INSERT INTO `mx_cn_area` VALUES ('220', '140101', '市辖区', '140100');
INSERT INTO `mx_cn_area` VALUES ('221', '140105', '小店区', '140100');
INSERT INTO `mx_cn_area` VALUES ('222', '140106', '迎泽区', '140100');
INSERT INTO `mx_cn_area` VALUES ('223', '140107', '杏花岭区', '140100');
INSERT INTO `mx_cn_area` VALUES ('224', '140108', '尖草坪区', '140100');
INSERT INTO `mx_cn_area` VALUES ('225', '140109', '万柏林区', '140100');
INSERT INTO `mx_cn_area` VALUES ('226', '140110', '晋源区', '140100');
INSERT INTO `mx_cn_area` VALUES ('227', '140121', '清徐县', '140100');
INSERT INTO `mx_cn_area` VALUES ('228', '140122', '阳曲县', '140100');
INSERT INTO `mx_cn_area` VALUES ('229', '140123', '娄烦县', '140100');
INSERT INTO `mx_cn_area` VALUES ('230', '140181', '古交市', '140100');
INSERT INTO `mx_cn_area` VALUES ('231', '140201', '市辖区', '140200');
INSERT INTO `mx_cn_area` VALUES ('232', '140202', '城　区', '140200');
INSERT INTO `mx_cn_area` VALUES ('233', '140203', '矿　区', '140200');
INSERT INTO `mx_cn_area` VALUES ('234', '140211', '南郊区', '140200');
INSERT INTO `mx_cn_area` VALUES ('235', '140212', '新荣区', '140200');
INSERT INTO `mx_cn_area` VALUES ('236', '140221', '阳高县', '140200');
INSERT INTO `mx_cn_area` VALUES ('237', '140222', '天镇县', '140200');
INSERT INTO `mx_cn_area` VALUES ('238', '140223', '广灵县', '140200');
INSERT INTO `mx_cn_area` VALUES ('239', '140224', '灵丘县', '140200');
INSERT INTO `mx_cn_area` VALUES ('240', '140225', '浑源县', '140200');
INSERT INTO `mx_cn_area` VALUES ('241', '140226', '左云县', '140200');
INSERT INTO `mx_cn_area` VALUES ('242', '140227', '大同县', '140200');
INSERT INTO `mx_cn_area` VALUES ('243', '140301', '市辖区', '140300');
INSERT INTO `mx_cn_area` VALUES ('244', '140302', '城　区', '140300');
INSERT INTO `mx_cn_area` VALUES ('245', '140303', '矿　区', '140300');
INSERT INTO `mx_cn_area` VALUES ('246', '140311', '郊　区', '140300');
INSERT INTO `mx_cn_area` VALUES ('247', '140321', '平定县', '140300');
INSERT INTO `mx_cn_area` VALUES ('248', '140322', '盂　县', '140300');
INSERT INTO `mx_cn_area` VALUES ('249', '140401', '市辖区', '140400');
INSERT INTO `mx_cn_area` VALUES ('250', '140402', '城　区', '140400');
INSERT INTO `mx_cn_area` VALUES ('251', '140411', '郊　区', '140400');
INSERT INTO `mx_cn_area` VALUES ('252', '140421', '长治县', '140400');
INSERT INTO `mx_cn_area` VALUES ('253', '140423', '襄垣县', '140400');
INSERT INTO `mx_cn_area` VALUES ('254', '140424', '屯留县', '140400');
INSERT INTO `mx_cn_area` VALUES ('255', '140425', '平顺县', '140400');
INSERT INTO `mx_cn_area` VALUES ('256', '140426', '黎城县', '140400');
INSERT INTO `mx_cn_area` VALUES ('257', '140427', '壶关县', '140400');
INSERT INTO `mx_cn_area` VALUES ('258', '140428', '长子县', '140400');
INSERT INTO `mx_cn_area` VALUES ('259', '140429', '武乡县', '140400');
INSERT INTO `mx_cn_area` VALUES ('260', '140430', '沁　县', '140400');
INSERT INTO `mx_cn_area` VALUES ('261', '140431', '沁源县', '140400');
INSERT INTO `mx_cn_area` VALUES ('262', '140481', '潞城市', '140400');
INSERT INTO `mx_cn_area` VALUES ('263', '140501', '市辖区', '140500');
INSERT INTO `mx_cn_area` VALUES ('264', '140502', '城　区', '140500');
INSERT INTO `mx_cn_area` VALUES ('265', '140521', '沁水县', '140500');
INSERT INTO `mx_cn_area` VALUES ('266', '140522', '阳城县', '140500');
INSERT INTO `mx_cn_area` VALUES ('267', '140524', '陵川县', '140500');
INSERT INTO `mx_cn_area` VALUES ('268', '140525', '泽州县', '140500');
INSERT INTO `mx_cn_area` VALUES ('269', '140581', '高平市', '140500');
INSERT INTO `mx_cn_area` VALUES ('270', '140601', '市辖区', '140600');
INSERT INTO `mx_cn_area` VALUES ('271', '140602', '朔城区', '140600');
INSERT INTO `mx_cn_area` VALUES ('272', '140603', '平鲁区', '140600');
INSERT INTO `mx_cn_area` VALUES ('273', '140621', '山阴县', '140600');
INSERT INTO `mx_cn_area` VALUES ('274', '140622', '应　县', '140600');
INSERT INTO `mx_cn_area` VALUES ('275', '140623', '右玉县', '140600');
INSERT INTO `mx_cn_area` VALUES ('276', '140624', '怀仁县', '140600');
INSERT INTO `mx_cn_area` VALUES ('277', '140701', '市辖区', '140700');
INSERT INTO `mx_cn_area` VALUES ('278', '140702', '榆次区', '140700');
INSERT INTO `mx_cn_area` VALUES ('279', '140721', '榆社县', '140700');
INSERT INTO `mx_cn_area` VALUES ('280', '140722', '左权县', '140700');
INSERT INTO `mx_cn_area` VALUES ('281', '140723', '和顺县', '140700');
INSERT INTO `mx_cn_area` VALUES ('282', '140724', '昔阳县', '140700');
INSERT INTO `mx_cn_area` VALUES ('283', '140725', '寿阳县', '140700');
INSERT INTO `mx_cn_area` VALUES ('284', '140726', '太谷县', '140700');
INSERT INTO `mx_cn_area` VALUES ('285', '140727', '祁　县', '140700');
INSERT INTO `mx_cn_area` VALUES ('286', '140728', '平遥县', '140700');
INSERT INTO `mx_cn_area` VALUES ('287', '140729', '灵石县', '140700');
INSERT INTO `mx_cn_area` VALUES ('288', '140781', '介休市', '140700');
INSERT INTO `mx_cn_area` VALUES ('289', '140801', '市辖区', '140800');
INSERT INTO `mx_cn_area` VALUES ('290', '140802', '盐湖区', '140800');
INSERT INTO `mx_cn_area` VALUES ('291', '140821', '临猗县', '140800');
INSERT INTO `mx_cn_area` VALUES ('292', '140822', '万荣县', '140800');
INSERT INTO `mx_cn_area` VALUES ('293', '140823', '闻喜县', '140800');
INSERT INTO `mx_cn_area` VALUES ('294', '140824', '稷山县', '140800');
INSERT INTO `mx_cn_area` VALUES ('295', '140825', '新绛县', '140800');
INSERT INTO `mx_cn_area` VALUES ('296', '140826', '绛　县', '140800');
INSERT INTO `mx_cn_area` VALUES ('297', '140827', '垣曲县', '140800');
INSERT INTO `mx_cn_area` VALUES ('298', '140828', '夏　县', '140800');
INSERT INTO `mx_cn_area` VALUES ('299', '140829', '平陆县', '140800');
INSERT INTO `mx_cn_area` VALUES ('300', '140830', '芮城县', '140800');
INSERT INTO `mx_cn_area` VALUES ('301', '140881', '永济市', '140800');
INSERT INTO `mx_cn_area` VALUES ('302', '140882', '河津市', '140800');
INSERT INTO `mx_cn_area` VALUES ('303', '140901', '市辖区', '140900');
INSERT INTO `mx_cn_area` VALUES ('304', '140902', '忻府区', '140900');
INSERT INTO `mx_cn_area` VALUES ('305', '140921', '定襄县', '140900');
INSERT INTO `mx_cn_area` VALUES ('306', '140922', '五台县', '140900');
INSERT INTO `mx_cn_area` VALUES ('307', '140923', '代　县', '140900');
INSERT INTO `mx_cn_area` VALUES ('308', '140924', '繁峙县', '140900');
INSERT INTO `mx_cn_area` VALUES ('309', '140925', '宁武县', '140900');
INSERT INTO `mx_cn_area` VALUES ('310', '140926', '静乐县', '140900');
INSERT INTO `mx_cn_area` VALUES ('311', '140927', '神池县', '140900');
INSERT INTO `mx_cn_area` VALUES ('312', '140928', '五寨县', '140900');
INSERT INTO `mx_cn_area` VALUES ('313', '140929', '岢岚县', '140900');
INSERT INTO `mx_cn_area` VALUES ('314', '140930', '河曲县', '140900');
INSERT INTO `mx_cn_area` VALUES ('315', '140931', '保德县', '140900');
INSERT INTO `mx_cn_area` VALUES ('316', '140932', '偏关县', '140900');
INSERT INTO `mx_cn_area` VALUES ('317', '140981', '原平市', '140900');
INSERT INTO `mx_cn_area` VALUES ('318', '141001', '市辖区', '141000');
INSERT INTO `mx_cn_area` VALUES ('319', '141002', '尧都区', '141000');
INSERT INTO `mx_cn_area` VALUES ('320', '141021', '曲沃县', '141000');
INSERT INTO `mx_cn_area` VALUES ('321', '141022', '翼城县', '141000');
INSERT INTO `mx_cn_area` VALUES ('322', '141023', '襄汾县', '141000');
INSERT INTO `mx_cn_area` VALUES ('323', '141024', '洪洞县', '141000');
INSERT INTO `mx_cn_area` VALUES ('324', '141025', '古　县', '141000');
INSERT INTO `mx_cn_area` VALUES ('325', '141026', '安泽县', '141000');
INSERT INTO `mx_cn_area` VALUES ('326', '141027', '浮山县', '141000');
INSERT INTO `mx_cn_area` VALUES ('327', '141028', '吉　县', '141000');
INSERT INTO `mx_cn_area` VALUES ('328', '141029', '乡宁县', '141000');
INSERT INTO `mx_cn_area` VALUES ('329', '141030', '大宁县', '141000');
INSERT INTO `mx_cn_area` VALUES ('330', '141031', '隰　县', '141000');
INSERT INTO `mx_cn_area` VALUES ('331', '141032', '永和县', '141000');
INSERT INTO `mx_cn_area` VALUES ('332', '141033', '蒲　县', '141000');
INSERT INTO `mx_cn_area` VALUES ('333', '141034', '汾西县', '141000');
INSERT INTO `mx_cn_area` VALUES ('334', '141081', '侯马市', '141000');
INSERT INTO `mx_cn_area` VALUES ('335', '141082', '霍州市', '141000');
INSERT INTO `mx_cn_area` VALUES ('336', '141101', '市辖区', '141100');
INSERT INTO `mx_cn_area` VALUES ('337', '141102', '离石区', '141100');
INSERT INTO `mx_cn_area` VALUES ('338', '141121', '文水县', '141100');
INSERT INTO `mx_cn_area` VALUES ('339', '141122', '交城县', '141100');
INSERT INTO `mx_cn_area` VALUES ('340', '141123', '兴　县', '141100');
INSERT INTO `mx_cn_area` VALUES ('341', '141124', '临　县', '141100');
INSERT INTO `mx_cn_area` VALUES ('342', '141125', '柳林县', '141100');
INSERT INTO `mx_cn_area` VALUES ('343', '141126', '石楼县', '141100');
INSERT INTO `mx_cn_area` VALUES ('344', '141127', '岚　县', '141100');
INSERT INTO `mx_cn_area` VALUES ('345', '141128', '方山县', '141100');
INSERT INTO `mx_cn_area` VALUES ('346', '141129', '中阳县', '141100');
INSERT INTO `mx_cn_area` VALUES ('347', '141130', '交口县', '141100');
INSERT INTO `mx_cn_area` VALUES ('348', '141181', '孝义市', '141100');
INSERT INTO `mx_cn_area` VALUES ('349', '141182', '汾阳市', '141100');
INSERT INTO `mx_cn_area` VALUES ('350', '150101', '市辖区', '150100');
INSERT INTO `mx_cn_area` VALUES ('351', '150102', '新城区', '150100');
INSERT INTO `mx_cn_area` VALUES ('352', '150103', '回民区', '150100');
INSERT INTO `mx_cn_area` VALUES ('353', '150104', '玉泉区', '150100');
INSERT INTO `mx_cn_area` VALUES ('354', '150105', '赛罕区', '150100');
INSERT INTO `mx_cn_area` VALUES ('355', '150121', '土默特左旗', '150100');
INSERT INTO `mx_cn_area` VALUES ('356', '150122', '托克托县', '150100');
INSERT INTO `mx_cn_area` VALUES ('357', '150123', '和林格尔县', '150100');
INSERT INTO `mx_cn_area` VALUES ('358', '150124', '清水河县', '150100');
INSERT INTO `mx_cn_area` VALUES ('359', '150125', '武川县', '150100');
INSERT INTO `mx_cn_area` VALUES ('360', '150201', '市辖区', '150200');
INSERT INTO `mx_cn_area` VALUES ('361', '150202', '东河区', '150200');
INSERT INTO `mx_cn_area` VALUES ('362', '150203', '昆都仑区', '150200');
INSERT INTO `mx_cn_area` VALUES ('363', '150204', '青山区', '150200');
INSERT INTO `mx_cn_area` VALUES ('364', '150205', '石拐区', '150200');
INSERT INTO `mx_cn_area` VALUES ('365', '150206', '白云矿区', '150200');
INSERT INTO `mx_cn_area` VALUES ('366', '150207', '九原区', '150200');
INSERT INTO `mx_cn_area` VALUES ('367', '150221', '土默特右旗', '150200');
INSERT INTO `mx_cn_area` VALUES ('368', '150222', '固阳县', '150200');
INSERT INTO `mx_cn_area` VALUES ('369', '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `mx_cn_area` VALUES ('370', '150301', '市辖区', '150300');
INSERT INTO `mx_cn_area` VALUES ('371', '150302', '海勃湾区', '150300');
INSERT INTO `mx_cn_area` VALUES ('372', '150303', '海南区', '150300');
INSERT INTO `mx_cn_area` VALUES ('373', '150304', '乌达区', '150300');
INSERT INTO `mx_cn_area` VALUES ('374', '150401', '市辖区', '150400');
INSERT INTO `mx_cn_area` VALUES ('375', '150402', '红山区', '150400');
INSERT INTO `mx_cn_area` VALUES ('376', '150403', '元宝山区', '150400');
INSERT INTO `mx_cn_area` VALUES ('377', '150404', '松山区', '150400');
INSERT INTO `mx_cn_area` VALUES ('378', '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('379', '150422', '巴林左旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('380', '150423', '巴林右旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('381', '150424', '林西县', '150400');
INSERT INTO `mx_cn_area` VALUES ('382', '150425', '克什克腾旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('383', '150426', '翁牛特旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('384', '150428', '喀喇沁旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('385', '150429', '宁城县', '150400');
INSERT INTO `mx_cn_area` VALUES ('386', '150430', '敖汉旗', '150400');
INSERT INTO `mx_cn_area` VALUES ('387', '150501', '市辖区', '150500');
INSERT INTO `mx_cn_area` VALUES ('388', '150502', '科尔沁区', '150500');
INSERT INTO `mx_cn_area` VALUES ('389', '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `mx_cn_area` VALUES ('390', '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `mx_cn_area` VALUES ('391', '150523', '开鲁县', '150500');
INSERT INTO `mx_cn_area` VALUES ('392', '150524', '库伦旗', '150500');
INSERT INTO `mx_cn_area` VALUES ('393', '150525', '奈曼旗', '150500');
INSERT INTO `mx_cn_area` VALUES ('394', '150526', '扎鲁特旗', '150500');
INSERT INTO `mx_cn_area` VALUES ('395', '150581', '霍林郭勒市', '150500');
INSERT INTO `mx_cn_area` VALUES ('396', '150602', '东胜区', '150600');
INSERT INTO `mx_cn_area` VALUES ('397', '150621', '达拉特旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('398', '150622', '准格尔旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('399', '150623', '鄂托克前旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('400', '150624', '鄂托克旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('401', '150625', '杭锦旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('402', '150626', '乌审旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('403', '150627', '伊金霍洛旗', '150600');
INSERT INTO `mx_cn_area` VALUES ('404', '150701', '市辖区', '150700');
INSERT INTO `mx_cn_area` VALUES ('405', '150702', '海拉尔区', '150700');
INSERT INTO `mx_cn_area` VALUES ('406', '150721', '阿荣旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('407', '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('408', '150723', '鄂伦春自治旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('409', '150724', '鄂温克族自治旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('410', '150725', '陈巴尔虎旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('411', '150726', '新巴尔虎左旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('412', '150727', '新巴尔虎右旗', '150700');
INSERT INTO `mx_cn_area` VALUES ('413', '150781', '满洲里市', '150700');
INSERT INTO `mx_cn_area` VALUES ('414', '150782', '牙克石市', '150700');
INSERT INTO `mx_cn_area` VALUES ('415', '150783', '扎兰屯市', '150700');
INSERT INTO `mx_cn_area` VALUES ('416', '150784', '额尔古纳市', '150700');
INSERT INTO `mx_cn_area` VALUES ('417', '150785', '根河市', '150700');
INSERT INTO `mx_cn_area` VALUES ('418', '150801', '市辖区', '150800');
INSERT INTO `mx_cn_area` VALUES ('419', '150802', '临河区', '150800');
INSERT INTO `mx_cn_area` VALUES ('420', '150821', '五原县', '150800');
INSERT INTO `mx_cn_area` VALUES ('421', '150822', '磴口县', '150800');
INSERT INTO `mx_cn_area` VALUES ('422', '150823', '乌拉特前旗', '150800');
INSERT INTO `mx_cn_area` VALUES ('423', '150824', '乌拉特中旗', '150800');
INSERT INTO `mx_cn_area` VALUES ('424', '150825', '乌拉特后旗', '150800');
INSERT INTO `mx_cn_area` VALUES ('425', '150826', '杭锦后旗', '150800');
INSERT INTO `mx_cn_area` VALUES ('426', '150901', '市辖区', '150900');
INSERT INTO `mx_cn_area` VALUES ('427', '150902', '集宁区', '150900');
INSERT INTO `mx_cn_area` VALUES ('428', '150921', '卓资县', '150900');
INSERT INTO `mx_cn_area` VALUES ('429', '150922', '化德县', '150900');
INSERT INTO `mx_cn_area` VALUES ('430', '150923', '商都县', '150900');
INSERT INTO `mx_cn_area` VALUES ('431', '150924', '兴和县', '150900');
INSERT INTO `mx_cn_area` VALUES ('432', '150925', '凉城县', '150900');
INSERT INTO `mx_cn_area` VALUES ('433', '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `mx_cn_area` VALUES ('434', '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `mx_cn_area` VALUES ('435', '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `mx_cn_area` VALUES ('436', '150929', '四子王旗', '150900');
INSERT INTO `mx_cn_area` VALUES ('437', '150981', '丰镇市', '150900');
INSERT INTO `mx_cn_area` VALUES ('438', '152201', '乌兰浩特市', '152200');
INSERT INTO `mx_cn_area` VALUES ('439', '152202', '阿尔山市', '152200');
INSERT INTO `mx_cn_area` VALUES ('440', '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `mx_cn_area` VALUES ('441', '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `mx_cn_area` VALUES ('442', '152223', '扎赉特旗', '152200');
INSERT INTO `mx_cn_area` VALUES ('443', '152224', '突泉县', '152200');
INSERT INTO `mx_cn_area` VALUES ('444', '152501', '二连浩特市', '152500');
INSERT INTO `mx_cn_area` VALUES ('445', '152502', '锡林浩特市', '152500');
INSERT INTO `mx_cn_area` VALUES ('446', '152522', '阿巴嘎旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('447', '152523', '苏尼特左旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('448', '152524', '苏尼特右旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('449', '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('450', '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('451', '152527', '太仆寺旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('452', '152528', '镶黄旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('453', '152529', '正镶白旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('454', '152530', '正蓝旗', '152500');
INSERT INTO `mx_cn_area` VALUES ('455', '152531', '多伦县', '152500');
INSERT INTO `mx_cn_area` VALUES ('456', '152921', '阿拉善左旗', '152900');
INSERT INTO `mx_cn_area` VALUES ('457', '152922', '阿拉善右旗', '152900');
INSERT INTO `mx_cn_area` VALUES ('458', '152923', '额济纳旗', '152900');
INSERT INTO `mx_cn_area` VALUES ('459', '210101', '市辖区', '210100');
INSERT INTO `mx_cn_area` VALUES ('460', '210102', '和平区', '210100');
INSERT INTO `mx_cn_area` VALUES ('461', '210103', '沈河区', '210100');
INSERT INTO `mx_cn_area` VALUES ('462', '210104', '大东区', '210100');
INSERT INTO `mx_cn_area` VALUES ('463', '210105', '皇姑区', '210100');
INSERT INTO `mx_cn_area` VALUES ('464', '210106', '铁西区', '210100');
INSERT INTO `mx_cn_area` VALUES ('465', '210111', '苏家屯区', '210100');
INSERT INTO `mx_cn_area` VALUES ('466', '210112', '东陵区', '210100');
INSERT INTO `mx_cn_area` VALUES ('467', '210113', '新城子区', '210100');
INSERT INTO `mx_cn_area` VALUES ('468', '210114', '于洪区', '210100');
INSERT INTO `mx_cn_area` VALUES ('469', '210122', '辽中县', '210100');
INSERT INTO `mx_cn_area` VALUES ('470', '210123', '康平县', '210100');
INSERT INTO `mx_cn_area` VALUES ('471', '210124', '法库县', '210100');
INSERT INTO `mx_cn_area` VALUES ('472', '210181', '新民市', '210100');
INSERT INTO `mx_cn_area` VALUES ('473', '210201', '市辖区', '210200');
INSERT INTO `mx_cn_area` VALUES ('474', '210202', '中山区', '210200');
INSERT INTO `mx_cn_area` VALUES ('475', '210203', '西岗区', '210200');
INSERT INTO `mx_cn_area` VALUES ('476', '210204', '沙河口区', '210200');
INSERT INTO `mx_cn_area` VALUES ('477', '210211', '甘井子区', '210200');
INSERT INTO `mx_cn_area` VALUES ('478', '210212', '旅顺口区', '210200');
INSERT INTO `mx_cn_area` VALUES ('479', '210213', '金州区', '210200');
INSERT INTO `mx_cn_area` VALUES ('480', '210224', '长海县', '210200');
INSERT INTO `mx_cn_area` VALUES ('481', '210281', '瓦房店市', '210200');
INSERT INTO `mx_cn_area` VALUES ('482', '210282', '普兰店市', '210200');
INSERT INTO `mx_cn_area` VALUES ('483', '210283', '庄河市', '210200');
INSERT INTO `mx_cn_area` VALUES ('484', '210301', '市辖区', '210300');
INSERT INTO `mx_cn_area` VALUES ('485', '210302', '铁东区', '210300');
INSERT INTO `mx_cn_area` VALUES ('486', '210303', '铁西区', '210300');
INSERT INTO `mx_cn_area` VALUES ('487', '210304', '立山区', '210300');
INSERT INTO `mx_cn_area` VALUES ('488', '210311', '千山区', '210300');
INSERT INTO `mx_cn_area` VALUES ('489', '210321', '台安县', '210300');
INSERT INTO `mx_cn_area` VALUES ('490', '210323', '岫岩满族自治县', '210300');
INSERT INTO `mx_cn_area` VALUES ('491', '210381', '海城市', '210300');
INSERT INTO `mx_cn_area` VALUES ('492', '210401', '市辖区', '210400');
INSERT INTO `mx_cn_area` VALUES ('493', '210402', '新抚区', '210400');
INSERT INTO `mx_cn_area` VALUES ('494', '210403', '东洲区', '210400');
INSERT INTO `mx_cn_area` VALUES ('495', '210404', '望花区', '210400');
INSERT INTO `mx_cn_area` VALUES ('496', '210411', '顺城区', '210400');
INSERT INTO `mx_cn_area` VALUES ('497', '210421', '抚顺县', '210400');
INSERT INTO `mx_cn_area` VALUES ('498', '210422', '新宾满族自治县', '210400');
INSERT INTO `mx_cn_area` VALUES ('499', '210423', '清原满族自治县', '210400');
INSERT INTO `mx_cn_area` VALUES ('500', '210501', '市辖区', '210500');
INSERT INTO `mx_cn_area` VALUES ('501', '210502', '平山区', '210500');
INSERT INTO `mx_cn_area` VALUES ('502', '210503', '溪湖区', '210500');
INSERT INTO `mx_cn_area` VALUES ('503', '210504', '明山区', '210500');
INSERT INTO `mx_cn_area` VALUES ('504', '210505', '南芬区', '210500');
INSERT INTO `mx_cn_area` VALUES ('505', '210521', '本溪满族自治县', '210500');
INSERT INTO `mx_cn_area` VALUES ('506', '210522', '桓仁满族自治县', '210500');
INSERT INTO `mx_cn_area` VALUES ('507', '210601', '市辖区', '210600');
INSERT INTO `mx_cn_area` VALUES ('508', '210602', '元宝区', '210600');
INSERT INTO `mx_cn_area` VALUES ('509', '210603', '振兴区', '210600');
INSERT INTO `mx_cn_area` VALUES ('510', '210604', '振安区', '210600');
INSERT INTO `mx_cn_area` VALUES ('511', '210624', '宽甸满族自治县', '210600');
INSERT INTO `mx_cn_area` VALUES ('512', '210681', '东港市', '210600');
INSERT INTO `mx_cn_area` VALUES ('513', '210682', '凤城市', '210600');
INSERT INTO `mx_cn_area` VALUES ('514', '210701', '市辖区', '210700');
INSERT INTO `mx_cn_area` VALUES ('515', '210702', '古塔区', '210700');
INSERT INTO `mx_cn_area` VALUES ('516', '210703', '凌河区', '210700');
INSERT INTO `mx_cn_area` VALUES ('517', '210711', '太和区', '210700');
INSERT INTO `mx_cn_area` VALUES ('518', '210726', '黑山县', '210700');
INSERT INTO `mx_cn_area` VALUES ('519', '210727', '义　县', '210700');
INSERT INTO `mx_cn_area` VALUES ('520', '210781', '凌海市', '210700');
INSERT INTO `mx_cn_area` VALUES ('521', '210782', '北宁市', '210700');
INSERT INTO `mx_cn_area` VALUES ('522', '210801', '市辖区', '210800');
INSERT INTO `mx_cn_area` VALUES ('523', '210802', '站前区', '210800');
INSERT INTO `mx_cn_area` VALUES ('524', '210803', '西市区', '210800');
INSERT INTO `mx_cn_area` VALUES ('525', '210804', '鲅鱼圈区', '210800');
INSERT INTO `mx_cn_area` VALUES ('526', '210811', '老边区', '210800');
INSERT INTO `mx_cn_area` VALUES ('527', '210881', '盖州市', '210800');
INSERT INTO `mx_cn_area` VALUES ('528', '210882', '大石桥市', '210800');
INSERT INTO `mx_cn_area` VALUES ('529', '210901', '市辖区', '210900');
INSERT INTO `mx_cn_area` VALUES ('530', '210902', '海州区', '210900');
INSERT INTO `mx_cn_area` VALUES ('531', '210903', '新邱区', '210900');
INSERT INTO `mx_cn_area` VALUES ('532', '210904', '太平区', '210900');
INSERT INTO `mx_cn_area` VALUES ('533', '210905', '清河门区', '210900');
INSERT INTO `mx_cn_area` VALUES ('534', '210911', '细河区', '210900');
INSERT INTO `mx_cn_area` VALUES ('535', '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `mx_cn_area` VALUES ('536', '210922', '彰武县', '210900');
INSERT INTO `mx_cn_area` VALUES ('537', '211001', '市辖区', '211000');
INSERT INTO `mx_cn_area` VALUES ('538', '211002', '白塔区', '211000');
INSERT INTO `mx_cn_area` VALUES ('539', '211003', '文圣区', '211000');
INSERT INTO `mx_cn_area` VALUES ('540', '211004', '宏伟区', '211000');
INSERT INTO `mx_cn_area` VALUES ('541', '211005', '弓长岭区', '211000');
INSERT INTO `mx_cn_area` VALUES ('542', '211011', '太子河区', '211000');
INSERT INTO `mx_cn_area` VALUES ('543', '211021', '辽阳县', '211000');
INSERT INTO `mx_cn_area` VALUES ('544', '211081', '灯塔市', '211000');
INSERT INTO `mx_cn_area` VALUES ('545', '211101', '市辖区', '211100');
INSERT INTO `mx_cn_area` VALUES ('546', '211102', '双台子区', '211100');
INSERT INTO `mx_cn_area` VALUES ('547', '211103', '兴隆台区', '211100');
INSERT INTO `mx_cn_area` VALUES ('548', '211121', '大洼县', '211100');
INSERT INTO `mx_cn_area` VALUES ('549', '211122', '盘山县', '211100');
INSERT INTO `mx_cn_area` VALUES ('550', '211201', '市辖区', '211200');
INSERT INTO `mx_cn_area` VALUES ('551', '211202', '银州区', '211200');
INSERT INTO `mx_cn_area` VALUES ('552', '211204', '清河区', '211200');
INSERT INTO `mx_cn_area` VALUES ('553', '211221', '铁岭县', '211200');
INSERT INTO `mx_cn_area` VALUES ('554', '211223', '西丰县', '211200');
INSERT INTO `mx_cn_area` VALUES ('555', '211224', '昌图县', '211200');
INSERT INTO `mx_cn_area` VALUES ('556', '211281', '调兵山市', '211200');
INSERT INTO `mx_cn_area` VALUES ('557', '211282', '开原市', '211200');
INSERT INTO `mx_cn_area` VALUES ('558', '211301', '市辖区', '211300');
INSERT INTO `mx_cn_area` VALUES ('559', '211302', '双塔区', '211300');
INSERT INTO `mx_cn_area` VALUES ('560', '211303', '龙城区', '211300');
INSERT INTO `mx_cn_area` VALUES ('561', '211321', '朝阳县', '211300');
INSERT INTO `mx_cn_area` VALUES ('562', '211322', '建平县', '211300');
INSERT INTO `mx_cn_area` VALUES ('563', '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `mx_cn_area` VALUES ('564', '211381', '北票市', '211300');
INSERT INTO `mx_cn_area` VALUES ('565', '211382', '凌源市', '211300');
INSERT INTO `mx_cn_area` VALUES ('566', '211401', '市辖区', '211400');
INSERT INTO `mx_cn_area` VALUES ('567', '211402', '连山区', '211400');
INSERT INTO `mx_cn_area` VALUES ('568', '211403', '龙港区', '211400');
INSERT INTO `mx_cn_area` VALUES ('569', '211404', '南票区', '211400');
INSERT INTO `mx_cn_area` VALUES ('570', '211421', '绥中县', '211400');
INSERT INTO `mx_cn_area` VALUES ('571', '211422', '建昌县', '211400');
INSERT INTO `mx_cn_area` VALUES ('572', '211481', '兴城市', '211400');
INSERT INTO `mx_cn_area` VALUES ('573', '220101', '市辖区', '220100');
INSERT INTO `mx_cn_area` VALUES ('574', '220102', '南关区', '220100');
INSERT INTO `mx_cn_area` VALUES ('575', '220103', '宽城区', '220100');
INSERT INTO `mx_cn_area` VALUES ('576', '220104', '朝阳区', '220100');
INSERT INTO `mx_cn_area` VALUES ('577', '220105', '二道区', '220100');
INSERT INTO `mx_cn_area` VALUES ('578', '220106', '绿园区', '220100');
INSERT INTO `mx_cn_area` VALUES ('579', '220112', '双阳区', '220100');
INSERT INTO `mx_cn_area` VALUES ('580', '220122', '农安县', '220100');
INSERT INTO `mx_cn_area` VALUES ('581', '220181', '九台市', '220100');
INSERT INTO `mx_cn_area` VALUES ('582', '220182', '榆树市', '220100');
INSERT INTO `mx_cn_area` VALUES ('583', '220183', '德惠市', '220100');
INSERT INTO `mx_cn_area` VALUES ('584', '220201', '市辖区', '220200');
INSERT INTO `mx_cn_area` VALUES ('585', '220202', '昌邑区', '220200');
INSERT INTO `mx_cn_area` VALUES ('586', '220203', '龙潭区', '220200');
INSERT INTO `mx_cn_area` VALUES ('587', '220204', '船营区', '220200');
INSERT INTO `mx_cn_area` VALUES ('588', '220211', '丰满区', '220200');
INSERT INTO `mx_cn_area` VALUES ('589', '220221', '永吉县', '220200');
INSERT INTO `mx_cn_area` VALUES ('590', '220281', '蛟河市', '220200');
INSERT INTO `mx_cn_area` VALUES ('591', '220282', '桦甸市', '220200');
INSERT INTO `mx_cn_area` VALUES ('592', '220283', '舒兰市', '220200');
INSERT INTO `mx_cn_area` VALUES ('593', '220284', '磐石市', '220200');
INSERT INTO `mx_cn_area` VALUES ('594', '220301', '市辖区', '220300');
INSERT INTO `mx_cn_area` VALUES ('595', '220302', '铁西区', '220300');
INSERT INTO `mx_cn_area` VALUES ('596', '220303', '铁东区', '220300');
INSERT INTO `mx_cn_area` VALUES ('597', '220322', '梨树县', '220300');
INSERT INTO `mx_cn_area` VALUES ('598', '220323', '伊通满族自治县', '220300');
INSERT INTO `mx_cn_area` VALUES ('599', '220381', '公主岭市', '220300');
INSERT INTO `mx_cn_area` VALUES ('600', '220382', '双辽市', '220300');
INSERT INTO `mx_cn_area` VALUES ('601', '220401', '市辖区', '220400');
INSERT INTO `mx_cn_area` VALUES ('602', '220402', '龙山区', '220400');
INSERT INTO `mx_cn_area` VALUES ('603', '220403', '西安区', '220400');
INSERT INTO `mx_cn_area` VALUES ('604', '220421', '东丰县', '220400');
INSERT INTO `mx_cn_area` VALUES ('605', '220422', '东辽县', '220400');
INSERT INTO `mx_cn_area` VALUES ('606', '220501', '市辖区', '220500');
INSERT INTO `mx_cn_area` VALUES ('607', '220502', '东昌区', '220500');
INSERT INTO `mx_cn_area` VALUES ('608', '220503', '二道江区', '220500');
INSERT INTO `mx_cn_area` VALUES ('609', '220521', '通化县', '220500');
INSERT INTO `mx_cn_area` VALUES ('610', '220523', '辉南县', '220500');
INSERT INTO `mx_cn_area` VALUES ('611', '220524', '柳河县', '220500');
INSERT INTO `mx_cn_area` VALUES ('612', '220581', '梅河口市', '220500');
INSERT INTO `mx_cn_area` VALUES ('613', '220582', '集安市', '220500');
INSERT INTO `mx_cn_area` VALUES ('614', '220601', '市辖区', '220600');
INSERT INTO `mx_cn_area` VALUES ('615', '220602', '八道江区', '220600');
INSERT INTO `mx_cn_area` VALUES ('616', '220621', '抚松县', '220600');
INSERT INTO `mx_cn_area` VALUES ('617', '220622', '靖宇县', '220600');
INSERT INTO `mx_cn_area` VALUES ('618', '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `mx_cn_area` VALUES ('619', '220625', '江源县', '220600');
INSERT INTO `mx_cn_area` VALUES ('620', '220681', '临江市', '220600');
INSERT INTO `mx_cn_area` VALUES ('621', '220701', '市辖区', '220700');
INSERT INTO `mx_cn_area` VALUES ('622', '220702', '宁江区', '220700');
INSERT INTO `mx_cn_area` VALUES ('623', '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `mx_cn_area` VALUES ('624', '220722', '长岭县', '220700');
INSERT INTO `mx_cn_area` VALUES ('625', '220723', '乾安县', '220700');
INSERT INTO `mx_cn_area` VALUES ('626', '220724', '扶余县', '220700');
INSERT INTO `mx_cn_area` VALUES ('627', '220801', '市辖区', '220800');
INSERT INTO `mx_cn_area` VALUES ('628', '220802', '洮北区', '220800');
INSERT INTO `mx_cn_area` VALUES ('629', '220821', '镇赉县', '220800');
INSERT INTO `mx_cn_area` VALUES ('630', '220822', '通榆县', '220800');
INSERT INTO `mx_cn_area` VALUES ('631', '220881', '洮南市', '220800');
INSERT INTO `mx_cn_area` VALUES ('632', '220882', '大安市', '220800');
INSERT INTO `mx_cn_area` VALUES ('633', '222401', '延吉市', '222400');
INSERT INTO `mx_cn_area` VALUES ('634', '222402', '图们市', '222400');
INSERT INTO `mx_cn_area` VALUES ('635', '222403', '敦化市', '222400');
INSERT INTO `mx_cn_area` VALUES ('636', '222404', '珲春市', '222400');
INSERT INTO `mx_cn_area` VALUES ('637', '222405', '龙井市', '222400');
INSERT INTO `mx_cn_area` VALUES ('638', '222406', '和龙市', '222400');
INSERT INTO `mx_cn_area` VALUES ('639', '222424', '汪清县', '222400');
INSERT INTO `mx_cn_area` VALUES ('640', '222426', '安图县', '222400');
INSERT INTO `mx_cn_area` VALUES ('641', '230101', '市辖区', '230100');
INSERT INTO `mx_cn_area` VALUES ('642', '230102', '道里区', '230100');
INSERT INTO `mx_cn_area` VALUES ('643', '230103', '南岗区', '230100');
INSERT INTO `mx_cn_area` VALUES ('644', '230104', '道外区', '230100');
INSERT INTO `mx_cn_area` VALUES ('645', '230106', '香坊区', '230100');
INSERT INTO `mx_cn_area` VALUES ('646', '230107', '动力区', '230100');
INSERT INTO `mx_cn_area` VALUES ('647', '230108', '平房区', '230100');
INSERT INTO `mx_cn_area` VALUES ('648', '230109', '松北区', '230100');
INSERT INTO `mx_cn_area` VALUES ('649', '230111', '呼兰区', '230100');
INSERT INTO `mx_cn_area` VALUES ('650', '230123', '依兰县', '230100');
INSERT INTO `mx_cn_area` VALUES ('651', '230124', '方正县', '230100');
INSERT INTO `mx_cn_area` VALUES ('652', '230125', '宾　县', '230100');
INSERT INTO `mx_cn_area` VALUES ('653', '230126', '巴彦县', '230100');
INSERT INTO `mx_cn_area` VALUES ('654', '230127', '木兰县', '230100');
INSERT INTO `mx_cn_area` VALUES ('655', '230128', '通河县', '230100');
INSERT INTO `mx_cn_area` VALUES ('656', '230129', '延寿县', '230100');
INSERT INTO `mx_cn_area` VALUES ('657', '230181', '阿城市', '230100');
INSERT INTO `mx_cn_area` VALUES ('658', '230182', '双城市', '230100');
INSERT INTO `mx_cn_area` VALUES ('659', '230183', '尚志市', '230100');
INSERT INTO `mx_cn_area` VALUES ('660', '230184', '五常市', '230100');
INSERT INTO `mx_cn_area` VALUES ('661', '230201', '市辖区', '230200');
INSERT INTO `mx_cn_area` VALUES ('662', '230202', '龙沙区', '230200');
INSERT INTO `mx_cn_area` VALUES ('663', '230203', '建华区', '230200');
INSERT INTO `mx_cn_area` VALUES ('664', '230204', '铁锋区', '230200');
INSERT INTO `mx_cn_area` VALUES ('665', '230205', '昂昂溪区', '230200');
INSERT INTO `mx_cn_area` VALUES ('666', '230206', '富拉尔基区', '230200');
INSERT INTO `mx_cn_area` VALUES ('667', '230207', '碾子山区', '230200');
INSERT INTO `mx_cn_area` VALUES ('668', '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `mx_cn_area` VALUES ('669', '230221', '龙江县', '230200');
INSERT INTO `mx_cn_area` VALUES ('670', '230223', '依安县', '230200');
INSERT INTO `mx_cn_area` VALUES ('671', '230224', '泰来县', '230200');
INSERT INTO `mx_cn_area` VALUES ('672', '230225', '甘南县', '230200');
INSERT INTO `mx_cn_area` VALUES ('673', '230227', '富裕县', '230200');
INSERT INTO `mx_cn_area` VALUES ('674', '230229', '克山县', '230200');
INSERT INTO `mx_cn_area` VALUES ('675', '230230', '克东县', '230200');
INSERT INTO `mx_cn_area` VALUES ('676', '230231', '拜泉县', '230200');
INSERT INTO `mx_cn_area` VALUES ('677', '230281', '讷河市', '230200');
INSERT INTO `mx_cn_area` VALUES ('678', '230301', '市辖区', '230300');
INSERT INTO `mx_cn_area` VALUES ('679', '230302', '鸡冠区', '230300');
INSERT INTO `mx_cn_area` VALUES ('680', '230303', '恒山区', '230300');
INSERT INTO `mx_cn_area` VALUES ('681', '230304', '滴道区', '230300');
INSERT INTO `mx_cn_area` VALUES ('682', '230305', '梨树区', '230300');
INSERT INTO `mx_cn_area` VALUES ('683', '230306', '城子河区', '230300');
INSERT INTO `mx_cn_area` VALUES ('684', '230307', '麻山区', '230300');
INSERT INTO `mx_cn_area` VALUES ('685', '230321', '鸡东县', '230300');
INSERT INTO `mx_cn_area` VALUES ('686', '230381', '虎林市', '230300');
INSERT INTO `mx_cn_area` VALUES ('687', '230382', '密山市', '230300');
INSERT INTO `mx_cn_area` VALUES ('688', '230401', '市辖区', '230400');
INSERT INTO `mx_cn_area` VALUES ('689', '230402', '向阳区', '230400');
INSERT INTO `mx_cn_area` VALUES ('690', '230403', '工农区', '230400');
INSERT INTO `mx_cn_area` VALUES ('691', '230404', '南山区', '230400');
INSERT INTO `mx_cn_area` VALUES ('692', '230405', '兴安区', '230400');
INSERT INTO `mx_cn_area` VALUES ('693', '230406', '东山区', '230400');
INSERT INTO `mx_cn_area` VALUES ('694', '230407', '兴山区', '230400');
INSERT INTO `mx_cn_area` VALUES ('695', '230421', '萝北县', '230400');
INSERT INTO `mx_cn_area` VALUES ('696', '230422', '绥滨县', '230400');
INSERT INTO `mx_cn_area` VALUES ('697', '230501', '市辖区', '230500');
INSERT INTO `mx_cn_area` VALUES ('698', '230502', '尖山区', '230500');
INSERT INTO `mx_cn_area` VALUES ('699', '230503', '岭东区', '230500');
INSERT INTO `mx_cn_area` VALUES ('700', '230505', '四方台区', '230500');
INSERT INTO `mx_cn_area` VALUES ('701', '230506', '宝山区', '230500');
INSERT INTO `mx_cn_area` VALUES ('702', '230521', '集贤县', '230500');
INSERT INTO `mx_cn_area` VALUES ('703', '230522', '友谊县', '230500');
INSERT INTO `mx_cn_area` VALUES ('704', '230523', '宝清县', '230500');
INSERT INTO `mx_cn_area` VALUES ('705', '230524', '饶河县', '230500');
INSERT INTO `mx_cn_area` VALUES ('706', '230601', '市辖区', '230600');
INSERT INTO `mx_cn_area` VALUES ('707', '230602', '萨尔图区', '230600');
INSERT INTO `mx_cn_area` VALUES ('708', '230603', '龙凤区', '230600');
INSERT INTO `mx_cn_area` VALUES ('709', '230604', '让胡路区', '230600');
INSERT INTO `mx_cn_area` VALUES ('710', '230605', '红岗区', '230600');
INSERT INTO `mx_cn_area` VALUES ('711', '230606', '大同区', '230600');
INSERT INTO `mx_cn_area` VALUES ('712', '230621', '肇州县', '230600');
INSERT INTO `mx_cn_area` VALUES ('713', '230622', '肇源县', '230600');
INSERT INTO `mx_cn_area` VALUES ('714', '230623', '林甸县', '230600');
INSERT INTO `mx_cn_area` VALUES ('715', '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `mx_cn_area` VALUES ('716', '230701', '市辖区', '230700');
INSERT INTO `mx_cn_area` VALUES ('717', '230702', '伊春区', '230700');
INSERT INTO `mx_cn_area` VALUES ('718', '230703', '南岔区', '230700');
INSERT INTO `mx_cn_area` VALUES ('719', '230704', '友好区', '230700');
INSERT INTO `mx_cn_area` VALUES ('720', '230705', '西林区', '230700');
INSERT INTO `mx_cn_area` VALUES ('721', '230706', '翠峦区', '230700');
INSERT INTO `mx_cn_area` VALUES ('722', '230707', '新青区', '230700');
INSERT INTO `mx_cn_area` VALUES ('723', '230708', '美溪区', '230700');
INSERT INTO `mx_cn_area` VALUES ('724', '230709', '金山屯区', '230700');
INSERT INTO `mx_cn_area` VALUES ('725', '230710', '五营区', '230700');
INSERT INTO `mx_cn_area` VALUES ('726', '230711', '乌马河区', '230700');
INSERT INTO `mx_cn_area` VALUES ('727', '230712', '汤旺河区', '230700');
INSERT INTO `mx_cn_area` VALUES ('728', '230713', '带岭区', '230700');
INSERT INTO `mx_cn_area` VALUES ('729', '230714', '乌伊岭区', '230700');
INSERT INTO `mx_cn_area` VALUES ('730', '230715', '红星区', '230700');
INSERT INTO `mx_cn_area` VALUES ('731', '230716', '上甘岭区', '230700');
INSERT INTO `mx_cn_area` VALUES ('732', '230722', '嘉荫县', '230700');
INSERT INTO `mx_cn_area` VALUES ('733', '230781', '铁力市', '230700');
INSERT INTO `mx_cn_area` VALUES ('734', '230801', '市辖区', '230800');
INSERT INTO `mx_cn_area` VALUES ('735', '230802', '永红区', '230800');
INSERT INTO `mx_cn_area` VALUES ('736', '230803', '向阳区', '230800');
INSERT INTO `mx_cn_area` VALUES ('737', '230804', '前进区', '230800');
INSERT INTO `mx_cn_area` VALUES ('738', '230805', '东风区', '230800');
INSERT INTO `mx_cn_area` VALUES ('739', '230811', '郊　区', '230800');
INSERT INTO `mx_cn_area` VALUES ('740', '230822', '桦南县', '230800');
INSERT INTO `mx_cn_area` VALUES ('741', '230826', '桦川县', '230800');
INSERT INTO `mx_cn_area` VALUES ('742', '230828', '汤原县', '230800');
INSERT INTO `mx_cn_area` VALUES ('743', '230833', '抚远县', '230800');
INSERT INTO `mx_cn_area` VALUES ('744', '230881', '同江市', '230800');
INSERT INTO `mx_cn_area` VALUES ('745', '230882', '富锦市', '230800');
INSERT INTO `mx_cn_area` VALUES ('746', '230901', '市辖区', '230900');
INSERT INTO `mx_cn_area` VALUES ('747', '230902', '新兴区', '230900');
INSERT INTO `mx_cn_area` VALUES ('748', '230903', '桃山区', '230900');
INSERT INTO `mx_cn_area` VALUES ('749', '230904', '茄子河区', '230900');
INSERT INTO `mx_cn_area` VALUES ('750', '230921', '勃利县', '230900');
INSERT INTO `mx_cn_area` VALUES ('751', '231001', '市辖区', '231000');
INSERT INTO `mx_cn_area` VALUES ('752', '231002', '东安区', '231000');
INSERT INTO `mx_cn_area` VALUES ('753', '231003', '阳明区', '231000');
INSERT INTO `mx_cn_area` VALUES ('754', '231004', '爱民区', '231000');
INSERT INTO `mx_cn_area` VALUES ('755', '231005', '西安区', '231000');
INSERT INTO `mx_cn_area` VALUES ('756', '231024', '东宁县', '231000');
INSERT INTO `mx_cn_area` VALUES ('757', '231025', '林口县', '231000');
INSERT INTO `mx_cn_area` VALUES ('758', '231081', '绥芬河市', '231000');
INSERT INTO `mx_cn_area` VALUES ('759', '231083', '海林市', '231000');
INSERT INTO `mx_cn_area` VALUES ('760', '231084', '宁安市', '231000');
INSERT INTO `mx_cn_area` VALUES ('761', '231085', '穆棱市', '231000');
INSERT INTO `mx_cn_area` VALUES ('762', '231101', '市辖区', '231100');
INSERT INTO `mx_cn_area` VALUES ('763', '231102', '爱辉区', '231100');
INSERT INTO `mx_cn_area` VALUES ('764', '231121', '嫩江县', '231100');
INSERT INTO `mx_cn_area` VALUES ('765', '231123', '逊克县', '231100');
INSERT INTO `mx_cn_area` VALUES ('766', '231124', '孙吴县', '231100');
INSERT INTO `mx_cn_area` VALUES ('767', '231181', '北安市', '231100');
INSERT INTO `mx_cn_area` VALUES ('768', '231182', '五大连池市', '231100');
INSERT INTO `mx_cn_area` VALUES ('769', '231201', '市辖区', '231200');
INSERT INTO `mx_cn_area` VALUES ('770', '231202', '北林区', '231200');
INSERT INTO `mx_cn_area` VALUES ('771', '231221', '望奎县', '231200');
INSERT INTO `mx_cn_area` VALUES ('772', '231222', '兰西县', '231200');
INSERT INTO `mx_cn_area` VALUES ('773', '231223', '青冈县', '231200');
INSERT INTO `mx_cn_area` VALUES ('774', '231224', '庆安县', '231200');
INSERT INTO `mx_cn_area` VALUES ('775', '231225', '明水县', '231200');
INSERT INTO `mx_cn_area` VALUES ('776', '231226', '绥棱县', '231200');
INSERT INTO `mx_cn_area` VALUES ('777', '231281', '安达市', '231200');
INSERT INTO `mx_cn_area` VALUES ('778', '231282', '肇东市', '231200');
INSERT INTO `mx_cn_area` VALUES ('779', '231283', '海伦市', '231200');
INSERT INTO `mx_cn_area` VALUES ('780', '232721', '呼玛县', '232700');
INSERT INTO `mx_cn_area` VALUES ('781', '232722', '塔河县', '232700');
INSERT INTO `mx_cn_area` VALUES ('782', '232723', '漠河县', '232700');
INSERT INTO `mx_cn_area` VALUES ('783', '310101', '黄浦区', '310100');
INSERT INTO `mx_cn_area` VALUES ('784', '310103', '卢湾区', '310100');
INSERT INTO `mx_cn_area` VALUES ('785', '310104', '徐汇区', '310100');
INSERT INTO `mx_cn_area` VALUES ('786', '310105', '长宁区', '310100');
INSERT INTO `mx_cn_area` VALUES ('787', '310106', '静安区', '310100');
INSERT INTO `mx_cn_area` VALUES ('788', '310107', '普陀区', '310100');
INSERT INTO `mx_cn_area` VALUES ('789', '310108', '闸北区', '310100');
INSERT INTO `mx_cn_area` VALUES ('790', '310109', '虹口区', '310100');
INSERT INTO `mx_cn_area` VALUES ('791', '310110', '杨浦区', '310100');
INSERT INTO `mx_cn_area` VALUES ('792', '310112', '闵行区', '310100');
INSERT INTO `mx_cn_area` VALUES ('793', '310113', '宝山区', '310100');
INSERT INTO `mx_cn_area` VALUES ('794', '310114', '嘉定区', '310100');
INSERT INTO `mx_cn_area` VALUES ('795', '310115', '浦东新区', '310100');
INSERT INTO `mx_cn_area` VALUES ('796', '310116', '金山区', '310100');
INSERT INTO `mx_cn_area` VALUES ('797', '310117', '松江区', '310100');
INSERT INTO `mx_cn_area` VALUES ('798', '310118', '青浦区', '310100');
INSERT INTO `mx_cn_area` VALUES ('799', '310119', '南汇区', '310100');
INSERT INTO `mx_cn_area` VALUES ('800', '310120', '奉贤区', '310100');
INSERT INTO `mx_cn_area` VALUES ('801', '310230', '崇明县', '310200');
INSERT INTO `mx_cn_area` VALUES ('802', '320101', '市辖区', '320100');
INSERT INTO `mx_cn_area` VALUES ('803', '320102', '玄武区', '320100');
INSERT INTO `mx_cn_area` VALUES ('804', '320103', '白下区', '320100');
INSERT INTO `mx_cn_area` VALUES ('805', '320104', '秦淮区', '320100');
INSERT INTO `mx_cn_area` VALUES ('806', '320105', '建邺区', '320100');
INSERT INTO `mx_cn_area` VALUES ('807', '320106', '鼓楼区', '320100');
INSERT INTO `mx_cn_area` VALUES ('808', '320107', '下关区', '320100');
INSERT INTO `mx_cn_area` VALUES ('809', '320111', '浦口区', '320100');
INSERT INTO `mx_cn_area` VALUES ('810', '320113', '栖霞区', '320100');
INSERT INTO `mx_cn_area` VALUES ('811', '320114', '雨花台区', '320100');
INSERT INTO `mx_cn_area` VALUES ('812', '320115', '江宁区', '320100');
INSERT INTO `mx_cn_area` VALUES ('813', '320116', '六合区', '320100');
INSERT INTO `mx_cn_area` VALUES ('814', '320124', '溧水县', '320100');
INSERT INTO `mx_cn_area` VALUES ('815', '320125', '高淳县', '320100');
INSERT INTO `mx_cn_area` VALUES ('816', '320201', '市辖区', '320200');
INSERT INTO `mx_cn_area` VALUES ('817', '320202', '崇安区', '320200');
INSERT INTO `mx_cn_area` VALUES ('818', '320203', '南长区', '320200');
INSERT INTO `mx_cn_area` VALUES ('819', '320204', '北塘区', '320200');
INSERT INTO `mx_cn_area` VALUES ('820', '320205', '锡山区', '320200');
INSERT INTO `mx_cn_area` VALUES ('821', '320206', '惠山区', '320200');
INSERT INTO `mx_cn_area` VALUES ('822', '320211', '滨湖区', '320200');
INSERT INTO `mx_cn_area` VALUES ('823', '320281', '江阴市', '320200');
INSERT INTO `mx_cn_area` VALUES ('824', '320282', '宜兴市', '320200');
INSERT INTO `mx_cn_area` VALUES ('825', '320301', '市辖区', '320300');
INSERT INTO `mx_cn_area` VALUES ('826', '320302', '鼓楼区', '320300');
INSERT INTO `mx_cn_area` VALUES ('827', '320303', '云龙区', '320300');
INSERT INTO `mx_cn_area` VALUES ('828', '320304', '九里区', '320300');
INSERT INTO `mx_cn_area` VALUES ('829', '320305', '贾汪区', '320300');
INSERT INTO `mx_cn_area` VALUES ('830', '320311', '泉山区', '320300');
INSERT INTO `mx_cn_area` VALUES ('831', '320321', '丰　县', '320300');
INSERT INTO `mx_cn_area` VALUES ('832', '320322', '沛　县', '320300');
INSERT INTO `mx_cn_area` VALUES ('833', '320323', '铜山县', '320300');
INSERT INTO `mx_cn_area` VALUES ('834', '320324', '睢宁县', '320300');
INSERT INTO `mx_cn_area` VALUES ('835', '320381', '新沂市', '320300');
INSERT INTO `mx_cn_area` VALUES ('836', '320382', '邳州市', '320300');
INSERT INTO `mx_cn_area` VALUES ('837', '320401', '市辖区', '320400');
INSERT INTO `mx_cn_area` VALUES ('838', '320402', '天宁区', '320400');
INSERT INTO `mx_cn_area` VALUES ('839', '320404', '钟楼区', '320400');
INSERT INTO `mx_cn_area` VALUES ('840', '320405', '戚墅堰区', '320400');
INSERT INTO `mx_cn_area` VALUES ('841', '320411', '新北区', '320400');
INSERT INTO `mx_cn_area` VALUES ('842', '320412', '武进区', '320400');
INSERT INTO `mx_cn_area` VALUES ('843', '320481', '溧阳市', '320400');
INSERT INTO `mx_cn_area` VALUES ('844', '320482', '金坛市', '320400');
INSERT INTO `mx_cn_area` VALUES ('845', '320501', '市辖区', '320500');
INSERT INTO `mx_cn_area` VALUES ('846', '320502', '沧浪区', '320500');
INSERT INTO `mx_cn_area` VALUES ('847', '320503', '平江区', '320500');
INSERT INTO `mx_cn_area` VALUES ('848', '320504', '金阊区', '320500');
INSERT INTO `mx_cn_area` VALUES ('849', '320505', '虎丘区', '320500');
INSERT INTO `mx_cn_area` VALUES ('850', '320506', '吴中区', '320500');
INSERT INTO `mx_cn_area` VALUES ('851', '320507', '相城区', '320500');
INSERT INTO `mx_cn_area` VALUES ('852', '320581', '常熟市', '320500');
INSERT INTO `mx_cn_area` VALUES ('853', '320582', '张家港市', '320500');
INSERT INTO `mx_cn_area` VALUES ('854', '320583', '昆山市', '320500');
INSERT INTO `mx_cn_area` VALUES ('855', '320584', '吴江市', '320500');
INSERT INTO `mx_cn_area` VALUES ('856', '320585', '太仓市', '320500');
INSERT INTO `mx_cn_area` VALUES ('857', '320601', '市辖区', '320600');
INSERT INTO `mx_cn_area` VALUES ('858', '320602', '崇川区', '320600');
INSERT INTO `mx_cn_area` VALUES ('859', '320611', '港闸区', '320600');
INSERT INTO `mx_cn_area` VALUES ('860', '320621', '海安县', '320600');
INSERT INTO `mx_cn_area` VALUES ('861', '320623', '如东县', '320600');
INSERT INTO `mx_cn_area` VALUES ('862', '320681', '启东市', '320600');
INSERT INTO `mx_cn_area` VALUES ('863', '320682', '如皋市', '320600');
INSERT INTO `mx_cn_area` VALUES ('864', '320683', '通州市', '320600');
INSERT INTO `mx_cn_area` VALUES ('865', '320684', '海门市', '320600');
INSERT INTO `mx_cn_area` VALUES ('866', '320701', '市辖区', '320700');
INSERT INTO `mx_cn_area` VALUES ('867', '320703', '连云区', '320700');
INSERT INTO `mx_cn_area` VALUES ('868', '320705', '新浦区', '320700');
INSERT INTO `mx_cn_area` VALUES ('869', '320706', '海州区', '320700');
INSERT INTO `mx_cn_area` VALUES ('870', '320721', '赣榆县', '320700');
INSERT INTO `mx_cn_area` VALUES ('871', '320722', '东海县', '320700');
INSERT INTO `mx_cn_area` VALUES ('872', '320723', '灌云县', '320700');
INSERT INTO `mx_cn_area` VALUES ('873', '320724', '灌南县', '320700');
INSERT INTO `mx_cn_area` VALUES ('874', '320801', '市辖区', '320800');
INSERT INTO `mx_cn_area` VALUES ('875', '320802', '清河区', '320800');
INSERT INTO `mx_cn_area` VALUES ('876', '320803', '楚州区', '320800');
INSERT INTO `mx_cn_area` VALUES ('877', '320804', '淮阴区', '320800');
INSERT INTO `mx_cn_area` VALUES ('878', '320811', '清浦区', '320800');
INSERT INTO `mx_cn_area` VALUES ('879', '320826', '涟水县', '320800');
INSERT INTO `mx_cn_area` VALUES ('880', '320829', '洪泽县', '320800');
INSERT INTO `mx_cn_area` VALUES ('881', '320830', '盱眙县', '320800');
INSERT INTO `mx_cn_area` VALUES ('882', '320831', '金湖县', '320800');
INSERT INTO `mx_cn_area` VALUES ('883', '320901', '市辖区', '320900');
INSERT INTO `mx_cn_area` VALUES ('884', '320902', '亭湖区', '320900');
INSERT INTO `mx_cn_area` VALUES ('885', '320903', '盐都区', '320900');
INSERT INTO `mx_cn_area` VALUES ('886', '320921', '响水县', '320900');
INSERT INTO `mx_cn_area` VALUES ('887', '320922', '滨海县', '320900');
INSERT INTO `mx_cn_area` VALUES ('888', '320923', '阜宁县', '320900');
INSERT INTO `mx_cn_area` VALUES ('889', '320924', '射阳县', '320900');
INSERT INTO `mx_cn_area` VALUES ('890', '320925', '建湖县', '320900');
INSERT INTO `mx_cn_area` VALUES ('891', '320981', '东台市', '320900');
INSERT INTO `mx_cn_area` VALUES ('892', '320982', '大丰市', '320900');
INSERT INTO `mx_cn_area` VALUES ('893', '321001', '市辖区', '321000');
INSERT INTO `mx_cn_area` VALUES ('894', '321002', '广陵区', '321000');
INSERT INTO `mx_cn_area` VALUES ('895', '321003', '邗江区', '321000');
INSERT INTO `mx_cn_area` VALUES ('896', '321011', '郊　区', '321000');
INSERT INTO `mx_cn_area` VALUES ('897', '321023', '宝应县', '321000');
INSERT INTO `mx_cn_area` VALUES ('898', '321081', '仪征市', '321000');
INSERT INTO `mx_cn_area` VALUES ('899', '321084', '高邮市', '321000');
INSERT INTO `mx_cn_area` VALUES ('900', '321088', '江都市', '321000');
INSERT INTO `mx_cn_area` VALUES ('901', '321101', '市辖区', '321100');
INSERT INTO `mx_cn_area` VALUES ('902', '321102', '京口区', '321100');
INSERT INTO `mx_cn_area` VALUES ('903', '321111', '润州区', '321100');
INSERT INTO `mx_cn_area` VALUES ('904', '321112', '丹徒区', '321100');
INSERT INTO `mx_cn_area` VALUES ('905', '321181', '丹阳市', '321100');
INSERT INTO `mx_cn_area` VALUES ('906', '321182', '扬中市', '321100');
INSERT INTO `mx_cn_area` VALUES ('907', '321183', '句容市', '321100');
INSERT INTO `mx_cn_area` VALUES ('908', '321201', '市辖区', '321200');
INSERT INTO `mx_cn_area` VALUES ('909', '321202', '海陵区', '321200');
INSERT INTO `mx_cn_area` VALUES ('910', '321203', '高港区', '321200');
INSERT INTO `mx_cn_area` VALUES ('911', '321281', '兴化市', '321200');
INSERT INTO `mx_cn_area` VALUES ('912', '321282', '靖江市', '321200');
INSERT INTO `mx_cn_area` VALUES ('913', '321283', '泰兴市', '321200');
INSERT INTO `mx_cn_area` VALUES ('914', '321284', '姜堰市', '321200');
INSERT INTO `mx_cn_area` VALUES ('915', '321301', '市辖区', '321300');
INSERT INTO `mx_cn_area` VALUES ('916', '321302', '宿城区', '321300');
INSERT INTO `mx_cn_area` VALUES ('917', '321311', '宿豫区', '321300');
INSERT INTO `mx_cn_area` VALUES ('918', '321322', '沭阳县', '321300');
INSERT INTO `mx_cn_area` VALUES ('919', '321323', '泗阳县', '321300');
INSERT INTO `mx_cn_area` VALUES ('920', '321324', '泗洪县', '321300');
INSERT INTO `mx_cn_area` VALUES ('921', '330101', '市辖区', '330100');
INSERT INTO `mx_cn_area` VALUES ('922', '330102', '上城区', '330100');
INSERT INTO `mx_cn_area` VALUES ('923', '330103', '下城区', '330100');
INSERT INTO `mx_cn_area` VALUES ('924', '330104', '江干区', '330100');
INSERT INTO `mx_cn_area` VALUES ('925', '330105', '拱墅区', '330100');
INSERT INTO `mx_cn_area` VALUES ('926', '330106', '西湖区', '330100');
INSERT INTO `mx_cn_area` VALUES ('927', '330108', '滨江区', '330100');
INSERT INTO `mx_cn_area` VALUES ('928', '330109', '萧山区', '330100');
INSERT INTO `mx_cn_area` VALUES ('929', '330110', '余杭区', '330100');
INSERT INTO `mx_cn_area` VALUES ('930', '330122', '桐庐县', '330100');
INSERT INTO `mx_cn_area` VALUES ('931', '330127', '淳安县', '330100');
INSERT INTO `mx_cn_area` VALUES ('932', '330182', '建德市', '330100');
INSERT INTO `mx_cn_area` VALUES ('933', '330183', '富阳市', '330100');
INSERT INTO `mx_cn_area` VALUES ('934', '330185', '临安市', '330100');
INSERT INTO `mx_cn_area` VALUES ('935', '330201', '市辖区', '330200');
INSERT INTO `mx_cn_area` VALUES ('936', '330203', '海曙区', '330200');
INSERT INTO `mx_cn_area` VALUES ('937', '330204', '江东区', '330200');
INSERT INTO `mx_cn_area` VALUES ('938', '330205', '江北区', '330200');
INSERT INTO `mx_cn_area` VALUES ('939', '330206', '北仑区', '330200');
INSERT INTO `mx_cn_area` VALUES ('940', '330211', '镇海区', '330200');
INSERT INTO `mx_cn_area` VALUES ('941', '330212', '鄞州区', '330200');
INSERT INTO `mx_cn_area` VALUES ('942', '330225', '象山县', '330200');
INSERT INTO `mx_cn_area` VALUES ('943', '330226', '宁海县', '330200');
INSERT INTO `mx_cn_area` VALUES ('944', '330281', '余姚市', '330200');
INSERT INTO `mx_cn_area` VALUES ('945', '330282', '慈溪市', '330200');
INSERT INTO `mx_cn_area` VALUES ('946', '330283', '奉化市', '330200');
INSERT INTO `mx_cn_area` VALUES ('947', '330301', '市辖区', '330300');
INSERT INTO `mx_cn_area` VALUES ('948', '330302', '鹿城区', '330300');
INSERT INTO `mx_cn_area` VALUES ('949', '330303', '龙湾区', '330300');
INSERT INTO `mx_cn_area` VALUES ('950', '330304', '瓯海区', '330300');
INSERT INTO `mx_cn_area` VALUES ('951', '330322', '洞头县', '330300');
INSERT INTO `mx_cn_area` VALUES ('952', '330324', '永嘉县', '330300');
INSERT INTO `mx_cn_area` VALUES ('953', '330326', '平阳县', '330300');
INSERT INTO `mx_cn_area` VALUES ('954', '330327', '苍南县', '330300');
INSERT INTO `mx_cn_area` VALUES ('955', '330328', '文成县', '330300');
INSERT INTO `mx_cn_area` VALUES ('956', '330329', '泰顺县', '330300');
INSERT INTO `mx_cn_area` VALUES ('957', '330381', '瑞安市', '330300');
INSERT INTO `mx_cn_area` VALUES ('958', '330382', '乐清市', '330300');
INSERT INTO `mx_cn_area` VALUES ('959', '330401', '市辖区', '330400');
INSERT INTO `mx_cn_area` VALUES ('960', '330402', '秀城区', '330400');
INSERT INTO `mx_cn_area` VALUES ('961', '330411', '秀洲区', '330400');
INSERT INTO `mx_cn_area` VALUES ('962', '330421', '嘉善县', '330400');
INSERT INTO `mx_cn_area` VALUES ('963', '330424', '海盐县', '330400');
INSERT INTO `mx_cn_area` VALUES ('964', '330481', '海宁市', '330400');
INSERT INTO `mx_cn_area` VALUES ('965', '330482', '平湖市', '330400');
INSERT INTO `mx_cn_area` VALUES ('966', '330483', '桐乡市', '330400');
INSERT INTO `mx_cn_area` VALUES ('967', '330501', '市辖区', '330500');
INSERT INTO `mx_cn_area` VALUES ('968', '330502', '吴兴区', '330500');
INSERT INTO `mx_cn_area` VALUES ('969', '330503', '南浔区', '330500');
INSERT INTO `mx_cn_area` VALUES ('970', '330521', '德清县', '330500');
INSERT INTO `mx_cn_area` VALUES ('971', '330522', '长兴县', '330500');
INSERT INTO `mx_cn_area` VALUES ('972', '330523', '安吉县', '330500');
INSERT INTO `mx_cn_area` VALUES ('973', '330601', '市辖区', '330600');
INSERT INTO `mx_cn_area` VALUES ('974', '330602', '越城区', '330600');
INSERT INTO `mx_cn_area` VALUES ('975', '330621', '绍兴县', '330600');
INSERT INTO `mx_cn_area` VALUES ('976', '330624', '新昌县', '330600');
INSERT INTO `mx_cn_area` VALUES ('977', '330681', '诸暨市', '330600');
INSERT INTO `mx_cn_area` VALUES ('978', '330682', '上虞市', '330600');
INSERT INTO `mx_cn_area` VALUES ('979', '330683', '嵊州市', '330600');
INSERT INTO `mx_cn_area` VALUES ('980', '330701', '市辖区', '330700');
INSERT INTO `mx_cn_area` VALUES ('981', '330702', '婺城区', '330700');
INSERT INTO `mx_cn_area` VALUES ('982', '330703', '金东区', '330700');
INSERT INTO `mx_cn_area` VALUES ('983', '330723', '武义县', '330700');
INSERT INTO `mx_cn_area` VALUES ('984', '330726', '浦江县', '330700');
INSERT INTO `mx_cn_area` VALUES ('985', '330727', '磐安县', '330700');
INSERT INTO `mx_cn_area` VALUES ('986', '330781', '兰溪市', '330700');
INSERT INTO `mx_cn_area` VALUES ('987', '330782', '义乌市', '330700');
INSERT INTO `mx_cn_area` VALUES ('988', '330783', '东阳市', '330700');
INSERT INTO `mx_cn_area` VALUES ('989', '330784', '永康市', '330700');
INSERT INTO `mx_cn_area` VALUES ('990', '330801', '市辖区', '330800');
INSERT INTO `mx_cn_area` VALUES ('991', '330802', '柯城区', '330800');
INSERT INTO `mx_cn_area` VALUES ('992', '330803', '衢江区', '330800');
INSERT INTO `mx_cn_area` VALUES ('993', '330822', '常山县', '330800');
INSERT INTO `mx_cn_area` VALUES ('994', '330824', '开化县', '330800');
INSERT INTO `mx_cn_area` VALUES ('995', '330825', '龙游县', '330800');
INSERT INTO `mx_cn_area` VALUES ('996', '330881', '江山市', '330800');
INSERT INTO `mx_cn_area` VALUES ('997', '330901', '市辖区', '330900');
INSERT INTO `mx_cn_area` VALUES ('998', '330902', '定海区', '330900');
INSERT INTO `mx_cn_area` VALUES ('999', '330903', '普陀区', '330900');
INSERT INTO `mx_cn_area` VALUES ('1000', '330921', '岱山县', '330900');
INSERT INTO `mx_cn_area` VALUES ('1001', '330922', '嵊泗县', '330900');
INSERT INTO `mx_cn_area` VALUES ('1002', '331001', '市辖区', '331000');
INSERT INTO `mx_cn_area` VALUES ('1003', '331002', '椒江区', '331000');
INSERT INTO `mx_cn_area` VALUES ('1004', '331003', '黄岩区', '331000');
INSERT INTO `mx_cn_area` VALUES ('1005', '331004', '路桥区', '331000');
INSERT INTO `mx_cn_area` VALUES ('1006', '331021', '玉环县', '331000');
INSERT INTO `mx_cn_area` VALUES ('1007', '331022', '三门县', '331000');
INSERT INTO `mx_cn_area` VALUES ('1008', '331023', '天台县', '331000');
INSERT INTO `mx_cn_area` VALUES ('1009', '331024', '仙居县', '331000');
INSERT INTO `mx_cn_area` VALUES ('1010', '331081', '温岭市', '331000');
INSERT INTO `mx_cn_area` VALUES ('1011', '331082', '临海市', '331000');
INSERT INTO `mx_cn_area` VALUES ('1012', '331101', '市辖区', '331100');
INSERT INTO `mx_cn_area` VALUES ('1013', '331102', '莲都区', '331100');
INSERT INTO `mx_cn_area` VALUES ('1014', '331121', '青田县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1015', '331122', '缙云县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1016', '331123', '遂昌县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1017', '331124', '松阳县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1018', '331125', '云和县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1019', '331126', '庆元县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1020', '331127', '景宁畲族自治县', '331100');
INSERT INTO `mx_cn_area` VALUES ('1021', '331181', '龙泉市', '331100');
INSERT INTO `mx_cn_area` VALUES ('1022', '340101', '市辖区', '340100');
INSERT INTO `mx_cn_area` VALUES ('1023', '340102', '瑶海区', '340100');
INSERT INTO `mx_cn_area` VALUES ('1024', '340103', '庐阳区', '340100');
INSERT INTO `mx_cn_area` VALUES ('1025', '340104', '蜀山区', '340100');
INSERT INTO `mx_cn_area` VALUES ('1026', '340111', '包河区', '340100');
INSERT INTO `mx_cn_area` VALUES ('1027', '340121', '长丰县', '340100');
INSERT INTO `mx_cn_area` VALUES ('1028', '340122', '肥东县', '340100');
INSERT INTO `mx_cn_area` VALUES ('1029', '340123', '肥西县', '340100');
INSERT INTO `mx_cn_area` VALUES ('1030', '340201', '市辖区', '340200');
INSERT INTO `mx_cn_area` VALUES ('1031', '340202', '镜湖区', '340200');
INSERT INTO `mx_cn_area` VALUES ('1032', '340203', '马塘区', '340200');
INSERT INTO `mx_cn_area` VALUES ('1033', '340204', '新芜区', '340200');
INSERT INTO `mx_cn_area` VALUES ('1034', '340207', '鸠江区', '340200');
INSERT INTO `mx_cn_area` VALUES ('1035', '340221', '芜湖县', '340200');
INSERT INTO `mx_cn_area` VALUES ('1036', '340222', '繁昌县', '340200');
INSERT INTO `mx_cn_area` VALUES ('1037', '340223', '南陵县', '340200');
INSERT INTO `mx_cn_area` VALUES ('1038', '340301', '市辖区', '340300');
INSERT INTO `mx_cn_area` VALUES ('1039', '340302', '龙子湖区', '340300');
INSERT INTO `mx_cn_area` VALUES ('1040', '340303', '蚌山区', '340300');
INSERT INTO `mx_cn_area` VALUES ('1041', '340304', '禹会区', '340300');
INSERT INTO `mx_cn_area` VALUES ('1042', '340311', '淮上区', '340300');
INSERT INTO `mx_cn_area` VALUES ('1043', '340321', '怀远县', '340300');
INSERT INTO `mx_cn_area` VALUES ('1044', '340322', '五河县', '340300');
INSERT INTO `mx_cn_area` VALUES ('1045', '340323', '固镇县', '340300');
INSERT INTO `mx_cn_area` VALUES ('1046', '340401', '市辖区', '340400');
INSERT INTO `mx_cn_area` VALUES ('1047', '340402', '大通区', '340400');
INSERT INTO `mx_cn_area` VALUES ('1048', '340403', '田家庵区', '340400');
INSERT INTO `mx_cn_area` VALUES ('1049', '340404', '谢家集区', '340400');
INSERT INTO `mx_cn_area` VALUES ('1050', '340405', '八公山区', '340400');
INSERT INTO `mx_cn_area` VALUES ('1051', '340406', '潘集区', '340400');
INSERT INTO `mx_cn_area` VALUES ('1052', '340421', '凤台县', '340400');
INSERT INTO `mx_cn_area` VALUES ('1053', '340501', '市辖区', '340500');
INSERT INTO `mx_cn_area` VALUES ('1054', '340502', '金家庄区', '340500');
INSERT INTO `mx_cn_area` VALUES ('1055', '340503', '花山区', '340500');
INSERT INTO `mx_cn_area` VALUES ('1056', '340504', '雨山区', '340500');
INSERT INTO `mx_cn_area` VALUES ('1057', '340521', '当涂县', '340500');
INSERT INTO `mx_cn_area` VALUES ('1058', '340601', '市辖区', '340600');
INSERT INTO `mx_cn_area` VALUES ('1059', '340602', '杜集区', '340600');
INSERT INTO `mx_cn_area` VALUES ('1060', '340603', '相山区', '340600');
INSERT INTO `mx_cn_area` VALUES ('1061', '340604', '烈山区', '340600');
INSERT INTO `mx_cn_area` VALUES ('1062', '340621', '濉溪县', '340600');
INSERT INTO `mx_cn_area` VALUES ('1063', '340701', '市辖区', '340700');
INSERT INTO `mx_cn_area` VALUES ('1064', '340702', '铜官山区', '340700');
INSERT INTO `mx_cn_area` VALUES ('1065', '340703', '狮子山区', '340700');
INSERT INTO `mx_cn_area` VALUES ('1066', '340711', '郊　区', '340700');
INSERT INTO `mx_cn_area` VALUES ('1067', '340721', '铜陵县', '340700');
INSERT INTO `mx_cn_area` VALUES ('1068', '340801', '市辖区', '340800');
INSERT INTO `mx_cn_area` VALUES ('1069', '340802', '迎江区', '340800');
INSERT INTO `mx_cn_area` VALUES ('1070', '340803', '大观区', '340800');
INSERT INTO `mx_cn_area` VALUES ('1071', '340811', '郊　区', '340800');
INSERT INTO `mx_cn_area` VALUES ('1072', '340822', '怀宁县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1073', '340823', '枞阳县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1074', '340824', '潜山县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1075', '340825', '太湖县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1076', '340826', '宿松县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1077', '340827', '望江县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1078', '340828', '岳西县', '340800');
INSERT INTO `mx_cn_area` VALUES ('1079', '340881', '桐城市', '340800');
INSERT INTO `mx_cn_area` VALUES ('1080', '341001', '市辖区', '341000');
INSERT INTO `mx_cn_area` VALUES ('1081', '341002', '屯溪区', '341000');
INSERT INTO `mx_cn_area` VALUES ('1082', '341003', '黄山区', '341000');
INSERT INTO `mx_cn_area` VALUES ('1083', '341004', '徽州区', '341000');
INSERT INTO `mx_cn_area` VALUES ('1084', '341021', '歙　县', '341000');
INSERT INTO `mx_cn_area` VALUES ('1085', '341022', '休宁县', '341000');
INSERT INTO `mx_cn_area` VALUES ('1086', '341023', '黟　县', '341000');
INSERT INTO `mx_cn_area` VALUES ('1087', '341024', '祁门县', '341000');
INSERT INTO `mx_cn_area` VALUES ('1088', '341101', '市辖区', '341100');
INSERT INTO `mx_cn_area` VALUES ('1089', '341102', '琅琊区', '341100');
INSERT INTO `mx_cn_area` VALUES ('1090', '341103', '南谯区', '341100');
INSERT INTO `mx_cn_area` VALUES ('1091', '341122', '来安县', '341100');
INSERT INTO `mx_cn_area` VALUES ('1092', '341124', '全椒县', '341100');
INSERT INTO `mx_cn_area` VALUES ('1093', '341125', '定远县', '341100');
INSERT INTO `mx_cn_area` VALUES ('1094', '341126', '凤阳县', '341100');
INSERT INTO `mx_cn_area` VALUES ('1095', '341181', '天长市', '341100');
INSERT INTO `mx_cn_area` VALUES ('1096', '341182', '明光市', '341100');
INSERT INTO `mx_cn_area` VALUES ('1097', '341201', '市辖区', '341200');
INSERT INTO `mx_cn_area` VALUES ('1098', '341202', '颍州区', '341200');
INSERT INTO `mx_cn_area` VALUES ('1099', '341203', '颍东区', '341200');
INSERT INTO `mx_cn_area` VALUES ('1100', '341204', '颍泉区', '341200');
INSERT INTO `mx_cn_area` VALUES ('1101', '341221', '临泉县', '341200');
INSERT INTO `mx_cn_area` VALUES ('1102', '341222', '太和县', '341200');
INSERT INTO `mx_cn_area` VALUES ('1103', '341225', '阜南县', '341200');
INSERT INTO `mx_cn_area` VALUES ('1104', '341226', '颍上县', '341200');
INSERT INTO `mx_cn_area` VALUES ('1105', '341282', '界首市', '341200');
INSERT INTO `mx_cn_area` VALUES ('1106', '341301', '市辖区', '341300');
INSERT INTO `mx_cn_area` VALUES ('1107', '341302', '墉桥区', '341300');
INSERT INTO `mx_cn_area` VALUES ('1108', '341321', '砀山县', '341300');
INSERT INTO `mx_cn_area` VALUES ('1109', '341322', '萧　县', '341300');
INSERT INTO `mx_cn_area` VALUES ('1110', '341323', '灵璧县', '341300');
INSERT INTO `mx_cn_area` VALUES ('1111', '341324', '泗　县', '341300');
INSERT INTO `mx_cn_area` VALUES ('1112', '341401', '市辖区', '341400');
INSERT INTO `mx_cn_area` VALUES ('1113', '341402', '居巢区', '341400');
INSERT INTO `mx_cn_area` VALUES ('1114', '341421', '庐江县', '341400');
INSERT INTO `mx_cn_area` VALUES ('1115', '341422', '无为县', '341400');
INSERT INTO `mx_cn_area` VALUES ('1116', '341423', '含山县', '341400');
INSERT INTO `mx_cn_area` VALUES ('1117', '341424', '和　县', '341400');
INSERT INTO `mx_cn_area` VALUES ('1118', '341501', '市辖区', '341500');
INSERT INTO `mx_cn_area` VALUES ('1119', '341502', '金安区', '341500');
INSERT INTO `mx_cn_area` VALUES ('1120', '341503', '裕安区', '341500');
INSERT INTO `mx_cn_area` VALUES ('1121', '341521', '寿　县', '341500');
INSERT INTO `mx_cn_area` VALUES ('1122', '341522', '霍邱县', '341500');
INSERT INTO `mx_cn_area` VALUES ('1123', '341523', '舒城县', '341500');
INSERT INTO `mx_cn_area` VALUES ('1124', '341524', '金寨县', '341500');
INSERT INTO `mx_cn_area` VALUES ('1125', '341525', '霍山县', '341500');
INSERT INTO `mx_cn_area` VALUES ('1126', '341601', '市辖区', '341600');
INSERT INTO `mx_cn_area` VALUES ('1127', '341602', '谯城区', '341600');
INSERT INTO `mx_cn_area` VALUES ('1128', '341621', '涡阳县', '341600');
INSERT INTO `mx_cn_area` VALUES ('1129', '341622', '蒙城县', '341600');
INSERT INTO `mx_cn_area` VALUES ('1130', '341623', '利辛县', '341600');
INSERT INTO `mx_cn_area` VALUES ('1131', '341701', '市辖区', '341700');
INSERT INTO `mx_cn_area` VALUES ('1132', '341702', '贵池区', '341700');
INSERT INTO `mx_cn_area` VALUES ('1133', '341721', '东至县', '341700');
INSERT INTO `mx_cn_area` VALUES ('1134', '341722', '石台县', '341700');
INSERT INTO `mx_cn_area` VALUES ('1135', '341723', '青阳县', '341700');
INSERT INTO `mx_cn_area` VALUES ('1136', '341801', '市辖区', '341800');
INSERT INTO `mx_cn_area` VALUES ('1137', '341802', '宣州区', '341800');
INSERT INTO `mx_cn_area` VALUES ('1138', '341821', '郎溪县', '341800');
INSERT INTO `mx_cn_area` VALUES ('1139', '341822', '广德县', '341800');
INSERT INTO `mx_cn_area` VALUES ('1140', '341823', '泾　县', '341800');
INSERT INTO `mx_cn_area` VALUES ('1141', '341824', '绩溪县', '341800');
INSERT INTO `mx_cn_area` VALUES ('1142', '341825', '旌德县', '341800');
INSERT INTO `mx_cn_area` VALUES ('1143', '341881', '宁国市', '341800');
INSERT INTO `mx_cn_area` VALUES ('1144', '350101', '市辖区', '350100');
INSERT INTO `mx_cn_area` VALUES ('1145', '350102', '鼓楼区', '350100');
INSERT INTO `mx_cn_area` VALUES ('1146', '350103', '台江区', '350100');
INSERT INTO `mx_cn_area` VALUES ('1147', '350104', '仓山区', '350100');
INSERT INTO `mx_cn_area` VALUES ('1148', '350105', '马尾区', '350100');
INSERT INTO `mx_cn_area` VALUES ('1149', '350111', '晋安区', '350100');
INSERT INTO `mx_cn_area` VALUES ('1150', '350121', '闽侯县', '350100');
INSERT INTO `mx_cn_area` VALUES ('1151', '350122', '连江县', '350100');
INSERT INTO `mx_cn_area` VALUES ('1152', '350123', '罗源县', '350100');
INSERT INTO `mx_cn_area` VALUES ('1153', '350124', '闽清县', '350100');
INSERT INTO `mx_cn_area` VALUES ('1154', '350125', '永泰县', '350100');
INSERT INTO `mx_cn_area` VALUES ('1155', '350128', '平潭县', '350100');
INSERT INTO `mx_cn_area` VALUES ('1156', '350181', '福清市', '350100');
INSERT INTO `mx_cn_area` VALUES ('1157', '350182', '长乐市', '350100');
INSERT INTO `mx_cn_area` VALUES ('1158', '350201', '市辖区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1159', '350203', '思明区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1160', '350205', '海沧区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1161', '350206', '湖里区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1162', '350211', '集美区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1163', '350212', '同安区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1164', '350213', '翔安区', '350200');
INSERT INTO `mx_cn_area` VALUES ('1165', '350301', '市辖区', '350300');
INSERT INTO `mx_cn_area` VALUES ('1166', '350302', '城厢区', '350300');
INSERT INTO `mx_cn_area` VALUES ('1167', '350303', '涵江区', '350300');
INSERT INTO `mx_cn_area` VALUES ('1168', '350304', '荔城区', '350300');
INSERT INTO `mx_cn_area` VALUES ('1169', '350305', '秀屿区', '350300');
INSERT INTO `mx_cn_area` VALUES ('1170', '350322', '仙游县', '350300');
INSERT INTO `mx_cn_area` VALUES ('1171', '350401', '市辖区', '350400');
INSERT INTO `mx_cn_area` VALUES ('1172', '350402', '梅列区', '350400');
INSERT INTO `mx_cn_area` VALUES ('1173', '350403', '三元区', '350400');
INSERT INTO `mx_cn_area` VALUES ('1174', '350421', '明溪县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1175', '350423', '清流县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1176', '350424', '宁化县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1177', '350425', '大田县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1178', '350426', '尤溪县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1179', '350427', '沙　县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1180', '350428', '将乐县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1181', '350429', '泰宁县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1182', '350430', '建宁县', '350400');
INSERT INTO `mx_cn_area` VALUES ('1183', '350481', '永安市', '350400');
INSERT INTO `mx_cn_area` VALUES ('1184', '350501', '市辖区', '350500');
INSERT INTO `mx_cn_area` VALUES ('1185', '350502', '鲤城区', '350500');
INSERT INTO `mx_cn_area` VALUES ('1186', '350503', '丰泽区', '350500');
INSERT INTO `mx_cn_area` VALUES ('1187', '350504', '洛江区', '350500');
INSERT INTO `mx_cn_area` VALUES ('1188', '350505', '泉港区', '350500');
INSERT INTO `mx_cn_area` VALUES ('1189', '350521', '惠安县', '350500');
INSERT INTO `mx_cn_area` VALUES ('1190', '350524', '安溪县', '350500');
INSERT INTO `mx_cn_area` VALUES ('1191', '350525', '永春县', '350500');
INSERT INTO `mx_cn_area` VALUES ('1192', '350526', '德化县', '350500');
INSERT INTO `mx_cn_area` VALUES ('1193', '350527', '金门县', '350500');
INSERT INTO `mx_cn_area` VALUES ('1194', '350581', '石狮市', '350500');
INSERT INTO `mx_cn_area` VALUES ('1195', '350582', '晋江市', '350500');
INSERT INTO `mx_cn_area` VALUES ('1196', '350583', '南安市', '350500');
INSERT INTO `mx_cn_area` VALUES ('1197', '350601', '市辖区', '350600');
INSERT INTO `mx_cn_area` VALUES ('1198', '350602', '芗城区', '350600');
INSERT INTO `mx_cn_area` VALUES ('1199', '350603', '龙文区', '350600');
INSERT INTO `mx_cn_area` VALUES ('1200', '350622', '云霄县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1201', '350623', '漳浦县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1202', '350624', '诏安县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1203', '350625', '长泰县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1204', '350626', '东山县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1205', '350627', '南靖县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1206', '350628', '平和县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1207', '350629', '华安县', '350600');
INSERT INTO `mx_cn_area` VALUES ('1208', '350681', '龙海市', '350600');
INSERT INTO `mx_cn_area` VALUES ('1209', '350701', '市辖区', '350700');
INSERT INTO `mx_cn_area` VALUES ('1210', '350702', '延平区', '350700');
INSERT INTO `mx_cn_area` VALUES ('1211', '350721', '顺昌县', '350700');
INSERT INTO `mx_cn_area` VALUES ('1212', '350722', '浦城县', '350700');
INSERT INTO `mx_cn_area` VALUES ('1213', '350723', '光泽县', '350700');
INSERT INTO `mx_cn_area` VALUES ('1214', '350724', '松溪县', '350700');
INSERT INTO `mx_cn_area` VALUES ('1215', '350725', '政和县', '350700');
INSERT INTO `mx_cn_area` VALUES ('1216', '350781', '邵武市', '350700');
INSERT INTO `mx_cn_area` VALUES ('1217', '350782', '武夷山市', '350700');
INSERT INTO `mx_cn_area` VALUES ('1218', '350783', '建瓯市', '350700');
INSERT INTO `mx_cn_area` VALUES ('1219', '350784', '建阳市', '350700');
INSERT INTO `mx_cn_area` VALUES ('1220', '350801', '市辖区', '350800');
INSERT INTO `mx_cn_area` VALUES ('1221', '350802', '新罗区', '350800');
INSERT INTO `mx_cn_area` VALUES ('1222', '350821', '长汀县', '350800');
INSERT INTO `mx_cn_area` VALUES ('1223', '350822', '永定县', '350800');
INSERT INTO `mx_cn_area` VALUES ('1224', '350823', '上杭县', '350800');
INSERT INTO `mx_cn_area` VALUES ('1225', '350824', '武平县', '350800');
INSERT INTO `mx_cn_area` VALUES ('1226', '350825', '连城县', '350800');
INSERT INTO `mx_cn_area` VALUES ('1227', '350881', '漳平市', '350800');
INSERT INTO `mx_cn_area` VALUES ('1228', '350901', '市辖区', '350900');
INSERT INTO `mx_cn_area` VALUES ('1229', '350902', '蕉城区', '350900');
INSERT INTO `mx_cn_area` VALUES ('1230', '350921', '霞浦县', '350900');
INSERT INTO `mx_cn_area` VALUES ('1231', '350922', '古田县', '350900');
INSERT INTO `mx_cn_area` VALUES ('1232', '350923', '屏南县', '350900');
INSERT INTO `mx_cn_area` VALUES ('1233', '350924', '寿宁县', '350900');
INSERT INTO `mx_cn_area` VALUES ('1234', '350925', '周宁县', '350900');
INSERT INTO `mx_cn_area` VALUES ('1235', '350926', '柘荣县', '350900');
INSERT INTO `mx_cn_area` VALUES ('1236', '350981', '福安市', '350900');
INSERT INTO `mx_cn_area` VALUES ('1237', '350982', '福鼎市', '350900');
INSERT INTO `mx_cn_area` VALUES ('1238', '360101', '市辖区', '360100');
INSERT INTO `mx_cn_area` VALUES ('1239', '360102', '东湖区', '360100');
INSERT INTO `mx_cn_area` VALUES ('1240', '360103', '西湖区', '360100');
INSERT INTO `mx_cn_area` VALUES ('1241', '360104', '青云谱区', '360100');
INSERT INTO `mx_cn_area` VALUES ('1242', '360105', '湾里区', '360100');
INSERT INTO `mx_cn_area` VALUES ('1243', '360111', '青山湖区', '360100');
INSERT INTO `mx_cn_area` VALUES ('1244', '360121', '南昌县', '360100');
INSERT INTO `mx_cn_area` VALUES ('1245', '360122', '新建县', '360100');
INSERT INTO `mx_cn_area` VALUES ('1246', '360123', '安义县', '360100');
INSERT INTO `mx_cn_area` VALUES ('1247', '360124', '进贤县', '360100');
INSERT INTO `mx_cn_area` VALUES ('1248', '360201', '市辖区', '360200');
INSERT INTO `mx_cn_area` VALUES ('1249', '360202', '昌江区', '360200');
INSERT INTO `mx_cn_area` VALUES ('1250', '360203', '珠山区', '360200');
INSERT INTO `mx_cn_area` VALUES ('1251', '360222', '浮梁县', '360200');
INSERT INTO `mx_cn_area` VALUES ('1252', '360281', '乐平市', '360200');
INSERT INTO `mx_cn_area` VALUES ('1253', '360301', '市辖区', '360300');
INSERT INTO `mx_cn_area` VALUES ('1254', '360302', '安源区', '360300');
INSERT INTO `mx_cn_area` VALUES ('1255', '360313', '湘东区', '360300');
INSERT INTO `mx_cn_area` VALUES ('1256', '360321', '莲花县', '360300');
INSERT INTO `mx_cn_area` VALUES ('1257', '360322', '上栗县', '360300');
INSERT INTO `mx_cn_area` VALUES ('1258', '360323', '芦溪县', '360300');
INSERT INTO `mx_cn_area` VALUES ('1259', '360401', '市辖区', '360400');
INSERT INTO `mx_cn_area` VALUES ('1260', '360402', '庐山区', '360400');
INSERT INTO `mx_cn_area` VALUES ('1261', '360403', '浔阳区', '360400');
INSERT INTO `mx_cn_area` VALUES ('1262', '360421', '九江县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1263', '360423', '武宁县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1264', '360424', '修水县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1265', '360425', '永修县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1266', '360426', '德安县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1267', '360427', '星子县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1268', '360428', '都昌县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1269', '360429', '湖口县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1270', '360430', '彭泽县', '360400');
INSERT INTO `mx_cn_area` VALUES ('1271', '360481', '瑞昌市', '360400');
INSERT INTO `mx_cn_area` VALUES ('1272', '360501', '市辖区', '360500');
INSERT INTO `mx_cn_area` VALUES ('1273', '360502', '渝水区', '360500');
INSERT INTO `mx_cn_area` VALUES ('1274', '360521', '分宜县', '360500');
INSERT INTO `mx_cn_area` VALUES ('1275', '360601', '市辖区', '360600');
INSERT INTO `mx_cn_area` VALUES ('1276', '360602', '月湖区', '360600');
INSERT INTO `mx_cn_area` VALUES ('1277', '360622', '余江县', '360600');
INSERT INTO `mx_cn_area` VALUES ('1278', '360681', '贵溪市', '360600');
INSERT INTO `mx_cn_area` VALUES ('1279', '360701', '市辖区', '360700');
INSERT INTO `mx_cn_area` VALUES ('1280', '360702', '章贡区', '360700');
INSERT INTO `mx_cn_area` VALUES ('1281', '360721', '赣　县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1282', '360722', '信丰县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1283', '360723', '大余县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1284', '360724', '上犹县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1285', '360725', '崇义县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1286', '360726', '安远县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1287', '360727', '龙南县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1288', '360728', '定南县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1289', '360729', '全南县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1290', '360730', '宁都县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1291', '360731', '于都县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1292', '360732', '兴国县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1293', '360733', '会昌县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1294', '360734', '寻乌县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1295', '360735', '石城县', '360700');
INSERT INTO `mx_cn_area` VALUES ('1296', '360781', '瑞金市', '360700');
INSERT INTO `mx_cn_area` VALUES ('1297', '360782', '南康市', '360700');
INSERT INTO `mx_cn_area` VALUES ('1298', '360801', '市辖区', '360800');
INSERT INTO `mx_cn_area` VALUES ('1299', '360802', '吉州区', '360800');
INSERT INTO `mx_cn_area` VALUES ('1300', '360803', '青原区', '360800');
INSERT INTO `mx_cn_area` VALUES ('1301', '360821', '吉安县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1302', '360822', '吉水县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1303', '360823', '峡江县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1304', '360824', '新干县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1305', '360825', '永丰县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1306', '360826', '泰和县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1307', '360827', '遂川县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1308', '360828', '万安县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1309', '360829', '安福县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1310', '360830', '永新县', '360800');
INSERT INTO `mx_cn_area` VALUES ('1311', '360881', '井冈山市', '360800');
INSERT INTO `mx_cn_area` VALUES ('1312', '360901', '市辖区', '360900');
INSERT INTO `mx_cn_area` VALUES ('1313', '360902', '袁州区', '360900');
INSERT INTO `mx_cn_area` VALUES ('1314', '360921', '奉新县', '360900');
INSERT INTO `mx_cn_area` VALUES ('1315', '360922', '万载县', '360900');
INSERT INTO `mx_cn_area` VALUES ('1316', '360923', '上高县', '360900');
INSERT INTO `mx_cn_area` VALUES ('1317', '360924', '宜丰县', '360900');
INSERT INTO `mx_cn_area` VALUES ('1318', '360925', '靖安县', '360900');
INSERT INTO `mx_cn_area` VALUES ('1319', '360926', '铜鼓县', '360900');
INSERT INTO `mx_cn_area` VALUES ('1320', '360981', '丰城市', '360900');
INSERT INTO `mx_cn_area` VALUES ('1321', '360982', '樟树市', '360900');
INSERT INTO `mx_cn_area` VALUES ('1322', '360983', '高安市', '360900');
INSERT INTO `mx_cn_area` VALUES ('1323', '361001', '市辖区', '361000');
INSERT INTO `mx_cn_area` VALUES ('1324', '361002', '临川区', '361000');
INSERT INTO `mx_cn_area` VALUES ('1325', '361021', '南城县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1326', '361022', '黎川县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1327', '361023', '南丰县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1328', '361024', '崇仁县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1329', '361025', '乐安县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1330', '361026', '宜黄县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1331', '361027', '金溪县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1332', '361028', '资溪县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1333', '361029', '东乡县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1334', '361030', '广昌县', '361000');
INSERT INTO `mx_cn_area` VALUES ('1335', '361101', '市辖区', '361100');
INSERT INTO `mx_cn_area` VALUES ('1336', '361102', '信州区', '361100');
INSERT INTO `mx_cn_area` VALUES ('1337', '361121', '上饶县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1338', '361122', '广丰县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1339', '361123', '玉山县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1340', '361124', '铅山县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1341', '361125', '横峰县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1342', '361126', '弋阳县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1343', '361127', '余干县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1344', '361128', '鄱阳县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1345', '361129', '万年县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1346', '361130', '婺源县', '361100');
INSERT INTO `mx_cn_area` VALUES ('1347', '361181', '德兴市', '361100');
INSERT INTO `mx_cn_area` VALUES ('1348', '370101', '市辖区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1349', '370102', '历下区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1350', '370103', '市中区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1351', '370104', '槐荫区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1352', '370105', '天桥区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1353', '370112', '历城区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1354', '370113', '长清区', '370100');
INSERT INTO `mx_cn_area` VALUES ('1355', '370124', '平阴县', '370100');
INSERT INTO `mx_cn_area` VALUES ('1356', '370125', '济阳县', '370100');
INSERT INTO `mx_cn_area` VALUES ('1357', '370126', '商河县', '370100');
INSERT INTO `mx_cn_area` VALUES ('1358', '370181', '章丘市', '370100');
INSERT INTO `mx_cn_area` VALUES ('1359', '370201', '市辖区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1360', '370202', '市南区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1361', '370203', '市北区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1362', '370205', '四方区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1363', '370211', '黄岛区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1364', '370212', '崂山区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1365', '370213', '李沧区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1366', '370214', '城阳区', '370200');
INSERT INTO `mx_cn_area` VALUES ('1367', '370281', '胶州市', '370200');
INSERT INTO `mx_cn_area` VALUES ('1368', '370282', '即墨市', '370200');
INSERT INTO `mx_cn_area` VALUES ('1369', '370283', '平度市', '370200');
INSERT INTO `mx_cn_area` VALUES ('1370', '370284', '胶南市', '370200');
INSERT INTO `mx_cn_area` VALUES ('1371', '370285', '莱西市', '370200');
INSERT INTO `mx_cn_area` VALUES ('1372', '370301', '市辖区', '370300');
INSERT INTO `mx_cn_area` VALUES ('1373', '370302', '淄川区', '370300');
INSERT INTO `mx_cn_area` VALUES ('1374', '370303', '张店区', '370300');
INSERT INTO `mx_cn_area` VALUES ('1375', '370304', '博山区', '370300');
INSERT INTO `mx_cn_area` VALUES ('1376', '370305', '临淄区', '370300');
INSERT INTO `mx_cn_area` VALUES ('1377', '370306', '周村区', '370300');
INSERT INTO `mx_cn_area` VALUES ('1378', '370321', '桓台县', '370300');
INSERT INTO `mx_cn_area` VALUES ('1379', '370322', '高青县', '370300');
INSERT INTO `mx_cn_area` VALUES ('1380', '370323', '沂源县', '370300');
INSERT INTO `mx_cn_area` VALUES ('1381', '370401', '市辖区', '370400');
INSERT INTO `mx_cn_area` VALUES ('1382', '370402', '市中区', '370400');
INSERT INTO `mx_cn_area` VALUES ('1383', '370403', '薛城区', '370400');
INSERT INTO `mx_cn_area` VALUES ('1384', '370404', '峄城区', '370400');
INSERT INTO `mx_cn_area` VALUES ('1385', '370405', '台儿庄区', '370400');
INSERT INTO `mx_cn_area` VALUES ('1386', '370406', '山亭区', '370400');
INSERT INTO `mx_cn_area` VALUES ('1387', '370481', '滕州市', '370400');
INSERT INTO `mx_cn_area` VALUES ('1388', '370501', '市辖区', '370500');
INSERT INTO `mx_cn_area` VALUES ('1389', '370502', '东营区', '370500');
INSERT INTO `mx_cn_area` VALUES ('1390', '370503', '河口区', '370500');
INSERT INTO `mx_cn_area` VALUES ('1391', '370521', '垦利县', '370500');
INSERT INTO `mx_cn_area` VALUES ('1392', '370522', '利津县', '370500');
INSERT INTO `mx_cn_area` VALUES ('1393', '370523', '广饶县', '370500');
INSERT INTO `mx_cn_area` VALUES ('1394', '370601', '市辖区', '370600');
INSERT INTO `mx_cn_area` VALUES ('1395', '370602', '芝罘区', '370600');
INSERT INTO `mx_cn_area` VALUES ('1396', '370611', '福山区', '370600');
INSERT INTO `mx_cn_area` VALUES ('1397', '370612', '牟平区', '370600');
INSERT INTO `mx_cn_area` VALUES ('1398', '370613', '莱山区', '370600');
INSERT INTO `mx_cn_area` VALUES ('1399', '370634', '长岛县', '370600');
INSERT INTO `mx_cn_area` VALUES ('1400', '370681', '龙口市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1401', '370682', '莱阳市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1402', '370683', '莱州市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1403', '370684', '蓬莱市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1404', '370685', '招远市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1405', '370686', '栖霞市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1406', '370687', '海阳市', '370600');
INSERT INTO `mx_cn_area` VALUES ('1407', '370701', '市辖区', '370700');
INSERT INTO `mx_cn_area` VALUES ('1408', '370702', '潍城区', '370700');
INSERT INTO `mx_cn_area` VALUES ('1409', '370703', '寒亭区', '370700');
INSERT INTO `mx_cn_area` VALUES ('1410', '370704', '坊子区', '370700');
INSERT INTO `mx_cn_area` VALUES ('1411', '370705', '奎文区', '370700');
INSERT INTO `mx_cn_area` VALUES ('1412', '370724', '临朐县', '370700');
INSERT INTO `mx_cn_area` VALUES ('1413', '370725', '昌乐县', '370700');
INSERT INTO `mx_cn_area` VALUES ('1414', '370781', '青州市', '370700');
INSERT INTO `mx_cn_area` VALUES ('1415', '370782', '诸城市', '370700');
INSERT INTO `mx_cn_area` VALUES ('1416', '370783', '寿光市', '370700');
INSERT INTO `mx_cn_area` VALUES ('1417', '370784', '安丘市', '370700');
INSERT INTO `mx_cn_area` VALUES ('1418', '370785', '高密市', '370700');
INSERT INTO `mx_cn_area` VALUES ('1419', '370786', '昌邑市', '370700');
INSERT INTO `mx_cn_area` VALUES ('1420', '370801', '市辖区', '370800');
INSERT INTO `mx_cn_area` VALUES ('1421', '370802', '市中区', '370800');
INSERT INTO `mx_cn_area` VALUES ('1422', '370811', '任城区', '370800');
INSERT INTO `mx_cn_area` VALUES ('1423', '370826', '微山县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1424', '370827', '鱼台县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1425', '370828', '金乡县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1426', '370829', '嘉祥县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1427', '370830', '汶上县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1428', '370831', '泗水县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1429', '370832', '梁山县', '370800');
INSERT INTO `mx_cn_area` VALUES ('1430', '370881', '曲阜市', '370800');
INSERT INTO `mx_cn_area` VALUES ('1431', '370882', '兖州市', '370800');
INSERT INTO `mx_cn_area` VALUES ('1432', '370883', '邹城市', '370800');
INSERT INTO `mx_cn_area` VALUES ('1433', '370901', '市辖区', '370900');
INSERT INTO `mx_cn_area` VALUES ('1434', '370902', '泰山区', '370900');
INSERT INTO `mx_cn_area` VALUES ('1435', '370903', '岱岳区', '370900');
INSERT INTO `mx_cn_area` VALUES ('1436', '370921', '宁阳县', '370900');
INSERT INTO `mx_cn_area` VALUES ('1437', '370923', '东平县', '370900');
INSERT INTO `mx_cn_area` VALUES ('1438', '370982', '新泰市', '370900');
INSERT INTO `mx_cn_area` VALUES ('1439', '370983', '肥城市', '370900');
INSERT INTO `mx_cn_area` VALUES ('1440', '371001', '市辖区', '371000');
INSERT INTO `mx_cn_area` VALUES ('1441', '371002', '环翠区', '371000');
INSERT INTO `mx_cn_area` VALUES ('1442', '371081', '文登市', '371000');
INSERT INTO `mx_cn_area` VALUES ('1443', '371082', '荣成市', '371000');
INSERT INTO `mx_cn_area` VALUES ('1444', '371083', '乳山市', '371000');
INSERT INTO `mx_cn_area` VALUES ('1445', '371101', '市辖区', '371100');
INSERT INTO `mx_cn_area` VALUES ('1446', '371102', '东港区', '371100');
INSERT INTO `mx_cn_area` VALUES ('1447', '371103', '岚山区', '371100');
INSERT INTO `mx_cn_area` VALUES ('1448', '371121', '五莲县', '371100');
INSERT INTO `mx_cn_area` VALUES ('1449', '371122', '莒　县', '371100');
INSERT INTO `mx_cn_area` VALUES ('1450', '371201', '市辖区', '371200');
INSERT INTO `mx_cn_area` VALUES ('1451', '371202', '莱城区', '371200');
INSERT INTO `mx_cn_area` VALUES ('1452', '371203', '钢城区', '371200');
INSERT INTO `mx_cn_area` VALUES ('1453', '371301', '市辖区', '371300');
INSERT INTO `mx_cn_area` VALUES ('1454', '371302', '兰山区', '371300');
INSERT INTO `mx_cn_area` VALUES ('1455', '371311', '罗庄区', '371300');
INSERT INTO `mx_cn_area` VALUES ('1456', '371312', '河东区', '371300');
INSERT INTO `mx_cn_area` VALUES ('1457', '371321', '沂南县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1458', '371322', '郯城县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1459', '371323', '沂水县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1460', '371324', '苍山县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1461', '371325', '费　县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1462', '371326', '平邑县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1463', '371327', '莒南县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1464', '371328', '蒙阴县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1465', '371329', '临沭县', '371300');
INSERT INTO `mx_cn_area` VALUES ('1466', '371401', '市辖区', '371400');
INSERT INTO `mx_cn_area` VALUES ('1467', '371402', '德城区', '371400');
INSERT INTO `mx_cn_area` VALUES ('1468', '371421', '陵　县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1469', '371422', '宁津县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1470', '371423', '庆云县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1471', '371424', '临邑县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1472', '371425', '齐河县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1473', '371426', '平原县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1474', '371427', '夏津县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1475', '371428', '武城县', '371400');
INSERT INTO `mx_cn_area` VALUES ('1476', '371481', '乐陵市', '371400');
INSERT INTO `mx_cn_area` VALUES ('1477', '371482', '禹城市', '371400');
INSERT INTO `mx_cn_area` VALUES ('1478', '371501', '市辖区', '371500');
INSERT INTO `mx_cn_area` VALUES ('1479', '371502', '东昌府区', '371500');
INSERT INTO `mx_cn_area` VALUES ('1480', '371521', '阳谷县', '371500');
INSERT INTO `mx_cn_area` VALUES ('1481', '371522', '莘　县', '371500');
INSERT INTO `mx_cn_area` VALUES ('1482', '371523', '茌平县', '371500');
INSERT INTO `mx_cn_area` VALUES ('1483', '371524', '东阿县', '371500');
INSERT INTO `mx_cn_area` VALUES ('1484', '371525', '冠　县', '371500');
INSERT INTO `mx_cn_area` VALUES ('1485', '371526', '高唐县', '371500');
INSERT INTO `mx_cn_area` VALUES ('1486', '371581', '临清市', '371500');
INSERT INTO `mx_cn_area` VALUES ('1487', '371601', '市辖区', '371600');
INSERT INTO `mx_cn_area` VALUES ('1488', '371602', '滨城区', '371600');
INSERT INTO `mx_cn_area` VALUES ('1489', '371621', '惠民县', '371600');
INSERT INTO `mx_cn_area` VALUES ('1490', '371622', '阳信县', '371600');
INSERT INTO `mx_cn_area` VALUES ('1491', '371623', '无棣县', '371600');
INSERT INTO `mx_cn_area` VALUES ('1492', '371624', '沾化县', '371600');
INSERT INTO `mx_cn_area` VALUES ('1493', '371625', '博兴县', '371600');
INSERT INTO `mx_cn_area` VALUES ('1494', '371626', '邹平县', '371600');
INSERT INTO `mx_cn_area` VALUES ('1495', '371701', '市辖区', '371700');
INSERT INTO `mx_cn_area` VALUES ('1496', '371702', '牡丹区', '371700');
INSERT INTO `mx_cn_area` VALUES ('1497', '371721', '曹　县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1498', '371722', '单　县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1499', '371723', '成武县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1500', '371724', '巨野县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1501', '371725', '郓城县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1502', '371726', '鄄城县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1503', '371727', '定陶县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1504', '371728', '东明县', '371700');
INSERT INTO `mx_cn_area` VALUES ('1505', '410101', '市辖区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1506', '410102', '中原区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1507', '410103', '二七区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1508', '410104', '管城回族区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1509', '410105', '金水区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1510', '410106', '上街区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1511', '410108', '邙山区', '410100');
INSERT INTO `mx_cn_area` VALUES ('1512', '410122', '中牟县', '410100');
INSERT INTO `mx_cn_area` VALUES ('1513', '410181', '巩义市', '410100');
INSERT INTO `mx_cn_area` VALUES ('1514', '410182', '荥阳市', '410100');
INSERT INTO `mx_cn_area` VALUES ('1515', '410183', '新密市', '410100');
INSERT INTO `mx_cn_area` VALUES ('1516', '410184', '新郑市', '410100');
INSERT INTO `mx_cn_area` VALUES ('1517', '410185', '登封市', '410100');
INSERT INTO `mx_cn_area` VALUES ('1518', '410201', '市辖区', '410200');
INSERT INTO `mx_cn_area` VALUES ('1519', '410202', '龙亭区', '410200');
INSERT INTO `mx_cn_area` VALUES ('1520', '410203', '顺河回族区', '410200');
INSERT INTO `mx_cn_area` VALUES ('1521', '410204', '鼓楼区', '410200');
INSERT INTO `mx_cn_area` VALUES ('1522', '410205', '南关区', '410200');
INSERT INTO `mx_cn_area` VALUES ('1523', '410211', '郊　区', '410200');
INSERT INTO `mx_cn_area` VALUES ('1524', '410221', '杞　县', '410200');
INSERT INTO `mx_cn_area` VALUES ('1525', '410222', '通许县', '410200');
INSERT INTO `mx_cn_area` VALUES ('1526', '410223', '尉氏县', '410200');
INSERT INTO `mx_cn_area` VALUES ('1527', '410224', '开封县', '410200');
INSERT INTO `mx_cn_area` VALUES ('1528', '410225', '兰考县', '410200');
INSERT INTO `mx_cn_area` VALUES ('1529', '410301', '市辖区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1530', '410302', '老城区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1531', '410303', '西工区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1532', '410304', '廛河回族区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1533', '410305', '涧西区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1534', '410306', '吉利区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1535', '410307', '洛龙区', '410300');
INSERT INTO `mx_cn_area` VALUES ('1536', '410322', '孟津县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1537', '410323', '新安县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1538', '410324', '栾川县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1539', '410325', '嵩　县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1540', '410326', '汝阳县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1541', '410327', '宜阳县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1542', '410328', '洛宁县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1543', '410329', '伊川县', '410300');
INSERT INTO `mx_cn_area` VALUES ('1544', '410381', '偃师市', '410300');
INSERT INTO `mx_cn_area` VALUES ('1545', '410401', '市辖区', '410400');
INSERT INTO `mx_cn_area` VALUES ('1546', '410402', '新华区', '410400');
INSERT INTO `mx_cn_area` VALUES ('1547', '410403', '卫东区', '410400');
INSERT INTO `mx_cn_area` VALUES ('1548', '410404', '石龙区', '410400');
INSERT INTO `mx_cn_area` VALUES ('1549', '410411', '湛河区', '410400');
INSERT INTO `mx_cn_area` VALUES ('1550', '410421', '宝丰县', '410400');
INSERT INTO `mx_cn_area` VALUES ('1551', '410422', '叶　县', '410400');
INSERT INTO `mx_cn_area` VALUES ('1552', '410423', '鲁山县', '410400');
INSERT INTO `mx_cn_area` VALUES ('1553', '410425', '郏　县', '410400');
INSERT INTO `mx_cn_area` VALUES ('1554', '410481', '舞钢市', '410400');
INSERT INTO `mx_cn_area` VALUES ('1555', '410482', '汝州市', '410400');
INSERT INTO `mx_cn_area` VALUES ('1556', '410501', '市辖区', '410500');
INSERT INTO `mx_cn_area` VALUES ('1557', '410502', '文峰区', '410500');
INSERT INTO `mx_cn_area` VALUES ('1558', '410503', '北关区', '410500');
INSERT INTO `mx_cn_area` VALUES ('1559', '410505', '殷都区', '410500');
INSERT INTO `mx_cn_area` VALUES ('1560', '410506', '龙安区', '410500');
INSERT INTO `mx_cn_area` VALUES ('1561', '410522', '安阳县', '410500');
INSERT INTO `mx_cn_area` VALUES ('1562', '410523', '汤阴县', '410500');
INSERT INTO `mx_cn_area` VALUES ('1563', '410526', '滑　县', '410500');
INSERT INTO `mx_cn_area` VALUES ('1564', '410527', '内黄县', '410500');
INSERT INTO `mx_cn_area` VALUES ('1565', '410581', '林州市', '410500');
INSERT INTO `mx_cn_area` VALUES ('1566', '410601', '市辖区', '410600');
INSERT INTO `mx_cn_area` VALUES ('1567', '410602', '鹤山区', '410600');
INSERT INTO `mx_cn_area` VALUES ('1568', '410603', '山城区', '410600');
INSERT INTO `mx_cn_area` VALUES ('1569', '410611', '淇滨区', '410600');
INSERT INTO `mx_cn_area` VALUES ('1570', '410621', '浚　县', '410600');
INSERT INTO `mx_cn_area` VALUES ('1571', '410622', '淇　县', '410600');
INSERT INTO `mx_cn_area` VALUES ('1572', '410701', '市辖区', '410700');
INSERT INTO `mx_cn_area` VALUES ('1573', '410702', '红旗区', '410700');
INSERT INTO `mx_cn_area` VALUES ('1574', '410703', '卫滨区', '410700');
INSERT INTO `mx_cn_area` VALUES ('1575', '410704', '凤泉区', '410700');
INSERT INTO `mx_cn_area` VALUES ('1576', '410711', '牧野区', '410700');
INSERT INTO `mx_cn_area` VALUES ('1577', '410721', '新乡县', '410700');
INSERT INTO `mx_cn_area` VALUES ('1578', '410724', '获嘉县', '410700');
INSERT INTO `mx_cn_area` VALUES ('1579', '410725', '原阳县', '410700');
INSERT INTO `mx_cn_area` VALUES ('1580', '410726', '延津县', '410700');
INSERT INTO `mx_cn_area` VALUES ('1581', '410727', '封丘县', '410700');
INSERT INTO `mx_cn_area` VALUES ('1582', '410728', '长垣县', '410700');
INSERT INTO `mx_cn_area` VALUES ('1583', '410781', '卫辉市', '410700');
INSERT INTO `mx_cn_area` VALUES ('1584', '410782', '辉县市', '410700');
INSERT INTO `mx_cn_area` VALUES ('1585', '410801', '市辖区', '410800');
INSERT INTO `mx_cn_area` VALUES ('1586', '410802', '解放区', '410800');
INSERT INTO `mx_cn_area` VALUES ('1587', '410803', '中站区', '410800');
INSERT INTO `mx_cn_area` VALUES ('1588', '410804', '马村区', '410800');
INSERT INTO `mx_cn_area` VALUES ('1589', '410811', '山阳区', '410800');
INSERT INTO `mx_cn_area` VALUES ('1590', '410821', '修武县', '410800');
INSERT INTO `mx_cn_area` VALUES ('1591', '410822', '博爱县', '410800');
INSERT INTO `mx_cn_area` VALUES ('1592', '410823', '武陟县', '410800');
INSERT INTO `mx_cn_area` VALUES ('1593', '410825', '温　县', '410800');
INSERT INTO `mx_cn_area` VALUES ('1594', '410881', '济源市', '410800');
INSERT INTO `mx_cn_area` VALUES ('1595', '410882', '沁阳市', '410800');
INSERT INTO `mx_cn_area` VALUES ('1596', '410883', '孟州市', '410800');
INSERT INTO `mx_cn_area` VALUES ('1597', '410901', '市辖区', '410900');
INSERT INTO `mx_cn_area` VALUES ('1598', '410902', '华龙区', '410900');
INSERT INTO `mx_cn_area` VALUES ('1599', '410922', '清丰县', '410900');
INSERT INTO `mx_cn_area` VALUES ('1600', '410923', '南乐县', '410900');
INSERT INTO `mx_cn_area` VALUES ('1601', '410926', '范　县', '410900');
INSERT INTO `mx_cn_area` VALUES ('1602', '410927', '台前县', '410900');
INSERT INTO `mx_cn_area` VALUES ('1603', '410928', '濮阳县', '410900');
INSERT INTO `mx_cn_area` VALUES ('1604', '411001', '市辖区', '411000');
INSERT INTO `mx_cn_area` VALUES ('1605', '411002', '魏都区', '411000');
INSERT INTO `mx_cn_area` VALUES ('1606', '411023', '许昌县', '411000');
INSERT INTO `mx_cn_area` VALUES ('1607', '411024', '鄢陵县', '411000');
INSERT INTO `mx_cn_area` VALUES ('1608', '411025', '襄城县', '411000');
INSERT INTO `mx_cn_area` VALUES ('1609', '411081', '禹州市', '411000');
INSERT INTO `mx_cn_area` VALUES ('1610', '411082', '长葛市', '411000');
INSERT INTO `mx_cn_area` VALUES ('1611', '411101', '市辖区', '411100');
INSERT INTO `mx_cn_area` VALUES ('1612', '411102', '源汇区', '411100');
INSERT INTO `mx_cn_area` VALUES ('1613', '411103', '郾城区', '411100');
INSERT INTO `mx_cn_area` VALUES ('1614', '411104', '召陵区', '411100');
INSERT INTO `mx_cn_area` VALUES ('1615', '411121', '舞阳县', '411100');
INSERT INTO `mx_cn_area` VALUES ('1616', '411122', '临颍县', '411100');
INSERT INTO `mx_cn_area` VALUES ('1617', '411201', '市辖区', '411200');
INSERT INTO `mx_cn_area` VALUES ('1618', '411202', '湖滨区', '411200');
INSERT INTO `mx_cn_area` VALUES ('1619', '411221', '渑池县', '411200');
INSERT INTO `mx_cn_area` VALUES ('1620', '411222', '陕　县', '411200');
INSERT INTO `mx_cn_area` VALUES ('1621', '411224', '卢氏县', '411200');
INSERT INTO `mx_cn_area` VALUES ('1622', '411281', '义马市', '411200');
INSERT INTO `mx_cn_area` VALUES ('1623', '411282', '灵宝市', '411200');
INSERT INTO `mx_cn_area` VALUES ('1624', '411301', '市辖区', '411300');
INSERT INTO `mx_cn_area` VALUES ('1625', '411302', '宛城区', '411300');
INSERT INTO `mx_cn_area` VALUES ('1626', '411303', '卧龙区', '411300');
INSERT INTO `mx_cn_area` VALUES ('1627', '411321', '南召县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1628', '411322', '方城县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1629', '411323', '西峡县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1630', '411324', '镇平县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1631', '411325', '内乡县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1632', '411326', '淅川县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1633', '411327', '社旗县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1634', '411328', '唐河县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1635', '411329', '新野县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1636', '411330', '桐柏县', '411300');
INSERT INTO `mx_cn_area` VALUES ('1637', '411381', '邓州市', '411300');
INSERT INTO `mx_cn_area` VALUES ('1638', '411401', '市辖区', '411400');
INSERT INTO `mx_cn_area` VALUES ('1639', '411402', '梁园区', '411400');
INSERT INTO `mx_cn_area` VALUES ('1640', '411403', '睢阳区', '411400');
INSERT INTO `mx_cn_area` VALUES ('1641', '411421', '民权县', '411400');
INSERT INTO `mx_cn_area` VALUES ('1642', '411422', '睢　县', '411400');
INSERT INTO `mx_cn_area` VALUES ('1643', '411423', '宁陵县', '411400');
INSERT INTO `mx_cn_area` VALUES ('1644', '411424', '柘城县', '411400');
INSERT INTO `mx_cn_area` VALUES ('1645', '411425', '虞城县', '411400');
INSERT INTO `mx_cn_area` VALUES ('1646', '411426', '夏邑县', '411400');
INSERT INTO `mx_cn_area` VALUES ('1647', '411481', '永城市', '411400');
INSERT INTO `mx_cn_area` VALUES ('1648', '411501', '市辖区', '411500');
INSERT INTO `mx_cn_area` VALUES ('1649', '411502', '师河区', '411500');
INSERT INTO `mx_cn_area` VALUES ('1650', '411503', '平桥区', '411500');
INSERT INTO `mx_cn_area` VALUES ('1651', '411521', '罗山县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1652', '411522', '光山县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1653', '411523', '新　县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1654', '411524', '商城县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1655', '411525', '固始县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1656', '411526', '潢川县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1657', '411527', '淮滨县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1658', '411528', '息　县', '411500');
INSERT INTO `mx_cn_area` VALUES ('1659', '411601', '市辖区', '411600');
INSERT INTO `mx_cn_area` VALUES ('1660', '411602', '川汇区', '411600');
INSERT INTO `mx_cn_area` VALUES ('1661', '411621', '扶沟县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1662', '411622', '西华县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1663', '411623', '商水县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1664', '411624', '沈丘县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1665', '411625', '郸城县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1666', '411626', '淮阳县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1667', '411627', '太康县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1668', '411628', '鹿邑县', '411600');
INSERT INTO `mx_cn_area` VALUES ('1669', '411681', '项城市', '411600');
INSERT INTO `mx_cn_area` VALUES ('1670', '411701', '市辖区', '411700');
INSERT INTO `mx_cn_area` VALUES ('1671', '411702', '驿城区', '411700');
INSERT INTO `mx_cn_area` VALUES ('1672', '411721', '西平县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1673', '411722', '上蔡县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1674', '411723', '平舆县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1675', '411724', '正阳县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1676', '411725', '确山县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1677', '411726', '泌阳县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1678', '411727', '汝南县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1679', '411728', '遂平县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1680', '411729', '新蔡县', '411700');
INSERT INTO `mx_cn_area` VALUES ('1681', '420101', '市辖区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1682', '420102', '江岸区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1683', '420103', '江汉区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1684', '420104', '乔口区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1685', '420105', '汉阳区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1686', '420106', '武昌区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1687', '420107', '青山区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1688', '420111', '洪山区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1689', '420112', '东西湖区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1690', '420113', '汉南区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1691', '420114', '蔡甸区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1692', '420115', '江夏区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1693', '420116', '黄陂区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1694', '420117', '新洲区', '420100');
INSERT INTO `mx_cn_area` VALUES ('1695', '420201', '市辖区', '420200');
INSERT INTO `mx_cn_area` VALUES ('1696', '420202', '黄石港区', '420200');
INSERT INTO `mx_cn_area` VALUES ('1697', '420203', '西塞山区', '420200');
INSERT INTO `mx_cn_area` VALUES ('1698', '420204', '下陆区', '420200');
INSERT INTO `mx_cn_area` VALUES ('1699', '420205', '铁山区', '420200');
INSERT INTO `mx_cn_area` VALUES ('1700', '420222', '阳新县', '420200');
INSERT INTO `mx_cn_area` VALUES ('1701', '420281', '大冶市', '420200');
INSERT INTO `mx_cn_area` VALUES ('1702', '420301', '市辖区', '420300');
INSERT INTO `mx_cn_area` VALUES ('1703', '420302', '茅箭区', '420300');
INSERT INTO `mx_cn_area` VALUES ('1704', '420303', '张湾区', '420300');
INSERT INTO `mx_cn_area` VALUES ('1705', '420321', '郧　县', '420300');
INSERT INTO `mx_cn_area` VALUES ('1706', '420322', '郧西县', '420300');
INSERT INTO `mx_cn_area` VALUES ('1707', '420323', '竹山县', '420300');
INSERT INTO `mx_cn_area` VALUES ('1708', '420324', '竹溪县', '420300');
INSERT INTO `mx_cn_area` VALUES ('1709', '420325', '房　县', '420300');
INSERT INTO `mx_cn_area` VALUES ('1710', '420381', '丹江口市', '420300');
INSERT INTO `mx_cn_area` VALUES ('1711', '420501', '市辖区', '420500');
INSERT INTO `mx_cn_area` VALUES ('1712', '420502', '西陵区', '420500');
INSERT INTO `mx_cn_area` VALUES ('1713', '420503', '伍家岗区', '420500');
INSERT INTO `mx_cn_area` VALUES ('1714', '420504', '点军区', '420500');
INSERT INTO `mx_cn_area` VALUES ('1715', '420505', '猇亭区', '420500');
INSERT INTO `mx_cn_area` VALUES ('1716', '420506', '夷陵区', '420500');
INSERT INTO `mx_cn_area` VALUES ('1717', '420525', '远安县', '420500');
INSERT INTO `mx_cn_area` VALUES ('1718', '420526', '兴山县', '420500');
INSERT INTO `mx_cn_area` VALUES ('1719', '420527', '秭归县', '420500');
INSERT INTO `mx_cn_area` VALUES ('1720', '420528', '长阳土家族自治县', '420500');
INSERT INTO `mx_cn_area` VALUES ('1721', '420529', '五峰土家族自治县', '420500');
INSERT INTO `mx_cn_area` VALUES ('1722', '420581', '宜都市', '420500');
INSERT INTO `mx_cn_area` VALUES ('1723', '420582', '当阳市', '420500');
INSERT INTO `mx_cn_area` VALUES ('1724', '420583', '枝江市', '420500');
INSERT INTO `mx_cn_area` VALUES ('1725', '420601', '市辖区', '420600');
INSERT INTO `mx_cn_area` VALUES ('1726', '420602', '襄城区', '420600');
INSERT INTO `mx_cn_area` VALUES ('1727', '420606', '樊城区', '420600');
INSERT INTO `mx_cn_area` VALUES ('1728', '420607', '襄阳区', '420600');
INSERT INTO `mx_cn_area` VALUES ('1729', '420624', '南漳县', '420600');
INSERT INTO `mx_cn_area` VALUES ('1730', '420625', '谷城县', '420600');
INSERT INTO `mx_cn_area` VALUES ('1731', '420626', '保康县', '420600');
INSERT INTO `mx_cn_area` VALUES ('1732', '420682', '老河口市', '420600');
INSERT INTO `mx_cn_area` VALUES ('1733', '420683', '枣阳市', '420600');
INSERT INTO `mx_cn_area` VALUES ('1734', '420684', '宜城市', '420600');
INSERT INTO `mx_cn_area` VALUES ('1735', '420701', '市辖区', '420700');
INSERT INTO `mx_cn_area` VALUES ('1736', '420702', '梁子湖区', '420700');
INSERT INTO `mx_cn_area` VALUES ('1737', '420703', '华容区', '420700');
INSERT INTO `mx_cn_area` VALUES ('1738', '420704', '鄂城区', '420700');
INSERT INTO `mx_cn_area` VALUES ('1739', '420801', '市辖区', '420800');
INSERT INTO `mx_cn_area` VALUES ('1740', '420802', '东宝区', '420800');
INSERT INTO `mx_cn_area` VALUES ('1741', '420804', '掇刀区', '420800');
INSERT INTO `mx_cn_area` VALUES ('1742', '420821', '京山县', '420800');
INSERT INTO `mx_cn_area` VALUES ('1743', '420822', '沙洋县', '420800');
INSERT INTO `mx_cn_area` VALUES ('1744', '420881', '钟祥市', '420800');
INSERT INTO `mx_cn_area` VALUES ('1745', '420901', '市辖区', '420900');
INSERT INTO `mx_cn_area` VALUES ('1746', '420902', '孝南区', '420900');
INSERT INTO `mx_cn_area` VALUES ('1747', '420921', '孝昌县', '420900');
INSERT INTO `mx_cn_area` VALUES ('1748', '420922', '大悟县', '420900');
INSERT INTO `mx_cn_area` VALUES ('1749', '420923', '云梦县', '420900');
INSERT INTO `mx_cn_area` VALUES ('1750', '420981', '应城市', '420900');
INSERT INTO `mx_cn_area` VALUES ('1751', '420982', '安陆市', '420900');
INSERT INTO `mx_cn_area` VALUES ('1752', '420984', '汉川市', '420900');
INSERT INTO `mx_cn_area` VALUES ('1753', '421001', '市辖区', '421000');
INSERT INTO `mx_cn_area` VALUES ('1754', '421002', '沙市区', '421000');
INSERT INTO `mx_cn_area` VALUES ('1755', '421003', '荆州区', '421000');
INSERT INTO `mx_cn_area` VALUES ('1756', '421022', '公安县', '421000');
INSERT INTO `mx_cn_area` VALUES ('1757', '421023', '监利县', '421000');
INSERT INTO `mx_cn_area` VALUES ('1758', '421024', '江陵县', '421000');
INSERT INTO `mx_cn_area` VALUES ('1759', '421081', '石首市', '421000');
INSERT INTO `mx_cn_area` VALUES ('1760', '421083', '洪湖市', '421000');
INSERT INTO `mx_cn_area` VALUES ('1761', '421087', '松滋市', '421000');
INSERT INTO `mx_cn_area` VALUES ('1762', '421101', '市辖区', '421100');
INSERT INTO `mx_cn_area` VALUES ('1763', '421102', '黄州区', '421100');
INSERT INTO `mx_cn_area` VALUES ('1764', '421121', '团风县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1765', '421122', '红安县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1766', '421123', '罗田县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1767', '421124', '英山县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1768', '421125', '浠水县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1769', '421126', '蕲春县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1770', '421127', '黄梅县', '421100');
INSERT INTO `mx_cn_area` VALUES ('1771', '421181', '麻城市', '421100');
INSERT INTO `mx_cn_area` VALUES ('1772', '421182', '武穴市', '421100');
INSERT INTO `mx_cn_area` VALUES ('1773', '421201', '市辖区', '421200');
INSERT INTO `mx_cn_area` VALUES ('1774', '421202', '咸安区', '421200');
INSERT INTO `mx_cn_area` VALUES ('1775', '421221', '嘉鱼县', '421200');
INSERT INTO `mx_cn_area` VALUES ('1776', '421222', '通城县', '421200');
INSERT INTO `mx_cn_area` VALUES ('1777', '421223', '崇阳县', '421200');
INSERT INTO `mx_cn_area` VALUES ('1778', '421224', '通山县', '421200');
INSERT INTO `mx_cn_area` VALUES ('1779', '421281', '赤壁市', '421200');
INSERT INTO `mx_cn_area` VALUES ('1780', '421301', '市辖区', '421300');
INSERT INTO `mx_cn_area` VALUES ('1781', '421302', '曾都区', '421300');
INSERT INTO `mx_cn_area` VALUES ('1782', '421381', '广水市', '421300');
INSERT INTO `mx_cn_area` VALUES ('1783', '422801', '恩施市', '422800');
INSERT INTO `mx_cn_area` VALUES ('1784', '422802', '利川市', '422800');
INSERT INTO `mx_cn_area` VALUES ('1785', '422822', '建始县', '422800');
INSERT INTO `mx_cn_area` VALUES ('1786', '422823', '巴东县', '422800');
INSERT INTO `mx_cn_area` VALUES ('1787', '422825', '宣恩县', '422800');
INSERT INTO `mx_cn_area` VALUES ('1788', '422826', '咸丰县', '422800');
INSERT INTO `mx_cn_area` VALUES ('1789', '422827', '来凤县', '422800');
INSERT INTO `mx_cn_area` VALUES ('1790', '422828', '鹤峰县', '422800');
INSERT INTO `mx_cn_area` VALUES ('1791', '429004', '仙桃市', '429000');
INSERT INTO `mx_cn_area` VALUES ('1792', '429005', '潜江市', '429000');
INSERT INTO `mx_cn_area` VALUES ('1793', '429006', '天门市', '429000');
INSERT INTO `mx_cn_area` VALUES ('1794', '429021', '神农架林区', '429000');
INSERT INTO `mx_cn_area` VALUES ('1795', '430101', '市辖区', '430100');
INSERT INTO `mx_cn_area` VALUES ('1796', '430102', '芙蓉区', '430100');
INSERT INTO `mx_cn_area` VALUES ('1797', '430103', '天心区', '430100');
INSERT INTO `mx_cn_area` VALUES ('1798', '430104', '岳麓区', '430100');
INSERT INTO `mx_cn_area` VALUES ('1799', '430105', '开福区', '430100');
INSERT INTO `mx_cn_area` VALUES ('1800', '430111', '雨花区', '430100');
INSERT INTO `mx_cn_area` VALUES ('1801', '430121', '长沙县', '430100');
INSERT INTO `mx_cn_area` VALUES ('1802', '430122', '望城县', '430100');
INSERT INTO `mx_cn_area` VALUES ('1803', '430124', '宁乡县', '430100');
INSERT INTO `mx_cn_area` VALUES ('1804', '430181', '浏阳市', '430100');
INSERT INTO `mx_cn_area` VALUES ('1805', '430201', '市辖区', '430200');
INSERT INTO `mx_cn_area` VALUES ('1806', '430202', '荷塘区', '430200');
INSERT INTO `mx_cn_area` VALUES ('1807', '430203', '芦淞区', '430200');
INSERT INTO `mx_cn_area` VALUES ('1808', '430204', '石峰区', '430200');
INSERT INTO `mx_cn_area` VALUES ('1809', '430211', '天元区', '430200');
INSERT INTO `mx_cn_area` VALUES ('1810', '430221', '株洲县', '430200');
INSERT INTO `mx_cn_area` VALUES ('1811', '430223', '攸　县', '430200');
INSERT INTO `mx_cn_area` VALUES ('1812', '430224', '茶陵县', '430200');
INSERT INTO `mx_cn_area` VALUES ('1813', '430225', '炎陵县', '430200');
INSERT INTO `mx_cn_area` VALUES ('1814', '430281', '醴陵市', '430200');
INSERT INTO `mx_cn_area` VALUES ('1815', '430301', '市辖区', '430300');
INSERT INTO `mx_cn_area` VALUES ('1816', '430302', '雨湖区', '430300');
INSERT INTO `mx_cn_area` VALUES ('1817', '430304', '岳塘区', '430300');
INSERT INTO `mx_cn_area` VALUES ('1818', '430321', '湘潭县', '430300');
INSERT INTO `mx_cn_area` VALUES ('1819', '430381', '湘乡市', '430300');
INSERT INTO `mx_cn_area` VALUES ('1820', '430382', '韶山市', '430300');
INSERT INTO `mx_cn_area` VALUES ('1821', '430401', '市辖区', '430400');
INSERT INTO `mx_cn_area` VALUES ('1822', '430405', '珠晖区', '430400');
INSERT INTO `mx_cn_area` VALUES ('1823', '430406', '雁峰区', '430400');
INSERT INTO `mx_cn_area` VALUES ('1824', '430407', '石鼓区', '430400');
INSERT INTO `mx_cn_area` VALUES ('1825', '430408', '蒸湘区', '430400');
INSERT INTO `mx_cn_area` VALUES ('1826', '430412', '南岳区', '430400');
INSERT INTO `mx_cn_area` VALUES ('1827', '430421', '衡阳县', '430400');
INSERT INTO `mx_cn_area` VALUES ('1828', '430422', '衡南县', '430400');
INSERT INTO `mx_cn_area` VALUES ('1829', '430423', '衡山县', '430400');
INSERT INTO `mx_cn_area` VALUES ('1830', '430424', '衡东县', '430400');
INSERT INTO `mx_cn_area` VALUES ('1831', '430426', '祁东县', '430400');
INSERT INTO `mx_cn_area` VALUES ('1832', '430481', '耒阳市', '430400');
INSERT INTO `mx_cn_area` VALUES ('1833', '430482', '常宁市', '430400');
INSERT INTO `mx_cn_area` VALUES ('1834', '430501', '市辖区', '430500');
INSERT INTO `mx_cn_area` VALUES ('1835', '430502', '双清区', '430500');
INSERT INTO `mx_cn_area` VALUES ('1836', '430503', '大祥区', '430500');
INSERT INTO `mx_cn_area` VALUES ('1837', '430511', '北塔区', '430500');
INSERT INTO `mx_cn_area` VALUES ('1838', '430521', '邵东县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1839', '430522', '新邵县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1840', '430523', '邵阳县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1841', '430524', '隆回县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1842', '430525', '洞口县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1843', '430527', '绥宁县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1844', '430528', '新宁县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1845', '430529', '城步苗族自治县', '430500');
INSERT INTO `mx_cn_area` VALUES ('1846', '430581', '武冈市', '430500');
INSERT INTO `mx_cn_area` VALUES ('1847', '430601', '市辖区', '430600');
INSERT INTO `mx_cn_area` VALUES ('1848', '430602', '岳阳楼区', '430600');
INSERT INTO `mx_cn_area` VALUES ('1849', '430603', '云溪区', '430600');
INSERT INTO `mx_cn_area` VALUES ('1850', '430611', '君山区', '430600');
INSERT INTO `mx_cn_area` VALUES ('1851', '430621', '岳阳县', '430600');
INSERT INTO `mx_cn_area` VALUES ('1852', '430623', '华容县', '430600');
INSERT INTO `mx_cn_area` VALUES ('1853', '430624', '湘阴县', '430600');
INSERT INTO `mx_cn_area` VALUES ('1854', '430626', '平江县', '430600');
INSERT INTO `mx_cn_area` VALUES ('1855', '430681', '汨罗市', '430600');
INSERT INTO `mx_cn_area` VALUES ('1856', '430682', '临湘市', '430600');
INSERT INTO `mx_cn_area` VALUES ('1857', '430701', '市辖区', '430700');
INSERT INTO `mx_cn_area` VALUES ('1858', '430702', '武陵区', '430700');
INSERT INTO `mx_cn_area` VALUES ('1859', '430703', '鼎城区', '430700');
INSERT INTO `mx_cn_area` VALUES ('1860', '430721', '安乡县', '430700');
INSERT INTO `mx_cn_area` VALUES ('1861', '430722', '汉寿县', '430700');
INSERT INTO `mx_cn_area` VALUES ('1862', '430723', '澧　县', '430700');
INSERT INTO `mx_cn_area` VALUES ('1863', '430724', '临澧县', '430700');
INSERT INTO `mx_cn_area` VALUES ('1864', '430725', '桃源县', '430700');
INSERT INTO `mx_cn_area` VALUES ('1865', '430726', '石门县', '430700');
INSERT INTO `mx_cn_area` VALUES ('1866', '430781', '津市市', '430700');
INSERT INTO `mx_cn_area` VALUES ('1867', '430801', '市辖区', '430800');
INSERT INTO `mx_cn_area` VALUES ('1868', '430802', '永定区', '430800');
INSERT INTO `mx_cn_area` VALUES ('1869', '430811', '武陵源区', '430800');
INSERT INTO `mx_cn_area` VALUES ('1870', '430821', '慈利县', '430800');
INSERT INTO `mx_cn_area` VALUES ('1871', '430822', '桑植县', '430800');
INSERT INTO `mx_cn_area` VALUES ('1872', '430901', '市辖区', '430900');
INSERT INTO `mx_cn_area` VALUES ('1873', '430902', '资阳区', '430900');
INSERT INTO `mx_cn_area` VALUES ('1874', '430903', '赫山区', '430900');
INSERT INTO `mx_cn_area` VALUES ('1875', '430921', '南　县', '430900');
INSERT INTO `mx_cn_area` VALUES ('1876', '430922', '桃江县', '430900');
INSERT INTO `mx_cn_area` VALUES ('1877', '430923', '安化县', '430900');
INSERT INTO `mx_cn_area` VALUES ('1878', '430981', '沅江市', '430900');
INSERT INTO `mx_cn_area` VALUES ('1879', '431001', '市辖区', '431000');
INSERT INTO `mx_cn_area` VALUES ('1880', '431002', '北湖区', '431000');
INSERT INTO `mx_cn_area` VALUES ('1881', '431003', '苏仙区', '431000');
INSERT INTO `mx_cn_area` VALUES ('1882', '431021', '桂阳县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1883', '431022', '宜章县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1884', '431023', '永兴县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1885', '431024', '嘉禾县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1886', '431025', '临武县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1887', '431026', '汝城县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1888', '431027', '桂东县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1889', '431028', '安仁县', '431000');
INSERT INTO `mx_cn_area` VALUES ('1890', '431081', '资兴市', '431000');
INSERT INTO `mx_cn_area` VALUES ('1891', '431101', '市辖区', '431100');
INSERT INTO `mx_cn_area` VALUES ('1892', '431102', '芝山区', '431100');
INSERT INTO `mx_cn_area` VALUES ('1893', '431103', '冷水滩区', '431100');
INSERT INTO `mx_cn_area` VALUES ('1894', '431121', '祁阳县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1895', '431122', '东安县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1896', '431123', '双牌县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1897', '431124', '道　县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1898', '431125', '江永县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1899', '431126', '宁远县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1900', '431127', '蓝山县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1901', '431128', '新田县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1902', '431129', '江华瑶族自治县', '431100');
INSERT INTO `mx_cn_area` VALUES ('1903', '431201', '市辖区', '431200');
INSERT INTO `mx_cn_area` VALUES ('1904', '431202', '鹤城区', '431200');
INSERT INTO `mx_cn_area` VALUES ('1905', '431221', '中方县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1906', '431222', '沅陵县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1907', '431223', '辰溪县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1908', '431224', '溆浦县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1909', '431225', '会同县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1910', '431226', '麻阳苗族自治县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1911', '431227', '新晃侗族自治县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1912', '431228', '芷江侗族自治县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1913', '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1914', '431230', '通道侗族自治县', '431200');
INSERT INTO `mx_cn_area` VALUES ('1915', '431281', '洪江市', '431200');
INSERT INTO `mx_cn_area` VALUES ('1916', '431301', '市辖区', '431300');
INSERT INTO `mx_cn_area` VALUES ('1917', '431302', '娄星区', '431300');
INSERT INTO `mx_cn_area` VALUES ('1918', '431321', '双峰县', '431300');
INSERT INTO `mx_cn_area` VALUES ('1919', '431322', '新化县', '431300');
INSERT INTO `mx_cn_area` VALUES ('1920', '431381', '冷水江市', '431300');
INSERT INTO `mx_cn_area` VALUES ('1921', '431382', '涟源市', '431300');
INSERT INTO `mx_cn_area` VALUES ('1922', '433101', '吉首市', '433100');
INSERT INTO `mx_cn_area` VALUES ('1923', '433122', '泸溪县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1924', '433123', '凤凰县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1925', '433124', '花垣县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1926', '433125', '保靖县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1927', '433126', '古丈县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1928', '433127', '永顺县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1929', '433130', '龙山县', '433100');
INSERT INTO `mx_cn_area` VALUES ('1930', '440101', '市辖区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1931', '440102', '东山区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1932', '440103', '荔湾区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1933', '440104', '越秀区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1934', '440105', '海珠区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1935', '440106', '天河区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1936', '440107', '芳村区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1937', '440111', '白云区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1938', '440112', '黄埔区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1939', '440113', '番禺区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1940', '440114', '花都区', '440100');
INSERT INTO `mx_cn_area` VALUES ('1941', '440183', '增城市', '440100');
INSERT INTO `mx_cn_area` VALUES ('1942', '440184', '从化市', '440100');
INSERT INTO `mx_cn_area` VALUES ('1943', '440201', '市辖区', '440200');
INSERT INTO `mx_cn_area` VALUES ('1944', '440203', '武江区', '440200');
INSERT INTO `mx_cn_area` VALUES ('1945', '440204', '浈江区', '440200');
INSERT INTO `mx_cn_area` VALUES ('1946', '440205', '曲江区', '440200');
INSERT INTO `mx_cn_area` VALUES ('1947', '440222', '始兴县', '440200');
INSERT INTO `mx_cn_area` VALUES ('1948', '440224', '仁化县', '440200');
INSERT INTO `mx_cn_area` VALUES ('1949', '440229', '翁源县', '440200');
INSERT INTO `mx_cn_area` VALUES ('1950', '440232', '乳源瑶族自治县', '440200');
INSERT INTO `mx_cn_area` VALUES ('1951', '440233', '新丰县', '440200');
INSERT INTO `mx_cn_area` VALUES ('1952', '440281', '乐昌市', '440200');
INSERT INTO `mx_cn_area` VALUES ('1953', '440282', '南雄市', '440200');
INSERT INTO `mx_cn_area` VALUES ('1954', '440301', '市辖区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1955', '440303', '罗湖区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1956', '440304', '福田区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1957', '440305', '南山区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1958', '440306', '宝安区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1959', '440307', '龙岗区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1960', '440308', '盐田区', '440300');
INSERT INTO `mx_cn_area` VALUES ('1961', '440401', '市辖区', '440400');
INSERT INTO `mx_cn_area` VALUES ('1962', '440402', '香洲区', '440400');
INSERT INTO `mx_cn_area` VALUES ('1963', '440403', '斗门区', '440400');
INSERT INTO `mx_cn_area` VALUES ('1964', '440404', '金湾区', '440400');
INSERT INTO `mx_cn_area` VALUES ('1965', '440501', '市辖区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1966', '440507', '龙湖区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1967', '440511', '金平区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1968', '440512', '濠江区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1969', '440513', '潮阳区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1970', '440514', '潮南区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1971', '440515', '澄海区', '440500');
INSERT INTO `mx_cn_area` VALUES ('1972', '440523', '南澳县', '440500');
INSERT INTO `mx_cn_area` VALUES ('1973', '440601', '市辖区', '440600');
INSERT INTO `mx_cn_area` VALUES ('1974', '440604', '禅城区', '440600');
INSERT INTO `mx_cn_area` VALUES ('1975', '440605', '南海区', '440600');
INSERT INTO `mx_cn_area` VALUES ('1976', '440606', '顺德区', '440600');
INSERT INTO `mx_cn_area` VALUES ('1977', '440607', '三水区', '440600');
INSERT INTO `mx_cn_area` VALUES ('1978', '440608', '高明区', '440600');
INSERT INTO `mx_cn_area` VALUES ('1979', '440701', '市辖区', '440700');
INSERT INTO `mx_cn_area` VALUES ('1980', '440703', '蓬江区', '440700');
INSERT INTO `mx_cn_area` VALUES ('1981', '440704', '江海区', '440700');
INSERT INTO `mx_cn_area` VALUES ('1982', '440705', '新会区', '440700');
INSERT INTO `mx_cn_area` VALUES ('1983', '440781', '台山市', '440700');
INSERT INTO `mx_cn_area` VALUES ('1984', '440783', '开平市', '440700');
INSERT INTO `mx_cn_area` VALUES ('1985', '440784', '鹤山市', '440700');
INSERT INTO `mx_cn_area` VALUES ('1986', '440785', '恩平市', '440700');
INSERT INTO `mx_cn_area` VALUES ('1987', '440801', '市辖区', '440800');
INSERT INTO `mx_cn_area` VALUES ('1988', '440802', '赤坎区', '440800');
INSERT INTO `mx_cn_area` VALUES ('1989', '440803', '霞山区', '440800');
INSERT INTO `mx_cn_area` VALUES ('1990', '440804', '坡头区', '440800');
INSERT INTO `mx_cn_area` VALUES ('1991', '440811', '麻章区', '440800');
INSERT INTO `mx_cn_area` VALUES ('1992', '440823', '遂溪县', '440800');
INSERT INTO `mx_cn_area` VALUES ('1993', '440825', '徐闻县', '440800');
INSERT INTO `mx_cn_area` VALUES ('1994', '440881', '廉江市', '440800');
INSERT INTO `mx_cn_area` VALUES ('1995', '440882', '雷州市', '440800');
INSERT INTO `mx_cn_area` VALUES ('1996', '440883', '吴川市', '440800');
INSERT INTO `mx_cn_area` VALUES ('1997', '440901', '市辖区', '440900');
INSERT INTO `mx_cn_area` VALUES ('1998', '440902', '茂南区', '440900');
INSERT INTO `mx_cn_area` VALUES ('1999', '440903', '茂港区', '440900');
INSERT INTO `mx_cn_area` VALUES ('2000', '440923', '电白县', '440900');
INSERT INTO `mx_cn_area` VALUES ('2001', '440981', '高州市', '440900');
INSERT INTO `mx_cn_area` VALUES ('2002', '440982', '化州市', '440900');
INSERT INTO `mx_cn_area` VALUES ('2003', '440983', '信宜市', '440900');
INSERT INTO `mx_cn_area` VALUES ('2004', '441201', '市辖区', '441200');
INSERT INTO `mx_cn_area` VALUES ('2005', '441202', '端州区', '441200');
INSERT INTO `mx_cn_area` VALUES ('2006', '441203', '鼎湖区', '441200');
INSERT INTO `mx_cn_area` VALUES ('2007', '441223', '广宁县', '441200');
INSERT INTO `mx_cn_area` VALUES ('2008', '441224', '怀集县', '441200');
INSERT INTO `mx_cn_area` VALUES ('2009', '441225', '封开县', '441200');
INSERT INTO `mx_cn_area` VALUES ('2010', '441226', '德庆县', '441200');
INSERT INTO `mx_cn_area` VALUES ('2011', '441283', '高要市', '441200');
INSERT INTO `mx_cn_area` VALUES ('2012', '441284', '四会市', '441200');
INSERT INTO `mx_cn_area` VALUES ('2013', '441301', '市辖区', '441300');
INSERT INTO `mx_cn_area` VALUES ('2014', '441302', '惠城区', '441300');
INSERT INTO `mx_cn_area` VALUES ('2015', '441303', '惠阳区', '441300');
INSERT INTO `mx_cn_area` VALUES ('2016', '441322', '博罗县', '441300');
INSERT INTO `mx_cn_area` VALUES ('2017', '441323', '惠东县', '441300');
INSERT INTO `mx_cn_area` VALUES ('2018', '441324', '龙门县', '441300');
INSERT INTO `mx_cn_area` VALUES ('2019', '441401', '市辖区', '441400');
INSERT INTO `mx_cn_area` VALUES ('2020', '441402', '梅江区', '441400');
INSERT INTO `mx_cn_area` VALUES ('2021', '441421', '梅　县', '441400');
INSERT INTO `mx_cn_area` VALUES ('2022', '441422', '大埔县', '441400');
INSERT INTO `mx_cn_area` VALUES ('2023', '441423', '丰顺县', '441400');
INSERT INTO `mx_cn_area` VALUES ('2024', '441424', '五华县', '441400');
INSERT INTO `mx_cn_area` VALUES ('2025', '441426', '平远县', '441400');
INSERT INTO `mx_cn_area` VALUES ('2026', '441427', '蕉岭县', '441400');
INSERT INTO `mx_cn_area` VALUES ('2027', '441481', '兴宁市', '441400');
INSERT INTO `mx_cn_area` VALUES ('2028', '441501', '市辖区', '441500');
INSERT INTO `mx_cn_area` VALUES ('2029', '441502', '城　区', '441500');
INSERT INTO `mx_cn_area` VALUES ('2030', '441521', '海丰县', '441500');
INSERT INTO `mx_cn_area` VALUES ('2031', '441523', '陆河县', '441500');
INSERT INTO `mx_cn_area` VALUES ('2032', '441581', '陆丰市', '441500');
INSERT INTO `mx_cn_area` VALUES ('2033', '441601', '市辖区', '441600');
INSERT INTO `mx_cn_area` VALUES ('2034', '441602', '源城区', '441600');
INSERT INTO `mx_cn_area` VALUES ('2035', '441621', '紫金县', '441600');
INSERT INTO `mx_cn_area` VALUES ('2036', '441622', '龙川县', '441600');
INSERT INTO `mx_cn_area` VALUES ('2037', '441623', '连平县', '441600');
INSERT INTO `mx_cn_area` VALUES ('2038', '441624', '和平县', '441600');
INSERT INTO `mx_cn_area` VALUES ('2039', '441625', '东源县', '441600');
INSERT INTO `mx_cn_area` VALUES ('2040', '441701', '市辖区', '441700');
INSERT INTO `mx_cn_area` VALUES ('2041', '441702', '江城区', '441700');
INSERT INTO `mx_cn_area` VALUES ('2042', '441721', '阳西县', '441700');
INSERT INTO `mx_cn_area` VALUES ('2043', '441723', '阳东县', '441700');
INSERT INTO `mx_cn_area` VALUES ('2044', '441781', '阳春市', '441700');
INSERT INTO `mx_cn_area` VALUES ('2045', '441801', '市辖区', '441800');
INSERT INTO `mx_cn_area` VALUES ('2046', '441802', '清城区', '441800');
INSERT INTO `mx_cn_area` VALUES ('2047', '441821', '佛冈县', '441800');
INSERT INTO `mx_cn_area` VALUES ('2048', '441823', '阳山县', '441800');
INSERT INTO `mx_cn_area` VALUES ('2049', '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `mx_cn_area` VALUES ('2050', '441826', '连南瑶族自治县', '441800');
INSERT INTO `mx_cn_area` VALUES ('2051', '441827', '清新县', '441800');
INSERT INTO `mx_cn_area` VALUES ('2052', '441881', '英德市', '441800');
INSERT INTO `mx_cn_area` VALUES ('2053', '441882', '连州市', '441800');
INSERT INTO `mx_cn_area` VALUES ('2054', '445101', '市辖区', '445100');
INSERT INTO `mx_cn_area` VALUES ('2055', '445102', '湘桥区', '445100');
INSERT INTO `mx_cn_area` VALUES ('2056', '445121', '潮安县', '445100');
INSERT INTO `mx_cn_area` VALUES ('2057', '445122', '饶平县', '445100');
INSERT INTO `mx_cn_area` VALUES ('2058', '445201', '市辖区', '445200');
INSERT INTO `mx_cn_area` VALUES ('2059', '445202', '榕城区', '445200');
INSERT INTO `mx_cn_area` VALUES ('2060', '445221', '揭东县', '445200');
INSERT INTO `mx_cn_area` VALUES ('2061', '445222', '揭西县', '445200');
INSERT INTO `mx_cn_area` VALUES ('2062', '445224', '惠来县', '445200');
INSERT INTO `mx_cn_area` VALUES ('2063', '445281', '普宁市', '445200');
INSERT INTO `mx_cn_area` VALUES ('2064', '445301', '市辖区', '445300');
INSERT INTO `mx_cn_area` VALUES ('2065', '445302', '云城区', '445300');
INSERT INTO `mx_cn_area` VALUES ('2066', '445321', '新兴县', '445300');
INSERT INTO `mx_cn_area` VALUES ('2067', '445322', '郁南县', '445300');
INSERT INTO `mx_cn_area` VALUES ('2068', '445323', '云安县', '445300');
INSERT INTO `mx_cn_area` VALUES ('2069', '445381', '罗定市', '445300');
INSERT INTO `mx_cn_area` VALUES ('2070', '450101', '市辖区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2071', '450102', '兴宁区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2072', '450103', '青秀区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2073', '450105', '江南区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2074', '450107', '西乡塘区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2075', '450108', '良庆区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2076', '450109', '邕宁区', '450100');
INSERT INTO `mx_cn_area` VALUES ('2077', '450122', '武鸣县', '450100');
INSERT INTO `mx_cn_area` VALUES ('2078', '450123', '隆安县', '450100');
INSERT INTO `mx_cn_area` VALUES ('2079', '450124', '马山县', '450100');
INSERT INTO `mx_cn_area` VALUES ('2080', '450125', '上林县', '450100');
INSERT INTO `mx_cn_area` VALUES ('2081', '450126', '宾阳县', '450100');
INSERT INTO `mx_cn_area` VALUES ('2082', '450127', '横　县', '450100');
INSERT INTO `mx_cn_area` VALUES ('2083', '450201', '市辖区', '450200');
INSERT INTO `mx_cn_area` VALUES ('2084', '450202', '城中区', '450200');
INSERT INTO `mx_cn_area` VALUES ('2085', '450203', '鱼峰区', '450200');
INSERT INTO `mx_cn_area` VALUES ('2086', '450204', '柳南区', '450200');
INSERT INTO `mx_cn_area` VALUES ('2087', '450205', '柳北区', '450200');
INSERT INTO `mx_cn_area` VALUES ('2088', '450221', '柳江县', '450200');
INSERT INTO `mx_cn_area` VALUES ('2089', '450222', '柳城县', '450200');
INSERT INTO `mx_cn_area` VALUES ('2090', '450223', '鹿寨县', '450200');
INSERT INTO `mx_cn_area` VALUES ('2091', '450224', '融安县', '450200');
INSERT INTO `mx_cn_area` VALUES ('2092', '450225', '融水苗族自治县', '450200');
INSERT INTO `mx_cn_area` VALUES ('2093', '450226', '三江侗族自治县', '450200');
INSERT INTO `mx_cn_area` VALUES ('2094', '450301', '市辖区', '450300');
INSERT INTO `mx_cn_area` VALUES ('2095', '450302', '秀峰区', '450300');
INSERT INTO `mx_cn_area` VALUES ('2096', '450303', '叠彩区', '450300');
INSERT INTO `mx_cn_area` VALUES ('2097', '450304', '象山区', '450300');
INSERT INTO `mx_cn_area` VALUES ('2098', '450305', '七星区', '450300');
INSERT INTO `mx_cn_area` VALUES ('2099', '450311', '雁山区', '450300');
INSERT INTO `mx_cn_area` VALUES ('2100', '450321', '阳朔县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2101', '450322', '临桂县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2102', '450323', '灵川县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2103', '450324', '全州县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2104', '450325', '兴安县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2105', '450326', '永福县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2106', '450327', '灌阳县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2107', '450328', '龙胜各族自治县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2108', '450329', '资源县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2109', '450330', '平乐县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2110', '450331', '荔蒲县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2111', '450332', '恭城瑶族自治县', '450300');
INSERT INTO `mx_cn_area` VALUES ('2112', '450401', '市辖区', '450400');
INSERT INTO `mx_cn_area` VALUES ('2113', '450403', '万秀区', '450400');
INSERT INTO `mx_cn_area` VALUES ('2114', '450404', '蝶山区', '450400');
INSERT INTO `mx_cn_area` VALUES ('2115', '450405', '长洲区', '450400');
INSERT INTO `mx_cn_area` VALUES ('2116', '450421', '苍梧县', '450400');
INSERT INTO `mx_cn_area` VALUES ('2117', '450422', '藤　县', '450400');
INSERT INTO `mx_cn_area` VALUES ('2118', '450423', '蒙山县', '450400');
INSERT INTO `mx_cn_area` VALUES ('2119', '450481', '岑溪市', '450400');
INSERT INTO `mx_cn_area` VALUES ('2120', '450501', '市辖区', '450500');
INSERT INTO `mx_cn_area` VALUES ('2121', '450502', '海城区', '450500');
INSERT INTO `mx_cn_area` VALUES ('2122', '450503', '银海区', '450500');
INSERT INTO `mx_cn_area` VALUES ('2123', '450512', '铁山港区', '450500');
INSERT INTO `mx_cn_area` VALUES ('2124', '450521', '合浦县', '450500');
INSERT INTO `mx_cn_area` VALUES ('2125', '450601', '市辖区', '450600');
INSERT INTO `mx_cn_area` VALUES ('2126', '450602', '港口区', '450600');
INSERT INTO `mx_cn_area` VALUES ('2127', '450603', '防城区', '450600');
INSERT INTO `mx_cn_area` VALUES ('2128', '450621', '上思县', '450600');
INSERT INTO `mx_cn_area` VALUES ('2129', '450681', '东兴市', '450600');
INSERT INTO `mx_cn_area` VALUES ('2130', '450701', '市辖区', '450700');
INSERT INTO `mx_cn_area` VALUES ('2131', '450702', '钦南区', '450700');
INSERT INTO `mx_cn_area` VALUES ('2132', '450703', '钦北区', '450700');
INSERT INTO `mx_cn_area` VALUES ('2133', '450721', '灵山县', '450700');
INSERT INTO `mx_cn_area` VALUES ('2134', '450722', '浦北县', '450700');
INSERT INTO `mx_cn_area` VALUES ('2135', '450801', '市辖区', '450800');
INSERT INTO `mx_cn_area` VALUES ('2136', '450802', '港北区', '450800');
INSERT INTO `mx_cn_area` VALUES ('2137', '450803', '港南区', '450800');
INSERT INTO `mx_cn_area` VALUES ('2138', '450804', '覃塘区', '450800');
INSERT INTO `mx_cn_area` VALUES ('2139', '450821', '平南县', '450800');
INSERT INTO `mx_cn_area` VALUES ('2140', '450881', '桂平市', '450800');
INSERT INTO `mx_cn_area` VALUES ('2141', '450901', '市辖区', '450900');
INSERT INTO `mx_cn_area` VALUES ('2142', '450902', '玉州区', '450900');
INSERT INTO `mx_cn_area` VALUES ('2143', '450921', '容　县', '450900');
INSERT INTO `mx_cn_area` VALUES ('2144', '450922', '陆川县', '450900');
INSERT INTO `mx_cn_area` VALUES ('2145', '450923', '博白县', '450900');
INSERT INTO `mx_cn_area` VALUES ('2146', '450924', '兴业县', '450900');
INSERT INTO `mx_cn_area` VALUES ('2147', '450981', '北流市', '450900');
INSERT INTO `mx_cn_area` VALUES ('2148', '451001', '市辖区', '451000');
INSERT INTO `mx_cn_area` VALUES ('2149', '451002', '右江区', '451000');
INSERT INTO `mx_cn_area` VALUES ('2150', '451021', '田阳县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2151', '451022', '田东县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2152', '451023', '平果县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2153', '451024', '德保县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2154', '451025', '靖西县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2155', '451026', '那坡县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2156', '451027', '凌云县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2157', '451028', '乐业县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2158', '451029', '田林县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2159', '451030', '西林县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2160', '451031', '隆林各族自治县', '451000');
INSERT INTO `mx_cn_area` VALUES ('2161', '451101', '市辖区', '451100');
INSERT INTO `mx_cn_area` VALUES ('2162', '451102', '八步区', '451100');
INSERT INTO `mx_cn_area` VALUES ('2163', '451121', '昭平县', '451100');
INSERT INTO `mx_cn_area` VALUES ('2164', '451122', '钟山县', '451100');
INSERT INTO `mx_cn_area` VALUES ('2165', '451123', '富川瑶族自治县', '451100');
INSERT INTO `mx_cn_area` VALUES ('2166', '451201', '市辖区', '451200');
INSERT INTO `mx_cn_area` VALUES ('2167', '451202', '金城江区', '451200');
INSERT INTO `mx_cn_area` VALUES ('2168', '451221', '南丹县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2169', '451222', '天峨县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2170', '451223', '凤山县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2171', '451224', '东兰县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2172', '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2173', '451226', '环江毛南族自治县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2174', '451227', '巴马瑶族自治县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2175', '451228', '都安瑶族自治县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2176', '451229', '大化瑶族自治县', '451200');
INSERT INTO `mx_cn_area` VALUES ('2177', '451281', '宜州市', '451200');
INSERT INTO `mx_cn_area` VALUES ('2178', '451301', '市辖区', '451300');
INSERT INTO `mx_cn_area` VALUES ('2179', '451302', '兴宾区', '451300');
INSERT INTO `mx_cn_area` VALUES ('2180', '451321', '忻城县', '451300');
INSERT INTO `mx_cn_area` VALUES ('2181', '451322', '象州县', '451300');
INSERT INTO `mx_cn_area` VALUES ('2182', '451323', '武宣县', '451300');
INSERT INTO `mx_cn_area` VALUES ('2183', '451324', '金秀瑶族自治县', '451300');
INSERT INTO `mx_cn_area` VALUES ('2184', '451381', '合山市', '451300');
INSERT INTO `mx_cn_area` VALUES ('2185', '451401', '市辖区', '451400');
INSERT INTO `mx_cn_area` VALUES ('2186', '451402', '江洲区', '451400');
INSERT INTO `mx_cn_area` VALUES ('2187', '451421', '扶绥县', '451400');
INSERT INTO `mx_cn_area` VALUES ('2188', '451422', '宁明县', '451400');
INSERT INTO `mx_cn_area` VALUES ('2189', '451423', '龙州县', '451400');
INSERT INTO `mx_cn_area` VALUES ('2190', '451424', '大新县', '451400');
INSERT INTO `mx_cn_area` VALUES ('2191', '451425', '天等县', '451400');
INSERT INTO `mx_cn_area` VALUES ('2192', '451481', '凭祥市', '451400');
INSERT INTO `mx_cn_area` VALUES ('2193', '460101', '市辖区', '460100');
INSERT INTO `mx_cn_area` VALUES ('2194', '460105', '秀英区', '460100');
INSERT INTO `mx_cn_area` VALUES ('2195', '460106', '龙华区', '460100');
INSERT INTO `mx_cn_area` VALUES ('2196', '460107', '琼山区', '460100');
INSERT INTO `mx_cn_area` VALUES ('2197', '460108', '美兰区', '460100');
INSERT INTO `mx_cn_area` VALUES ('2198', '460201', '市辖区', '460200');
INSERT INTO `mx_cn_area` VALUES ('2199', '469001', '五指山市', '469000');
INSERT INTO `mx_cn_area` VALUES ('2200', '469002', '琼海市', '469000');
INSERT INTO `mx_cn_area` VALUES ('2201', '469003', '儋州市', '469000');
INSERT INTO `mx_cn_area` VALUES ('2202', '469005', '文昌市', '469000');
INSERT INTO `mx_cn_area` VALUES ('2203', '469006', '万宁市', '469000');
INSERT INTO `mx_cn_area` VALUES ('2204', '469007', '东方市', '469000');
INSERT INTO `mx_cn_area` VALUES ('2205', '469025', '定安县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2206', '469026', '屯昌县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2207', '469027', '澄迈县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2208', '469028', '临高县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2209', '469030', '白沙黎族自治县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2210', '469031', '昌江黎族自治县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2211', '469033', '乐东黎族自治县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2212', '469034', '陵水黎族自治县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2213', '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2214', '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `mx_cn_area` VALUES ('2215', '469037', '西沙群岛', '469000');
INSERT INTO `mx_cn_area` VALUES ('2216', '469038', '南沙群岛', '469000');
INSERT INTO `mx_cn_area` VALUES ('2217', '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `mx_cn_area` VALUES ('2218', '500101', '万州区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2219', '500102', '涪陵区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2220', '500103', '渝中区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2221', '500104', '大渡口区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2222', '500105', '江北区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2223', '500106', '沙坪坝区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2224', '500107', '九龙坡区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2225', '500108', '南岸区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2226', '500109', '北碚区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2227', '500110', '万盛区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2228', '500111', '双桥区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2229', '500112', '渝北区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2230', '500113', '巴南区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2231', '500114', '黔江区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2232', '500115', '长寿区', '500100');
INSERT INTO `mx_cn_area` VALUES ('2233', '500222', '綦江县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2234', '500223', '潼南县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2235', '500224', '铜梁县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2236', '500225', '大足县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2237', '500226', '荣昌县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2238', '500227', '璧山县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2239', '500228', '梁平县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2240', '500229', '城口县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2241', '500230', '丰都县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2242', '500231', '垫江县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2243', '500232', '武隆县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2244', '500233', '忠　县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2245', '500234', '开　县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2246', '500235', '云阳县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2247', '500236', '奉节县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2248', '500237', '巫山县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2249', '500238', '巫溪县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2250', '500240', '石柱土家族自治县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2251', '500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2252', '500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2253', '500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `mx_cn_area` VALUES ('2254', '500381', '江津市', '500300');
INSERT INTO `mx_cn_area` VALUES ('2255', '500382', '合川市', '500300');
INSERT INTO `mx_cn_area` VALUES ('2256', '500383', '永川市', '500300');
INSERT INTO `mx_cn_area` VALUES ('2257', '500384', '南川市', '500300');
INSERT INTO `mx_cn_area` VALUES ('2258', '510101', '市辖区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2259', '510104', '锦江区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2260', '510105', '青羊区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2261', '510106', '金牛区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2262', '510107', '武侯区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2263', '510108', '成华区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2264', '510112', '龙泉驿区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2265', '510113', '青白江区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2266', '510114', '新都区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2267', '510115', '温江区', '510100');
INSERT INTO `mx_cn_area` VALUES ('2268', '510121', '金堂县', '510100');
INSERT INTO `mx_cn_area` VALUES ('2269', '510122', '双流县', '510100');
INSERT INTO `mx_cn_area` VALUES ('2270', '510124', '郫　县', '510100');
INSERT INTO `mx_cn_area` VALUES ('2271', '510129', '大邑县', '510100');
INSERT INTO `mx_cn_area` VALUES ('2272', '510131', '蒲江县', '510100');
INSERT INTO `mx_cn_area` VALUES ('2273', '510132', '新津县', '510100');
INSERT INTO `mx_cn_area` VALUES ('2274', '510181', '都江堰市', '510100');
INSERT INTO `mx_cn_area` VALUES ('2275', '510182', '彭州市', '510100');
INSERT INTO `mx_cn_area` VALUES ('2276', '510183', '邛崃市', '510100');
INSERT INTO `mx_cn_area` VALUES ('2277', '510184', '崇州市', '510100');
INSERT INTO `mx_cn_area` VALUES ('2278', '510301', '市辖区', '510300');
INSERT INTO `mx_cn_area` VALUES ('2279', '510302', '自流井区', '510300');
INSERT INTO `mx_cn_area` VALUES ('2280', '510303', '贡井区', '510300');
INSERT INTO `mx_cn_area` VALUES ('2281', '510304', '大安区', '510300');
INSERT INTO `mx_cn_area` VALUES ('2282', '510311', '沿滩区', '510300');
INSERT INTO `mx_cn_area` VALUES ('2283', '510321', '荣　县', '510300');
INSERT INTO `mx_cn_area` VALUES ('2284', '510322', '富顺县', '510300');
INSERT INTO `mx_cn_area` VALUES ('2285', '510401', '市辖区', '510400');
INSERT INTO `mx_cn_area` VALUES ('2286', '510402', '东　区', '510400');
INSERT INTO `mx_cn_area` VALUES ('2287', '510403', '西　区', '510400');
INSERT INTO `mx_cn_area` VALUES ('2288', '510411', '仁和区', '510400');
INSERT INTO `mx_cn_area` VALUES ('2289', '510421', '米易县', '510400');
INSERT INTO `mx_cn_area` VALUES ('2290', '510422', '盐边县', '510400');
INSERT INTO `mx_cn_area` VALUES ('2291', '510501', '市辖区', '510500');
INSERT INTO `mx_cn_area` VALUES ('2292', '510502', '江阳区', '510500');
INSERT INTO `mx_cn_area` VALUES ('2293', '510503', '纳溪区', '510500');
INSERT INTO `mx_cn_area` VALUES ('2294', '510504', '龙马潭区', '510500');
INSERT INTO `mx_cn_area` VALUES ('2295', '510521', '泸　县', '510500');
INSERT INTO `mx_cn_area` VALUES ('2296', '510522', '合江县', '510500');
INSERT INTO `mx_cn_area` VALUES ('2297', '510524', '叙永县', '510500');
INSERT INTO `mx_cn_area` VALUES ('2298', '510525', '古蔺县', '510500');
INSERT INTO `mx_cn_area` VALUES ('2299', '510601', '市辖区', '510600');
INSERT INTO `mx_cn_area` VALUES ('2300', '510603', '旌阳区', '510600');
INSERT INTO `mx_cn_area` VALUES ('2301', '510623', '中江县', '510600');
INSERT INTO `mx_cn_area` VALUES ('2302', '510626', '罗江县', '510600');
INSERT INTO `mx_cn_area` VALUES ('2303', '510681', '广汉市', '510600');
INSERT INTO `mx_cn_area` VALUES ('2304', '510682', '什邡市', '510600');
INSERT INTO `mx_cn_area` VALUES ('2305', '510683', '绵竹市', '510600');
INSERT INTO `mx_cn_area` VALUES ('2306', '510701', '市辖区', '510700');
INSERT INTO `mx_cn_area` VALUES ('2307', '510703', '涪城区', '510700');
INSERT INTO `mx_cn_area` VALUES ('2308', '510704', '游仙区', '510700');
INSERT INTO `mx_cn_area` VALUES ('2309', '510722', '三台县', '510700');
INSERT INTO `mx_cn_area` VALUES ('2310', '510723', '盐亭县', '510700');
INSERT INTO `mx_cn_area` VALUES ('2311', '510724', '安　县', '510700');
INSERT INTO `mx_cn_area` VALUES ('2312', '510725', '梓潼县', '510700');
INSERT INTO `mx_cn_area` VALUES ('2313', '510726', '北川羌族自治县', '510700');
INSERT INTO `mx_cn_area` VALUES ('2314', '510727', '平武县', '510700');
INSERT INTO `mx_cn_area` VALUES ('2315', '510781', '江油市', '510700');
INSERT INTO `mx_cn_area` VALUES ('2316', '510801', '市辖区', '510800');
INSERT INTO `mx_cn_area` VALUES ('2317', '510802', '市中区', '510800');
INSERT INTO `mx_cn_area` VALUES ('2318', '510811', '元坝区', '510800');
INSERT INTO `mx_cn_area` VALUES ('2319', '510812', '朝天区', '510800');
INSERT INTO `mx_cn_area` VALUES ('2320', '510821', '旺苍县', '510800');
INSERT INTO `mx_cn_area` VALUES ('2321', '510822', '青川县', '510800');
INSERT INTO `mx_cn_area` VALUES ('2322', '510823', '剑阁县', '510800');
INSERT INTO `mx_cn_area` VALUES ('2323', '510824', '苍溪县', '510800');
INSERT INTO `mx_cn_area` VALUES ('2324', '510901', '市辖区', '510900');
INSERT INTO `mx_cn_area` VALUES ('2325', '510903', '船山区', '510900');
INSERT INTO `mx_cn_area` VALUES ('2326', '510904', '安居区', '510900');
INSERT INTO `mx_cn_area` VALUES ('2327', '510921', '蓬溪县', '510900');
INSERT INTO `mx_cn_area` VALUES ('2328', '510922', '射洪县', '510900');
INSERT INTO `mx_cn_area` VALUES ('2329', '510923', '大英县', '510900');
INSERT INTO `mx_cn_area` VALUES ('2330', '511001', '市辖区', '511000');
INSERT INTO `mx_cn_area` VALUES ('2331', '511002', '市中区', '511000');
INSERT INTO `mx_cn_area` VALUES ('2332', '511011', '东兴区', '511000');
INSERT INTO `mx_cn_area` VALUES ('2333', '511024', '威远县', '511000');
INSERT INTO `mx_cn_area` VALUES ('2334', '511025', '资中县', '511000');
INSERT INTO `mx_cn_area` VALUES ('2335', '511028', '隆昌县', '511000');
INSERT INTO `mx_cn_area` VALUES ('2336', '511101', '市辖区', '511100');
INSERT INTO `mx_cn_area` VALUES ('2337', '511102', '市中区', '511100');
INSERT INTO `mx_cn_area` VALUES ('2338', '511111', '沙湾区', '511100');
INSERT INTO `mx_cn_area` VALUES ('2339', '511112', '五通桥区', '511100');
INSERT INTO `mx_cn_area` VALUES ('2340', '511113', '金口河区', '511100');
INSERT INTO `mx_cn_area` VALUES ('2341', '511123', '犍为县', '511100');
INSERT INTO `mx_cn_area` VALUES ('2342', '511124', '井研县', '511100');
INSERT INTO `mx_cn_area` VALUES ('2343', '511126', '夹江县', '511100');
INSERT INTO `mx_cn_area` VALUES ('2344', '511129', '沐川县', '511100');
INSERT INTO `mx_cn_area` VALUES ('2345', '511132', '峨边彝族自治县', '511100');
INSERT INTO `mx_cn_area` VALUES ('2346', '511133', '马边彝族自治县', '511100');
INSERT INTO `mx_cn_area` VALUES ('2347', '511181', '峨眉山市', '511100');
INSERT INTO `mx_cn_area` VALUES ('2348', '511301', '市辖区', '511300');
INSERT INTO `mx_cn_area` VALUES ('2349', '511302', '顺庆区', '511300');
INSERT INTO `mx_cn_area` VALUES ('2350', '511303', '高坪区', '511300');
INSERT INTO `mx_cn_area` VALUES ('2351', '511304', '嘉陵区', '511300');
INSERT INTO `mx_cn_area` VALUES ('2352', '511321', '南部县', '511300');
INSERT INTO `mx_cn_area` VALUES ('2353', '511322', '营山县', '511300');
INSERT INTO `mx_cn_area` VALUES ('2354', '511323', '蓬安县', '511300');
INSERT INTO `mx_cn_area` VALUES ('2355', '511324', '仪陇县', '511300');
INSERT INTO `mx_cn_area` VALUES ('2356', '511325', '西充县', '511300');
INSERT INTO `mx_cn_area` VALUES ('2357', '511381', '阆中市', '511300');
INSERT INTO `mx_cn_area` VALUES ('2358', '511401', '市辖区', '511400');
INSERT INTO `mx_cn_area` VALUES ('2359', '511402', '东坡区', '511400');
INSERT INTO `mx_cn_area` VALUES ('2360', '511421', '仁寿县', '511400');
INSERT INTO `mx_cn_area` VALUES ('2361', '511422', '彭山县', '511400');
INSERT INTO `mx_cn_area` VALUES ('2362', '511423', '洪雅县', '511400');
INSERT INTO `mx_cn_area` VALUES ('2363', '511424', '丹棱县', '511400');
INSERT INTO `mx_cn_area` VALUES ('2364', '511425', '青神县', '511400');
INSERT INTO `mx_cn_area` VALUES ('2365', '511501', '市辖区', '511500');
INSERT INTO `mx_cn_area` VALUES ('2366', '511502', '翠屏区', '511500');
INSERT INTO `mx_cn_area` VALUES ('2367', '511521', '宜宾县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2368', '511522', '南溪县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2369', '511523', '江安县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2370', '511524', '长宁县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2371', '511525', '高　县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2372', '511526', '珙　县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2373', '511527', '筠连县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2374', '511528', '兴文县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2375', '511529', '屏山县', '511500');
INSERT INTO `mx_cn_area` VALUES ('2376', '511601', '市辖区', '511600');
INSERT INTO `mx_cn_area` VALUES ('2377', '511602', '广安区', '511600');
INSERT INTO `mx_cn_area` VALUES ('2378', '511621', '岳池县', '511600');
INSERT INTO `mx_cn_area` VALUES ('2379', '511622', '武胜县', '511600');
INSERT INTO `mx_cn_area` VALUES ('2380', '511623', '邻水县', '511600');
INSERT INTO `mx_cn_area` VALUES ('2381', '511681', '华莹市', '511600');
INSERT INTO `mx_cn_area` VALUES ('2382', '511701', '市辖区', '511700');
INSERT INTO `mx_cn_area` VALUES ('2383', '511702', '通川区', '511700');
INSERT INTO `mx_cn_area` VALUES ('2384', '511721', '达　县', '511700');
INSERT INTO `mx_cn_area` VALUES ('2385', '511722', '宣汉县', '511700');
INSERT INTO `mx_cn_area` VALUES ('2386', '511723', '开江县', '511700');
INSERT INTO `mx_cn_area` VALUES ('2387', '511724', '大竹县', '511700');
INSERT INTO `mx_cn_area` VALUES ('2388', '511725', '渠　县', '511700');
INSERT INTO `mx_cn_area` VALUES ('2389', '511781', '万源市', '511700');
INSERT INTO `mx_cn_area` VALUES ('2390', '511801', '市辖区', '511800');
INSERT INTO `mx_cn_area` VALUES ('2391', '511802', '雨城区', '511800');
INSERT INTO `mx_cn_area` VALUES ('2392', '511821', '名山县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2393', '511822', '荥经县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2394', '511823', '汉源县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2395', '511824', '石棉县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2396', '511825', '天全县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2397', '511826', '芦山县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2398', '511827', '宝兴县', '511800');
INSERT INTO `mx_cn_area` VALUES ('2399', '511901', '市辖区', '511900');
INSERT INTO `mx_cn_area` VALUES ('2400', '511902', '巴州区', '511900');
INSERT INTO `mx_cn_area` VALUES ('2401', '511921', '通江县', '511900');
INSERT INTO `mx_cn_area` VALUES ('2402', '511922', '南江县', '511900');
INSERT INTO `mx_cn_area` VALUES ('2403', '511923', '平昌县', '511900');
INSERT INTO `mx_cn_area` VALUES ('2404', '512001', '市辖区', '512000');
INSERT INTO `mx_cn_area` VALUES ('2405', '512002', '雁江区', '512000');
INSERT INTO `mx_cn_area` VALUES ('2406', '512021', '安岳县', '512000');
INSERT INTO `mx_cn_area` VALUES ('2407', '512022', '乐至县', '512000');
INSERT INTO `mx_cn_area` VALUES ('2408', '512081', '简阳市', '512000');
INSERT INTO `mx_cn_area` VALUES ('2409', '513221', '汶川县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2410', '513222', '理　县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2411', '513223', '茂　县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2412', '513224', '松潘县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2413', '513225', '九寨沟县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2414', '513226', '金川县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2415', '513227', '小金县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2416', '513228', '黑水县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2417', '513229', '马尔康县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2418', '513230', '壤塘县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2419', '513231', '阿坝县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2420', '513232', '若尔盖县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2421', '513233', '红原县', '513200');
INSERT INTO `mx_cn_area` VALUES ('2422', '513321', '康定县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2423', '513322', '泸定县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2424', '513323', '丹巴县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2425', '513324', '九龙县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2426', '513325', '雅江县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2427', '513326', '道孚县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2428', '513327', '炉霍县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2429', '513328', '甘孜县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2430', '513329', '新龙县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2431', '513330', '德格县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2432', '513331', '白玉县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2433', '513332', '石渠县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2434', '513333', '色达县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2435', '513334', '理塘县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2436', '513335', '巴塘县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2437', '513336', '乡城县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2438', '513337', '稻城县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2439', '513338', '得荣县', '513300');
INSERT INTO `mx_cn_area` VALUES ('2440', '513401', '西昌市', '513400');
INSERT INTO `mx_cn_area` VALUES ('2441', '513422', '木里藏族自治县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2442', '513423', '盐源县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2443', '513424', '德昌县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2444', '513425', '会理县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2445', '513426', '会东县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2446', '513427', '宁南县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2447', '513428', '普格县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2448', '513429', '布拖县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2449', '513430', '金阳县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2450', '513431', '昭觉县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2451', '513432', '喜德县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2452', '513433', '冕宁县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2453', '513434', '越西县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2454', '513435', '甘洛县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2455', '513436', '美姑县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2456', '513437', '雷波县', '513400');
INSERT INTO `mx_cn_area` VALUES ('2457', '520101', '市辖区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2458', '520102', '南明区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2459', '520103', '云岩区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2460', '520111', '花溪区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2461', '520112', '乌当区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2462', '520113', '白云区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2463', '520114', '小河区', '520100');
INSERT INTO `mx_cn_area` VALUES ('2464', '520121', '开阳县', '520100');
INSERT INTO `mx_cn_area` VALUES ('2465', '520122', '息烽县', '520100');
INSERT INTO `mx_cn_area` VALUES ('2466', '520123', '修文县', '520100');
INSERT INTO `mx_cn_area` VALUES ('2467', '520181', '清镇市', '520100');
INSERT INTO `mx_cn_area` VALUES ('2468', '520201', '钟山区', '520200');
INSERT INTO `mx_cn_area` VALUES ('2469', '520203', '六枝特区', '520200');
INSERT INTO `mx_cn_area` VALUES ('2470', '520221', '水城县', '520200');
INSERT INTO `mx_cn_area` VALUES ('2471', '520222', '盘　县', '520200');
INSERT INTO `mx_cn_area` VALUES ('2472', '520301', '市辖区', '520300');
INSERT INTO `mx_cn_area` VALUES ('2473', '520302', '红花岗区', '520300');
INSERT INTO `mx_cn_area` VALUES ('2474', '520303', '汇川区', '520300');
INSERT INTO `mx_cn_area` VALUES ('2475', '520321', '遵义县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2476', '520322', '桐梓县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2477', '520323', '绥阳县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2478', '520324', '正安县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2479', '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2480', '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2481', '520327', '凤冈县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2482', '520328', '湄潭县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2483', '520329', '余庆县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2484', '520330', '习水县', '520300');
INSERT INTO `mx_cn_area` VALUES ('2485', '520381', '赤水市', '520300');
INSERT INTO `mx_cn_area` VALUES ('2486', '520382', '仁怀市', '520300');
INSERT INTO `mx_cn_area` VALUES ('2487', '520401', '市辖区', '520400');
INSERT INTO `mx_cn_area` VALUES ('2488', '520402', '西秀区', '520400');
INSERT INTO `mx_cn_area` VALUES ('2489', '520421', '平坝县', '520400');
INSERT INTO `mx_cn_area` VALUES ('2490', '520422', '普定县', '520400');
INSERT INTO `mx_cn_area` VALUES ('2491', '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `mx_cn_area` VALUES ('2492', '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `mx_cn_area` VALUES ('2493', '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `mx_cn_area` VALUES ('2494', '522201', '铜仁市', '522200');
INSERT INTO `mx_cn_area` VALUES ('2495', '522222', '江口县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2496', '522223', '玉屏侗族自治县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2497', '522224', '石阡县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2498', '522225', '思南县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2499', '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2500', '522227', '德江县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2501', '522228', '沿河土家族自治县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2502', '522229', '松桃苗族自治县', '522200');
INSERT INTO `mx_cn_area` VALUES ('2503', '522230', '万山特区', '522200');
INSERT INTO `mx_cn_area` VALUES ('2504', '522301', '兴义市', '522300');
INSERT INTO `mx_cn_area` VALUES ('2505', '522322', '兴仁县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2506', '522323', '普安县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2507', '522324', '晴隆县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2508', '522325', '贞丰县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2509', '522326', '望谟县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2510', '522327', '册亨县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2511', '522328', '安龙县', '522300');
INSERT INTO `mx_cn_area` VALUES ('2512', '522401', '毕节市', '522400');
INSERT INTO `mx_cn_area` VALUES ('2513', '522422', '大方县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2514', '522423', '黔西县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2515', '522424', '金沙县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2516', '522425', '织金县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2517', '522426', '纳雍县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2518', '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2519', '522428', '赫章县', '522400');
INSERT INTO `mx_cn_area` VALUES ('2520', '522601', '凯里市', '522600');
INSERT INTO `mx_cn_area` VALUES ('2521', '522622', '黄平县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2522', '522623', '施秉县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2523', '522624', '三穗县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2524', '522625', '镇远县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2525', '522626', '岑巩县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2526', '522627', '天柱县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2527', '522628', '锦屏县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2528', '522629', '剑河县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2529', '522630', '台江县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2530', '522631', '黎平县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2531', '522632', '榕江县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2532', '522633', '从江县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2533', '522634', '雷山县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2534', '522635', '麻江县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2535', '522636', '丹寨县', '522600');
INSERT INTO `mx_cn_area` VALUES ('2536', '522701', '都匀市', '522700');
INSERT INTO `mx_cn_area` VALUES ('2537', '522702', '福泉市', '522700');
INSERT INTO `mx_cn_area` VALUES ('2538', '522722', '荔波县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2539', '522723', '贵定县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2540', '522725', '瓮安县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2541', '522726', '独山县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2542', '522727', '平塘县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2543', '522728', '罗甸县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2544', '522729', '长顺县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2545', '522730', '龙里县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2546', '522731', '惠水县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2547', '522732', '三都水族自治县', '522700');
INSERT INTO `mx_cn_area` VALUES ('2548', '530101', '市辖区', '530100');
INSERT INTO `mx_cn_area` VALUES ('2549', '530102', '五华区', '530100');
INSERT INTO `mx_cn_area` VALUES ('2550', '530103', '盘龙区', '530100');
INSERT INTO `mx_cn_area` VALUES ('2551', '530111', '官渡区', '530100');
INSERT INTO `mx_cn_area` VALUES ('2552', '530112', '西山区', '530100');
INSERT INTO `mx_cn_area` VALUES ('2553', '530113', '东川区', '530100');
INSERT INTO `mx_cn_area` VALUES ('2554', '530121', '呈贡县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2555', '530122', '晋宁县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2556', '530124', '富民县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2557', '530125', '宜良县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2558', '530126', '石林彝族自治县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2559', '530127', '嵩明县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2560', '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2561', '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `mx_cn_area` VALUES ('2562', '530181', '安宁市', '530100');
INSERT INTO `mx_cn_area` VALUES ('2563', '530301', '市辖区', '530300');
INSERT INTO `mx_cn_area` VALUES ('2564', '530302', '麒麟区', '530300');
INSERT INTO `mx_cn_area` VALUES ('2565', '530321', '马龙县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2566', '530322', '陆良县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2567', '530323', '师宗县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2568', '530324', '罗平县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2569', '530325', '富源县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2570', '530326', '会泽县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2571', '530328', '沾益县', '530300');
INSERT INTO `mx_cn_area` VALUES ('2572', '530381', '宣威市', '530300');
INSERT INTO `mx_cn_area` VALUES ('2573', '530401', '市辖区', '530400');
INSERT INTO `mx_cn_area` VALUES ('2574', '530402', '红塔区', '530400');
INSERT INTO `mx_cn_area` VALUES ('2575', '530421', '江川县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2576', '530422', '澄江县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2577', '530423', '通海县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2578', '530424', '华宁县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2579', '530425', '易门县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2580', '530426', '峨山彝族自治县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2581', '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2582', '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `mx_cn_area` VALUES ('2583', '530501', '市辖区', '530500');
INSERT INTO `mx_cn_area` VALUES ('2584', '530502', '隆阳区', '530500');
INSERT INTO `mx_cn_area` VALUES ('2585', '530521', '施甸县', '530500');
INSERT INTO `mx_cn_area` VALUES ('2586', '530522', '腾冲县', '530500');
INSERT INTO `mx_cn_area` VALUES ('2587', '530523', '龙陵县', '530500');
INSERT INTO `mx_cn_area` VALUES ('2588', '530524', '昌宁县', '530500');
INSERT INTO `mx_cn_area` VALUES ('2589', '530601', '市辖区', '530600');
INSERT INTO `mx_cn_area` VALUES ('2590', '530602', '昭阳区', '530600');
INSERT INTO `mx_cn_area` VALUES ('2591', '530621', '鲁甸县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2592', '530622', '巧家县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2593', '530623', '盐津县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2594', '530624', '大关县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2595', '530625', '永善县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2596', '530626', '绥江县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2597', '530627', '镇雄县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2598', '530628', '彝良县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2599', '530629', '威信县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2600', '530630', '水富县', '530600');
INSERT INTO `mx_cn_area` VALUES ('2601', '530701', '市辖区', '530700');
INSERT INTO `mx_cn_area` VALUES ('2602', '530702', '古城区', '530700');
INSERT INTO `mx_cn_area` VALUES ('2603', '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `mx_cn_area` VALUES ('2604', '530722', '永胜县', '530700');
INSERT INTO `mx_cn_area` VALUES ('2605', '530723', '华坪县', '530700');
INSERT INTO `mx_cn_area` VALUES ('2606', '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `mx_cn_area` VALUES ('2607', '530801', '市辖区', '530800');
INSERT INTO `mx_cn_area` VALUES ('2608', '530802', '翠云区', '530800');
INSERT INTO `mx_cn_area` VALUES ('2609', '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2610', '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2611', '530823', '景东彝族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2612', '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2613', '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2614', '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2615', '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2616', '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2617', '530829', '西盟佤族自治县', '530800');
INSERT INTO `mx_cn_area` VALUES ('2618', '530901', '市辖区', '530900');
INSERT INTO `mx_cn_area` VALUES ('2619', '530902', '临翔区', '530900');
INSERT INTO `mx_cn_area` VALUES ('2620', '530921', '凤庆县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2621', '530922', '云　县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2622', '530923', '永德县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2623', '530924', '镇康县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2624', '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2625', '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2626', '530927', '沧源佤族自治县', '530900');
INSERT INTO `mx_cn_area` VALUES ('2627', '532301', '楚雄市', '532300');
INSERT INTO `mx_cn_area` VALUES ('2628', '532322', '双柏县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2629', '532323', '牟定县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2630', '532324', '南华县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2631', '532325', '姚安县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2632', '532326', '大姚县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2633', '532327', '永仁县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2634', '532328', '元谋县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2635', '532329', '武定县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2636', '532331', '禄丰县', '532300');
INSERT INTO `mx_cn_area` VALUES ('2637', '532501', '个旧市', '532500');
INSERT INTO `mx_cn_area` VALUES ('2638', '532502', '开远市', '532500');
INSERT INTO `mx_cn_area` VALUES ('2639', '532522', '蒙自县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2640', '532523', '屏边苗族自治县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2641', '532524', '建水县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2642', '532525', '石屏县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2643', '532526', '弥勒县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2644', '532527', '泸西县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2645', '532528', '元阳县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2646', '532529', '红河县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2647', '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2648', '532531', '绿春县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2649', '532532', '河口瑶族自治县', '532500');
INSERT INTO `mx_cn_area` VALUES ('2650', '532621', '文山县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2651', '532622', '砚山县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2652', '532623', '西畴县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2653', '532624', '麻栗坡县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2654', '532625', '马关县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2655', '532626', '丘北县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2656', '532627', '广南县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2657', '532628', '富宁县', '532600');
INSERT INTO `mx_cn_area` VALUES ('2658', '532801', '景洪市', '532800');
INSERT INTO `mx_cn_area` VALUES ('2659', '532822', '勐海县', '532800');
INSERT INTO `mx_cn_area` VALUES ('2660', '532823', '勐腊县', '532800');
INSERT INTO `mx_cn_area` VALUES ('2661', '532901', '大理市', '532900');
INSERT INTO `mx_cn_area` VALUES ('2662', '532922', '漾濞彝族自治县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2663', '532923', '祥云县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2664', '532924', '宾川县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2665', '532925', '弥渡县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2666', '532926', '南涧彝族自治县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2667', '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2668', '532928', '永平县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2669', '532929', '云龙县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2670', '532930', '洱源县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2671', '532931', '剑川县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2672', '532932', '鹤庆县', '532900');
INSERT INTO `mx_cn_area` VALUES ('2673', '533102', '瑞丽市', '533100');
INSERT INTO `mx_cn_area` VALUES ('2674', '533103', '潞西市', '533100');
INSERT INTO `mx_cn_area` VALUES ('2675', '533122', '梁河县', '533100');
INSERT INTO `mx_cn_area` VALUES ('2676', '533123', '盈江县', '533100');
INSERT INTO `mx_cn_area` VALUES ('2677', '533124', '陇川县', '533100');
INSERT INTO `mx_cn_area` VALUES ('2678', '533321', '泸水县', '533300');
INSERT INTO `mx_cn_area` VALUES ('2679', '533323', '福贡县', '533300');
INSERT INTO `mx_cn_area` VALUES ('2680', '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `mx_cn_area` VALUES ('2681', '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `mx_cn_area` VALUES ('2682', '533421', '香格里拉县', '533400');
INSERT INTO `mx_cn_area` VALUES ('2683', '533422', '德钦县', '533400');
INSERT INTO `mx_cn_area` VALUES ('2684', '533423', '维西傈僳族自治县', '533400');
INSERT INTO `mx_cn_area` VALUES ('2685', '540101', '市辖区', '540100');
INSERT INTO `mx_cn_area` VALUES ('2686', '540102', '城关区', '540100');
INSERT INTO `mx_cn_area` VALUES ('2687', '540121', '林周县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2688', '540122', '当雄县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2689', '540123', '尼木县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2690', '540124', '曲水县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2691', '540125', '堆龙德庆县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2692', '540126', '达孜县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2693', '540127', '墨竹工卡县', '540100');
INSERT INTO `mx_cn_area` VALUES ('2694', '542121', '昌都县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2695', '542122', '江达县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2696', '542123', '贡觉县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2697', '542124', '类乌齐县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2698', '542125', '丁青县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2699', '542126', '察雅县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2700', '542127', '八宿县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2701', '542128', '左贡县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2702', '542129', '芒康县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2703', '542132', '洛隆县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2704', '542133', '边坝县', '542100');
INSERT INTO `mx_cn_area` VALUES ('2705', '542221', '乃东县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2706', '542222', '扎囊县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2707', '542223', '贡嘎县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2708', '542224', '桑日县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2709', '542225', '琼结县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2710', '542226', '曲松县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2711', '542227', '措美县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2712', '542228', '洛扎县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2713', '542229', '加查县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2714', '542231', '隆子县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2715', '542232', '错那县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2716', '542233', '浪卡子县', '542200');
INSERT INTO `mx_cn_area` VALUES ('2717', '542301', '日喀则市', '542300');
INSERT INTO `mx_cn_area` VALUES ('2718', '542322', '南木林县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2719', '542323', '江孜县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2720', '542324', '定日县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2721', '542325', '萨迦县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2722', '542326', '拉孜县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2723', '542327', '昂仁县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2724', '542328', '谢通门县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2725', '542329', '白朗县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2726', '542330', '仁布县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2727', '542331', '康马县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2728', '542332', '定结县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2729', '542333', '仲巴县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2730', '542334', '亚东县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2731', '542335', '吉隆县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2732', '542336', '聂拉木县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2733', '542337', '萨嘎县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2734', '542338', '岗巴县', '542300');
INSERT INTO `mx_cn_area` VALUES ('2735', '542421', '那曲县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2736', '542422', '嘉黎县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2737', '542423', '比如县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2738', '542424', '聂荣县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2739', '542425', '安多县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2740', '542426', '申扎县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2741', '542427', '索　县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2742', '542428', '班戈县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2743', '542429', '巴青县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2744', '542430', '尼玛县', '542400');
INSERT INTO `mx_cn_area` VALUES ('2745', '542521', '普兰县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2746', '542522', '札达县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2747', '542523', '噶尔县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2748', '542524', '日土县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2749', '542525', '革吉县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2750', '542526', '改则县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2751', '542527', '措勤县', '542500');
INSERT INTO `mx_cn_area` VALUES ('2752', '542621', '林芝县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2753', '542622', '工布江达县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2754', '542623', '米林县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2755', '542624', '墨脱县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2756', '542625', '波密县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2757', '542626', '察隅县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2758', '542627', '朗　县', '542600');
INSERT INTO `mx_cn_area` VALUES ('2759', '610101', '市辖区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2760', '610102', '新城区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2761', '610103', '碑林区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2762', '610104', '莲湖区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2763', '610111', '灞桥区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2764', '610112', '未央区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2765', '610113', '雁塔区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2766', '610114', '阎良区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2767', '610115', '临潼区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2768', '610116', '长安区', '610100');
INSERT INTO `mx_cn_area` VALUES ('2769', '610122', '蓝田县', '610100');
INSERT INTO `mx_cn_area` VALUES ('2770', '610124', '周至县', '610100');
INSERT INTO `mx_cn_area` VALUES ('2771', '610125', '户　县', '610100');
INSERT INTO `mx_cn_area` VALUES ('2772', '610126', '高陵县', '610100');
INSERT INTO `mx_cn_area` VALUES ('2773', '610201', '市辖区', '610200');
INSERT INTO `mx_cn_area` VALUES ('2774', '610202', '王益区', '610200');
INSERT INTO `mx_cn_area` VALUES ('2775', '610203', '印台区', '610200');
INSERT INTO `mx_cn_area` VALUES ('2776', '610204', '耀州区', '610200');
INSERT INTO `mx_cn_area` VALUES ('2777', '610222', '宜君县', '610200');
INSERT INTO `mx_cn_area` VALUES ('2778', '610301', '市辖区', '610300');
INSERT INTO `mx_cn_area` VALUES ('2779', '610302', '渭滨区', '610300');
INSERT INTO `mx_cn_area` VALUES ('2780', '610303', '金台区', '610300');
INSERT INTO `mx_cn_area` VALUES ('2781', '610304', '陈仓区', '610300');
INSERT INTO `mx_cn_area` VALUES ('2782', '610322', '凤翔县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2783', '610323', '岐山县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2784', '610324', '扶风县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2785', '610326', '眉　县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2786', '610327', '陇　县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2787', '610328', '千阳县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2788', '610329', '麟游县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2789', '610330', '凤　县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2790', '610331', '太白县', '610300');
INSERT INTO `mx_cn_area` VALUES ('2791', '610401', '市辖区', '610400');
INSERT INTO `mx_cn_area` VALUES ('2792', '610402', '秦都区', '610400');
INSERT INTO `mx_cn_area` VALUES ('2793', '610403', '杨凌区', '610400');
INSERT INTO `mx_cn_area` VALUES ('2794', '610404', '渭城区', '610400');
INSERT INTO `mx_cn_area` VALUES ('2795', '610422', '三原县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2796', '610423', '泾阳县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2797', '610424', '乾　县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2798', '610425', '礼泉县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2799', '610426', '永寿县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2800', '610427', '彬　县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2801', '610428', '长武县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2802', '610429', '旬邑县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2803', '610430', '淳化县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2804', '610431', '武功县', '610400');
INSERT INTO `mx_cn_area` VALUES ('2805', '610481', '兴平市', '610400');
INSERT INTO `mx_cn_area` VALUES ('2806', '610501', '市辖区', '610500');
INSERT INTO `mx_cn_area` VALUES ('2807', '610502', '临渭区', '610500');
INSERT INTO `mx_cn_area` VALUES ('2808', '610521', '华　县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2809', '610522', '潼关县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2810', '610523', '大荔县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2811', '610524', '合阳县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2812', '610525', '澄城县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2813', '610526', '蒲城县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2814', '610527', '白水县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2815', '610528', '富平县', '610500');
INSERT INTO `mx_cn_area` VALUES ('2816', '610581', '韩城市', '610500');
INSERT INTO `mx_cn_area` VALUES ('2817', '610582', '华阴市', '610500');
INSERT INTO `mx_cn_area` VALUES ('2818', '610601', '市辖区', '610600');
INSERT INTO `mx_cn_area` VALUES ('2819', '610602', '宝塔区', '610600');
INSERT INTO `mx_cn_area` VALUES ('2820', '610621', '延长县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2821', '610622', '延川县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2822', '610623', '子长县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2823', '610624', '安塞县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2824', '610625', '志丹县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2825', '610626', '吴旗县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2826', '610627', '甘泉县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2827', '610628', '富　县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2828', '610629', '洛川县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2829', '610630', '宜川县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2830', '610631', '黄龙县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2831', '610632', '黄陵县', '610600');
INSERT INTO `mx_cn_area` VALUES ('2832', '610701', '市辖区', '610700');
INSERT INTO `mx_cn_area` VALUES ('2833', '610702', '汉台区', '610700');
INSERT INTO `mx_cn_area` VALUES ('2834', '610721', '南郑县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2835', '610722', '城固县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2836', '610723', '洋　县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2837', '610724', '西乡县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2838', '610725', '勉　县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2839', '610726', '宁强县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2840', '610727', '略阳县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2841', '610728', '镇巴县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2842', '610729', '留坝县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2843', '610730', '佛坪县', '610700');
INSERT INTO `mx_cn_area` VALUES ('2844', '610801', '市辖区', '610800');
INSERT INTO `mx_cn_area` VALUES ('2845', '610802', '榆阳区', '610800');
INSERT INTO `mx_cn_area` VALUES ('2846', '610821', '神木县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2847', '610822', '府谷县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2848', '610823', '横山县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2849', '610824', '靖边县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2850', '610825', '定边县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2851', '610826', '绥德县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2852', '610827', '米脂县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2853', '610828', '佳　县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2854', '610829', '吴堡县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2855', '610830', '清涧县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2856', '610831', '子洲县', '610800');
INSERT INTO `mx_cn_area` VALUES ('2857', '610901', '市辖区', '610900');
INSERT INTO `mx_cn_area` VALUES ('2858', '610902', '汉滨区', '610900');
INSERT INTO `mx_cn_area` VALUES ('2859', '610921', '汉阴县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2860', '610922', '石泉县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2861', '610923', '宁陕县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2862', '610924', '紫阳县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2863', '610925', '岚皋县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2864', '610926', '平利县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2865', '610927', '镇坪县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2866', '610928', '旬阳县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2867', '610929', '白河县', '610900');
INSERT INTO `mx_cn_area` VALUES ('2868', '611001', '市辖区', '611000');
INSERT INTO `mx_cn_area` VALUES ('2869', '611002', '商州区', '611000');
INSERT INTO `mx_cn_area` VALUES ('2870', '611021', '洛南县', '611000');
INSERT INTO `mx_cn_area` VALUES ('2871', '611022', '丹凤县', '611000');
INSERT INTO `mx_cn_area` VALUES ('2872', '611023', '商南县', '611000');
INSERT INTO `mx_cn_area` VALUES ('2873', '611024', '山阳县', '611000');
INSERT INTO `mx_cn_area` VALUES ('2874', '611025', '镇安县', '611000');
INSERT INTO `mx_cn_area` VALUES ('2875', '611026', '柞水县', '611000');
INSERT INTO `mx_cn_area` VALUES ('2876', '620101', '市辖区', '620100');
INSERT INTO `mx_cn_area` VALUES ('2877', '620102', '城关区', '620100');
INSERT INTO `mx_cn_area` VALUES ('2878', '620103', '七里河区', '620100');
INSERT INTO `mx_cn_area` VALUES ('2879', '620104', '西固区', '620100');
INSERT INTO `mx_cn_area` VALUES ('2880', '620105', '安宁区', '620100');
INSERT INTO `mx_cn_area` VALUES ('2881', '620111', '红古区', '620100');
INSERT INTO `mx_cn_area` VALUES ('2882', '620121', '永登县', '620100');
INSERT INTO `mx_cn_area` VALUES ('2883', '620122', '皋兰县', '620100');
INSERT INTO `mx_cn_area` VALUES ('2884', '620123', '榆中县', '620100');
INSERT INTO `mx_cn_area` VALUES ('2885', '620201', '市辖区', '620200');
INSERT INTO `mx_cn_area` VALUES ('2886', '620301', '市辖区', '620300');
INSERT INTO `mx_cn_area` VALUES ('2887', '620302', '金川区', '620300');
INSERT INTO `mx_cn_area` VALUES ('2888', '620321', '永昌县', '620300');
INSERT INTO `mx_cn_area` VALUES ('2889', '620401', '市辖区', '620400');
INSERT INTO `mx_cn_area` VALUES ('2890', '620402', '白银区', '620400');
INSERT INTO `mx_cn_area` VALUES ('2891', '620403', '平川区', '620400');
INSERT INTO `mx_cn_area` VALUES ('2892', '620421', '靖远县', '620400');
INSERT INTO `mx_cn_area` VALUES ('2893', '620422', '会宁县', '620400');
INSERT INTO `mx_cn_area` VALUES ('2894', '620423', '景泰县', '620400');
INSERT INTO `mx_cn_area` VALUES ('2895', '620501', '市辖区', '620500');
INSERT INTO `mx_cn_area` VALUES ('2896', '620502', '秦城区', '620500');
INSERT INTO `mx_cn_area` VALUES ('2897', '620503', '北道区', '620500');
INSERT INTO `mx_cn_area` VALUES ('2898', '620521', '清水县', '620500');
INSERT INTO `mx_cn_area` VALUES ('2899', '620522', '秦安县', '620500');
INSERT INTO `mx_cn_area` VALUES ('2900', '620523', '甘谷县', '620500');
INSERT INTO `mx_cn_area` VALUES ('2901', '620524', '武山县', '620500');
INSERT INTO `mx_cn_area` VALUES ('2902', '620525', '张家川回族自治县', '620500');
INSERT INTO `mx_cn_area` VALUES ('2903', '620601', '市辖区', '620600');
INSERT INTO `mx_cn_area` VALUES ('2904', '620602', '凉州区', '620600');
INSERT INTO `mx_cn_area` VALUES ('2905', '620621', '民勤县', '620600');
INSERT INTO `mx_cn_area` VALUES ('2906', '620622', '古浪县', '620600');
INSERT INTO `mx_cn_area` VALUES ('2907', '620623', '天祝藏族自治县', '620600');
INSERT INTO `mx_cn_area` VALUES ('2908', '620701', '市辖区', '620700');
INSERT INTO `mx_cn_area` VALUES ('2909', '620702', '甘州区', '620700');
INSERT INTO `mx_cn_area` VALUES ('2910', '620721', '肃南裕固族自治县', '620700');
INSERT INTO `mx_cn_area` VALUES ('2911', '620722', '民乐县', '620700');
INSERT INTO `mx_cn_area` VALUES ('2912', '620723', '临泽县', '620700');
INSERT INTO `mx_cn_area` VALUES ('2913', '620724', '高台县', '620700');
INSERT INTO `mx_cn_area` VALUES ('2914', '620725', '山丹县', '620700');
INSERT INTO `mx_cn_area` VALUES ('2915', '620801', '市辖区', '620800');
INSERT INTO `mx_cn_area` VALUES ('2916', '620802', '崆峒区', '620800');
INSERT INTO `mx_cn_area` VALUES ('2917', '620821', '泾川县', '620800');
INSERT INTO `mx_cn_area` VALUES ('2918', '620822', '灵台县', '620800');
INSERT INTO `mx_cn_area` VALUES ('2919', '620823', '崇信县', '620800');
INSERT INTO `mx_cn_area` VALUES ('2920', '620824', '华亭县', '620800');
INSERT INTO `mx_cn_area` VALUES ('2921', '620825', '庄浪县', '620800');
INSERT INTO `mx_cn_area` VALUES ('2922', '620826', '静宁县', '620800');
INSERT INTO `mx_cn_area` VALUES ('2923', '620901', '市辖区', '620900');
INSERT INTO `mx_cn_area` VALUES ('2924', '620902', '肃州区', '620900');
INSERT INTO `mx_cn_area` VALUES ('2925', '620921', '金塔县', '620900');
INSERT INTO `mx_cn_area` VALUES ('2926', '620922', '安西县', '620900');
INSERT INTO `mx_cn_area` VALUES ('2927', '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `mx_cn_area` VALUES ('2928', '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `mx_cn_area` VALUES ('2929', '620981', '玉门市', '620900');
INSERT INTO `mx_cn_area` VALUES ('2930', '620982', '敦煌市', '620900');
INSERT INTO `mx_cn_area` VALUES ('2931', '621001', '市辖区', '621000');
INSERT INTO `mx_cn_area` VALUES ('2932', '621002', '西峰区', '621000');
INSERT INTO `mx_cn_area` VALUES ('2933', '621021', '庆城县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2934', '621022', '环　县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2935', '621023', '华池县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2936', '621024', '合水县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2937', '621025', '正宁县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2938', '621026', '宁　县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2939', '621027', '镇原县', '621000');
INSERT INTO `mx_cn_area` VALUES ('2940', '621101', '市辖区', '621100');
INSERT INTO `mx_cn_area` VALUES ('2941', '621102', '安定区', '621100');
INSERT INTO `mx_cn_area` VALUES ('2942', '621121', '通渭县', '621100');
INSERT INTO `mx_cn_area` VALUES ('2943', '621122', '陇西县', '621100');
INSERT INTO `mx_cn_area` VALUES ('2944', '621123', '渭源县', '621100');
INSERT INTO `mx_cn_area` VALUES ('2945', '621124', '临洮县', '621100');
INSERT INTO `mx_cn_area` VALUES ('2946', '621125', '漳　县', '621100');
INSERT INTO `mx_cn_area` VALUES ('2947', '621126', '岷　县', '621100');
INSERT INTO `mx_cn_area` VALUES ('2948', '621201', '市辖区', '621200');
INSERT INTO `mx_cn_area` VALUES ('2949', '621202', '武都区', '621200');
INSERT INTO `mx_cn_area` VALUES ('2950', '621221', '成　县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2951', '621222', '文　县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2952', '621223', '宕昌县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2953', '621224', '康　县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2954', '621225', '西和县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2955', '621226', '礼　县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2956', '621227', '徽　县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2957', '621228', '两当县', '621200');
INSERT INTO `mx_cn_area` VALUES ('2958', '622901', '临夏市', '622900');
INSERT INTO `mx_cn_area` VALUES ('2959', '622921', '临夏县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2960', '622922', '康乐县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2961', '622923', '永靖县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2962', '622924', '广河县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2963', '622925', '和政县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2964', '622926', '东乡族自治县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2965', '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `mx_cn_area` VALUES ('2966', '623001', '合作市', '623000');
INSERT INTO `mx_cn_area` VALUES ('2967', '623021', '临潭县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2968', '623022', '卓尼县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2969', '623023', '舟曲县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2970', '623024', '迭部县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2971', '623025', '玛曲县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2972', '623026', '碌曲县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2973', '623027', '夏河县', '623000');
INSERT INTO `mx_cn_area` VALUES ('2974', '630101', '市辖区', '630100');
INSERT INTO `mx_cn_area` VALUES ('2975', '630102', '城东区', '630100');
INSERT INTO `mx_cn_area` VALUES ('2976', '630103', '城中区', '630100');
INSERT INTO `mx_cn_area` VALUES ('2977', '630104', '城西区', '630100');
INSERT INTO `mx_cn_area` VALUES ('2978', '630105', '城北区', '630100');
INSERT INTO `mx_cn_area` VALUES ('2979', '630121', '大通回族土族自治县', '630100');
INSERT INTO `mx_cn_area` VALUES ('2980', '630122', '湟中县', '630100');
INSERT INTO `mx_cn_area` VALUES ('2981', '630123', '湟源县', '630100');
INSERT INTO `mx_cn_area` VALUES ('2982', '632121', '平安县', '632100');
INSERT INTO `mx_cn_area` VALUES ('2983', '632122', '民和回族土族自治县', '632100');
INSERT INTO `mx_cn_area` VALUES ('2984', '632123', '乐都县', '632100');
INSERT INTO `mx_cn_area` VALUES ('2985', '632126', '互助土族自治县', '632100');
INSERT INTO `mx_cn_area` VALUES ('2986', '632127', '化隆回族自治县', '632100');
INSERT INTO `mx_cn_area` VALUES ('2987', '632128', '循化撒拉族自治县', '632100');
INSERT INTO `mx_cn_area` VALUES ('2988', '632221', '门源回族自治县', '632200');
INSERT INTO `mx_cn_area` VALUES ('2989', '632222', '祁连县', '632200');
INSERT INTO `mx_cn_area` VALUES ('2990', '632223', '海晏县', '632200');
INSERT INTO `mx_cn_area` VALUES ('2991', '632224', '刚察县', '632200');
INSERT INTO `mx_cn_area` VALUES ('2992', '632321', '同仁县', '632300');
INSERT INTO `mx_cn_area` VALUES ('2993', '632322', '尖扎县', '632300');
INSERT INTO `mx_cn_area` VALUES ('2994', '632323', '泽库县', '632300');
INSERT INTO `mx_cn_area` VALUES ('2995', '632324', '河南蒙古族自治县', '632300');
INSERT INTO `mx_cn_area` VALUES ('2996', '632521', '共和县', '632500');
INSERT INTO `mx_cn_area` VALUES ('2997', '632522', '同德县', '632500');
INSERT INTO `mx_cn_area` VALUES ('2998', '632523', '贵德县', '632500');
INSERT INTO `mx_cn_area` VALUES ('2999', '632524', '兴海县', '632500');
INSERT INTO `mx_cn_area` VALUES ('3000', '632525', '贵南县', '632500');
INSERT INTO `mx_cn_area` VALUES ('3001', '632621', '玛沁县', '632600');
INSERT INTO `mx_cn_area` VALUES ('3002', '632622', '班玛县', '632600');
INSERT INTO `mx_cn_area` VALUES ('3003', '632623', '甘德县', '632600');
INSERT INTO `mx_cn_area` VALUES ('3004', '632624', '达日县', '632600');
INSERT INTO `mx_cn_area` VALUES ('3005', '632625', '久治县', '632600');
INSERT INTO `mx_cn_area` VALUES ('3006', '632626', '玛多县', '632600');
INSERT INTO `mx_cn_area` VALUES ('3007', '632721', '玉树县', '632700');
INSERT INTO `mx_cn_area` VALUES ('3008', '632722', '杂多县', '632700');
INSERT INTO `mx_cn_area` VALUES ('3009', '632723', '称多县', '632700');
INSERT INTO `mx_cn_area` VALUES ('3010', '632724', '治多县', '632700');
INSERT INTO `mx_cn_area` VALUES ('3011', '632725', '囊谦县', '632700');
INSERT INTO `mx_cn_area` VALUES ('3012', '632726', '曲麻莱县', '632700');
INSERT INTO `mx_cn_area` VALUES ('3013', '632801', '格尔木市', '632800');
INSERT INTO `mx_cn_area` VALUES ('3014', '632802', '德令哈市', '632800');
INSERT INTO `mx_cn_area` VALUES ('3015', '632821', '乌兰县', '632800');
INSERT INTO `mx_cn_area` VALUES ('3016', '632822', '都兰县', '632800');
INSERT INTO `mx_cn_area` VALUES ('3017', '632823', '天峻县', '632800');
INSERT INTO `mx_cn_area` VALUES ('3018', '640101', '市辖区', '640100');
INSERT INTO `mx_cn_area` VALUES ('3019', '640104', '兴庆区', '640100');
INSERT INTO `mx_cn_area` VALUES ('3020', '640105', '西夏区', '640100');
INSERT INTO `mx_cn_area` VALUES ('3021', '640106', '金凤区', '640100');
INSERT INTO `mx_cn_area` VALUES ('3022', '640121', '永宁县', '640100');
INSERT INTO `mx_cn_area` VALUES ('3023', '640122', '贺兰县', '640100');
INSERT INTO `mx_cn_area` VALUES ('3024', '640181', '灵武市', '640100');
INSERT INTO `mx_cn_area` VALUES ('3025', '640201', '市辖区', '640200');
INSERT INTO `mx_cn_area` VALUES ('3026', '640202', '大武口区', '640200');
INSERT INTO `mx_cn_area` VALUES ('3027', '640205', '惠农区', '640200');
INSERT INTO `mx_cn_area` VALUES ('3028', '640221', '平罗县', '640200');
INSERT INTO `mx_cn_area` VALUES ('3029', '640301', '市辖区', '640300');
INSERT INTO `mx_cn_area` VALUES ('3030', '640302', '利通区', '640300');
INSERT INTO `mx_cn_area` VALUES ('3031', '640323', '盐池县', '640300');
INSERT INTO `mx_cn_area` VALUES ('3032', '640324', '同心县', '640300');
INSERT INTO `mx_cn_area` VALUES ('3033', '640381', '青铜峡市', '640300');
INSERT INTO `mx_cn_area` VALUES ('3034', '640401', '市辖区', '640400');
INSERT INTO `mx_cn_area` VALUES ('3035', '640402', '原州区', '640400');
INSERT INTO `mx_cn_area` VALUES ('3036', '640422', '西吉县', '640400');
INSERT INTO `mx_cn_area` VALUES ('3037', '640423', '隆德县', '640400');
INSERT INTO `mx_cn_area` VALUES ('3038', '640424', '泾源县', '640400');
INSERT INTO `mx_cn_area` VALUES ('3039', '640425', '彭阳县', '640400');
INSERT INTO `mx_cn_area` VALUES ('3040', '640501', '市辖区', '640500');
INSERT INTO `mx_cn_area` VALUES ('3041', '640502', '沙坡头区', '640500');
INSERT INTO `mx_cn_area` VALUES ('3042', '640521', '中宁县', '640500');
INSERT INTO `mx_cn_area` VALUES ('3043', '640522', '海原县', '640500');
INSERT INTO `mx_cn_area` VALUES ('3044', '650101', '市辖区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3045', '650102', '天山区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3046', '650103', '沙依巴克区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3047', '650104', '新市区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3048', '650105', '水磨沟区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3049', '650106', '头屯河区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3050', '650107', '达坂城区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3051', '650108', '东山区', '650100');
INSERT INTO `mx_cn_area` VALUES ('3052', '650121', '乌鲁木齐县', '650100');
INSERT INTO `mx_cn_area` VALUES ('3053', '650201', '市辖区', '650200');
INSERT INTO `mx_cn_area` VALUES ('3054', '650202', '独山子区', '650200');
INSERT INTO `mx_cn_area` VALUES ('3055', '650203', '克拉玛依区', '650200');
INSERT INTO `mx_cn_area` VALUES ('3056', '650204', '白碱滩区', '650200');
INSERT INTO `mx_cn_area` VALUES ('3057', '650205', '乌尔禾区', '650200');
INSERT INTO `mx_cn_area` VALUES ('3058', '652101', '吐鲁番市', '652100');
INSERT INTO `mx_cn_area` VALUES ('3059', '652122', '鄯善县', '652100');
INSERT INTO `mx_cn_area` VALUES ('3060', '652123', '托克逊县', '652100');
INSERT INTO `mx_cn_area` VALUES ('3061', '652201', '哈密市', '652200');
INSERT INTO `mx_cn_area` VALUES ('3062', '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `mx_cn_area` VALUES ('3063', '652223', '伊吾县', '652200');
INSERT INTO `mx_cn_area` VALUES ('3064', '652301', '昌吉市', '652300');
INSERT INTO `mx_cn_area` VALUES ('3065', '652302', '阜康市', '652300');
INSERT INTO `mx_cn_area` VALUES ('3066', '652303', '米泉市', '652300');
INSERT INTO `mx_cn_area` VALUES ('3067', '652323', '呼图壁县', '652300');
INSERT INTO `mx_cn_area` VALUES ('3068', '652324', '玛纳斯县', '652300');
INSERT INTO `mx_cn_area` VALUES ('3069', '652325', '奇台县', '652300');
INSERT INTO `mx_cn_area` VALUES ('3070', '652327', '吉木萨尔县', '652300');
INSERT INTO `mx_cn_area` VALUES ('3071', '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `mx_cn_area` VALUES ('3072', '652701', '博乐市', '652700');
INSERT INTO `mx_cn_area` VALUES ('3073', '652722', '精河县', '652700');
INSERT INTO `mx_cn_area` VALUES ('3074', '652723', '温泉县', '652700');
INSERT INTO `mx_cn_area` VALUES ('3075', '652801', '库尔勒市', '652800');
INSERT INTO `mx_cn_area` VALUES ('3076', '652822', '轮台县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3077', '652823', '尉犁县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3078', '652824', '若羌县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3079', '652825', '且末县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3080', '652826', '焉耆回族自治县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3081', '652827', '和静县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3082', '652828', '和硕县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3083', '652829', '博湖县', '652800');
INSERT INTO `mx_cn_area` VALUES ('3084', '652901', '阿克苏市', '652900');
INSERT INTO `mx_cn_area` VALUES ('3085', '652922', '温宿县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3086', '652923', '库车县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3087', '652924', '沙雅县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3088', '652925', '新和县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3089', '652926', '拜城县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3090', '652927', '乌什县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3091', '652928', '阿瓦提县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3092', '652929', '柯坪县', '652900');
INSERT INTO `mx_cn_area` VALUES ('3093', '653001', '阿图什市', '653000');
INSERT INTO `mx_cn_area` VALUES ('3094', '653022', '阿克陶县', '653000');
INSERT INTO `mx_cn_area` VALUES ('3095', '653023', '阿合奇县', '653000');
INSERT INTO `mx_cn_area` VALUES ('3096', '653024', '乌恰县', '653000');
INSERT INTO `mx_cn_area` VALUES ('3097', '653101', '喀什市', '653100');
INSERT INTO `mx_cn_area` VALUES ('3098', '653121', '疏附县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3099', '653122', '疏勒县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3100', '653123', '英吉沙县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3101', '653124', '泽普县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3102', '653125', '莎车县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3103', '653126', '叶城县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3104', '653127', '麦盖提县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3105', '653128', '岳普湖县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3106', '653129', '伽师县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3107', '653130', '巴楚县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3108', '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `mx_cn_area` VALUES ('3109', '653201', '和田市', '653200');
INSERT INTO `mx_cn_area` VALUES ('3110', '653221', '和田县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3111', '653222', '墨玉县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3112', '653223', '皮山县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3113', '653224', '洛浦县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3114', '653225', '策勒县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3115', '653226', '于田县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3116', '653227', '民丰县', '653200');
INSERT INTO `mx_cn_area` VALUES ('3117', '654002', '伊宁市', '654000');
INSERT INTO `mx_cn_area` VALUES ('3118', '654003', '奎屯市', '654000');
INSERT INTO `mx_cn_area` VALUES ('3119', '654021', '伊宁县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3120', '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3121', '654023', '霍城县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3122', '654024', '巩留县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3123', '654025', '新源县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3124', '654026', '昭苏县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3125', '654027', '特克斯县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3126', '654028', '尼勒克县', '654000');
INSERT INTO `mx_cn_area` VALUES ('3127', '654201', '塔城市', '654200');
INSERT INTO `mx_cn_area` VALUES ('3128', '654202', '乌苏市', '654200');
INSERT INTO `mx_cn_area` VALUES ('3129', '654221', '额敏县', '654200');
INSERT INTO `mx_cn_area` VALUES ('3130', '654223', '沙湾县', '654200');
INSERT INTO `mx_cn_area` VALUES ('3131', '654224', '托里县', '654200');
INSERT INTO `mx_cn_area` VALUES ('3132', '654225', '裕民县', '654200');
INSERT INTO `mx_cn_area` VALUES ('3133', '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `mx_cn_area` VALUES ('3134', '654301', '阿勒泰市', '654300');
INSERT INTO `mx_cn_area` VALUES ('3135', '654321', '布尔津县', '654300');
INSERT INTO `mx_cn_area` VALUES ('3136', '654322', '富蕴县', '654300');
INSERT INTO `mx_cn_area` VALUES ('3137', '654323', '福海县', '654300');
INSERT INTO `mx_cn_area` VALUES ('3138', '654324', '哈巴河县', '654300');
INSERT INTO `mx_cn_area` VALUES ('3139', '654325', '青河县', '654300');
INSERT INTO `mx_cn_area` VALUES ('3140', '654326', '吉木乃县', '654300');
INSERT INTO `mx_cn_area` VALUES ('3141', '659001', '石河子市', '659000');
INSERT INTO `mx_cn_area` VALUES ('3142', '659002', '阿拉尔市', '659000');
INSERT INTO `mx_cn_area` VALUES ('3143', '659003', '图木舒克市', '659000');
INSERT INTO `mx_cn_area` VALUES ('3144', '659004', '五家渠市', '659000');
INSERT INTO `mx_cn_area` VALUES ('3145', '710101', '台  湾', '710100');
INSERT INTO `mx_cn_area` VALUES ('3146', '810101', '香  港', '810100');
INSERT INTO `mx_cn_area` VALUES ('3147', '820101', '澳  门', '820100');

-- ----------------------------
-- Table structure for mx_cn_city
-- ----------------------------
DROP TABLE IF EXISTS `mx_cn_city`;
CREATE TABLE `mx_cn_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '市管理主键',
  `code` char(6) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `pcode` char(6) NOT NULL COMMENT '父编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='市管理';

-- ----------------------------
-- Records of mx_cn_city
-- ----------------------------
INSERT INTO `mx_cn_city` VALUES ('1', '110100', '市辖区', '110000');
INSERT INTO `mx_cn_city` VALUES ('2', '110200', '县', '110000');
INSERT INTO `mx_cn_city` VALUES ('3', '120100', '市辖区', '120000');
INSERT INTO `mx_cn_city` VALUES ('4', '120200', '县', '120000');
INSERT INTO `mx_cn_city` VALUES ('5', '130100', '石家庄市', '130000');
INSERT INTO `mx_cn_city` VALUES ('6', '130200', '唐山市', '130000');
INSERT INTO `mx_cn_city` VALUES ('7', '130300', '秦皇岛市', '130000');
INSERT INTO `mx_cn_city` VALUES ('8', '130400', '邯郸市', '130000');
INSERT INTO `mx_cn_city` VALUES ('9', '130500', '邢台市', '130000');
INSERT INTO `mx_cn_city` VALUES ('10', '130600', '保定市', '130000');
INSERT INTO `mx_cn_city` VALUES ('11', '130700', '张家口市', '130000');
INSERT INTO `mx_cn_city` VALUES ('12', '130800', '承德市', '130000');
INSERT INTO `mx_cn_city` VALUES ('13', '130900', '沧州市', '130000');
INSERT INTO `mx_cn_city` VALUES ('14', '131000', '廊坊市', '130000');
INSERT INTO `mx_cn_city` VALUES ('15', '131100', '衡水市', '130000');
INSERT INTO `mx_cn_city` VALUES ('16', '140100', '太原市', '140000');
INSERT INTO `mx_cn_city` VALUES ('17', '140200', '大同市', '140000');
INSERT INTO `mx_cn_city` VALUES ('18', '140300', '阳泉市', '140000');
INSERT INTO `mx_cn_city` VALUES ('19', '140400', '长治市', '140000');
INSERT INTO `mx_cn_city` VALUES ('20', '140500', '晋城市', '140000');
INSERT INTO `mx_cn_city` VALUES ('21', '140600', '朔州市', '140000');
INSERT INTO `mx_cn_city` VALUES ('22', '140700', '晋中市', '140000');
INSERT INTO `mx_cn_city` VALUES ('23', '140800', '运城市', '140000');
INSERT INTO `mx_cn_city` VALUES ('24', '140900', '忻州市', '140000');
INSERT INTO `mx_cn_city` VALUES ('25', '141000', '临汾市', '140000');
INSERT INTO `mx_cn_city` VALUES ('26', '141100', '吕梁市', '140000');
INSERT INTO `mx_cn_city` VALUES ('27', '150100', '呼和浩特市', '150000');
INSERT INTO `mx_cn_city` VALUES ('28', '150200', '包头市', '150000');
INSERT INTO `mx_cn_city` VALUES ('29', '150300', '乌海市', '150000');
INSERT INTO `mx_cn_city` VALUES ('30', '150400', '赤峰市', '150000');
INSERT INTO `mx_cn_city` VALUES ('31', '150500', '通辽市', '150000');
INSERT INTO `mx_cn_city` VALUES ('32', '150600', '鄂尔多斯市', '150000');
INSERT INTO `mx_cn_city` VALUES ('33', '150700', '呼伦贝尔市', '150000');
INSERT INTO `mx_cn_city` VALUES ('34', '150800', '巴彦淖尔市', '150000');
INSERT INTO `mx_cn_city` VALUES ('35', '150900', '乌兰察布市', '150000');
INSERT INTO `mx_cn_city` VALUES ('36', '152200', '兴安盟', '150000');
INSERT INTO `mx_cn_city` VALUES ('37', '152500', '锡林郭勒盟', '150000');
INSERT INTO `mx_cn_city` VALUES ('38', '152900', '阿拉善盟', '150000');
INSERT INTO `mx_cn_city` VALUES ('39', '210100', '沈阳市', '210000');
INSERT INTO `mx_cn_city` VALUES ('40', '210200', '大连市', '210000');
INSERT INTO `mx_cn_city` VALUES ('41', '210300', '鞍山市', '210000');
INSERT INTO `mx_cn_city` VALUES ('42', '210400', '抚顺市', '210000');
INSERT INTO `mx_cn_city` VALUES ('43', '210500', '本溪市', '210000');
INSERT INTO `mx_cn_city` VALUES ('44', '210600', '丹东市', '210000');
INSERT INTO `mx_cn_city` VALUES ('45', '210700', '锦州市', '210000');
INSERT INTO `mx_cn_city` VALUES ('46', '210800', '营口市', '210000');
INSERT INTO `mx_cn_city` VALUES ('47', '210900', '阜新市', '210000');
INSERT INTO `mx_cn_city` VALUES ('48', '211000', '辽阳市', '210000');
INSERT INTO `mx_cn_city` VALUES ('49', '211100', '盘锦市', '210000');
INSERT INTO `mx_cn_city` VALUES ('50', '211200', '铁岭市', '210000');
INSERT INTO `mx_cn_city` VALUES ('51', '211300', '朝阳市', '210000');
INSERT INTO `mx_cn_city` VALUES ('52', '211400', '葫芦岛市', '210000');
INSERT INTO `mx_cn_city` VALUES ('53', '220100', '长春市', '220000');
INSERT INTO `mx_cn_city` VALUES ('54', '220200', '吉林市', '220000');
INSERT INTO `mx_cn_city` VALUES ('55', '220300', '四平市', '220000');
INSERT INTO `mx_cn_city` VALUES ('56', '220400', '辽源市', '220000');
INSERT INTO `mx_cn_city` VALUES ('57', '220500', '通化市', '220000');
INSERT INTO `mx_cn_city` VALUES ('58', '220600', '白山市', '220000');
INSERT INTO `mx_cn_city` VALUES ('59', '220700', '松原市', '220000');
INSERT INTO `mx_cn_city` VALUES ('60', '220800', '白城市', '220000');
INSERT INTO `mx_cn_city` VALUES ('61', '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `mx_cn_city` VALUES ('62', '230100', '哈尔滨市', '230000');
INSERT INTO `mx_cn_city` VALUES ('63', '230200', '齐齐哈尔市', '230000');
INSERT INTO `mx_cn_city` VALUES ('64', '230300', '鸡西市', '230000');
INSERT INTO `mx_cn_city` VALUES ('65', '230400', '鹤岗市', '230000');
INSERT INTO `mx_cn_city` VALUES ('66', '230500', '双鸭山市', '230000');
INSERT INTO `mx_cn_city` VALUES ('67', '230600', '大庆市', '230000');
INSERT INTO `mx_cn_city` VALUES ('68', '230700', '伊春市', '230000');
INSERT INTO `mx_cn_city` VALUES ('69', '230800', '佳木斯市', '230000');
INSERT INTO `mx_cn_city` VALUES ('70', '230900', '七台河市', '230000');
INSERT INTO `mx_cn_city` VALUES ('71', '231000', '牡丹江市', '230000');
INSERT INTO `mx_cn_city` VALUES ('72', '231100', '黑河市', '230000');
INSERT INTO `mx_cn_city` VALUES ('73', '231200', '绥化市', '230000');
INSERT INTO `mx_cn_city` VALUES ('74', '232700', '大兴安岭地区', '230000');
INSERT INTO `mx_cn_city` VALUES ('75', '310100', '市辖区', '310000');
INSERT INTO `mx_cn_city` VALUES ('76', '310200', '县', '310000');
INSERT INTO `mx_cn_city` VALUES ('77', '320100', '南京市', '320000');
INSERT INTO `mx_cn_city` VALUES ('78', '320200', '无锡市', '320000');
INSERT INTO `mx_cn_city` VALUES ('79', '320300', '徐州市', '320000');
INSERT INTO `mx_cn_city` VALUES ('80', '320400', '常州市', '320000');
INSERT INTO `mx_cn_city` VALUES ('81', '320500', '苏州市', '320000');
INSERT INTO `mx_cn_city` VALUES ('82', '320600', '南通市', '320000');
INSERT INTO `mx_cn_city` VALUES ('83', '320700', '连云港市', '320000');
INSERT INTO `mx_cn_city` VALUES ('84', '320800', '淮安市', '320000');
INSERT INTO `mx_cn_city` VALUES ('85', '320900', '盐城市', '320000');
INSERT INTO `mx_cn_city` VALUES ('86', '321000', '扬州市', '320000');
INSERT INTO `mx_cn_city` VALUES ('87', '321100', '镇江市', '320000');
INSERT INTO `mx_cn_city` VALUES ('88', '321200', '泰州市', '320000');
INSERT INTO `mx_cn_city` VALUES ('89', '321300', '宿迁市', '320000');
INSERT INTO `mx_cn_city` VALUES ('90', '330100', '杭州市', '330000');
INSERT INTO `mx_cn_city` VALUES ('91', '330200', '宁波市', '330000');
INSERT INTO `mx_cn_city` VALUES ('92', '330300', '温州市', '330000');
INSERT INTO `mx_cn_city` VALUES ('93', '330400', '嘉兴市', '330000');
INSERT INTO `mx_cn_city` VALUES ('94', '330500', '湖州市', '330000');
INSERT INTO `mx_cn_city` VALUES ('95', '330600', '绍兴市', '330000');
INSERT INTO `mx_cn_city` VALUES ('96', '330700', '金华市', '330000');
INSERT INTO `mx_cn_city` VALUES ('97', '330800', '衢州市', '330000');
INSERT INTO `mx_cn_city` VALUES ('98', '330900', '舟山市', '330000');
INSERT INTO `mx_cn_city` VALUES ('99', '331000', '台州市', '330000');
INSERT INTO `mx_cn_city` VALUES ('100', '331100', '丽水市', '330000');
INSERT INTO `mx_cn_city` VALUES ('101', '340100', '合肥市', '340000');
INSERT INTO `mx_cn_city` VALUES ('102', '340200', '芜湖市', '340000');
INSERT INTO `mx_cn_city` VALUES ('103', '340300', '蚌埠市', '340000');
INSERT INTO `mx_cn_city` VALUES ('104', '340400', '淮南市', '340000');
INSERT INTO `mx_cn_city` VALUES ('105', '340500', '马鞍山市', '340000');
INSERT INTO `mx_cn_city` VALUES ('106', '340600', '淮北市', '340000');
INSERT INTO `mx_cn_city` VALUES ('107', '340700', '铜陵市', '340000');
INSERT INTO `mx_cn_city` VALUES ('108', '340800', '安庆市', '340000');
INSERT INTO `mx_cn_city` VALUES ('109', '341000', '黄山市', '340000');
INSERT INTO `mx_cn_city` VALUES ('110', '341100', '滁州市', '340000');
INSERT INTO `mx_cn_city` VALUES ('111', '341200', '阜阳市', '340000');
INSERT INTO `mx_cn_city` VALUES ('112', '341300', '宿州市', '340000');
INSERT INTO `mx_cn_city` VALUES ('113', '341400', '巢湖市', '340000');
INSERT INTO `mx_cn_city` VALUES ('114', '341500', '六安市', '340000');
INSERT INTO `mx_cn_city` VALUES ('115', '341600', '亳州市', '340000');
INSERT INTO `mx_cn_city` VALUES ('116', '341700', '池州市', '340000');
INSERT INTO `mx_cn_city` VALUES ('117', '341800', '宣城市', '340000');
INSERT INTO `mx_cn_city` VALUES ('118', '350100', '福州市', '350000');
INSERT INTO `mx_cn_city` VALUES ('119', '350200', '厦门市', '350000');
INSERT INTO `mx_cn_city` VALUES ('120', '350300', '莆田市', '350000');
INSERT INTO `mx_cn_city` VALUES ('121', '350400', '三明市', '350000');
INSERT INTO `mx_cn_city` VALUES ('122', '350500', '泉州市', '350000');
INSERT INTO `mx_cn_city` VALUES ('123', '350600', '漳州市', '350000');
INSERT INTO `mx_cn_city` VALUES ('124', '350700', '南平市', '350000');
INSERT INTO `mx_cn_city` VALUES ('125', '350800', '龙岩市', '350000');
INSERT INTO `mx_cn_city` VALUES ('126', '350900', '宁德市', '350000');
INSERT INTO `mx_cn_city` VALUES ('127', '360100', '南昌市', '360000');
INSERT INTO `mx_cn_city` VALUES ('128', '360200', '景德镇市', '360000');
INSERT INTO `mx_cn_city` VALUES ('129', '360300', '萍乡市', '360000');
INSERT INTO `mx_cn_city` VALUES ('130', '360400', '九江市', '360000');
INSERT INTO `mx_cn_city` VALUES ('131', '360500', '新余市', '360000');
INSERT INTO `mx_cn_city` VALUES ('132', '360600', '鹰潭市', '360000');
INSERT INTO `mx_cn_city` VALUES ('133', '360700', '赣州市', '360000');
INSERT INTO `mx_cn_city` VALUES ('134', '360800', '吉安市', '360000');
INSERT INTO `mx_cn_city` VALUES ('135', '360900', '宜春市', '360000');
INSERT INTO `mx_cn_city` VALUES ('136', '361000', '抚州市', '360000');
INSERT INTO `mx_cn_city` VALUES ('137', '361100', '上饶市', '360000');
INSERT INTO `mx_cn_city` VALUES ('138', '370100', '济南市', '370000');
INSERT INTO `mx_cn_city` VALUES ('139', '370200', '青岛市', '370000');
INSERT INTO `mx_cn_city` VALUES ('140', '370300', '淄博市', '370000');
INSERT INTO `mx_cn_city` VALUES ('141', '370400', '枣庄市', '370000');
INSERT INTO `mx_cn_city` VALUES ('142', '370500', '东营市', '370000');
INSERT INTO `mx_cn_city` VALUES ('143', '370600', '烟台市', '370000');
INSERT INTO `mx_cn_city` VALUES ('144', '370700', '潍坊市', '370000');
INSERT INTO `mx_cn_city` VALUES ('145', '370800', '济宁市', '370000');
INSERT INTO `mx_cn_city` VALUES ('146', '370900', '泰安市', '370000');
INSERT INTO `mx_cn_city` VALUES ('147', '371000', '威海市', '370000');
INSERT INTO `mx_cn_city` VALUES ('148', '371100', '日照市', '370000');
INSERT INTO `mx_cn_city` VALUES ('149', '371200', '莱芜市', '370000');
INSERT INTO `mx_cn_city` VALUES ('150', '371300', '临沂市', '370000');
INSERT INTO `mx_cn_city` VALUES ('151', '371400', '德州市', '370000');
INSERT INTO `mx_cn_city` VALUES ('152', '371500', '聊城市', '370000');
INSERT INTO `mx_cn_city` VALUES ('153', '371600', '滨州市', '370000');
INSERT INTO `mx_cn_city` VALUES ('154', '371700', '荷泽市', '370000');
INSERT INTO `mx_cn_city` VALUES ('155', '410100', '郑州市', '410000');
INSERT INTO `mx_cn_city` VALUES ('156', '410200', '开封市', '410000');
INSERT INTO `mx_cn_city` VALUES ('157', '410300', '洛阳市', '410000');
INSERT INTO `mx_cn_city` VALUES ('158', '410400', '平顶山市', '410000');
INSERT INTO `mx_cn_city` VALUES ('159', '410500', '安阳市', '410000');
INSERT INTO `mx_cn_city` VALUES ('160', '410600', '鹤壁市', '410000');
INSERT INTO `mx_cn_city` VALUES ('161', '410700', '新乡市', '410000');
INSERT INTO `mx_cn_city` VALUES ('162', '410800', '焦作市', '410000');
INSERT INTO `mx_cn_city` VALUES ('163', '410900', '濮阳市', '410000');
INSERT INTO `mx_cn_city` VALUES ('164', '411000', '许昌市', '410000');
INSERT INTO `mx_cn_city` VALUES ('165', '411100', '漯河市', '410000');
INSERT INTO `mx_cn_city` VALUES ('166', '411200', '三门峡市', '410000');
INSERT INTO `mx_cn_city` VALUES ('167', '411300', '南阳市', '410000');
INSERT INTO `mx_cn_city` VALUES ('168', '411400', '商丘市', '410000');
INSERT INTO `mx_cn_city` VALUES ('169', '411500', '信阳市', '410000');
INSERT INTO `mx_cn_city` VALUES ('170', '411600', '周口市', '410000');
INSERT INTO `mx_cn_city` VALUES ('171', '411700', '驻马店市', '410000');
INSERT INTO `mx_cn_city` VALUES ('172', '420100', '武汉市', '420000');
INSERT INTO `mx_cn_city` VALUES ('173', '420200', '黄石市', '420000');
INSERT INTO `mx_cn_city` VALUES ('174', '420300', '十堰市', '420000');
INSERT INTO `mx_cn_city` VALUES ('175', '420500', '宜昌市', '420000');
INSERT INTO `mx_cn_city` VALUES ('176', '420600', '襄樊市', '420000');
INSERT INTO `mx_cn_city` VALUES ('177', '420700', '鄂州市', '420000');
INSERT INTO `mx_cn_city` VALUES ('178', '420800', '荆门市', '420000');
INSERT INTO `mx_cn_city` VALUES ('179', '420900', '孝感市', '420000');
INSERT INTO `mx_cn_city` VALUES ('180', '421000', '荆州市', '420000');
INSERT INTO `mx_cn_city` VALUES ('181', '421100', '黄冈市', '420000');
INSERT INTO `mx_cn_city` VALUES ('182', '421200', '咸宁市', '420000');
INSERT INTO `mx_cn_city` VALUES ('183', '421300', '随州市', '420000');
INSERT INTO `mx_cn_city` VALUES ('184', '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `mx_cn_city` VALUES ('185', '429000', '省直辖行政单位', '420000');
INSERT INTO `mx_cn_city` VALUES ('186', '430100', '长沙市', '430000');
INSERT INTO `mx_cn_city` VALUES ('187', '430200', '株洲市', '430000');
INSERT INTO `mx_cn_city` VALUES ('188', '430300', '湘潭市', '430000');
INSERT INTO `mx_cn_city` VALUES ('189', '430400', '衡阳市', '430000');
INSERT INTO `mx_cn_city` VALUES ('190', '430500', '邵阳市', '430000');
INSERT INTO `mx_cn_city` VALUES ('191', '430600', '岳阳市', '430000');
INSERT INTO `mx_cn_city` VALUES ('192', '430700', '常德市', '430000');
INSERT INTO `mx_cn_city` VALUES ('193', '430800', '张家界市', '430000');
INSERT INTO `mx_cn_city` VALUES ('194', '430900', '益阳市', '430000');
INSERT INTO `mx_cn_city` VALUES ('195', '431000', '郴州市', '430000');
INSERT INTO `mx_cn_city` VALUES ('196', '431100', '永州市', '430000');
INSERT INTO `mx_cn_city` VALUES ('197', '431200', '怀化市', '430000');
INSERT INTO `mx_cn_city` VALUES ('198', '431300', '娄底市', '430000');
INSERT INTO `mx_cn_city` VALUES ('199', '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `mx_cn_city` VALUES ('200', '440100', '广州市', '440000');
INSERT INTO `mx_cn_city` VALUES ('201', '440200', '韶关市', '440000');
INSERT INTO `mx_cn_city` VALUES ('202', '440300', '深圳市', '440000');
INSERT INTO `mx_cn_city` VALUES ('203', '440400', '珠海市', '440000');
INSERT INTO `mx_cn_city` VALUES ('204', '440500', '汕头市', '440000');
INSERT INTO `mx_cn_city` VALUES ('205', '440600', '佛山市', '440000');
INSERT INTO `mx_cn_city` VALUES ('206', '440700', '江门市', '440000');
INSERT INTO `mx_cn_city` VALUES ('207', '440800', '湛江市', '440000');
INSERT INTO `mx_cn_city` VALUES ('208', '440900', '茂名市', '440000');
INSERT INTO `mx_cn_city` VALUES ('209', '441200', '肇庆市', '440000');
INSERT INTO `mx_cn_city` VALUES ('210', '441300', '惠州市', '440000');
INSERT INTO `mx_cn_city` VALUES ('211', '441400', '梅州市', '440000');
INSERT INTO `mx_cn_city` VALUES ('212', '441500', '汕尾市', '440000');
INSERT INTO `mx_cn_city` VALUES ('213', '441600', '河源市', '440000');
INSERT INTO `mx_cn_city` VALUES ('214', '441700', '阳江市', '440000');
INSERT INTO `mx_cn_city` VALUES ('215', '441800', '清远市', '440000');
INSERT INTO `mx_cn_city` VALUES ('216', '441900', '东莞市', '440000');
INSERT INTO `mx_cn_city` VALUES ('217', '442000', '中山市', '440000');
INSERT INTO `mx_cn_city` VALUES ('218', '445100', '潮州市', '440000');
INSERT INTO `mx_cn_city` VALUES ('219', '445200', '揭阳市', '440000');
INSERT INTO `mx_cn_city` VALUES ('220', '445300', '云浮市', '440000');
INSERT INTO `mx_cn_city` VALUES ('221', '450100', '南宁市', '450000');
INSERT INTO `mx_cn_city` VALUES ('222', '450200', '柳州市', '450000');
INSERT INTO `mx_cn_city` VALUES ('223', '450300', '桂林市', '450000');
INSERT INTO `mx_cn_city` VALUES ('224', '450400', '梧州市', '450000');
INSERT INTO `mx_cn_city` VALUES ('225', '450500', '北海市', '450000');
INSERT INTO `mx_cn_city` VALUES ('226', '450600', '防城港市', '450000');
INSERT INTO `mx_cn_city` VALUES ('227', '450700', '钦州市', '450000');
INSERT INTO `mx_cn_city` VALUES ('228', '450800', '贵港市', '450000');
INSERT INTO `mx_cn_city` VALUES ('229', '450900', '玉林市', '450000');
INSERT INTO `mx_cn_city` VALUES ('230', '451000', '百色市', '450000');
INSERT INTO `mx_cn_city` VALUES ('231', '451100', '贺州市', '450000');
INSERT INTO `mx_cn_city` VALUES ('232', '451200', '河池市', '450000');
INSERT INTO `mx_cn_city` VALUES ('233', '451300', '来宾市', '450000');
INSERT INTO `mx_cn_city` VALUES ('234', '451400', '崇左市', '450000');
INSERT INTO `mx_cn_city` VALUES ('235', '460100', '海口市', '460000');
INSERT INTO `mx_cn_city` VALUES ('236', '460200', '三亚市', '460000');
INSERT INTO `mx_cn_city` VALUES ('237', '469000', '省直辖县级行政单位', '460000');
INSERT INTO `mx_cn_city` VALUES ('238', '500100', '市辖区', '500000');
INSERT INTO `mx_cn_city` VALUES ('239', '500200', '县', '500000');
INSERT INTO `mx_cn_city` VALUES ('240', '500300', '市', '500000');
INSERT INTO `mx_cn_city` VALUES ('241', '510100', '成都市', '510000');
INSERT INTO `mx_cn_city` VALUES ('242', '510300', '自贡市', '510000');
INSERT INTO `mx_cn_city` VALUES ('243', '510400', '攀枝花市', '510000');
INSERT INTO `mx_cn_city` VALUES ('244', '510500', '泸州市', '510000');
INSERT INTO `mx_cn_city` VALUES ('245', '510600', '德阳市', '510000');
INSERT INTO `mx_cn_city` VALUES ('246', '510700', '绵阳市', '510000');
INSERT INTO `mx_cn_city` VALUES ('247', '510800', '广元市', '510000');
INSERT INTO `mx_cn_city` VALUES ('248', '510900', '遂宁市', '510000');
INSERT INTO `mx_cn_city` VALUES ('249', '511000', '内江市', '510000');
INSERT INTO `mx_cn_city` VALUES ('250', '511100', '乐山市', '510000');
INSERT INTO `mx_cn_city` VALUES ('251', '511300', '南充市', '510000');
INSERT INTO `mx_cn_city` VALUES ('252', '511400', '眉山市', '510000');
INSERT INTO `mx_cn_city` VALUES ('253', '511500', '宜宾市', '510000');
INSERT INTO `mx_cn_city` VALUES ('254', '511600', '广安市', '510000');
INSERT INTO `mx_cn_city` VALUES ('255', '511700', '达州市', '510000');
INSERT INTO `mx_cn_city` VALUES ('256', '511800', '雅安市', '510000');
INSERT INTO `mx_cn_city` VALUES ('257', '511900', '巴中市', '510000');
INSERT INTO `mx_cn_city` VALUES ('258', '512000', '资阳市', '510000');
INSERT INTO `mx_cn_city` VALUES ('259', '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `mx_cn_city` VALUES ('260', '513300', '甘孜藏族自治州', '510000');
INSERT INTO `mx_cn_city` VALUES ('261', '513400', '凉山彝族自治州', '510000');
INSERT INTO `mx_cn_city` VALUES ('262', '520100', '贵阳市', '520000');
INSERT INTO `mx_cn_city` VALUES ('263', '520200', '六盘水市', '520000');
INSERT INTO `mx_cn_city` VALUES ('264', '520300', '遵义市', '520000');
INSERT INTO `mx_cn_city` VALUES ('265', '520400', '安顺市', '520000');
INSERT INTO `mx_cn_city` VALUES ('266', '522200', '铜仁地区', '520000');
INSERT INTO `mx_cn_city` VALUES ('267', '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `mx_cn_city` VALUES ('268', '522400', '毕节地区', '520000');
INSERT INTO `mx_cn_city` VALUES ('269', '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `mx_cn_city` VALUES ('270', '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `mx_cn_city` VALUES ('271', '530100', '昆明市', '530000');
INSERT INTO `mx_cn_city` VALUES ('272', '530300', '曲靖市', '530000');
INSERT INTO `mx_cn_city` VALUES ('273', '530400', '玉溪市', '530000');
INSERT INTO `mx_cn_city` VALUES ('274', '530500', '保山市', '530000');
INSERT INTO `mx_cn_city` VALUES ('275', '530600', '昭通市', '530000');
INSERT INTO `mx_cn_city` VALUES ('276', '530700', '丽江市', '530000');
INSERT INTO `mx_cn_city` VALUES ('277', '530800', '思茅市', '530000');
INSERT INTO `mx_cn_city` VALUES ('278', '530900', '临沧市', '530000');
INSERT INTO `mx_cn_city` VALUES ('279', '532300', '楚雄彝族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('280', '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('281', '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('282', '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('283', '532900', '大理白族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('284', '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('285', '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('286', '533400', '迪庆藏族自治州', '530000');
INSERT INTO `mx_cn_city` VALUES ('287', '540100', '拉萨市', '540000');
INSERT INTO `mx_cn_city` VALUES ('288', '542100', '昌都地区', '540000');
INSERT INTO `mx_cn_city` VALUES ('289', '542200', '山南地区', '540000');
INSERT INTO `mx_cn_city` VALUES ('290', '542300', '日喀则地区', '540000');
INSERT INTO `mx_cn_city` VALUES ('291', '542400', '那曲地区', '540000');
INSERT INTO `mx_cn_city` VALUES ('292', '542500', '阿里地区', '540000');
INSERT INTO `mx_cn_city` VALUES ('293', '542600', '林芝地区', '540000');
INSERT INTO `mx_cn_city` VALUES ('294', '610100', '西安市', '610000');
INSERT INTO `mx_cn_city` VALUES ('295', '610200', '铜川市', '610000');
INSERT INTO `mx_cn_city` VALUES ('296', '610300', '宝鸡市', '610000');
INSERT INTO `mx_cn_city` VALUES ('297', '610400', '咸阳市', '610000');
INSERT INTO `mx_cn_city` VALUES ('298', '610500', '渭南市', '610000');
INSERT INTO `mx_cn_city` VALUES ('299', '610600', '延安市', '610000');
INSERT INTO `mx_cn_city` VALUES ('300', '610700', '汉中市', '610000');
INSERT INTO `mx_cn_city` VALUES ('301', '610800', '榆林市', '610000');
INSERT INTO `mx_cn_city` VALUES ('302', '610900', '安康市', '610000');
INSERT INTO `mx_cn_city` VALUES ('303', '611000', '商洛市', '610000');
INSERT INTO `mx_cn_city` VALUES ('304', '620100', '兰州市', '620000');
INSERT INTO `mx_cn_city` VALUES ('305', '620200', '嘉峪关市', '620000');
INSERT INTO `mx_cn_city` VALUES ('306', '620300', '金昌市', '620000');
INSERT INTO `mx_cn_city` VALUES ('307', '620400', '白银市', '620000');
INSERT INTO `mx_cn_city` VALUES ('308', '620500', '天水市', '620000');
INSERT INTO `mx_cn_city` VALUES ('309', '620600', '武威市', '620000');
INSERT INTO `mx_cn_city` VALUES ('310', '620700', '张掖市', '620000');
INSERT INTO `mx_cn_city` VALUES ('311', '620800', '平凉市', '620000');
INSERT INTO `mx_cn_city` VALUES ('312', '620900', '酒泉市', '620000');
INSERT INTO `mx_cn_city` VALUES ('313', '621000', '庆阳市', '620000');
INSERT INTO `mx_cn_city` VALUES ('314', '621100', '定西市', '620000');
INSERT INTO `mx_cn_city` VALUES ('315', '621200', '陇南市', '620000');
INSERT INTO `mx_cn_city` VALUES ('316', '622900', '临夏回族自治州', '620000');
INSERT INTO `mx_cn_city` VALUES ('317', '623000', '甘南藏族自治州', '620000');
INSERT INTO `mx_cn_city` VALUES ('318', '630100', '西宁市', '630000');
INSERT INTO `mx_cn_city` VALUES ('319', '632100', '海东地区', '630000');
INSERT INTO `mx_cn_city` VALUES ('320', '632200', '海北藏族自治州', '630000');
INSERT INTO `mx_cn_city` VALUES ('321', '632300', '黄南藏族自治州', '630000');
INSERT INTO `mx_cn_city` VALUES ('322', '632500', '海南藏族自治州', '630000');
INSERT INTO `mx_cn_city` VALUES ('323', '632600', '果洛藏族自治州', '630000');
INSERT INTO `mx_cn_city` VALUES ('324', '632700', '玉树藏族自治州', '630000');
INSERT INTO `mx_cn_city` VALUES ('325', '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `mx_cn_city` VALUES ('326', '640100', '银川市', '640000');
INSERT INTO `mx_cn_city` VALUES ('327', '640200', '石嘴山市', '640000');
INSERT INTO `mx_cn_city` VALUES ('328', '640300', '吴忠市', '640000');
INSERT INTO `mx_cn_city` VALUES ('329', '640400', '固原市', '640000');
INSERT INTO `mx_cn_city` VALUES ('330', '640500', '中卫市', '640000');
INSERT INTO `mx_cn_city` VALUES ('331', '650100', '乌鲁木齐市', '650000');
INSERT INTO `mx_cn_city` VALUES ('332', '650200', '克拉玛依市', '650000');
INSERT INTO `mx_cn_city` VALUES ('333', '652100', '吐鲁番地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('334', '652200', '哈密地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('335', '652300', '昌吉回族自治州', '650000');
INSERT INTO `mx_cn_city` VALUES ('336', '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `mx_cn_city` VALUES ('337', '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `mx_cn_city` VALUES ('338', '652900', '阿克苏地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('339', '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `mx_cn_city` VALUES ('340', '653100', '喀什地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('341', '653200', '和田地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('342', '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `mx_cn_city` VALUES ('343', '654200', '塔城地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('344', '654300', '阿勒泰地区', '650000');
INSERT INTO `mx_cn_city` VALUES ('345', '659000', '省直辖行政单位', '650000');
INSERT INTO `mx_cn_city` VALUES ('346', '710100', '台  湾', '710000');
INSERT INTO `mx_cn_city` VALUES ('347', '810100', '香  港', '810000');
INSERT INTO `mx_cn_city` VALUES ('348', '820100', '澳  门', '820000');

-- ----------------------------
-- Table structure for mx_cn_prov
-- ----------------------------
DROP TABLE IF EXISTS `mx_cn_prov`;
CREATE TABLE `mx_cn_prov` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '省管理主键',
  `code` char(6) NOT NULL COMMENT '编码',
  `name` varchar(10) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='省管理';

-- ----------------------------
-- Records of mx_cn_prov
-- ----------------------------
INSERT INTO `mx_cn_prov` VALUES ('1', '110000', '北京市');
INSERT INTO `mx_cn_prov` VALUES ('2', '120000', '天津市');
INSERT INTO `mx_cn_prov` VALUES ('3', '130000', '河北省');
INSERT INTO `mx_cn_prov` VALUES ('4', '140000', '山西省');
INSERT INTO `mx_cn_prov` VALUES ('5', '150000', '内蒙古');
INSERT INTO `mx_cn_prov` VALUES ('6', '210000', '辽宁省');
INSERT INTO `mx_cn_prov` VALUES ('7', '220000', '吉林省');
INSERT INTO `mx_cn_prov` VALUES ('8', '230000', '黑龙江');
INSERT INTO `mx_cn_prov` VALUES ('9', '310000', '上海市');
INSERT INTO `mx_cn_prov` VALUES ('10', '320000', '江苏省');
INSERT INTO `mx_cn_prov` VALUES ('11', '330000', '浙江省');
INSERT INTO `mx_cn_prov` VALUES ('12', '340000', '安徽省');
INSERT INTO `mx_cn_prov` VALUES ('13', '350000', '福建省');
INSERT INTO `mx_cn_prov` VALUES ('14', '360000', '江西省');
INSERT INTO `mx_cn_prov` VALUES ('15', '370000', '山东省');
INSERT INTO `mx_cn_prov` VALUES ('16', '410000', '河南省');
INSERT INTO `mx_cn_prov` VALUES ('17', '420000', '湖北省');
INSERT INTO `mx_cn_prov` VALUES ('18', '430000', '湖南省');
INSERT INTO `mx_cn_prov` VALUES ('19', '440000', '广东省');
INSERT INTO `mx_cn_prov` VALUES ('20', '450000', '广  西');
INSERT INTO `mx_cn_prov` VALUES ('21', '460000', '海南省');
INSERT INTO `mx_cn_prov` VALUES ('22', '500000', '重庆市');
INSERT INTO `mx_cn_prov` VALUES ('23', '510000', '四川省');
INSERT INTO `mx_cn_prov` VALUES ('24', '520000', '贵州省');
INSERT INTO `mx_cn_prov` VALUES ('25', '530000', '云南省');
INSERT INTO `mx_cn_prov` VALUES ('26', '540000', '西  藏');
INSERT INTO `mx_cn_prov` VALUES ('27', '610000', '陕西省');
INSERT INTO `mx_cn_prov` VALUES ('28', '620000', '甘肃省');
INSERT INTO `mx_cn_prov` VALUES ('29', '630000', '青海省');
INSERT INTO `mx_cn_prov` VALUES ('30', '640000', '宁  夏');
INSERT INTO `mx_cn_prov` VALUES ('31', '650000', '新  疆');
INSERT INTO `mx_cn_prov` VALUES ('32', '710000', '台湾省');
INSERT INTO `mx_cn_prov` VALUES ('33', '810000', '香  港');
INSERT INTO `mx_cn_prov` VALUES ('34', '820000', '澳  门');

-- ----------------------------
-- Table structure for mx_goods
-- ----------------------------
DROP TABLE IF EXISTS `mx_goods`;
CREATE TABLE `mx_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品模块主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `typeid` int(10) NOT NULL,
  `saleprice` double(10,2) NOT NULL COMMENT '销售价格',
  `marketprice` double(10,2) NOT NULL COMMENT '市场价格',
  `picurl` varchar(55) NOT NULL COMMENT '缩略图',
  `picarr` text NOT NULL COMMENT '组图',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '详细内容',
  `hits` int(10) NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `attr` text NOT NULL COMMENT '属性名称',
  `goodsattr` text NOT NULL COMMENT '商品属性',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品模块';

-- ----------------------------
-- Records of mx_goods
-- ----------------------------
INSERT INTO `mx_goods` VALUES ('2', '收复失地', '5', '12.00', '1221.00', 'uploads/20170517/1e657a3ca92a82594dc16c09f2a21704.jpg', 'a:1:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170415/86bddf09111ff628523b7bbf872141be.png\";s:4:\"info\";s:16:\"detail_ban03.png\";s:4:\"show\";s:0:\"\";}}', '', '', '0', '1', 'a:3:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:2:{i:0;s:6:\"红色\";i:1;s:6:\"黄色\";}}i:1;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:3:\"大\";i:1;s:3:\"中\";}}i:2;a:2:{s:5:\"title\";s:6:\"型号\";s:5:\"attrs\";a:3:{i:0;s:2:\"5s\";i:1;s:1:\"6\";i:2;s:2:\"6s\";}}}', 'a:12:{s:13:\"红色_大_5s\";a:3:{s:5:\"price\";s:4:\"2121\";s:8:\"oldprice\";s:4:\"1221\";s:7:\"homenum\";s:3:\"100\";}s:12:\"红色_大_6\";a:3:{s:5:\"price\";s:4:\"3122\";s:8:\"oldprice\";s:5:\"11221\";s:7:\"homenum\";s:3:\"100\";}s:13:\"红色_大_6s\";a:3:{s:5:\"price\";s:4:\"1223\";s:8:\"oldprice\";s:5:\"11221\";s:7:\"homenum\";s:3:\"100\";}s:13:\"红色_中_5s\";a:3:{s:5:\"price\";s:5:\"14324\";s:8:\"oldprice\";s:5:\"12231\";s:7:\"homenum\";s:3:\"100\";}s:12:\"红色_中_6\";a:3:{s:5:\"price\";s:3:\"125\";s:8:\"oldprice\";s:6:\"122621\";s:7:\"homenum\";s:3:\"100\";}s:13:\"红色_中_6s\";a:3:{s:5:\"price\";s:4:\"2126\";s:8:\"oldprice\";s:6:\"124321\";s:7:\"homenum\";s:3:\"100\";}s:13:\"黄色_大_5s\";a:3:{s:5:\"price\";s:3:\"127\";s:8:\"oldprice\";s:5:\"12621\";s:7:\"homenum\";s:3:\"100\";}s:12:\"黄色_大_6\";a:3:{s:5:\"price\";s:3:\"128\";s:8:\"oldprice\";s:5:\"13221\";s:7:\"homenum\";s:3:\"100\";}s:13:\"黄色_大_6s\";a:3:{s:5:\"price\";s:3:\"129\";s:8:\"oldprice\";s:5:\"12621\";s:7:\"homenum\";s:3:\"100\";}s:13:\"黄色_中_5s\";a:3:{s:5:\"price\";s:3:\"435\";s:8:\"oldprice\";s:5:\"13221\";s:7:\"homenum\";s:3:\"100\";}s:12:\"黄色_中_6\";a:3:{s:5:\"price\";s:4:\"5676\";s:8:\"oldprice\";s:5:\"12521\";s:7:\"homenum\";s:3:\"100\";}s:13:\"黄色_中_6s\";a:3:{s:5:\"price\";s:4:\"8778\";s:8:\"oldprice\";s:5:\"12261\";s:7:\"homenum\";s:3:\"100\";}}', '1484902714', '1495179356', '1');
INSERT INTO `mx_goods` VALUES ('3', '的股份', '5', '123.00', '23.00', 'uploads/20170517/1d19c41b7c1c176fb45eda94ff1ea715.jpg', 'a:1:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170517/ea4afd239104af5975a58e77c5073aac.jpg\";s:4:\"info\";s:36:\"006c8d3b735d84994e507fb58c4993cb.jpg\";s:4:\"show\";s:0:\"\";}}', '', '<h1 style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;margin:0px 0px 10px;\"><span style=\"color:#e36c09;\" class=\"ue_t\">[此处键入简历标题]</span></h1><p><span style=\"color:#e36c09;\"><br/></span></p><table width=\"100%\" border=\"1\" style=\"border-collapse:collapse;\"><tbody><tr class=\"firstRow\"><td width=\"200\" style=\"text-align:center;\" class=\"ue_t\">【此处插入照片】</td><td><p><br/></p><p>联系电话：<span class=\"ue_t\">[键入您的电话]</span></p><p><br/></p><p>电子邮件：<span class=\"ue_t\">[键入您的电子邮件地址]</span></p><p><br/></p><p>家庭住址：<span class=\"ue_t\">[键入您的地址]</span></p><p><br/></p></td></tr></tbody></table><h3><span style=\"color:#e36c09;font-size:20px;\">目标职位</span></h3><p style=\"text-indent:2em;\" class=\"ue_t\">[此处键入您的期望职位]</p><h3><span style=\"color:#e36c09;font-size:20px;\">学历</span></h3><p><span style=\"display:none;line-height:0px;\">﻿</span></p><ol style=\"list-style-type: decimal;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入学校名称] </span> <span class=\"ue_t\">[键入所学专业]</span> <span class=\"ue_t\">[键入所获学位]</span></p></li><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入学校名称]</span> <span class=\"ue_t\">[键入所学专业]</span> <span class=\"ue_t\">[键入所获学位]</span></p></li></ol><h3><span style=\"color:#e36c09;font-size:20px;\" class=\"ue_t\">工作经验</span></h3><ol style=\"list-style-type: decimal;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入公司名称]</span> <span class=\"ue_t\">[键入职位名称]</span></p></li><ol style=\"list-style-type: lower-alpha;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入负责项目]</span> <span class=\"ue_t\">[键入项目简介]</span></p></li><li><p><span class=\"ue_t\">[键入负责项目]</span> <span class=\"ue_t\">[键入项目简介]</span></p></li></ol><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入公司名称]</span> <span class=\"ue_t\">[键入职位名称]</span></p></li><ol style=\"list-style-type: lower-alpha;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入负责项目]</span> <span class=\"ue_t\">[键入项目简介]</span></p></li></ol></ol><p><span style=\"color:#e36c09;font-size:20px;\">掌握技能</span></p><p style=\"text-indent:2em;\">&nbsp;<span class=\"ue_t\">[这里可以键入您所掌握的技能]</span><br/></p><p><br/></p>', '0', '0', '', '', '1484904410', '1495009858', '2');
INSERT INTO `mx_goods` VALUES ('4', '12', '1', '13.00', '12.00', 'uploads/20170517/c06c66a62e0f2c0ca8fef1412ee50df7.jpg', 'a:1:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170517/2718574e6361d350c8c1fb72b404b996.jpg\";s:4:\"info\";s:36:\"8859f9a4ab8057933a83f58cc9feb3b8.jpg\";s:4:\"show\";s:0:\"\";}}', '', '', '0', '1', 'a:2:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:3:{i:0;s:3:\"红\";i:1;s:3:\"黄\";i:2;s:3:\"绿\";}}i:1;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:3:{i:0;s:3:\"中\";i:1;s:3:\"小\";i:2;s:3:\"大\";}}}', 'a:9:{s:7:\"红_中\";a:3:{s:5:\"price\";s:3:\"133\";s:8:\"oldprice\";s:4:\"1256\";s:7:\"homenum\";s:3:\"100\";}s:7:\"红_小\";a:3:{s:5:\"price\";s:3:\"134\";s:8:\"oldprice\";s:3:\"128\";s:7:\"homenum\";s:3:\"100\";}s:7:\"红_大\";a:3:{s:5:\"price\";s:3:\"135\";s:8:\"oldprice\";s:4:\"1290\";s:7:\"homenum\";s:3:\"100\";}s:7:\"黄_中\";a:3:{s:5:\"price\";s:3:\"137\";s:8:\"oldprice\";s:3:\"125\";s:7:\"homenum\";s:3:\"100\";}s:7:\"黄_小\";a:3:{s:5:\"price\";s:3:\"139\";s:8:\"oldprice\";s:4:\"1244\";s:7:\"homenum\";s:3:\"100\";}s:7:\"黄_大\";a:3:{s:5:\"price\";s:3:\"136\";s:8:\"oldprice\";s:3:\"128\";s:7:\"homenum\";s:3:\"100\";}s:7:\"绿_中\";a:3:{s:5:\"price\";s:3:\"133\";s:8:\"oldprice\";s:3:\"128\";s:7:\"homenum\";s:3:\"100\";}s:7:\"绿_小\";a:3:{s:5:\"price\";s:3:\"137\";s:8:\"oldprice\";s:3:\"126\";s:7:\"homenum\";s:3:\"100\";}s:7:\"绿_大\";a:3:{s:5:\"price\";s:3:\"132\";s:8:\"oldprice\";s:3:\"125\";s:7:\"homenum\";s:3:\"100\";}}', '1485047561', '1495009919', '3');
INSERT INTO `mx_goods` VALUES ('5', '12', '5', '12.00', '12.00', 'uploads/20170517/7cfcba718f027d99f1cd2bae9450bbfe.jpeg', 'a:5:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170519/a8f1473fffebfd9b1c53e4d3d8c60e0e.jpg\";s:4:\"info\";s:13:\"1.jpg!960.jpg\";s:4:\"show\";s:0:\"\";}i:1;a:3:{s:3:\"img\";s:54:\"uploads/20170519/905e8d7ae1625e799e9396abe278d408.jpeg\";s:4:\"info\";s:37:\"20160403212124_eYKLT.thumb.700_0.jpeg\";s:4:\"show\";s:0:\"\";}i:2;a:3:{s:3:\"img\";s:53:\"uploads/20170519/38c8d51ec56e6b3a95ebfa886088e7df.jpg\";s:4:\"info\";s:38:\"u_3717700803,1660940563_fm_23_gp_0.jpg\";s:4:\"show\";s:0:\"\";}i:3;a:3:{s:3:\"img\";s:54:\"uploads/20170517/77c606fd69f853199c91da3a2eecbadb.jpeg\";s:4:\"info\";s:37:\"4dc2078d9da0c75933b704656433a0d3.jpeg\";s:4:\"show\";s:0:\"\";}i:4;a:3:{s:3:\"img\";s:54:\"uploads/20170519/3348b2e5388deed50dd253a39ccf9ddb.jpeg\";s:4:\"info\";s:35:\"201504265606_XxYJ8.thumb.700_0.jpeg\";s:4:\"show\";s:0:\"\";}}', '12', '', '0', '1', '', '', '1485136633', '1495179616', '4');
INSERT INTO `mx_goods` VALUES ('6', '1212', '3', '212.00', '131.00', 'uploads/20170517/f1e368f267ae282b420c6ba55664dd28.jpg', 'a:2:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170517/7a3579d3f210b6920bcfda2935b8fc2f.jpg\";s:4:\"info\";s:36:\"79eec20e3bd0e0fec639567c50f655cf.jpg\";s:4:\"show\";s:0:\"\";}i:1;a:3:{s:3:\"img\";s:53:\"uploads/20170517/0f43ac060a9b58b0ac48a75d093fe01d.jpg\";s:4:\"info\";s:36:\"81aed41e365d1c099d7dc7c6d17e8cdb.jpg\";s:4:\"show\";s:0:\"\";}}', '', '', '0', '1', '', '', '1491386240', '1495009892', '5');
INSERT INTO `mx_goods` VALUES ('7', '斯蒂芬森', '4', '12.00', '123.00', 'uploads/20170517/30b91c8e537e7c6533297e4375a33beb.jpg', 'a:2:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170517/d171b71bd4ab0330cf8c71733e69724c.jpg\";s:4:\"info\";s:36:\"0732464a2f512347d834f9c20d5c69ff.jpg\";s:4:\"show\";s:0:\"\";}i:1;a:3:{s:3:\"img\";s:53:\"uploads/20170517/feba196e2f88763cddf144255fc80700.jpg\";s:4:\"info\";s:36:\"4d9414e206247fdbcb61ec3adb1a8acc.jpg\";s:4:\"show\";s:0:\"\";}}', '', '', '0', '1', 'a:3:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:3:{i:0;s:9:\"深灰色\";i:1;s:6:\"金色\";i:2;s:6:\"白色\";}}i:1;a:2:{s:5:\"title\";s:6:\"内存\";s:5:\"attrs\";a:2:{i:0;s:3:\"16G\";i:1;s:3:\"32G\";}}i:2;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:1:{i:0;s:4:\"5寸\";}}}', 'a:6:{s:18:\"深灰色_16G_5寸\";a:3:{s:5:\"price\";s:3:\"231\";s:8:\"oldprice\";s:2:\"54\";s:7:\"homenum\";s:4:\"1799\";}s:18:\"深灰色_32G_5寸\";a:3:{s:5:\"price\";s:3:\"423\";s:8:\"oldprice\";s:2:\"34\";s:7:\"homenum\";s:4:\"1070\";}s:15:\"金色_16G_5寸\";a:3:{s:5:\"price\";s:2:\"54\";s:8:\"oldprice\";s:2:\"23\";s:7:\"homenum\";s:3:\"200\";}s:15:\"金色_32G_5寸\";a:3:{s:5:\"price\";s:2:\"23\";s:8:\"oldprice\";s:2:\"65\";s:7:\"homenum\";s:4:\"1060\";}s:15:\"白色_16G_5寸\";a:3:{s:5:\"price\";s:3:\"455\";s:8:\"oldprice\";s:2:\"56\";s:7:\"homenum\";s:4:\"1020\";}s:15:\"白色_32G_5寸\";a:3:{s:5:\"price\";s:3:\"566\";s:8:\"oldprice\";s:3:\"433\";s:7:\"homenum\";s:4:\"1030\";}}', '1491386329', '1495014852', '6');
INSERT INTO `mx_goods` VALUES ('8', 'fsfsdf', '1', '123.00', '432.00', 'uploads/20170415/a890ddab6efa52b729763d19690cc085.jpg', 'a:3:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170415/4e7021917a05fc1f22e4e8a0ce45daf9.jpg\";s:4:\"info\";s:6:\"t5.jpg\";s:4:\"show\";s:0:\"\";}i:1;a:3:{s:3:\"img\";s:53:\"uploads/20170415/4570fd3a94bd2ff5e5869147bfcd7d3d.jpg\";s:4:\"info\";s:6:\"t6.jpg\";s:4:\"show\";s:0:\"\";}i:2;a:3:{s:3:\"img\";s:53:\"uploads/20170415/97a559a1149a3579e30a2e632acb019d.jpg\";s:4:\"info\";s:6:\"t7.jpg\";s:4:\"show\";s:0:\"\";}}', 't', '<p>rwerwe</p>', '0', '1', 'a:2:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:2:{i:0;s:6:\"红色\";i:1;s:6:\"黄色\";}}i:1;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:3:\"大\";i:1;s:3:\"中\";}}}', 'a:4:{s:10:\"红色_大\";a:3:{s:5:\"price\";s:4:\"1233\";s:8:\"oldprice\";s:5:\"43212\";s:7:\"homenum\";s:4:\"1050\";}s:10:\"红色_中\";a:3:{s:5:\"price\";s:5:\"12523\";s:8:\"oldprice\";s:3:\"432\";s:7:\"homenum\";s:4:\"1040\";}s:10:\"黄色_大\";a:3:{s:5:\"price\";s:4:\"1223\";s:8:\"oldprice\";s:4:\"4362\";s:7:\"homenum\";s:4:\"1030\";}s:10:\"黄色_中\";a:3:{s:5:\"price\";s:4:\"1323\";s:8:\"oldprice\";s:4:\"4532\";s:7:\"homenum\";s:4:\"1300\";}}', '1492235070', '1493113380', '7');
INSERT INTO `mx_goods` VALUES ('9', '测试', '3', '11.00', '22.00', 'uploads/20170519/f55892d51e6a0b0899a4e2068280207e.jpeg', 'a:1:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170519/2e4700042055172b66c41d630e0b5d85.jpg\";s:4:\"info\";s:36:\"4d9414e206247fdbcb61ec3adb1a8acc.jpg\";s:4:\"show\";s:0:\"\";}}', '', '', '0', '1', 'a:3:{i:0;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:3:\"大\";i:1;s:3:\"中\";}}i:1;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:2:{i:0;s:3:\"红\";i:1;s:3:\"黄\";}}i:2;a:2:{s:5:\"title\";s:6:\"测试\";s:5:\"attrs\";a:2:{i:0;s:6:\"返点\";i:1;s:6:\"规格\";}}}', 'a:8:{s:14:\"大_红_返点\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"大_红_规格\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"大_黄_返点\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"大_黄_规格\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"中_红_返点\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"中_红_规格\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"中_黄_返点\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}s:14:\"中_黄_规格\";a:3:{s:5:\"price\";s:2:\"11\";s:8:\"oldprice\";s:2:\"22\";s:7:\"homenum\";s:3:\"100\";}}', '1495186830', '1495186918', '8');

-- ----------------------------
-- Table structure for mx_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `mx_goods_type`;
CREATE TABLE `mx_goods_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `parentid` int(11) NOT NULL COMMENT '上级分类',
  `attrs` text NOT NULL,
  `picurl` varchar(55) NOT NULL COMMENT '图片',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of mx_goods_type
-- ----------------------------
INSERT INTO `mx_goods_type` VALUES ('1', '手机', '0', 'a:2:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:2:{i:0;s:6:\"红色\";i:1;s:6:\"黄色\";}}i:1;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:3:\"大\";i:1;s:3:\"中\";}}}', '', '1');
INSERT INTO `mx_goods_type` VALUES ('2', '衣服', '0', 'a:3:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:3:{i:0;s:9:\"深灰色\";i:1;s:6:\"金色\";i:2;s:6:\"白色\";}}i:1;a:2:{s:5:\"title\";s:6:\"内存\";s:5:\"attrs\";a:2:{i:0;s:3:\"16G\";i:1;s:3:\"32G\";}}i:2;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:4:\"5寸\";i:1;s:6:\"5.6寸\";}}}', '', '2');
INSERT INTO `mx_goods_type` VALUES ('3', '女装', '1', 'a:2:{i:0;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:3:{i:0;s:3:\"大\";i:1;s:3:\"中\";i:2;s:3:\"小\";}}i:1;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:2:{i:0;s:3:\"红\";i:1;s:3:\"黄\";}}}', '', '3');
INSERT INTO `mx_goods_type` VALUES ('4', '男装', '2', 'a:3:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:3:{i:0;s:9:\"深灰色\";i:1;s:6:\"金色\";i:2;s:6:\"白色\";}}i:1;a:2:{s:5:\"title\";s:6:\"内存\";s:5:\"attrs\";a:2:{i:0;s:3:\"16G\";i:1;s:3:\"32G\";}}i:2;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:4:\"5寸\";i:1;s:6:\"5.6寸\";}}}', '', '4');
INSERT INTO `mx_goods_type` VALUES ('5', '苹果手机', '1', 'a:3:{i:0;a:2:{s:5:\"title\";s:6:\"颜色\";s:5:\"attrs\";a:2:{i:0;s:6:\"红色\";i:1;s:6:\"黄色\";}}i:1;a:2:{s:5:\"title\";s:6:\"尺寸\";s:5:\"attrs\";a:2:{i:0;s:3:\"大\";i:1;s:3:\"中\";}}i:2;a:2:{s:5:\"title\";s:6:\"型号\";s:5:\"attrs\";a:3:{i:0;s:2:\"5s\";i:1;s:1:\"6\";i:2;s:2:\"6s\";}}}', '', '5');

-- ----------------------------
-- Table structure for mx_info
-- ----------------------------
DROP TABLE IF EXISTS `mx_info`;
CREATE TABLE `mx_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页模块主键',
  `title` varchar(55) NOT NULL COMMENT '标题',
  `picurl` varchar(55) NOT NULL COMMENT '图片',
  `intro` text NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `orderid` int(10) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='单页模块';

-- ----------------------------
-- Records of mx_info
-- ----------------------------
INSERT INTO `mx_info` VALUES ('1', '关于我们', '', '黑龙江龙采科技集团有限责任公司是集网站建设、网络推广、网络工程建设、软件开发、计算机维护、多媒体视频制作为主营业务 的高新技术企业。公司以科技为发展之本，在管理与技 术领域中大力发掘人才、培养技术精英，为企业的持续快速发展提供强有力的技术后备队伍。 　　龙采科技集团创始于2004年，以网络营销推广服务及网站建设为业务核心，秉承“成功必须专业、专业源自务实”的企业理念， 致力于为企业提供全方位现代营销服务，先后与“百度”、“CNNIC”、等国内外知名品牌携手合作。凭借企业诚信服务理念及一流市场开拓能力，迅速发展为百度排名前三合作伙伴，中国互联网络信息中心全国核心合作伙伴，同时也被黑龙江通信管理局评为网站备案指定接入商。 　　龙采科技集团自成立之初即心存高远，以全球化的视野整合先进技术与企业资源以先进的科学技术与完美的客户服务为企业的立足之本，随着龙采的不断高速发展，现已成为集网站建设及网络推广、手机移动网站建设及移动平台网络营销、IDC及电信增值业务、软件开发及系统集成、商贸物流、教育培训、出版影视、体育娱乐健身、商务旅游、法律服务为一体的集团企业。目前在北京、哈尔滨、长春、大连、沈阳、太原、西安、济南等十五省47个城市设立分公司87家分公司，拥有员工4000余人，与8万余家企事业单位保持良好合作关系。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">黑龙江龙采科技集团有限责任公司是集网站建设、网络推广、网络工程建设、软件开发、计算机维护、多媒体视频制作为主营业务 的高新技术企业。公司以科技为发展之本，在管理与技</span><img alt=\"\" align=\"right\" src=\"/uploads/ueditor/image/20170420/1492651489469304.gif\" width=\"428\" height=\"336\" style=\"border: 0px; vertical-align: middle;\"/><span style=\"line-height: 2; font-size: 14px;\">&nbsp;术领域中大力发掘人才、培养技术精英，为企业的持续快速发展提供强有力的技术后备队伍。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">龙采科技集团创始于2004年，以网络营销推广服务及网站建设为业务核心，秉承“成功必须专业、专业源自务实”的企业理念， 致</span><span style=\"line-height: 2; font-size: 14px;\">力于为企业提供全方位现代营销服务，先后与“百度”、“CNNIC”、等国内外知名品牌携手合作。凭借企业诚信服务理念及一流市</span><span style=\"line-height: 2; font-size: 14px;\">场开拓能力，迅速发展为百度排名前三合作伙伴，中国互联网络信息中心全国核心合作伙伴，同时也被黑龙江通信管理局评为网站备案指</span><span style=\"line-height: 2; font-size: 14px;\">定接入商。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">龙采科技集团自成立之初即心存高远，以全球化的视野整合先进技术与企业资源以先进的科学技术与完美的客户服务为企业的立足之本，随着龙采的不断高速发展，现已成为集网站建设及网络推广、手机移动网站建设及移动平台网络营销、IDC及电信增值业务、软件开发及系统集成、商贸物流、教育培训、出版影视、体育娱乐健身、商务旅游、法律服务为一体的集团企业。目前在北京、哈尔滨、长春、大连、沈阳、太原、西安、济南等十五省47个城市设立分公司87家分公司，拥有员工4000余人，与8万余家企事业单位保持良好合作关系。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><img alt=\"\" align=\"left\" src=\"/uploads/ueditor/image/20170420/1492651490411340.jpg\" width=\"397\" height=\"334\" style=\"border: 0px; vertical-align: middle;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">龙采科技集团利用先进的互联网技术，打破原有的行业运营模式，将发展过程中积累的技术和业务经验转化和应用于信息化整合平台中，为企业提供现代化营销新平台。作为网站建设与网络推广行业专家，龙采科技集团拥有强大的网站建设开发团队，集团不断引进大量技术人才，短短几年时间，从十几人的小团队，发展成为北京、黑龙江、辽宁、山西四个技术中心，五百余人的强大技术支持团队，为龙采品牌在互联网行业长期保持领先地位提供了坚实的基础。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\"><br/></span></p><blockquote style=\"margin: 0px 0px 20px; padding: 10px 20px; font-size: 17.5px; border-left-width: 5px; border-left-style: solid; border-left-color: rgb(238, 238, 238); font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 30px;\"><span style=\"line-height: 2; font-size: 14px;\">龙采科技集团拥有一支专业的网络营销服务团队。从前期产品选择，到后期推广维护，结合网站建设为企业量身打造全套网络营销方案，为企业成长加力助跑。“关注客户，不断创新”是客服团队的工作理念，“创造价值，用心服务”是客服团队的服务宗旨，龙采科技集团客服团队经过多年的历练，不断打磨锻造自身服务品质，现已拥有各项完善的服务制度，为客户提供各类优质服务。通过“400”客户服务热线、在线交流、电子邮件、不定期培训等多种多样服务来解决客户的多种需求。以疏通网站建设流程、快速开通推广账户、推广方案策划与咨询、流量分析评估、定期回访、网络营销专家培训会议等丰富完善的服务内容，为客户提供优质贴心的服务。</span></p></blockquote><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">“重信守誉，决胜千里之外”，龙采就拥有这么一支勇于突破、斗志激昂的营销顾问团队。在日益激烈的互联网行业竞争中，营销顾问团队始终坚守诚信为本的职业道德，根据客户的实际需求推荐适合客户的相关产品，为客户提供有效详细的产品组合方案，用坚守职责的态度、重信守誉的行动帮助客户提升自己的企业品牌。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">作为多元化发展集团，随着不断的开疆扩土，龙采科技集团在多个领域也取得了骄人的成绩。</span></p><p><img alt=\"\" align=\"right\" src=\"/uploads/ueditor/image/20170420/1492651491110290.jpg\" width=\"322\" height=\"189\" style=\"border: 0px; vertical-align: middle; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">如拥有着业内高水平程序开发团队的龙采正元软件；拥有国内众多知名跆拳道教练的乾正隆全国跆拳道连锁道馆；在法律业界享有良好口碑的昂泰律师事务所；以知名导演和演员等影视精英团队架构的龙采正和影视公司；以及经黑龙江省政府批准的专业从事职业培训的龙采职业培训学校；经国家旅游局批准提供专业导游会务服务的龙采旅行社等。这些都是龙采人创造的一个又一个奇迹。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><span style=\"line-height: 2; font-size: 14px;\">　</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><img alt=\"\" align=\"left\" src=\"/uploads/ueditor/image/20170420/1492651492646251.jpg\" width=\"319\" height=\"400\" style=\"border: 0px; vertical-align: middle;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">“快乐”是龙采的主旋律，每个龙采人都弹奏着快乐的音符、每个人都在龙采这个快乐的大家庭中成长着。龙采将企业精神、经营理念潜移默化地传递给每一位员工，从而塑造出一支具有快乐、奉献精神、高度凝聚力的企业团队。在工作中，让每一个产品、每一次沟通与谈话，都渗透着龙采“快乐”的因子。将快乐传递给客户，用快乐感染自己，用快乐感动他人；与快乐同步，与成功同行。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">与客户达到“共赢”是龙采科技集团美好愿景，龙采科技集团在企业自身发展的同时更加注重合作伙伴的前行，多次被政府授予新一代冰城魅力科技企业、守合同重信用企业、黑龙江省互联网优秀企业等众多荣誉称号。在客户的信赖与合作伙伴的支持下不断的成长着，这将是龙采不断前行的永恒动力。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">“奉献”是龙采始终坚持的社会使命，更是龙采科技集团的企业魂。龙采科技集团自创立起，就一直热心关注社会公益事业。龙采科技集团被授予 “希望工程特殊贡献奖”，龙采科技集团总裁杨国廷先生也被评为“哈尔滨爱心使者”。从“同在蓝天下”—为希望工程捐款，到“关注社会、关爱儿童”—看望福利院儿童、为四川大地震灾民捐款、资助川籍在哈大学生，龙采科技集团一次次为社会公益事业贡献自己的力量，使龙采奉献精神也得到不断的升华。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: &#39;microsoft yahei&#39;, arial, 宋体; font-size: 12px; line-height: 17.1429px; white-space: normal; text-indent: 30px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 2; font-size: 14px;\">龙采，在快乐、赢利、奉献的企业文化下茁壮成长，承载着为企业打造全方位网络营销平台的美好愿景，承载着龙采人的梦想，扬帆启航，创造下一个辉煌！</span></p><p><br/></p>', '1', '1', '0', '1492651497');

-- ----------------------------
-- Table structure for mx_infoclass
-- ----------------------------
DROP TABLE IF EXISTS `mx_infoclass`;
CREATE TABLE `mx_infoclass` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表分类主键',
  `title` varchar(55) NOT NULL COMMENT '标题',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `orderid` (`orderid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='列表分类';

-- ----------------------------
-- Records of mx_infoclass
-- ----------------------------
INSERT INTO `mx_infoclass` VALUES ('1', '公司动态', '1', '1');
INSERT INTO `mx_infoclass` VALUES ('2', '行业动态', '2', '1');
INSERT INTO `mx_infoclass` VALUES ('3', '精彩专题', '3', '1');

-- ----------------------------
-- Table structure for mx_infolist
-- ----------------------------
DROP TABLE IF EXISTS `mx_infolist`;
CREATE TABLE `mx_infolist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表管理主键',
  `title` varchar(55) NOT NULL COMMENT '标题',
  `classid` int(10) NOT NULL COMMENT '分类',
  `picurl` varchar(55) NOT NULL COMMENT '图片',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='列表管理';

-- ----------------------------
-- Records of mx_infolist
-- ----------------------------
INSERT INTO `mx_infolist` VALUES ('1', '勇敢上场每个人都是勇者', '1', 'uploads/20170420/9f5b54f1957cb8b2b95b17cf78df6021.jpg', '里约奥运会的余热尚未退去，魅力冰城哈尔滨也在8月28日迎来首届国际马拉松比赛。本届赛事分为全程马拉松、半程马拉松、及迷你马拉松，；共吸引了来自世界33个国家和地区的近3万名选手在26℃的气温下“清爽”开跑，龙采科技集团作为中国互联网百强企业也派出百人代表参赛。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"http://www.longcai.com/uploadfile/image/20160901/20160901024319_50056.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">勇敢上场</span>&nbsp;<span style=\"font-size: 16px\">每个人都是勇者</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 16px\">里约奥运会的余热尚未退去，魅力冰城哈尔滨也在</span><span style=\"font-size: 16px\">8</span><span style=\"font-size: 16px\">月</span><span style=\"font-size: 16px\">28</span><span style=\"font-size: 16px\">日迎来首届国际马拉松比赛。本届赛事分为全程马拉松、半程马拉松、及迷你马拉松，；共吸引了来自世界</span><span style=\"font-size: 16px\">33</span><span style=\"font-size: 16px\">个国家和地区的近</span><span style=\"font-size: 16px\">3</span><span style=\"font-size: 16px\">万名选手在</span><span style=\"font-size: 16px\">26</span><span style=\"font-size: 16px\">℃的气温下“清爽”开跑，龙采科技集团作为中国互联网百强企业也派出百人代表参赛。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\"><img src=\"http://www.longcai.com/uploadfile/image/20160901/20160901024439_54783.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/><br/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp;早上6点20分应组委会要求，参赛队员们早早的到达的指定位置有序的进行检录，7点30分随着比赛正式拉开帷幕，我们龙采军团在一声声响亮的口号中缓步通过主席台向大家展示我们独有的风采。</p><p><br style=\"color: rgb(255, 255, 255);font-family: &#39;microsoft yahei&#39;, arial, 宋体;font-size: 12px;line-height: 17.1429px;white-space: normal;background-color: rgb(255, 255, 255)\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p><span style=\"color: rgb(255, 255, 255);font-family: &#39;microsoft yahei&#39;, arial, 宋体;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 1.5\"><img src=\"http://www.longcai.com/uploadfile/image/20160901/20160901024406_70825.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp;检阅结束，比赛正式开始。马拉松就是这样一项考验耐力的比赛，需要体力，也需要对全程的跑步状态做一个调整和规划，经过一个多小时的比赛，终于等到我们龙采军团的冠军顺利到达终点！</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\"><img src=\"http://www.longcai.com/uploadfile/image/20160901/20160901024521_33436.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/><br/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp;龙采科技集团做为中国互联网百强企业一直扎根于龙江，如此盛会自然少不了我们的身影。龙采科技集团旗下乾正隆商贸进口俄罗斯阳达葵花籽油，作为哈马健康油唯一助力品牌，共设两个健康起跑加油站，完成半程马拉松和迷你马拉松的跑友均可在终点处获得葵花籽油！</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">&nbsp;&nbsp;&nbsp;&nbsp;乾正隆商贸公司通过本次赛事，与哈尔滨马拉松倡导的“牵手世界，跑出健康”相结合，向大家传递“爱跑步、爱生活、爱健康”的生活理念，使乾正隆进口阳达葵花籽油的非转基因、低温冷榨、健康绿色的形象深入人心。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">&nbsp;&nbsp;&nbsp;&nbsp;3万人用脚步丈量的哈尔滨，比想象中更美，坚持前行你就会欣赏到更美的景色，这就是马拉松的魅力。它既可以是专业运动员追逐奖牌的激烈“战场”，也可以是业余爱好者拥抱健康的有效途径。在马拉松的跑道上，一时热血不足称道，一时懈怠也无需指责，只要坚持，你就是勇者。龙采从最开始的6人创业团队，到现在4000余人的互联网百强企业，12年的“马拉松”征程，一直在路上，从未轻言弃。龙采人也将一如既往的秉承马拉松精神，在这种精神的激励下勇往直前，更好的为客户提供优质的营销服务。</p><p><span style=\"line-height: 1.5\"><img src=\"http://www.longcai.com/uploadfile/image/20160901/20160901024556_97830.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></span></p><p><br/></p>', '1', '1', '1486693567', '1492670309');
INSERT INTO `mx_infolist` VALUES ('2', '道里区区长率队走进龙采', '1', 'uploads/20170420/96308206b5c12491a55e30aa9c568d70.jpg', '哈尔滨市道里区区长肖彬、副区长徐伟、科技局局长王广利、招商局局长曲军走访了龙采科技集团，了解企业运行情况并与龙采企业董事长/总裁杨国廷先生等高管交流座谈。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">7月20日下午，哈尔滨市道里区区长肖彬、副区长徐伟、科技局局长王广利、招商局局长曲军走访了龙采科技集团，了解企业运行情况并与龙采企业董事长/总裁杨国廷先生等高管交流座谈。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492670426268604.jpg\" alt=\"\" width=\"600\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">龙采企业董事长/总裁杨国廷先生从龙采科技集团利用优势资源打造的互联网科技平台、体育健康商贸平台及文化影视传媒平台详细介绍了企业概况和未来发展设想，并对肖彬区长对企业的关心和支持表示诚挚的感谢。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">座谈期间，肖彬区长就龙采资海科技集团总裁张栋先生、龙采科技集团财务副总裁张继婷女士提出的如何快速与企业建立高效的沟通方式以便更好地服务于企业、如何利用企业孵化器助力地方青年创业者快速实现创业梦想展开深入探讨，倾听、梳理企业难题，并督促尽快落实解决方案，切切实实帮助企业解决实际困难。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 1.5\"><img src=\"/uploads/ueditor/image/20170420/1492670427639667.jpg\" alt=\"\" width=\"600\" style=\"border: 0px;vertical-align: middle\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 1.5\"><img src=\"/uploads/ueditor/image/20170420/1492670429124529.jpg\" alt=\"\" width=\"600\" style=\"border: 0px;vertical-align: middle\"/><br/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 1.5\"><br/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\">肖彬区长表示，作为东北三省唯一入选中国互联网百强企业的互联网公司，黑龙江龙采科技集团是黑龙江的名牌，也是道里区的骄傲。龙采科技集团一直扎根于黑龙江，以黑龙江为集团总部，经过12年的快速发展，现在全国15省47市设立分公司87家，拥有员工4000余人，为80000余家客户提供优质的营销服务与企业信息化服务。希望龙采将来能借助先进的技术力量及雄厚的社会资源，在生活服务、体育健康商贸、文化影视传媒、金融等领域进一步优化升级，创造更多中国名牌，带动地方经济发展。作为地方政府，道里区将一如既往为企业提供服务，竭力为企业发展提供帮助和支持。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 28px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 1.5\"><img src=\"/uploads/ueditor/image/20170420/1492670430118165.jpg\" alt=\"\" width=\"600\" style=\"border: 0px;vertical-align: middle\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"line-height: 1.5\"><img src=\"/uploads/ueditor/image/20170420/1492670433137245.jpg\" alt=\"\" width=\"600\" style=\"border: 0px;vertical-align: middle\"/></span></p><p><br/></p>', '1', '2', '1486693953', '1492670546');
INSERT INTO `mx_infolist` VALUES ('3', '“华彩共度，相约这移刻”-百度推广', '1', 'uploads/20170420/7086c7a2df8983b1687d438bfadb93d0.jpg', '又是一季雪花飘，又是一年人增岁;又是一年新春到，又是一岁百花开！转眼间忙碌的2015年已经过去，充满期待的2016年已经到来。在这喜迎新春的日子里，黑龙江龙采管区”华彩共度，相约这移刻“2015百度推广年底答谢会，于12月23日，在哈尔滨华融大酒店隆重举行。', '<p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: center; background: white;\"><span style=\"font-size: 16px;\"><img src=\"http://www.longcai.com/uploadfile/image/20160113/20160113030441_59836.jpg\" alt=\"\" style=\"border: 0px; vertical-align: middle;\"/><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: justify; background: white;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: justify; background: white;\"><span style=\"font-size: 16px;\">又是一季雪花飘，又是一年人增岁</span><span style=\"font-size: 16px;\">;</span><span style=\"font-size: 16px;\">又是一年新春到，又是一岁百花开！转眼间忙碌的</span><span style=\"font-size: 16px;\">2015</span><span style=\"font-size: 16px;\">年已经过去，充满期待的</span><span style=\"font-size: 16px;\">2016</span><span style=\"font-size: 16px;\">年已经到来。在这喜迎新春的日子里，黑龙江龙采管区</span><span style=\"font-size: 16px;\">”</span><span style=\"font-size: 16px;\">华彩共度，相约这移刻“</span><span style=\"font-size: 16px;\">2015</span><span style=\"font-size: 16px;\">百度推广年底答谢会，于</span><span style=\"font-size: 16px;\">12</span><span style=\"font-size: 16px;\">月</span><span style=\"font-size: 16px;\">23</span><span style=\"font-size: 16px;\">日，在哈尔滨华融大酒店隆重举行。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: justify; background: white;\"><span style=\"font-size: 16px;\">在耀眼夺目的灯光下，伴随着热情奔放的舞蹈《</span><span style=\"font-size: 16px;\">circus</span><span style=\"font-size: 16px;\">》的动感节拍，带着对百度推广忠实客户的祝福与期望，会议正式开始。龙采科技集团客服副总裁单文斯女士，为本次答谢会致辞。随后，百度高级讲师王良钧先生给大家带来了精彩的主题演讲，使客户们对百度在移动互联领域中的创新优势有了更深的了解。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: center; background: white;\"><span style=\"font-size: 16px;\"><img src=\"http://www.longcai.com/uploadfile/image/20160113/20160113030504_97050.jpg\" alt=\"\" style=\"border: 0px; vertical-align: middle;\"/><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: center; background: white;\"><span style=\"font-size: 16px;\">客服副总裁单文斯女士为答谢会致辞<br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: justify; background: white;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: justify; background: white;\"><span style=\"font-size: 16px;\">在精彩纷呈的节目表演中穿插的抽奖、游戏互动环节，是本次会议的重头戏。三轮抽奖让全场热血沸腾，游戏《找礼物》、《财源团团抱》掀起了整场会议的高潮，欢呼声、呐喊声，声声入耳，在那华丽的殿堂中久久回荡。多年来百度推广能在互联网的浪潮中立于不败之地，靠的是一群优秀客户的信任与支持，为此，会议特设“最佳客户颁奖“环节，感谢这群优秀的客户们对百度推广的厚爱。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: center; background: white;\"><span style=\"font-size: 16px;\"><img src=\"http://www.longcai.com/uploadfile/image/20160113/20160113030526_88557.jpg\" alt=\"\" style=\"border: 0px; vertical-align: middle;\"/><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: center; background: white;\"><span style=\"font-size: 16px;\">获奖的“最佳客户”们上台领奖并发言<br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: center; background: white;\"><span style=\"font-size: 16px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0cm; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 24px; text-indent: 24pt; font-family: &#39;microsoft yahei&#39;, arial, 宋体; white-space: normal; text-align: justify; background: white;\"><span style=\"font-size: 16px;\">温情相伴，温暖相随。为了感恩答谢，回馈多年来信赖百度推广的客户们，会议设立了最新的优惠续费政策，精心准备了丰厚的礼品馈赠，让新老客户的续费热情一度高涨。就此，</span><span style=\"font-size: 16px;\">2015</span><span style=\"font-size: 16px;\">百度推广年底答谢会在客户的喜悦与欢乐声中圆满结束。</span></p><p><br/></p>', '1', '3', '1486693992', '1492670560');
INSERT INTO `mx_infolist` VALUES ('4', '传统思维和互联网思维的五大区别', '2', 'uploads/20170420/3e1ef4844a04339bb50f36f0c6db2291.jpg', '传统思维和互联网思维的五大区别,互联网行业中的巨头，其实都是在玩生态圈。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492670635505193.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">传统思维和互联网思维的五大区别</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">互联网行业中的巨头，其实都是在玩生态圈。比如阿里巴巴，他们是围绕电子商务在做生态圈，先是建了</span><span style=\"font-size: 16px\">B2B</span><span style=\"font-size: 16px\">的阿里巴巴，然后是</span><span style=\"font-size: 16px\">C2C</span><span style=\"font-size: 16px\">的淘宝，然后是</span><span style=\"font-size: 16px\">B2C</span><span style=\"font-size: 16px\">的天猫，此外还有支付宝，另外又搞了菜鸟物流，无论用户是买还是卖，是批发还是零售，需要支付还是物流，在他们的这个生态圈都能解决。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">1</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、互动思维</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">注重互动，而不是单向传播</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">在传统媒体时代，话语权基本上都是掌握在广告主的手中，无论是报纸、杂志、还是电视或广播，广告主把发言者的角色全都揽到了自己身上，而消费者在毫无选择的情况下充当了接收者的角色。这是传统信息传播不对等造成的，也是时代的局限。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">2</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、免费思维</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">推崇免费，而不是收费</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">互联网思维为什么会越来越火？因为在它影响下的互联网企业不仅能为用户提供极致的产品，而且还能让用户免费使用，同时，企业在这种免费模式下仍然可以获得巨额利润。这种免费的经营模式，在传统商业世界中是绝对不可能出现的。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">3</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、平等思维</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">强调平等，而不是层级理念</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">在互联网时代，任何人在信息面前都是平等的，不管是谁，无论身份、地位、财富如何，是家财万贯还是一贫如洗，在信息面前所有的一切都将被抹平，套一句俗话“信息面前，人人平等”。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">4</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、开放思维</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">彼此共生，而不是墨守成规</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">但互联网公司所具备的开放、创新、效率等特质同样也是许多传统行业所缺失的。所以两者结合，互联网公司就将这种软性特质灌输给传统产业，让其具备互联网思维，从而解决他们早升级时所遇到的困境，最后达到互联网与传统行业的双方共赢。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">5</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、思维整合</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">懂得整合，而不是分散资源</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">在全球经济一体化面前，无论是传统企业还是新兴的互联网企业都要懂得怎样高效地整合资源，而不是分散资源。谁能做到这一点，把握住经济发展的脉搏，谁就能在惨烈地竞争中取得胜利。市场给予企业的机遇很有限，谁只要把握住这个机遇，谁就能赢得辉煌的明天。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">传统的商业竞争思维是打败对手，但互联网思维讲究的是整合对手。那么两家竞争对手要如何合作呢？就比如说一家擅长技术，一家擅长管理，两家一起合作，就可以相互省下</span><span style=\"font-size: 16px\">3</span><span style=\"font-size: 16px\">年的发展时间。此时，谁也不要想去收购谁，股权互换就能解决。</span></p><p><br/></p>', '1', '4', '1492670662', '1492670662');
INSERT INTO `mx_infolist` VALUES ('5', '大千网站，你如何在跳出率上脱颖而出？', '2', 'uploads/20170420/953aa35b97935a984da2913b29410c83.jpg', '我想做SEO的人都知道降低用户的跳出率对于网站来说是多么重要，很多有自己网站的企业主都希望用户在自己的网站停留更多的时间，希望用户去更多地点击页面，去查看更多地内容，并尽可能达成目标转化。那么，究竟则么样才能降低我们网站的用户跳出率呢？', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492670691281384.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">大千网站，你如何在跳出率上脱颖而出？</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">我想做</span><span style=\"font-size: 16px\">SEO</span><span style=\"font-size: 16px\">的人都知道降低用户的跳出率对于网站来说是多么重要，很多有自己网站的企业主都希望用户在自己的网站停留更多的时间，希望用户去更多地点击页面，去查看更多地内容，并尽可能达成目标转化。那么，究竟则么样才能降低我们网站的用户跳出率呢？</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">1</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、网站结构层次、合理的布局</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">当你进入一个网站的时候，发现这个网站结构乱七八糟的，层次结构又不清晰，想找一下自己想要的内容，但又在这样混乱的视图中无从下手，要是自己又很急，心情差。我想不管是谁都会觉得很抓狂。所以，我们必须要给予用户更好的体验，以及明确又清晰的视图才行。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">2</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、不要广告满天飞</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">广告是我们网站盈利和变现的主要手段之一，但是这东西是一把双刃剑，如果你做的太过，用户会非常反感你的网站，甚至有一些网站还用一些“流氓手段”来刷广告，比如强制弹窗之类的，这样的话用户对你网站的印象就会很差了。对于广告的处理要谨慎，某些图片和视频内的广告，会拖慢网站的加载速度。当然这个量要要靠自己把握，不要贪得无厌最后反而葬送了自己的网站就得不偿失了。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">3</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、网页加载速度</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">根据数据表明，如果一个网页的加载时长超过了</span><span style=\"font-size: 16px\">12</span><span style=\"font-size: 16px\">秒，用户一般都会选择直接关掉网页。这样会降低用户对我们网站的好感度，增加用户的跳出率。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">4</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、内链的布局</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">当用户兴致勃勃浏览完一篇文章后，若我们能让他们的思维跟着我们走，就可以让用户在我们的站里一直浏览下去。所以，内链的布局就很重要，比如，用户在浏览完这篇文章的时候给他一个相关推荐，热门文章，那么用户就会因为感兴趣而继续浏览下去。这样的话，不仅增加了用户在我们网站的浏览的深度和广度，也降低了网站的跳出率。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">比如用户想看关于建站的视频，我们将视频以内链的方式，一集一集的排下去，这样用户就会跟着这样一个内链系统一直浏览下去，降低我们网站的用户跳出率。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">5</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、及时清理死链</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">当我们的网站死链多，不仅搜索引擎会对我们网站降权，也会降低用户对我们网站的好感度，这点大家应该都深有体会，因此网站中必须要制作</span><span style=\"font-size: 16px\">404</span><span style=\"font-size: 16px\">页面，一旦当死链出现的时候，要及时引导用户回到我们的首页。并且及时在</span><span style=\"font-size: 16px\">robot</span><span style=\"font-size: 16px\">文件中屏蔽死链，还要在站长平台中提交死链。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">6</span></span><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">、互动性沟通</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">有的用户在阅读完一些信息后，可能会有很多的看法和心得想要分享，这时我们可以在信息下方加一个评论的功能，让用户来沟通交流想法，互动性极高的信息可以吸引更多人阅读，来评论区说两说。这样也可以降低用户的跳出率。</span></p><p><br/></p>', '1', '5', '1492670717', '1492670717');
INSERT INTO `mx_infolist` VALUES ('6', '网络营销宝典之企业网站优化该怎么做？', '2', 'uploads/20170420/547187237a84bfe612192b70671a6809.png', '企业网站在营销角度下，我们优化过程中一定要注意的问题。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"http://www.longcai.com/uploadfile/image/20170207/20170207010237_66758.png\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">网络营销宝典之企业网站优化该怎么做？</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">企业网站在营销角度下，我们优化过程中一定要注意的问题。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第一、分析你的目标群体</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">网络营销非常关键的一个问题就是网站定位，具体到企业站而言就是我们的目标群体分析，对企业产品需求的是哪一类群体？群体特征都有哪些？用户年龄段分布情况、身份是工薪阶层还是学生或者是老板？制作一张目标群体分布表。然后根据分布表针对性的分析出他们对于产品的兴趣点所在。那么我们在网站策划、设计以及内容制作的时候，就会有针对性的策略。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第二、比较分析自己站点和同行站点的异同，取长补短</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">当下社会竞争日益激烈，在这种同质化非常严重的情形下，我们网站一定要作出自己的特点，当我们网站布局自认为已经完美的时候，请在停留一下，如果可能最好在进行下头脑风暴，让我们从事销售的同事为网站提出建议或者意见，结合大家的想法看看那些事我们做的不够好的，作为站长自己也应该做个有心人，我们应该搜索相关关键词多对比分析同行站点，看看内容和体验度方面那些还值得我们学习和借鉴，任何事情都没有完美无缺的，我们能够做的就是尽自己最大的努力，让自己的站点获得大多数人的认可，这个就足够了。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第三、引来流量不是终点，考虑转化率的事情</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">网络营销的核心在于营销，网站优化使网站获得排名、引入流量并不是终点，我们最终要让浏览者转化为意向购买者或购买者。作为一名合格的企业优化人员，我们一定要深入了解用户进入网站了解信息到购买产品的这一整个过程，我们才能在这个过程中进行针对性的优化，针对客户存在的主要问题，引导客户去咨询我们的企业站在线客服，针对客户的购买流程和下单方式进行详细的说明和引导，这些都是我们在策划营销过程中所经历的核心要点。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第四、优化短期计划要制定，中长期计划更不可少</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">我们知道，网站的发展绝不是仅仅依靠我们上线时候的计划而来的，每一个阶段可能我们都要根据不同的情形及时作出调整，这个时候我们必须为网站制定长期的优化和营销规划，针对各时间段需要达到什么效果都确定好目标，定期反思我们目标达成的效果，分析目标和结果之间存在哪些差距，比如每个阶段的文章收录情况，每个阶段的外链建设和关键词排名情况统计，问题是在所难免的，我们要根据遇到的问题不断调整我们的优化策略和优化细节。优化不能三天打鱼两天晒网，成功是建立在不断对于新出现的情况加以改进，直到达成我们目标的过程。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;vertical-align: top;background: rgb(254, 254, 254)\"><span style=\"font-size: 16px\">最后，企业网站优化是我们非常重要的工作之一，除了优化工作我们还要不断的分析我们优化的目的和最终要通过互联网带来的最大效果，我们不应该把自己只当做优化人员，而是像一个营销策划员一样去思考去调整调整我们的优化思路，让网站优化正正能够为企业带来利润是我们的最终目的。</span></p><p><br/></p>', '1', '6', '1492670770', '1492670770');
INSERT INTO `mx_infolist` VALUES ('7', '网站建设需要注意什么', '3', 'uploads/20170420/484ea07be90dbef5513ce9e5c63c4146.jpg', '随着网络的发展，企业网站建设已经成为一种趋势，每个企业都想要做一个独立的网站宣传自己的形象及产品或服务。在这个网络时代，人们的生活和工作已经离不开网络，网站是企业对外的重要窗口。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492670874126001.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">网站建设需要注意什么</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">随着网络的发展，企业网站建设已经成为一种趋势，每个企业都想要做一个独立的网站宣传自己的形象及产品或服务。在这个网络时代，人们的生活和工作已经离不开网络，网站是企业对外的重要窗口。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">但是，一个企业没有自己的专业的技术团队，没有专门的网站制作者，就只能外包给网站制作公司。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">不管我们上网搜索查询还是咨询企业网站建设，网站制作的公司，得到的答案无非都是页面的设计简单大气，栏目清晰。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">重点是，要怎么做才能够实现，这个却没有多少人能够给出我们肯定的答案，而只是一昧的承诺，结果却不得而知。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">企业做网站应该注意什么？首先是选对专业的企业网站建设公司，因为一家好的专业的网站建设，网站制作的公司会给你专业的意见，不管在设计的效果上还是后期优化的实现上都会让你更加满意，放心省心。其次是网站制作建设过程中的细节要求。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">企业建设网站，注重实用性更重要。做网站应该注意些什么，大致方面有以下几点可供参考。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">一．</span>&nbsp;<span style=\"font-size: 16px\">页面简练大气，不像行业门户网站般复杂。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">企业网站只有在客户需要的时候才会访问，不像门户等其他站点的网民们会经常访问，所以企业网站的页面要让客户一眼就能够找到需要的东西。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">二．</span>&nbsp;<span style=\"font-size: 16px\">联系方式放在明显的位置</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">比如网页两侧放上在线客服，最好不要放弹出式的。因为客户每访问一个页面就要关一次，会让人不舒服，甚至感到厌烦。联系方式要友好性，不要强制客户点击。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">三．</span>&nbsp;<span style=\"font-size: 16px\">公司新闻及相关行业新闻的更新</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">挑选适当的公司新闻和具有代表性的行业新闻发布到官网上，可以让来访者及时了解公司的情况和相关的行业状况。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">四．</span>&nbsp;<span style=\"font-size: 16px\">公司产品或服务的介绍，成功案例及客户评价</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">产品图片最好进行适当的处理，包括大小，尺寸，清晰度等，采用图文并茂的形式，不仅可以吸引客户的注意力，也可以让客户更容易了解产品。成功案例及客户评价可以提升企业形象，增强说服力。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">五．公司产品或服务的问题</span><span style=\"font-size: 16px\">FAQ（常见问题及解答）</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">新老客户可以通过网站进行反馈，建议等，或者是一些常见的问题，企业应该做个汇总并不断更新，通过网站解决一些问题，不仅可以让客户感到网站对其的帮助，对企业开展工作也有很大的帮助作用。</span></p><p><br/></p>', '1', '7', '1492670889', '1492670889');
INSERT INTO `mx_infolist` VALUES ('8', '为什么企业要做网站', '3', 'uploads/20170420/48269b3c10c0b8e4fef4b93947cb826a.jpg', ' 一个全新的无接触市场时代即将到来。无数目光远大，勤于革新的企业家们将从中获益无穷，而相反，那些固守成规，无视新技术变化的企业也将被新的商业系统淘汰出局。\r\n', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492670919285042.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">为什么企业要做网站</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">&nbsp;</span><span style=\"font-size: 16px\">一个全新的无接触市场时代即将到来。无数目光远大，勤于革新的企业家们将从中获益无穷，而相反，那些固守成规，无视新技术变化的企业也将被新的商业系统淘汰出局。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">为什么企业需要网站呢？</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">一</span><span style=\"font-size: 16px\">.走出去</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">全世界大约有几千万人可访问</span><span style=\"font-size: 16px\">World Wide Web(WWW)，不管你是做什么买卖的，你都不能小觑这几千万人。要想加入这个圈子，并在其中表现出你有兴趣为他们提供服务，你就需要踏上WWW。你该知道，你的对手们是会这样干的。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">二</span><span style=\"font-size: 16px\">.建立人际关系网络</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">做生意当中的许多周折无非就是跟他人取得联系。精明的商人都知道，重要的不是你知道什么，而是你认识谁。每逢佳会，大家都要互递名片，而偶然的会见有时候也能谈成大宗交易</span><span style=\"font-size: 16px\">——这种事儿每个商人都能讲出几件来。那么，如果你向几千个，甚至几百万个潜在客户和合作伙伴递出名片，并说这就是我所从事的工作，如果你需要我的服务，可以通过它跟我联系，这样将会产生何等效果也就可想而知了。在WWW上，你每天24小时都可以轻而易举地这样做。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">三</span><span style=\"font-size: 16px\">.让商务信息唾手可得</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">基本的商务信息是什么？想想黄页广告就知道了。你什么时间营业？你是干什么的？怎么跟你联系？你接受哪种付款方式？你在何处？你可以通过黄页来交流这些信息。今日的特价商品是什么？今日的利率如何？有哪些下周露天停车场的销售信息？如果你能让你的客户知道他们该跟你做生意的每一条理由的话，你的生意不就做得更好吗？而在</span><span style=\"font-size: 16px\">WWW上，这些你都办得到。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">四</span><span style=\"font-size: 16px\">.向客户提供服务</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">让商务信息随手可得是向客户提供服务的最重要的途径之一。而采用</span><span style=\"font-size: 16px\">WWW技术后，你会找到更多的向客户提供服务的方法。试想一下，如果你的员工不用电话就能寻找到客户所需要的古典爵士乐录音带，这样做生意的效果不是更好吗？想过让你的客户了解你店里的夹克大小和颜色情况吗？所有这些都可以在WWW上简便快捷地实现。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">五</span><span style=\"font-size: 16px\">.提高大众兴趣</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">你没办法让《新闻周刊》来报道你的小店开张之事。但是如果你的网页作得新颖有趣的话，你可以让他们把你的网址写进去。退一步说，就算《新闻周刊》报道了你的店面开业。你也没法从一个远在他乡的读者身上获益，除非他马上就要到你的镇上来。而有了网页信息，不管何人，也不论他身在何地，只要他通过</span><span style=\"font-size: 16px\">Web了解到你，他都会成为你的网站的潜在访问者，从而进一步发展成潜在客户。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">六</span><span style=\"font-size: 16px\">.无国界、区域界限的经营</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">国际网络无远近之分，只要拥有电脑，即可随时到电子空间里遨游，商品一上网路即有可能成为国际品牌而无须花费昂贵的国际行销费用，以最少的成本将自己的货品、服务推销到全世界。这种方式可以使小企业变大，本土公司变全球公司，对于国内资本额不高，无太多行销预算的中小企业而言，尤其具有吸引力。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">七</span><span style=\"font-size: 16px\">.开拓国际市场</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">你想在所有潜在的国际市场上，把邮件、电话和管理系统都理顺可能不太现实。但有了网页以后，你就能与国际市场展开对话，其简便易行犹如与街对面的公司进行交流一般。这是一件务实的工作，所以在你上网之前，你该考虑一下，你要如何处理将来的国际业务。因为不管你是否已经作了计划，你在网上发布的信息是肯定会给你带来国际商务机会的。上网的另外一个好处是，如果你有国外分支机构，他们访问总部信息只需支付地方电话费用。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">八</span><span style=\"font-size: 16px\">.迅速进行信息更改</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">有时候信息还没有发布就已经改变，这时你手里就有了一堆价格不菲而毫无用处的纸。而电子出版可以根据人的需要进行更改，而且这些工作不用纸张、不用油墨，也没有出版商递给你的帐单。你甚至可将网页粘贴到一个数据库上，而这个数据库可对输出信息进行把关，这样，你在一年之内需要进行多少次信息更改就可以进行多少次。而印刷品是没有这种灵活性的。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">九</span><span style=\"font-size: 16px\">.对新服务、新产品进行市场定位</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">考虑到上述各条理由，我们就会明白推出一种新产品的代价是什么。这就是没完没了的广告、公关和花费。而一旦你上了网，并且清楚你想从看到你的网页的人那里得到什么，你就实现了花费最少的市场营销。他们会以比任何营销手段都更为快捷、简便和经济的方式，让你知道他们是怎么看待你的产品的。这的确是件不一般的事情。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">十</span><span style=\"font-size: 16px\">.获得媒体效应</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">就像在第</span><span style=\"font-size: 16px\">5条理由里提到的一样，每种生意都需要媒体的宣传，但你的生意如何与媒体——如新闻热线、出版商或公共策划集团一一结合呢？在今日，媒体是在线程度最高的行业，这是因为它们的主要产品是信息，它们可以更迅速、更简便且更经济地将它放到网上。在线新闻正变得越来越普遍，这是因为越来越多的新闻机构的数字环境有利于它的发展。数字图像可以很方便地放到网上，数字文本可以在更加紧迫的限期内进行编辑和发布。所有这些都可以在网页上实现。</span></p><p><br/></p>', '1', '8', '1492670944', '1492670944');
INSERT INTO `mx_infolist` VALUES ('9', '打造高质量营销型网站秘籍！', '3', 'uploads/20170420/a7a7d9c9ac823f11c28c4aab523f3cc6.jpg', '现如今，很多传统中小型企业开始涉足互联网，开展网络营销领域。企业建站大多都是以网络营销为主，从而选择制作营销型网站。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492670977131483.jpg\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">打造高质量营销型网站秘籍！</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">现如今，很多传统中小型企业开始涉足互联网，开展网络营销领域。企业建站大多都是以网络营销为主，从而选择制作营销型网站。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">但是又有多少营销型网站的成交率相较满意呢？企业都是举着营销的旗帜，却从未关注营销型网站和传统企业展示站到底有什么差异？</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">企业想提高产品网销成交率，最为关键的还是如何将潜在用户转换成目标用户。而这主要是由用户的体验度及流量的质量度来决定的。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">那么到底如何打造高质量的营销型网站来留住客户呢？下面就和大家谈谈营销型网站制作具体该注意的方面：</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第一：明确网站的定位</span><span style=\"font-size: 16px\">, 重点内容突出显示</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">不得不说，大量的网站虽然举着营销的旗帜，但却很容易就会发现网站的主页并不是用来宣传什么或销售什么。最明显的问题就是网站定位不准，主页未进行重点突出。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">对于营销型网站而言，网站定位不准是网站的致命伤害。对于这样的网站，企业就要明确的将重点产品作为主页主打元素，让用户点击进入网站能够迅速的了解网站是做什么。并且主页清晰的定位，更有利于网站的发展。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第二：清晰的网站结构引导用户、诱导蜘蛛</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">网站结构在整个网站中主要就是起到一个引导作用。不但引导用户便捷的浏览网站，而且引导搜索引擎蜘蛛快速的抓取。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">对于用户，企业就要考虑到用户点击进入网站最想了解的内容会是什么。迎合用户的思维习惯，通过引导用户来实现预期的目标。用户体验好，浏览的时间也会增强，产生的兴趣也会浓烈。对于搜索引擎，它主要就是顺着网站结构的脉络来浏览网站的。网站结构不清晰，搜索引擎蜘蛛抓取的机率几乎为零，网站被收录的概率也会减少。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第三：注重视觉上的美感，风格和企业形象统一</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">人都是视觉动物，映入用户眼帘的内容都会影响用户的感官。网站要想在视觉上带来一定的效果，必须要从用户的审美习惯开始着手。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">网站的主色调和辅色调都要对应企业</span><span style=\"font-size: 16px\">LOGO标志来规划，这样才不会让用户产生视觉疲劳感。并且利用一定的图文并茂的效果会产生更好的结果。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第四：以独特的产品展示方式吸引用户的目光</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">营销型网站最为突出的就是产品，不但主页上要将产品最为主打元素，并且在子页面中就要重点突出展示了。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">拥有独特的产品展示方式，不仅吸引用户的停留，而且还会增加产品的成交率。产品展示方式，就不得不说到</span><span style=\"font-size: 16px\">Pinterest(瀑布流)。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">新颖、时尚的表现方式更加切合现代人的审美标准，更容易被接受。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 0;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-weight: 700\"><span style=\"font-size: 16px\">第五：做好关键词布局和优化，提升网站流量</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">每个网站的子页面中都会有针对性的分布不同的关键词及描述，并且企业为这些关键词做必要的优化，能够让更多的用户了解自己的网站。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">网站的内容页和栏目往往是网站流量的主要来源，内容页栏目页的描述结合关键词的优化能够给网站带来很大的流量。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 27px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">总体来讲我们建设营销型网站的目标就是为了提升企业的销售业绩，提升网站的转化率。在这个流量就是客户，流量就是订单的互联网时代，打造高质量的营销型网站不仅可以提升企业形象，更多可以为公司带来可观的收益！</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px\">但是这往往不是你想就能做到，要突破这个关口，突破这个瓶颈，必须要有专业的人，专业的企业来为您量身打造真正适合您企业的网站。</span></p><p><br/></p>', '1', '9', '1492671014', '1492671014');
INSERT INTO `mx_infolist` VALUES ('10', '浅谈企业网站建设的六大优势', '3', 'uploads/20170420/4b022e960187bf32fbe09e18809382da.png', '正常情况下，网站无时无刻不在工作，通过企业的网站，用户可以跨越时空了解企业。企业网站不仅仅是展示企业形象的平台，更是企业扩展销售不可忽略的营销方式。', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><img src=\"/uploads/ueditor/image/20170420/1492671147124792.png\" alt=\"\" style=\"border: 0px;vertical-align: middle\"/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background-color: rgb(255, 255, 255)\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp;正常情况下，网站无时无刻不在工作，通过企业的网站，用户可以跨越时空了解企业。企业网站不仅仅是展示企业形象的平台，更是企业扩展销售不可忽略的营销方式。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp;以下浅谈企业网站建设的六大优势。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\"><span style=\"font-weight: 700\">一、宣传企业形象，创造销售机会</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp; &nbsp;网站具有不受地域性限制优点，利用企业网页，企业可向外宣传企业的文化、企业的概况、产品、服务品质以及新闻等方面的内容，以利于企业更科学地进行市场开拓。通过网络可以将企业的产品展示给各地的目标客户，扩大企业产品销售机会，提升企业业绩。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\"><span style=\"font-weight: 700\">二、树立企业品牌形象，打通与网络市场的渠道</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp; &nbsp;实际上，企业对企业网站建设需求上了解还是十分模糊的，有的企业之所以构建网站是为了能给企业带来效益，但是也有不少企业只是希望构建网站这种方式树立品牌形象，并没有以营销为最终目的。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 32px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">互联网是一个全球市场，各种各样的网站、广告数不胜数，它无时间、地区限制等特点，在一定程度上也打通了企业产品全球化、服务全球化的通道。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\"><span style=\"font-weight: 700\">三、可以全面详细地介绍企业及企业产品</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp; &nbsp;企业网站的一个最基本的功能，就是能够全面、详细地介绍企业及企业产品。企业可以把任何想让人们知道的信息放入网址，如企业简介、企业的人员、厂房、生产设施、研究机构、产品外观、功能及使用方法等，都可以展示于网上。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\"><span style=\"font-weight: 700\">四、可以与客户保持密切联系</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp; &nbsp;每当人们想知道某企业有什么产品、服务或新产品、服务，甚至只是想知道该企业有什么新闻时，他们就会习惯性的进入该企业的网址。因为大多数企业已经把所有的产品、服务信息发布于网上，并且定期在网上发布有关企业的新闻信息。企业有了网站后便可以利用网络与客户进行沟通。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\"><span style=\"font-weight: 700\">五、可以利用网站及时得到客户的反馈信息</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp; &nbsp;客户一般是不会积极主动地向公司反馈信息的。如公司在设计网站时，加入专门用于客户与公司联系的电子邮件和电子表格，由于使用极其方便，相对来说，一般客户还是比较乐于使用这种方式与公司进行联系。因此，公司可以得到大量的客户意见和建议。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\"><span style=\"font-weight: 700\">六、与潜在客户建立隐形的商业联系</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp; &nbsp;&nbsp; &nbsp;原则上说，企业建立了网站就拥有了与全世界各地的人的联系方式，当你的用户想了解某样产品或信息时，就会习惯地通过搜索网站去了解，其中有一部分很大可能就是你的潜在用户。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 10px 10px 0px;color: rgb(51, 51, 51);font-size: 14px;line-height: 24px;text-indent: 24px;font-family: &#39;microsoft yahei&#39;, arial, 宋体;white-space: normal;background: rgb(255, 255, 255)\">&nbsp;&nbsp;&nbsp;&nbsp;总结：网站建设对企业的来说，是一种低投入高回报网络营销方式。不仅仅扩大企业知名度和品牌，更重要的是无形中为企业积攒了大量潜在客户。微不足道的一个网站，也许就是这个企业改变的开始。</p><p><br/></p>', '1', '10', '1492671169', '1492671169');

-- ----------------------------
-- Table structure for mx_job
-- ----------------------------
DROP TABLE IF EXISTS `mx_job`;
CREATE TABLE `mx_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '职位管理主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `num` tinyint(1) NOT NULL COMMENT '人数',
  `content` text NOT NULL COMMENT '要求',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='职位管理';

-- ----------------------------
-- Records of mx_job
-- ----------------------------
INSERT INTO `mx_job` VALUES ('1', '高级产品经理 ', '3', '<p>熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；</p><p>有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；</p><p>具备良好的沟通协调能力、系统性思维和创新意识；</p><p>具有产品需求、归纳能力、市场敏觉洞察能力；</p><p>经历过完整的企业级应用产品生命周期；</p><p>有TOB企业5年以上产品经理工作经验；</p><p>有前端相关技术背景，具有产品架构师能力者优先考虑。</p>', '1', '1', '1485077368', '1492504105');
INSERT INTO `mx_job` VALUES ('2', '高级前端开发工程师', '1', '<p>本科及以上，3-5年开发经验；</p><p>熟练掌握JS原生代码开发，对原型编程有深入的理解；</p><p>熟练使用过至少一种前端框架（如:Angularjs/reactjs/backbonejs/emberjs/knockoutjs）；</p><p>熟悉模块化开发思路，实际使用过至少一种框架（如：requirejs/seajs）；</p><h5>有下列经验者优先：</h5><ul class=\" list-paddingleft-2\"><li><p>计算机相关专业统招本科以上学历；</p></li><li><p>具有Reactjs实际开发经验；</p></li><li><p>具有Nodejs后端开发经验；</p></li><li><p>具有Nodejs后端开发经验；</p></li><li><p>具有较好的UI设计能力；</p></li><li><p>有个人作品可以演示；；</p></li></ul><p>面试时请带个人笔记本或硬盘，在面试过程中向产品负责人展示你的产品，或你写的代码。</p>', '1', '2', '1492504217', '1492504217');
INSERT INTO `mx_job` VALUES ('3', 'iOS开发工程师', '3', '<p>有iOS开发项目经验；</p><p>拥有文档能力、有进程/多线程编程经验；</p><p>拥有良好的代码规范，熟悉TCP/IP，HTTP等网络协议；</p><p>能够对iOS手机不同分辨率、不同屏幕大小的界面进行适配；</p><p>有iOS底层开发经验；</p><p>熟悉html。</p>', '1', '3', '1492504264', '1492504264');

-- ----------------------------
-- Table structure for mx_link
-- ----------------------------
DROP TABLE IF EXISTS `mx_link`;
CREATE TABLE `mx_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `picurl` varchar(55) NOT NULL COMMENT '图片',
  `url` varchar(55) NOT NULL COMMENT '网址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of mx_link
-- ----------------------------
INSERT INTO `mx_link` VALUES ('1', '筑龙建材', 'uploads/20170210/de2a6efca21f40bd3f748b70f01f36e2.jpg', 'http://www.bejson.com/', '1', '1', '1484617826', '1486693253');

-- ----------------------------
-- Table structure for mx_manager
-- ----------------------------
DROP TABLE IF EXISTS `mx_manager`;
CREATE TABLE `mx_manager` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` char(30) NOT NULL,
  `password` char(32) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `mobile` char(11) NOT NULL,
  `avatar` tinyint(2) NOT NULL DEFAULT '1',
  `group_id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mx_manager
-- ----------------------------
INSERT INTO `mx_manager` VALUES ('1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 'mashuxia', '18800000000', '6', '1', '0', '1485229169', '1495185990');
INSERT INTO `mx_manager` VALUES ('19', 'admiiner1', '14e1b600b1fd579f47433b88e8d85291', 'ff6fsd', '18846938279', '8', '1', '1', '1485228797', '1485228797');
INSERT INTO `mx_manager` VALUES ('20', 'mashuxia', '14e1b600b1fd579f47433b88e8d85291', '马淑霞lucky', '18846938345', '6', '2', '1', '1486537383', '1495187223');

-- ----------------------------
-- Table structure for mx_message
-- ----------------------------
DROP TABLE IF EXISTS `mx_message`;
CREATE TABLE `mx_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言列表主键',
  `truename` varchar(15) NOT NULL COMMENT '姓名',
  `mobile` char(11) NOT NULL COMMENT '电话',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `ip` char(15) NOT NULL COMMENT 'Ip',
  `rebody` varchar(255) DEFAULT NULL COMMENT '回复',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='留言列表';

-- ----------------------------
-- Records of mx_message
-- ----------------------------
INSERT INTO `mx_message` VALUES ('1', '罗兴远', '15114644710', '爱是所属是是是是是是是是是是是是是是是是', '127.0.0.1', '是是是是是是是是是是是是', '1484617733', '1484617763');
INSERT INTO `mx_message` VALUES ('2', '是否', '18846938242', '水电费', '192.168.5.110', null, '1488437557', '0');
INSERT INTO `mx_message` VALUES ('3', '马淑霞', '18846938242', '马淑霞马淑霞马淑霞马淑霞马淑霞', '192.168.5.110', null, '1490512017', '0');
INSERT INTO `mx_message` VALUES ('4', '嘎嘎', '18846938242', '联系我们联系我们联系我们', '192.168.5.110', null, '1492508840', '0');

-- ----------------------------
-- Table structure for mx_nav
-- ----------------------------
DROP TABLE IF EXISTS `mx_nav`;
CREATE TABLE `mx_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '导航管理主键',
  `title` varchar(55) NOT NULL COMMENT '导航名称',
  `parentid` int(10) NOT NULL COMMENT '上级导航',
  `url` varchar(55) NOT NULL COMMENT '导航链接',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='导航管理';

-- ----------------------------
-- Records of mx_nav
-- ----------------------------
INSERT INTO `mx_nav` VALUES ('1', '首页', '0', 'home/index/index', '1', '1', '1488164685', '1488260747');
INSERT INTO `mx_nav` VALUES ('2', '产品中心', '0', 'home/product/index', '1', '2', '1488164862', '1492484982');
INSERT INTO `mx_nav` VALUES ('4', '解决方案', '0', 'home/solution/index', '1', '4', '1488270685', '1492485051');
INSERT INTO `mx_nav` VALUES ('5', '新闻中心', '0', '#', '1', '5', '1488270717', '1492485092');
INSERT INTO `mx_nav` VALUES ('6', '公司动态', '5', 'home/infolist/index?classid=1', '1', '6', '1488270746', '1492485166');
INSERT INTO `mx_nav` VALUES ('7', '行业动态', '5', 'home/infolist/index?classid=2', '1', '7', '1488270786', '1492485241');
INSERT INTO `mx_nav` VALUES ('8', '精彩专题', '5', 'home/infolist/index?classid=3', '1', '8', '1488270803', '1492485271');
INSERT INTO `mx_nav` VALUES ('9', '关于我们', '0', 'home/about/index', '1', '9', '1488270819', '1492485804');
INSERT INTO `mx_nav` VALUES ('10', '加入我们', '0', 'home/join/index', '1', '10', '1492485830', '1492503650');
INSERT INTO `mx_nav` VALUES ('11', '联系我们', '0', 'home/contact/index', '1', '11', '1492503612', '1492503612');

-- ----------------------------
-- Table structure for mx_product
-- ----------------------------
DROP TABLE IF EXISTS `mx_product`;
CREATE TABLE `mx_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '精彩案例主键',
  `title` varchar(55) NOT NULL COMMENT '标题',
  `picurl` char(80) NOT NULL COMMENT '封面',
  `picarr` text NOT NULL,
  `type_id` int(10) NOT NULL COMMENT '分类',
  `content` text NOT NULL COMMENT '内容',
  `keyword` varchar(255) NOT NULL COMMENT '关键词',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `orderid` int(10) NOT NULL COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='精彩案例';

-- ----------------------------
-- Records of mx_product
-- ----------------------------
INSERT INTO `mx_product` VALUES ('3', '天津浩业化工有限公司', 'uploads/20170420/60065fc6bf9fc1002685b474823e286f.png', '', '1', '<p><img src=\"http://case.longcai.com/uploadfile/20170407092836565.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;天津浩业化工有限公司</span></p><p><br/></p>', '地方', '地方', '1', '1', '1482820915', '1492667763');
INSERT INTO `mx_product` VALUES ('4', '黑龙江龙教数媒科技有限公司', 'uploads/20170420/9f1e88e85ef530751cf275779900171e.png', '', '2', '<p><img src=\"/uploads/ueditor/image/20170420/1492668062961932.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;黑龙江龙教数媒科技有限公司</span></p>', '水电费', '水电费', '2', '1', '1482821612', '1492668112');
INSERT INTO `mx_product` VALUES ('5', ' 哈尔滨诚信教学实验设备有限公司', 'uploads/20170420/1337cfd143e3c0834a6a801b805f62d1.png', '', '1', '<p><img src=\"/uploads/ueditor/image/20170420/1492668208565480.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;哈尔滨诚信教学实验设备有限公司</span></p><p><br/></p>', '地方', '地方', '3', '1', '1482821684', '1492668216');
INSERT INTO `mx_product` VALUES ('7', '鹤岗玛丽亚医院', 'uploads/20170420/fa2fd9ea76492fbebaeabdb0d2c3cef2.png', '', '2', '<p><img src=\"http://case.longcai.com/uploadfile/20170213102812728.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;鹤岗玛丽亚医院</span></p><p><br/></p>', '', '', '5', '1', '1482821745', '1492668315');
INSERT INTO `mx_product` VALUES ('9', '哈尔滨西面来风餐饮管理有限公司', 'uploads/20170420/dbe952b55e156b16982b4bc902973923.png', '', '2', '<p><img src=\"/uploads/ueditor/image/20170420/1492668372166791.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;哈尔滨西面来风餐饮管理有限公司</span></p><p><br/></p>', '', '', '7', '1', '1482981679', '1492668376');
INSERT INTO `mx_product` VALUES ('10', '哈尔滨红旗龙昇地板加工厂', 'uploads/20170420/e5b85bed7a135d7b29f6753260e6b8d5.png', '', '3', '<p><br/></p><p><img src=\"/uploads/ueditor/image/20170420/1492668446560704.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;哈尔滨红旗龙昇地板加工厂</span></p>', '', '', '8', '1', '1485310404', '1492668469');
INSERT INTO `mx_product` VALUES ('11', '黑龙江伟恒新能源有限公司', 'uploads/20170420/4ee5f922feb9f97a2b0a946a01385d26.png', '', '2', '<p><img src=\"/uploads/ueditor/image/20170420/1492668514101451.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;黑龙江伟恒新能源有限公司</span></p><p><br/></p>', '', '', '9', '1', '1492067502', '1492668532');
INSERT INTO `mx_product` VALUES ('12', '哈尔滨运通俊恩汽车销售服务有限公司', 'uploads/20170420/16a8d959af70bbc24eb9055592260416.png', '', '1', '<p><img src=\"http://case.longcai.com/uploadfile/20170407090807650.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;哈尔滨运通俊恩汽车销售服务有限公司</span></p><p><br/></p>', '哈尔滨运通俊恩汽车销售服务有限公司', '哈尔滨运通俊恩汽车销售服务有限公司', '10', '1', '1492668609', '1492668609');
INSERT INTO `mx_product` VALUES ('13', '呼伦贝尔市海拉区明视眼科门诊部', 'uploads/20170420/ee6869d3d37112baeae1fff1105673b9.png', '', '1', '<p><img src=\"/uploads/ueditor/image/20170420/1492668651106559.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;呼伦贝尔市海拉区明视眼科门诊部</span></p><p><br/></p>', '呼伦贝尔市海拉区明视眼科门诊部', '呼伦贝尔市海拉区明视眼科门诊部', '11', '1', '1492668666', '1492668666');
INSERT INTO `mx_product` VALUES ('14', 'Smart', 'uploads/20170420/a562ebe03ea7ac0942f4b044dccc2260.png', '', '3', '<p><img src=\"/uploads/ueditor/image/20170420/1492668703610707.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;Smart</span></p><p><br/></p>', 'Smart', 'Smart', '12', '1', '1492668718', '1492668718');
INSERT INTO `mx_product` VALUES ('15', '防腐木工程', 'uploads/20170420/312555bf146938db140dd7a12ca70b3c.png', '', '3', '<p><img src=\"http://case.longcai.com/uploadfile/20161230135159877.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;Smart</span></p><p><br/></p>', '', '', '13', '1', '1492668808', '1492668808');
INSERT INTO `mx_product` VALUES ('16', '健身俱乐部', 'uploads/20170420/de57afdeb9d1977d9c101378d750fb8f.png', '', '3', '<p><img src=\"/uploads/ueditor/image/20170420/1492668854101322.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;Smart</span></p><p><br/></p>', '', '', '14', '1', '1492668865', '1492668865');
INSERT INTO `mx_product` VALUES ('17', '旅行社旅游定制版', 'uploads/20170420/5de72c3a49069d3b89e86f03e07cb03e.png', '', '3', '<p><img src=\"/uploads/ueditor/image/20170420/1492668966100109.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;旅行社旅游定制版</span></p><p><br/></p>', '', '', '15', '1', '1492668975', '1492668975');
INSERT INTO `mx_product` VALUES ('18', '装修公司', 'uploads/20170420/f2ef1f2b137a04908d0dc6e702c325a8.png', '', '3', '<p><img src=\"/uploads/ueditor/image/20170420/1492669036367534.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;Smart</span></p><p><br/></p>', '', '', '16', '1', '1492669044', '1492669044');
INSERT INTO `mx_product` VALUES ('19', '黑龙江佰嘉生物材料有限公司', 'uploads/20170420/9400453a91cda6d8e6f14e868400d711.png', '', '1', '<p><img src=\"http://case.longcai.com/uploadfile/20151013163349335.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;黑龙江佰嘉生物材料有限公司</span></p><p><br/></p>', '', '', '17', '1', '1492669238', '1492669238');
INSERT INTO `mx_product` VALUES ('20', '哈尔滨蓝慕文化传媒有限公司', 'uploads/20170420/6459c9303d3b418853694ff3cdfe1a9a.png', '', '1', '<p><img src=\"http://case.longcai.com/uploadfile/20160810155932953.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;哈尔滨蓝慕文化传媒有限公司</span></p><p><br/></p>', '哈尔滨蓝慕文化传媒有限公司', '哈尔滨蓝慕文化传媒有限公司', '18', '1', '1492669286', '1492669286');
INSERT INTO `mx_product` VALUES ('21', '餐饮ONE个性', 'uploads/20170420/e8d21895a3dbe1fc82ab041b9f5112cf.png', '', '2', '<p><img src=\"/uploads/ueditor/image/20170420/1492669320481783.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;餐饮ONE个性</span></p><p><br/></p>', '', '', '19', '1', '1492669333', '1492669333');
INSERT INTO `mx_product` VALUES ('22', '哈尔滨金石科技教育开发咨询有限公司', 'uploads/20170420/466839e55cda819d615a49af9b30ab0b.png', '', '2', '<p><img src=\"/uploads/ueditor/image/20170420/1492669369611309.jpg\" class=\"img-responsive\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 17.9104px;\"><span class=\"h3\" style=\"box-sizing: border-box; font-size: 24px; font-family: inherit; color: inherit; line-height: 1.1; margin-top: 20px; margin-bottom: 10px;\">&nbsp;&nbsp;哈尔滨金石科技教育开发咨询有限公司</span></p><p><br/></p>', '哈尔滨金石科技教育开发咨询有限公司', '哈尔滨金石科技教育开发咨询有限公司', '20', '1', '1492669383', '1492669383');
INSERT INTO `mx_product` VALUES ('23', '国防观', 'uploads/20170519/f0825a91f25f2b8c2ab9eb4475900619.jpeg', 'a:2:{i:0;a:3:{s:3:\"img\";s:53:\"uploads/20170519/61b43592c03e9ea9d9fd1b3ea06a5d9c.jpg\";s:4:\"info\";s:9:\"时代发\";s:4:\"show\";s:0:\"\";}i:1;a:3:{s:3:\"img\";s:53:\"uploads/20170519/487146f10bd55f0f7256149641627ed8.jpg\";s:4:\"info\";s:12:\"注视对方\";s:4:\"show\";s:0:\"\";}}', '1', '', '', '', '21', '1', '1495186629', '1495186629');

-- ----------------------------
-- Table structure for mx_product_type
-- ----------------------------
DROP TABLE IF EXISTS `mx_product_type`;
CREATE TABLE `mx_product_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '案例分类主键',
  `title` varchar(50) NOT NULL COMMENT '分类名称',
  `intro` varchar(255) NOT NULL COMMENT '描述',
  `orderid` int(10) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='案例分类';

-- ----------------------------
-- Records of mx_product_type
-- ----------------------------
INSERT INTO `mx_product_type` VALUES ('1', '龙采mx创意站', '龙采mx创意站', '1');
INSERT INTO `mx_product_type` VALUES ('2', '龙采mx模板站', '', '2');
INSERT INTO `mx_product_type` VALUES ('3', '龙采smarty站', '', '3');

-- ----------------------------
-- Table structure for mx_resume
-- ----------------------------
DROP TABLE IF EXISTS `mx_resume`;
CREATE TABLE `mx_resume` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '简历管理主键',
  `truename` varchar(55) NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `birth` varchar(20) NOT NULL COMMENT '生日',
  `cardnum` char(18) NOT NULL COMMENT '身份证',
  `married` tinyint(1) NOT NULL COMMENT '婚否',
  `proof` varchar(20) NOT NULL COMMENT '职称/资质',
  `school` varchar(20) NOT NULL COMMENT '毕业院校',
  `major` varchar(20) NOT NULL COMMENT '专业',
  `education` varchar(20) NOT NULL COMMENT '最高学历',
  `address` varchar(20) NOT NULL COMMENT '联系地址',
  `oldhome` varchar(20) NOT NULL COMMENT '籍贯',
  `mobile` char(11) NOT NULL COMMENT '联系电话',
  `job` varchar(20) NOT NULL COMMENT '应聘职位',
  `salary` varchar(20) NOT NULL COMMENT '期望薪资',
  `study` varchar(255) NOT NULL COMMENT '学习经历',
  `work` varchar(255) NOT NULL COMMENT '工作经历',
  `demand` varchar(255) NOT NULL COMMENT '对公要求',
  `hobby` varchar(255) NOT NULL COMMENT '特长爱好',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历管理';

-- ----------------------------
-- Records of mx_resume
-- ----------------------------

-- ----------------------------
-- Table structure for mx_solution
-- ----------------------------
DROP TABLE IF EXISTS `mx_solution`;
CREATE TABLE `mx_solution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '解决方案主键',
  `title` varchar(55) NOT NULL COMMENT '名称',
  `picurl` varchar(55) NOT NULL COMMENT '图片',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='解决方案';

-- ----------------------------
-- Records of mx_solution
-- ----------------------------
INSERT INTO `mx_solution` VALUES ('1', '百度推广', 'uploads/20170420/c5b11d821b29db75ba856c49a6250f70.jpg', '覆盖95%的网民 全球首屈一指的中文搜索引擎', '<p>百度移动搜索推广——让有需求的客户触手可及</p><p><img src=\"http://longcai.com/uploadfile/image/20131224/20131224012513_53324.jpg\"/></p>', '1', '1', '1492653148', '1492671843');
INSERT INTO `mx_solution` VALUES ('2', '百度糯米', 'uploads/20170420/670a399940f3e957587256248c6d07c3.jpg', '每天把最超值的团购消费带到您身边！', '<p><br/></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Microsoft Yahei&#39;, 宋体; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal;\">还窝在家里，做别人眼中的宅男宅女吗？为什么不走出家门去攀岩、去K歌、去享受一顿丰盛的大餐？还在遗憾工作太忙，没时间和死党们欢聚吗？为什么不和闺蜜一起去做个SPA，或者干脆去拍套个性写真？还在纠结口袋里的银子，总觉得做个头发或美甲太贵吗？为什么不找个机会跟朋友们一起团购，杀出个痛快的价格出来？</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Microsoft Yahei&#39;, 宋体; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal;\">我们提供的解决方案是：每天把最超值的团购消费带到您身边！</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Microsoft Yahei&#39;, 宋体; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal;\">百度糯米，致力于通过团购的方式向消费者推荐高折扣的本地精品生活服务。</p><h3 style=\"font-size: 18px; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-style: inherit; font-family: inherit; vertical-align: baseline;\">对于消费者：</h3><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>我们帮您寻找最值得信赖的商家，让您享受到超低折扣的优质服务</p></li><li><p>我们的商家信息不会有任何夸张虚假的成分，我们会保证交易的诚信和安全</p></li><li><p>我们希望帮助你发现最新鲜最有趣的消费方式，不断发现新的惊喜</p></li></ul><h3 style=\"font-size: 18px; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-style: inherit; font-family: inherit; vertical-align: baseline;\">对于商家：</h3><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>我们为您寻找最热爱尝试的消费者，消费能力有所保障</p></li><li><p>我们的推广合作方式零风险，低成本，效果显著</p></li><li><p>我们的推广合作方式对商家的利益会进行最大程度的保障</p></li></ul><h3 style=\"font-size: 18px; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-style: inherit; font-family: inherit; vertical-align: baseline;\">用户帮助</h3><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>如果您付款或消费遇到问题，请联系客服人员：</p></li><li><p>邮箱：<a href=\"mailto:nuomihelp@baidu.com\" style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; text-decoration: none;\">nuomihelp@baidu.com</a></p></li></ul><h3 style=\"font-size: 18px; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-style: inherit; font-family: inherit; vertical-align: baseline;\">商务合作</h3><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>如果您希望在百度糯米组织团购，请在线<a href=\"https://www.nuomi.com/intention\" style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; text-decoration: none;\">提交团购信息</a>。</p></li></ul><p><br/></p>', '1', '2', '1492653370', '1492671862');
INSERT INTO `mx_solution` VALUES ('3', '百度直通车', 'uploads/20170420/ba7e0244f4e0e50f299ea1cf63af6b33.jpg', '本地直通车直通周边好生意', '<p><img src=\"http://longcai.com/templates/default/images/images/1.png\" width=\"71\" height=\"71\" style=\"border: 0px; vertical-align: bottom; margin-right: 15px;\"/>本地直通车是什么？</p><p>　　本地直通车，是百度推出的帮助本地服务商家高效获取客户、提高营业收入的一种新型推广方式。通过百度推广与“手机百度”、“百度地图”“百度糯米”三大应用推荐展示的方式，将商家信息精准地推广给周边有相应需求的客户，促使客户以在线支付、到店付等方式完成交易，最终达到帮助商家开拓生意的效果。</p><p><img src=\"http://longcai.com/templates/default/images/images/pic2.png\" width=\"641\" height=\"514\" style=\"border: 0px; vertical-align: bottom;\"/></p><p><img src=\"http://longcai.com/templates/default/images/images/2.png\" width=\"71\" height=\"71\" style=\"border: 0px; vertical-align: bottom; margin-right: 15px;\"/>本地直通车，让本地生活服务生意更好做！</p><p><img src=\"http://longcai.com/templates/default/images/images/pic3.png\" width=\"1199\" height=\"417\" style=\"border: 0px; vertical-align: bottom;\"/></p><p><img src=\"http://longcai.com/templates/default/images/images/3.png\" width=\"71\" height=\"71\" style=\"border: 0px; vertical-align: bottom; margin-right: 15px;\"/>四大优势，让周边客户足不出户找到你！</p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><a href=\"http://longcai.com/bdtg.php?lanmu=5&cid=51&id=409#\" style=\"text-decoration: none; color: rgb(255, 255, 255); background-color: transparent;\"><img src=\"http://longcai.com/templates/default/images/images/li1.jpg\" width=\"590\" height=\"373\" style=\"border: 0px; vertical-align: bottom;\"/></a></p></li><li><p><a href=\"http://longcai.com/bdtg.php?lanmu=5&cid=51&id=409#\" style=\"text-decoration: none; color: rgb(255, 255, 255); background-color: transparent;\"><img src=\"http://longcai.com/templates/default/images/images/li2.jpg\" width=\"590\" height=\"373\" style=\"border: 0px; vertical-align: bottom;\"/></a></p></li><li><p><a href=\"http://longcai.com/bdtg.php?lanmu=5&cid=51&id=409#\" style=\"text-decoration: none; color: rgb(255, 255, 255); background-color: transparent;\"><img src=\"http://longcai.com/templates/default/images/images/li3.jpg\" width=\"590\" height=\"373\" style=\"border: 0px; vertical-align: bottom;\"/></a></p></li><li><p><a href=\"http://longcai.com/bdtg.php?lanmu=5&cid=51&id=409#\" style=\"text-decoration: none; color: rgb(255, 255, 255); background-color: transparent;\"><img src=\"http://longcai.com/templates/default/images/images/li4.jpg\" width=\"590\" height=\"373\" style=\"border: 0px; vertical-align: bottom;\"/></a></p></li></ul><p><br/></p>', '1', '3', '1492653464', '1492671905');
INSERT INTO `mx_solution` VALUES ('4', '网站建设', 'uploads/20170420/9505a5046cf80f2c21bd48adb4abc801.jpg', '想你所想 创意无限', '<p><span class=\"text2\" style=\"color: rgb(30, 30, 30); font-size: 40px; line-height: 70px;\">什么是好网站?</span><br/><span class=\"text1\" style=\"color: rgb(125, 125, 125); font-size: 28px;\">做网站就好比开商铺做生意,旺铺才能<span style=\"color: rgb(186, 0, 1);\">赚钱</span></span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><span class=\"text3\" style=\"color: rgb(2, 81, 150); font-size: 40px; font-weight: bold;\">旺铺</span><span class=\"text4\" style=\"color: rgb(0, 0, 0); font-size: 20px; font-weight: bold;\">需要具备的条件</span></p></li><li><p>你需要一个商铺</p></li><li><p>这个商铺要看着舒服</p></li><li><p>商铺要选个好地段</p></li><li><p>吸引顾客上门</p></li><li><p>需要一个热情的售货员</p></li><li><p>商品维护方便</p></li><li><p><span class=\"text5\" style=\"color: rgb(197, 1, 0); font-size: 40px; font-weight: bold;\">好网站</span><span class=\"text4\" style=\"color: rgb(0, 0, 0); font-size: 20px; font-weight: bold;\">需要具备的条件</span></p></li><li><p>一个好的网站平台</p></li><li><p>网站需要设计美观、大气</p></li><li><p>选优质的流量平台</p></li><li><p>在平台投放广告</p></li><li><p>咨询工具</p></li><li><p>网站便于操作</p></li></ul><p><span class=\"text7\" style=\"color: rgb(30, 30, 30); font-size: 40px; line-height: 80px;\">如何留住客户?</span><br/><span class=\"text6\" style=\"color: rgb(125, 125, 125); font-size: 27px;\">龙采MX营销型网站，以客户需求和购买欲为导向，迎合消费者的网站，才能成为<span style=\"color: rgb(186, 0, 1);\">赚钱</span>的网站！</span></p><p>龙采MX营销型网站案例</p><p><img src=\"http://www.longcai.com/templates/default/mx/images/pic2.jpg\" width=\"426\" height=\"583\" style=\"border: 0px; vertical-align: bottom;\"/></p><p><img src=\"http://www.longcai.com/templates/default/mx/images/t2.png\" style=\"border: 0px; vertical-align: bottom;\"/></p><p>传统型网站案例</p><p><img src=\"http://www.longcai.com/templates/default/mx/images/pic3.jpg\" width=\"422\" height=\"365\" style=\"border: 0px; vertical-align: bottom;\"/></p><p>对比分析总结：</p><p>龙采MX营销型网站</p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>1.企业实力一目了然</p></li><li><p>2.品牌形象大幅提升</p></li><li><p>3.产品优势完美呈现</p></li><li><p>4.客户咨询意愿增强</p></li></ul><p>传统型网站</p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>1.未体现企业实力</p></li><li><p>2.品牌形象受损</p></li><li><p>3.客户信任度降低</p></li><li><p>4.带不来销售订单</p></li></ul><p><span class=\"text14\" style=\"color: rgb(197, 2, 0); font-size: 30px; font-weight: bold; padding: 5px 0px 0px;\">数据说明一切！</span><br/><span class=\"text15\" style=\"color: rgb(89, 89, 89); font-size: 14px; line-height: 30px;\">数据来源，百度统计，站长统计</span></p><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr style=\"color: rgb(255, 255, 255); background: rgb(89, 89, 89);\" class=\"firstRow\"><td width=\"2%\" height=\"28\" style=\"margin: 0px; padding: 0px;\"><br/></td><td width=\"17%\" style=\"margin: 0px; padding: 0px;\">状态</td><td width=\"20%\" style=\"margin: 0px; padding: 0px;\">点击量</td><td width=\"20%\" style=\"margin: 0px; padding: 0px;\">浏览量</td><td width=\"20%\" style=\"margin: 0px; padding: 0px;\">跳出率</td><td width=\"21%\" style=\"margin: 0px; padding: 0px;\">访问时长</td></tr><tr style=\"color: rgb(125, 125, 125);\"><td height=\"33\" style=\"margin: 0px; padding: 0px;\"><br/></td><td style=\"margin: 0px; padding: 0px;\">改版前</td><td style=\"margin: 0px; padding: 0px;\">212</td><td style=\"margin: 0px; padding: 0px;\">156</td><td style=\"margin: 0px; padding: 0px;\">74.33%</td><td style=\"margin: 0px; padding: 0px;\">00:00:51</td></tr><tr style=\"color: rgb(216, 2, 0);\"><td height=\"33\" style=\"margin: 0px; padding: 0px;\"><br/></td><td style=\"margin: 0px; padding: 0px;\">改版后</td><td style=\"margin: 0px; padding: 0px;\">315</td><td style=\"margin: 0px; padding: 0px;\">227</td><td style=\"margin: 0px; padding: 0px;\">45.15%</td><td style=\"margin: 0px; padding: 0px;\">00:02:26</td></tr></tbody></table><p><span class=\"text7\" style=\"color: rgb(30, 30, 30); font-size: 40px; line-height: 80px;\">如何保证质量?</span><br/><span class=\"text6\" style=\"color: rgb(125, 125, 125); font-size: 27px;\">注重每个细节的高品质网站，才能成为<span style=\"color: rgb(186, 0, 1);\">赚钱</span>的网站</span></p><p><span class=\"mx_fl text18\" style=\"float: left; font-size: 120px; font-style: italic; line-height: 120px;\">28</span></p><p><span class=\"text19\" style=\"font-size: 32px; line-height: 35px;\">项严苛的技术标准</span><br/><span class=\"text20\" style=\"font-size: 14px; line-height: 35px;\">28 STRINGENT TECHNICAL STANDARDS</span></p><p><span class=\"text16\" style=\"color: rgb(92, 92, 92); font-size: 20px; line-height: 54px;\">11年专业建站经验<br/>6万余家客户服务经验<br/>率先通过ISO9001认证的网建企业</span></p><p><span class=\"mx_fr\" style=\"float: right;\"><img src=\"http://www.longcai.com/templates/default/mx/images/t3.png\" width=\"619\" height=\"452\" style=\"border: 0px; vertical-align: bottom;\"/></span></p><p><br/></p>', '1', '4', '1492671971', '1492671971');
INSERT INTO `mx_solution` VALUES ('5', 'APP开发', 'uploads/20170420/5fc72c7f3c5641f43a48b7d1dcb3f7c0.jpg', '抢占入口 抢占先机', '<p><br/></p><h3 style=\"margin: 0px; padding: 0px; font-family: inherit; font-weight: normal; line-height: 44px; color: rgb(4, 0, 0); font-size: 30px;\">无数企业和个人已经受惠于APP客户端</h3><p>双十一当天，淘宝、京东APP客户端使用占比40%以上，去哪儿交易量50%以上来源于APP客户端</p><p><img src=\"http://www.longcai.com/templates/default/images2/morecase.jpg\" height=\"262\" width=\"1192\" style=\"border: 0px; vertical-align: middle;\"/></p><p><br/></p>', '1', '5', '1492672052', '1492672110');
INSERT INTO `mx_solution` VALUES ('6', '微信营销', 'uploads/20170420/71569dbc179d7edeb8ca1125d284df78.jpg', '灵活多变的微网站，多种互动功能', '<p><img src=\"/uploads/ueditor/image/20170420/1492672162265333.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><h1 style=\"font-family: inherit; margin: 0.67em 0px; padding: 0px; color: inherit; font-size: 36px; font-weight: 500; line-height: 1.1;\">完善的电商系统</h1><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px;\">1、拖拽模板制作，打造您的百变微店<br/>2、一元夺宝、砍价、秒杀多种新颖电销模式<br/>3、微信支付、银联支付等多种支付方式支持<br/>4、分佣分销系统让您无渠道之忧</p><p><img src=\"/uploads/ueditor/image/20170420/1492672163386640.jpg\" class=\"y abs\" style=\"border: 0px; vertical-align: middle; position: absolute; left: 0px; bottom: 30px;\"/></p><h1 style=\"font-family: inherit; margin: 0.67em 0px; padding: 0px; color: inherit; font-size: 36px; font-weight: 500; line-height: 1.1;\">完善的电商系统</h1><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px;\">近400个模板供选择、无限级分类，分类自定义模板、微信排版..... 丰富精美的模板，提供更多组合，打造商家个性风格</p><p><img src=\"/uploads/ueditor/image/20170420/1492672165127425.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"http://www.longcai.com/templates/default/weixinyingxiao/images/w_15.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><h1 style=\"font-family: inherit; margin: 0.67em 0px; padding: 0px; color: inherit; font-size: 36px; font-weight: 500; line-height: 1.1;\">多种互动功能</h1><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px;\">留言、论坛、邀请函、分享激励、预约、万能表单等多种互动应用 让商户与粉丝无障碍沟通</p><p><img src=\"/uploads/ueditor/image/20170420/1492672168778617.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><h1 style=\"font-family: inherit; margin: 0.67em 0px; padding: 0px; color: inherit; font-size: 36px; font-weight: 500; line-height: 1.1;\">LBS连锁功能</h1><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px;\">分店独立管理权限，支持LBS定位让粉丝轻松找到商家 为拥有众多门店商户提供了完善的解决方案</p><p><img src=\"/uploads/ueditor/image/20170420/1492672169113027.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"/uploads/ueditor/image/20170420/1492672170121306.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><h1 style=\"font-family: inherit; margin: 0.67em 0px; padding: 0px; color: inherit; font-size: 36px; font-weight: 500; line-height: 1.1;\">贴心的行业应用</h1><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px;\">近30个行业解决方案，引领微信营销新风向 解决不同行业深度需求，落地多行业“互联网+”成熟方案</p><div class=\"section\" style=\"font-family: 微软雅黑; padding: 35px 0px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: rgb(181, 181, 181); color: rgb(64, 64, 64); font-size: 12px; line-height: 17.1429px; white-space: normal; background-color: rgb(255, 255, 255);\"></div><p><br/></p>', '1', '6', '1492672171', '1492672171');

-- ----------------------------
-- Table structure for mx_test
-- ----------------------------
DROP TABLE IF EXISTS `mx_test`;
CREATE TABLE `mx_test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '测试2组主键',
  `title` varchar(255) NOT NULL COMMENT 'title',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='测试2组';

-- ----------------------------
-- Records of mx_test
-- ----------------------------
INSERT INTO `mx_test` VALUES ('1', '的风格的风格', '0', '1', '1495185354', '1495185362');

-- ----------------------------
-- Table structure for mx_test_admin
-- ----------------------------
DROP TABLE IF EXISTS `mx_test_admin`;
CREATE TABLE `mx_test_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '测试管理主键',
  `username` varchar(25) NOT NULL COMMENT '姓名',
  `picurl` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `intro` varchar(255) NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '编辑器',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='测试管理';

-- ----------------------------
-- Records of mx_test_admin
-- ----------------------------
INSERT INTO `mx_test_admin` VALUES ('1', '马淑霞', 'uploads/20170519/f5ef6aa413424678df70ad585a127101.jpg', '2', '个风格的风格的覆盖', '', '2017', '1495185254', '1495185254');

-- ----------------------------
-- Table structure for mx_user
-- ----------------------------
DROP TABLE IF EXISTS `mx_user`;
CREATE TABLE `mx_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户管理主键',
  `username` varchar(30) NOT NULL COMMENT '姓名',
  `password` char(32) NOT NULL,
  `truename` varchar(20) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1男2女',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `prov` char(6) NOT NULL DEFAULT '0' COMMENT '省',
  `city` char(6) NOT NULL DEFAULT '0' COMMENT '市',
  `area` char(6) NOT NULL DEFAULT '0' COMMENT '区',
  `address` varchar(50) DEFAULT NULL COMMENT '详细地址',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户管理';

-- ----------------------------
-- Records of mx_user
-- ----------------------------
INSERT INTO `mx_user` VALUES ('1', '18846938242', '14e1b600b1fd579f47433b88e8d85291', '马淑霞了', '18846938242', '1', '18846938242@163.com', '130000', '130200', '130201', '', '1492495142', '1495185834', '1');

-- ----------------------------
-- Table structure for mx_webconfig
-- ----------------------------
DROP TABLE IF EXISTS `mx_webconfig`;
CREATE TABLE `mx_webconfig` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL COMMENT '变量名称',
  `varinfo` varchar(80) NOT NULL COMMENT '参数说明',
  `vargroup` smallint(5) unsigned NOT NULL COMMENT '所属组',
  `vartype` char(10) NOT NULL COMMENT '变量类型',
  `varvalue` text NOT NULL COMMENT '变量值',
  `orderid` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mx_webconfig
-- ----------------------------
INSERT INTO `mx_webconfig` VALUES ('1', 'web_name', '网站名称', '2', 'text', 'MX营销平台', '1');
INSERT INTO `mx_webconfig` VALUES ('2', 'web_url', '网站地址', '2', 'text', 'http://www.longcai.com', '5');
INSERT INTO `mx_webconfig` VALUES ('3', 'web_author', '网站作者', '2', 'text', '马淑霞', '2');
INSERT INTO `mx_webconfig` VALUES ('4', 'web_description', '网站描述', '2', 'textarea', 'Mx营销平台', '3');
INSERT INTO `mx_webconfig` VALUES ('5', 'web_hotline', '热线电话', '3', 'text', '400-622-8811', '1');
INSERT INTO `mx_webconfig` VALUES ('6', 'web_hotline_more', '热线描述', '3', 'text', '周一~周五,8:00 - 18:00', '2');
INSERT INTO `mx_webconfig` VALUES ('7', 'web_email', '公司邮箱', '4', 'text', 'service@longcai.com', '9');
INSERT INTO `mx_webconfig` VALUES ('8', 'web_email_more', '邮箱描述', '4', 'text', '随时欢迎您的来信！', '8');
INSERT INTO `mx_webconfig` VALUES ('9', 'web_address', '公司地址', '5', 'text', '银行大厦', '12');
INSERT INTO `mx_webconfig` VALUES ('10', 'web_address_more', '地址描述', '5', 'text', '哈尔滨西八道街2号', '11');
INSERT INTO `mx_webconfig` VALUES ('11', 'web_company', '公司简介', '2', 'textarea', '龙采科技集团是集网站建设、网络推广、网络工程建设、软件开发为主营业务的高新技术企业。\n公司以科技为发展之本，在管理与技术领域中大力发掘培养技术精英，为企业的持续快速发展提供强有力的技术后备队伍。', '4');
INSERT INTO `mx_webconfig` VALUES ('12', 'web_treatment', '福利待遇', '5', 'textarea', '哈市行业内中高薪酬。<br/>\n1、五险一金+具有竞争力的薪酬体系；<br/>\n2、年终奖；<br/>\n3、节假日慰问及员工生日慰问；<br/>\n5、固定工时制（五天八小时）；', '7');
INSERT INTO `mx_webconfig` VALUES ('13', 'web_logo', '网站logo', '2', 'image', 'uploads/20170518/c317c34e3cf0fb180d37a1b9d60e8edf.png', '6');
INSERT INTO `mx_webconfig` VALUES ('14', 'web_qrcode', '二维码', '2', 'image', 'uploads/20170519/afbf7487821c8ec1b21740c41336c37e.jpg', '7');
INSERT INTO `mx_webconfig` VALUES ('15', 'web_isthumb', '开启缩略图 ', '6', 'select', 'Y', '1');
INSERT INTO `mx_webconfig` VALUES ('16', 'web_thumb_width', '缩略图尺寸宽', '6', 'text', '600', '2');
INSERT INTO `mx_webconfig` VALUES ('17', 'web_thumb_height', '缩略图尺寸高', '6', 'text', '600', '3');
INSERT INTO `mx_webconfig` VALUES ('18', 'web_thumb_ext', '上传图片后缀', '6', 'text', 'jpg,png,jpeg,gif', '4');
INSERT INTO `mx_webconfig` VALUES ('19', 'web_thumb_size', '上传文件大小', '6', 'text', '2097152', '5');

-- ----------------------------
-- Table structure for mx_webtype
-- ----------------------------
DROP TABLE IF EXISTS `mx_webtype`;
CREATE TABLE `mx_webtype` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `orderid` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mx_webtype
-- ----------------------------
INSERT INTO `mx_webtype` VALUES ('1', '新增变量', '6');
INSERT INTO `mx_webtype` VALUES ('2', '网站设置1', '1');
INSERT INTO `mx_webtype` VALUES ('3', '热线设置', '2');
INSERT INTO `mx_webtype` VALUES ('4', '邮箱设置', '4');
INSERT INTO `mx_webtype` VALUES ('5', '地址设置', '3');
INSERT INTO `mx_webtype` VALUES ('6', '图片设置', '5');
