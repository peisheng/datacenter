/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : todaystart

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2016-01-14 00:36:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `Id` int(11) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '北京', '北京', '直辖市');
INSERT INTO `city` VALUES ('2', '天津', '天津', '直辖市');
INSERT INTO `city` VALUES ('3', '上海', '上海', '直辖市');
INSERT INTO `city` VALUES ('4', '重庆', '重庆', '直辖市');
INSERT INTO `city` VALUES ('5', '安徽省', '合肥', '地级市');
INSERT INTO `city` VALUES ('6', '安徽省', '宿州', '地级市');
INSERT INTO `city` VALUES ('7', '安徽省', '淮北', '地级市');
INSERT INTO `city` VALUES ('8', '安徽省', '阜阳', '地级市');
INSERT INTO `city` VALUES ('9', '安徽省', '蚌埠', '地级市');
INSERT INTO `city` VALUES ('10', '安徽省', '淮南', '地级市');
INSERT INTO `city` VALUES ('11', '安徽省', '滁州', '地级市');
INSERT INTO `city` VALUES ('12', '安徽省', '马鞍山', '地级市');
INSERT INTO `city` VALUES ('13', '安徽省', '芜湖', '地级市');
INSERT INTO `city` VALUES ('14', '安徽省', '铜陵', '地级市');
INSERT INTO `city` VALUES ('15', '安徽省', '安庆', '地级市');
INSERT INTO `city` VALUES ('16', '安徽省', '黄山', '地级市');
INSERT INTO `city` VALUES ('17', '安徽省', '六安', '地级市');
INSERT INTO `city` VALUES ('18', '安徽省', '池州', '地级市');
INSERT INTO `city` VALUES ('19', '安徽省', '宣城', '地级市');
INSERT INTO `city` VALUES ('20', '安徽省', '亳州', '地级市');
INSERT INTO `city` VALUES ('21', '安徽省', '界首', '县级市');
INSERT INTO `city` VALUES ('22', '安徽省', '明光', '县级市');
INSERT INTO `city` VALUES ('23', '安徽省', '天长', '县级市');
INSERT INTO `city` VALUES ('24', '安徽省', '桐城', '县级市');
INSERT INTO `city` VALUES ('25', '安徽省', '宁国', '县级市');
INSERT INTO `city` VALUES ('26', '安徽省', '巢湖', '县级市');
INSERT INTO `city` VALUES ('27', '福建省', '厦门', '副省级城市');
INSERT INTO `city` VALUES ('28', '福建省', '福州', '地级市');
INSERT INTO `city` VALUES ('29', '福建省', '南平', '地级市');
INSERT INTO `city` VALUES ('30', '福建省', '三明', '地级市');
INSERT INTO `city` VALUES ('31', '福建省', '莆田', '地级市');
INSERT INTO `city` VALUES ('32', '福建省', '泉州', '地级市');
INSERT INTO `city` VALUES ('33', '福建省', '漳州', '地级市');
INSERT INTO `city` VALUES ('34', '福建省', '龙岩', '地级市');
INSERT INTO `city` VALUES ('35', '福建省', '宁德', '地级市');
INSERT INTO `city` VALUES ('36', '福建省', '福清', '县级市');
INSERT INTO `city` VALUES ('37', '福建省', '长乐', '县级市');
INSERT INTO `city` VALUES ('38', '福建省', '邵武', '县级市');
INSERT INTO `city` VALUES ('39', '福建省', '武夷山', '县级市');
INSERT INTO `city` VALUES ('40', '福建省', '建瓯', '县级市');
INSERT INTO `city` VALUES ('41', '福建省', '建阳', '县级市');
INSERT INTO `city` VALUES ('42', '福建省', '永安', '县级市');
INSERT INTO `city` VALUES ('43', '福建省', '石狮', '县级市');
INSERT INTO `city` VALUES ('44', '福建省', '晋江', '县级市');
INSERT INTO `city` VALUES ('45', '福建省', '南安', '县级市');
INSERT INTO `city` VALUES ('46', '福建省', '龙海', '县级市');
INSERT INTO `city` VALUES ('47', '福建省', '漳平', '县级市');
INSERT INTO `city` VALUES ('48', '福建省', '福安', '县级市');
INSERT INTO `city` VALUES ('49', '福建省', '福鼎', '县级市');
INSERT INTO `city` VALUES ('50', '甘肃省', '兰州', '地级市');
INSERT INTO `city` VALUES ('51', '甘肃省', '嘉峪关', '地级市');
INSERT INTO `city` VALUES ('52', '甘肃省', '金昌', '地级市');
INSERT INTO `city` VALUES ('53', '甘肃省', '白银', '地级市');
INSERT INTO `city` VALUES ('54', '甘肃省', '天水', '地级市');
INSERT INTO `city` VALUES ('55', '甘肃省', '酒泉', '地级市');
INSERT INTO `city` VALUES ('56', '甘肃省', '张掖', '地级市');
INSERT INTO `city` VALUES ('57', '甘肃省', '武威', '地级市');
INSERT INTO `city` VALUES ('58', '甘肃省', '庆阳', '地级市');
INSERT INTO `city` VALUES ('59', '甘肃省', '平凉', '地级市');
INSERT INTO `city` VALUES ('60', '甘肃省', '定西', '地级市');
INSERT INTO `city` VALUES ('61', '甘肃省', '陇南', '地级市');
INSERT INTO `city` VALUES ('62', '甘肃省', '玉门', '县级市');
INSERT INTO `city` VALUES ('63', '甘肃省', '敦煌', '县级市');
INSERT INTO `city` VALUES ('64', '甘肃省', '临夏', '县级市');
INSERT INTO `city` VALUES ('65', '甘肃省', '合作', '县级市');
INSERT INTO `city` VALUES ('66', '广东省', '广州', '副省级城市');
INSERT INTO `city` VALUES ('67', '广东省', '深圳', '副省级城市');
INSERT INTO `city` VALUES ('68', '广东省', '清远', '地级市');
INSERT INTO `city` VALUES ('69', '广东省', '韶关', '地级市');
INSERT INTO `city` VALUES ('70', '广东省', '河源', '地级市');
INSERT INTO `city` VALUES ('71', '广东省', '梅州', '地级市');
INSERT INTO `city` VALUES ('72', '广东省', '潮州', '地级市');
INSERT INTO `city` VALUES ('73', '广东省', '汕头', '地级市');
INSERT INTO `city` VALUES ('74', '广东省', '揭阳', '地级市');
INSERT INTO `city` VALUES ('75', '广东省', '汕尾', '地级市');
INSERT INTO `city` VALUES ('76', '广东省', '惠州', '地级市');
INSERT INTO `city` VALUES ('77', '广东省', '东莞', '地级市');
INSERT INTO `city` VALUES ('78', '广东省', '珠海', '地级市');
INSERT INTO `city` VALUES ('79', '广东省', '中山', '地级市');
INSERT INTO `city` VALUES ('80', '广东省', '江门', '地级市');
INSERT INTO `city` VALUES ('81', '广东省', '佛山', '地级市');
INSERT INTO `city` VALUES ('82', '广东省', '肇庆', '地级市');
INSERT INTO `city` VALUES ('83', '广东省', '云浮', '地级市');
INSERT INTO `city` VALUES ('84', '广东省', '阳江', '地级市');
INSERT INTO `city` VALUES ('85', '广东省', '茂名', '地级市');
INSERT INTO `city` VALUES ('86', '广东省', '湛江', '地级市');
INSERT INTO `city` VALUES ('87', '广东省', '从化', '县级市');
INSERT INTO `city` VALUES ('88', '广东省', '增城', '县级市');
INSERT INTO `city` VALUES ('89', '广东省', '英德', '县级市');
INSERT INTO `city` VALUES ('90', '广东省', '连州', '县级市');
INSERT INTO `city` VALUES ('91', '广东省', '乐昌', '县级市');
INSERT INTO `city` VALUES ('92', '广东省', '南雄', '县级市');
INSERT INTO `city` VALUES ('93', '广东省', '兴宁', '县级市');
INSERT INTO `city` VALUES ('94', '广东省', '普宁', '县级市');
INSERT INTO `city` VALUES ('95', '广东省', '陆丰', '县级市');
INSERT INTO `city` VALUES ('96', '广东省', '恩平', '县级市');
INSERT INTO `city` VALUES ('97', '广东省', '台山', '县级市');
INSERT INTO `city` VALUES ('98', '广东省', '开平', '县级市');
INSERT INTO `city` VALUES ('99', '广东省', '鹤山', '县级市');
INSERT INTO `city` VALUES ('100', '广东省', '高要', '县级市');
INSERT INTO `city` VALUES ('101', '广东省', '四会', '县级市');
INSERT INTO `city` VALUES ('102', '广东省', '罗定', '县级市');
INSERT INTO `city` VALUES ('103', '广东省', '阳春', '县级市');
INSERT INTO `city` VALUES ('104', '广东省', '化州', '县级市');
INSERT INTO `city` VALUES ('105', '广东省', '信宜', '县级市');
INSERT INTO `city` VALUES ('106', '广东省', '高州', '县级市');
INSERT INTO `city` VALUES ('107', '广东省', '吴川', '县级市');
INSERT INTO `city` VALUES ('108', '广东省', '廉江', '县级市');
INSERT INTO `city` VALUES ('109', '广东省', '雷州', '县级市');
INSERT INTO `city` VALUES ('110', '贵州省', '贵阳', '地级市');
INSERT INTO `city` VALUES ('111', '贵州省', '六盘水', '地级市');
INSERT INTO `city` VALUES ('112', '贵州省', '遵义', '地级市');
INSERT INTO `city` VALUES ('113', '贵州省', '安顺', '地级市');
INSERT INTO `city` VALUES ('114', '贵州省', '毕节', '地级市');
INSERT INTO `city` VALUES ('115', '贵州省', '铜仁', '地级市');
INSERT INTO `city` VALUES ('116', '贵州省', '清镇', '县级市');
INSERT INTO `city` VALUES ('117', '贵州省', '赤水', '县级市');
INSERT INTO `city` VALUES ('118', '贵州省', '仁怀', '县级市');
INSERT INTO `city` VALUES ('119', '贵州省', '凯里', '县级市');
INSERT INTO `city` VALUES ('120', '贵州省', '都匀', '县级市');
INSERT INTO `city` VALUES ('121', '贵州省', '兴义', '县级市');
INSERT INTO `city` VALUES ('122', '贵州省', '福泉', '县级市');
INSERT INTO `city` VALUES ('123', '河北省', '石家庄', '地级市');
INSERT INTO `city` VALUES ('124', '河北省', '邯郸', '地级市');
INSERT INTO `city` VALUES ('125', '河北省', '唐山', '地级市');
INSERT INTO `city` VALUES ('126', '河北省', '保定', '地级市');
INSERT INTO `city` VALUES ('127', '河北省', '秦皇岛', '地级市');
INSERT INTO `city` VALUES ('128', '河北省', '邢台', '地级市');
INSERT INTO `city` VALUES ('129', '河北省', '张家口', '地级市');
INSERT INTO `city` VALUES ('130', '河北省', '承德', '地级市');
INSERT INTO `city` VALUES ('131', '河北省', '沧州', '地级市');
INSERT INTO `city` VALUES ('132', '河北省', '廊坊', '地级市');
INSERT INTO `city` VALUES ('133', '河北省', '衡水', '地级市');
INSERT INTO `city` VALUES ('134', '河北省', '辛集', '县级市');
INSERT INTO `city` VALUES ('135', '河北省', '藁城', '县级市');
INSERT INTO `city` VALUES ('136', '河北省', '晋州', '县级市');
INSERT INTO `city` VALUES ('137', '河北省', '新乐', '县级市');
INSERT INTO `city` VALUES ('138', '河北省', '鹿泉', '县级市');
INSERT INTO `city` VALUES ('139', '河北省', '遵化', '县级市');
INSERT INTO `city` VALUES ('140', '河北省', '迁安', '县级市');
INSERT INTO `city` VALUES ('141', '河北省', '霸州', '县级市');
INSERT INTO `city` VALUES ('142', '河北省', '三河', '县级市');
INSERT INTO `city` VALUES ('143', '河北省', '定州', '县级市');
INSERT INTO `city` VALUES ('144', '河北省', '涿州', '县级市');
INSERT INTO `city` VALUES ('145', '河北省', '安国', '县级市');
INSERT INTO `city` VALUES ('146', '河北省', '高碑店', '县级市');
INSERT INTO `city` VALUES ('147', '河北省', '泊头', '县级市');
INSERT INTO `city` VALUES ('148', '河北省', '任丘', '县级市');
INSERT INTO `city` VALUES ('149', '河北省', '黄骅', '县级市');
INSERT INTO `city` VALUES ('150', '河北省', '河间', '县级市');
INSERT INTO `city` VALUES ('151', '河北省', '冀州', '县级市');
INSERT INTO `city` VALUES ('152', '河北省', '深州', '县级市');
INSERT INTO `city` VALUES ('153', '河北省', '南宫', '县级市');
INSERT INTO `city` VALUES ('154', '河北省', '沙河', '县级市');
INSERT INTO `city` VALUES ('155', '河北省', '武安', '县级市');
INSERT INTO `city` VALUES ('156', '黑龙江省', '哈尔滨', '副省级城市');
INSERT INTO `city` VALUES ('157', '黑龙江省', '齐齐哈尔', '地级市');
INSERT INTO `city` VALUES ('158', '黑龙江省', '黑河', '地级市');
INSERT INTO `city` VALUES ('159', '黑龙江省', '大庆', '地级市');
INSERT INTO `city` VALUES ('160', '黑龙江省', '伊春', '地级市');
INSERT INTO `city` VALUES ('161', '黑龙江省', '鹤岗', '地级市');
INSERT INTO `city` VALUES ('162', '黑龙江省', '佳木斯', '地级市');
INSERT INTO `city` VALUES ('163', '黑龙江省', '双鸭山', '地级市');
INSERT INTO `city` VALUES ('164', '黑龙江省', '七台河', '地级市');
INSERT INTO `city` VALUES ('165', '黑龙江省', '鸡西', '地级市');
INSERT INTO `city` VALUES ('166', '黑龙江省', '牡丹江', '地级市');
INSERT INTO `city` VALUES ('167', '黑龙江省', '绥化', '地级市');
INSERT INTO `city` VALUES ('168', '黑龙江省', '双城', '县级市');
INSERT INTO `city` VALUES ('169', '黑龙江省', '尚志', '县级市');
INSERT INTO `city` VALUES ('170', '黑龙江省', '五常', '县级市');
INSERT INTO `city` VALUES ('171', '黑龙江省', '阿城', '县级市');
INSERT INTO `city` VALUES ('172', '黑龙江省', '讷河', '县级市');
INSERT INTO `city` VALUES ('173', '黑龙江省', '北安', '县级市');
INSERT INTO `city` VALUES ('174', '黑龙江省', '五大连池', '县级市');
INSERT INTO `city` VALUES ('175', '黑龙江省', '铁力', '县级市');
INSERT INTO `city` VALUES ('176', '黑龙江省', '同江', '县级市');
INSERT INTO `city` VALUES ('177', '黑龙江省', '富锦', '县级市');
INSERT INTO `city` VALUES ('178', '黑龙江省', '虎林', '县级市');
INSERT INTO `city` VALUES ('179', '黑龙江省', '密山', '县级市');
INSERT INTO `city` VALUES ('180', '黑龙江省', '绥芬河', '县级市');
INSERT INTO `city` VALUES ('181', '黑龙江省', '海林', '县级市');
INSERT INTO `city` VALUES ('182', '黑龙江省', '宁安', '县级市');
INSERT INTO `city` VALUES ('183', '黑龙江省', '安达', '县级市');
INSERT INTO `city` VALUES ('184', '黑龙江省', '肇东', '县级市');
INSERT INTO `city` VALUES ('185', '黑龙江省', '海伦', '县级市');
INSERT INTO `city` VALUES ('186', '河南省', '郑州', '地级市');
INSERT INTO `city` VALUES ('187', '河南省', '开封', '地级市');
INSERT INTO `city` VALUES ('188', '河南省', '洛阳', '地级市');
INSERT INTO `city` VALUES ('189', '河南省', '平顶山', '地级市');
INSERT INTO `city` VALUES ('190', '河南省', '安阳', '地级市');
INSERT INTO `city` VALUES ('191', '河南省', '鹤壁', '地级市');
INSERT INTO `city` VALUES ('192', '河南省', '新乡', '地级市');
INSERT INTO `city` VALUES ('193', '河南省', '焦作', '地级市');
INSERT INTO `city` VALUES ('194', '河南省', '濮阳', '地级市');
INSERT INTO `city` VALUES ('195', '河南省', '许昌', '地级市');
INSERT INTO `city` VALUES ('196', '河南省', '漯河', '地级市');
INSERT INTO `city` VALUES ('197', '河南省', '三门峡', '地级市');
INSERT INTO `city` VALUES ('198', '河南省', '南阳', '地级市');
INSERT INTO `city` VALUES ('199', '河南省', '商丘', '地级市');
INSERT INTO `city` VALUES ('200', '河南省', '周口', '地级市');
INSERT INTO `city` VALUES ('201', '河南省', '驻马店', '地级市');
INSERT INTO `city` VALUES ('202', '河南省', '信阳', '地级市');
INSERT INTO `city` VALUES ('203', '河南省', '济源', '省直辖县级市');
INSERT INTO `city` VALUES ('204', '河南省', '巩义', '省直辖县级市');
INSERT INTO `city` VALUES ('205', '河南省', '邓州', '省直辖县级市');
INSERT INTO `city` VALUES ('206', '河南省', '永城', '省直辖县级市');
INSERT INTO `city` VALUES ('207', '河南省', '汝州', '省直辖县级市');
INSERT INTO `city` VALUES ('208', '河南省', '荥阳', '县级市');
INSERT INTO `city` VALUES ('209', '河南省', '新郑', '县级市');
INSERT INTO `city` VALUES ('210', '河南省', '登封', '县级市');
INSERT INTO `city` VALUES ('211', '河南省', '新密', '县级市');
INSERT INTO `city` VALUES ('212', '河南省', '偃师', '县级市');
INSERT INTO `city` VALUES ('213', '河南省', '孟州', '县级市');
INSERT INTO `city` VALUES ('214', '河南省', '沁阳', '县级市');
INSERT INTO `city` VALUES ('215', '河南省', '卫辉', '县级市');
INSERT INTO `city` VALUES ('216', '河南省', '辉县', '县级市');
INSERT INTO `city` VALUES ('217', '河南省', '林州', '县级市');
INSERT INTO `city` VALUES ('218', '河南省', '禹州', '县级市');
INSERT INTO `city` VALUES ('219', '河南省', '长葛', '县级市');
INSERT INTO `city` VALUES ('220', '河南省', '舞钢', '县级市');
INSERT INTO `city` VALUES ('221', '河南省', '义马', '县级市');
INSERT INTO `city` VALUES ('222', '河南省', '灵宝', '县级市');
INSERT INTO `city` VALUES ('223', '河南省', '项城', '县级市');
INSERT INTO `city` VALUES ('224', '湖北省', '武汉', '副省级城市');
INSERT INTO `city` VALUES ('225', '湖北省', '十堰', '地级市');
INSERT INTO `city` VALUES ('226', '湖北省', '襄樊', '地级市');
INSERT INTO `city` VALUES ('227', '湖北省', '荆门', '地级市');
INSERT INTO `city` VALUES ('228', '湖北省', '孝感', '地级市');
INSERT INTO `city` VALUES ('229', '湖北省', '黄冈', '地级市');
INSERT INTO `city` VALUES ('230', '湖北省', '鄂州', '地级市');
INSERT INTO `city` VALUES ('231', '湖北省', '黄石', '地级市');
INSERT INTO `city` VALUES ('232', '湖北省', '咸宁', '地级市');
INSERT INTO `city` VALUES ('233', '湖北省', '荆州', '地级市');
INSERT INTO `city` VALUES ('234', '湖北省', '宜昌', '地级市');
INSERT INTO `city` VALUES ('235', '湖北省', '随州', '地级市');
INSERT INTO `city` VALUES ('236', '湖北省', '仙桃', '省直辖县级市');
INSERT INTO `city` VALUES ('237', '湖北省', '天门', '省直辖县级市');
INSERT INTO `city` VALUES ('238', '湖北省', '潜江', '省直辖县级市');
INSERT INTO `city` VALUES ('239', '湖北省', '丹江口', '县级市');
INSERT INTO `city` VALUES ('240', '湖北省', '老河口', '县级市');
INSERT INTO `city` VALUES ('241', '湖北省', '枣阳', '县级市');
INSERT INTO `city` VALUES ('242', '湖北省', '宜城', '县级市');
INSERT INTO `city` VALUES ('243', '湖北省', '钟祥', '县级市');
INSERT INTO `city` VALUES ('244', '湖北省', '汉川', '县级市');
INSERT INTO `city` VALUES ('245', '湖北省', '应城', '县级市');
INSERT INTO `city` VALUES ('246', '湖北省', '安陆', '县级市');
INSERT INTO `city` VALUES ('247', '湖北省', '广水', '县级市');
INSERT INTO `city` VALUES ('248', '湖北省', '麻城', '县级市');
INSERT INTO `city` VALUES ('249', '湖北省', '武穴', '县级市');
INSERT INTO `city` VALUES ('250', '湖北省', '大冶', '县级市');
INSERT INTO `city` VALUES ('251', '湖北省', '赤壁', '县级市');
INSERT INTO `city` VALUES ('252', '湖北省', '石首', '县级市');
INSERT INTO `city` VALUES ('253', '湖北省', '洪湖', '县级市');
INSERT INTO `city` VALUES ('254', '湖北省', '松滋', '县级市');
INSERT INTO `city` VALUES ('255', '湖北省', '宜都', '县级市');
INSERT INTO `city` VALUES ('256', '湖北省', '枝江', '县级市');
INSERT INTO `city` VALUES ('257', '湖北省', '当阳', '县级市');
INSERT INTO `city` VALUES ('258', '湖北省', '恩施', '县级市');
INSERT INTO `city` VALUES ('259', '湖北省', '利川', '县级市');
INSERT INTO `city` VALUES ('260', '湖南省', '长沙', '地级市');
INSERT INTO `city` VALUES ('261', '湖南省', '衡阳', '地级市');
INSERT INTO `city` VALUES ('262', '湖南省', '张家界', '地级市');
INSERT INTO `city` VALUES ('263', '湖南省', '常德', '地级市');
INSERT INTO `city` VALUES ('264', '湖南省', '益阳', '地级市');
INSERT INTO `city` VALUES ('265', '湖南省', '岳阳', '地级市');
INSERT INTO `city` VALUES ('266', '湖南省', '株洲', '地级市');
INSERT INTO `city` VALUES ('267', '湖南省', '湘潭', '地级市');
INSERT INTO `city` VALUES ('268', '湖南省', '郴州', '地级市');
INSERT INTO `city` VALUES ('269', '湖南省', '永州', '地级市');
INSERT INTO `city` VALUES ('270', '湖南省', '邵阳', '地级市');
INSERT INTO `city` VALUES ('271', '湖南省', '怀化', '地级市');
INSERT INTO `city` VALUES ('272', '湖南省', '娄底', '地级市');
INSERT INTO `city` VALUES ('273', '湖南省', '耒阳', '县级市');
INSERT INTO `city` VALUES ('274', '湖南省', '常宁', '县级市');
INSERT INTO `city` VALUES ('275', '湖南省', '浏阳', '县级市');
INSERT INTO `city` VALUES ('276', '湖南省', '津市', '县级市');
INSERT INTO `city` VALUES ('277', '湖南省', '沅江', '县级市');
INSERT INTO `city` VALUES ('278', '湖南省', '汨罗', '县级市');
INSERT INTO `city` VALUES ('279', '湖南省', '临湘', '县级市');
INSERT INTO `city` VALUES ('280', '湖南省', '醴陵', '县级市');
INSERT INTO `city` VALUES ('281', '湖南省', '湘乡', '县级市');
INSERT INTO `city` VALUES ('282', '湖南省', '韶山', '县级市');
INSERT INTO `city` VALUES ('283', '湖南省', '资兴', '县级市');
INSERT INTO `city` VALUES ('284', '湖南省', '武冈', '县级市');
INSERT INTO `city` VALUES ('285', '湖南省', '洪江', '县级市');
INSERT INTO `city` VALUES ('286', '湖南省', '冷水江', '县级市');
INSERT INTO `city` VALUES ('287', '湖南省', '涟源', '县级市');
INSERT INTO `city` VALUES ('288', '湖南省', '吉首', '县级市');
INSERT INTO `city` VALUES ('289', '吉林省', '长春', '地级市');
INSERT INTO `city` VALUES ('290', '吉林省', '吉林市', '地级市');
INSERT INTO `city` VALUES ('291', '吉林省', '白城', '地级市');
INSERT INTO `city` VALUES ('292', '吉林省', '松原', '地级市');
INSERT INTO `city` VALUES ('293', '吉林省', '四平', '地级市');
INSERT INTO `city` VALUES ('294', '吉林省', '辽源', '地级市');
INSERT INTO `city` VALUES ('295', '吉林省', '通化', '地级市');
INSERT INTO `city` VALUES ('296', '吉林省', '白山', '地级市');
INSERT INTO `city` VALUES ('297', '吉林省', '德惠', '县级市');
INSERT INTO `city` VALUES ('298', '吉林省', '九台', '县级市');
INSERT INTO `city` VALUES ('299', '吉林省', '榆树', '县级市');
INSERT INTO `city` VALUES ('300', '吉林省', '磐石', '县级市');
INSERT INTO `city` VALUES ('301', '吉林省', '蛟河', '县级市');
INSERT INTO `city` VALUES ('302', '吉林省', '桦甸', '县级市');
INSERT INTO `city` VALUES ('303', '吉林省', '舒兰', '县级市');
INSERT INTO `city` VALUES ('304', '吉林省', '洮南', '县级市');
INSERT INTO `city` VALUES ('305', '吉林省', '大安', '县级市');
INSERT INTO `city` VALUES ('306', '吉林省', '双辽', '县级市');
INSERT INTO `city` VALUES ('307', '吉林省', '公主岭', '县级市');
INSERT INTO `city` VALUES ('308', '吉林省', '梅河口', '县级市');
INSERT INTO `city` VALUES ('309', '吉林省', '集安', '县级市');
INSERT INTO `city` VALUES ('310', '吉林省', '临江', '县级市');
INSERT INTO `city` VALUES ('311', '吉林省', '延吉', '县级市');
INSERT INTO `city` VALUES ('312', '吉林省', '图们', '县级市');
INSERT INTO `city` VALUES ('313', '吉林省', '敦化', '县级市');
INSERT INTO `city` VALUES ('314', '吉林省', '珲春', '县级市');
INSERT INTO `city` VALUES ('315', '吉林省', '龙井', '县级市');
INSERT INTO `city` VALUES ('316', '吉林省', '和龙', '县级市');
INSERT INTO `city` VALUES ('317', '江西省', '南昌', '地级市');
INSERT INTO `city` VALUES ('318', '江西省', '九江', '地级市');
INSERT INTO `city` VALUES ('319', '江西省', '景德镇', '地级市');
INSERT INTO `city` VALUES ('320', '江西省', '鹰潭', '地级市');
INSERT INTO `city` VALUES ('321', '江西省', '新余', '地级市');
INSERT INTO `city` VALUES ('322', '江西省', '萍乡', '地级市');
INSERT INTO `city` VALUES ('323', '江西省', '赣州', '地级市');
INSERT INTO `city` VALUES ('324', '江西省', '上饶', '地级市');
INSERT INTO `city` VALUES ('325', '江西省', '抚州', '地级市');
INSERT INTO `city` VALUES ('326', '江西省', '宜春', '地级市');
INSERT INTO `city` VALUES ('327', '江西省', '吉安', '地级市');
INSERT INTO `city` VALUES ('328', '江西省', '瑞昌', '县级市');
INSERT INTO `city` VALUES ('329', '江西省', '乐平', '县级市');
INSERT INTO `city` VALUES ('330', '江西省', '瑞金', '县级市');
INSERT INTO `city` VALUES ('331', '江西省', '南康', '县级市');
INSERT INTO `city` VALUES ('332', '江西省', '德兴', '县级市');
INSERT INTO `city` VALUES ('333', '江西省', '丰城', '县级市');
INSERT INTO `city` VALUES ('334', '江西省', '樟树', '县级市');
INSERT INTO `city` VALUES ('335', '江西省', '高安', '县级市');
INSERT INTO `city` VALUES ('336', '江西省', '井冈山', '县级市');
INSERT INTO `city` VALUES ('337', '江西省', '贵溪', '县级市');
INSERT INTO `city` VALUES ('338', '江苏省', '南京', '副省级城市');
INSERT INTO `city` VALUES ('339', '江苏省', '徐州', '地级市');
INSERT INTO `city` VALUES ('340', '江苏省', '连云港', '地级市');
INSERT INTO `city` VALUES ('341', '江苏省', '宿迁', '地级市');
INSERT INTO `city` VALUES ('342', '江苏省', '淮安', '地级市');
INSERT INTO `city` VALUES ('343', '江苏省', '盐城', '地级市');
INSERT INTO `city` VALUES ('344', '江苏省', '扬州', '地级市');
INSERT INTO `city` VALUES ('345', '江苏省', '泰州', '地级市');
INSERT INTO `city` VALUES ('346', '江苏省', '南通', '地级市');
INSERT INTO `city` VALUES ('347', '江苏省', '镇江', '地级市');
INSERT INTO `city` VALUES ('348', '江苏省', '常州', '地级市');
INSERT INTO `city` VALUES ('349', '江苏省', '无锡', '地级市');
INSERT INTO `city` VALUES ('350', '江苏省', '苏州', '地级市');
INSERT INTO `city` VALUES ('351', '江苏省', '江阴', '县级市');
INSERT INTO `city` VALUES ('352', '江苏省', '宜兴', '县级市');
INSERT INTO `city` VALUES ('353', '江苏省', '邳州', '县级市');
INSERT INTO `city` VALUES ('354', '江苏省', '新沂', '县级市');
INSERT INTO `city` VALUES ('355', '江苏省', '金坛', '县级市');
INSERT INTO `city` VALUES ('356', '江苏省', '溧阳', '县级市');
INSERT INTO `city` VALUES ('357', '江苏省', '常熟', '县级市');
INSERT INTO `city` VALUES ('358', '江苏省', '张家港', '县级市');
INSERT INTO `city` VALUES ('359', '江苏省', '太仓', '县级市');
INSERT INTO `city` VALUES ('360', '江苏省', '昆山', '县级市');
INSERT INTO `city` VALUES ('361', '江苏省', '吴江', '县级市');
INSERT INTO `city` VALUES ('362', '江苏省', '如皋', '县级市');
INSERT INTO `city` VALUES ('363', '江苏省', '海门', '县级市');
INSERT INTO `city` VALUES ('364', '江苏省', '启东', '县级市');
INSERT INTO `city` VALUES ('365', '江苏省', '大丰', '县级市');
INSERT INTO `city` VALUES ('366', '江苏省', '东台', '县级市');
INSERT INTO `city` VALUES ('367', '江苏省', '高邮', '县级市');
INSERT INTO `city` VALUES ('368', '江苏省', '仪征', '县级市');
INSERT INTO `city` VALUES ('369', '江苏省', '扬中', '县级市');
INSERT INTO `city` VALUES ('370', '江苏省', '句容', '县级市');
INSERT INTO `city` VALUES ('371', '江苏省', '丹阳', '县级市');
INSERT INTO `city` VALUES ('372', '江苏省', '兴化', '县级市');
INSERT INTO `city` VALUES ('373', '江苏省', '姜堰', '县级市');
INSERT INTO `city` VALUES ('374', '江苏省', '泰兴', '县级市');
INSERT INTO `city` VALUES ('375', '江苏省', '靖江', '县级市');
INSERT INTO `city` VALUES ('376', '辽宁省', '沈阳', '副省级城市');
INSERT INTO `city` VALUES ('377', '辽宁省', '大连', '副省级城市');
INSERT INTO `city` VALUES ('378', '辽宁省', '朝阳', '地级市');
INSERT INTO `city` VALUES ('379', '辽宁省', '阜新', '地级市');
INSERT INTO `city` VALUES ('380', '辽宁省', '铁岭', '地级市');
INSERT INTO `city` VALUES ('381', '辽宁省', '抚顺', '地级市');
INSERT INTO `city` VALUES ('382', '辽宁省', '本溪', '地级市');
INSERT INTO `city` VALUES ('383', '辽宁省', '辽阳', '地级市');
INSERT INTO `city` VALUES ('384', '辽宁省', '鞍山', '地级市');
INSERT INTO `city` VALUES ('385', '辽宁省', '丹东', '地级市');
INSERT INTO `city` VALUES ('386', '辽宁省', '营口', '地级市');
INSERT INTO `city` VALUES ('387', '辽宁省', '盘锦', '地级市');
INSERT INTO `city` VALUES ('388', '辽宁省', '锦州', '地级市');
INSERT INTO `city` VALUES ('389', '辽宁省', '葫芦岛', '地级市');
INSERT INTO `city` VALUES ('390', '辽宁省', '新民', '县级市');
INSERT INTO `city` VALUES ('391', '辽宁省', '瓦房店', '县级市');
INSERT INTO `city` VALUES ('392', '辽宁省', '普兰店', '县级市');
INSERT INTO `city` VALUES ('393', '辽宁省', '庄河', '县级市');
INSERT INTO `city` VALUES ('394', '辽宁省', '北票', '县级市');
INSERT INTO `city` VALUES ('395', '辽宁省', '凌源', '县级市');
INSERT INTO `city` VALUES ('396', '辽宁省', '调兵山', '县级市');
INSERT INTO `city` VALUES ('397', '辽宁省', '开原', '县级市');
INSERT INTO `city` VALUES ('398', '辽宁省', '灯塔', '县级市');
INSERT INTO `city` VALUES ('399', '辽宁省', '海城', '县级市');
INSERT INTO `city` VALUES ('400', '辽宁省', '凤城', '县级市');
INSERT INTO `city` VALUES ('401', '辽宁省', '东港', '县级市');
INSERT INTO `city` VALUES ('402', '辽宁省', '大石桥', '县级市');
INSERT INTO `city` VALUES ('403', '辽宁省', '盖州', '县级市');
INSERT INTO `city` VALUES ('404', '辽宁省', '凌海', '县级市');
INSERT INTO `city` VALUES ('405', '辽宁省', '北宁', '县级市');
INSERT INTO `city` VALUES ('406', '辽宁省', '兴城', '县级市');
INSERT INTO `city` VALUES ('407', '山东省', '济南', '副省级城市');
INSERT INTO `city` VALUES ('408', '山东省', '青岛', '副省级城市');
INSERT INTO `city` VALUES ('409', '山东省', '聊城', '地级市');
INSERT INTO `city` VALUES ('410', '山东省', '德州', '地级市');
INSERT INTO `city` VALUES ('411', '山东省', '东营', '地级市');
INSERT INTO `city` VALUES ('412', '山东省', '淄博', '地级市');
INSERT INTO `city` VALUES ('413', '山东省', '潍坊', '地级市');
INSERT INTO `city` VALUES ('414', '山东省', '烟台', '地级市');
INSERT INTO `city` VALUES ('415', '山东省', '威海', '地级市');
INSERT INTO `city` VALUES ('416', '山东省', '日照', '地级市');
INSERT INTO `city` VALUES ('417', '山东省', '临沂', '地级市');
INSERT INTO `city` VALUES ('418', '山东省', '枣庄', '地级市');
INSERT INTO `city` VALUES ('419', '山东省', '济宁', '地级市');
INSERT INTO `city` VALUES ('420', '山东省', '泰安', '地级市');
INSERT INTO `city` VALUES ('421', '山东省', '莱芜', '地级市');
INSERT INTO `city` VALUES ('422', '山东省', '滨州', '地级市');
INSERT INTO `city` VALUES ('423', '山东省', '菏泽', '地级市');
INSERT INTO `city` VALUES ('424', '山东省', '章丘', '县级市');
INSERT INTO `city` VALUES ('425', '山东省', '胶州', '县级市');
INSERT INTO `city` VALUES ('426', '山东省', '胶南', '县级市');
INSERT INTO `city` VALUES ('427', '山东省', '即墨', '县级市');
INSERT INTO `city` VALUES ('428', '山东省', '平度', '县级市');
INSERT INTO `city` VALUES ('429', '山东省', '莱西', '县级市');
INSERT INTO `city` VALUES ('430', '山东省', '临清', '县级市');
INSERT INTO `city` VALUES ('431', '山东省', '乐陵', '县级市');
INSERT INTO `city` VALUES ('432', '山东省', '禹城', '县级市');
INSERT INTO `city` VALUES ('433', '山东省', '安丘', '县级市');
INSERT INTO `city` VALUES ('434', '山东省', '昌邑', '县级市');
INSERT INTO `city` VALUES ('435', '山东省', '高密', '县级市');
INSERT INTO `city` VALUES ('436', '山东省', '青州', '县级市');
INSERT INTO `city` VALUES ('437', '山东省', '诸城', '县级市');
INSERT INTO `city` VALUES ('438', '山东省', '寿光', '县级市');
INSERT INTO `city` VALUES ('439', '山东省', '栖霞', '县级市');
INSERT INTO `city` VALUES ('440', '山东省', '海阳', '县级市');
INSERT INTO `city` VALUES ('441', '山东省', '龙口', '县级市');
INSERT INTO `city` VALUES ('442', '山东省', '莱阳', '县级市');
INSERT INTO `city` VALUES ('443', '山东省', '莱州', '县级市');
INSERT INTO `city` VALUES ('444', '山东省', '蓬莱', '县级市');
INSERT INTO `city` VALUES ('445', '山东省', '招远', '县级市');
INSERT INTO `city` VALUES ('446', '山东省', '文登', '县级市');
INSERT INTO `city` VALUES ('447', '山东省', '荣成', '县级市');
INSERT INTO `city` VALUES ('448', '山东省', '乳山', '县级市');
INSERT INTO `city` VALUES ('449', '山东省', '滕州', '县级市');
INSERT INTO `city` VALUES ('450', '山东省', '曲阜', '县级市');
INSERT INTO `city` VALUES ('451', '山东省', '兖州', '县级市');
INSERT INTO `city` VALUES ('452', '山东省', '邹城', '县级市');
INSERT INTO `city` VALUES ('453', '山东省', '新泰', '县级市');
INSERT INTO `city` VALUES ('454', '山东省', '肥城', '县级市');
INSERT INTO `city` VALUES ('455', '陕西省', '西安', '副省级城市');
INSERT INTO `city` VALUES ('456', '陕西省', '延安', '地级市');
INSERT INTO `city` VALUES ('457', '陕西省', '铜川', '地级市');
INSERT INTO `city` VALUES ('458', '陕西省', '渭南', '地级市');
INSERT INTO `city` VALUES ('459', '陕西省', '咸阳', '地级市');
INSERT INTO `city` VALUES ('460', '陕西省', '宝鸡', '地级市');
INSERT INTO `city` VALUES ('461', '陕西省', '汉中', '地级市');
INSERT INTO `city` VALUES ('462', '陕西省', '榆林', '地级市');
INSERT INTO `city` VALUES ('463', '陕西省', '商洛', '地级市');
INSERT INTO `city` VALUES ('464', '陕西省', '安康', '地级市');
INSERT INTO `city` VALUES ('465', '陕西省', '韩城', '县级市');
INSERT INTO `city` VALUES ('466', '陕西省', '华阴', '县级市');
INSERT INTO `city` VALUES ('467', '陕西省', '兴平', '县级市');
INSERT INTO `city` VALUES ('468', '山西省', '太原', '地级市');
INSERT INTO `city` VALUES ('469', '山西省', '大同', '地级市');
INSERT INTO `city` VALUES ('470', '山西省', '朔州', '地级市');
INSERT INTO `city` VALUES ('471', '山西省', '阳泉', '地级市');
INSERT INTO `city` VALUES ('472', '山西省', '长治', '地级市');
INSERT INTO `city` VALUES ('473', '山西省', '晋城', '地级市');
INSERT INTO `city` VALUES ('474', '山西省', '忻州', '地级市');
INSERT INTO `city` VALUES ('475', '山西省', '吕梁', '地级市');
INSERT INTO `city` VALUES ('476', '山西省', '晋中', '地级市');
INSERT INTO `city` VALUES ('477', '山西省', '临汾', '地级市');
INSERT INTO `city` VALUES ('478', '山西省', '运城', '地级市');
INSERT INTO `city` VALUES ('479', '山西省', '古交', '县级市');
INSERT INTO `city` VALUES ('480', '山西省', '潞城', '县级市');
INSERT INTO `city` VALUES ('481', '山西省', '高平', '县级市');
INSERT INTO `city` VALUES ('482', '山西省', '原平', '县级市');
INSERT INTO `city` VALUES ('483', '山西省', '孝义', '县级市');
INSERT INTO `city` VALUES ('484', '山西省', '汾阳', '县级市');
INSERT INTO `city` VALUES ('485', '山西省', '介休', '县级市');
INSERT INTO `city` VALUES ('486', '山西省', '侯马', '县级市');
INSERT INTO `city` VALUES ('487', '山西省', '霍州', '县级市');
INSERT INTO `city` VALUES ('488', '山西省', '永济', '县级市');
INSERT INTO `city` VALUES ('489', '山西省', '河津', '县级市');
INSERT INTO `city` VALUES ('490', '四川省', '成都', '副省级城市');
INSERT INTO `city` VALUES ('491', '四川省', '广元', '地级市');
INSERT INTO `city` VALUES ('492', '四川省', '绵阳', '地级市');
INSERT INTO `city` VALUES ('493', '四川省', '德阳', '地级市');
INSERT INTO `city` VALUES ('494', '四川省', '南充', '地级市');
INSERT INTO `city` VALUES ('495', '四川省', '广安', '地级市');
INSERT INTO `city` VALUES ('496', '四川省', '遂宁', '地级市');
INSERT INTO `city` VALUES ('497', '四川省', '内江', '地级市');
INSERT INTO `city` VALUES ('498', '四川省', '乐山', '地级市');
INSERT INTO `city` VALUES ('499', '四川省', '自贡', '地级市');
INSERT INTO `city` VALUES ('500', '四川省', '泸州', '地级市');
INSERT INTO `city` VALUES ('501', '四川省', '宜宾', '地级市');
INSERT INTO `city` VALUES ('502', '四川省', '攀枝花', '地级市');
INSERT INTO `city` VALUES ('503', '四川省', '巴中', '地级市');
INSERT INTO `city` VALUES ('504', '四川省', '达州', '地级市');
INSERT INTO `city` VALUES ('505', '四川省', '资阳', '地级市');
INSERT INTO `city` VALUES ('506', '四川省', '眉山', '地级市');
INSERT INTO `city` VALUES ('507', '四川省', '雅安', '地级市');
INSERT INTO `city` VALUES ('508', '四川省', '崇州', '县级市');
INSERT INTO `city` VALUES ('509', '四川省', '邛崃', '县级市');
INSERT INTO `city` VALUES ('510', '四川省', '都江堰', '县级市');
INSERT INTO `city` VALUES ('511', '四川省', '彭州', '县级市');
INSERT INTO `city` VALUES ('512', '四川省', '江油', '县级市');
INSERT INTO `city` VALUES ('513', '四川省', '什邡', '县级市');
INSERT INTO `city` VALUES ('514', '四川省', '广汉', '县级市');
INSERT INTO `city` VALUES ('515', '四川省', '绵竹', '县级市');
INSERT INTO `city` VALUES ('516', '四川省', '阆中', '县级市');
INSERT INTO `city` VALUES ('517', '四川省', '华蓥', '县级市');
INSERT INTO `city` VALUES ('518', '四川省', '峨眉山', '县级市');
INSERT INTO `city` VALUES ('519', '四川省', '万源', '县级市');
INSERT INTO `city` VALUES ('520', '四川省', '简阳', '县级市');
INSERT INTO `city` VALUES ('521', '四川省', '西昌', '县级市');
INSERT INTO `city` VALUES ('522', '云南省', '昆明', '地级市');
INSERT INTO `city` VALUES ('523', '云南省', '曲靖', '地级市');
INSERT INTO `city` VALUES ('524', '云南省', '玉溪', '地级市');
INSERT INTO `city` VALUES ('525', '云南省', '丽江', '地级市');
INSERT INTO `city` VALUES ('526', '云南省', '昭通', '地级市');
INSERT INTO `city` VALUES ('527', '云南省', '思茅', '地级市');
INSERT INTO `city` VALUES ('528', '云南省', '临沧', '地级市');
INSERT INTO `city` VALUES ('529', '云南省', '保山', '地级市');
INSERT INTO `city` VALUES ('530', '云南省', '安宁', '县级市');
INSERT INTO `city` VALUES ('531', '云南省', '宣威', '县级市');
INSERT INTO `city` VALUES ('532', '云南省', '芒市', '县级市');
INSERT INTO `city` VALUES ('533', '云南省', '瑞丽', '县级市');
INSERT INTO `city` VALUES ('534', '云南省', '大理', '县级市');
INSERT INTO `city` VALUES ('535', '云南省', '楚雄', '县级市');
INSERT INTO `city` VALUES ('536', '云南省', '个旧', '县级市');
INSERT INTO `city` VALUES ('537', '云南省', '开远', '县级市');
INSERT INTO `city` VALUES ('538', '云南省', '景洪', '县级市');
INSERT INTO `city` VALUES ('539', '浙江省', '杭州', '副省级城市');
INSERT INTO `city` VALUES ('540', '浙江省', '宁波', '副省级城市');
INSERT INTO `city` VALUES ('541', '浙江省', '湖州', '地级市');
INSERT INTO `city` VALUES ('542', '浙江省', '嘉兴', '地级市');
INSERT INTO `city` VALUES ('543', '浙江省', '舟山', '地级市');
INSERT INTO `city` VALUES ('544', '浙江省', '绍兴', '地级市');
INSERT INTO `city` VALUES ('545', '浙江省', '衢州', '地级市');
INSERT INTO `city` VALUES ('546', '浙江省', '金华', '地级市');
INSERT INTO `city` VALUES ('547', '浙江省', '台州', '地级市');
INSERT INTO `city` VALUES ('548', '浙江省', '温州', '地级市');
INSERT INTO `city` VALUES ('549', '浙江省', '丽水', '地级市');
INSERT INTO `city` VALUES ('550', '浙江省', '临安', '县级市');
INSERT INTO `city` VALUES ('551', '浙江省', '富阳', '县级市');
INSERT INTO `city` VALUES ('552', '浙江省', '建德', '县级市');
INSERT INTO `city` VALUES ('553', '浙江省', '慈溪', '县级市');
INSERT INTO `city` VALUES ('554', '浙江省', '余姚', '县级市');
INSERT INTO `city` VALUES ('555', '浙江省', '奉化', '县级市');
INSERT INTO `city` VALUES ('556', '浙江省', '平湖', '县级市');
INSERT INTO `city` VALUES ('557', '浙江省', '海宁', '县级市');
INSERT INTO `city` VALUES ('558', '浙江省', '桐乡', '县级市');
INSERT INTO `city` VALUES ('559', '浙江省', '诸暨', '县级市');
INSERT INTO `city` VALUES ('560', '浙江省', '上虞', '县级市');
INSERT INTO `city` VALUES ('561', '浙江省', '嵊州', '县级市');
INSERT INTO `city` VALUES ('562', '浙江省', '江山', '县级市');
INSERT INTO `city` VALUES ('563', '浙江省', '兰溪', '县级市');
INSERT INTO `city` VALUES ('564', '浙江省', '永康', '县级市');
INSERT INTO `city` VALUES ('565', '浙江省', '义乌', '县级市');
INSERT INTO `city` VALUES ('566', '浙江省', '东阳', '县级市');
INSERT INTO `city` VALUES ('567', '浙江省', '临海', '县级市');
INSERT INTO `city` VALUES ('568', '浙江省', '温岭', '县级市');
INSERT INTO `city` VALUES ('569', '浙江省', '瑞安', '县级市');
INSERT INTO `city` VALUES ('570', '浙江省', '乐清', '县级市');
INSERT INTO `city` VALUES ('571', '浙江省', '龙泉', '县级市');
INSERT INTO `city` VALUES ('572', '青海省', '西宁', '地级市');
INSERT INTO `city` VALUES ('573', '青海省', '格尔木', '县级市');
INSERT INTO `city` VALUES ('574', '青海省', '德令哈', '县级市');
INSERT INTO `city` VALUES ('575', '海南省', '海口市', '地级市');
INSERT INTO `city` VALUES ('576', '海南省', '三亚市', '地级市');
INSERT INTO `city` VALUES ('577', '海南省', '文昌市', '县级市');
INSERT INTO `city` VALUES ('578', '海南省', '琼海市', '县级市');
INSERT INTO `city` VALUES ('579', '海南省', '万宁市', '县级市');
INSERT INTO `city` VALUES ('580', '海南省', '东方市', '县级市');
INSERT INTO `city` VALUES ('581', '海南省', '儋州市', '县级市');
INSERT INTO `city` VALUES ('582', '海南省', '五指山市', '县级市');
INSERT INTO `city` VALUES ('583', '广西壮族', '南宁', '地级市');
INSERT INTO `city` VALUES ('584', '广西壮族', '桂林', '地级市');
INSERT INTO `city` VALUES ('585', '广西壮族', '柳州', '地级市');
INSERT INTO `city` VALUES ('586', '广西壮族', '梧州', '地级市');
INSERT INTO `city` VALUES ('587', '广西壮族', '贵港', '地级市');
INSERT INTO `city` VALUES ('588', '广西壮族', '玉林', '地级市');
INSERT INTO `city` VALUES ('589', '广西壮族', '钦州', '地级市');
INSERT INTO `city` VALUES ('590', '广西壮族', '北海', '地级市');
INSERT INTO `city` VALUES ('591', '广西壮族', '防城港', '地级市');
INSERT INTO `city` VALUES ('592', '广西壮族', '崇左', '地级市');
INSERT INTO `city` VALUES ('593', '广西壮族', '百色', '地级市');
INSERT INTO `city` VALUES ('594', '广西壮族', '河池', '地级市');
INSERT INTO `city` VALUES ('595', '广西壮族', '来宾', '地级市');
INSERT INTO `city` VALUES ('596', '广西壮族', '贺州', '地级市');
INSERT INTO `city` VALUES ('597', '广西壮族', '岑溪', '县级市');
INSERT INTO `city` VALUES ('598', '广西壮族', '桂平', '县级市');
INSERT INTO `city` VALUES ('599', '广西壮族', '北流', '县级市');
INSERT INTO `city` VALUES ('600', '广西壮族', '东兴', '县级市');
INSERT INTO `city` VALUES ('601', '广西壮族', '凭祥', '县级市');
INSERT INTO `city` VALUES ('602', '广西壮族', '宜州', '县级市');
INSERT INTO `city` VALUES ('603', '广西壮族', '合山', '县级市');
INSERT INTO `city` VALUES ('604', '内蒙古', '呼和浩特', '地级市');
INSERT INTO `city` VALUES ('605', '内蒙古', '包头', '地级市');
INSERT INTO `city` VALUES ('606', '内蒙古', '乌海', '地级市');
INSERT INTO `city` VALUES ('607', '内蒙古', '赤峰', '地级市');
INSERT INTO `city` VALUES ('608', '内蒙古', '呼伦贝尔', '地级市');
INSERT INTO `city` VALUES ('609', '内蒙古', '通辽', '地级市');
INSERT INTO `city` VALUES ('610', '内蒙古', '乌兰察布', '地级市');
INSERT INTO `city` VALUES ('611', '内蒙古', '鄂尔多斯', '地级市');
INSERT INTO `city` VALUES ('612', '内蒙古', '巴彦淖尔', '地级市');
INSERT INTO `city` VALUES ('613', '内蒙古', '满洲里', '县级市');
INSERT INTO `city` VALUES ('614', '内蒙古', '扎兰屯', '县级市');
INSERT INTO `city` VALUES ('615', '内蒙古', '牙克石', '县级市');
INSERT INTO `city` VALUES ('616', '内蒙古', '根河', '县级市');
INSERT INTO `city` VALUES ('617', '内蒙古', '额尔古纳', '县级市');
INSERT INTO `city` VALUES ('618', '内蒙古', '乌兰浩特', '县级市');
INSERT INTO `city` VALUES ('619', '内蒙古', '阿尔山', '县级市');
INSERT INTO `city` VALUES ('620', '内蒙古', '霍林郭勒', '县级市');
INSERT INTO `city` VALUES ('621', '内蒙古', '锡林浩特', '县级市');
INSERT INTO `city` VALUES ('622', '内蒙古', '二连浩特', '县级市');
INSERT INTO `city` VALUES ('623', '内蒙古', '丰镇', '县级市');
INSERT INTO `city` VALUES ('624', '宁夏回族', '银川', '地级市');
INSERT INTO `city` VALUES ('625', '宁夏回族', '石嘴山', '地级市');
INSERT INTO `city` VALUES ('626', '宁夏回族', '吴忠', '地级市');
INSERT INTO `city` VALUES ('627', '宁夏回族', '中卫', '地级市');
INSERT INTO `city` VALUES ('628', '宁夏回族', '固原', '地级市');
INSERT INTO `city` VALUES ('629', '宁夏回族', '灵武', '县级市');
INSERT INTO `city` VALUES ('630', '宁夏回族', '青铜峡', '县级市');
INSERT INTO `city` VALUES ('631', '西藏', '拉萨', '地级市');
INSERT INTO `city` VALUES ('632', '西藏', '日喀则', '县级市');
INSERT INTO `city` VALUES ('633', '新疆维吾尔', '乌鲁木齐', '地级市');
INSERT INTO `city` VALUES ('634', '新疆维吾尔', '克拉玛依', '地级市');
INSERT INTO `city` VALUES ('635', '新疆维吾尔', '石河子', '自治区直辖县级市');
INSERT INTO `city` VALUES ('636', '新疆维吾尔', '阿拉尔', '自治区直辖县级市');
INSERT INTO `city` VALUES ('637', '新疆维吾尔', '图木舒克', '自治区直辖县级市');
INSERT INTO `city` VALUES ('638', '新疆维吾尔', '五家渠', '自治区直辖县级市');
INSERT INTO `city` VALUES ('639', '新疆维吾尔', '北屯', '自治区直辖县级市');
INSERT INTO `city` VALUES ('640', '新疆维吾尔', '喀什', '县级市');
INSERT INTO `city` VALUES ('641', '新疆维吾尔', '阿克苏', '县级市');
INSERT INTO `city` VALUES ('642', '新疆维吾尔', '和田', '县级市');
INSERT INTO `city` VALUES ('643', '新疆维吾尔', '吐鲁番', '县级市');
INSERT INTO `city` VALUES ('644', '新疆维吾尔', '哈密', '县级市');
INSERT INTO `city` VALUES ('645', '新疆维吾尔', '阿图什', '县级市');
INSERT INTO `city` VALUES ('646', '新疆维吾尔', '博乐', '县级市');
INSERT INTO `city` VALUES ('647', '新疆维吾尔', '昌吉', '县级市');
INSERT INTO `city` VALUES ('648', '新疆维吾尔', '阜康', '县级市');
INSERT INTO `city` VALUES ('649', '新疆维吾尔', '米泉', '县级市');
INSERT INTO `city` VALUES ('650', '新疆维吾尔', '库尔勒', '县级市');
INSERT INTO `city` VALUES ('651', '新疆维吾尔', '伊宁', '县级市');
INSERT INTO `city` VALUES ('652', '新疆维吾尔', '奎屯', '县级市');
INSERT INTO `city` VALUES ('653', '新疆维吾尔', '塔城', '县级市');
INSERT INTO `city` VALUES ('654', '新疆维吾尔', '乌苏', '县级市');
INSERT INTO `city` VALUES ('655', '新疆维吾尔', '阿勒泰', '县级市');
INSERT INTO `city` VALUES ('656', '香港', '香港', '特别行政区');
INSERT INTO `city` VALUES ('657', '澳门', '澳门', '特别行政区');
INSERT INTO `city` VALUES ('658', '台湾省', '台湾省', '台湾省');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `introduce_page_id` int(11) DEFAULT NULL COMMENT '简介',
  `type_id` int(11) DEFAULT NULL COMMENT '字典ID',
  `address` varchar(255) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `qq_number` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `company_image_path` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `type_id` (`type_id`),
  KEY `user_id` (`user_id`),
  KEY `company_ibfk_3` (`city_id`),
  KEY `introduce_page_id` (`introduce_page_id`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `sys_dictionary` (`id`),
  CONSTRAINT `company_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`Id`),
  CONSTRAINT `company_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`Id`),
  CONSTRAINT `company_ibfk_4` FOREIGN KEY (`introduce_page_id`) REFERENCES `project_case` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '厦门市永特新装修工程有限公司', '1', '4', '鹭江道国贸金海岸真浩阁99号12层H', '李总', '1', 'http://www.yongtexin.com', null, '13800000000', '13800000000', '27', 'xxx@yongtexin.com', '', '13806013024', '/Uploads/2015-12-29/08-22-18-751feea.jpg', '2015-12-29 21:29:09', '2016-01-03 00:20:19');
INSERT INTO `company` VALUES ('2', '椅子企业', '4', '2', '顶部', null, null, '茜茜', null, null, null, '4', null, '', '1380601302666', '/Uploads/2015-12-31/12-04-33-428a9cf.jpg', '2015-12-31 00:04:53', '2016-01-12 00:49:56');
INSERT INTO `company` VALUES ('3', '中国名企', '6', '4', '中国名企', null, null, 'http://www.baidu.com', null, null, null, '53', null, '', '13806013024', '/Uploads/2016-01-02/09-18-24-3181c8c.jpg', '2016-01-02 21:18:35', '2016-01-05 23:53:41');
INSERT INTO `company` VALUES ('4', '厦门市永特新装修工程有限公司', '1', '4', '鹭江道国贸金海岸真浩阁99号12层H', '李总', '1', 'http://www.yongtexin.com', null, '13800000000', '13800000000', '27', 'xxx@yongtexin.com', '', '13806013024', '/Uploads/2015-12-29/08-22-18-751feea.jpg', '2015-12-29 21:29:09', '2016-01-03 00:20:19');
INSERT INTO `company` VALUES ('5', '椅子企业', '4', '2', '顶部', null, null, '茜茜', null, null, null, '4', null, '', '13806013024', '/Uploads/2015-12-31/12-04-33-428a9cf.jpg', '2015-12-31 00:04:53', '2015-12-31 00:05:46');
INSERT INTO `company` VALUES ('6', '中国名企', '6', '4', '中国名企', null, null, 'http://www.baidu.com', null, null, null, '53', null, '', '13806013024', '/Uploads/2016-01-02/09-18-24-3181c8c.jpg', '2016-01-02 21:18:35', '2016-01-05 23:53:41');
INSERT INTO `company` VALUES ('7', '厦门市永特新装修工程有限公司', '1', '4', '鹭江道国贸金海岸真浩阁99号12层H', '李总', '1', 'http://www.yongtexin.com', null, '13800000000', '13800000000', '27', 'xxx@yongtexin.com', '', '13806013024', '/Uploads/2015-12-29/08-22-18-751feea.jpg', '2015-12-29 21:29:09', '2016-01-03 00:20:19');
INSERT INTO `company` VALUES ('8', '椅子企业', '4', '2', '顶部', null, null, '茜茜', null, null, null, '4', null, '', '13806013024', '/Uploads/2015-12-31/12-04-33-428a9cf.jpg', '2015-12-31 00:04:53', '2015-12-31 00:05:46');
INSERT INTO `company` VALUES ('9', '中国名企', '6', '4', '中国名企', null, null, 'http://www.baidu.com', null, null, null, '53', null, '', '13806013024', '/Uploads/2016-01-02/09-18-24-3181c8c.jpg', '2016-01-02 21:18:35', '2016-01-05 23:53:41');
INSERT INTO `company` VALUES ('10', '厦门市永特新装修工程有限公司', '1', '4', '鹭江道国贸金海岸真浩阁99号12层H', '李总', '1', 'http://www.yongtexin.com', null, '13800000000', '13800000000', '27', 'xxx@yongtexin.com', '', '13806013024', '/Uploads/2015-12-29/08-22-18-751feea.jpg', '2015-12-29 21:29:09', '2016-01-03 00:20:19');
INSERT INTO `company` VALUES ('11', '椅子企业', '4', '2', '顶部', null, null, '茜茜', null, null, null, '4', null, '', '13806013024', '/Uploads/2015-12-31/12-04-33-428a9cf.jpg', '2015-12-31 00:04:53', '2015-12-31 00:05:46');
INSERT INTO `company` VALUES ('12', '中国名企', '6', '4', '中国名企', null, null, 'http://www.baidu.com', null, null, null, '53', null, '', '13806013025', '/Uploads/2016-01-02/09-18-24-3181c8c.jpg', '2016-01-02 21:18:35', '2016-01-12 00:14:22');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', '08-22-18-751feea.jpg', '/Uploads/2015-12-29/08-22-18-751feea.jpg', '2015-12-29 20:22:18');
INSERT INTO `file` VALUES ('2', '09-19-22-69c5b.jpg', '/Uploads/2015-12-29/09-19-22-69c5b.jpg', '2015-12-29 21:19:22');
INSERT INTO `file` VALUES ('3', '09-21-42-3935d14.jpg', '/Uploads/2015-12-29/09-21-42-3935d14.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('4', '09-21-42-6960997.jpg', '/Uploads/2015-12-29/09-21-42-6960997.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('5', '09-21-42-44510ea.jpg', '/Uploads/2015-12-29/09-21-42-44510ea.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('6', '09-21-42-1952d09.jpg', '/Uploads/2015-12-29/09-21-42-1952d09.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('7', '09-21-42-3032d2c.jpg', '/Uploads/2015-12-29/09-21-42-3032d2c.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('8', '09-21-42-2478c2d.jpg', '/Uploads/2015-12-29/09-21-42-2478c2d.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('9', '09-21-42-550be03.jpg', '/Uploads/2015-12-29/09-21-42-550be03.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('10', '09-21-42-82272ec.jpg', '/Uploads/2015-12-29/09-21-42-82272ec.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('11', '09-21-42-766859f.jpg', '/Uploads/2015-12-29/09-21-42-766859f.jpg', '2015-12-29 21:21:42');
INSERT INTO `file` VALUES ('12', '10-00-41-516a4c0.jpg', '/Uploads/2015-12-30/10-00-41-516a4c0.jpg', '2015-12-30 10:00:41');
INSERT INTO `file` VALUES ('13', '10-02-31-4923b59.jpg', '/Uploads/2015-12-30/10-02-31-4923b59.jpg', '2015-12-30 10:02:31');
INSERT INTO `file` VALUES ('14', '10-02-52-121281d.jpg', '/Uploads/2015-12-30/10-02-52-121281d.jpg', '2015-12-30 10:02:52');
INSERT INTO `file` VALUES ('15', '10-52-49-752270.jpg', '/Uploads/2015-12-30/10-52-49-752270.jpg', '2015-12-30 22:53:05');
INSERT INTO `file` VALUES ('16', '11-12-59-809c72f.jpg', '/Uploads/2015-12-30/11-12-59-809c72f.jpg', '2015-12-30 23:13:11');
INSERT INTO `file` VALUES ('17', '11-17-30-91308d0.jpg', '/Uploads/2015-12-30/11-17-30-91308d0.jpg', '2015-12-30 23:17:30');
INSERT INTO `file` VALUES ('18', '11-23-13-314f822.jpg', '/Uploads/2015-12-30/11-23-13-314f822.jpg', '2015-12-30 23:23:13');
INSERT INTO `file` VALUES ('19', '11-25-36-5773924.jpg', '/Uploads/2015-12-30/11-25-36-5773924.jpg', '2015-12-30 23:25:36');
INSERT INTO `file` VALUES ('20', '11-32-38-990f718.jpg', '/Uploads/2015-12-30/11-32-38-990f718.jpg', '2015-12-30 23:32:38');
INSERT INTO `file` VALUES ('21', '11-35-15-9986c31.jpg', '/Uploads/2015-12-30/11-35-15-9986c31.jpg', '2015-12-30 23:35:15');
INSERT INTO `file` VALUES ('22', '11-35-50-525d122.jpg', '/Uploads/2015-12-30/11-35-50-525d122.jpg', '2015-12-30 23:35:50');
INSERT INTO `file` VALUES ('23', '11-36-19-3405143.jpg', '/Uploads/2015-12-30/11-36-19-3405143.jpg', '2015-12-30 23:36:19');
INSERT INTO `file` VALUES ('24', '12-04-33-428a9cf.jpg', '/Uploads/2015-12-31/12-04-33-428a9cf.jpg', '2015-12-31 00:04:33');
INSERT INTO `file` VALUES ('25', '12-05-35-5156a16.jpg', '/Uploads/2015-12-31/12-05-35-5156a16.jpg', '2015-12-31 00:05:35');
INSERT INTO `file` VALUES ('26', '11-18-36-742c88b.jpg', '/Uploads/2016-01-01/11-18-36-742c88b.jpg', '2016-01-01 23:18:36');
INSERT INTO `file` VALUES ('27', '11-18-48-469a8a8.jpg', '/Uploads/2016-01-01/11-18-48-469a8a8.jpg', '2016-01-01 23:18:48');
INSERT INTO `file` VALUES ('28', '11-19-03-3659822.jpg', '/Uploads/2016-01-01/11-19-03-3659822.jpg', '2016-01-01 23:19:03');
INSERT INTO `file` VALUES ('29', '11-21-10-1883c8c.jpg', '/Uploads/2016-01-01/11-21-10-1883c8c.jpg', '2016-01-01 23:21:34');
INSERT INTO `file` VALUES ('30', '11-23-31-4393fa5.jpg', '/Uploads/2016-01-01/11-23-31-4393fa5.jpg', '2016-01-01 23:23:31');
INSERT INTO `file` VALUES ('31', '11-24-42-940b9a2.jpg', '//Uploads/2016-01-01/11-24-42-940b9a2.jpg', '2016-01-01 23:24:44');
INSERT INTO `file` VALUES ('32', '11-28-47-3935ed3.jpg', '/Uploads/2016-01-01/11-28-47-3935ed3.jpg', '2016-01-01 23:29:21');
INSERT INTO `file` VALUES ('33', '05-33-42-320dd4c.jpg', '/Uploads/2016-01-02/05-33-42-320dd4c.jpg', '2016-01-02 17:33:42');
INSERT INTO `file` VALUES ('34', '05-34-18-81274b0.jpg', '/Uploads/2016-01-02/05-34-18-81274b0.jpg', '2016-01-02 17:34:18');
INSERT INTO `file` VALUES ('35', '05-36-27-643207b.jpg', '/Uploads/2016-01-02/05-36-27-643207b.jpg', '2016-01-02 17:36:27');
INSERT INTO `file` VALUES ('36', '05-45-41-51717e1.jpg', '/Uploads/2016-01-02/05-45-41-51717e1.jpg', '2016-01-02 17:45:41');
INSERT INTO `file` VALUES ('37', '05-51-42-7154f5c.jpg', '/Uploads/2016-01-02/05-51-42-7154f5c.jpg', '2016-01-02 17:51:42');
INSERT INTO `file` VALUES ('38', '07-45-11-4149e28.jpg', '/Uploads/2016-01-02/07-45-11-4149e28.jpg', '2016-01-02 19:45:11');
INSERT INTO `file` VALUES ('39', '07-48-13-103ab12.jpg', '/Uploads/2016-01-02/07-48-13-103ab12.jpg', '2016-01-02 19:48:13');
INSERT INTO `file` VALUES ('40', '08-01-42-507fc85.jpg', '/Uploads/2016-01-02/08-01-42-507fc85.jpg', '2016-01-02 20:01:42');
INSERT INTO `file` VALUES ('41', '08-02-38-0ec17.jpg', '/Uploads/2016-01-02/08-02-38-0ec17.jpg', '2016-01-02 20:02:38');
INSERT INTO `file` VALUES ('42', '08-03-32-9296eb1.jpg', '/Uploads/2016-01-02/08-03-32-9296eb1.jpg', '2016-01-02 20:03:32');
INSERT INTO `file` VALUES ('43', '08-04-29-318deeb.jpg', '/Uploads/2016-01-02/08-04-29-318deeb.jpg', '2016-01-02 20:04:29');
INSERT INTO `file` VALUES ('44', '08-11-12-329fa86.jpg', '/Uploads/2016-01-02/08-11-12-329fa86.jpg', '2016-01-02 20:11:12');
INSERT INTO `file` VALUES ('45', '08-21-41-8836e65.jpg', '/Uploads/2016-01-02/08-21-41-8836e65.jpg', '2016-01-02 20:21:41');
INSERT INTO `file` VALUES ('46', '08-29-55-40095e1.jpg', '/Uploads/2016-01-02/08-29-55-40095e1.jpg', '2016-01-02 20:29:55');
INSERT INTO `file` VALUES ('47', '08-30-16-638fc16.jpg', '/Uploads/2016-01-02/08-30-16-638fc16.jpg', '2016-01-02 20:30:16');
INSERT INTO `file` VALUES ('48', '09-18-24-3181c8c.jpg', '/Uploads/2016-01-02/09-18-24-3181c8c.jpg', '2016-01-02 21:18:24');
INSERT INTO `file` VALUES ('49', '09-19-04-5439749.jpg', '/Uploads/2016-01-02/09-19-04-5439749.jpg', '2016-01-02 21:19:04');
INSERT INTO `file` VALUES ('50', '09-19-12-197e1b5.jpg', '/Uploads/2016-01-02/09-19-12-197e1b5.jpg', '2016-01-02 21:19:12');

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log` (
  `Id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `desript` varchar(200) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operate_log
-- ----------------------------
INSERT INTO `operate_log` VALUES ('1', '添加企业信息 ID:1', '添加企业信息', 'admin', null, '成功', '2015-12-29 20:22:36');
INSERT INTO `operate_log` VALUES ('2', '添加用户 用户ID：1', '添加用户', 'admin', null, '成功', '2015-12-29 20:24:23');
INSERT INTO `operate_log` VALUES ('3', '添加文章 文章ID：1', '添加文章', 'admin', null, '成功', '2015-12-29 21:25:49');
INSERT INTO `operate_log` VALUES ('4', '设置文章发布 文章ID：1', '设置文章发布', 'admin', null, '成功', '2015-12-29 21:25:53');
INSERT INTO `operate_log` VALUES ('5', '修改企业信息 ID:1', '修改企业信息', 'admin', null, '成功', '2015-12-29 21:29:09');
INSERT INTO `operate_log` VALUES ('6', '修改用户 用户ID：1', '修改用户', 'admin', null, '成功', '2015-12-29 21:47:52');
INSERT INTO `operate_log` VALUES ('7', '修改企业信息 ID:1', '修改企业信息', 'admin', null, '成功', '2015-12-29 22:03:26');
INSERT INTO `operate_log` VALUES ('8', '添加文章 文章ID：2', '添加文章', 'admin', null, '成功', '2015-12-30 10:00:59');
INSERT INTO `operate_log` VALUES ('9', '设置文章发布 文章ID：2', '设置文章发布', 'admin', null, '成功', '2015-12-30 10:01:03');
INSERT INTO `operate_log` VALUES ('10', '添加文章 文章ID：3', '添加文章', 'admin', null, '成功', '2015-12-30 10:02:58');
INSERT INTO `operate_log` VALUES ('11', '设置文章发布 文章ID：3', '设置文章发布', 'admin', null, '成功', '2015-12-30 10:02:59');
INSERT INTO `operate_log` VALUES ('12', '添加企业信息 ID:2', '添加企业信息', 'admin', null, '成功', '2015-12-31 00:04:53');
INSERT INTO `operate_log` VALUES ('13', '添加文章 文章ID：4', '添加文章', 'admin', null, '成功', '2015-12-31 00:05:46');
INSERT INTO `operate_log` VALUES ('14', '设置文章发布 文章ID：4', '设置文章发布', 'admin', null, '成功', '2015-12-31 00:05:47');
INSERT INTO `operate_log` VALUES ('15', '修改配置信息22', ' 修改配置信息', 'admin', null, '成功', '2016-01-01 23:33:57');
INSERT INTO `operate_log` VALUES ('16', '修改配置信息22', ' 修改配置信息', 'admin', null, '成功', '2016-01-01 23:34:18');
INSERT INTO `operate_log` VALUES ('17', '修改配置信息22', ' 修改配置信息', 'admin', null, '成功', '2016-01-01 23:34:37');
INSERT INTO `operate_log` VALUES ('18', '添加文章 文章ID：5', '添加文章', 'admin', null, '成功', '2016-01-02 20:31:18');
INSERT INTO `operate_log` VALUES ('19', '更新文章 文章ID：5', '更新文章', 'admin', null, '成功', '2016-01-02 20:32:06');
INSERT INTO `operate_log` VALUES ('20', '设置文章发布 文章ID：5', '设置文章发布', 'admin', null, '成功', '2016-01-02 20:51:37');
INSERT INTO `operate_log` VALUES ('21', '添加企业信息 ID:3', '添加企业信息', 'admin', null, '成功', '2016-01-02 21:18:35');
INSERT INTO `operate_log` VALUES ('22', '添加文章 文章ID：6', '添加文章', 'admin', null, '成功', '2016-01-02 21:20:01');
INSERT INTO `operate_log` VALUES ('23', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-02 22:07:21');
INSERT INTO `operate_log` VALUES ('24', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-02 22:07:30');
INSERT INTO `operate_log` VALUES ('25', '设置文章发布 文章ID：6', '设置文章发布', 'admin', null, '成功', '2016-01-02 22:07:33');
INSERT INTO `operate_log` VALUES ('26', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-02 22:08:42');
INSERT INTO `operate_log` VALUES ('27', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-02 22:08:56');
INSERT INTO `operate_log` VALUES ('28', '更新文章 文章ID：1', '更新文章', 'admin', null, '成功', '2016-01-03 00:20:18');
INSERT INTO `operate_log` VALUES ('29', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-05 23:52:17');
INSERT INTO `operate_log` VALUES ('30', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-05 23:53:41');
INSERT INTO `operate_log` VALUES ('31', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-06 21:33:31');
INSERT INTO `operate_log` VALUES ('32', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-06 21:34:38');
INSERT INTO `operate_log` VALUES ('33', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-06 21:44:19');
INSERT INTO `operate_log` VALUES ('34', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-06 21:44:49');
INSERT INTO `operate_log` VALUES ('35', '更新文章 文章ID：6', '更新文章', 'admin', null, '成功', '2016-01-06 22:37:03');
INSERT INTO `operate_log` VALUES ('36', '修改企业信息 ID:12', '修改企业信息', 'admin', null, '成功', '2016-01-12 00:14:22');
INSERT INTO `operate_log` VALUES ('37', '修改企业信息 ID:2', '修改企业信息', 'admin', null, '成功', '2016-01-12 00:49:56');

-- ----------------------------
-- Table structure for project_case
-- ----------------------------
DROP TABLE IF EXISTS `project_case`;
CREATE TABLE `project_case` (
  `Id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `project_contact_phone` varchar(13) DEFAULT NULL,
  `project_address` varchar(255) DEFAULT NULL,
  `project_action_company` varchar(255) DEFAULT NULL,
  `project_design_company` varchar(255) DEFAULT NULL,
  `project_type` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_area` varchar(255) DEFAULT NULL,
  `product_metal` varchar(255) DEFAULT NULL,
  `product_ruler` varchar(255) DEFAULT NULL,
  `product_cence` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `product_address` varchar(255) DEFAULT NULL,
  `is_product` int(11) DEFAULT '0',
  `descript` varchar(500) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `content` text,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `main_image_path` varchar(255) DEFAULT NULL,
  `is_company_intro` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `type_id` (`type_id`),
  KEY `company_id` (`company_id`),
  KEY `project_case_ibfk_3` (`user_id`),
  CONSTRAINT `project_case_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `sys_dictionary` (`id`),
  CONSTRAINT `project_case_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`Id`),
  CONSTRAINT `project_case_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_case
-- ----------------------------
INSERT INTO `project_case` VALUES ('1', '美国草原上的中国乡村小屋', '13806013025', '个中国年轻艺术家如何在异国建构自己的生活。', '个中国年轻艺术家如何在异国建构自己的生活。', '个中国年轻艺术家如何在异国建构自己的生活。', '个中国年轻艺术家如何在异国建构', '个中国年轻艺术家如何在异国建构自己的生活。', '656', null, null, null, null, null, '0', '在移居美国9年之后，华裔女艺术家刘北用数百吨美国泥土为父亲再造了一个中国故乡：一幢黄泥小屋，与父亲当年在吉林农村居住的那幢一模一样。', '13', '电影中，美国当地人的小屋是这样，大多是由木材搭建的。<p><img src=\"/Uploads/2015-12-29/09-19-22-69c5b_450_300.jpg\"/></p><p>艺术家刘北立的小屋，则是用泥土和干草建起来的。这幢小房子是刘北立作为ArtFarm驻地艺术家的作品。如果不告诉你这里是美国，你会不会恍如置身中国北方农村？茅草房顶、泥巴墙，门口一人高的野草、野花……就是记忆中童年的模样。</p><p><img src=\"/Uploads/2015-12-29/09-21-42-3935d14_450_300.jpg\"/></p><p>2004年，作为Art Farm的驻地艺术家，刘北立第一次来到美国内布拉斯时，这片草原除了野草和破木头，什么都没有。这让她想到了四十多年前，自己父母下乡插队的经历：当年父母离开城市，去吉林农村插队。在乡下，他们学着当地农民的样子，用黄泥、稻草建造了一所简陋的小房子。</p><p><br/></p><p><img src=\"/Uploads/2015-12-29/09-21-42-44510ea_450_300.jpg\"/></p><p>刘北立进驻内布拉斯加开始建房时，正值夏季。主办方提供了370吨泥土给艺术家自由发挥。那个土堆堆起来超过5米高，两个月之后，这些美国大地上的泥土，将会变成一幢最传统的中国小屋。</p><p><br/></p><p>父亲马上传授给她很多盖房子的知识，几乎是中国每一个农民都熟悉的基本经验，包括如何搭建框架、制作墙体、上梁、结顶。这就是父亲亲手绘制的草图，重现了当年小屋的原样，还注上了一句：你盖这样的就可以了。</p><p><img src=\"/Uploads/2015-12-29/09-21-42-1952d09_450_300.jpg\"/></p><p>她也根据当地的实际情况做了一些改进。她从三公里之外运来了12吨沙子，干草是邻居牧场上的出产。一桶水，三铲子泥土，一铲子沙子，一把干草。扔进搅拌机之后，灌进特制的模具压制，一次可以制作四块泥砖。在林肯大学学生志愿者的帮助下，只用了一个周末就打了400块砖。</p><p><img src=\"/Uploads/2015-12-29/09-21-42-3032d2c_450_300.jpg\"/></p><p>但好景不长，很快她发现，内布拉斯加的夏季昼夜温差大，经过白天的暴晒，很多砖块都因为开裂报废了。志愿者离开之后，她开始一个人工作，平均一天只能做25块砖。为了保护这些娇贵的砖块，她搭起一个储藏砖块的架子，既能能够保证空气流通，又可以避免阳光直晒。每天傍晚结束工作，她都要花上两个小时给砖块盖上塑料布，再根据白天阳光照射的情况调整砖块的位置。每天早上的第一件事，就是揭开塑料布检查砖块，尤其是如果前一夜下过雨的话，更要看看放置了一夜的砖块们会不会因为过度潮湿受损</p><p><img src=\"/Uploads/2015-12-29/09-21-42-2478c2d_450_300.jpg\"/></p><p>房屋结构的设计来自最传统的中式民居，</p><p>在中国被称为“山墙”。</p><p><img src=\"/Uploads/2015-12-29/09-21-42-550be03_450_300.jpg\"/></p><p>搭建房屋结构的木料有7.2米长，</p><p>是从当地的美式旧谷仓捡来的木板条。</p><p><img src=\"/Uploads/2015-12-29/09-21-42-82272ec_450_300.jpg\"/></p><p><br/></p><p><img src=\"/Uploads/2015-12-29/09-21-42-766859f_450_300.jpg\"/></p><p>就像中国北方农村的习惯一样，</p><p>她也给房间的墙壁糊上一层旧报纸。</p><p>它们是纽约时报、华尔街日报、今日美国，</p><p>全都是关于中国的报道版面，</p><p>用来表现一个中国年轻艺术家如何在异国建构自己的生活。</p>', '1', null, '/Uploads/2015-12-29/09-19-22-69c5b_450_300.jpg', '0', '1', '2194', null, null, '2016-01-03 00:20:18');
INSERT INTO `project_case` VALUES ('2', 'hello sosd', null, null, null, null, null, null, null, null, null, null, null, null, '0', 'adfsdf', '13', '<p><img  src=\'/Uploads/2015-12-30/10-00-41-516a4c0_450_300.jpg\'/></p>', '1', null, '/Uploads/2015-12-30/10-00-41-516a4c0_450_300.jpg', '0', '1', '1010', null, '2015-12-30 10:00:59', null);
INSERT INTO `project_case` VALUES ('3', 'sdfasdfweds', null, null, null, null, null, null, null, null, null, null, null, null, '0', 'jksdjfsdf', '15', '<p><img src=\"/Uploads/2015-12-30/10-02-31-4923b59_450_300.jpg\"/></p><p><br/></p><p><img  src=\'/Uploads/2015-12-30/10-02-52-121281d_450_300.jpg\'/></p>', '1', null, '/Uploads/2015-12-30/10-02-31-4923b59_450_300.jpg', '0', '1', '2083', null, '2015-12-30 10:02:58', null);
INSERT INTO `project_case` VALUES ('4', '文章信息文章信息文章信息文章', null, null, null, null, null, null, null, null, null, null, null, null, '0', '文章信息文章信息文章信息文章文章信息文章信息文章信息文章文章信息文章信息文章信息文章', '13', '<p><img  src=\'/Uploads/2015-12-31/12-05-35-5156a16_450_300.jpg\'/></p><p><img  src=\'/Uploads/2015-12-31/12-05-35-5156a16_450_300.jpg\'/></p><p><img  src=\'/Uploads/2015-12-31/12-05-35-5156a16_450_300.jpg\'/></p><p><img  src=\'/Uploads/2015-12-31/12-05-35-5156a16_450_300.jpg\'/></p>', '2', null, '/Uploads/2015-12-31/12-05-35-5156a16_450_300.jpg', '0', '1', '55', null, '2015-12-31 00:05:46', null);
INSERT INTO `project_case` VALUES ('5', 'asas', '13806013025', 'addreass', 'action anem modeifit', 'design name', '商店', 'name', '560', null, null, null, null, null, '0', 'asas', '13', '<p>asasa</p><p>asdasd</p><p><img src=\"/Uploads/2016-01-02/08-30-16-638fc16_450_300.jpg\"/></p><p>asdfasd</p><p>asdasd</p><p><img src=\"/Uploads/2016-01-02/08-30-16-638fc16_450_300.jpg\"/></p>', '2', null, '/Uploads/2016-01-02/08-30-16-638fc16_450_300.jpg', '0', '1', '25', null, null, '2016-01-02 20:32:06');
INSERT INTO `project_case` VALUES ('6', '中国名修正', '13800000000', '中国名修正', '中国名修正中国名修正', '中国名修正中国名修正', '住宅', '明区宜兰路世纪大厦网', '560', '大理石', '2m*2m', '大厅地板', '560/平方米', '美国', '0', '中国名修正中国名修正中国名修正', '16', '<p style=\"text-align: left;\">中国名修正中国名修正中国名修正</p><p style=\"text-align: left;\">中国名修正中国名修正</p><h1>中国名修正中国名修正</h1><p><br/></p><p><img src=\"/Uploads/2016-01-02/09-19-04-5439749_450_300.jpg\"/></p><p style=\"text-align: left;\">中国名修正中国名修正中国名修正中国名修正中国名修正</p><p style=\"text-align: left;\"><br/></p><p><img src=\"/Uploads/2016-01-02/09-19-12-197e1b5_450_300.jpg\"/></p><p><br/></p><h4 style=\"text-align: right;\">中国名修正</h4><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\">中国名修正</p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\">中国名修正</p><p style=\"text-align: left;\">中国名修正</p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\">中国名修正</p><p style=\"text-align: left;\">中国名修正</p>', '3', null, '/Uploads/2016-01-02/09-19-04-5439749_450_300.jpg', '0', '1', '271', null, null, '2016-01-06 22:37:03');

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
INSERT INTO `sequence` VALUES ('city', '658');
INSERT INTO `sequence` VALUES ('company', '12');
INSERT INTO `sequence` VALUES ('file', '50');
INSERT INTO `sequence` VALUES ('operate_log', '37');
INSERT INTO `sequence` VALUES ('project_case', '6');
INSERT INTO `sequence` VALUES ('sys_dictionary', '305');
INSERT INTO `sequence` VALUES ('sys_user', '1');
INSERT INTO `sequence` VALUES ('user', '1');

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('1', '室内设计', '室内设计', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('2', '建筑设计', '建筑设计', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('3', '房产开发', '房产开发', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('4', '装饰装修', '装饰装修', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('5', '家具软装', '家具软装', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('6', '建筑材料', '建筑材料', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('7', '环保节能', '环保节能', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('8', '智能建筑', '智能建筑', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('9', '市政工程', '市政工程', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('10', '建筑工程', '建筑工程', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('11', '机电工程', '机电工程', '公司类型', null, null);
INSERT INTO `sys_dictionary` VALUES ('12', '室内设计', '室内设计', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('13', '建筑设计', '建筑设计', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('14', '房产开发', '房产开发', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('15', '装饰装修', '装饰装修', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('16', '家具软装', '家具软装', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('17', '建筑材料', '建筑材料', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('18', '环保节能', '环保节能', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('19', '智能建筑', '智能建筑', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('20', '市政工程', '市政工程', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('21', '建筑工程', '建筑工程', '文章标签', null, null);
INSERT INTO `sys_dictionary` VALUES ('22', '机电工程', '机电工程', '文章标签', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `Id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(124) DEFAULT NULL,
  `hash_code` varchar(20) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'KeV6m9TkL9xHewfyL6Rr1jzuKPM=', null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `qq_number` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `password` varchar(124) DEFAULT NULL,
  `hash_code` varchar(20) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL COMMENT '字典表的ID',
  `is_admin` int(1) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `login_token` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lifang', '李总', null, '13800000000', '13800000000', 'xxx@yongtexin.com', null, null, null, null, '1', '1', null, null, null, null);
