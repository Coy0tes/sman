/*
Navicat MySQL Data Transfer

Source Server         : xiaochaoo
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : sman

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-10-26 15:54:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appoint_record
-- ----------------------------
DROP TABLE IF EXISTS `appoint_record`;
CREATE TABLE `appoint_record` (
  `id` varchar(64) NOT NULL,
  `yybh` varchar(64) DEFAULT NULL COMMENT '预约号',
  `yyr` varchar(64) DEFAULT NULL COMMENT '预约人ID',
  `yyrname` varchar(64) DEFAULT NULL COMMENT '预约人',
  `yyrdh` varchar(255) DEFAULT NULL COMMENT '预约人电话',
  `cardid` varchar(64) DEFAULT NULL COMMENT '预约卡',
  `siteid` varchar(64) DEFAULT NULL COMMENT '预约场馆ID',
  `sitename` varchar(200) DEFAULT NULL COMMENT '预约场馆',
  `yysj` varchar(30) DEFAULT NULL COMMENT '预约时间',
  `yyqrcode` varchar(200) DEFAULT NULL COMMENT '预约二维码',
  `status` varchar(64) DEFAULT NULL COMMENT '预约状态',
  `sysj` varchar(30) DEFAULT NULL COMMENT '使用时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆预约管理';

-- ----------------------------
-- Records of appoint_record
-- ----------------------------
INSERT INTO `appoint_record` VALUES ('123', 'yybh123', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '15266666666', '3d9503bea5d141b9bb775042c48f87ec', '9ffd57fc9d084eb9b8d13af536b0d957', 'MESHOW健康体重', '2017-10-20', null, '0', null, null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('36d660f813a246f28466ef31d217b8db', '0712519', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '15266666666', 'a5fb64ada02e43849e1edffdb28ecdba', 'e6180d6f3fc04588bd03505acb344b7f', '泰华', '2017-10-17', null, '1', '2017-10-19', null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('4af032132bbc4ec691cbc672a1dd7380', '0712515', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '15266666666', '20cf331e487349d4904c1687b5735c54', '9eb027dfe86b4b7d91e87406f24882d1', '激情乒乓球', '2017-10-20', null, '0', null, null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('5506bbb930cf4722a38151a07f84efed', '0712520', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '15266666666', '0ba67d5c465e484db0b4bbf1a48069d3', '9ffd57fc9d084eb9b8d13af536b0d957', 'MESHOW健康体重', '2017-10-18', null, '1', '2017-10-19', null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('7d9e1599743743ec894c16db6c32d441', '0712517', '3f7266adb941467b93b25406004a819c', '比克', '15266666666', '94e72406785e408db5e039f619a26378', '9eb027dfe86b4b7d91e87406f24882d1', '激情乒乓球', '2017-10-18', null, '1', '2017-10-19', null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('83e6c853cf12433ea256e65b075e9cd0', '0712514', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '15266666666', 'c50e183acfdf4eaeaf95c0e0b93c5687', 'e6180d6f3fc04588bd03505acb344b7f', '泰华', '2017-10-20', null, '0', null, null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('892997ee4a494ce3a2649f676b1d4f94', '0712521', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '15266666666', 'ebab22fa544d4888803cf4677e1a037d', '9ffd57fc9d084eb9b8d13af536b0d957', 'MESHOW健康体重', '2017-10-18', null, '1', '2017-10-19', null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('cb59770a6f524c528d25a8e0f6b10f02', '0712522', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', '15266666666', '0e86663e0c6d492b9e7890ba0df7100f', 'e6180d6f3fc04588bd03505acb344b7f', '泰华', '2017-10-18', null, '1', '2017-10-20', null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('d93afa7ab0ad4d0c948b3cba89d7b277', '0712513', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '15266666666', 'af29a0cbc5064d95a982299fae90a135', 'e6180d6f3fc04588bd03505acb344b7f', '泰华', '2017-10-20', null, '0', null, null, null, null, null, null, '0');
INSERT INTO `appoint_record` VALUES ('f5e01225b582403e8a9de337903a86c9', '0712516', '34c18779a80349c3a7090886a8dc83ac', '库林', '15266666666', '463dff6ff76146f493554ce332dc6bc8', '9eb027dfe86b4b7d91e87406f24882d1', '激情乒乓球', '2017-10-20', null, '0', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for bonus_send
-- ----------------------------
DROP TABLE IF EXISTS `bonus_send`;
CREATE TABLE `bonus_send` (
  `id` varchar(64) NOT NULL,
  `classesid` varchar(64) DEFAULT NULL COMMENT '班级',
  `weekbegin` varchar(30) DEFAULT NULL COMMENT '周日期起',
  `weekend` varchar(30) DEFAULT NULL COMMENT '周日期止',
  `ffrid` varchar(64) DEFAULT NULL COMMENT '发放人ID',
  `ffrname` varchar(64) DEFAULT NULL COMMENT '发放人',
  `jine` decimal(10,2) DEFAULT NULL COMMENT '发放金额',
  `trancid` varchar(64) DEFAULT NULL COMMENT '交易记录ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖金发放记录';

-- ----------------------------
-- Records of bonus_send
-- ----------------------------
INSERT INTO `bonus_send` VALUES ('1a4334c24584444bb0938ba82263345e', 'fc559f553f9246fb9009cfb0e36e7497', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '1', '超管1', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('3466861d32c94d378484a0c203caa42b', 'f279b359109a4970bf66fe8453269d9c', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '1', '超管', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('41383d29e5664892bca9d953cefbd375', '4529133b3a884521b633a1312c44c849', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '1', '超管', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('4e6eaebad2ee469cb87f6e03f4fed9e1', 'f279b359109a4970bf66fe8453269d9c', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '1', '超管', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('4ed5fe40ad2f458d8cb4a73523cd2166', '4529133b3a884521b633a1312c44c849', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('736fc767bb374440b06afbfcb1fb4cd5', '4529133b3a884521b633a1312c44c849', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('761258e388714aee94df4e0477e6b847', 'f279b359109a4970bf66fe8453269d9c', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('b3d28e1cc4504c8086dfa98030327b03', 'f279b359109a4970bf66fe8453269d9c', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('c42c24fbbfd14ee1b11a3791682aef99', 'fc559f553f9246fb9009cfb0e36e7497', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('d5facf36ad814c8ca838984f5f5b46bd', '4529133b3a884521b633a1312c44c849', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');
INSERT INTO `bonus_send` VALUES ('dc7d890be8f240148b014e4373cac2fe', 'f279b359109a4970bf66fe8453269d9c', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '90.00', null, null, '2017-10-20 11:54:24', null, null, null, '0');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` varchar(64) NOT NULL,
  `cardbh` varchar(100) DEFAULT NULL COMMENT '卡号',
  `pkgid` varchar(64) DEFAULT NULL COMMENT '所属套餐',
  `ckr` varchar(64) DEFAULT NULL COMMENT '持卡人ID',
  `ckrname` varchar(200) DEFAULT NULL COMMENT '持卡人',
  `gksj` varchar(30) DEFAULT NULL COMMENT '购卡时间',
  `gkjine` decimal(10,2) DEFAULT NULL COMMENT '购卡金额',
  `maxusenum` int(10) DEFAULT NULL COMMENT '最大使用次数',
  `sycs` int(10) DEFAULT NULL COMMENT '使用次数',
  `maxuserange` decimal(10,2) DEFAULT NULL COMMENT '最大使用范围(千米)',
  `gklng` decimal(15,10) DEFAULT NULL COMMENT '购卡位置经度',
  `gklat` decimal(15,10) DEFAULT NULL COMMENT '购卡位置纬度',
  `gklabel` varchar(200) DEFAULT NULL COMMENT '购卡位置名称',
  `orderid` varchar(64) DEFAULT NULL COMMENT '所属订单',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='套餐卡管理';

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('0ba67d5c465e484db0b4bbf1a48069d3', '201710205219', '0d99593e4d1947fc86e73a9bdec42287', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('0e86663e0c6d492b9e7890ba0df7100f', '201710205221', '9bf352e08c6f4f1a8994f83171eb79f2', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('20cf331e487349d4904c1687b5735c54', '201710205215', '9ab3b15e0aab4ce299723ddc8d708352', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('3d9503bea5d141b9bb775042c48f87ec', '201710205212', '9ab3b15e0aab4ce299723ddc8d708352', '34c18779a80349c3a7090886a8dc83ac', '库林', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, '2017-10-20 10:56:52', null, null, null, '0');
INSERT INTO `card` VALUES ('463dff6ff76146f493554ce332dc6bc8', '201710205216', '9ab3b15e0aab4ce299723ddc8d708352', '3f7266adb941467b93b25406004a819c', '比克', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('482cd5ec459447fd88dc941d7aaf02ef', '201710201125388190', '9ab3b15e0aab4ce299723ddc8d708352', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '2017-10-20', '23.00', '2', '2', '5.00', null, null, '', null, '1', '2017-10-20 11:25:56', '1', '2017-10-20 11:25:56', null, '0');
INSERT INTO `card` VALUES ('4afc636a72c64398a1c660f0ca3a4a1d', '201710205225', '9bf352e08c6f4f1a8994f83171eb79f2', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('528cc80b6abe4ca0a50f1a47b33642f7', '201710205223', '9bf352e08c6f4f1a8994f83171eb79f2', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('53284f350bc64adc918cf69c201a0bf8', '201710205224', '9bf352e08c6f4f1a8994f83171eb79f2', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('94e72406785e408db5e039f619a26378', '201710205217', '0d99593e4d1947fc86e73a9bdec42287', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('a189e39ba6a04f1796ab78bd7f5d15ea', '201710205226', '9bf352e08c6f4f1a8994f83171eb79f2', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('a5fb64ada02e43849e1edffdb28ecdba', '201710205218', '0d99593e4d1947fc86e73a9bdec42287', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('af29a0cbc5064d95a982299fae90a135', '201710205213', '9ab3b15e0aab4ce299723ddc8d708352', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('c50e183acfdf4eaeaf95c0e0b93c5687', '201710205214', '9ab3b15e0aab4ce299723ddc8d708352', '34c18779a80349c3a7090886a8dc83ac', '库林', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('dfe732c5f89444979a4838d63fe82af1', '201710205222', '9bf352e08c6f4f1a8994f83171eb79f2', '3f7266adb941467b93b25406004a819c', '比克', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');
INSERT INTO `card` VALUES ('ebab22fa544d4888803cf4677e1a037d', '201710205220', '9bf352e08c6f4f1a8994f83171eb79f2', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '2017-10-20 10:56:52', '100.00', '5', '4', '5.00', '155.3254100000', '136.2365410000', '西大街', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for card_consume_record
-- ----------------------------
DROP TABLE IF EXISTS `card_consume_record`;
CREATE TABLE `card_consume_record` (
  `id` varchar(64) NOT NULL,
  `appointid` varchar(64) DEFAULT NULL COMMENT '预约ID',
  `cardid` varchar(64) DEFAULT NULL COMMENT '卡ID',
  `syrid` varchar(64) DEFAULT NULL COMMENT '使用人ID',
  `syrname` varchar(64) DEFAULT NULL COMMENT '使用人',
  `sysj` varchar(30) DEFAULT NULL COMMENT '使用时间',
  `siteid` varchar(64) DEFAULT NULL COMMENT '使用场馆',
  `cardsycs` int(10) DEFAULT NULL COMMENT '套餐卡剩余次数',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='套餐卡消费记录';

-- ----------------------------
-- Records of card_consume_record
-- ----------------------------
INSERT INTO `card_consume_record` VALUES ('0072c33d21e241b9a1116a32c94166f0', '0712514', 'c50e183acfdf4eaeaf95c0e0b93c5687', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '2017-10-20', '9eb027dfe86b4b7d91e87406f24882d1', '1', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('3d93acaf3eda47caa56b28f78904efd9', '0712520', '0ba67d5c465e484db0b4bbf1a48069d3', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '2017-10-18', '9ffd57fc9d084eb9b8d13af536b0d957', '2', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('5b4413dfb6294cbe8643837095aacd76', '0712515', '20cf331e487349d4904c1687b5735c54', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '2017-10-20', '9eb027dfe86b4b7d91e87406f24882d1', '2', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('61e1794b9e004d518b75b7ee41e6994e', '0712517', '94e72406785e408db5e039f619a26378', '3f7266adb941467b93b25406004a819c', '比克', '2017-10-18', 'e6180d6f3fc04588bd03505acb344b7f', '1', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('72835c4961e14e84ae57127170e5b65f', '0712516', '463dff6ff76146f493554ce332dc6bc8', '34c18779a80349c3a7090886a8dc83ac', '库林', '2017-10-20', 'e6180d6f3fc04588bd03505acb344b7f', '1', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('7cbaab1987d44dda9a522ab5633e2078', '0712513', 'af29a0cbc5064d95a982299fae90a135', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '2017-10-20', 'e6180d6f3fc04588bd03505acb344b7f', '1', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('a9833087531a42ab908a843005a57065', '123', 'dfe732c5f89444979a4838d63fe82af1', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '2017-10-18', 'e6180d6f3fc04588bd03505acb344b7f', '2', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('ae487a322a5349f5a84ac5306897b9e7', '0712521', 'ebab22fa544d4888803cf4677e1a037d', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '2017-10-18', 'e6180d6f3fc04588bd03505acb344b7f', '1', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('b070359719d2498981cada0514be5611', '0712522', '0e86663e0c6d492b9e7890ba0df7100f', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', '2017-10-18', 'e6180d6f3fc04588bd03505acb344b7f', '1', null, null, null, null, null, '0');
INSERT INTO `card_consume_record` VALUES ('e9e0f6a57ed643b4934fbd56bbea8401', '0712519', 'a5fb64ada02e43849e1edffdb28ecdba', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '2017-10-18', '9ffd57fc9d084eb9b8d13af536b0d957', '2', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` varchar(64) NOT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `imgurl` varchar(500) DEFAULT NULL COMMENT '跑班头像',
  `classtype` varchar(64) DEFAULT NULL COMMENT '班级类型',
  `mrgls` varchar(64) DEFAULT NULL COMMENT '每日公里数',
  `mzcq` varchar(64) DEFAULT NULL COMMENT '每周出勤',
  `mrqyj` varchar(64) DEFAULT NULL COMMENT '每日契约金',
  `moneypool` decimal(10,2) DEFAULT NULL COMMENT '奖金池',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级管理';

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('3f0504c9fcf2445bb8dc36e073dd501a', '路飞', '/sman/userfiles/1/images/classes/classes/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '0', '0', '0', '1', null, '1', '2017-10-15 20:18:05', '1', '2017-10-20 11:31:58', null, '0');
INSERT INTO `classes` VALUES ('4529133b3a884521b633a1312c44c849', '奔跑班', '/sman/userfiles/1/images/classes/classes/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '1', '2.3', '1', '2.3', null, '1', '2017-10-18 17:30:49', '1', '2017-10-24 16:58:55', null, '0');
INSERT INTO `classes` VALUES ('f279b359109a4970bf66fe8453269d9c', '兔子班', '/sman/userfiles/1/images/classes/classes/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '1', '2', '2', '2', null, '1', '2017-10-18 17:29:45', '1', '2017-10-18 17:29:45', null, '0');
INSERT INTO `classes` VALUES ('fc559f553f9246fb9009cfb0e36e7497', '练肌班', '/sman/userfiles/1/images/classes/classes/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '3', '3.5', '2', '400.05', null, '1', '2017-10-18 17:30:25', '1', '2017-10-24 16:59:16', null, '0');

-- ----------------------------
-- Table structure for classes_member
-- ----------------------------
DROP TABLE IF EXISTS `classes_member`;
CREATE TABLE `classes_member` (
  `id` varchar(64) NOT NULL,
  `memberid` varchar(64) DEFAULT NULL COMMENT '报名人id',
  `membername` varchar(64) DEFAULT NULL COMMENT '报名人',
  `classesid` varchar(64) DEFAULT NULL COMMENT '班级id',
  `classesname` varchar(200) DEFAULT NULL COMMENT '班级',
  `lxsj` varchar(30) DEFAULT NULL COMMENT '联系手机',
  `bmsj` varchar(30) DEFAULT NULL COMMENT '报名时间',
  `signupid` varchar(64) DEFAULT NULL COMMENT '报名id',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级会员管理';

-- ----------------------------
-- Records of classes_member
-- ----------------------------
INSERT INTO `classes_member` VALUES ('52d5f9fa7bca40d4979086167f3a6df9', 'a87b3710583c2c04b71f205ce81e053bc4d775d01df6947e26e443ef', '哈哈', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '15248862806', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('5b90a105774b4ff0829559825e8a6ef9', 'b0ae888a10dc607d0de7c36a1a1af76f9e082dc4ef859957ff76c5db', '武天', '4529133b3a884521b633a1312c44c849', '奔跑班', '15220686361', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('804f8498a6594b1791a22439a06152f3', 'eb4322b211548a6f9ca57b02ee0bffe7de2aa8f17662c58c2455cf47', '孙悟空', 'fc559f553f9246fb9009cfb0e36e7497', '练肌班', '15220061441', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('94e9d1abe6ea40ba8a9bb78a33dd6b80', '62324ae9fb56f7badcd181e3366e424fef361176f1ab4552c82d251d', '库林', '4529133b3a884521b633a1312c44c849', '奔跑班', '15278800432', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('9643b61846084d12a9d4b249f5d0442f', '69238a9ebc76b6dae5e177d08f1603391c3891c9523c53bc331111b0', '王大锤', 'fc559f553f9246fb9009cfb0e36e7497', '练肌班', '15248542402', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('9fe754269cad4e37b54326f42af14d8b', 'abfeaa25034b7304ac71d7e266e4597af11a91659323ce93fbce0669', '比鲁斯', '4529133b3a884521b633a1312c44c849', '奔跑班', '15237293181', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('b743fefa8a6244e3a072f0e99b9a3a98', '32aa40b7d9ad36c34a3b420f11d17886271eaee1a35d197f1ff313bf', '比克', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '15227786557', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('c76d69a04ad24a91974bfa3bc81f62f9', 'a097b38181d21844d836a9632c09e459264ca5ea8f0567e520b3fd07', '维斯', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '15295380927', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('e902065532e5486a9d6fbd42f9178f49', 'cac10cf7b40949d3073313d700e702547c0b7b3c8b69d714f0e09d89', '张大春', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '15218141363', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');
INSERT INTO `classes_member` VALUES ('f2507f9711944689921c41a800f20ed0', 'ba2cac57349cdcb6a93010320bb3f459862fc6a5d828a1d3c826a939', '琪琪', '4529133b3a884521b633a1312c44c849', '奔跑班', '15296773064', '2017-10-18 17:42:19', null, '1', '2017-10-18 17:42:19', null, null, null, '0');

-- ----------------------------
-- Table structure for classes_signup
-- ----------------------------
DROP TABLE IF EXISTS `classes_signup`;
CREATE TABLE `classes_signup` (
  `id` varchar(64) NOT NULL,
  `bmbh` varchar(64) DEFAULT NULL COMMENT '报名编号',
  `bmr` varchar(64) DEFAULT NULL COMMENT '报名人ID',
  `bmrname` varchar(64) DEFAULT NULL COMMENT '报名人',
  `classesid` varchar(64) DEFAULT NULL COMMENT '报名班级ID',
  `classesname` varchar(200) DEFAULT NULL COMMENT '报名班级',
  `ksrq` varchar(30) DEFAULT NULL COMMENT '开始日期',
  `bmzs` int(10) DEFAULT NULL COMMENT '报名周数',
  `lxsj` varchar(15) DEFAULT NULL COMMENT '联系手机',
  `qyj` decimal(10,2) DEFAULT NULL COMMENT '契约金',
  `yedk` decimal(10,2) DEFAULT NULL COMMENT '余额抵扣',
  `sjynqyj` decimal(10,2) DEFAULT NULL COMMENT '实际缴纳契约金',
  `trancid` varchar(64) DEFAULT NULL COMMENT '交易流水ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报名管理';

-- ----------------------------
-- Records of classes_signup
-- ----------------------------
INSERT INTO `classes_signup` VALUES ('0ee66e67eba6405bb15f0252f26ca39e', '201710181750469', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', 'fc559f553f9246fb9009cfb0e36e7497', '练肌班', '2017-10-11', '3', '15260637805', '100.00', '0.00', '100.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('3339200728b04be6a4fccfca89d71fb7', '201710181750466', '4127a5ceb078494bbc392c35c9b768b9', '张大春', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '2017-10-11', '3', '15298634423', '60.00', '0.00', '60.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('3fea49b98ae84c9d93c72596572fd186', '201710181750464', '3f7266adb941467b93b25406004a819c', '比克', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '2017-10-11', '3', '15225185593', '60.00', '0.00', '60.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('4ceb4eb6437c46f7aea9c253b42649b7', '201710181750463', '34c18779a80349c3a7090886a8dc83ac', '库林', '4529133b3a884521b633a1312c44c849', '奔跑班', '2017-10-11', '3', '15231837513', '30.00', '0.00', '30.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('56819b9affe3465bb5ea2d3bff61790c', '201710181750461', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '4529133b3a884521b633a1312c44c849', '奔跑班', '2017-10-11', '3', '15226604283', '30.00', '0.00', '30.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('8ff13f48d3954d7abe5bd632046c8442', '201710181750465', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '2017-10-11', '3', '15253207425', '60.00', '0.00', '60.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('b7530e8889224467b8f2c530500803d5', '201710181750462', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '4529133b3a884521b633a1312c44c849', '奔跑班', '2017-10-11', '3', '15296572944', '30.00', '0.00', '30.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('ecc6194ec11a48a3bae576fbef9f07d2', '201710181750460', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '4529133b3a884521b633a1312c44c849', '奔跑班', '2017-10-11', '3', '15234968409', '30.00', '0.00', '30.00', null, null, '2017-10-18 17:50:46', null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('f349daa906d34971bd3f709d4a69afc7', '201710181750468', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', 'fc559f553f9246fb9009cfb0e36e7497', '练肌班', '2017-10-11', '3', '15240470393', '100.00', '0.00', '100.00', null, null, null, null, null, null, '0');
INSERT INTO `classes_signup` VALUES ('f696e3681ec445ffa25dcaa203044506', '201710181750467', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', 'f279b359109a4970bf66fe8453269d9c', '兔子班', '2017-10-11', '3', '15286811878', '60.00', '0.00', '60.00', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for classes_signup_weeks
-- ----------------------------
DROP TABLE IF EXISTS `classes_signup_weeks`;
CREATE TABLE `classes_signup_weeks` (
  `id` varchar(64) NOT NULL,
  `mainid` varchar(64) DEFAULT NULL COMMENT '报名id',
  `weektype` varchar(64) DEFAULT NULL COMMENT '周类型',
  `weeks` int(10) DEFAULT NULL COMMENT '周数',
  `weekbegin` varchar(30) DEFAULT NULL COMMENT '开始日期',
  `weekend` varchar(30) DEFAULT NULL COMMENT '截止日期',
  `dkts` int(10) DEFAULT NULL COMMENT '每周打卡天数',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报名周数管理';

-- ----------------------------
-- Records of classes_signup_weeks
-- ----------------------------
INSERT INTO `classes_signup_weeks` VALUES ('1e2ea3c23eab48799a815e9767828ec8', 'f349daa906d34971bd3f709d4a69afc7', '插班周', '3', '2017-10-11 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('2ba0c3913d314d5ca3a62f4c73e1b137', '56819b9affe3465bb5ea2d3bff61790c', '正常周', '3', '2017-10-09 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('2d385e32b65744c995fbf8b3ca9acf59', '0ee66e67eba6405bb15f0252f26ca39e', '正常周', '3', '2017-10-09 09:59:45', '2017-10-29 09:59:51', '3', null, '2017-10-16 09:59:45', null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('33895f448ba24a54b14fea5ab5561d42', '3fea49b98ae84c9d93c72596572fd186', '正常周', '3', '2017-10-09 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('48969e57c3c64967ac52ab1c7956e7e1', 'b7530e8889224467b8f2c530500803d5', '插班周', '3', '2017-10-11 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('4b39661d541746f6a562ef1c55371244', '3339200728b04be6a4fccfca89d71fb7', '正常周', '3', '2017-10-09 09:59:45', '2017-10-29 09:59:51', '3', null, '2017-10-29 09:59:51', null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('4d6d44e072884fa9af5aa4eac2e54ed4', '4ceb4eb6437c46f7aea9c253b42649b7', '正常周', '3', '2017-10-09 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('5f934494e1344af0aadcfbe5b2f19fa5', 'f349daa906d34971bd3f709d4a69afc7', '插班周', '3', '2017-10-16 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('789239788ad74f9ea6f8ce2d5b75e3c0', 'b7530e8889224467b8f2c530500803d5', '插班周', '3', '2017-10-16 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('7e9db921c4ce47b88c888d406abc6352', 'f696e3681ec445ffa25dcaa203044506', '插班周', '3', '2017-10-11 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('cfc2bb05de69439c9574884ea6049ca0', '8ff13f48d3954d7abe5bd632046c8442', '插班周', '3', '2017-10-11 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('ddd5fcf850574d70b656dda867df2c79', '8ff13f48d3954d7abe5bd632046c8442', '插班周', '3', '2017-10-16 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('e0de66826e224c099a6b37187b047eb8', 'ecc6194ec11a48a3bae576fbef9f07d2', '插班周', '3', '2017-10-11 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('e9041d1fb5804a62b358e85d4dbc4564', 'ecc6194ec11a48a3bae576fbef9f07d2', '插班周', '3', '2017-10-16 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');
INSERT INTO `classes_signup_weeks` VALUES ('eab366ec7d864d7a8185e57e73f16e95', 'f696e3681ec445ffa25dcaa203044506', '插班周', '3', '2017-10-16 09:59:45', '2017-10-29 09:59:51', '3', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for codes
-- ----------------------------
DROP TABLE IF EXISTS `codes`;
CREATE TABLE `codes` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `codes` varchar(64) DEFAULT NULL COMMENT '兑换码',
  `ffrqq` varchar(30) DEFAULT NULL COMMENT '发放日期起',
  `ffrqz` varchar(30) DEFAULT NULL COMMENT '发放日期止',
  `yxrqq` varchar(30) DEFAULT NULL COMMENT '有效日期起',
  `yxrqz` varchar(30) DEFAULT NULL COMMENT '有效日期止',
  `status` varchar(64) DEFAULT NULL COMMENT '状态',
  `lyr` varchar(64) DEFAULT NULL COMMENT '领用人',
  `lysj` varchar(30) DEFAULT NULL COMMENT '领用时间',
  `sysj` varchar(30) DEFAULT NULL COMMENT '使用时间',
  `orderid` varchar(64) DEFAULT NULL COMMENT '订单ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑换码';

-- ----------------------------
-- Records of codes
-- ----------------------------
INSERT INTO `codes` VALUES ('1060bcbe70a84df8bb6debfa710f9dde', '20171019112731834', '2017-10-19', '2017-10-19', '2017-10-19', '2017-10-19', '0', '', null, null, null, '1', '2017-10-19 11:27:41', '1', '2017-10-19 11:27:41', null, '0');
INSERT INTO `codes` VALUES ('220432dec7c84e07ac3a7a50f6a27b13', '20171016164955116', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-12', '1', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '2017-10-19 11:26:54', null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-19 11:26:55', null, '0');
INSERT INTO `codes` VALUES ('3588dd41150b41f3a1dcc7495be3470e', '20171016164955120', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '0', null, null, null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:49:55', null, '0');
INSERT INTO `codes` VALUES ('42e7b327f35a42b8b5cdad1f633ef795', '20171016164955089', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '0', null, null, null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:49:55', null, '0');
INSERT INTO `codes` VALUES ('53a89e2f9b1d4f479dc9fd3c6a56f046', '6688', '2017-10-15', '2017-10-16', '2017-10-20', '2017-10-31', '1', '3fb6f2f82e5548dda1f3fb75c90a802b', '2017-10-16 17:32:49', null, null, '1', '2017-10-15 20:15:01', '1', '2017-10-16 17:32:50', null, '0');
INSERT INTO `codes` VALUES ('593b4ee8c88f43dbb053961486f046c1', '20171016164955078', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '1', '15b3376c6aeb4e58b66892ec526db037', '2017-10-19 11:24:42', null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-19 11:24:42', null, '0');
INSERT INTO `codes` VALUES ('7943989115fc4c4ba68bed36949b6e71', '20171016164955107', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '1', '4127a5ceb078494bbc392c35c9b768b9', '2017-10-16 16:50:21', null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:50:22', null, '0');
INSERT INTO `codes` VALUES ('79d9bde481bd4bb384e5b7412d6c1eed', '20171016164955112', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '1', 'ce744b24949d4845bcbc23c7fa2295c4', '2017-10-16 16:50:13', null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:50:14', null, '0');
INSERT INTO `codes` VALUES ('9513a0cf8be34ad28fcde0814a0e0112', '20171016164955102', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '0', null, null, null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:49:55', null, '0');
INSERT INTO `codes` VALUES ('9659c872dc2c4574aa753298ee93c3c6', '20171016164955099', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '0', null, null, null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:49:55', null, '0');
INSERT INTO `codes` VALUES ('a8cf916ed85247c0941dc0233fe4cf80', '20171016164955085', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '1', '3fb6f2f82e5548dda1f3fb75c90a802b', '2017-10-16 16:50:27', null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:50:28', null, '0');
INSERT INTO `codes` VALUES ('a90242df7b8e458a84a3b3b4ff360f96', '20171016164955094', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '0', null, null, null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:49:55', null, '0');
INSERT INTO `codes` VALUES ('b212e63572cb48beb872a6ca286ee33d', '20171016164955124', '2017-10-11', '2017-10-11', '2017-10-11', '2017-10-11', '0', null, null, null, null, '1', '2017-10-16 16:49:55', '1', '2017-10-16 16:49:55', null, '0');
INSERT INTO `codes` VALUES ('faa1f76a2c16457d8602d6ac30465f2a', '20171019112750632', '2017-10-19', '2017-10-19', '2017-10-19', '2017-10-19', '1', '34c18779a80349c3a7090886a8dc83ac', '2017-10-19 11:28:03', null, null, '1', '2017-10-19 11:28:03', '1', '2017-10-19 11:28:03', null, '0');

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES ('000fbb2eef694532ab9df8c83632cba6', null, 'curd', 'com.thinkgem.jeesite.modules', 'test', 'test', 'test', 'test', 'test', '547be5f2504d4da8bf971ee0db0b625f', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:30:28', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:30:51', null, '0');
INSERT INTO `gen_scheme` VALUES ('0882a158d92b4aa2937694beea314486', null, 'curd', 'com.jeeplus.modules', 'site', '', '场馆管理', '场馆信息', 'zhaoliangdong', '4e2edf872fba4bd9a2d5e4ee382806d2', '1', '2017-10-14 17:02:23', '1', '2017-10-14 17:02:23', null, '0');
INSERT INTO `gen_scheme` VALUES ('0f72c37d27d5429a9a34958133d99568', null, 'curd', 'com.jeeplus.modules', 'siteuser', '', '场馆管理员', '管理员', 'zhaoliangdong', '8a5b3f53419a4f7fb356e6c7a573847e', '1', '2017-04-18 17:32:56', '1', '2017-10-15 11:47:03', null, '0');
INSERT INTO `gen_scheme` VALUES ('11c16185e21a473b8dd961dfcddaa4c5', null, 'treeTable', 'com.jeeplus.modules', 'test', 'tree', '组织机构', '机构', 'liugf', 'bae082dbd74a4ca381c0ad24c886f991', '1', '2016-01-07 22:14:21', '1', '2016-10-04 23:19:02', null, '0');
INSERT INTO `gen_scheme` VALUES ('2917758f13eb4984934b2cbc9f94dc81', null, 'curd_many', 'com.thinkgem.jeesite', 'test', '', 'test', 'test', 'test', '73326f175c2d4a63b2d89820a79ba2eb', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:45:23', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-04 11:02:09', null, '0');
INSERT INTO `gen_scheme` VALUES ('2a85585d9a504adfa91b4ce612844c4e', null, 'treeTable', 'com.jeeplus.modules', 'sitetype', '', '场馆分类管理', '分类', 'zhaoliangdong', '87e1792b2bbf45aebad9840c7a2c32b8', '1', '2017-10-14 16:22:23', '1', '2017-10-14 16:23:14', null, '0');
INSERT INTO `gen_scheme` VALUES ('46ede957ebc64379a72353c8b4bc5d8e', null, 'curd', 'com.jeeplus.modules', 'moneypoolrecord', '', '奖金池记录', '奖金池记录', 'zhaoliangdong', 'd05a55ef0add4e4e999766f9c86763ef', '1', '2017-10-18 17:56:08', '1', '2017-10-18 17:56:08', null, '0');
INSERT INTO `gen_scheme` VALUES ('4b3cb5db16b5452fbb6b1c42b6b69a68', null, 'curd', 'com.jeeplus.modules', 'cardconsumerecord', '', '套餐卡消费记录', '消费记录', 'zhaoliangdong', 'e6e430ffb4c5485ea0561a5925589952', '1', '2017-10-18 13:53:26', '1', '2017-10-18 13:53:26', null, '0');
INSERT INTO `gen_scheme` VALUES ('505b3e23c7234df79c14c0dce24af75a', null, 'curd', 'com.thinkgem.jeesite.modules', 'test', 'test', 'test', 'test', 'test', '7612365ac0c645008661aaf479c45b82', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:27:12', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 20:28:48', null, '0');
INSERT INTO `gen_scheme` VALUES ('8d1678bcaca24c21a602c1324674775a', null, 'curd', 'com.jeeplus.modules', 'moneybackrecord', '', '契约金返还记录', '返还记录', 'zhaoliangdong', '7d5c4ab34b774817b7ded69e4de557af', '1', '2017-10-18 17:55:27', '1', '2017-10-18 17:55:27', null, '0');
INSERT INTO `gen_scheme` VALUES ('a93238d2954a4da0a0a7a3c551803913', null, 'curd_many', 'com.jeeplus.modules', 'test', 'onetomany', '票务代理', '票务代理', 'liugf', 'e08d6fbc393047748a2d45c98be42676', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:46:09', '1', '2016-10-04 23:35:09', null, '0');
INSERT INTO `gen_scheme` VALUES ('bc0540a527f742cd8d6d2aaa1c8cb7ba', null, 'curd', 'com.jeeplus.modules', 'test', 'validation', '测试校验功能', '测试校验', 'lgf', '5c051a049fa64f82a6296e10517cc8f9', '1', '2016-10-01 22:43:32', '1', '2016-10-05 00:26:59', null, '0');
INSERT INTO `gen_scheme` VALUES ('db1fe1c6f68244c7aed1cc535db4d84c', null, 'curd', 'com.jeeplus.modules', 'member', '', '会员管理', '会员信息', 'zhaoliangdong', 'f7f54cc37ba54dca811295066278d13b', '1', '2017-10-15 17:21:22', '1', '2017-10-15 17:21:22', null, '0');
INSERT INTO `gen_scheme` VALUES ('e967e84a135944b6b47621534acf63c6', null, 'curd', 'com.jeeplus.modules', 'bonussend', '', '奖金发放记录', '发放记录', 'zhaoliangdong', '250b3940a6bd482fa0a7915eb14cc34d', '1', '2017-10-18 15:22:13', '1', '2017-10-18 15:22:13', null, '0');
INSERT INTO `gen_scheme` VALUES ('ea1c9201f72549bb90b5eb457e3abcc1', null, 'curd', 'com.jeeplus.modules', 'appointrecord', '', '预约管理', '预约信息', 'zhaoliangdong', '227cbb16070f441882e8c21961f24eb4', '1', '2017-10-16 17:40:47', '1', '2017-10-16 17:40:47', null, '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `issync` varchar(45) DEFAULT NULL COMMENT '同步',
  `table_type` varchar(45) DEFAULT NULL COMMENT '表类型',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('227cbb16070f441882e8c21961f24eb4', 'appoint_record', '场馆预约管理', 'AppointRecord', '', '', '1', '2017-10-16 14:00:32', '1', '2017-10-16 17:37:39', null, '0', '', '0');
INSERT INTO `gen_table` VALUES ('250b3940a6bd482fa0a7915eb14cc34d', 'bonus_send', '奖金发放记录', 'BonusSend', '', '', '1', '2017-10-18 15:16:32', '1', '2017-10-18 15:20:25', null, '0', '', '0');
INSERT INTO `gen_table` VALUES ('3f7c20cfa7b840dc854d9ea27f4de539', 'test_data_child3', '汽车票', 'TestDataChild3', 'test_data_main', 'test_data_main', '1', '2016-01-14 23:12:14', null, '2016-10-04 23:18:30', null, '0', '1', '2');
INSERT INTO `gen_table` VALUES ('4e2edf872fba4bd9a2d5e4ee382806d2', 'site', '场馆管理', 'Site', '', '', '1', '2017-10-14 16:49:35', '1', '2017-10-14 16:59:52', null, '0', '', '0');
INSERT INTO `gen_table` VALUES ('5c051a049fa64f82a6296e10517cc8f9', 'test_validation', '校验测试表单', 'TestValidation', '', '', '1', '2016-10-01 22:43:02', null, '2016-10-05 00:26:35', null, '0', '1', '0');
INSERT INTO `gen_table` VALUES ('73326f175c2d4a63b2d89820a79ba2eb', 'test_data_child', '火车票', 'TestDataChild', 'test_data_main', 'test_data_main_id', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:44:06', null, '2016-10-04 23:17:36', null, '0', '1', '2');
INSERT INTO `gen_table` VALUES ('7d5c4ab34b774817b7ded69e4de557af', 'money_back_record', '契约金返还记录', 'MoneyBackRecord', '', '', '1', '2017-10-18 17:46:40', '1', '2017-10-18 17:50:56', null, '0', '', '0');
INSERT INTO `gen_table` VALUES ('87e1792b2bbf45aebad9840c7a2c32b8', 'site_type', '场馆分类管理', 'Sitetype', '', '', '1', '2017-10-14 16:22:00', null, '2017-10-14 16:22:00', null, '0', '1', '3');
INSERT INTO `gen_table` VALUES ('8a5b3f53419a4f7fb356e6c7a573847e', 'sys_user', '场馆管理员', 'Siteuser', '', '', '1', '2017-04-18 13:20:16', null, '2017-10-15 11:45:39', null, '0', '1', '0');
INSERT INTO `gen_table` VALUES ('90d8fc88828d47a99fcbfeaa4f95f0db', 'test_data_child2', '飞机票', 'TestDataChild2', 'test_data_main', 'test_data_main', '1', '2016-01-04 18:48:19', null, '2016-10-04 23:18:36', null, '0', '1', '2');
INSERT INTO `gen_table` VALUES ('bae082dbd74a4ca381c0ad24c886f991', 'test_tree', '测试树', 'testTree', '', '', '1', '2016-01-06 23:49:45', null, '2017-01-18 23:30:43', null, '0', '1', '3');
INSERT INTO `gen_table` VALUES ('d05a55ef0add4e4e999766f9c86763ef', 'money_pool_record', '奖金池记录', 'MoneyPoolRecord', '', '', '1', '2017-10-18 17:51:12', '1', '2017-10-18 17:54:34', null, '0', '', '0');
INSERT INTO `gen_table` VALUES ('e08d6fbc393047748a2d45c98be42676', 'test_data_main', '票务代理', 'TestDataMain', '', '', '8b454376c0434e2792a1dc57edf80dbd', '2016-01-03 21:44:00', '1', '2016-10-06 21:20:53', null, '0', '1', '1');
INSERT INTO `gen_table` VALUES ('e6e430ffb4c5485ea0561a5925589952', 'card_consume_record', '套餐卡消费记录', 'CardConsumeRecord', '', '', '1', '2017-10-18 10:41:57', '1', '2017-10-18 10:53:48', null, '0', '', '0');
INSERT INTO `gen_table` VALUES ('f7f54cc37ba54dca811295066278d13b', 'member', '会员管理', 'Member', '', '', '1', '2017-10-15 17:20:08', '1', '2017-10-15 17:21:06', null, '0', '', '0');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `is_form` varchar(45) DEFAULT NULL COMMENT '是否表单显示',
  `tableName` varchar(45) DEFAULT NULL COMMENT '管理的查询表名',
  `fieldLabels` varchar(512) DEFAULT NULL,
  `fieldKeys` varchar(512) DEFAULT NULL,
  `searchLabel` varchar(45) DEFAULT NULL,
  `searchKey` varchar(45) DEFAULT NULL,
  `validateType` varchar(45) DEFAULT NULL,
  `min_length` varchar(45) DEFAULT NULL,
  `max_length` varchar(45) DEFAULT NULL,
  `min_value` varchar(45) DEFAULT NULL,
  `max_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('00746ae5220246b685489fd69ffbdf7c', '3f7c20cfa7b840dc854d9ea27f4de539', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '9', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('00a618d94eb44038b3d514074be96d61', '87e1792b2bbf45aebad9840c7a2c32b8', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '1', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('029a601423fe493e9b44b0f72bef29f2', '227cbb16070f441882e8c21961f24eb4', 'yyr', '预约人ID', 'varchar(64)', 'String', 'yyr', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '2', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('052e4c5cba064069805cd81639a5c0d9', '3f7c20cfa7b840dc854d9ea27f4de539', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('073e2c0d099f4d90b1a989573e968ba7', 'bae082dbd74a4ca381c0ad24c886f991', 'parent_id', '父级编号', 'varchar(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', '', null, '3', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('09c7727656274c8d9a5fff5a0fea7a19', 'd05a55ef0add4e4e999766f9c86763ef', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '9', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('0a34ef398d6c4e5aa53f876b5977ffdc', '250b3940a6bd482fa0a7915eb14cc34d', 'ffrid', '发放人ID', 'varchar(64)', 'String', 'ffrid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '2', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('0baa4d73004744cc9d11c3a369ab17e0', '5c051a049fa64f82a6296e10517cc8f9', 'num', '浮点数字', 'double', 'Double', 'num', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '1', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', 'number', '', '', '20.1', '69.3');
INSERT INTO `gen_table_column` VALUES ('0ebe82e673ad4835a527847278969611', 'e6e430ffb4c5485ea0561a5925589952', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '12', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('0f03066b0cf641529c28e0b7694f4c31', '250b3940a6bd482fa0a7915eb14cc34d', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '0', '=', 'dateselect', '', null, '7', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('10f01d7501814e41bc8af52988e8fde8', '87e1792b2bbf45aebad9840c7a2c32b8', 'parent_ids', '所有父级编号', 'varchar(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', '', null, '8', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1184d2bd6d9c48aa8de717d87f832da3', '227cbb16070f441882e8c21961f24eb4', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '11', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1422c89d068a45aca149b37ce18dda6b', '8a5b3f53419a4f7fb356e6c7a573847e', 'id', '编号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1553197a2c4f494bb63f1f444b60c900', '8a5b3f53419a4f7fb356e6c7a573847e', 'phone', '电话', 'varchar(200)', 'String', 'phone', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '5', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('15c3cc8e0c924575a95b72fe1b2a92ff', '4e2edf872fba4bd9a2d5e4ee382806d2', 'latitude', '纬度', 'decimal(15,10)', 'Double', 'latitude', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '5', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('18a35277bf174603a722f00dea32f962', '90d8fc88828d47a99fcbfeaa4f95f0db', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('19634a20c0a44ffdbf50aeeaaa856fa3', 'f7f54cc37ba54dca811295066278d13b', 'nickname', '昵称', 'varchar(200)', 'String', 'nickname', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '6', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('198150afe7ed4ee98021f92b10e8b56e', '5c051a049fa64f82a6296e10517cc8f9', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '7', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1afe807449734f839e3c4620a54d16c6', '4e2edf872fba4bd9a2d5e4ee382806d2', 'label', '位置名称', 'varchar(500)', 'String', 'label', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '6', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1b4a6f48da144d3caf7e7c8be0884802', '8a5b3f53419a4f7fb356e6c7a573847e', 'login_name', '登录名', 'varchar(100)', 'String', 'loginName', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '2', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1c0a57a930bd49ad811ea342c50704ec', 'e08d6fbc393047748a2d45c98be42676', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '7', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1c88a937059d4fd29d19a097beea66d5', 'd05a55ef0add4e4e999766f9c86763ef', 'weekend', '周日期止', 'varchar(30)', 'String', 'weekend', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1cf6318a22734292ac56674889cb6d3e', '87e1792b2bbf45aebad9840c7a2c32b8', 'sort', '排序', 'decimal(10,0)', 'Integer', 'sort', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1e68d32272aa4507a5aaef77cddf8f66', 'e6e430ffb4c5485ea0561a5925589952', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('1fb8444afb32409baf2b69272fa16a3f', '90d8fc88828d47a99fcbfeaa4f95f0db', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('21db21ab4cbe405689366cca1949720f', '250b3940a6bd482fa0a7915eb14cc34d', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '11', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('23c41ad735ad43ddbc73546ac4aa2223', 'd05a55ef0add4e4e999766f9c86763ef', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '12', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('26f2e763446e4534a46c9e203c349c28', 'bae082dbd74a4ca381c0ad24c886f991', 'parent_ids', '所有父级编号', 'varchar(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', '', null, '4', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('278998a3c35d4f8597a57f05d6608434', '73326f175c2d4a63b2d89820a79ba2eb', 'id', '编号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2b42c094865845ccabf3ce9a36fe2cfc', '5c051a049fa64f82a6296e10517cc8f9', 'str', '字符串', 'varchar(6)', 'String', 'str', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', 'string', '5', '65', '', '');
INSERT INTO `gen_table_column` VALUES ('2bb486bfbc514367a05fa3d62a6d1f37', '227cbb16070f441882e8c21961f24eb4', 'yysj', '预约时间', 'varchar(30)', 'String', 'yysj', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '7', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2be453b8d3654a1a903baf25d39133cb', 'f7f54cc37ba54dca811295066278d13b', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '11', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2ccea7057dd94455a8504d0940c5048e', 'e08d6fbc393047748a2d45c98be42676', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '10', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2d72f2653116494b8591a0fa4ce2d350', '8a5b3f53419a4f7fb356e6c7a573847e', 'email', '邮箱', 'varchar(200)', 'String', 'email', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '6', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2dc0bd99f05c4e4c8a4888f88d3f4ed3', 'd05a55ef0add4e4e999766f9c86763ef', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '13', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2f0489f5ad834e6c98e02128f8d8e366', '227cbb16070f441882e8c21961f24eb4', 'yyrname', '预约人', 'varchar(64)', 'String', 'yyrname', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '3', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2f5260e7f577438d9a379f397a4333a7', '227cbb16070f441882e8c21961f24eb4', 'cardid', '预约卡', 'varchar(64)', 'String', 'cardid', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '4', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('2fe0cb80c208422eb7d3066703f1e256', '4e2edf872fba4bd9a2d5e4ee382806d2', 'devices', '场馆设备', 'varchar(1000)', 'String', 'devices', '0', '1', '1', '1', '0', '0', '=', 'checkbox', 'sitedevices', null, '8', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('30e77e99f840411dbcdf82f676aa4b62', '4e2edf872fba4bd9a2d5e4ee382806d2', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '14', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('32ca774541354083a4e87124b82a228b', '8a5b3f53419a4f7fb356e6c7a573847e', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('3596ebe4050741c38837991386297e7a', '87e1792b2bbf45aebad9840c7a2c32b8', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '9', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('36c0353d8c254a5ea064a151b3444ad0', 'e08d6fbc393047748a2d45c98be42676', 'in_date', '加入日期', 'date', 'java.util.Date', 'inDate', '0', '0', '1', '1', '1', '1', 'between', 'dateselect', '', null, '6', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('376529c5856f479eae0d114fff84d336', '3f7c20cfa7b840dc854d9ea27f4de539', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('385f360eff99469f93b8663ce1626350', '87e1792b2bbf45aebad9840c7a2c32b8', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '6', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('39de8fd0efe04375b395fde455288827', '250b3940a6bd482fa0a7915eb14cc34d', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '9', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('3a0b4055f5074e758c9496dde90f545f', 'f7f54cc37ba54dca811295066278d13b', 'name', '姓名', 'varchar(64)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '4', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('3b92dabd35304244a527370602c38cda', '87e1792b2bbf45aebad9840c7a2c32b8', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '4', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('3c73ecb2506b44849d7501ce444df298', 'e6e430ffb4c5485ea0561a5925589952', 'cardid', '卡ID', 'varchar(64)', 'com.jeeplus.modules.card.entity.Card', 'card.id|cardbh', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '2', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('3d9834e9c64040988fa0e48c3d1f17b7', '227cbb16070f441882e8c21961f24eb4', 'status', '预约状态', 'varchar(64)', 'String', 'status', '0', '1', '1', '1', '1', '1', '=', 'select', 'appointstatus', null, '9', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('402ea204af474a9ebbf3831771bb70dc', '87e1792b2bbf45aebad9840c7a2c32b8', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '2', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('434e2c9ffc7449acb6d2b1c8ac897b00', 'd05a55ef0add4e4e999766f9c86763ef', 'mrqyj', '每日契约金', 'decimal(10,2)', 'Double', 'mrqyj', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '6', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('436dfaad442f42bab3e56c665940cc80', 'c11274038ecb4bc4be12272f354503d1', 'orderstatus', '订单状态', 'varchar(64)', 'String', 'orderstatus', '0', '1', '1', '1', '1', '1', 'like', 'radiobox', 'order_orderstatus', null, '11', '1', '2017-10-16 17:20:03', '1', '2017-10-16 17:20:03', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('45037fce642341048d264bc3e4825a50', '227cbb16070f441882e8c21961f24eb4', 'sysj', '使用时间', 'varchar(30)', 'String', 'sysj', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '10', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('4503cfca63ab440faa2a36baf2622cd6', 'e6e430ffb4c5485ea0561a5925589952', 'siteid', '使用场馆', 'varchar(64)', 'com.jeeplus.modules.site.entity.Site', 'site.id|name', '0', '1', '1', '1', '1', '1', '=', 'gridselect', '', null, '6', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '1', 'site', '名称|省|市|区|地址', 'name|province|city|county|label', '名称', 'name', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('45a6925399ba40a1ad48f227d371c491', '73326f175c2d4a63b2d89820a79ba2eb', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '6', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('45fffddbd1b74565b6732bef1b789377', '7d5c4ab34b774817b7ded69e4de557af', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '15', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('461241839ae240029ef08ed26307d83e', '227cbb16070f441882e8c21961f24eb4', 'yybh', '预约号', 'varchar(64)', 'String', 'yybh', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '1', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('469721f378ae484fa08aba770cd37065', 'd05a55ef0add4e4e999766f9c86763ef', 'jjcje', '奖金池金额', 'decimal(10,2)', 'Double', 'jjcje', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '7', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('46eb83ae0bad40cf80acc72a394f6521', '7d5c4ab34b774817b7ded69e4de557af', 'fhqyj', '返还契约金', 'decimal(10,2)', 'Double', 'fhqyj', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '6', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('478bfad60c224359a1eb79a5bde1a59f', '73326f175c2d4a63b2d89820a79ba2eb', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '8', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('480bc1806f6a4976a43bef6c6dee30b5', 'e08d6fbc393047748a2d45c98be42676', 'office_id', '归属部门', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Office', 'office.id|name', '0', '0', '1', '1', '1', '0', '=', 'officeselect', '', null, '2', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('482f4a50ab5a454e9f8c4c95964c50a6', '227cbb16070f441882e8c21961f24eb4', 'siteid', '预约场馆ID', 'varchar(64)', 'String', 'siteid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '5', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('498eb475dc4b4462b613d730e080b1d9', 'bae082dbd74a4ca381c0ad24c886f991', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('4a4ddc8901a84f218776e4f6c07d374f', '73326f175c2d4a63b2d89820a79ba2eb', 'startarea', '出发地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'startArea.id|name', '0', '0', '1', '1', '1', '0', '=', 'areaselect', '', null, '1', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('4a4e61594cec438fa60052053c2004c1', 'f7f54cc37ba54dca811295066278d13b', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('4ac62ff137c74a91b50846ea790ddd43', '3f7c20cfa7b840dc854d9ea27f4de539', 'price', '代理价格', 'double', 'Double', 'price', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('4bda5e7a4f6246a1938c114b4190b92b', '7d5c4ab34b774817b7ded69e4de557af', 'classesid', '约跑班级', 'varchar(64)', 'com.jeeplus.modules.classes.entity.Classes', 'classes.id|name', '0', '1', '1', '1', '1', '1', '=', 'gridselect', '', null, '5', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', 'classes', '名称', 'name', '名称', 'name', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('4c38599075ee415faa04a34a49347aea', 'bae082dbd74a4ca381c0ad24c886f991', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('50f4d700d8544627b8ec0888a09a4d1b', 'f7f54cc37ba54dca811295066278d13b', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '14', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('575b3f4a73c8463bbadca32d4478763d', 'f7f54cc37ba54dca811295066278d13b', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '13', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('57aab51f296443e5b70e94563877d223', '73326f175c2d4a63b2d89820a79ba2eb', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '7', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('5849ce7e59174725afba8556579daeb4', 'e08d6fbc393047748a2d45c98be42676', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '=', 'radiobox', 'sex', null, '5', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('5b3b171798824273b5cd0d433136b138', '87e1792b2bbf45aebad9840c7a2c32b8', 'parent_id', '父级编号', 'varchar(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', '', null, '7', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('5bb8ee66b63e452896f94c1fc05d1c3b', '7d5c4ab34b774817b7ded69e4de557af', 'ypts', '总应跑天数', 'int(10)', 'Integer', 'ypts', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '7', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('5da6c777fed2466e9c4c782df0ca8381', 'e08d6fbc393047748a2d45c98be42676', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '9', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('5e5dd86ed4334a888b72bd4394652aa0', '250b3940a6bd482fa0a7915eb14cc34d', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '10', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('616b197c5af84e1ea46d94763cf550ad', '227cbb16070f441882e8c21961f24eb4', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('6232cffc15464c9d816aa2b3de03cf86', '7d5c4ab34b774817b7ded69e4de557af', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('651462d1566b46e9ada8a442775f167a', '4e2edf872fba4bd9a2d5e4ee382806d2', 'contents', '场馆简介', 'longtext', 'String', 'contents', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '7', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('661d9ed20a6d4d1a9fb27f8833a03cfc', '7d5c4ab34b774817b7ded69e4de557af', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '0', '=', 'dateselect', '', null, '12', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('675cd9da0f834485bb827f195f0fcfa5', '250b3940a6bd482fa0a7915eb14cc34d', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '8', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('67d17d3386d745508ff96cac7b38a442', '73326f175c2d4a63b2d89820a79ba2eb', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '9', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('6b01902a322a49c9abaa57de6c999947', '7d5c4ab34b774817b7ded69e4de557af', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '11', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('6b0354a6d778459da62fe31caff6581f', 'e6e430ffb4c5485ea0561a5925589952', 'cardsycs', '套餐卡剩余次数', 'int(10)', 'Integer', 'cardsycs', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '7', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('6c8653989e54492686853e638bacc607', '8a5b3f53419a4f7fb356e6c7a573847e', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '9', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('6ec41cf5ec0d473fb2565e655e1690ac', '8a5b3f53419a4f7fb356e6c7a573847e', 'name', '姓名', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '4', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('6fb2e2bf14db4444b8eaed5060196888', '5c051a049fa64f82a6296e10517cc8f9', 'email', '邮件', 'varchar(64)', 'String', 'email', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', 'email', '10', '60', '', '');
INSERT INTO `gen_table_column` VALUES ('70394638bec8429690fec3f85d8a6de5', 'd05a55ef0add4e4e999766f9c86763ef', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '14', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7139680d30524efdb2c8c22112ce72be', '7d5c4ab34b774817b7ded69e4de557af', 'weekbegin', '周日期起', 'varchar(30)', 'String', 'weekbegin', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '1', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7366a19bc368478cb1a5356378a9aee6', 'f7f54cc37ba54dca811295066278d13b', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '12', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('76522b1294174402a7093c3fd7aa6147', 'bae082dbd74a4ca381c0ad24c886f991', 'name', '名称', 'nvarchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '0', 'like', 'input', '', null, '1', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('766cce2a87fb425bbef51cb9c5903c80', '7d5c4ab34b774817b7ded69e4de557af', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '16', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('770095aa533845b08072c0eae02faa59', 'e6e430ffb4c5485ea0561a5925589952', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '8', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('784df12054ba444190e302783059747f', '4e2edf872fba4bd9a2d5e4ee382806d2', 'mobile', '联系电话', 'varchar(15)', 'String', 'mobile', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '3', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('78c24e01fc554d3aa69a215a04b122f8', '8a5b3f53419a4f7fb356e6c7a573847e', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7abcf40a3d6f45bba1ee8412ff73439d', '73326f175c2d4a63b2d89820a79ba2eb', 'test_data_main_id', '业务主表ID', 'varchar(64)', 'String', 'testDataMain.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '5', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7d5407f3aac24d11a0d5a4d6a4c144cd', '7d5c4ab34b774817b7ded69e4de557af', 'trancid', '交易流水ID', 'varchar(64)', 'String', 'trancid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7df93bd836e74b50a7bd512d7642f8bc', 'e08d6fbc393047748a2d45c98be42676', 'user_id', '归属用户', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'tuser.id|name', '0', '0', '1', '1', '1', '1', '=', 'userselect', '', null, '1', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7e4bb2a8f66e4f69a5389f79bbf92fa9', '227cbb16070f441882e8c21961f24eb4', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '14', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('7e69aef6c9d249e4a0a38fdbee65faee', '3f7c20cfa7b840dc854d9ea27f4de539', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('807896e43b9244449ba28a97eb0d034c', '90d8fc88828d47a99fcbfeaa4f95f0db', 'test_data_main', '外键', 'varchar(64)', 'String', 'testDataMain.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '4', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('80ac1447d3054e268f69c78d32a9062f', 'd05a55ef0add4e4e999766f9c86763ef', 'zypts', '总应跑天数', 'int(10)', 'Integer', 'zypts', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('8492eba6943b47638df5bf052165308d', '73326f175c2d4a63b2d89820a79ba2eb', 'price', '代理价格', 'double', 'Double', 'price', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('853602077e1343f694f47a0ccab10d63', '3f7c20cfa7b840dc854d9ea27f4de539', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('86737df0507b46178e417980337995eb', 'e08d6fbc393047748a2d45c98be42676', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '8', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('86ecf52b8d234a809ed0506de6621920', 'd05a55ef0add4e4e999766f9c86763ef', 'trancid', '交易流水ID', 'varchar(64)', 'String', 'trancid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '8', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('884db9d2536242bd95c6f77481894cbf', 'e6e430ffb4c5485ea0561a5925589952', 'appointid', '预约ID', 'varchar(64)', 'String', 'appointid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '1', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('894b879b08684d32886a466dc029d26a', '4e2edf872fba4bd9a2d5e4ee382806d2', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '9', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('8bf14440127e4a29af69314f3c3cc5f6', '90d8fc88828d47a99fcbfeaa4f95f0db', 'price', '代理价格', 'double', 'Double', 'price', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '3', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('8c7a9b16d2884944abbab2f59f5a5a30', '250b3940a6bd482fa0a7915eb14cc34d', 'ffrname', '发放人', 'varchar(64)', 'String', 'ffrname', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '3', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('8d3f3e3553a24083b9ff09eff11f1a03', '250b3940a6bd482fa0a7915eb14cc34d', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '6', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('8ec182bd8789419eb1544eba4b70cb16', '4e2edf872fba4bd9a2d5e4ee382806d2', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '0', '=', 'dateselect', '', null, '10', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('91bb6cf7892948fe80fa76bb97f5ef8a', '250b3940a6bd482fa0a7915eb14cc34d', 'jine', '发放金额', 'decimal(10,2)', 'Double', 'jine', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('93d1442b87894d79b3420976e5c34203', 'bae082dbd74a4ca381c0ad24c886f991', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '8', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('93eda11291ca4be4a43f97dc8060f422', 'e6e430ffb4c5485ea0561a5925589952', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '9', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('94994e1ff93a493f847d7e14e05ae96c', '4e2edf872fba4bd9a2d5e4ee382806d2', 'sitetype', '场馆分类', 'varchar(64)', 'com.jeeplus.modules.sitetype.entity.Sitetype', 'sitetype.id|name', '0', '0', '1', '1', '1', '1', '=', 'treeselect', '', null, '2', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('9642f7079e7e4247a7c5a5d814821c7e', 'e6e430ffb4c5485ea0561a5925589952', 'sysj', '使用时间', 'varchar(30)', 'String', 'sysj', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '5', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('965444897d0f4c5bb47e0d183a1d1ccd', '73326f175c2d4a63b2d89820a79ba2eb', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '11', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('97137a20217047fc8f318369855298d3', 'bae082dbd74a4ca381c0ad24c886f991', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('985a46b057504f76bb63f07c9819bac9', '250b3940a6bd482fa0a7915eb14cc34d', 'trancid', '交易记录ID', 'varchar(64)', 'String', 'trancid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '5', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('9c574dad178048b0aeefaa9ba6b2a436', 'd05a55ef0add4e4e999766f9c86763ef', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('9df1f331307348799f6144fbd75d39d0', 'bae082dbd74a4ca381c0ad24c886f991', 'index_description', '指标描述', 'varchar(64)', 'String', 'indexDescription', '0', '0', '1', '1', '0', '0', '=', 'textarea', '', null, '13', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('a06d0ea1ace845d195f7a88f3de2cefc', '5c051a049fa64f82a6296e10517cc8f9', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('a40cbc4ead584f8f86c76516e66d5a63', 'f7f54cc37ba54dca811295066278d13b', 'login_name', '用户名', 'varchar(20)', 'String', 'loginName', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '2', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('a6f55566089146a58389995c35495c17', 'e6e430ffb4c5485ea0561a5925589952', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '11', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('aa0dfde52d6e4f2bb2a24b3897e55da3', '7d5c4ab34b774817b7ded69e4de557af', 'weekend', '周日期止', 'varchar(30)', 'String', 'weekend', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '2', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('aa51b79ad8d4492c9f46d94f55c00ff5', '227cbb16070f441882e8c21961f24eb4', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '12', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('aa6decfbfddb4955a184c3d9d5ec1c65', '7d5c4ab34b774817b7ded69e4de557af', 'yprname', '约跑人姓名', 'varchar(64)', 'String', 'yprname', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '4', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ad26254b408c45c2b417c4cd18e08e34', 'f7f54cc37ba54dca811295066278d13b', 'headimgurl', '头像', 'varchar(200)', 'String', 'headimgurl', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '5', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('af9998338d8b4c49b776132dc6ca9aac', '3f7c20cfa7b840dc854d9ea27f4de539', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b185b7bc4404488e96021a2cccb2b924', '73326f175c2d4a63b2d89820a79ba2eb', 'endarea', '目的地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'endArea.id|name', '0', '0', '1', '1', '1', '0', '=', 'areaselect', '', null, '2', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b246916c63624d6c9e406fd85ea9c553', 'f7f54cc37ba54dca811295066278d13b', 'wxopenid', '微信Openid', 'varchar(200)', 'String', 'wxopenid', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '1', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b42b29486f4d4d7fa697879fbe66dc02', 'f7f54cc37ba54dca811295066278d13b', 'gztime', '关注时间', 'varchar(64)', 'String', 'gztime', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '7', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b4322b0153ad4682b039ad2d03d73553', 'f7f54cc37ba54dca811295066278d13b', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '9', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b4ce5c8f02b048beb6c4801d32c63705', '90d8fc88828d47a99fcbfeaa4f95f0db', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b576c4272897463f8f59c74a366b7601', 'e08d6fbc393047748a2d45c98be42676', 'id', '编号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b593c23a3cd74cc18d4842611f65b649', '227cbb16070f441882e8c21961f24eb4', 'yyqrcode', '预约二维码', 'varchar(200)', 'String', 'yyqrcode', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '8', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b66949b2cc95464899218e10abc84e30', 'bae082dbd74a4ca381c0ad24c886f991', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b681910f4db54be484d04b032d71faea', 'bae082dbd74a4ca381c0ad24c886f991', 'index_type', '指标类型', 'varchar(64)', 'String', 'indexType', '0', '0', '1', '1', '0', '0', '=', 'radiobox', 'index_type', null, '11', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b69f63778ce74440bc185b4452d4b5f2', '227cbb16070f441882e8c21961f24eb4', 'sitename', '预约场馆', 'varchar(200)', 'String', 'sitename', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '6', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b710da10ffcb40449dc7f3331e44ba96', '227cbb16070f441882e8c21961f24eb4', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '15', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b7277fc1c64942e280eb18e714453fb3', 'f7f54cc37ba54dca811295066278d13b', 'qxgztime', '取消关注时间', 'varchar(64)', 'String', 'qxgztime', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '8', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b86b0c1a76c9454a83b88a24a1c95041', '4e2edf872fba4bd9a2d5e4ee382806d2', 'longitude', '经度', 'decimal(15,10)', 'Double', 'longitude', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '4', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b8864c5ea0c3458ab63c80a553898f1f', '8a5b3f53419a4f7fb356e6c7a573847e', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '11', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b92b63e7aa92430aae15d0a0dd51b625', 'e08d6fbc393047748a2d45c98be42676', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '12', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('b9d4c78906eb4baa8779655929850b15', '4e2edf872fba4bd9a2d5e4ee382806d2', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '12', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ba1e92fc269e48d48f511600f3fd76fd', '7d5c4ab34b774817b7ded69e4de557af', 'lpts', '总漏跑天数', 'int(10)', 'Integer', 'lpts', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '8', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ba434079e99841f29ec192770125c9bd', '8a5b3f53419a4f7fb356e6c7a573847e', 'company_id', '场馆', 'varchar(64)', 'com.jeeplus.modules.site.entity.Site', 'site.id|name', '0', '0', '1', '1', '1', '1', '=', 'gridselect', '', null, '1', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', 'site', '名称|省|市|区|地址', 'name|province|city|county|label', '场馆名称', 'name', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ba9e0e21d11e459f998b8917e997ea3f', '4e2edf872fba4bd9a2d5e4ee382806d2', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('baad1b4b1d494d61b9bafdea432c849f', 'bae082dbd74a4ca381c0ad24c886f991', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '5', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('bd1a120bef7e4e67adbed3a6aa37f85a', '87e1792b2bbf45aebad9840c7a2c32b8', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '5', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('bfbcbbf7bc0245e89559fe42beba24e3', '4e2edf872fba4bd9a2d5e4ee382806d2', 'name', '场馆名称', 'varchar(300)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '1', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('bfd6ebad28d54d849a56f67f63655fa1', '250b3940a6bd482fa0a7915eb14cc34d', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('c142f27a93454b8fa2c8396a00d91ec0', '4e2edf872fba4bd9a2d5e4ee382806d2', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '13', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('c303da5e09f94060b73ba2d46090db10', '90d8fc88828d47a99fcbfeaa4f95f0db', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '8', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('c3b6f5ec794e45c0ba7f849285801d84', '8a5b3f53419a4f7fb356e6c7a573847e', 'photo', '用户头像', 'varchar(1000)', 'String', 'photo', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '7', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('c6a9821cab7f44468cb8099586a65a7d', '8a5b3f53419a4f7fb356e6c7a573847e', 'create_by', '创建者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '8', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('c8d321ea3aa043fab0918ae46c577510', 'bae082dbd74a4ca381c0ad24c886f991', 'sort', '排序', 'decimal(10,0)', 'Integer', 'sort', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '2', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('c91c2b182c2c4e329ae87d1d15238ec2', '227cbb16070f441882e8c21961f24eb4', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '13', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ca5a912862f84025be560b14b1d61818', '8a5b3f53419a4f7fb356e6c7a573847e', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '13', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ce50908b50504f0e9db357dd1dd02add', '73326f175c2d4a63b2d89820a79ba2eb', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '10', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ce92a946d58b4dc5b8f1e575cb6f13b8', 'e08d6fbc393047748a2d45c98be42676', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '4', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('cea9a967dc534f33b134d7baa3b8e6d2', '87e1792b2bbf45aebad9840c7a2c32b8', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d1bdd0b322684cd3973eeee25d6cac1a', 'd05a55ef0add4e4e999766f9c86763ef', 'weekbegin', '周日期起', 'varchar(30)', 'String', 'weekbegin', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '2', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d26f3a4cfdc54a9ba511d994979f1ec3', 'e6e430ffb4c5485ea0561a5925589952', 'syrid', '使用人ID', 'varchar(64)', 'String', 'syrid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d2ce608caaef4bd88da994d9d81b6b1f', 'f7f54cc37ba54dca811295066278d13b', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '0', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d3a0e7e4b816444e948d55b9896db1d7', '5c051a049fa64f82a6296e10517cc8f9', 'new_date', '日期', 'datetime', 'java.util.Date', 'newDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '6', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', 'dateISO', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d3cd0c3af1bb4723903841afc13fad43', '8a5b3f53419a4f7fb356e6c7a573847e', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '12', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d4c2c44f95f6485a91c73c3fcd909b1b', '90d8fc88828d47a99fcbfeaa4f95f0db', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '9', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d682cc7096304f6ca3dc880bbb007999', 'd05a55ef0add4e4e999766f9c86763ef', 'classesid', '班级', 'varchar(64)', 'com.jeeplus.modules.classes.entity.Classes', 'classes.id|name', '0', '1', '1', '1', '1', '1', '=', 'gridselect', '', null, '1', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', 'classes', '名称', 'name', '名称', 'name', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d7d876f0caaf447191626bab1424db7c', 'e08d6fbc393047748a2d45c98be42676', 'area_id', '归属区域', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'area.id|name', '0', '0', '1', '1', '1', '0', '=', 'areaselect', '', null, '3', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d814e99ba735469b9d71ae01c22edd7b', '90d8fc88828d47a99fcbfeaa4f95f0db', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '6', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d82f90166f2a4845b6ea8e6aceb16afe', '73326f175c2d4a63b2d89820a79ba2eb', 'starttime', '出发时间', 'datetime', 'java.util.Date', 'starttime', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '3', '1', '2016-10-04 23:17:36', '1', '2016-10-04 23:17:36', null, '0', '1', '', '', '', '', '', 'dateISO', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d8c92422c3bb4821a85dfc78ca634232', '3f7c20cfa7b840dc854d9ea27f4de539', 'startarea', '出发地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'startArea.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '1', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d8d390274c6743f4813b7fbd88d02ab5', '227cbb16070f441882e8c21961f24eb4', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '16', '1', '2017-10-16 17:37:39', '1', '2017-10-16 17:37:39', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('d91d124e9b794b5fb2014ff39e64ca4d', '90d8fc88828d47a99fcbfeaa4f95f0db', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '10', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('da9a2cdb6ba54d1b90f2cc9bbf36810a', '90d8fc88828d47a99fcbfeaa4f95f0db', 'endarea', '目的地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'endArea.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '2', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('da9e09542176429d873c72cfbd5be782', '3f7c20cfa7b840dc854d9ea27f4de539', 'endarea', '目的地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'endArea.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '2', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('dc76da48c669405180e8432e690d4ef4', 'e6e430ffb4c5485ea0561a5925589952', 'syrname', '使用人', 'varchar(64)', 'String', 'syrname', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '4', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('dda5b7e4f8bb49dfbc8e5de476661070', 'd05a55ef0add4e4e999766f9c86763ef', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '0', '=', 'dateselect', '', null, '10', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('dda7c502522344589cf139c6964342a7', 'e6e430ffb4c5485ea0561a5925589952', 'del_flag', '逻辑删除标记（0：显示；1：隐藏）', 'varchar(64)', 'String', 'delFlag', '0', '1', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '13', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('de79630e9ad74d8cb215db423315b566', '7d5c4ab34b774817b7ded69e4de557af', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '13', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ded9d82fc89f4924a6b1155c9b3b60de', 'e08d6fbc393047748a2d45c98be42676', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '11', '1', '2016-10-06 21:20:53', '1', '2016-10-06 21:20:53', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('df6c8b8ca3764f4095ad873c9628ebfc', '250b3940a6bd482fa0a7915eb14cc34d', 'classesid', '班级', 'varchar(64)', ' com.jeeplus.modules.classes.entity.Classes', 'classes.id|name', '0', '1', '1', '1', '1', '1', '=', 'gridselect', '', null, '1', '1', '2017-10-18 15:20:25', '1', '2017-10-18 15:20:25', null, '0', '1', 'classes', '名称', 'name', '名称', 'name', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('dfc8e70e41c24ba7ba5b7bf3036ad071', '3f7c20cfa7b840dc854d9ea27f4de539', 'test_data_main', '外键', 'varchar(64)', 'String', 'testDataMain.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '4', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('e08a9b60633e4c7cb11eb765b30e88a5', '7d5c4ab34b774817b7ded69e4de557af', 'yprid', '约跑人ID', 'varchar(64)', 'String', 'yprid', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('e2c1940c50004680a39dee1941bba31b', '5c051a049fa64f82a6296e10517cc8f9', 'url', '网址', 'varchar(64)', 'String', 'url', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '5', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', 'url', '10', '30', '', '');
INSERT INTO `gen_table_column` VALUES ('e4c42ae771164259a1f5c2cf303455da', 'bae082dbd74a4ca381c0ad24c886f991', 'index_dw', '指标单位', 'varchar(64)', 'String', 'indexDw', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '12', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('e52d310e7e7c4e4bb810a308f3c800aa', 'e6e430ffb4c5485ea0561a5925589952', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2017-10-18 10:53:48', '1', '2017-10-18 10:53:48', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('e7f12a0ad85741a2b43bf73a24fa3fd0', '7d5c4ab34b774817b7ded69e4de557af', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '14', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('ec835925adf14392a3c09c0246cdc1eb', '3f7c20cfa7b840dc854d9ea27f4de539', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '8', '1', '2016-10-04 23:18:30', '1', '2016-10-04 23:18:30', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('eff2874bf5e14333a198a89fec38d44d', 'd05a55ef0add4e4e999766f9c86763ef', 'zlpts', '总漏跑天数', 'int(10)', 'Integer', 'zlpts', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '5', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('effcc4d639c340c4b32fc37c061c6ab7', 'd05a55ef0add4e4e999766f9c86763ef', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '11', '1', '2017-10-18 17:54:34', '1', '2017-10-18 17:54:34', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('f16a51456d8b4c99ae7e4392124a4e4c', 'bae082dbd74a4ca381c0ad24c886f991', 'remarks', '备注信息', 'nvarchar(255)', 'String', 'remarks', '0', '0', '1', '1', '0', '0', '=', 'textarea', '', null, '9', '1', '2017-01-18 23:30:43', '1', '2017-01-18 23:30:43', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('f463fb6288ff4e3c891992942774c7d0', '7d5c4ab34b774817b7ded69e4de557af', 'mrqyj', '每日契约金', 'decimal(10,2)', 'Double', 'mrqyj', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '9', '1', '2017-10-18 17:50:56', '1', '2017-10-18 17:50:56', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('f6271dcd51c44e99a07b6a9c319c6564', '8a5b3f53419a4f7fb356e6c7a573847e', 'user_status', '用户状态', 'varchar(10)', 'String', 'userStatus', '0', '0', '1', '1', '1', '1', '=', 'select', 'user_status', null, '14', '1', '2017-10-15 11:45:39', '1', '2017-10-15 11:45:39', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('f66cbd25a7894943b1ce6af1ac062de0', '90d8fc88828d47a99fcbfeaa4f95f0db', 'startarea', '出发地', 'varchar(64)', 'com.jeeplus.modules.sys.entity.Area', 'startArea.id|name', '0', '0', '1', '1', '1', '1', '=', 'areaselect', '', null, '1', '1', '2016-10-04 23:18:36', '1', '2016-10-04 23:18:36', null, '0', '1', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('f7d3d0dcd6e3496c9c1b99999a100132', '5c051a049fa64f82a6296e10517cc8f9', 'num2', '整数', 'integer', 'Integer', 'num2', '0', '0', '1', '1', '1', '0', '=', 'input', '', null, '2', '1', '2016-10-05 00:26:35', '1', '2016-10-05 00:26:35', null, '0', '1', '', '', '', '', '', 'digits', '', '', '10', '30');
INSERT INTO `gen_table_column` VALUES ('f810ab11aef14dbdbf07aca52c337e28', '4e2edf872fba4bd9a2d5e4ee382806d2', 'update_by', '更新者', 'varchar(64)', 'com.jeeplus.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '11', '1', '2017-10-14 16:59:52', '1', '2017-10-14 16:59:52', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('fd4ed91d743f4642bed22fb1e92950f2', 'f7f54cc37ba54dca811295066278d13b', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '10', '1', '2017-10-15 17:21:06', '1', '2017-10-15 17:21:06', null, '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `gen_table_column` VALUES ('fde8685acf6e487c909aa3a6d63fa120', '87e1792b2bbf45aebad9840c7a2c32b8', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '3', '1', '2017-10-14 16:22:00', '1', '2017-10-14 16:22:00', null, '0', '0', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';

-- ----------------------------
-- Records of gen_template
-- ----------------------------
INSERT INTO `gen_template` VALUES ('0', '0', ',,', '0', '0', '0', null, null, '1', '2017-10-18 17:46:14', null, '0');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `wxopenid` varchar(200) DEFAULT NULL COMMENT '微信Openid',
  `login_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `headimgurl` varchar(200) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '昵称',
  `gztime` varchar(64) DEFAULT NULL COMMENT '关注时间',
  `qxgztime` varchar(64) DEFAULT NULL COMMENT '取消关注时间',
  `yue` decimal(10,2) DEFAULT NULL COMMENT '账号余额',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员管理';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('15b3376c6aeb4e58b66892ec526db037', null, 'bilusi', 'abfeaa25034b7304ac71d7e266e4597af11a91659323ce93fbce0669', '比鲁斯', null, null, null, null, '10000.00', '1', '2017-10-18 17:33:12', '1', '2017-10-18 17:33:12', null, '0');
INSERT INTO `member` VALUES ('1e827982e2af4a648e2fa6bbc69374c5', null, 'qiqi', 'ba2cac57349cdcb6a93010320bb3f459862fc6a5d828a1d3c826a939', '琪琪', null, null, null, null, '10000.00', '1', '2017-10-18 17:32:03', '1', '2017-10-18 17:32:03', null, '0');
INSERT INTO `member` VALUES ('2d20f1f3a08b46dcb369c0c5cd0d2aad', null, 'wutian', 'b0ae888a10dc607d0de7c36a1a1af76f9e082dc4ef859957ff76c5db', '武天', null, null, null, null, '10000.00', '1', '2017-10-18 17:32:42', '1', '2017-10-18 17:32:42', null, '0');
INSERT INTO `member` VALUES ('34c18779a80349c3a7090886a8dc83ac', null, 'kulin', 'f2ad62c2f1bfd8e1a99670358b3dd3a6cacb185512d5a55a016a60a0', '库林', null, null, null, null, '10000.00', '1', '2017-10-18 17:34:01', '1', '2017-10-18 17:34:01', null, '0');
INSERT INTO `member` VALUES ('3f7266adb941467b93b25406004a819c', null, 'bike', '32aa40b7d9ad36c34a3b420f11d17886271eaee1a35d197f1ff313bf', '比克', null, null, null, null, '10000.00', '1', '2017-10-18 17:32:17', '1', '2017-10-18 17:32:17', null, '0');
INSERT INTO `member` VALUES ('3fb6f2f82e5548dda1f3fb75c90a802b', null, 'hehe', 'a87b3710583c2c04b71f205ce81e053bc4d775d01df6947e26e443ef', '哈哈', null, null, null, null, '10000.00', '1', '2017-10-15 18:29:47', '1', '2017-10-15 18:31:25', null, '0');
INSERT INTO `member` VALUES ('4127a5ceb078494bbc392c35c9b768b9', null, 'zhangdachun', 'cac10cf7b40949d3073313d700e702547c0b7b3c8b69d714f0e09d89', '张大春', null, null, null, null, '10000.00', '1', '2017-10-16 14:06:51', '1', '2017-10-16 14:06:51', null, '0');
INSERT INTO `member` VALUES ('a4b6c8d5bc1f4ba2b70996e1e40ca4d2', null, 'weisi', 'a097b38181d21844d836a9632c09e459264ca5ea8f0567e520b3fd07', '维斯', null, null, null, null, '10000.00', '1', '2017-10-18 17:33:25', '1', '2017-10-18 17:33:25', null, '0');
INSERT INTO `member` VALUES ('ce744b24949d4845bcbc23c7fa2295c4', null, 'wangdachui', '69238a9ebc76b6dae5e177d08f1603391c3891c9523c53bc331111b0', '王大锤', null, null, null, null, '10000.00', '1', '2017-10-16 14:07:14', '1', '2017-10-16 14:07:14', null, '0');
INSERT INTO `member` VALUES ('ec86333c54b14c6ea739a57e5589bf74', null, 'sunwukong', 'eb4322b211548a6f9ca57b02ee0bffe7de2aa8f17662c58c2455cf47', '孙悟空', null, null, null, null, '10000.00', '1', '2017-10-18 17:31:52', '1', '2017-10-18 17:31:52', null, '0');

-- ----------------------------
-- Table structure for money_back_record
-- ----------------------------
DROP TABLE IF EXISTS `money_back_record`;
CREATE TABLE `money_back_record` (
  `id` varchar(64) NOT NULL,
  `weekbegin` varchar(30) DEFAULT NULL COMMENT '周日期起',
  `weekend` varchar(30) DEFAULT NULL COMMENT '周日期止',
  `yprid` varchar(64) DEFAULT NULL COMMENT '约跑人ID',
  `yprname` varchar(64) DEFAULT NULL COMMENT '约跑人姓名',
  `classesid` varchar(64) DEFAULT NULL COMMENT '约跑班级',
  `fhqyj` decimal(10,2) DEFAULT NULL COMMENT '返还契约金',
  `ypts` int(10) DEFAULT NULL COMMENT '总应跑天数',
  `lpts` int(10) DEFAULT NULL COMMENT '总漏跑天数',
  `mrqyj` decimal(10,2) DEFAULT NULL COMMENT '每日契约金',
  `trancid` varchar(64) DEFAULT NULL COMMENT '交易流水ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='契约金返还记录';

-- ----------------------------
-- Records of money_back_record
-- ----------------------------
INSERT INTO `money_back_record` VALUES ('3f334bcbbcd942a18f3a3a55bf7e3f09', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'a87b3710583c2c04b71f205ce81e053bc4d775d01df6947e26e443ef', '哈哈', 'f279b359109a4970bf66fe8453269d9c', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('4c05c1f9c34b4472ac2d0216a9d26d80', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '62324ae9fb56f7badcd181e3366e424fef361176f1ab4552c82d251d', '库林', '4529133b3a884521b633a1312c44c849', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('8484f299fb5b46ef9e719bd0ec8aee60', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'abfeaa25034b7304ac71d7e266e4597af11a91659323ce93fbce0669', '比鲁斯', '4529133b3a884521b633a1312c44c849', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('889a680ff1144b2f84022e79d53a82d4', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'cac10cf7b40949d3073313d700e702547c0b7b3c8b69d714f0e09d89', '张大春', 'f279b359109a4970bf66fe8453269d9c', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('adc05a62315e492fb15450f772272746', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '32aa40b7d9ad36c34a3b420f11d17886271eaee1a35d197f1ff313bf', '比克', 'f279b359109a4970bf66fe8453269d9c', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('c3cd805f75914dd58d26e9eb696fa8a2', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'ba2cac57349cdcb6a93010320bb3f459862fc6a5d828a1d3c826a939', '琪琪', '4529133b3a884521b633a1312c44c849', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('c427acd3df3f42cf862c1440b7516ee7', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'eb4322b211548a6f9ca57b02ee0bffe7de2aa8f17662c58c2455cf47', '孙悟空', 'fc559f553f9246fb9009cfb0e36e7497', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('d42ac3d4f8c644c2a86944ffbdb82bf0', '2017-10-09 11:43:07', '2017-10-29 11:43:07', '69238a9ebc76b6dae5e177d08f1603391c3891c9523c53bc331111b0', '王大锤', 'fc559f553f9246fb9009cfb0e36e7497', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('de09f28267724ab49eb3e9465f45f82b', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'b0ae888a10dc607d0de7c36a1a1af76f9e082dc4ef859957ff76c5db', '武天', '4529133b3a884521b633a1312c44c849', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('e0341c1f683a4b3ebb04d0be9717d4ba', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'a097b38181d21844d836a9632c09e459264ca5ea8f0567e520b3fd07', '维斯', 'f279b359109a4970bf66fe8453269d9c', '90.00', '9', '1', '10.00', null, null, '2017-10-29 11:43:07', null, null, null, '0');
INSERT INTO `money_back_record` VALUES ('e0341c1f683a4b3ebb04d0be9717d4qq', '2017-10-09 11:43:07', '2017-10-29 11:43:07', 'a097b38181d21844d836a9632c09e459264ca5ea8f0567e520b3fd07', '维斯', 'f279b359109a4970bf66fe8453269d9c', '90.00', '9', '1', '10.00', '', '', '2017-10-29 11:43:07', '', null, '', '0');

-- ----------------------------
-- Table structure for money_pool_record
-- ----------------------------
DROP TABLE IF EXISTS `money_pool_record`;
CREATE TABLE `money_pool_record` (
  `id` varchar(64) NOT NULL,
  `classesid` varchar(64) DEFAULT NULL COMMENT '班级',
  `weekbegin` varchar(30) DEFAULT NULL COMMENT '周日期起',
  `weekend` varchar(30) DEFAULT NULL COMMENT '周日期止',
  `zypts` int(10) DEFAULT NULL COMMENT '总应跑天数',
  `zlpts` int(10) DEFAULT NULL COMMENT '总漏跑天数',
  `mrqyj` decimal(10,2) DEFAULT NULL COMMENT '每日契约金',
  `jjcje` decimal(10,2) DEFAULT NULL COMMENT '奖金池金额',
  `trancid` varchar(64) DEFAULT NULL COMMENT '交易流水ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖金池记录';

-- ----------------------------
-- Records of money_pool_record
-- ----------------------------
INSERT INTO `money_pool_record` VALUES ('1', '3f0504c9fcf2445bb8dc36e073dd501a', '2017-10-9', '2017-10-29', '10', '5', '10.00', '50.00', '123', null, '2017-10-18 18:06:05', null, null, null, '0');
INSERT INTO `money_pool_record` VALUES ('1a322256560447459fbb4bc3cee5dd77', '4529133b3a884521b633a1312c44c849', '2017-10-9', '2017-10-29', '8', '6', '30.00', '60.00', null, null, null, null, null, null, '0');
INSERT INTO `money_pool_record` VALUES ('5b1c68c09c38459c9404b96fa0eaedeb', 'f279b359109a4970bf66fe8453269d9c', '2017-10-9', '2017-10-29', '8', '6', '60.00', '120.00', null, null, null, null, null, null, '0');
INSERT INTO `money_pool_record` VALUES ('8622ddc4198e400d9eacb2dd65be9f41', 'fc559f553f9246fb9009cfb0e36e7497', '2017-10-9', '2017-10-29', '8', '6', '100.00', '200.00', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for monitor
-- ----------------------------
DROP TABLE IF EXISTS `monitor`;
CREATE TABLE `monitor` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `cpu` varchar(64) DEFAULT NULL COMMENT 'cpu使用率',
  `jvm` varchar(64) DEFAULT NULL COMMENT 'jvm使用率',
  `ram` varchar(64) DEFAULT NULL COMMENT '内存使用率',
  `toemail` varchar(64) DEFAULT NULL COMMENT '警告通知邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统监控';

-- ----------------------------
-- Records of monitor
-- ----------------------------
INSERT INTO `monitor` VALUES ('1', '99', '99', '99', '117575171@qq.com');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `category` varchar(64) DEFAULT NULL COMMENT '所属分类',
  `mainpicurl` varchar(5000) DEFAULT NULL COMMENT '新闻主图',
  `contents` longtext COMMENT '新闻内容',
  `xh` varchar(64) DEFAULT NULL COMMENT '序号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('45218ab4d2a64b0b89fac0afe59defec', '张高丽参加党的十九大陕西省代表团讨论', '1', '/sman/userfiles/1/images/news/news/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '&lt;div class=&quot;mhd&quot; style=&quot;margin: 0px; padding: 2px 5px 0px; position: relative; background-image: url(&amp;quot;http://p1.img.cctvpic.com/photoAlbum/templet/common/DEPA1452928146750159/mhd_bg.jpg&amp;quot;); background-position: left top; background-size: initial; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; height: 43px; color: rgb(0, 0, 0); font-family: Arial, 宋体; font-size: 12px; white-space: normal; border-bottom: 1px solid rgb(230, 230, 230);&quot;&gt;&lt;span class=&quot;title&quot; style=&quot;display: inline-block; float: left; font-stretch: normal; font-size: 18px; line-height: 43px; font-family: 微软雅黑; font-weight: bold; color: rgb(51, 51, 51);&quot;&gt;相关稿件&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;mbd&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, 宋体; font-size: 12px; white-space: normal;&quot;&gt;&lt;div class=&quot;cnt_bd&quot; style=&quot;margin: 0px; padding: 15px 0px;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 10px; padding: 0px; line-height: 1.75em; font-stretch: normal; font-size: 16px; text-indent: 2em;&quot;&gt;&lt;strong&gt;央视网消息&lt;/strong&gt;(新闻联播)：张高丽同志19日上午来到他所在的党的十九大陕西省代表团，与代表们一起讨论党的十九大报告。他指出，习近平总书记所作的报告高屋建瓴、开拓创新、内涵丰富、博大精深，是一篇闪耀着马克思主义真理光芒的纲领性文献，是我们党迈进新时代、开启新征程、续写新篇章的政治宣言和行动指南，我们要认真学习领会，抓好贯彻落实。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 10px; padding: 0px; line-height: 1.75em; font-stretch: normal; font-size: 16px; text-indent: 2em;&quot;&gt;张高丽说，党的十八大以来，党和国家事业取得历史性成就，发生历史性变革，根本原因在于以习近平同志为核心的党中央坚强领导，彰显了中国特色社会主义的无比优越性和强大生命力。习近平新时代中国特色社会主义思想是对马克思列宁主义、毛泽东思想、邓小平理论、&ldquo;三个代表&rdquo;重要思想、科学发展观的继承和发展，是马克思主义中国化最新成果，是党和人民实践经验和集体智慧的结晶，是中国特色社会主义理论体系的重要组成部分，是全党全国人民为实现中华民族伟大复兴而奋斗的行动指南。要牢固树立&ldquo;四个意识&rdquo;，用党的创新理论武装头脑、指导实践，开创新时代中国特色社会主义伟大事业新局面。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 10px; padding: 0px; line-height: 1.75em; font-stretch: normal; font-size: 16px; text-indent: 2em;&quot;&gt;张高丽强调，要坚持新发展理念，坚持稳中求进工作总基调，深化供给侧结构性改革，抓重点、补短板、强弱项，特别是要坚决打好防范化解重大风险、精准脱贫、污染防治的攻坚战，确保到2020年全面建成小康社会。要紧扣我国社会主要矛盾的变化，抓好发展这个党执政兴国的第一要务，确保到2035年基本实现社会主义现代化，到本世纪中叶把我国建成富强民主文明和谐美丽的社会主义现代化强国。&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '4', '1', '2017-10-20 14:29:11', '1', '2017-10-20 14:29:11', null, '0');
INSERT INTO `news` VALUES ('89546a09197f42ffaa77f9f02ce4fe0b', '习近平：党政干部要学柳青 接地气', '0', '/sman/userfiles/1/images/news/news/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 28px; padding: 0px; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal;&quot;&gt;习近平同志19日上午参加党的十九大贵州省代表团讨论。遵义市播州区枫香镇花茂村党总支书记潘克刚回忆了2015年6月16日总书记在花茂村考察时讲到的党的政策好不好，要看乡亲们是哭还是笑。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 28px; padding: 0px; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal;&quot;&gt;习近平说：&ldquo;这句话是作家柳青说的，柳青跟老百姓融入一起、打成一片，中央的文件下来了，他都知道房东老大娘是哭还是笑。&rdquo;党政干部也要学柳青，接地气 。（央视记者 申勇 爱民 胡玮 史伟 晓东 舒贝 鹏飞 汉明）&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '2', '1', '2017-10-20 14:25:31', '1', '2017-10-20 14:28:14', null, '0');
INSERT INTO `news` VALUES ('9fb1f0b57e464863b8187508ffafcb7d', '【十九大回声】网民说：这样的执政党岂能不长期得到人民拥护', '1', '/sman/userfiles/1/images/news/news/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　10月18日上午，党的十九大在北京开幕，习近平总书记代表第十八届中央委员会所做的报告中说：&ldquo;中国共产党人的初心和使命，就是为中国人民谋幸福，为中华民族谋复兴&rdquo;&ldquo;中国共产党是为中国人民谋幸福的政党，也是为人类进步事业而奋斗的政党&rdquo;。这两个定位精准概括了中国共产党的使命，也道出了中国共产党长期得到人民拥戴的&ldquo;秘诀&rdquo;。&lt;/p&gt;&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　　千人同心，则得千人之力。千人同心是怎么得来的？是中国共产党在长期执政过程中换来的。凭借着为老百姓解决问题，带来实惠、利益和获得感的一颗&ldquo;真心&rdquo;！中国共产党自打成立以来，特别是十一届三中全会以来，之所以越来越赢得民心，正是因为&ldquo;真心不变&rdquo;而且&ldquo;不忘初心&rdquo;。&ldquo;多谋民生之利、多解民生之忧&rdquo;。老百姓想办的事，绝大部分已经办得妥妥的了；有些还正在加紧办理的路上。比如，脱贫攻坚、农合医疗、大病保险、环境治理等等。对老百姓的意见、建议和呼声，也都在认真思考和整改。比如，打虎、拍蝇、猎狐的震撼、从严治党的坚定和&ldquo;在发展中补齐民生短板&rdquo;等等。这样的执政党，怎能不得民心呢？&lt;/p&gt;&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　　细微之处见民心。两年前，笔者在六盘山下宁夏回族自治区泾源县一个名叫南庄村的贫困村，看到一件新鲜事。这个村专门为60岁以上老人置办了&ldquo;老年饭桌&rdquo;。每天一到饭点，老人们不约而同走出家门，来到&ldquo;老年饭桌&rdquo;，就能吃上热乎乎、香喷喷的可口饭菜。73岁的回族老人冶翠心说：&ldquo;儿女们结婚成家后都外出打工去了，剩下我一个人孤零零在家。&rdquo;南庄村像冶翠心这种情况的老人很多。于是，村里就办起了&ldquo;老年饭桌&rdquo;，后来延伸到了全县、全自治区。光吃不行，遇到个头疼脑热怎么办？地方上又给老人们办理了低保、大病医疗保险，基本解除了他们的后顾之忧。老人们发自肺腑地感慨：&ldquo;共产党真是比我的亲人还要亲！&rdquo;&lt;/p&gt;&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　　无独有偶。不久前，一位定居澳大利亚的中国老人对笔者说：&ldquo;每年回来，都会感受到一份份令人欣喜的&lsquo;陌生变化&rsquo;。我尤其爱看那些在城市里跳广场舞的大妈们，总想和她们一起跳、一起乐。我能感受到，她们的那份快乐，发自心底&rdquo;。&lt;/p&gt;&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　　曾经，有人宣称&ldquo;我不在乎大国崛起，我只在乎小民尊严&rdquo;。把大国崛起和小民尊严摆到一个相对对立的位置，以此来含沙射影地怀疑和诟病&ldquo;中华民族的伟大复兴&rdquo;。一时间，也蒙蔽了一些人。可事实胜于雄辩。今年，电影《战狼2》热播，票房过56亿，观众人数过亿。这说明什么？说明中国观众尤其是中国年轻观众发自内心支持中华民族的伟大复兴。他们深知，没有大国崛起，何来&ldquo;小民&rdquo;尊严？&lt;/p&gt;&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　　发展才是硬道理，才能让老百姓的日子芝麻开花节节高。只有社会不断进步，经济不断发展，国家不断强盛，人民的腰包不断鼓起来，幸福和快乐才不会昙花一现，才能够源远流长。十八大以来，中国共产党提出&ldquo;两个一百年&rdquo;奋斗目标和实现中华民族伟大复兴的中国梦，都是为了让全国老百姓那份发自心底的快乐保持得久一些，再久一些，直至永远。&lt;/p&gt;&lt;p style=&quot;margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-size: 14px; line-height: 26px; color: rgb(51, 51, 51); font-family: 宋体, Arial; white-space: normal;&quot;&gt;　　同心，团结之心，凝聚之心，&ldquo;众人拾柴火焰高&rdquo;之心。谁能让老百姓发自心底地开心，谁就能赢得民心。谁能让老百姓持续地发自心底地快乐，谁就能持续地赢得老百姓的同心。从这个道理上讲，这些年来，始终&ldquo;坚持以人民为中心&rdquo;的中国共产党切切实实做到了，所以对这样的执政党，人民肯定会长期拥护、真心拥护。（郭长江）&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '5', '1', '2017-10-20 14:30:09', '1', '2017-10-25 17:34:55', null, '0');
INSERT INTO `news` VALUES ('fed9f5a05ae24d1d99cb059519369679', '张高丽参加党的十九大陕西省代表团讨论', '0', '/sman/userfiles/1/images/news/news/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '&lt;div class=&quot;mhd&quot; style=&quot;margin: 0px; padding: 2px 5px 0px; position: relative; background-image: url(&amp;quot;http://p1.img.cctvpic.com/photoAlbum/templet/common/DEPA1452928146750159/mhd_bg.jpg&amp;quot;); background-position: left top; background-size: initial; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; height: 43px; color: rgb(0, 0, 0); font-family: Arial, 宋体; font-size: 12px; white-space: normal; border-bottom: 1px solid rgb(230, 230, 230);&quot;&gt;&lt;span class=&quot;title&quot; style=&quot;display: inline-block; float: left; font-stretch: normal; font-size: 18px; line-height: 43px; font-family: 微软雅黑; font-weight: bold; color: rgb(51, 51, 51);&quot;&gt;相关稿件&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;mbd&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, 宋体; font-size: 12px; white-space: normal;&quot;&gt;&lt;div class=&quot;cnt_bd&quot; style=&quot;margin: 0px; padding: 15px 0px;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 10px; padding: 0px; line-height: 1.75em; font-stretch: normal; font-size: 16px; text-indent: 2em;&quot;&gt;&lt;strong&gt;央视网消息&lt;/strong&gt;(新闻联播)：张高丽同志19日上午来到他所在的党的十九大陕西省代表团，与代表们一起讨论党的十九大报告。他指出，习近平总书记所作的报告高屋建瓴、开拓创新、内涵丰富、博大精深，是一篇闪耀着马克思主义真理光芒的纲领性文献，是我们党迈进新时代、开启新征程、续写新篇章的政治宣言和行动指南，我们要认真学习领会，抓好贯彻落实。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 10px; padding: 0px; line-height: 1.75em; font-stretch: normal; font-size: 16px; text-indent: 2em;&quot;&gt;张高丽说，党的十八大以来，党和国家事业取得历史性成就，发生历史性变革，根本原因在于以习近平同志为核心的党中央坚强领导，彰显了中国特色社会主义的无比优越性和强大生命力。习近平新时代中国特色社会主义思想是对马克思列宁主义、毛泽东思想、邓小平理论、&ldquo;三个代表&rdquo;重要思想、科学发展观的继承和发展，是马克思主义中国化最新成果，是党和人民实践经验和集体智慧的结晶，是中国特色社会主义理论体系的重要组成部分，是全党全国人民为实现中华民族伟大复兴而奋斗的行动指南。要牢固树立&ldquo;四个意识&rdquo;，用党的创新理论武装头脑、指导实践，开创新时代中国特色社会主义伟大事业新局面。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 10px; padding: 0px; line-height: 1.75em; font-stretch: normal; font-size: 16px; text-indent: 2em;&quot;&gt;张高丽强调，要坚持新发展理念，坚持稳中求进工作总基调，深化供给侧结构性改革，抓重点、补短板、强弱项，特别是要坚决打好防范化解重大风险、精准脱贫、污染防治的攻坚战，确保到2020年全面建成小康社会。要紧扣我国社会主要矛盾的变化，抓好发展这个党执政兴国的第一要务，确保到2035年基本实现社会主义现代化，到本世纪中叶把我国建成富强民主文明和谐美丽的社会主义现代化强国。&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '3', '1', '2017-10-20 14:26:28', '1', '2017-10-20 14:28:06', null, '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(64) NOT NULL,
  `ddh` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pkgid` varchar(64) DEFAULT NULL COMMENT '所属套餐',
  `gkr` varchar(64) DEFAULT NULL COMMENT '购卡人ID',
  `gkrname` varchar(64) DEFAULT NULL COMMENT '购卡人',
  `gkfs` varchar(64) DEFAULT NULL COMMENT '购卡方式',
  `gklng` decimal(15,10) DEFAULT NULL COMMENT '购卡位置经度',
  `gklat` decimal(15,10) DEFAULT NULL COMMENT '购卡位置纬度',
  `gklabel` varchar(200) DEFAULT NULL COMMENT '购卡位置名称',
  `gkdhm` varchar(64) DEFAULT NULL COMMENT '购卡兑换码',
  `gkjine` decimal(10,2) DEFAULT NULL COMMENT '购卡金额',
  `orderstatus` varchar(64) DEFAULT NULL COMMENT '订单状态',
  `trancid` varchar(64) DEFAULT NULL COMMENT '交易流水ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单管理';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('15aab5a0d18d48cd8fdfc3fcdf20c266', '201710160000', '0d99593e4d1947fc86e73a9bdec42287', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '0', '155.5300000000', '122.5500000000', '西大街', '220432dec7c84e07ac3a7a50f6a27b13', '288.00', '1', null, '1', '2017-10-16 17:29:47', null, null, null, '0');
INSERT INTO `orders` VALUES ('3a02ea1f98d24418a0359ae8c5a5962e', '201710160008', '9bf352e08c6f4f1a8994f83171eb79f2', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '0', null, null, null, null, '488.00', '0', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('4303eb1521ce422e87c91982f27a2b37', '201710160007', '9ab3b15e0aab4ce299723ddc8d708352', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '0', null, null, null, null, '288.00', '0', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('540c4188b8314d2a8ca7d43af960f390', '201710160006', '0d99593e4d1947fc86e73a9bdec42287', '3f7266adb941467b93b25406004a819c', '比克', '1', null, null, null, null, '288.00', '1', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('63e24ce0909c48469956fdf9ab285e57', '201710160003', '0d99593e4d1947fc86e73a9bdec42287', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '1', '155.6600000000', '122.5500000000', '系大陆', '3588dd41150b41f3a1dcc7495be3470e', '488.00', '1', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('6b39efbf55024db383a37e6e988e334b', '201710160011', '9bf352e08c6f4f1a8994f83171eb79f2', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', '0', null, null, null, null, '488.00', '0', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('6d48d60b23144ab5be536e9d3ec79309', '201710160009', '0d99593e4d1947fc86e73a9bdec42287', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '0', null, null, null, null, '488.00', '0', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('779de86484154d69b7e11d4542c25c80', '201710160005', '9bf352e08c6f4f1a8994f83171eb79f2', '34c18779a80349c3a7090886a8dc83ac', '库林', '1', null, null, null, null, '288.00', '1', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('b39c38deed6b4a7b963736c46bb34dd7', '201710160010', '9ab3b15e0aab4ce299723ddc8d708352', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '0', null, null, null, null, '488.00', '0', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('dbd3de267b31491c8bfcc31636555612', '201710160002', '9bf352e08c6f4f1a8994f83171eb79f2', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '1', '155.5300000000', '122.5500000000', '西大街', '220432dec7c84e07ac3a7a50f6a27b13', '388.00', '1', null, null, null, null, null, null, '0');
INSERT INTO `orders` VALUES ('eee6990e625c45d8bb79fb73ec889263', '201710160001', '9ab3b15e0aab4ce299723ddc8d708352', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '1', '155.6600000000', '122.5500000000', '系大陆', '3588dd41150b41f3a1dcc7495be3470e', '288.00', '0', null, '1', '2017-10-16 17:40:19', '1', '2017-10-16 17:40:19', null, '0');
INSERT INTO `orders` VALUES ('f0a2ef72969c48dc96efacf74957559b', '201710160004', '9ab3b15e0aab4ce299723ddc8d708352', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '1', null, null, null, null, '288.00', '1', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `pkgtype` varchar(64) DEFAULT NULL COMMENT '类型',
  `imgurl` varchar(2000) DEFAULT NULL COMMENT '套餐图片',
  `description` longtext COMMENT '使用说明',
  `price` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `maxusenum` int(10) DEFAULT NULL COMMENT '最大使用次数',
  `maxuserange` decimal(10,2) DEFAULT NULL COMMENT '最大使用范围(千米)',
  `maxbuynum` int(10) DEFAULT NULL COMMENT '每月最大购卡次数',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卡型套餐';

-- ----------------------------
-- Records of package
-- ----------------------------
INSERT INTO `package` VALUES ('0d99593e4d1947fc86e73a9bdec42287', '免费体验卡', '0', '', '免费体验卡免费体验卡免费体验卡免费体验卡免费体验卡免费体验卡免费体验卡免费体验卡', null, '1', '5.00', null, '1', '2017-10-15 20:16:51', '1', '2017-10-15 20:17:03', null, '0');
INSERT INTO `package` VALUES ('9ab3b15e0aab4ce299723ddc8d708352', 'VIP竞走', '1', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '确认为人情味儿', '3.00', '3', null, null, '1', '2017-10-16 17:01:26', '1', '2017-10-16 17:01:26', null, '0');
INSERT INTO `package` VALUES ('9bf352e08c6f4f1a8994f83171eb79f2', 'VIP套餐减肥', '2', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', 'rqwerqwer', null, '3', null, null, '1', '2017-10-16 17:00:53', '1', '2017-10-16 17:00:53', null, '0');

-- ----------------------------
-- Table structure for signin
-- ----------------------------
DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin` (
  `id` varchar(64) NOT NULL,
  `dkrid` varchar(64) DEFAULT NULL COMMENT '打卡人ID',
  `dkrname` varchar(64) DEFAULT NULL COMMENT '打卡人',
  `imgurl` varchar(500) DEFAULT NULL COMMENT '打卡截图',
  `pbjl` decimal(10,2) DEFAULT NULL COMMENT '跑步距离(千米）',
  `pbys` int(10) DEFAULT NULL COMMENT '跑步用时(分钟)',
  `shzt` varchar(64) DEFAULT NULL COMMENT '审核状态',
  `shrid` varchar(64) DEFAULT NULL COMMENT '审核人ID',
  `shrname` varchar(64) DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(30) DEFAULT NULL COMMENT '审核时间',
  `shbtgyy` varchar(500) DEFAULT NULL COMMENT '审核不通过原因',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signin
-- ----------------------------
INSERT INTO `signin` VALUES ('3c6d8f8d8b29415fb09ef02265721323', '69238a9ebc76b6dae5e177d08f1603391c3891c9523c53bc331111b0', '王大锤', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '6.00', '40', '2', '1', '超级管理员', '2017-10-18 10:51:32', '阿斯顿就发生较大', '1', '2017-10-18 09:57:27', '1', '2017-10-18 10:51:33', null, '0');
INSERT INTO `signin` VALUES ('46374c6bae324cb89f064286694d7115', 'cac10cf7b40949d3073313d700e702547c0b7b3c8b69d714f0e09d89', '张大春', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '6.00', '40', '1', '1', '超级管理员', '2017-10-18 10:51:43', '', '1', '2017-10-18 09:57:27', '1', '2017-10-18 10:51:43', null, '0');
INSERT INTO `signin` VALUES ('48cc7949b14b4c06b4350b50bf0b7033', 'cac10cf7b40949d3073313d700e702547c0b7b3c8b69d714f0e09d89', '张大春', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '6.00', '40', '0', null, null, null, null, '1', '2017-10-18 09:57:27', null, null, null, '0');
INSERT INTO `signin` VALUES ('84c0fb3851fc436c96c4ab1c1da871c1', '4127a5ceb078494bbc392c35c9b768b9', '王大锤', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '5.50', '30', '0', null, null, null, null, '1', '2017-10-18 09:57:27', null, null, null, '0');
INSERT INTO `signin` VALUES ('edfc809800e743bcbb212c246bcca821', '69238a9ebc76b6dae5e177d08f1603391c3891c9523c53bc331111b0', '王大锤', '/sman/userfiles/1/images/pkg/pkg/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg', '6.00', '40', '0', null, null, null, null, '1', '2017-10-18 09:57:27', null, null, null, '0');

-- ----------------------------
-- Table structure for site
-- ----------------------------
DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(300) DEFAULT NULL COMMENT '场馆名称',
  `sitetype` varchar(64) DEFAULT NULL COMMENT '场馆分类',
  `simg` longtext COMMENT '场馆图片',
  `mobile` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `province` varchar(200) DEFAULT NULL COMMENT '省',
  `city` varchar(200) DEFAULT NULL COMMENT '市',
  `county` varchar(200) DEFAULT NULL COMMENT '区',
  `longitude` decimal(15,10) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(15,10) DEFAULT NULL COMMENT '纬度',
  `label` varchar(500) DEFAULT NULL COMMENT '位置名称',
  `contents` longtext COMMENT '场馆简介',
  `devices` varchar(1000) DEFAULT NULL COMMENT '场馆设备',
  `orderoc` varchar(64) DEFAULT NULL COMMENT '预约开关',
  `maxordernumday` int(10) DEFAULT NULL COMMENT '最大日预约人数',
  `noorderrqq` varchar(30) DEFAULT NULL COMMENT '不预约日期起',
  `noorderrqz` varchar(30) DEFAULT NULL COMMENT '不预约日期止',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆管理';

-- ----------------------------
-- Records of site
-- ----------------------------
INSERT INTO `site` VALUES ('7cb33c35829b4f40a596335c79e2c404', '阳刚搏击', 'b946510f712243219a9bde7c73edbcdb', null, '15610273932', '山东省', '潍坊市', '寒亭区', '119.1685530000', '36.7092270000', '山东省潍坊市奎文区', '阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击阳刚搏击', '1,4', '0', '0', '', '', '1', '2017-10-15 16:35:55', '1', '2017-10-15 16:58:14', null, '0');
INSERT INTO `site` VALUES ('9eb027dfe86b4b7d91e87406f24882d1', '激情乒乓球', '995d6052ebff433c9fe21f415ae2d3cf', '|/sman/userfiles/1/images/site/site/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg|/sman/userfiles/1/images/site/site/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg|/sman/userfiles/1/images/site/site/2017/10/timg11.jpg', '800820', '山东省', '潍坊市', '高密市', '119.7620100000', '36.3890290000', '山东省潍坊市高密市人民大街371号', '', '1,2,3,4', '1', '100', '2017-10-18', '2017-10-19', '1', '2017-10-19 10:28:28', '1', '2017-10-24 11:36:31', '', '0');
INSERT INTO `site` VALUES ('9ffd57fc9d084eb9b8d13af536b0d957', 'MESHOW健康体重', '9c905fdd4ed54948bb3d4b428cae8748', null, '4006799191', '重庆市', '重庆市', '梁平县', null, null, '河西区小白楼五楼', 'MESHOW健康体重MESHOW健康体重MESHOW健康体重', '1,2,4', null, '0', null, null, '1', '2017-10-14 17:44:05', '99976ffa302a4ded819da781f0cf619f', '2017-10-15 17:03:09', null, '0');
INSERT INTO `site` VALUES ('a147844b324f4804a318419890a902e4', '开心拳击', '70a78dab692f43ad9b74383f259cb3ea', '|/sman/userfiles/1/images/site/site/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg|/sman/userfiles/1/images/site/site/2017/10/timg11.jpg', '13521542154', '山东省', '青岛市', '胶南市', '119.0896460000', '36.7142030000', '山东省潍坊市潍城区胜利西街2618号', '', '1,2,3,4,5', '1', '120', '', '', '1', '2017-10-24 11:38:40', '1', '2017-10-24 11:38:40', null, '0');
INSERT INTO `site` VALUES ('e6180d6f3fc04588bd03505acb344b7f', '泰华', 'b946510f712243219a9bde7c73edbcdb', null, '15165326547', '山东省', '潍坊市', '寒亭区', '119.1513060000', '36.7528440000', '山东省潍坊市寒亭区新华路', '泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华', '1,4,5', '1', '100', '2017-10-15', '2017-10-31', '1', '2017-10-15 10:41:45', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 09:48:03', null, '0');

-- ----------------------------
-- Table structure for site_remark
-- ----------------------------
DROP TABLE IF EXISTS `site_remark`;
CREATE TABLE `site_remark` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `memberid` varchar(64) DEFAULT NULL COMMENT '评价人ID',
  `membername` varchar(64) DEFAULT NULL COMMENT '评价人姓名',
  `contents` longtext COMMENT '评价内容',
  `siteid` varchar(64) DEFAULT NULL COMMENT '场馆名称',
  `shzt` varchar(64) DEFAULT NULL COMMENT '审核通过',
  `shrid` varchar(64) DEFAULT NULL COMMENT '审核人ID',
  `shrname` varchar(64) DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(30) DEFAULT NULL COMMENT '审核时间',
  `shbtgyy` varchar(500) DEFAULT NULL COMMENT '审核不通过原因',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆评价';

-- ----------------------------
-- Records of site_remark
-- ----------------------------
INSERT INTO `site_remark` VALUES ('5514e4d69fb84e558678fa890c848445', '3f7266adb941467b93b25406004a819c', '比克', '比克', '7cb33c35829b4f40a596335c79e2c404', '0', null, null, null, null, '1', '2017-10-19 11:01:54', null, null, null, '0');
INSERT INTO `site_remark` VALUES ('58b276df87404189a58e61d60fa38d3e', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '琪琪', '7cb33c35829b4f40a596335c79e2c404', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 11:12:40', null, '0');
INSERT INTO `site_remark` VALUES ('6590026ce46b4815952d24582adaf9a5', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '比鲁斯', '7cb33c35829b4f40a596335c79e2c404', '0', null, null, null, null, '1', '2017-10-19 11:01:54', null, null, null, '0');
INSERT INTO `site_remark` VALUES ('66e8daa628ff44e7a9f43948c9872d44', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '张大春', 'e6180d6f3fc04588bd03505acb344b7f', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 14:54:55', null, '0');
INSERT INTO `site_remark` VALUES ('6b0203bdf99f4f4b840121c1bc42dfe9', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '张大春张大春张大春张大春', 'e6180d6f3fc04588bd03505acb344b7f', '0', null, null, null, null, '1', '2017-10-17 18:24:51', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 14:55:03', null, '0');
INSERT INTO `site_remark` VALUES ('ad9e7c1b545e42e7860f80b6b2301cbe', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '张大春张大春张大春张大春', '7cb33c35829b4f40a596335c79e2c404', '0', null, null, null, null, '1', '2017-10-17 19:19:20', '1', '2017-10-18 09:32:30', null, '0');
INSERT INTO `site_remark` VALUES ('be03c42433934229834d0d36d5a190df', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '哈哈', '9ffd57fc9d084eb9b8d13af536b0d957', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 14:56:35', null, '0');
INSERT INTO `site_remark` VALUES ('c0508d353138480cba607721b9bf8b16', '34c18779a80349c3a7090886a8dc83ac', '库林', '库林', 'e6180d6f3fc04588bd03505acb344b7f', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 11:12:47', null, '0');
INSERT INTO `site_remark` VALUES ('c78c723bfc01490d9b9e5e542ffa169a', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '张大春张大春张大春张大春', '9ffd57fc9d084eb9b8d13af536b0d957', '0', null, null, null, null, '1', '2017-10-17 19:19:24', '99976ffa302a4ded819da781f0cf619f', '2017-10-19 10:52:07', null, '0');
INSERT INTO `site_remark` VALUES ('cbe92bb680914f1ba01e1871c964af0b', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '武天', '9ffd57fc9d084eb9b8d13af536b0d957', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 14:55:40', null, '0');
INSERT INTO `site_remark` VALUES ('ccad71038b3347f1b9bf185e50236516', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '维斯', 'e6180d6f3fc04588bd03505acb344b7f', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 14:56:47', null, '0');
INSERT INTO `site_remark` VALUES ('d2dcab391a08419ca7731d0b1fc07a01', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '王大锤', '9ffd57fc9d084eb9b8d13af536b0d957', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '99976ffa302a4ded819da781f0cf619f', '2017-10-19 11:17:57', null, '0');
INSERT INTO `site_remark` VALUES ('fa83dd9317584464965c5fa75fcc837e', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '张大春张大春张大春张大春', 'e6180d6f3fc04588bd03505acb344b7f', '0', null, null, null, null, '1', '2017-10-17 19:19:27', '99976ffa302a4ded819da781f0cf619f', '2017-10-19 10:52:00', null, '0');
INSERT INTO `site_remark` VALUES ('fc8dfcfd41db44f488675b4d944e8a1f', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', '孙悟空', '9ffd57fc9d084eb9b8d13af536b0d957', '0', null, null, null, null, '1', '2017-10-19 11:01:54', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 14:55:33', null, '0');

-- ----------------------------
-- Table structure for site_type
-- ----------------------------
DROP TABLE IF EXISTS `site_type`;
CREATE TABLE `site_type` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `parent_id` varchar(64) DEFAULT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) DEFAULT NULL COMMENT '所有父级编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆分类管理';

-- ----------------------------
-- Records of site_type
-- ----------------------------
INSERT INTO `site_type` VALUES ('323f395af5ea4392b8d651130f5ae363', '1', '2017-10-14 16:45:47', '1', '2017-10-14 16:45:47', '羽毛球馆', '0', '0', '0,', '羽毛球馆', '60');
INSERT INTO `site_type` VALUES ('6c5eda8ab04d429d8f1affb84686095d', '1', '2017-10-14 16:45:35', '1', '2017-10-14 17:01:50', '健身馆', '0', '0', '0,', '健身馆', '30');
INSERT INTO `site_type` VALUES ('70a78dab692f43ad9b74383f259cb3ea', '1', '2017-10-19 10:10:07', '1', '2017-10-19 10:10:07', '某健身中心', '0', 'a84e1dc51ee84eb380366f6c493f3694', '0,6c5eda8ab04d429d8f1affb84686095d,a84e1dc51ee84eb380366f6c493f3694,', '某健身中心', '30');
INSERT INTO `site_type` VALUES ('7b004e56af474e95a5c6edd291465bc2', '1', '2017-10-19 10:22:51', '1', '2017-10-19 10:22:51', '乒乓球', '0', '0', '0,', '乒乓球', '90');
INSERT INTO `site_type` VALUES ('995d6052ebff433c9fe21f415ae2d3cf', '1', '2017-10-19 10:23:05', '1', '2017-10-19 10:23:05', '', '0', '7b004e56af474e95a5c6edd291465bc2', '0,7b004e56af474e95a5c6edd291465bc2,', '高密区', '30');
INSERT INTO `site_type` VALUES ('9c905fdd4ed54948bb3d4b428cae8748', '1', '2017-10-14 16:45:58', '1', '2017-10-14 16:46:56', '奎文区', '0', '6c5eda8ab04d429d8f1affb84686095d', '0,6c5eda8ab04d429d8f1affb84686095d,', '奎文区', '30');
INSERT INTO `site_type` VALUES ('a84e1dc51ee84eb380366f6c493f3694', '1', '2017-10-19 10:09:46', '1', '2017-10-19 10:09:46', '昌乐县某健身中心', '0', '6c5eda8ab04d429d8f1affb84686095d', '0,6c5eda8ab04d429d8f1affb84686095d,', '昌乐县', '90');
INSERT INTO `site_type` VALUES ('b946510f712243219a9bde7c73edbcdb', '1', '2017-10-14 16:46:07', '1', '2017-10-14 16:46:07', '寒亭区', '0', '6c5eda8ab04d429d8f1affb84686095d', '0,6c5eda8ab04d429d8f1affb84686095d,', '寒亭区', '60');
INSERT INTO `site_type` VALUES ('d9f6a51f3d194ba7a24421941a7bfa06', '1', '2017-10-19 10:23:37', '1', '2017-10-19 10:23:37', '', '0', '7b004e56af474e95a5c6edd291465bc2', '0,7b004e56af474e95a5c6edd291465bc2,', '寒亭区', '60');
INSERT INTO `site_type` VALUES ('f897b7e8379547a1935323a2b3157adf', '1', '2017-10-14 16:46:21', '1', '2017-10-14 16:46:21', '高新区', '0', '323f395af5ea4392b8d651130f5ae363', '0,323f395af5ea4392b8d651130f5ae363,', '高新区', '30');

-- ----------------------------
-- Table structure for sys_access_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_access_token`;
CREATE TABLE `sys_access_token` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `accesstoken` varchar(500) DEFAULT NULL COMMENT 'accesstoken',
  `expiresin` int(11) DEFAULT NULL COMMENT 'expiresin',
  `tokentime` varchar(64) DEFAULT NULL COMMENT 'tokentime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统微信Token表';

-- ----------------------------
-- Records of sys_access_token
-- ----------------------------
INSERT INTO `sys_access_token` VALUES ('1ef252a46b054a10b9c30a4f7284c3ad', '1', '2017-03-13 17:39:42', '1', '2017-03-13 17:39:42', null, '0', 'NQ7ro8jygqYrvABX7LLWrCc2NUz96spqfHbNIc7kJ5iMstS38iP8wymg0V_vrQaMr-Y0QcKlMPGRaiaShWYLb0Jmy9E4dWgHyrBQw1vW3QMUAUbAFAGMG', '7200', '1489648269');

-- ----------------------------
-- Table structure for sys_android_version
-- ----------------------------
DROP TABLE IF EXISTS `sys_android_version`;
CREATE TABLE `sys_android_version` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `bbh` varchar(10) DEFAULT NULL COMMENT '版本号',
  `downloadurl` varchar(500) DEFAULT NULL COMMENT '下载地址',
  `shuoming` varchar(500) DEFAULT NULL COMMENT '说明',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `apptype` varchar(64) DEFAULT NULL COMMENT 'App类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='安卓APP版本管理';

-- ----------------------------
-- Records of sys_android_version
-- ----------------------------
INSERT INTO `sys_android_version` VALUES ('6481b4518bcf48cba94ae8b64377b633', '1.2', '/dispatch/upload/2017-06-30-2017-06-26-201706261021ERA.apk', '', '1', '2017-06-30 09:46:36', '1', '2017-06-30 09:46:36', null, '0', 'android');
INSERT INTO `sys_android_version` VALUES ('6c8dbde1090443a6a5f41a63d5cc0ac2', '1.1', '/dispatch/upload/2017-06-12-20170610ERA.apk', '测试', '1', '2017-06-12 17:23:45', '1', '2017-06-12 17:23:45', null, '0', 'android');
INSERT INTO `sys_android_version` VALUES ('7e25d63f0ade42d0ba2f0a66d831c2e0', '1.0', '/dispatch/upload/2017-06-10-20170610ERA.apk', '全新ERA服务人员使用的App', '1', '2017-06-10 09:10:31', '1', '2017-06-10 09:10:31', null, '0', 'android');
INSERT INTO `sys_android_version` VALUES ('e3523bddf3f24cd19af51c2f4f2eacb0', '1.0', 'https://era.qdelink.cn:8443/index.html', 'ios初体验', '1', '2017-06-30 09:45:28', '1', '2017-06-30 09:45:28', null, '0', 'ios');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('01c6f04f5d394e23b8e8e1aeba54be96', '1', '每周跑3天', 'classes_mzcq', '每周出勤', '20', '0', '1', '2017-10-15 17:09:31', '1', '2017-10-15 17:09:31', '', '0');
INSERT INTO `sys_dict` VALUES ('0289ac4375374fc4a0e1ce5c721902cc', '1', '兑换码兑换', 'order_gkfs', '付款方式', '20', '0', '1', '2017-10-20 13:54:10', '1', '2017-10-20 13:54:10', '', '0');
INSERT INTO `sys_dict` VALUES ('0a22f3278a624882a822e0820f27efcb', '1', '主表', 'table_type', '表类型', '20', '0', '1', '2016-01-05 21:47:14', '1', '2016-01-05 21:53:34', '', '0');
INSERT INTO `sys_dict` VALUES ('0e90ec051a4e4621800715f8f810aeb3', '3', '操课房', 'sitedevices', '场馆设备', '30', '0', '1', '2017-10-14 15:21:05', '1', '2017-10-14 15:21:05', '', '0');
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11001a8fbd174d56b9f1ecc81a4bfc87', '3', '约跑奖金', 'tranc_record_jylx', '交易类型', '40', '0', '1', '2017-10-17 11:31:45', '1', '2017-10-17 11:31:45', '', '0');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11e3a08cf2034f07b3ec2ff0ddaa707a', '4', '免费停车', 'sitedevices', '场馆设备', '40', '0', '1', '2017-10-14 15:21:19', '1', '2017-10-14 15:21:19', '', '0');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('1afee307da4b49a7a7d8a377370abe5c', '0', '免费体验卡', 'package_pkgtype', '套餐卡类型', '10', '0', '1', '2017-10-15 12:46:18', '1', '2017-10-15 12:46:18', '', '0');
INSERT INTO `sys_dict` VALUES ('1c0ac576c33d41fcb4c16602bf4fad5d', 'post', 'post', 'interface_type', '接口类型', '20', '0', '1', '2015-11-30 15:52:25', '1', '2015-11-30 15:52:39', '', '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('221a918bd1e149239a17ab0fdeaf5ecd', 'get', 'get', 'interface_type', '接口类型', '10', '0', '1', '2015-11-30 15:51:56', '1', '2015-11-30 15:51:56', '', '0');
INSERT INTO `sys_dict` VALUES ('269d8e9fcc7a4f40ae08b2ad13180187', '6', '￥100元', 'classes_mrqyj', '每日契约金', '60', '0', '1', '2017-10-15 17:13:55', '1', '2017-10-15 17:13:55', '', '0');
INSERT INTO `sys_dict` VALUES ('2e49974f4ba2401e831dbde7e950e8e9', '0', '已领取', 'withdraw_lqzt', '领取状态', '10', '0', '1', '2017-10-17 14:10:07', '1', '2017-10-17 14:10:07', '', '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32ab511b4f1949afac67cbfe0f1c92d4', 'zc', '正常', 'user_status', '用户状态', '10', '0', '1', '2017-03-02 15:56:59', '1', '2017-03-02 15:56:59', '', '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('337b5fb3d763427abca0c184738393d0', '1', '提现', 'tranc_record_jylx', '交易类型', '20', '0', '1', '2017-10-17 11:31:03', '1', '2017-10-17 11:31:03', '', '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('352e9a79bc254e098ac139d66836e16f', '3', '已使用', 'code_status_isstatus', '兑换码状态', '30', '0', '1', '2017-10-14 15:59:15', '1', '2017-10-14 15:59:15', '', '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3780438a102f474cb906c44d627e23f8', '1', '已付款', 'order_orderstatus', '订单状态', '20', '0', '1', '2017-10-16 17:10:39', '1', '2017-10-20 14:13:47', '', '0');
INSERT INTO `sys_dict` VALUES ('38d7769b34a6401c8b6654dead893323', '3', '每周跑5天', 'classes_mzcq', '每周出勤', '40', '0', '1', '2017-10-15 17:10:03', '1', '2017-10-15 17:10:03', '', '0');
INSERT INTO `sys_dict` VALUES ('3a43b27257ba4411b583af93c2e2bfb4', '3', '￥30元', 'classes_mrqyj', '每日契约金', '40', '0', '1', '2017-10-15 17:12:54', '1', '2017-10-15 17:13:06', '', '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('405d4aacc597428480af9f0d5089d8f6', '2', '5KM', 'classes_mrgls', '每日公里数', '30', '0', '1', '2017-10-15 17:07:35', '1', '2017-10-15 17:07:35', '', '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('428bc11142a54afba07f4c1d9ac9e157', '0', '待审核', 'withdraw_shzt', '审核状态', '10', '0', '1', '2017-10-17 14:08:50', '1', '2017-10-17 14:25:21', '', '0');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('43716582d8eb4be0be5a633165dc49b0', '3', '8KM', 'classes_mrgls', '每日公里数', '40', '0', '1', '2017-10-15 17:08:02', '1', '2017-10-15 17:08:02', '', '0');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('475b5c695d24495d845c182968435d49', '0', '2KM', 'classes_mrgls', '每日公里数', '10', '0', '1', '2017-10-15 17:07:11', '1', '2017-10-15 17:07:11', '', '0');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5095210b806e4b638edc70b55fccc7a0', '0', '时事新闻', 'news_category', '所属新闻分类', '10', '0', '1', '2017-10-14 17:32:45', '1', '2017-10-14 17:34:08', '', '0');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('554a0f3277c04e9fa386dd7c45f4748b', '2', '场馆管理员', 'user_type', '用户类型', '20', '0', '1', '2017-10-15 13:43:18', '1', '2017-10-15 13:43:18', '', '0');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5b899603552c48519e7ba8eb9da0b41f', '0', '单表', 'table_type', '表类型', '10', '0', '1', '2016-01-05 21:46:39', '1', '2016-01-05 21:53:50', '', '0');
INSERT INTO `sys_dict` VALUES ('5e4c7e275dd54cd5b1cbbd657867b778', '0', '￥5元', 'classes_mrqyj', '每日契约金', '10', '0', '1', '2017-10-15 17:12:12', '1', '2017-10-15 17:12:12', '', '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('666f4c0e370d4a1fa3812328e2ea842f', '5', '每周跑7天', 'classes_mzcq', '每周出勤', '60', '0', '1', '2017-10-15 17:10:29', '1', '2017-10-15 17:10:29', '', '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68135dbac5554c3d86fe68380184bcaf', '1', '免费WIFI', 'sitedevices', '场馆设备', '10', '0', '1', '2017-10-14 15:20:31', '1', '2017-10-14 15:20:31', '', '0');
INSERT INTO `sys_dict` VALUES ('6c4cde1921864ff7a8243fae2c4aed17', '0', '未领用', 'code_status_isstatus', '兑换码状态', '10', '0', '1', '2017-10-14 15:58:04', '1', '2017-10-14 15:58:32', '', '0');
INSERT INTO `sys_dict` VALUES ('71804c6b820048b09c9f6f2c11121113', 'ace', 'ACE风格', 'theme', '主题方案', '15', '0', '1', '2016-04-20 21:57:21', '1', '2016-04-20 21:57:21', '', '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('733138f59a9e43c78952928028bbf2e8', '1', '跑团入住', 'classes_classtype', '班级类型', '20', '0', '1', '2017-10-15 17:01:44', '1', '2017-10-15 17:01:44', '', '0');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('784b4a5b1a92401389561d003d26120f', '0', '金额付款', 'order_gkfs', '付款方式', '10', '0', '1', '2017-10-20 13:54:00', '1', '2017-10-20 13:54:00', '', '0');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('80a5e2bc838d4d4c9a12f635dcf5302b', '3', '兴趣小组', 'classes_classtype', '班级类型', '40', '0', '1', '2017-10-15 17:02:54', '1', '2017-10-15 17:02:54', '', '0');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('87cd8076bacb451cb6581ba2281da609', '2', '审核未通过', 'withdraw_shzt', '审核状态', '30', '0', '1', '2017-10-17 14:09:29', '1', '2017-10-17 14:26:56', '', '0');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('8f7a9347de6f48f3b4d9d1328ae095b6', '1', '超级管理员', 'user_type', '用户类型', '10', '0', '1', '2017-03-02 16:08:55', '1', '2017-10-14 14:13:38', '', '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('9026a679d5a44602b2f25310611676be', '0', '购卡消费', 'tranc_record_jylx', '交易类型', '10', '0', '1', '2017-10-17 11:30:48', '1', '2017-10-17 11:30:48', '', '0');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('91b17271e3084384b13c35e3e2c64993', '2', '单车房', 'sitedevices', '场馆设备', '20', '0', '1', '2017-10-14 15:20:46', '1', '2017-10-14 15:20:46', '', '0');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('9b5655dac0704871b84903af4be88bfa', '1', '已领未使用', 'code_status_isstatus', '兑换码状态', '20', '0', '1', '2017-10-14 15:59:01', '1', '2017-10-14 15:59:01', '', '0');
INSERT INTO `sys_dict` VALUES ('9c2a7f684b1d4525a02097343a73336f', '2', '每周跑4天', 'classes_mzcq', '每周出勤', '30', '0', '1', '2017-10-15 17:09:49', '1', '2017-10-15 17:09:49', '', '0');
INSERT INTO `sys_dict` VALUES ('9ee8dabcc72a4dc2958281d8f5e621e5', '2', '年卡', 'package_pkgtype', '套餐卡类型', '30', '0', '1', '2017-10-15 12:49:33', '1', '2017-10-15 12:49:33', '', '0');
INSERT INTO `sys_dict` VALUES ('a6cfb8060ddd458ea0f8f67777e19e3d', '0', '个人发起', 'classes_classtype', '班级类型', '10', '0', '1', '2017-10-15 17:00:59', '1', '2017-10-15 17:00:59', '', '0');
INSERT INTO `sys_dict` VALUES ('aa9982bea598475db5cdb64b1f25c03b', '4', '￥50元', 'classes_mrqyj', '每日契约金', '50', '0', '1', '2017-10-15 17:13:31', '1', '2017-10-15 17:13:31', '', '0');
INSERT INTO `sys_dict` VALUES ('aaf462ea010340a9af8e00cded1bd27e', '1', '￥10元', 'classes_mrqyj', '每日契约金', '20', '0', '1', '2017-10-15 17:12:22', '1', '2017-10-15 17:12:22', '', '0');
INSERT INTO `sys_dict` VALUES ('ac7de589a9884999a4dfb927108c82b5', '2', '场馆支出', 'tranc_record_jylx', '交易类型', '30', '0', '1', '2017-10-17 11:31:27', '1', '2017-10-17 11:31:27', '', '0');
INSERT INTO `sys_dict` VALUES ('ba9b792dd93b4a8d91b67f7685f1af14', '4', '9KM', 'classes_mrgls', '每日公里数', '50', '0', '1', '2017-10-15 17:08:11', '1', '2017-10-15 17:08:11', '', '0');
INSERT INTO `sys_dict` VALUES ('bde6043665ef4571b85d0edab667cd15', '3', '树结构表', 'table_type', '表类型', '40', '0', '1', '2016-01-06 19:48:50', '1', '2016-01-06 19:48:50', '', '0');
INSERT INTO `sys_dict` VALUES ('c4247caf4bcc44a5bfbcff058c0aae14', '1', '一次性体验卡', 'package_pkgtype', '套餐卡类型', '20', '0', '1', '2017-10-15 12:47:34', '1', '2017-10-15 12:47:34', '', '0');
INSERT INTO `sys_dict` VALUES ('c6f2c0e5926e44dc8d5fad8322488d29', '4', '每周跑6天', 'classes_mzcq', '每周出勤', '50', '0', '1', '2017-10-15 17:10:21', '1', '2017-10-15 17:10:21', '', '0');
INSERT INTO `sys_dict` VALUES ('c8780e203f444997af8b569d023b87d4', '5', '泳池', 'sitedevices', '场馆设备', '50', '0', '1', '2017-10-14 15:21:29', '1', '2017-10-14 15:21:29', '', '0');
INSERT INTO `sys_dict` VALUES ('ca4d4dd02ba9402da17426fc610ff02a', '1', '已使用', 'appointstatus', '预约状态', '20', '0', '1', '2017-10-17 09:30:35', '1', '2017-10-17 09:30:35', '', '0');
INSERT INTO `sys_dict` VALUES ('cc94b0c5df554a46894991210a5fc486', '2', '附表', 'table_type', '表类型', '30', '0', '1', '2016-01-05 21:47:38', '1', '2016-01-05 21:53:44', '', '0');
INSERT INTO `sys_dict` VALUES ('d3d2823aa5bf4a4facb04c701c546aa1', '1', '3KM', 'classes_mrgls', '每日公里数', '20', '0', '1', '2017-10-15 17:07:23', '1', '2017-10-15 17:07:23', '', '0');
INSERT INTO `sys_dict` VALUES ('df2b4616ed82472eb8eea61d84efec88', 'ty', '停用', 'user_status', '用户状态', '20', '0', '1', '2017-03-02 15:57:10', '1', '2017-03-02 15:57:10', '', '0');
INSERT INTO `sys_dict` VALUES ('e339583af31e4e2795a1b5a7736d4a88', '1', '视频', 'news_category', '所属新闻分类', '20', '0', '1', '2017-10-14 17:33:08', '1', '2017-10-14 17:33:59', '', '0');
INSERT INTO `sys_dict` VALUES ('e3d3e2624b8b46f1a8cd1a8c01c8bc26', '5', '校园跑班', 'classes_classtype', '班级类型', '60', '0', '1', '2017-10-15 17:04:16', '1', '2017-10-15 17:04:16', '', '0');
INSERT INTO `sys_dict` VALUES ('e984f152d98942a795af3b9e3fe0ae42', '1', '审核通过', 'withdraw_shzt', '审核状态', '20', '0', '1', '2017-10-17 14:09:13', '1', '2017-10-17 14:26:50', '', '0');
INSERT INTO `sys_dict` VALUES ('ed4e4525eaa0425ca0af512cfb6632ba', '1', '未领取', 'withdraw_lqzt', '领取状态', '20', '0', '1', '2017-10-17 14:10:17', '1', '2017-10-17 14:10:17', '', '0');
INSERT INTO `sys_dict` VALUES ('edbbb53d74034de6a7064f1170634f3b', '0', '未付款', 'order_orderstatus', '订单状态', '10', '0', '1', '2017-10-16 17:10:27', '1', '2017-10-20 14:13:42', '', '0');
INSERT INTO `sys_dict` VALUES ('f075f99f0abd46a89b578f571f7b42bc', '2', '瘦身减脂', 'classes_classtype', '班级类型', '30', '0', '1', '2017-10-15 17:02:20', '1', '2017-10-15 17:02:20', '', '0');
INSERT INTO `sys_dict` VALUES ('f6ed02a4e3264b598d662762caa554a7', '4', '社会组织', 'classes_classtype', '班级类型', '50', '0', '1', '2017-10-15 17:03:26', '1', '2017-10-15 17:03:26', '', '0');
INSERT INTO `sys_dict` VALUES ('fb0a29e6c4d8406a99a7780e0d83b544', '0', '未使用', 'appointstatus', '预约状态', '10', '0', '1', '2017-10-17 09:30:23', '1', '2017-10-17 09:30:23', '', '0');
INSERT INTO `sys_dict` VALUES ('ff5520147f3c491ea3997611607d4736', '2', '￥20元', 'classes_mrqyj', '每日契约金', '30', '0', '1', '2017-10-15 17:12:30', '1', '2017-10-15 17:13:03', '', '0');
INSERT INTO `sys_dict` VALUES ('ffc74ff8dbec4f86b556e6046b31f0ce', '0', '每周跑2天', 'classes_mzcq', '每周出勤', '10', '0', '1', '2017-10-15 17:09:19', '1', '2017-10-15 17:09:19', '', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('023c195dd5ff4be2aa45850f83bf3084', '1', '系统登录', '1', '2017-10-18 15:14:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0287f4c01e274919beda4b40368b8042', '1', '系统登录', '1', '2017-10-17 18:30:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/appointrecord/appointRecord/form', 'GET', 'id=123', '');
INSERT INTO `sys_log` VALUES ('02978841a93846d590563e6e1ad57108', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-17 10:00:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('029b306ca83b4a9599a2d62b57fbeeee', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 10:33:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('02ef594ffbce4cd5b5873ffaba503ad6', '1', '系统登录', '1', '2017-10-14 17:15:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('03d5fcabaf7348c1a019de639d6eef32', '1', '系统登录', '1', '2017-10-19 10:49:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('06b1faf2e9e4435089eda06cef618fa8', '1', '系统登录', '1', '2017-10-20 14:49:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('06cad61fd6ff4095b4f6b44dda39759d', '1', '系统登录', '1', '2017-10-20 14:40:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/cardconsumerecord/cardConsumeRecord/form', 'GET', 'id=a9833087531a42ab908a843005a57065', '');
INSERT INTO `sys_log` VALUES ('0873742a2eed45c8a6f520c6ef75959b', '1', '系统登录', '1', '2017-10-18 14:26:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('08e0087e097a4cef97736101acd17237', '1', '系统登录', '1', '2017-10-19 11:45:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/order/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('08ed374dda77498d9e4ce3e76ea7c20e', '1', '系统登录', '1', '2017-10-16 13:59:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0ab5560dfdb0492b8498749d7948dfb6', '1', '系统登录', '1', '2017-10-18 14:08:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0db9a29d57424fd892c215d7cd0ac88e', '1', '系统登录', '1', '2017-10-15 17:03:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0eb4423a61d3471d88c6ef0f0d0a89f7', '1', '系统登录', '1', '2017-10-16 18:04:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('110c2eeb2cb94c459c4b8b57e4770706', '1', '系统登录', '1', '2017-10-14 17:45:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/', 'POST', 'pageNo=1&pageSize=10&orderBy=&name=&sitetype.id=&sitetype.name=&mobile=', '');
INSERT INTO `sys_log` VALUES ('1257c746163348089301ba36a5bbfa1f', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 16:23:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12c29ba2ac6442d79abdf0a7522db621', '1', '系统登录', '1', '2017-10-14 16:45:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('15782d2a7cf044a696b6b1ba00632253', '1', '系统登录', '1', '2017-10-15 10:22:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('196aff90402245078762dd2d59717779', '1', '系统登录', '1', '2017-10-20 10:01:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classessignup/classesSignup/', 'POST', 'pageNo=1&pageSize=10&orderBy=qyj DESC&bmbh=&bmrname=&classesname=&lxsj=', '');
INSERT INTO `sys_log` VALUES ('1a1905aa05cb4e008223f8b37c10e67d', '1', '系统登录', 'afc235e4465744d8a55af60034c17076', '2017-10-19 10:49:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/site/site/infoform', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1de248471eaf4c45b1e0bdd515099cfe', '1', '系统登录', '1', '2017-10-15 09:42:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('1f5856fc6f154120a0e2895689f8ef66', '1', '系统登录', '1', '2017-10-20 11:17:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/appointrecord/appointRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2167d86172824acc8ee362c24b1bd48d', '1', '系统登录', '1', '2017-10-14 16:01:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'POST', 'pageNo=1&pageSize=10&orderBy=&nameLike=&comments=&parentTable=', '');
INSERT INTO `sys_log` VALUES ('22a6f2f6e5c24c98a82d598c034481e6', '1', '系统登录', '31285722b3554eabae32b0879f191b1f', '2017-10-18 14:38:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('239d8572a0054005ac65a20d8f5e3925', '1', '系统登录', '1', '2017-10-18 14:37:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2731974c7e8e4aa5820d689fd4b712af', '1', '系统登录', '1', '2017-10-14 16:18:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2783d0f211984840bbf48b07362d1d7a', '1', '系统登录', '1', '2017-10-24 11:26:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('27b56890e53e435f8f977c69529ba2ed', '1', '系统登录', '1', '2017-10-18 17:31:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('27e486a742664f2689f4e136601c3ca3', '1', '系统登录', '1', '2017-10-15 10:14:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('281efede98e6439da6b3c33e05194473', '1', '系统登录', '1', '2017-10-20 12:13:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/withdraw/withdraw/', 'POST', 'pageNo=1&pageSize=10&orderBy=&sqrname=&shzt=&lqzt=', '');
INSERT INTO `sys_log` VALUES ('28bd54c4105a433281f985bf736282b8', '1', '系统登录', '1', '2017-10-25 15:35:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/sitetype/sitetype', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2aaecf8a75e14078bd1bb6d10f05f1ed', '1', '系统登录', '1', '2017-10-18 13:52:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2b7176224e0046919d67600bbaec7750', '1', '系统登录', '1', '2017-10-16 18:27:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2dbe913ceffe4cfc9aa9405f1e9f6cb2', '1', '系统登录', '1', '2017-10-15 11:10:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2efb940fd633411f84865628d217a301', '1', '系统登录', '1', '2017-10-20 10:27:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/moneypoolrecord/moneyPoolRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2f1f5b8f09e44d6c8a63a490b329580c', '1', '系统登录', '1', '2017-10-20 13:51:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2f41c8f38f354467b35cd510ccb255ef', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 14:50:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3016372573d4474dabd3b44801d1a001', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-15 14:42:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('307a19ba3438431ca6ce7c2050a1ff36', '1', '系统登录', '1', '2017-10-16 10:25:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('309ce77c358544379260744903afa072', '1', '系统登录', '1', '2017-10-20 12:01:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/moneybackrecord/moneyBackRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('31e2e158f7574bd6b8e58da64b8aa72a', '1', '系统登录', '1', '2017-10-15 15:05:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('33969405750342adb4da58ad361cdfe3', '1', '系统登录', '1', '2017-10-15 19:42:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('33ccdd2a74b54450963c39ddf0d0c5b6', '1', '系统登录', '1', '2017-10-15 18:29:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/member/member', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('34cc01198f6741f4a9b3d8ee5abc764e', '1', '系统登录', '1', '2017-10-15 19:49:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('365de66a57b24a99af4ec0a8455bf731', '1', '系统登录', '1', '2017-10-19 11:09:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark/', 'POST', 'pageNo=1&pageSize=100&orderBy=&membername=&siteid=&sitename=&shzt=&shrname=', '');
INSERT INTO `sys_log` VALUES ('366119b51bbe4164955a472ce2cccd1b', '1', '系统登录', '1', '2017-10-16 10:45:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3732f66beecb43658b6fcda073a2280d', '1', '系统登录', '1', '2017-10-25 16:25:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteuser/siteuser/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3afe4733ee7746ceba666441dd9bcd9e', '1', '系统登录', '1', '2017-10-15 17:37:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/member/member/', 'POST', 'pageNo=1&pageSize=10&orderBy=&loginName=&name=', '');
INSERT INTO `sys_log` VALUES ('3c4ce8954ec54edbbbd81a66100db77e', '1', '系统登录', '1', '2017-10-19 11:33:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/order/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3cb6fc8f51924c519755725861594e0f', '1', '系统登录', '1', '2017-10-25 15:08:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3e1970a58cdb4501b505eedf8b8a8145', '1', '系统登录', '1', '2017-10-15 20:00:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3ed14e48bb814c038a94e58563d3c5d5', '1', '系统登录', '31285722b3554eabae32b0879f191b1f', '2017-10-18 14:30:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3fa42dd133f9434fb3e589d2ad3c615a', '1', '系统登录', '1', '2017-10-15 14:42:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('40974a674f6b471aab5a452923eea59f', '1', '系统登录', '1', '2017-10-14 17:09:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('415d73bbc5094b6fb7f46e60cc57ef17', '1', '系统登录', '1', '2017-10-19 13:41:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('431a16b1d03047f29a01e4a28b7f7aeb', '1', '系统登录', '1', '2017-10-20 10:17:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classessignup/classesSignup/', 'POST', 'pageNo=1&pageSize=10&orderBy=&bmbh=&bmrname=&classesname=	奔跑班&lxsj=', '');
INSERT INTO `sys_log` VALUES ('434e682a02664453a9535bb833a5d977', '1', '系统登录', '1', '2017-10-25 17:07:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classes/classes', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4379c84e6a524f648b5059d7d60f08cf', '1', '系统登录', '1', '2017-10-24 11:36:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/site/site/save', 'POST', 'id=9eb027dfe86b4b7d91e87406f24882d1&name=激情乒乓球&sitetype.id=995d6052ebff433c9fe21f415ae2d3cf&sitetype.name=高密区&simg=|/sman/userfiles/1/images/site/site/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg|/sman/userfil...&mobile=800820&province=山东省&city=潍坊市&county=高密市&label=山东省潍坊市高密市人民大街371号&longitude=119.76201&latitude=36.389029&contents=&devices=1&_devices=on&orderoc=1&maxordernumday=100&noorderrqq=2017-10-18&noorderrqz=2017-10-19', '');
INSERT INTO `sys_log` VALUES ('4386b1d3a73d4fc18c94c25c7b411f30', '1', '系统登录', '1', '2017-10-15 15:07:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('472ae96349054264936a26ee24062378', '1', '系统登录', '1', '2017-10-24 16:49:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('476c1273f48a4efaa0a461094ab25b43', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 16:03:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('484f92d968504827b247b36502408253', '1', '系统登录', '1', '2017-10-15 19:59:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('493dbd77b6304136ba471a3cd82e9f22', '1', '系统登录', '1', '2017-10-16 10:53:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('4952c2dce1c145febcb671cd4056612f', '1', '系统登录', '1', '2017-10-14 16:13:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('4d3911ac826f4e10a9bfa0d69a183b5e', '1', '系统登录', '1', '2017-10-14 16:26:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('4dca34fedd984d7e8411965df9665cd2', '1', '系统登录', '1', '2017-10-16 11:12:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('4e222b8090af47e5851d5358846c9767', '1', '系统登录', '1', '2017-10-14 16:42:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5028613d57604517a7601cca65bfb430', '1', '系统登录', '1', '2017-10-20 11:46:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/moneybackrecord/moneyBackRecord/', 'POST', 'pageNo=1&pageSize=10&orderBy=&yprname=&classes=&classes.name=', '');
INSERT INTO `sys_log` VALUES ('527e94a2de9145d2b86bfeaf7d47b189', '1', '系统登录', '1', '2017-10-20 14:02:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('534e4b6c51bf4c198c5146b21251bbe1', '1', '系统登录', '1', '2017-10-20 15:35:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('54864b707eeb447997c2628ea747ee27', '1', '系统登录', '1', '2017-10-17 18:32:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('549ab2ce0aae4821852e3b7e2f1c16e0', '1', '系统登录', '1', '2017-10-24 16:59:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classes/classes/save', 'POST', 'id=fc559f553f9246fb9009cfb0e36e7497&name=练肌班&imgurl=/sman/userfiles/1/images/classes/classes/2017/10/TIM%E6%88%AA%E5%9B%BE20171013151557.jpg&classtype=3&mrgls=3.5&mzcq=2&mrqyj=400.05', '');
INSERT INTO `sys_log` VALUES ('55115fbd8cbb45a29e6866ade0b1cf6f', '1', '系统登录', '1', '2017-10-17 18:10:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5832c9272c6d422c9999b8786bf07075', '1', '系统登录', '1', '2017-10-15 18:21:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('587c3fda933f498993c7c6b014f5d4f2', '1', '系统登录', '1', '2017-10-25 17:16:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/bonussend/bonusSend', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5961b9752d5c451783e784764ae71a69', '1', '系统登录', '1', '2017-10-20 15:57:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/webpage/modules/siteremark/siteRemarkList.jsp', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5bd9186c23784bf380b16339f0d98134', '1', '系统登录', '1', '2017-10-18 14:20:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/cardconsumerecord/cardConsumeRecord/', 'POST', 'pageNo=1&pageSize=10&orderBy=&card.cardbh=&syrname=&sysj=&site=&site.name=', '');
INSERT INTO `sys_log` VALUES ('5c15e18f19c94f269635e06d6a31ded0', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 11:12:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5d0016b4f47e425bb49c803df54d27ad', '1', '系统登录', '1', '2017-10-18 11:59:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5d248ad7f34b4fa5805418855051f223', '1', '系统登录', '1', '2017-10-19 10:25:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/site/site', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e49a47bf87e4bb0baf29b9b0bf05c41', '1', '系统登录', '1', '2017-10-17 09:53:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5f9937a25554490bbef97d281045833f', '1', '系统登录', '1', '2017-10-17 17:58:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5fc4109bee8948e99427f60c6477780a', '1', '系统登录', '1', '2017-10-24 17:01:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classes/classes/', 'POST', 'pageNo=1&pageSize=10&orderBy=&name=&classtype=&mrgls=&mzcq=&mrqyj=', '');
INSERT INTO `sys_log` VALUES ('603bb6db1a624aacaa9b17303b9ca39a', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-18 14:38:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('611cdfaac9f1459e867b0319027d1940', '1', '系统登录', '1', '2017-10-14 17:55:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/', 'POST', 'pageNo=1&pageSize=10&orderBy=&name=&sitetype.id=&sitetype.name=&mobile=', '');
INSERT INTO `sys_log` VALUES ('61688cb3f76e4f05ae8b7cf52ef7f4f6', '1', '系统登录', '1', '2017-10-19 12:02:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/card/card/', 'POST', 'pageNo=0&pageSize=10&orderBy=&cardbh=18&pkg=&pkg.name=&memebr=&memebr.name=', '');
INSERT INTO `sys_log` VALUES ('6367abb85e7b45dabf52e2d8c5cf44fa', '1', '系统登录', '1', '2017-10-17 18:06:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('63f21e821327486cbc13b1358972e043', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-18 10:38:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('6431b665477247b18d5f08c6abf512a2', '1', '系统登录', '1', '2017-10-15 14:18:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('68d65498a6384722beddeaf9099b0deb', '1', '系统登录', '1', '2017-10-25 16:35:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/member/member', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6a6d339455894815b62c5c02fdf60358', '1', '系统登录', '1', '2017-10-16 14:06:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6b48f4dd5c0e495abd4d617338663495', '1', '系统登录', '1', '2017-10-19 11:22:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/member/member/', 'POST', 'pageNo=1&pageSize=10&orderBy=&loginName=&name=', '');
INSERT INTO `sys_log` VALUES ('6d488c09c9654c07b63600237919fefe', '1', '系统登录', '1', '2017-10-20 14:30:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/news/news/', 'POST', 'pageNo=1&pageSize=10&orderBy=xh DESC&title=&category=', '');
INSERT INTO `sys_log` VALUES ('6f9cbc134c5c4f0fad384ad6f9d06e78', '1', '系统登录', '1', '2017-10-15 16:58:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('72f560aeb7b645be80d56e8520cefc34', '1', '系统登录', '1', '2017-10-15 11:20:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/form', 'GET', 'id=e6180d6f3fc04588bd03505acb344b7f', '');
INSERT INTO `sys_log` VALUES ('730eb3a4bce94ecf91ed5215453c7674', '1', '系统登录', '1', '2017-10-20 16:33:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('730fcefb745b43a98c0ea2f8d8ad8dc4', '1', '系统登录', '1', '2017-10-25 15:59:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/tag/treeselect', 'GET', 'url=/sitetype/sitetype/treeData&module=&checked=&extId=&isAll=', '');
INSERT INTO `sys_log` VALUES ('73fc1dad16f04c9c8992e01ce60bb0ed', '1', '系统登录', '1', '2017-10-20 16:22:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('743567c002a44278a5a5e6245a34e9b9', '1', '系统登录', '1', '2017-10-15 15:08:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('74b1252e76e944aa95d4ab7c61fdff7e', '1', '系统登录', '1', '2017-10-25 15:41:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/sitetype/sitetype/', 'POST', 'name=奎文', '');
INSERT INTO `sys_log` VALUES ('74fea3a400f34983b8fb26a990815963', '1', '系统登录', '1', '2017-10-20 14:10:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('75d76f5017744738807f4ea0ec08a727', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-18 14:29:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('760d318a838a492aab6633348def9e1a', '1', '系统登录', '1', '2017-10-15 15:44:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('77730998b3f74dfc9117040c3223f9c0', '1', '系统登录', '1', '2017-10-20 10:41:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/moneypoolrecord/moneyPoolRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('77cb715517b34f57bdbbad3b7bf378d8', '1', '系统登录', '1', '2017-10-17 10:00:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/appointrecord/appointRecord/', 'POST', 'pageNo=1&pageSize=10&orderBy=&yybh=&yyrname=&cardbh=&yysj=&status=&sysj=', '');
INSERT INTO `sys_log` VALUES ('795a561f26504bf3b37a185dcd49ac0a', '1', '系统登录', '1', '2017-10-14 16:25:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('795dccf2858b41c3979e332832b5b8a3', '1', '系统登录', '1', '2017-10-20 10:57:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/card/card/', 'POST', 'pageNo=1&pageSize=10&orderBy=&cardbh=&pkg=&pkg.name=&memebr=&memebr.name=', '');
INSERT INTO `sys_log` VALUES ('798b2628063f4b3caf21c2e0770804fd', '1', '系统登录', '1', '2017-10-18 10:48:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('7b45cf68afab46abb5e6b21d79989071', '1', '系统登录', '1', '2017-10-19 14:05:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/moneybackrecord/moneyBackRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7be832f046774436a6ed4d7367334a44', '1', '系统登录', '1', '2017-10-14 16:55:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('7c15f108c83241c1b8d2a096b69ef730', '1', '系统登录', '1', '2017-10-25 15:06:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('7c216abfbf364b159af6ad3fc7f9497c', '1', '系统登录', '1', '2017-10-18 18:32:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c78ca4326034cd6beb410aebcc6f285', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-17 09:40:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('7cc3bbdfc9b34ee59ac4128e47c637d1', '1', '系统登录', '1', '2017-10-16 18:17:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('7d7921a3027849f48f7d25edfd289ce6', '1', '系统登录', '1', '2017-10-14 17:34:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sys/role/', 'POST', 'pageNo=&pageSize=&orderBy=&name=', '');
INSERT INTO `sys_log` VALUES ('7da8bb7f07754fb49c2f439c5da93ecc', '1', '系统登录', 'afc235e4465744d8a55af60034c17076', '2017-10-19 10:41:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('80de3c49982848ba96e3d4b70ded5122', '1', '系统登录', '1', '2017-10-17 18:32:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('80e586ea42f241bca49442a5fd31317a', '1', '系统登录', '1', '2017-10-15 14:11:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('817bb4abc479432198b4ca86bafe397a', '1', '系统登录', '1', '2017-10-16 14:19:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'POST', 'pageNo=1&pageSize=10&orderBy=&nameLike=&comments=&parentTable=', '');
INSERT INTO `sys_log` VALUES ('840dc595fb704673968d48405adea8d5', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 15:23:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/cardconsumerecord/cardConsumeRecord/', 'POST', 'pageNo=0&pageSize=10&orderBy=&card.cardbh=&syrname=空&sysj=', '');
INSERT INTO `sys_log` VALUES ('87a70b86c3d149d5afa6435807c69816', '1', '系统登录', '1', '2017-10-18 16:17:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('87ad603e212b42fba82a8c0be3f586ea', '1', '系统登录', '1', '2017-10-19 10:38:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteuser/siteuser', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('87e3c8881ec340a68b08ea90a5061f9b', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-15 15:07:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8915d85faba34e198d43f3a4c33644f6', '1', '系统登录', '1', '2017-10-15 19:56:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('89df4e1d79e04b18b0f71aeedcf4d201', '1', '系统登录', '1', '2017-10-14 16:14:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8a64a088d5bc4368b93bb8f6ffc0f7e8', '1', '系统登录', '1', '2017-10-18 18:23:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sys/menu/updateSort', 'POST', 'ids=79&sorts=20', '');
INSERT INTO `sys_log` VALUES ('8b189ab0a1144a46a8f7899e1b1f684d', '1', '系统登录', '1', '2017-10-20 09:43:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8bc527565a0941a0b467f2788fb49529', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-15 15:08:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8c1a35a82dae4da689a6e25c7ff783b1', '1', '系统登录', '1', '2017-10-18 18:05:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8d3c44d5354041eba03d6be38b2490d5', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-19 11:17:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8e6a4da7504948278102293fa3b3b1a5', '1', '系统登录', '1', '2017-10-16 10:57:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8f3381a0805044789d6052ccf23b8859', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 15:05:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', '/sman/a/siteremark/siteRemark/export', 'POST', 'pageNo=-1&pageSize=-1&orderBy=&membername=&siteid=9ffd57fc9d084eb9b8d13af536b0d957&sitename=&shzt=&shrname=', '');
INSERT INTO `sys_log` VALUES ('8f4602b03a7548ad897d398843a182f8', '1', '系统登录', '1', '2017-10-17 18:20:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/appointrecord/appointRecord/', 'POST', 'pageNo=1&pageSize=10&orderBy=&yybh=&yyrname=&cardbh=&yysj=&status=&sysj=', '');
INSERT INTO `sys_log` VALUES ('90e9e47e8d224a80a53d6e5836ab16d7', '1', '系统登录', '1', '2017-10-15 20:14:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('90faedb667804ac49d9b0fc5591bedc5', '1', '系统登录', '1', '2017-10-15 17:28:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('911399b71dba4727bc23cb6a07247f73', '1', '系统登录', '1', '2017-10-20 15:47:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/webpage/modules/siteremark/siteRemarkList.jsp', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('92558154ab4d4094bc10ef4eb84b4004', '1', '系统登录', '31285722b3554eabae32b0879f191b1f', '2017-10-18 14:26:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('9392bd931f0d4b829ffee72110f2d71e', '1', '系统登录', '1', '2017-10-18 10:53:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('94a466b0118d4738aeda05e12c9765e9', '1', '系统登录', '1', '2017-10-15 10:41:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/save', 'POST', 'id=&name=泰华&sitetype.id=9c905fdd4ed54948bb3d4b428cae8748&sitetype.name=奎文区&mobile=15165326547&longitude=119.525144&latitude=36.590165&label=山东省潍坊市昌邑市&contents=泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华泰华&devices=1&_devices=on', '');
INSERT INTO `sys_log` VALUES ('9536c71811414156a58dde5002a4d483', '1', '系统登录', '1', '2017-10-19 10:58:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('9602f649499c44e4a7629751c9f8c86d', '1', '系统登录', '1', '2017-10-14 18:05:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/save', 'POST', 'id=9ffd57fc9d084eb9b8d13af536b0d957&name=MESHOW健康体重&sitetype.id=9c905fdd4ed54948bb3d4b428cae8748&sitetype.name=奎文区&mobile=4006799191&longitude=&latitude=&label=河西区小白楼五楼&contents=MESHOW健康体重MESHOW健康体重MESHOW健康体重&devices=1&_devices=on', '');
INSERT INTO `sys_log` VALUES ('96f999679dd54524ad3f70e0c611a5b8', '1', '系统登录', '1', '2017-10-16 17:32:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('971b2b3a1a234381b19740eec583607f', '1', '系统登录', '1', '2017-10-14 16:39:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('992d58b7bb15499fae7b15b9c191b353', '1', '系统登录', '1', '2017-10-16 14:06:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('9c89e0ff5fa344e0a4a7f3e54ba675e0', '1', '系统登录', '1', '2017-10-19 10:33:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('9cf12a14ffb542deb6ff50ab2e3cc06d', '1', '系统登录', '1', '2017-10-20 11:48:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/moneybackrecord/moneyBackRecord/export', 'POST', 'pageNo=-1&pageSize=-1&orderBy=&yprname=&classes=&classes.name=', '');
INSERT INTO `sys_log` VALUES ('9ed737d016274a3789d83111063f4086', '1', '系统登录', '1', '2017-10-15 17:02:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('a06754448b88441a8a0b84f3023b84c6', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 15:13:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark/', 'POST', 'pageNo=0&pageSize=10&orderBy=&membername=&siteid=9eb027dfe86b4b7d91e87406f24882d1&sitename=激情乒乓球&shzt=&shrname=', '');
INSERT INTO `sys_log` VALUES ('a2978165005e4f48a1c72d8461d0f5cc', '1', '系统登录', '1', '2017-10-18 10:41:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('a2f14f3122c247f9825e9d4b4ddba659', '1', '系统登录', '1', '2017-10-18 18:13:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/moneybackrecord/moneyBackRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a34d7891c62b4ced9de5495b05619c43', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 10:02:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/cardconsumerecord/cardConsumeRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a5c0389dd1b5454198e9f7957c7af375', '1', '系统登录', '1', '2017-10-17 18:07:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('a709fef6aa5149c2af8b8254ceb427da', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-15 17:03:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('a852d6be5cae4555bce26cfa15f2af32', '1', '系统登录', '1', '2017-10-15 15:18:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('a873dc38919e42a9b457e08823340b03', '1', '系统登录', '1', '2017-10-18 17:55:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('aa09ee88822549eba94f405e576e97cb', '1', '系统登录', '1', '2017-10-20 16:07:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aa13f38bb71346a8b2da1aeb959832ed', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 14:51:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ab0c01cb4a2e47d0a9af49c1acf7af8a', '1', '系统登录', '1', '2017-10-25 16:46:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/cardconsumerecord/cardConsumeRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ab341ee53b214d16aea6871ff09f341f', '1', '系统登录', '1', '2017-10-15 16:25:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ac3b6891b81a4b469c323da485b0f690', '1', '系统登录', '1', '2017-10-18 14:29:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('adb04e798ee940bd8f1829ebf1d37d9b', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 09:45:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ade7cab1aa474b598d5b86dcdfad54ed', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 10:32:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ae6e8f84a78a4d0ab66731673e1c90d3', '1', '系统登录', '1', '2017-10-20 16:20:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b0194a0577304ca7b913a20e772c6228', '1', '系统登录', '1', '2017-10-16 09:52:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('b0fa2b8aea75402aac50c057c30af07b', '1', '系统登录', '1', '2017-10-20 11:28:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/card/card/', 'POST', 'pageNo=1&pageSize=10&orderBy=&cardbh=&pkg=&pkg.name=&memebr=&memebr.name=', '');
INSERT INTO `sys_log` VALUES ('b142c4e475c243269ea6b1ccee983eb6', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-19 11:57:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('b1e82b3852d34fcdba019e32839576cb', '1', '系统登录', '1', '2017-10-17 09:39:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('b342307e31a74dc4bcddd780e65dfc71', '1', '系统登录', '1', '2017-10-15 14:28:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/siteuser/siteuser/', 'POST', 'pageNo=1&pageSize=10&orderBy=&site=&site.name=&loginName=&name=&phone=&userStatus=', '');
INSERT INTO `sys_log` VALUES ('b73e5483293740b8bde08fbe09efb9ba', '1', '系统登录', '1', '2017-10-20 11:07:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/appointrecord/appointRecord/', 'POST', 'pageNo=1&pageSize=10&orderBy=status DESC&yybh=&yyrname=&cardbh=&yysj=&status=&sysj=', '');
INSERT INTO `sys_log` VALUES ('b80d1fed85c64571be909cdd9b307530', '1', '系统登录', '1', '2017-10-25 17:26:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/withdraw/withdraw/', 'POST', 'pageNo=1&pageSize=10&orderBy=&sqrname=&shzt=&lqzt=', '');
INSERT INTO `sys_log` VALUES ('b85ea32ebbf1452db67007b46a5ab0f1', '1', '系统登录', '1', '2017-10-16 10:12:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('b98b9a30bc844c8589a7c560a4efaed6', '1', '系统登录', '1', '2017-10-24 17:04:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classes/classes/export', 'POST', 'pageNo=-1&pageSize=-1&orderBy=&name=&classtype=&mrgls=&mzcq=&mrqyj=', '');
INSERT INTO `sys_log` VALUES ('bc4744ce18544580bf0654bd737358af', '1', '系统登录', '1', '2017-10-19 13:55:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/appointrecord/appointRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bc67c2b033ba48898db8b0f93b0323a7', '1', '系统登录', '1', '2017-10-18 15:59:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('bca0b4248f514d44b106ad90da0887a5', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 16:15:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bef04c74cb554172bc1816d37589359c', '1', '系统登录', '1', '2017-10-19 09:43:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('bfbb4dfc95754acfab9933b6225e848e', '1', '系统登录', '1', '2017-10-20 15:06:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c0c5133f48f843e0b8ef8d7eb0aea988', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 16:27:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c1bc123091c24844a278ded147db3a4e', '1', '系统登录', '1', '2017-10-15 10:31:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c1d68e029d9e4d95808a9934fc2f788a', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 15:04:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c315250c90834eaea2c966f53fdf5d76', '1', '系统登录', '1', '2017-10-15 17:19:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c3c14d0d014b42028681dca4e8ab8f47', '1', '系统登录', '1', '2017-10-25 16:11:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/siteuser/siteuser', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c62341e912bf4854a0863019f7cd15bc', '1', '系统登录', '1', '2017-10-16 14:12:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c6fe37b5887847ccb41d56597357beb2', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-19 10:50:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c727680b1b3b4edc953528adad8c0bb0', '1', '系统登录', '1', '2017-10-15 20:05:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c948cc7367fd400f88426f18fc73f31a', '1', '系统登录', '1', '2017-10-25 15:53:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/site/site/map', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cbe0dee389d94b768c914c1ad34f8ccf', '1', '系统登录', '1', '2017-10-15 13:39:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('cee650c35cfc42c384527249cda96e96', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-19 11:07:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark/', 'POST', 'pageNo=1&pageSize=10&orderBy=&membername=&siteid=9ffd57fc9d084eb9b8d13af536b0d957&sitename=&shzt=&shrname=', '');
INSERT INTO `sys_log` VALUES ('d5f21447411143e28bd45e57f7edfd8a', '1', '系统登录', '1', '2017-10-19 11:52:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/trancrecord/trancRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d6d268704920419e9f35ddb017cd1f15', '1', '系统登录', '1', '2017-10-20 14:20:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/trancrecord/trancRecord', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d6df48d4bb7e42508d7862bf4c63ad2f', '1', '系统登录', '1', '2017-10-19 10:13:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/sitetype/sitetype/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d760d8fc038a4ca78d5e07f49e04e44f', '1', '系统登录', '1', '2017-10-15 17:30:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('d7ec50faeebe492083ac8d622e386460', '1', '系统登录', '1', '2017-10-15 11:45:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/webpage/modules/gen/genTableList.jsp', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('d952543bbd61431f8571dce8b2c07682', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 11:58:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('d963c8dd54c749a39f88585da6a11e07', '1', '系统登录', '1', '2017-10-17 18:03:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('da89ca88dc054f7986d2b58052ce5b68', '1', '系统登录', '1', '2017-10-25 15:21:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('daed03595975481bbb89f6a3aeb8d687', '1', '系统登录', '1', '2017-10-25 17:37:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e040106c44f4489bb566559a3f1f232c', '1', '系统登录', '1', '2017-10-18 16:05:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e1735a3b5a4347e6974fedf92669e57f', '1', '系统登录', '1', '2017-10-20 11:36:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/classmember/classesMember/export', 'POST', 'pageNo=-1&pageSize=-1&orderBy=&membername=&classesname=&lxsj=', '');
INSERT INTO `sys_log` VALUES ('e2ec03fff09c4b3f896140612b89f6aa', '1', '系统登录', '34dff6e97c1c419199b5520e61e6a9f3', '2017-10-20 15:37:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0', '/sman/a/siteremark/siteRemark', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e43d1b6d1c4842938f25aa063dae469e', '1', '系统登录', '1', '2017-10-16 18:17:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e65b7a9a46634233b2007d4aa31ab9b2', '1', '系统登录', '1', '2017-10-15 14:40:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/siteuser/siteuser/', 'POST', 'pageNo=1&pageSize=10&orderBy=&site=&site.name=&loginName=&name=&phone=&userStatus=', '');
INSERT INTO `sys_log` VALUES ('e6877ea8bbc04c37bf38c612c6167936', '1', '系统登录', '1', '2017-10-15 16:21:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e86296a67f6143cc8e7d689688e91d10', '1', '系统登录', '1', '2017-10-14 16:20:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e9a9dba3c000494abf4d3119bf786140', '1', '系统登录', '1', '2017-10-18 14:41:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ec9ac22be88a4d04b6837d742d55ae8a', '1', '系统登录', '1', '2017-10-18 10:37:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ed020fb8edc541c6a2928b4da952b1ec', '1', '系统登录', '1', '2017-10-16 11:09:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sitetype/sitetype', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ed1d7e7172e34abea34c670641963115', '1', '系统登录', '1', '2017-10-15 13:41:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('edf9e2c354c74bba99058ccc81669f5f', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-15 15:17:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ee206392d00a4b6dbb37281caae63667', '1', '系统登录', '1', '2017-10-19 10:03:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '/sman/a/member/member', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef77272cf09e4cb4b325063ff0de8075', '1', '系统登录', '1', '2017-10-18 17:44:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f1479ba9fbbb4670a8782597ce7132f1', '1', '系统登录', '1', '2017-10-14 17:01:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f3220253382d4197899ff76030c9eaef', '1', '系统登录', '1', '2017-10-17 09:28:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f682b24804c54d0a8f2d1feb895dd7e8', '1', '系统登录', '1', '2017-10-16 14:12:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sys/menu/form', 'GET', 'id=79', '');
INSERT INTO `sys_log` VALUES ('f8286c5365bc4b49bf0ab6a6d0d1c9fa', '1', '系统登录', '1', '2017-10-16 10:03:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/sitetype/sitetype', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f83ca5351e86402dbd57fe330026655c', '1', '系统登录', '99976ffa302a4ded819da781f0cf619f', '2017-10-20 16:32:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0', '/sman/a/siteremark/siteRemark/', 'POST', 'pageNo=1&pageSize=10&orderBy=&membername=&shzt=&shrname=', '');
INSERT INTO `sys_log` VALUES ('f8bf33ac973f439da7915786622aab41', '1', '系统登录', '1', '2017-10-18 14:05:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/tag/treeselect', 'GET', 'url=/sys/menu/treeData&module=&checked=&extId=&isAll=', '');
INSERT INTO `sys_log` VALUES ('fa0c54e598364c38b6e90ed45770280a', '1', '系统登录', '1', '2017-10-15 20:07:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('fb3482b01ed5446da6470a8a39c4523b', '1', '系统登录', '1', '2017-10-15 16:35:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/', 'POST', 'pageNo=1&pageSize=10&orderBy=&name=&sitetype.id=&sitetype.name=&mobile=&province=&city=&county=', '');
INSERT INTO `sys_log` VALUES ('fbd82733956b43eb85c10627f2287d11', '1', '系统登录', '1', '2017-10-15 10:01:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a/site/site/', 'POST', 'pageNo=1&pageSize=10&orderBy=&name=&sitetype.id=&sitetype.name=&mobile=', '');
INSERT INTO `sys_log` VALUES ('ff3b22ae6e54427ab3158cc0adc3d901', '1', '系统登录', '1', '2017-10-18 14:09:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '/sman/a', 'GET', 'login=', '');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0083e8448ba54f45b8981c11e2adf133', '808744e7a8154bd28cde2537791513d9', '0,1,808744e7a8154bd28cde2537791513d9,', '增加', '30', '', '', '', '0', 'trancrecord:trancRecord:add', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:08', '', '0');
INSERT INTO `sys_menu` VALUES ('031ea2e3455a45cabb8fcc11d80292b1', '134f31d3e638472a92bad7bd181496b8', '0,1,134f31d3e638472a92bad7bd181496b8,', '奖金池记录', '30', '/moneypoolrecord/moneyPoolRecord', null, '', '1', 'moneypoolrecord:moneyPoolRecord:list', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('042b3a66e1be49a6a459dcd386b38bfc', '655e8fe6592c4c4fa8429ce64e1090fd', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,655e8fe6592c4c4fa8429ce64e1090fd,', '增加', '30', null, null, null, '0', 'siteuser:siteuser:add', '1', '2017-10-15 13:41:02', '1', '2017-10-15 13:41:02', null, '0');
INSERT INTO `sys_menu` VALUES ('04873c114baa4e3986fb6c25c887a51b', '63581a61b2db4bd4834cf0de8341f1bb', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,63581a61b2db4bd4834cf0de8341f1bb,', '查看', '120', '', '', '', '0', 'card:card:view', '1', '2017-10-16 18:28:19', '1', '2017-10-16 18:28:19', '', '0');
INSERT INTO `sys_menu` VALUES ('0545ea26046844d18846251b1662d4d2', '5c9a66ffe7a146349d33ef288af04666', '0,1,5ffc22cfb7644638a3200203fbd77f52,5c9a66ffe7a146349d33ef288af04666,', '增加', '30', '', '', '', '0', 'classes:classes:add', '1', '2017-10-15 17:30:20', '1', '2017-10-15 17:30:20', '', '0');
INSERT INTO `sys_menu` VALUES ('084ab1300d504e42afd9040514948e7d', 'c523ce4ea1c84b82a58ba1fbb71921eb', '0,1,3,c523ce4ea1c84b82a58ba1fbb71921eb,', '查看', '120', '', '', '', '0', 'sysweixintemplate:sysweixintemplate:view', '1', '2017-03-13 15:02:07', '1', '2017-03-13 15:02:07', '', '0');
INSERT INTO `sys_menu` VALUES ('098934b4c7df46bd90a9fa03a9452821', 'd17ac0b69c0d4cb8af5bc23760505a76', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,', '场馆管理', '20', '/site/site', null, 'fa-bank', '1', 'site:site:list', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('098af9702f5a4527adbdbdac9beb352a', 'd17ac0b69c0d4cb8af5bc23760505a76', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,', '场馆信息', '40', '/site/site/infoform', '', 'fa-file-o', '1', 'site:site:add', '1', '2017-10-15 15:07:06', '1', '2017-10-15 15:08:49', '', '0');
INSERT INTO `sys_menu` VALUES ('0a8688e791ff4310b101dba6727ed788', 'a749d1b983ca4e5faec6b2f2c0477d2a', '0,1,a749d1b983ca4e5faec6b2f2c0477d2a,', '编辑', '90', '', '', '', '0', 'order:orders:edit', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:17:39', '', '0');
INSERT INTO `sys_menu` VALUES ('0a8fcb4dc8114392b7f0dbee00b1514b', 'ec07fca54fee4a68be1ec39041ae6317', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,ec07fca54fee4a68be1ec39041ae6317,', '查看', '120', null, null, null, '0', 'sitetype:sitetype:view', '1', '2017-10-14 16:26:22', '1', '2017-10-14 16:26:22', null, '0');
INSERT INTO `sys_menu` VALUES ('0be12b103bda4ad0930f5766b77207a2', 'bb31b1933ae74f9b8b83d136cb406592', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,bb31b1933ae74f9b8b83d136cb406592,', '导出', '180', '', '', '', '0', 'siteremark:siteRemark:export', '1', '2017-10-17 18:19:35', '1', '2017-10-17 18:19:35', '', '0');
INSERT INTO `sys_menu` VALUES ('0d57a30dff4746d0a5ed2cd9e7b4a213', '8c8e969acae445309a0fbdcaefc9e1bf', '0,1,46cb74415db8489e8e287bc7cf3fb709,8c8e969acae445309a0fbdcaefc9e1bf,', '查看', '120', null, null, null, '0', 'appointrecord:appointRecord:view', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('0e5dcd9691e14914b6d9d12602790153', '1', '0,1,', '报名管理', '450', '/classessignup/classesSignup', '', 'fa-list-ol', '1', 'classessignup:classesSignup:list', '1', '2017-10-15 19:45:22', '1', '2017-10-18 16:07:24', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', '0', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,3,', '字典管理', '50', '/sys/dict/', '', 'fa-file-excel-o', '1', 'sys:dict:list', '1', '2013-05-27 08:00:00', '1', '2017-01-20 10:44:23', '', '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,3,10,', '查看', '30', null, null, null, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,3,10,', '修改', '40', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('134f31d3e638472a92bad7bd181496b8', '1', '0,1,', '奖金管理', '500', '', '', 'fa-credit-card', '1', '', '1', '2017-10-18 16:04:32', '1', '2017-10-18 18:17:37', '', '0');
INSERT INTO `sys_menu` VALUES ('134f9ada0ece4647aaee952d3048a5c7', '098934b4c7df46bd90a9fa03a9452821', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,098934b4c7df46bd90a9fa03a9452821,', '导出', '180', null, null, null, '0', 'site:site:export', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('156ffc1ee4e642a28bca3690ffbc09ab', '1', '0,1,', '套餐管理', '350', '', '', 'fa-list', '1', '', '1', '2017-10-16 10:48:45', '1', '2017-10-16 10:48:45', '', '0');
INSERT INTO `sys_menu` VALUES ('1667cb5197094c738c28d2618c07898b', 'c37a09e837ab45a39631a8e63c7bf2ff', '0,1,5ffc22cfb7644638a3200203fbd77f52,c37a09e837ab45a39631a8e63c7bf2ff,', '导入', '150', '', '', '', '0', 'classmember:classesMember:import', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:12:06', '', '0');
INSERT INTO `sys_menu` VALUES ('18bf888953834b23a599ccd6ced6add2', '68b6b48fe1bd4335aa65e3a2206dc8b3', '0,1,fec5fdb2588d4752966157c708234a5c,68b6b48fe1bd4335aa65e3a2206dc8b3,', '查看', '120', null, null, null, '0', 'member:member:view', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('1a183fb9983a4608a845e5999034ad35', '1c8598dfc4db47b5ba062d4903ef1959', '0,1,3,1c8598dfc4db47b5ba062d4903ef1959,', '删除', '60', '', '', '', '0', 'sysweixin:sysweixin:del', '1', '2017-03-13 14:04:35', '1', '2017-03-13 14:04:35', '', '0');
INSERT INTO `sys_menu` VALUES ('1c8598dfc4db47b5ba062d4903ef1959', '3', '0,1,3,', '微信公众号管理', '500', '/sysweixin/sysweixin', '', 'fa-comments', '1', 'sysweixin:sysweixin:list', '1', '2017-03-13 14:04:35', '1', '2017-04-11 17:07:34', '', '0');
INSERT INTO `sys_menu` VALUES ('1ce1c4c6184e4a9e97cb3b34e4cce0a6', '808744e7a8154bd28cde2537791513d9', '0,1,808744e7a8154bd28cde2537791513d9,', '查看', '120', '', '', '', '0', 'trancrecord:trancRecord:view', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:08', '', '0');
INSERT INTO `sys_menu` VALUES ('1d1f5c34cc15487b981f3f793b868b07', '098934b4c7df46bd90a9fa03a9452821', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,098934b4c7df46bd90a9fa03a9452821,', '删除', '60', null, null, null, '0', 'site:site:del', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('1ef343f4e44d4670a9f6474105646c39', 'df04270a0a6649238caa1f2e8b444d85', '0,1,df04270a0a6649238caa1f2e8b444d85,', '导入', '150', '', '', '', '0', 'signin:signin:import', '1', '2017-10-18 09:50:57', '1', '2017-10-18 09:50:57', '', '0');
INSERT INTO `sys_menu` VALUES ('1f2e2738b82f4822834e3d3ddf3fac2e', '68b6b48fe1bd4335aa65e3a2206dc8b3', '0,1,fec5fdb2588d4752966157c708234a5c,68b6b48fe1bd4335aa65e3a2206dc8b3,', '增加', '30', null, null, null, '0', 'member:member:add', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('2167eddd3a514dcaaa75428fb3c62433', 'bb31b1933ae74f9b8b83d136cb406592', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,bb31b1933ae74f9b8b83d136cb406592,', '删除', '60', '', '', '', '0', 'siteremark:siteRemark:del', '1', '2017-10-17 18:19:34', '1', '2017-10-17 18:19:34', '', '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '1800', '', '', 'fa-columns', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-12-13 20:18:41', '', '0');
INSERT INTO `sys_menu` VALUES ('29', '27', '0,1,27,', '个人信息', '30', '/sys/user/info', '', 'fa-file-word-o', '1', '', '1', '2013-05-27 08:00:00', '1', '2017-01-20 10:48:41', '', '0');
INSERT INTO `sys_menu` VALUES ('2a5ef372675c4a898e40327f9692677c', 'd2ab160a92644197bcb415c97b4428fd', '0,1,134f31d3e638472a92bad7bd181496b8,d2ab160a92644197bcb415c97b4428fd,', '导出', '180', null, null, null, '0', 'moneybackrecord:moneyBackRecord:export', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('2bf454426bdb495ba5705fcd750d43fa', 'a07efb3c4dca4dd09abd4090422ab936', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,a07efb3c4dca4dd09abd4090422ab936,', '删除', '60', '', '', '', '0', 'withdraw:withdraw:del', '1', '2017-10-17 14:15:53', '1', '2017-10-17 14:15:53', '', '0');
INSERT INTO `sys_menu` VALUES ('3', '1', '0,1,', '系统设置', '80', '', '', 'fa-cog', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-11-04 17:27:37', '', '0');
INSERT INTO `sys_menu` VALUES ('3077f76c65c94c2ca9c9fbaf5a1a02cd', '098934b4c7df46bd90a9fa03a9452821', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,098934b4c7df46bd90a9fa03a9452821,', '编辑', '90', null, null, null, '0', 'site:site:edit', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('31e439716f3540c2a1baa0ca48baf962', '8c8e969acae445309a0fbdcaefc9e1bf', '0,1,46cb74415db8489e8e287bc7cf3fb709,8c8e969acae445309a0fbdcaefc9e1bf,', '删除', '60', null, null, null, '0', 'appointrecord:appointRecord:del', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('33c81a7b171d4f5b8797460c27f9fabe', 'c9d6d542c07742f58f4a0a6a26c5432a', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,c9d6d542c07742f58f4a0a6a26c5432a,', '查看', '120', null, null, null, '0', 'cardconsumerecord:cardConsumeRecord:view', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:05:54', null, '0');
INSERT INTO `sys_menu` VALUES ('33e5c396cecc42b49c0e872928fddc9e', 'bb31b1933ae74f9b8b83d136cb406592', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,bb31b1933ae74f9b8b83d136cb406592,', '增加', '30', '', '', '', '0', 'siteremark:siteRemark:add', '1', '2017-10-17 18:19:34', '1', '2017-10-17 18:19:34', '', '0');
INSERT INTO `sys_menu` VALUES ('3413cc4bdf2b413aa214abb62224b4c1', 'c37a09e837ab45a39631a8e63c7bf2ff', '0,1,5ffc22cfb7644638a3200203fbd77f52,c37a09e837ab45a39631a8e63c7bf2ff,', '增加', '30', '', '', '', '0', 'classmember:classesMember:add', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:12:06', '', '0');
INSERT INTO `sys_menu` VALUES ('36699f6f595642d7b7cfa2e27b42e0e5', 'd158faa9f20b4175ab52c8b7521821df', '0,1,d158faa9f20b4175ab52c8b7521821df,', '编辑', '90', '', '', '', '0', 'code:code:edit', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:14:38', '', '0');
INSERT INTO `sys_menu` VALUES ('382a2109423841208b8a91ad13e1ecc8', 'a07efb3c4dca4dd09abd4090422ab936', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,a07efb3c4dca4dd09abd4090422ab936,', '增加', '30', '', '', '', '0', 'withdraw:withdraw:add', '1', '2017-10-17 14:15:53', '1', '2017-10-17 14:15:53', '', '0');
INSERT INTO `sys_menu` VALUES ('3925de0fb08f4ac385c64bdf48c19232', '0e5dcd9691e14914b6d9d12602790153', '0,1,0e5dcd9691e14914b6d9d12602790153,', '导出', '180', '', '', '', '0', 'classessignup:classesSignup:export', '1', '2017-10-15 19:45:23', '1', '2017-10-15 19:45:23', '', '0');
INSERT INTO `sys_menu` VALUES ('3a1ad756039444a3b422858618da8c33', 'bb31b1933ae74f9b8b83d136cb406592', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,bb31b1933ae74f9b8b83d136cb406592,', '导入', '150', '', '', '', '0', 'siteremark:siteRemark:import', '1', '2017-10-17 18:19:35', '1', '2017-10-17 18:19:35', '', '0');
INSERT INTO `sys_menu` VALUES ('3a319d9183cb4905a995aa265a48f1d5', '1c8598dfc4db47b5ba062d4903ef1959', '0,1,3,1c8598dfc4db47b5ba062d4903ef1959,', '导出', '180', '', '', '', '0', 'sysweixin:sysweixin:export', '1', '2017-03-13 14:04:35', '1', '2017-03-13 14:04:35', '', '0');
INSERT INTO `sys_menu` VALUES ('3a50958f8e6d42df8d8796c3531b8570', 'c37a09e837ab45a39631a8e63c7bf2ff', '0,1,5ffc22cfb7644638a3200203fbd77f52,c37a09e837ab45a39631a8e63c7bf2ff,', '导出', '180', '', '', '', '0', 'classmember:classesMember:export', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:12:06', '', '0');
INSERT INTO `sys_menu` VALUES ('3c1c639c76f14f6f9903b0143371ea09', '7', '0,1,3,7,', '添加', '70', '', '', '', '0', 'sys:role:add', '1', '2015-12-23 21:35:08', '1', '2015-12-23 21:36:18', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,3,', '菜单管理', '10', '/sys/menu/', '', 'fa-list-ol', '1', 'sys:menu:list', '1', '2013-05-27 08:00:00', '1', '2017-01-20 10:41:48', '', '0');
INSERT INTO `sys_menu` VALUES ('40b56261cc8f41ed996bf04e0a454d9c', '808744e7a8154bd28cde2537791513d9', '0,1,808744e7a8154bd28cde2537791513d9,', '编辑', '90', '', '', '', '0', 'trancrecord:trancRecord:edit', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:08', '', '0');
INSERT INTO `sys_menu` VALUES ('40c2d00e368f48e4962b396b4aa03aaf', '1c8598dfc4db47b5ba062d4903ef1959', '0,1,3,1c8598dfc4db47b5ba062d4903ef1959,', '编辑', '90', '', '', '', '0', 'sysweixin:sysweixin:edit', '1', '2017-03-13 14:04:35', '1', '2017-03-13 14:04:35', '', '0');
INSERT INTO `sys_menu` VALUES ('41f96ebcd8ef48bc87995f8b0a22edf4', 'df04270a0a6649238caa1f2e8b444d85', '0,1,df04270a0a6649238caa1f2e8b444d85,', '查看', '120', '', '', '', '0', 'signin:signin:view', '1', '2017-10-18 09:50:57', '1', '2017-10-18 09:50:57', '', '0');
INSERT INTO `sys_menu` VALUES ('43933d9093854b988d822fb36b4f648d', '655e8fe6592c4c4fa8429ce64e1090fd', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,655e8fe6592c4c4fa8429ce64e1090fd,', '导出', '180', null, null, null, '0', 'siteuser:siteuser:export', '1', '2017-10-15 13:41:03', '1', '2017-10-15 13:41:03', null, '0');
INSERT INTO `sys_menu` VALUES ('43f7b9b62c1d4801a2490d5d87093e8c', 'c523ce4ea1c84b82a58ba1fbb71921eb', '0,1,3,c523ce4ea1c84b82a58ba1fbb71921eb,', '删除', '60', '', '', '', '0', 'sysweixintemplate:sysweixintemplate:del', '1', '2017-03-13 15:02:07', '1', '2017-03-13 15:02:07', '', '0');
INSERT INTO `sys_menu` VALUES ('44374c696d3c4d3fa71d2306d76c5120', '1', '0,1,', '新闻管理', '1300', '/news/news', '', 'fa-newspaper-o', '1', 'news:news:list', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:40:30', '', '0');
INSERT INTO `sys_menu` VALUES ('44c7a7875eb442dc8a87f4b026bdb618', '098934b4c7df46bd90a9fa03a9452821', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,098934b4c7df46bd90a9fa03a9452821,', '查看', '120', null, null, null, '0', 'site:site:view', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('45e075d365d74bd685250aaf85c1f00d', 'ec07fca54fee4a68be1ec39041ae6317', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,ec07fca54fee4a68be1ec39041ae6317,', '增加', '30', null, null, null, '0', 'sitetype:sitetype:add', '1', '2017-10-14 16:26:22', '1', '2017-10-14 16:26:22', null, '0');
INSERT INTO `sys_menu` VALUES ('46cb74415db8489e8e287bc7cf3fb709', '1', '0,1,', '预约管理', '360', '', '', 'fa-folder', '1', '', '1', '2017-10-16 18:05:49', '1', '2017-10-16 18:05:49', '', '0');
INSERT INTO `sys_menu` VALUES ('4960143738844472a96758c7a20c5759', '1c8598dfc4db47b5ba062d4903ef1959', '0,1,3,1c8598dfc4db47b5ba062d4903ef1959,', '查看', '120', '', '', '', '0', 'sysweixin:sysweixin:view', '1', '2017-03-13 14:04:35', '1', '2017-03-13 14:04:35', '', '0');
INSERT INTO `sys_menu` VALUES ('4a33d1e359a74d05a956cf9693b9edc8', '5251ffb0bcd24466872dbedf915de196', '0,1,134f31d3e638472a92bad7bd181496b8,5251ffb0bcd24466872dbedf915de196,', '编辑', '90', null, null, null, '0', 'bonussend:bonusSend:edit', '1', '2017-10-18 16:03:31', '1', '2017-10-18 16:03:31', null, '0');
INSERT INTO `sys_menu` VALUES ('4bc51d3550024fb28c2d15360804806a', '0e5dcd9691e14914b6d9d12602790153', '0,1,0e5dcd9691e14914b6d9d12602790153,', '编辑', '90', '', '', '', '0', 'classessignup:classesSignup:edit', '1', '2017-10-15 19:45:22', '1', '2017-10-15 19:45:22', '', '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,3,4,', '增加', '30', '', '', '', '0', 'sys:menu:add', '1', '2013-05-27 08:00:00', '1', '2015-12-20 19:00:22', '', '0');
INSERT INTO `sys_menu` VALUES ('5251ffb0bcd24466872dbedf915de196', '134f31d3e638472a92bad7bd181496b8', '0,1,134f31d3e638472a92bad7bd181496b8,', '奖金发放记录', '10', '/bonussend/bonusSend', '', '', '1', 'bonussend:bonusSend:list', '1', '2017-10-18 16:03:31', '1', '2017-10-18 17:57:36', '', '0');
INSERT INTO `sys_menu` VALUES ('54ce28d0c44e46b8b979a836d8a12db2', 'df04270a0a6649238caa1f2e8b444d85', '0,1,df04270a0a6649238caa1f2e8b444d85,', '删除', '60', '', '', '', '0', 'signin:signin:del', '1', '2017-10-18 09:50:57', '1', '2017-10-18 09:50:57', '', '0');
INSERT INTO `sys_menu` VALUES ('55937cfab63448e584c1277689c89b00', '63581a61b2db4bd4834cf0de8341f1bb', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,63581a61b2db4bd4834cf0de8341f1bb,', '导出', '180', '', '', '', '0', 'card:card:export', '1', '2017-10-16 18:28:19', '1', '2017-10-16 18:28:19', '', '0');
INSERT INTO `sys_menu` VALUES ('570d3765de864f09af7d4497e987185c', '63581a61b2db4bd4834cf0de8341f1bb', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,63581a61b2db4bd4834cf0de8341f1bb,', '删除', '60', '', '', '', '0', 'card:card:del', '1', '2017-10-16 18:28:19', '1', '2017-10-16 18:28:19', '', '0');
INSERT INTO `sys_menu` VALUES ('57f1f00d6cb14819bef388acd10e6f5a', '68', '0,1,67,68,', '删除', '60', '', '', '', '0', 'sys:log:del', '1', '2015-12-25 20:25:55', '1', '2015-12-25 20:25:55', '', '0');
INSERT INTO `sys_menu` VALUES ('585f75b3d5b84d1f855dcb393f712b72', 'c9d6d542c07742f58f4a0a6a26c5432a', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,c9d6d542c07742f58f4a0a6a26c5432a,', '增加', '30', null, null, null, '0', 'cardconsumerecord:cardConsumeRecord:add', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:05:54', null, '0');
INSERT INTO `sys_menu` VALUES ('58633e6f70004c469d719f6d3b8b7334', '5251ffb0bcd24466872dbedf915de196', '0,1,134f31d3e638472a92bad7bd181496b8,5251ffb0bcd24466872dbedf915de196,', '增加', '30', null, null, null, '0', 'bonussend:bonusSend:add', '1', '2017-10-18 16:03:31', '1', '2017-10-18 16:03:31', null, '0');
INSERT INTO `sys_menu` VALUES ('5ba22755baa248eea342961187683e71', '68b6b48fe1bd4335aa65e3a2206dc8b3', '0,1,fec5fdb2588d4752966157c708234a5c,68b6b48fe1bd4335aa65e3a2206dc8b3,', '编辑', '90', null, null, null, '0', 'member:member:edit', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('5c418dd9425a44d28e2a391de20dd740', '808744e7a8154bd28cde2537791513d9', '0,1,808744e7a8154bd28cde2537791513d9,', '导入', '150', '', '', '', '0', 'trancrecord:trancRecord:import', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:08', '', '0');
INSERT INTO `sys_menu` VALUES ('5c9a66ffe7a146349d33ef288af04666', '5ffc22cfb7644638a3200203fbd77f52', '0,1,5ffc22cfb7644638a3200203fbd77f52,', '约跑班级管理', '10', '/classes/classes', '', 'fa-list-alt', '1', 'classes:classes:list', '1', '2017-10-15 17:30:20', '1', '2017-10-16 11:11:31', '', '0');
INSERT INTO `sys_menu` VALUES ('5c9e0dd1b6aa4889ba6d5baca04bbc09', '9147ff7d8c1f4f37bf48349cbdeb9dcb', '0,1,27,9147ff7d8c1f4f37bf48349cbdeb9dcb,', '上传', '60', '', '', '', '0', 'cms:ckfinder:upload', '1', '2017-01-17 11:22:03', '1', '2017-01-17 11:22:03', '', '0');
INSERT INTO `sys_menu` VALUES ('5d2c68df5a3e44748108d333f5ba75a9', '031ea2e3455a45cabb8fcc11d80292b1', '0,1,134f31d3e638472a92bad7bd181496b8,031ea2e3455a45cabb8fcc11d80292b1,', '导出', '180', null, null, null, '0', 'moneypoolrecord:moneyPoolRecord:export', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('5ffc22cfb7644638a3200203fbd77f52', '1', '0,1,', '班级管理', '400', '', '', 'fa-sitemap', '1', '', '1', '2017-10-16 10:50:20', '1', '2017-10-16 10:50:20', '', '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,3,4,', '修改', '40', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('60804269a532483cb326a6d088835333', '5c9a66ffe7a146349d33ef288af04666', '0,1,5ffc22cfb7644638a3200203fbd77f52,5c9a66ffe7a146349d33ef288af04666,', '查看', '120', '', '', '', '0', 'classes:classes:view', '1', '2017-10-15 17:30:20', '1', '2017-10-15 17:30:20', '', '0');
INSERT INTO `sys_menu` VALUES ('63581a61b2db4bd4834cf0de8341f1bb', '156ffc1ee4e642a28bca3690ffbc09ab', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,', '套餐卡管理', '20', '/card/card', '', 'fa-credit-card', '1', 'card:card:list', '1', '2017-10-16 18:28:19', '1', '2017-10-17 09:58:54', '', '0');
INSERT INTO `sys_menu` VALUES ('6470b3f4730a46449a332a454d1848e1', 'd158faa9f20b4175ab52c8b7521821df', '0,1,d158faa9f20b4175ab52c8b7521821df,', '删除', '60', '', '', '', '0', 'code:code:del', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:14:38', '', '0');
INSERT INTO `sys_menu` VALUES ('6509eed6eb634030a46723a18814035c', '7', '0,1,3,7,', '分配用户', '100', '', '', '', '0', 'sys:role:assign', '1', '2015-12-23 21:35:37', '1', '2015-12-23 21:53:23', '', '0');
INSERT INTO `sys_menu` VALUES ('655e8fe6592c4c4fa8429ce64e1090fd', 'd17ac0b69c0d4cb8af5bc23760505a76', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,', '场馆管理员', '30', '/siteuser/siteuser', null, 'fa-user', '1', 'siteuser:siteuser:list', '1', '2017-10-15 13:41:02', '1', '2017-10-15 13:41:02', null, '0');
INSERT INTO `sys_menu` VALUES ('67', '1', '0,1,', '系统监控', '1900', '', '', 'fa-video-camera', '0', '', '1', '2013-06-03 08:00:00', '1', '2017-04-17 14:03:50', '', '0');
INSERT INTO `sys_menu` VALUES ('67175628ea9c4fd0a0062e818aba23a2', '031ea2e3455a45cabb8fcc11d80292b1', '0,1,134f31d3e638472a92bad7bd181496b8,031ea2e3455a45cabb8fcc11d80292b1,', '查看', '120', null, null, null, '0', 'moneypoolrecord:moneyPoolRecord:view', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('672701abe51243988fb9f9983ea1903e', 'c37a09e837ab45a39631a8e63c7bf2ff', '0,1,5ffc22cfb7644638a3200203fbd77f52,c37a09e837ab45a39631a8e63c7bf2ff,', '查看', '120', '', '', '', '0', 'classmember:classesMember:view', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:12:06', '', '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,67,', '日志查询', '30', '/sys/log', '', 'pencil', '1', 'sys:log:list', '1', '2013-06-03 08:00:00', '1', '2015-12-25 20:26:16', '', '0');
INSERT INTO `sys_menu` VALUES ('68b6b48fe1bd4335aa65e3a2206dc8b3', 'fec5fdb2588d4752966157c708234a5c', '0,1,fec5fdb2588d4752966157c708234a5c,', '会员管理', '10', '/member/member', null, '', '1', 'member:member:list', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('68f9151151174868ab436e11e03bf548', '4', '0,1,3,4,', '删除', '70', '', '', '', '0', 'sys:menu:del', '1', '2015-12-20 19:01:16', '1', '2015-12-20 19:03:05', '', '0');
INSERT INTO `sys_menu` VALUES ('6996fd88e6f04ed694f4bbc9018af45c', '655e8fe6592c4c4fa8429ce64e1090fd', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,655e8fe6592c4c4fa8429ce64e1090fd,', '编辑', '90', null, null, null, '0', 'siteuser:siteuser:edit', '1', '2017-10-15 13:41:02', '1', '2017-10-15 13:41:02', null, '0');
INSERT INTO `sys_menu` VALUES ('69ee3f991c3640458ecd11b8d016a2eb', 'a749d1b983ca4e5faec6b2f2c0477d2a', '0,1,a749d1b983ca4e5faec6b2f2c0477d2a,', '导出', '180', '', '', '', '0', 'order:orders:export', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:17:39', '', '0');
INSERT INTO `sys_menu` VALUES ('6abe2211d5e649ce8acf0440d27af258', 'c523ce4ea1c84b82a58ba1fbb71921eb', '0,1,3,c523ce4ea1c84b82a58ba1fbb71921eb,', '编辑', '90', '', '', '', '0', 'sysweixintemplate:sysweixintemplate:edit', '1', '2017-03-13 15:02:07', '1', '2017-03-13 15:02:07', '', '0');
INSERT INTO `sys_menu` VALUES ('6b70d317e0794b749ed5c7fb64ae9f39', '8c8e969acae445309a0fbdcaefc9e1bf', '0,1,46cb74415db8489e8e287bc7cf3fb709,8c8e969acae445309a0fbdcaefc9e1bf,', '编辑', '90', null, null, null, '0', 'appointrecord:appointRecord:edit', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('6c672b854d2b4821b89297640df5fc26', '82', '0,1,79,82,', '同步数据库', '180', '', '', '', '0', 'gen:genTable:synchDb', '1', '2016-01-07 11:31:00', '1', '2016-01-07 11:32:23', '', '0');
INSERT INTO `sys_menu` VALUES ('6d3a6777693f47c98e9b3051cacbcfdb', '10', '0,1,3,10,', '增加', '70', '', '', '', '0', 'sys:dict:add', '1', '2015-12-24 22:23:39', '1', '2015-12-24 22:24:22', '', '0');
INSERT INTO `sys_menu` VALUES ('6db31e672a0745ab854f287a77803ea3', '655e8fe6592c4c4fa8429ce64e1090fd', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,655e8fe6592c4c4fa8429ce64e1090fd,', '删除', '60', null, null, null, '0', 'siteuser:siteuser:del', '1', '2017-10-15 13:41:02', '1', '2017-10-15 13:41:02', null, '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,3,', '角色管理', '20', '/sys/role/', '', 'fa-file-o', '1', 'sys:role:list', '1', '2013-05-27 08:00:00', '1', '2017-01-20 10:43:17', '', '0');
INSERT INTO `sys_menu` VALUES ('71079eacf23442ae90c09a88990fd4f0', 'bb31b1933ae74f9b8b83d136cb406592', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,bb31b1933ae74f9b8b83d136cb406592,', '编辑', '90', '', '', '', '0', 'siteremark:siteRemark:edit', '1', '2017-10-17 18:19:35', '1', '2017-10-17 18:19:35', '', '0');
INSERT INTO `sys_menu` VALUES ('74b6ec8d9b04414ab884783b4bb20812', 'df04270a0a6649238caa1f2e8b444d85', '0,1,df04270a0a6649238caa1f2e8b444d85,', '编辑', '90', '', '', '', '0', 'signin:signin:edit', '1', '2017-10-18 09:50:57', '1', '2017-10-18 09:50:57', '', '0');
INSERT INTO `sys_menu` VALUES ('7587e3699487456b9bd188760d1d4537', '8c8e969acae445309a0fbdcaefc9e1bf', '0,1,46cb74415db8489e8e287bc7cf3fb709,8c8e969acae445309a0fbdcaefc9e1bf,', '导入', '150', null, null, null, '0', 'appointrecord:appointRecord:import', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '智能表单', '20', '', '', 'fa-codepen', '1', '', '1', '2013-10-16 08:00:00', '1', '2017-10-16 14:12:53', '', '0');
INSERT INTO `sys_menu` VALUES ('7962e02cc2874b95bf1e3b957c30dffa', '5251ffb0bcd24466872dbedf915de196', '0,1,134f31d3e638472a92bad7bd181496b8,5251ffb0bcd24466872dbedf915de196,', '查看', '120', null, null, null, '0', 'bonussend:bonusSend:view', '1', '2017-10-18 16:03:31', '1', '2017-10-18 16:03:31', null, '0');
INSERT INTO `sys_menu` VALUES ('799268ac6b0a41659d557dc6a923d71f', '5c9a66ffe7a146349d33ef288af04666', '0,1,5ffc22cfb7644638a3200203fbd77f52,5c9a66ffe7a146349d33ef288af04666,', '导出', '180', '', '', '', '0', 'classes:classes:export', '1', '2017-10-15 17:30:20', '1', '2017-10-15 17:30:20', '', '0');
INSERT INTO `sys_menu` VALUES ('79f0ffa47dbe43ffa8824d97612d344f', '4', '0,1,3,4,', '保存排序', '100', '', '', '', '0', 'sys:menu:updateSort', '1', '2015-12-20 19:02:08', '1', '2015-12-20 19:02:08', '', '0');
INSERT INTO `sys_menu` VALUES ('7a127875d5b84e73ba656cc7c220ea5b', '68b6b48fe1bd4335aa65e3a2206dc8b3', '0,1,fec5fdb2588d4752966157c708234a5c,68b6b48fe1bd4335aa65e3a2206dc8b3,', '导出', '180', null, null, null, '0', 'member:member:export', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('7b7d1aaee5954d58bcf9db244d7fdcde', '8a0001ed72b945e5a28525efe0f02dd0', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,8a0001ed72b945e5a28525efe0f02dd0,', '删除', '60', '', '', '', '0', 'pkg:pkg:del', '1', '2017-10-15 13:37:12', '1', '2017-10-15 13:37:12', '', '0');
INSERT INTO `sys_menu` VALUES ('7ec853cf793a43cfbdc37802d48b2603', 'c37a09e837ab45a39631a8e63c7bf2ff', '0,1,5ffc22cfb7644638a3200203fbd77f52,c37a09e837ab45a39631a8e63c7bf2ff,', '删除', '60', '', '', '', '0', 'classmember:classesMember:del', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:12:06', '', '0');
INSERT INTO `sys_menu` VALUES ('7f1ef4a94fc54d44bc53426241fc4ec9', '5251ffb0bcd24466872dbedf915de196', '0,1,134f31d3e638472a92bad7bd181496b8,5251ffb0bcd24466872dbedf915de196,', '导入', '150', null, null, null, '0', 'bonussend:bonusSend:import', '1', '2017-10-18 16:03:31', '1', '2017-10-18 16:03:31', null, '0');
INSERT INTO `sys_menu` VALUES ('7f556360a55e4989b07d48a6c1499119', '63581a61b2db4bd4834cf0de8341f1bb', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,63581a61b2db4bd4834cf0de8341f1bb,', '导入', '150', '', '', '', '0', 'card:card:import', '1', '2017-10-16 18:28:19', '1', '2017-10-16 18:28:19', '', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,3,7,', '查看', '30', null, null, null, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('808744e7a8154bd28cde2537791513d9', '1', '0,1,', '交易流水', '1200', '/trancrecord/trancRecord', '', 'fa-money', '1', 'trancrecord:trancRecord:list', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:50', '', '0');
INSERT INTO `sys_menu` VALUES ('81b5a9bd4c9c41ee91afd0b69d9d9643', 'd158faa9f20b4175ab52c8b7521821df', '0,1,d158faa9f20b4175ab52c8b7521821df,', '增加', '30', '', '', '', '0', 'code:code:add', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:14:38', '', '0');
INSERT INTO `sys_menu` VALUES ('82', '79', '0,1,79,', '表单配置', '20', '/gen/genTable', '', '', '1', 'gen:genTable:list', '1', '2013-10-16 08:00:00', '1', '2016-01-07 20:48:49', '', '0');
INSERT INTO `sys_menu` VALUES ('82d2f8e514cd4f9b8e0c948ee0a8f722', '808744e7a8154bd28cde2537791513d9', '0,1,808744e7a8154bd28cde2537791513d9,', '导出', '180', '', '', '', '0', 'trancrecord:trancRecord:export', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:08', '', '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,67,', '连接池监视', '40', '/../druid', '', '', '1', '', '1', '2013-10-18 08:00:00', '1', '2017-01-15 22:20:27', '', '0');
INSERT INTO `sys_menu` VALUES ('84de879505c44e14864834004789e267', 'c523ce4ea1c84b82a58ba1fbb71921eb', '0,1,3,c523ce4ea1c84b82a58ba1fbb71921eb,', '导入', '150', '', '', '', '0', 'sysweixintemplate:sysweixintemplate:import', '1', '2017-03-13 15:02:07', '1', '2017-03-13 15:02:07', '', '0');
INSERT INTO `sys_menu` VALUES ('870d9376e0a2422080a36993af232639', 'd2ab160a92644197bcb415c97b4428fd', '0,1,134f31d3e638472a92bad7bd181496b8,d2ab160a92644197bcb415c97b4428fd,', '增加', '30', null, null, null, '0', 'moneybackrecord:moneyBackRecord:add', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('87c0f725661b426bb4af977a722dcb6c', '808744e7a8154bd28cde2537791513d9', '0,1,808744e7a8154bd28cde2537791513d9,', '删除', '60', '', '', '', '0', 'trancrecord:trancRecord:del', '1', '2017-10-17 11:42:08', '1', '2017-10-17 11:42:08', '', '0');
INSERT INTO `sys_menu` VALUES ('88e8b76138c34dbdad0bc4557c6defc9', '8c8e969acae445309a0fbdcaefc9e1bf', '0,1,46cb74415db8489e8e287bc7cf3fb709,8c8e969acae445309a0fbdcaefc9e1bf,', '导出', '180', null, null, null, '0', 'appointrecord:appointRecord:export', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('8980742a0dee4b62a33c19cd22677707', '098934b4c7df46bd90a9fa03a9452821', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,098934b4c7df46bd90a9fa03a9452821,', '导入', '150', null, null, null, '0', 'site:site:import', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('8a0001ed72b945e5a28525efe0f02dd0', '156ffc1ee4e642a28bca3690ffbc09ab', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,', '套餐管理', '10', '/pkg/pkg', '', 'fa-list', '1', 'pkg:pkg:list', '1', '2017-10-15 13:37:11', '1', '2017-10-16 10:49:27', '', '0');
INSERT INTO `sys_menu` VALUES ('8b80f2689cd847c2ae46663f2c63737d', 'a749d1b983ca4e5faec6b2f2c0477d2a', '0,1,a749d1b983ca4e5faec6b2f2c0477d2a,', '删除', '60', '', '', '', '0', 'order:orders:del', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:17:39', '', '0');
INSERT INTO `sys_menu` VALUES ('8c8e969acae445309a0fbdcaefc9e1bf', '46cb74415db8489e8e287bc7cf3fb709', '0,1,46cb74415db8489e8e287bc7cf3fb709,', '预约管理', '10', '/appointrecord/appointRecord', null, '', '1', 'appointrecord:appointRecord:list', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('8deb516020544511992199d558e7ec06', '5c9a66ffe7a146349d33ef288af04666', '0,1,5ffc22cfb7644638a3200203fbd77f52,5c9a66ffe7a146349d33ef288af04666,', '编辑', '90', '', '', '', '0', 'classes:classes:edit', '1', '2017-10-15 17:30:20', '1', '2017-10-15 17:30:20', '', '0');
INSERT INTO `sys_menu` VALUES ('8e86bba895c546fa93475452e4d3c856', '098934b4c7df46bd90a9fa03a9452821', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,098934b4c7df46bd90a9fa03a9452821,', '增加', '30', null, null, null, '0', 'site:site:add', '1', '2017-10-14 17:10:39', '1', '2017-10-14 17:10:39', null, '0');
INSERT INTO `sys_menu` VALUES ('8e88d30fb5a04aec838188177e9d15c0', '655e8fe6592c4c4fa8429ce64e1090fd', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,655e8fe6592c4c4fa8429ce64e1090fd,', '导入', '150', null, null, null, '0', 'siteuser:siteuser:import', '1', '2017-10-15 13:41:03', '1', '2017-10-15 13:41:03', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,3,7,', '修改', '40', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('904edaf16cc34a84b6324818a901de0a', 'a749d1b983ca4e5faec6b2f2c0477d2a', '0,1,a749d1b983ca4e5faec6b2f2c0477d2a,', '导入', '150', '', '', '', '0', 'order:orders:import', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:17:39', '', '0');
INSERT INTO `sys_menu` VALUES ('90a403e786c444e7ae5dfe0b3bdad13a', 'c523ce4ea1c84b82a58ba1fbb71921eb', '0,1,3,c523ce4ea1c84b82a58ba1fbb71921eb,', '导出', '180', '', '', '', '0', 'sysweixintemplate:sysweixintemplate:export', '1', '2017-03-13 15:02:07', '1', '2017-03-13 15:02:07', '', '0');
INSERT INTO `sys_menu` VALUES ('9147ff7d8c1f4f37bf48349cbdeb9dcb', '27', '0,1,27,', '文件管理', '60', '/../static/ckfinder/ckfinder.html', '', 'fa-folder-open-o', '0', '', '1', '2017-01-17 11:19:40', '1', '2017-04-15 14:44:42', '', '0');
INSERT INTO `sys_menu` VALUES ('91aa429a6cdc4a9b954d84ff1456934b', '68', '0,1,67,68,', '查看', '30', '', '', '', '0', 'sys:log:view', '1', '2015-12-25 20:25:25', '1', '2015-12-25 20:25:25', '', '0');
INSERT INTO `sys_menu` VALUES ('976c1ce160904bcc9243c05ad5d7582f', '8c8e969acae445309a0fbdcaefc9e1bf', '0,1,46cb74415db8489e8e287bc7cf3fb709,8c8e969acae445309a0fbdcaefc9e1bf,', '增加', '30', null, null, null, '0', 'appointrecord:appointRecord:add', '1', '2017-10-16 18:06:31', '1', '2017-10-16 18:06:31', null, '0');
INSERT INTO `sys_menu` VALUES ('985779f085b44d7f8399b6d5c33e4b59', '44374c696d3c4d3fa71d2306d76c5120', '0,1,44374c696d3c4d3fa71d2306d76c5120,', '删除', '60', '', '', '', '0', 'news:news:del', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:39:45', '', '0');
INSERT INTO `sys_menu` VALUES ('9bc1aa1053144a608b73f6fbd841d1c6', '10', '0,1,3,10,', '删除', '100', '', '', '', '0', 'sys:dict:del', '1', '2015-12-24 22:24:04', '1', '2015-12-24 22:24:31', '', '0');
INSERT INTO `sys_menu` VALUES ('9c330e0c53514a5cb9b423c210830d6d', 'c9d6d542c07742f58f4a0a6a26c5432a', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,c9d6d542c07742f58f4a0a6a26c5432a,', '导入', '150', null, null, null, '0', 'cardconsumerecord:cardConsumeRecord:import', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:05:54', null, '0');
INSERT INTO `sys_menu` VALUES ('9ccf5dfe2c0f467698f778cd9580ab11', '0e5dcd9691e14914b6d9d12602790153', '0,1,0e5dcd9691e14914b6d9d12602790153,', '增加', '30', '', '', '', '0', 'classessignup:classesSignup:add', '1', '2017-10-15 19:45:22', '1', '2017-10-15 19:45:22', '', '0');
INSERT INTO `sys_menu` VALUES ('9f10acc36eca4eab88ccf36bbac91391', 'd158faa9f20b4175ab52c8b7521821df', '0,1,d158faa9f20b4175ab52c8b7521821df,', '导出', '180', '', '', '', '0', 'code:code:export', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:14:38', '', '0');
INSERT INTO `sys_menu` VALUES ('9f6b95027ec042d490fb231ae918ac78', 'a749d1b983ca4e5faec6b2f2c0477d2a', '0,1,a749d1b983ca4e5faec6b2f2c0477d2a,', '查看', '120', '', '', '', '0', 'order:orders:view', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:17:39', '', '0');
INSERT INTO `sys_menu` VALUES ('a04bf61261f84ad7a948fe36bcb0b5ae', '68b6b48fe1bd4335aa65e3a2206dc8b3', '0,1,fec5fdb2588d4752966157c708234a5c,68b6b48fe1bd4335aa65e3a2206dc8b3,', '导入', '150', null, null, null, '0', 'member:member:import', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('a07efb3c4dca4dd09abd4090422ab936', 'bced2b51ec0c4a2ba9b164e06d26be13', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,', '提现管理', '10', '/withdraw/withdraw', '', 'fa-tasks', '1', 'withdraw:withdraw:list', '1', '2017-10-17 14:15:53', '1', '2017-10-17 18:02:19', '', '0');
INSERT INTO `sys_menu` VALUES ('a08e9acfe853486696efca4d51d27181', '5251ffb0bcd24466872dbedf915de196', '0,1,134f31d3e638472a92bad7bd181496b8,5251ffb0bcd24466872dbedf915de196,', '导出', '180', null, null, null, '0', 'bonussend:bonusSend:export', '1', '2017-10-18 16:03:31', '1', '2017-10-18 16:03:31', null, '0');
INSERT INTO `sys_menu` VALUES ('a749d1b983ca4e5faec6b2f2c0477d2a', '1', '0,1,', '订单管理', '1100', '/order/orders', '', 'fa-reorder', '1', 'order:orders:list', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:18:40', '', '0');
INSERT INTO `sys_menu` VALUES ('a7af553b78104829b2229490856ea0f1', '031ea2e3455a45cabb8fcc11d80292b1', '0,1,134f31d3e638472a92bad7bd181496b8,031ea2e3455a45cabb8fcc11d80292b1,', '编辑', '90', null, null, null, '0', 'moneypoolrecord:moneyPoolRecord:edit', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('a7eafbf0722046b6bd314a5e5e01e1ac', '0e5dcd9691e14914b6d9d12602790153', '0,1,0e5dcd9691e14914b6d9d12602790153,', '导入', '150', '', '', '', '0', 'classessignup:classesSignup:import', '1', '2017-10-15 19:45:23', '1', '2017-10-15 19:45:23', '', '0');
INSERT INTO `sys_menu` VALUES ('ab0e1ec1d9f74f6b847cf010308b4041', '1c8598dfc4db47b5ba062d4903ef1959', '0,1,3,1c8598dfc4db47b5ba062d4903ef1959,', '导入', '150', '', '', '', '0', 'sysweixin:sysweixin:import', '1', '2017-03-13 14:04:35', '1', '2017-03-13 14:04:35', '', '0');
INSERT INTO `sys_menu` VALUES ('ade3cb55386e434ab6ba30d4f613a8ce', '1c8598dfc4db47b5ba062d4903ef1959', '0,1,3,1c8598dfc4db47b5ba062d4903ef1959,', '增加', '30', '', '', '', '0', 'sysweixin:sysweixin:add', '1', '2017-03-13 14:04:35', '1', '2017-03-13 14:04:35', '', '0');
INSERT INTO `sys_menu` VALUES ('b186924f24304f4c959c0d7d65fcd1d9', '44374c696d3c4d3fa71d2306d76c5120', '0,1,44374c696d3c4d3fa71d2306d76c5120,', '编辑', '90', '', '', '', '0', 'news:news:edit', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:39:45', '', '0');
INSERT INTO `sys_menu` VALUES ('b2be63099be747ecbc4c6bab65caae9f', 'a07efb3c4dca4dd09abd4090422ab936', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,a07efb3c4dca4dd09abd4090422ab936,', '导出', '180', '', '', '', '0', 'withdraw:withdraw:export', '1', '2017-10-17 14:15:53', '1', '2017-10-17 14:15:53', '', '0');
INSERT INTO `sys_menu` VALUES ('b34f22e7910e4f14954ce92035eb2b50', '68b6b48fe1bd4335aa65e3a2206dc8b3', '0,1,fec5fdb2588d4752966157c708234a5c,68b6b48fe1bd4335aa65e3a2206dc8b3,', '删除', '60', null, null, null, '0', 'member:member:del', '1', '2017-10-15 17:29:57', '1', '2017-10-15 17:29:57', null, '0');
INSERT INTO `sys_menu` VALUES ('b5e59690a406406b82c2a0d98f330a28', 'df04270a0a6649238caa1f2e8b444d85', '0,1,df04270a0a6649238caa1f2e8b444d85,', '导出', '180', '', '', '', '0', 'signin:signin:export', '1', '2017-10-18 09:50:57', '1', '2017-10-18 09:50:57', '', '0');
INSERT INTO `sys_menu` VALUES ('b9a7df22b3a44271952be08d8a83a918', 'c523ce4ea1c84b82a58ba1fbb71921eb', '0,1,3,c523ce4ea1c84b82a58ba1fbb71921eb,', '增加', '30', '', '', '', '0', 'sysweixintemplate:sysweixintemplate:add', '1', '2017-03-13 15:02:07', '1', '2017-03-13 15:02:07', '', '0');
INSERT INTO `sys_menu` VALUES ('b9bf703081c04dd695918fb5596d60cb', '44374c696d3c4d3fa71d2306d76c5120', '0,1,44374c696d3c4d3fa71d2306d76c5120,', '增加', '30', '', '', '', '0', 'news:news:add', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:39:45', '', '0');
INSERT INTO `sys_menu` VALUES ('ba834e73d39f4966965caba77c234336', '031ea2e3455a45cabb8fcc11d80292b1', '0,1,134f31d3e638472a92bad7bd181496b8,031ea2e3455a45cabb8fcc11d80292b1,', '删除', '60', null, null, null, '0', 'moneypoolrecord:moneyPoolRecord:del', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('bb31b1933ae74f9b8b83d136cb406592', 'd17ac0b69c0d4cb8af5bc23760505a76', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,', '评价管理', '40', '/siteremark/siteRemark', '', 'fa-calendar-minus-o', '1', 'siteremark:siteRemark:list', '1', '2017-10-17 18:19:34', '1', '2017-10-18 18:23:16', '', '0');
INSERT INTO `sys_menu` VALUES ('bb835f8498174523bb75296c2b9b6e56', '9147ff7d8c1f4f37bf48349cbdeb9dcb', '0,1,27,9147ff7d8c1f4f37bf48349cbdeb9dcb,', '修改', '90', '', '', '', '0', 'cms:ckfinder:edit', '1', '2017-01-17 11:22:40', '1', '2017-01-17 11:22:40', '', '0');
INSERT INTO `sys_menu` VALUES ('bcceb2dc77c7465f9ebd7ac8671a11ce', 'a07efb3c4dca4dd09abd4090422ab936', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,a07efb3c4dca4dd09abd4090422ab936,', '编辑', '90', '', '', '', '0', 'withdraw:withdraw:edit', '1', '2017-10-17 14:15:53', '1', '2017-10-17 14:15:53', '', '0');
INSERT INTO `sys_menu` VALUES ('bced2b51ec0c4a2ba9b164e06d26be13', '1', '0,1,', '提现管理', '1000', '', '', 'fa-money', '1', '', '1', '2017-10-17 18:00:40', '1', '2017-10-17 18:00:40', '', '0');
INSERT INTO `sys_menu` VALUES ('bfa9ca7005db4692a45ac2c6a55f33a6', 'ec07fca54fee4a68be1ec39041ae6317', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,ec07fca54fee4a68be1ec39041ae6317,', '编辑', '90', null, null, null, '0', 'sitetype:sitetype:edit', '1', '2017-10-14 16:26:22', '1', '2017-10-14 16:26:22', null, '0');
INSERT INTO `sys_menu` VALUES ('c006c1f1f57144b3be8dcf5b9d06d9e6', '8a0001ed72b945e5a28525efe0f02dd0', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,8a0001ed72b945e5a28525efe0f02dd0,', '增加', '30', '', '', '', '0', 'pkg:pkg:add', '1', '2017-10-15 13:37:12', '1', '2017-10-15 13:37:12', '', '0');
INSERT INTO `sys_menu` VALUES ('c153517b79bc40748487fa7d788933b2', 'd2ab160a92644197bcb415c97b4428fd', '0,1,134f31d3e638472a92bad7bd181496b8,d2ab160a92644197bcb415c97b4428fd,', '导入', '150', null, null, null, '0', 'moneybackrecord:moneyBackRecord:import', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('c2cbbbe1200949dda2f263f36ef087f5', '0e5dcd9691e14914b6d9d12602790153', '0,1,0e5dcd9691e14914b6d9d12602790153,', '删除', '60', '', '', '', '0', 'classessignup:classesSignup:del', '1', '2017-10-15 19:45:22', '1', '2017-10-15 19:45:22', '', '0');
INSERT INTO `sys_menu` VALUES ('c37a09e837ab45a39631a8e63c7bf2ff', '5ffc22cfb7644638a3200203fbd77f52', '0,1,5ffc22cfb7644638a3200203fbd77f52,', '班级成员管理', '20', '/classmember/classesMember', '', 'fa-group', '1', 'classmember:classesMember:list', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:51:31', '', '0');
INSERT INTO `sys_menu` VALUES ('c3de25a76785419b8a6820db3935941d', '82', '0,1,79,82,', '导入', '150', '', '', '', '0', 'gen:genTable:importDb', '1', '2016-01-07 11:30:25', '1', '2016-01-07 11:30:25', '', '0');
INSERT INTO `sys_menu` VALUES ('c523ce4ea1c84b82a58ba1fbb71921eb', '3', '0,1,3,', '微信消息模板管理', '700', '/sysweixintemplate/sysweixintemplate', '', 'fa-file-text-o', '1', 'sysweixintemplate:sysweixintemplate:list', '1', '2017-03-13 15:02:07', '1', '2017-04-11 17:22:45', '', '0');
INSERT INTO `sys_menu` VALUES ('c5715223034e478a99988c99bc876deb', 'ec07fca54fee4a68be1ec39041ae6317', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,ec07fca54fee4a68be1ec39041ae6317,', '删除', '60', null, null, null, '0', 'sitetype:sitetype:del', '1', '2017-10-14 16:26:22', '1', '2017-10-14 16:26:22', null, '0');
INSERT INTO `sys_menu` VALUES ('c7541f166b504175bb0a25245c6c4876', 'a07efb3c4dca4dd09abd4090422ab936', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,a07efb3c4dca4dd09abd4090422ab936,', '查看', '120', '', '', '', '0', 'withdraw:withdraw:view', '1', '2017-10-17 14:15:53', '1', '2017-10-17 14:15:53', '', '0');
INSERT INTO `sys_menu` VALUES ('c9d6d542c07742f58f4a0a6a26c5432a', '156ffc1ee4e642a28bca3690ffbc09ab', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,', '套餐卡消费记录', '30', '/cardconsumerecord/cardConsumeRecord', '', 'fa-align-justify', '1', 'cardconsumerecord:cardConsumeRecord:list', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:09:25', '', '0');
INSERT INTO `sys_menu` VALUES ('caea859324104c71ae9bf29bb867f58d', 'c9d6d542c07742f58f4a0a6a26c5432a', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,c9d6d542c07742f58f4a0a6a26c5432a,', '删除', '60', null, null, null, '0', 'cardconsumerecord:cardConsumeRecord:del', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:05:54', null, '0');
INSERT INTO `sys_menu` VALUES ('d09f1cddb3934ee0ab5c063dda45daaa', 'c37a09e837ab45a39631a8e63c7bf2ff', '0,1,5ffc22cfb7644638a3200203fbd77f52,c37a09e837ab45a39631a8e63c7bf2ff,', '编辑', '90', '', '', '', '0', 'classmember:classesMember:edit', '1', '2017-10-16 10:12:06', '1', '2017-10-16 10:12:06', '', '0');
INSERT INTO `sys_menu` VALUES ('d158faa9f20b4175ab52c8b7521821df', '1', '0,1,', '兑换码管理', '200', '/code/code', '', 'fa-cc-discover', '1', 'code:code:list', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:21:49', '', '0');
INSERT INTO `sys_menu` VALUES ('d1622c7eeece4c6db0772c8a4091cedf', 'd2ab160a92644197bcb415c97b4428fd', '0,1,134f31d3e638472a92bad7bd181496b8,d2ab160a92644197bcb415c97b4428fd,', '删除', '60', null, null, null, '0', 'moneybackrecord:moneyBackRecord:del', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('d17ac0b69c0d4cb8af5bc23760505a76', '1', '0,1,', '场馆管理', '90', '', '', 'fa-bank', '1', '', '1', '2017-10-14 17:01:15', '1', '2017-10-14 17:01:15', '', '0');
INSERT INTO `sys_menu` VALUES ('d1d2154a46ee4f1bb4aeaf7604eac79b', 'a07efb3c4dca4dd09abd4090422ab936', '0,1,bced2b51ec0c4a2ba9b164e06d26be13,a07efb3c4dca4dd09abd4090422ab936,', '导入', '150', '', '', '', '0', 'withdraw:withdraw:import', '1', '2017-10-17 14:15:53', '1', '2017-10-17 14:15:53', '', '0');
INSERT INTO `sys_menu` VALUES ('d2ab160a92644197bcb415c97b4428fd', '134f31d3e638472a92bad7bd181496b8', '0,1,134f31d3e638472a92bad7bd181496b8,', '契约金返还记录', '20', '/moneybackrecord/moneyBackRecord', null, '', '1', 'moneybackrecord:moneyBackRecord:list', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('d3f1b6f292904ef5b95f7800cc777a48', '82', '0,1,79,82,', '查看', '30', '', '', '', '0', 'gen:genTable:view,gen:genTableColumn:view', '1', '2016-01-07 11:26:42', '1', '2016-01-07 11:26:42', '', '0');
INSERT INTO `sys_menu` VALUES ('d56bd4d196b7434ba0bdc3cb1cea177c', '8a0001ed72b945e5a28525efe0f02dd0', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,8a0001ed72b945e5a28525efe0f02dd0,', '查看', '120', '', '', '', '0', 'pkg:pkg:view', '1', '2017-10-15 13:37:12', '1', '2017-10-15 13:37:12', '', '0');
INSERT INTO `sys_menu` VALUES ('d64d25d7b3014f9ba7736867cb2ffc43', '82', '0,1,79,82,', '生成代码', '210', '', '', '', '0', 'gen:genTable:genCode', '1', '2016-01-07 11:31:24', '1', '2016-01-07 11:31:24', '', '0');
INSERT INTO `sys_menu` VALUES ('d75f64438d994fc4830b1b3d138cde32', '82', '0,1,79,82,', '删除', '120', '', '', '', '0', 'gen:genTable:del', '1', '2016-01-07 11:29:23', '1', '2016-01-07 11:29:23', '', '0');
INSERT INTO `sys_menu` VALUES ('d7b801ae1e6747779438d0f6df50e39d', '5251ffb0bcd24466872dbedf915de196', '0,1,134f31d3e638472a92bad7bd181496b8,5251ffb0bcd24466872dbedf915de196,', '删除', '60', null, null, null, '0', 'bonussend:bonusSend:del', '1', '2017-10-18 16:03:31', '1', '2017-10-18 16:03:31', null, '0');
INSERT INTO `sys_menu` VALUES ('d81007bdde1f47769444d744556cb564', 'df04270a0a6649238caa1f2e8b444d85', '0,1,df04270a0a6649238caa1f2e8b444d85,', '增加', '30', '', '', '', '0', 'signin:signin:add', '1', '2017-10-18 09:50:57', '1', '2017-10-18 09:50:57', '', '0');
INSERT INTO `sys_menu` VALUES ('dafcdbd0a3ed4fd39ab93e5299d6a27a', 'c9d6d542c07742f58f4a0a6a26c5432a', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,c9d6d542c07742f58f4a0a6a26c5432a,', '导出', '180', null, null, null, '0', 'cardconsumerecord:cardConsumeRecord:export', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:05:54', null, '0');
INSERT INTO `sys_menu` VALUES ('dc9e76efbe0b44c2a264adbac87360d3', '9147ff7d8c1f4f37bf48349cbdeb9dcb', '0,1,27,9147ff7d8c1f4f37bf48349cbdeb9dcb,', '查看', '30', '', '', '', '0', 'cms:ckfinder:view', '1', '2017-01-17 11:21:29', '1', '2017-01-17 11:21:29', '', '0');
INSERT INTO `sys_menu` VALUES ('de7c50d276454f80881c41a096ecf55c', '7', '0,1,3,7,', '删除', '160', '', '', '', '0', 'sys:role:del', '1', '2015-12-23 21:59:46', '1', '2015-12-23 21:59:46', '', '0');
INSERT INTO `sys_menu` VALUES ('df04270a0a6649238caa1f2e8b444d85', '1', '0,1,', '打卡管理', '600', '/signin/signin', '', 'fa-get-pocket', '1', 'signin:signin:list', '1', '2017-10-18 09:50:57', '1', '2017-10-18 18:22:27', '', '0');
INSERT INTO `sys_menu` VALUES ('e03f8b6a5e454addb04fc08033b6f60b', '82', '0,1,79,82,', '增加', '90', '', '', '', '0', 'gen:genTable:add', '1', '2016-01-07 11:28:59', '1', '2016-01-07 11:28:59', '', '0');
INSERT INTO `sys_menu` VALUES ('e28c57f9106a448b82d43dc9d11c4289', '655e8fe6592c4c4fa8429ce64e1090fd', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,655e8fe6592c4c4fa8429ce64e1090fd,', '查看', '120', null, null, null, '0', 'siteuser:siteuser:view', '1', '2017-10-15 13:41:03', '1', '2017-10-15 13:41:03', null, '0');
INSERT INTO `sys_menu` VALUES ('e3339ffc78ee41a19e939adbc624ed1e', '5c9a66ffe7a146349d33ef288af04666', '0,1,5ffc22cfb7644638a3200203fbd77f52,5c9a66ffe7a146349d33ef288af04666,', '删除', '60', '', '', '', '0', 'classes:classes:del', '1', '2017-10-15 17:30:20', '1', '2017-10-15 17:30:20', '', '0');
INSERT INTO `sys_menu` VALUES ('e33b51d0488441e79177f8c833590bd7', '8a0001ed72b945e5a28525efe0f02dd0', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,8a0001ed72b945e5a28525efe0f02dd0,', '编辑', '90', '', '', '', '0', 'pkg:pkg:edit', '1', '2017-10-15 13:37:12', '1', '2017-10-15 13:37:12', '', '0');
INSERT INTO `sys_menu` VALUES ('e475ea54d4f24631af701ec339d0bc2d', 'd2ab160a92644197bcb415c97b4428fd', '0,1,134f31d3e638472a92bad7bd181496b8,d2ab160a92644197bcb415c97b4428fd,', '编辑', '90', null, null, null, '0', 'moneybackrecord:moneyBackRecord:edit', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('e7f1c1e476fd417caea0b94bfa8233c5', '44374c696d3c4d3fa71d2306d76c5120', '0,1,44374c696d3c4d3fa71d2306d76c5120,', '查看', '120', '', '', '', '0', 'news:news:view', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:39:45', '', '0');
INSERT INTO `sys_menu` VALUES ('e824b7c20bb34c9ca9ad023e8873e67b', '82', '0,1,79,82,', '编辑', '60', '', '', '', '0', 'gen:genTable:edit,gen:genTableColumn:edit', '1', '2016-01-07 11:27:55', '1', '2016-01-07 11:31:46', '', '0');
INSERT INTO `sys_menu` VALUES ('e841ef2242ee43eb8e99c0fb77b2bc15', '8a0001ed72b945e5a28525efe0f02dd0', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,8a0001ed72b945e5a28525efe0f02dd0,', '导出', '180', '', '', '', '0', 'pkg:pkg:export', '1', '2017-10-15 13:37:12', '1', '2017-10-15 13:37:12', '', '0');
INSERT INTO `sys_menu` VALUES ('ea034483531f409183899b0b5d4acae6', '5c9a66ffe7a146349d33ef288af04666', '0,1,5ffc22cfb7644638a3200203fbd77f52,5c9a66ffe7a146349d33ef288af04666,', '导入', '150', '', '', '', '0', 'classes:classes:import', '1', '2017-10-15 17:30:20', '1', '2017-10-15 17:30:20', '', '0');
INSERT INTO `sys_menu` VALUES ('ea5207b703dc424a91614aa7f171781c', '8a0001ed72b945e5a28525efe0f02dd0', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,8a0001ed72b945e5a28525efe0f02dd0,', '导入', '150', '', '', '', '0', 'pkg:pkg:import', '1', '2017-10-15 13:37:12', '1', '2017-10-15 13:37:12', '', '0');
INSERT INTO `sys_menu` VALUES ('eae0f1e813ee495bbcd673d52b570045', '63581a61b2db4bd4834cf0de8341f1bb', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,63581a61b2db4bd4834cf0de8341f1bb,', '增加', '30', '', '', '', '0', 'card:card:add', '1', '2017-10-16 18:28:19', '1', '2017-10-16 18:28:19', '', '0');
INSERT INTO `sys_menu` VALUES ('eb7f0579bb844ca8948ce61ebb38bad8', '031ea2e3455a45cabb8fcc11d80292b1', '0,1,134f31d3e638472a92bad7bd181496b8,031ea2e3455a45cabb8fcc11d80292b1,', '增加', '30', null, null, null, '0', 'moneypoolrecord:moneyPoolRecord:add', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('ec07fca54fee4a68be1ec39041ae6317', 'd17ac0b69c0d4cb8af5bc23760505a76', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,', '场馆分类管理', '10', '/sitetype/sitetype', '', 'fa-bars', '1', 'sitetype:sitetype:list', '1', '2017-10-14 16:26:22', '1', '2017-10-14 17:01:33', '', '0');
INSERT INTO `sys_menu` VALUES ('ec7cf7a144a440cab217aabd4ffb7788', '4', '0,1,3,4,', '查看', '130', '', '', '', '0', 'sys:menu:view', '1', '2015-12-20 19:02:54', '1', '2015-12-20 19:02:54', '', '0');
INSERT INTO `sys_menu` VALUES ('ef25b04337bd4232bb3c96fd31b5bf62', '44374c696d3c4d3fa71d2306d76c5120', '0,1,44374c696d3c4d3fa71d2306d76c5120,', '导入', '150', '', '', '', '0', 'news:news:import', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:39:45', '', '0');
INSERT INTO `sys_menu` VALUES ('ef4a739e375148d5a481558b06304201', 'ec07fca54fee4a68be1ec39041ae6317', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,ec07fca54fee4a68be1ec39041ae6317,', '导入', '150', null, null, null, '0', 'sitetype:sitetype:import', '1', '2017-10-14 16:26:22', '1', '2017-10-14 16:26:22', null, '0');
INSERT INTO `sys_menu` VALUES ('f03a6d42abe24abba604c1c93d02ff5c', 'a749d1b983ca4e5faec6b2f2c0477d2a', '0,1,a749d1b983ca4e5faec6b2f2c0477d2a,', '增加', '30', '', '', '', '0', 'order:orders:add', '1', '2017-10-16 17:17:39', '1', '2017-10-16 17:17:39', '', '0');
INSERT INTO `sys_menu` VALUES ('f0d0d3a8f6774ad798e906b2ddee70ed', 'd158faa9f20b4175ab52c8b7521821df', '0,1,d158faa9f20b4175ab52c8b7521821df,', '查看', '120', '', '', '', '0', 'code:code:view', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:14:38', '', '0');
INSERT INTO `sys_menu` VALUES ('f18fac5c4e6145528f3c1d87dbcb37d5', '67', '0,1,67,', '系统监控管理', '70', '/monitor/info', '', '', '1', '', '1', '2016-02-02 22:49:07', '1', '2016-02-02 23:15:07', '', '0');
INSERT INTO `sys_menu` VALUES ('f2ef04e06d574d5891fb67e05ea087d6', '031ea2e3455a45cabb8fcc11d80292b1', '0,1,134f31d3e638472a92bad7bd181496b8,031ea2e3455a45cabb8fcc11d80292b1,', '导入', '150', null, null, null, '0', 'moneypoolrecord:moneyPoolRecord:import', '1', '2017-10-18 17:57:11', '1', '2017-10-18 17:57:11', null, '0');
INSERT INTO `sys_menu` VALUES ('f418b99a67c24e4bb55df01aa1230c98', 'bb31b1933ae74f9b8b83d136cb406592', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,bb31b1933ae74f9b8b83d136cb406592,', '查看', '120', '', '', '', '0', 'siteremark:siteRemark:view', '1', '2017-10-17 18:19:35', '1', '2017-10-17 18:19:35', '', '0');
INSERT INTO `sys_menu` VALUES ('f542da18759d4d6b9e7b861f952454f7', 'ec07fca54fee4a68be1ec39041ae6317', '0,1,d17ac0b69c0d4cb8af5bc23760505a76,ec07fca54fee4a68be1ec39041ae6317,', '导出', '180', null, null, null, '0', 'sitetype:sitetype:export', '1', '2017-10-14 16:26:22', '1', '2017-10-14 16:26:22', null, '0');
INSERT INTO `sys_menu` VALUES ('f68ca6057997405ca6f91cc71924dd45', 'd158faa9f20b4175ab52c8b7521821df', '0,1,d158faa9f20b4175ab52c8b7521821df,', '导入', '150', '', '', '', '0', 'code:code:import', '1', '2017-10-14 16:14:38', '1', '2017-10-14 16:14:38', '', '0');
INSERT INTO `sys_menu` VALUES ('f85f710038324463b6c17ea2cf85ba20', '44374c696d3c4d3fa71d2306d76c5120', '0,1,44374c696d3c4d3fa71d2306d76c5120,', '导出', '180', '', '', '', '0', 'news:news:export', '1', '2017-10-14 17:39:45', '1', '2017-10-14 17:39:45', '', '0');
INSERT INTO `sys_menu` VALUES ('f86781759de540afa8556dcc14b1c9ae', 'c9d6d542c07742f58f4a0a6a26c5432a', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,c9d6d542c07742f58f4a0a6a26c5432a,', '编辑', '90', null, null, null, '0', 'cardconsumerecord:cardConsumeRecord:edit', '1', '2017-10-18 14:05:54', '1', '2017-10-18 14:05:54', null, '0');
INSERT INTO `sys_menu` VALUES ('f93f9a3a2226461dace3b8992cf055ba', '7', '0,1,3,7,', '权限设置', '130', '', '', '', '0', 'sys:role:auth', '1', '2015-12-23 21:36:06', '1', '2015-12-23 21:36:06', '', '0');
INSERT INTO `sys_menu` VALUES ('fcfc3f08b90044e6972498c1fe18a68f', '63581a61b2db4bd4834cf0de8341f1bb', '0,1,156ffc1ee4e642a28bca3690ffbc09ab,63581a61b2db4bd4834cf0de8341f1bb,', '编辑', '90', '', '', '', '0', 'card:card:edit', '1', '2017-10-16 18:28:19', '1', '2017-10-16 18:28:19', '', '0');
INSERT INTO `sys_menu` VALUES ('fec5fdb2588d4752966157c708234a5c', '1', '0,1,', '会员管理', '100', '', '', 'fa-users', '1', '', '1', '2017-10-15 17:29:11', '1', '2017-10-15 17:29:11', '', '0');
INSERT INTO `sys_menu` VALUES ('fef58155ba984dd298b0bdd6ae19e277', 'd2ab160a92644197bcb415c97b4428fd', '0,1,134f31d3e638472a92bad7bd181496b8,d2ab160a92644197bcb415c97b4428fd,', '查看', '120', null, null, null, '0', 'moneybackrecord:moneyBackRecord:view', '1', '2017-10-18 17:56:43', '1', '2017-10-18 17:56:43', null, '0');
INSERT INTO `sys_menu` VALUES ('ff71a6a5cafc4fbda6c9fe55ba704887', '0e5dcd9691e14914b6d9d12602790153', '0,1,0e5dcd9691e14914b6d9d12602790153,', '查看', '120', '', '', '', '0', 'classessignup:classesSignup:view', '1', '2017-10-15 19:45:23', '1', '2017-10-15 19:45:23', '', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5', '系统超级管理员', 'admin', 'assignment', '1', '1', '1', '1', '2015-11-11 15:59:43', '1', '2017-10-18 18:33:26', '', '0');
INSERT INTO `sys_role` VALUES ('c1f9322a9d6e4411a28668adda662707', '5', '场馆管理员', 'siteadmin', '', '8', '1', '1', '1', '2017-10-15 14:16:13', '1', '2017-10-19 10:50:29', '', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '0f171d3e55104f47a108819fa62bb332');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '1');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '16d028488d31445b80dae47775fa1f09');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '27');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '29');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '6a6404b4430d4516bd8dd22fb181d476');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '8d7a63296777446f8477881589369146');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', 'a2fcd8220323474c80f35e465a8f5938');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', 'd7d3ffc90dd34c6bb1465b1e017785b8');
INSERT INTO `sys_role_menu` VALUES ('145681fb119f4c4491b5fe9692d78765', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '031ea2e3455a45cabb8fcc11d80292b1');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '042b3a66e1be49a6a459dcd386b38bfc');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '04873c114baa4e3986fb6c25c887a51b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0545ea26046844d18846251b1662d4d2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '084ab1300d504e42afd9040514948e7d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '098934b4c7df46bd90a9fa03a9452821');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0a8fcb4dc8114392b7f0dbee00b1514b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0be12b103bda4ad0930f5766b77207a2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0d57a30dff4746d0a5ed2cd9e7b4a213');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '0e5dcd9691e14914b6d9d12602790153');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '10');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '11');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '12');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '134f31d3e638472a92bad7bd181496b8');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '134f9ada0ece4647aaee952d3048a5c7');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '156ffc1ee4e642a28bca3690ffbc09ab');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '18bf888953834b23a599ccd6ced6add2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1a183fb9983a4608a845e5999034ad35');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1c8598dfc4db47b5ba062d4903ef1959');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1ce1c4c6184e4a9e97cb3b34e4cce0a6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1d1f5c34cc15487b981f3f793b868b07');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '1f2e2738b82f4822834e3d3ddf3fac2e');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '27');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '29');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '2a5ef372675c4a898e40327f9692677c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3077f76c65c94c2ca9c9fbaf5a1a02cd');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '33c81a7b171d4f5b8797460c27f9fabe');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '36699f6f595642d7b7cfa2e27b42e0e5');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3925de0fb08f4ac385c64bdf48c19232');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3a319d9183cb4905a995aa265a48f1d5');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3a50958f8e6d42df8d8796c3531b8570');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '3c1c639c76f14f6f9903b0143371ea09');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '4');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '40c2d00e368f48e4962b396b4aa03aaf');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '43933d9093854b988d822fb36b4f648d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '43f7b9b62c1d4801a2490d5d87093e8c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '44374c696d3c4d3fa71d2306d76c5120');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '44c7a7875eb442dc8a87f4b026bdb618');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '45e075d365d74bd685250aaf85c1f00d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '46cb74415db8489e8e287bc7cf3fb709');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '4960143738844472a96758c7a20c5759');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5251ffb0bcd24466872dbedf915de196');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '55937cfab63448e584c1277689c89b00');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '570d3765de864f09af7d4497e987185c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '57f1f00d6cb14819bef388acd10e6f5a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5ba22755baa248eea342961187683e71');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5c9a66ffe7a146349d33ef288af04666');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5d2c68df5a3e44748108d333f5ba75a9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '5ffc22cfb7644638a3200203fbd77f52');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '60804269a532483cb326a6d088835333');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '63581a61b2db4bd4834cf0de8341f1bb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6470b3f4730a46449a332a454d1848e1');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6509eed6eb634030a46723a18814035c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '655e8fe6592c4c4fa8429ce64e1090fd');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '67');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '67175628ea9c4fd0a0062e818aba23a2');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '672701abe51243988fb9f9983ea1903e');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '68');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '68b6b48fe1bd4335aa65e3a2206dc8b3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '68f9151151174868ab436e11e03bf548');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6996fd88e6f04ed694f4bbc9018af45c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '69ee3f991c3640458ecd11b8d016a2eb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6abe2211d5e649ce8acf0440d27af258');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6c672b854d2b4821b89297640df5fc26');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6d3a6777693f47c98e9b3051cacbcfdb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '6db31e672a0745ab854f287a77803ea3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '7');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '79');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '7962e02cc2874b95bf1e3b957c30dffa');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '799268ac6b0a41659d557dc6a923d71f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '79f0ffa47dbe43ffa8824d97612d344f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '7a127875d5b84e73ba656cc7c220ea5b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '7b7d1aaee5954d58bcf9db244d7fdcde');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '808744e7a8154bd28cde2537791513d9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '81b5a9bd4c9c41ee91afd0b69d9d9643');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '82');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '82d2f8e514cd4f9b8e0c948ee0a8f722');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '84');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '84de879505c44e14864834004789e267');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '88e8b76138c34dbdad0bc4557c6defc9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8980742a0dee4b62a33c19cd22677707');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8a0001ed72b945e5a28525efe0f02dd0');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8c8e969acae445309a0fbdcaefc9e1bf');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8deb516020544511992199d558e7ec06');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8e86bba895c546fa93475452e4d3c856');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '8e88d30fb5a04aec838188177e9d15c0');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '90a403e786c444e7ae5dfe0b3bdad13a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '91aa429a6cdc4a9b954d84ff1456934b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '985779f085b44d7f8399b6d5c33e4b59');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9bc1aa1053144a608b73f6fbd841d1c6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9f10acc36eca4eab88ccf36bbac91391');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', '9f6b95027ec042d490fb231ae918ac78');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a04bf61261f84ad7a948fe36bcb0b5ae');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a07efb3c4dca4dd09abd4090422ab936');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a08e9acfe853486696efca4d51d27181');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'a749d1b983ca4e5faec6b2f2c0477d2a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ab0e1ec1d9f74f6b847cf010308b4041');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ade3cb55386e434ab6ba30d4f613a8ce');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b186924f24304f4c959c0d7d65fcd1d9');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b2be63099be747ecbc4c6bab65caae9f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b34f22e7910e4f14954ce92035eb2b50');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b9a7df22b3a44271952be08d8a83a918');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'b9bf703081c04dd695918fb5596d60cb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'bb31b1933ae74f9b8b83d136cb406592');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'bced2b51ec0c4a2ba9b164e06d26be13');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'bfa9ca7005db4692a45ac2c6a55f33a6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c006c1f1f57144b3be8dcf5b9d06d9e6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c37a09e837ab45a39631a8e63c7bf2ff');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c3de25a76785419b8a6820db3935941d');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c523ce4ea1c84b82a58ba1fbb71921eb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c5715223034e478a99988c99bc876deb');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c7541f166b504175bb0a25245c6c4876');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'c9d6d542c07742f58f4a0a6a26c5432a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd158faa9f20b4175ab52c8b7521821df');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd17ac0b69c0d4cb8af5bc23760505a76');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd2ab160a92644197bcb415c97b4428fd');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd3f1b6f292904ef5b95f7800cc777a48');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd56bd4d196b7434ba0bdc3cb1cea177c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd64d25d7b3014f9ba7736867cb2ffc43');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'd75f64438d994fc4830b1b3d138cde32');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'dafcdbd0a3ed4fd39ab93e5299d6a27a');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'de7c50d276454f80881c41a096ecf55c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e03f8b6a5e454addb04fc08033b6f60b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e28c57f9106a448b82d43dc9d11c4289');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e3339ffc78ee41a19e939adbc624ed1e');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e33b51d0488441e79177f8c833590bd7');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e7f1c1e476fd417caea0b94bfa8233c5');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e824b7c20bb34c9ca9ad023e8873e67b');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'e841ef2242ee43eb8e99c0fb77b2bc15');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ea034483531f409183899b0b5d4acae6');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ea5207b703dc424a91614aa7f171781c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'eae0f1e813ee495bbcd673d52b570045');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ec07fca54fee4a68be1ec39041ae6317');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ec7cf7a144a440cab217aabd4ffb7788');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ef25b04337bd4232bb3c96fd31b5bf62');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ef4a739e375148d5a481558b06304201');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f0d0d3a8f6774ad798e906b2ddee70ed');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f18fac5c4e6145528f3c1d87dbcb37d5');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f418b99a67c24e4bb55df01aa1230c98');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f542da18759d4d6b9e7b861f952454f7');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f68ca6057997405ca6f91cc71924dd45');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f85f710038324463b6c17ea2cf85ba20');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'f93f9a3a2226461dace3b8992cf055ba');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'fcfc3f08b90044e6972498c1fe18a68f');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'fec5fdb2588d4752966157c708234a5c');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'fef58155ba984dd298b0bdd6ae19e277');
INSERT INTO `sys_role_menu` VALUES ('1c54e003c1fc4dcd9b087ef8d48abac3', 'ff71a6a5cafc4fbda6c9fe55ba704887');
INSERT INTO `sys_role_menu` VALUES ('2028b5ce8bc64bd79218e57b6ed64865', '1');
INSERT INTO `sys_role_menu` VALUES ('2028b5ce8bc64bd79218e57b6ed64865', '7260de6a613e44f6a7e5aec2fe61ba83');
INSERT INTO `sys_role_menu` VALUES ('2028b5ce8bc64bd79218e57b6ed64865', 'ad49f9002c194be9887a8d95918dd5d6');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '1');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '27');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '29');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '2d2318845b834b84ab6a4798506daf35');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '330a5a21878043a6b5f110915d1e5585');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '347e4f2878de443baa73cc045f5f4217');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '3c8e1b3328414e52a927546f74449f49');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '3ce0908ae8fb483581e81273d8fa6346');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '498de521f093412b82624146ef374eb8');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '551191e49fef43d0baacc3fb3c7329ba');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '7a48fb2236b04f8da3784ca327ff6507');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '83a96e6433e248098c9ccd31fbfd7d98');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'a75317d1673b4e84849613e11df5fd69');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'bd1ca715c9e5485f9daaa7268a54436a');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'c469e9e70be049f3869f30eb19f77ddb');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'cb77c6ff39df47718245687a7ef08dd7');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'df431f64821d49edbc489730014982ab');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'ef431c2a1ff64bc49b0f2c47c01d502b');
INSERT INTO `sys_role_menu` VALUES ('216557f4f6424dcd869eb698bb5764a5', 'fad80bd91844498083cc3e1a85f3d6ec');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '08f0dae66d914f3988f7d36e3cc4c038');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '1');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '11fafe5a646942aa84f319abe65bb54d');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '1404c070ee72464d9c5357ec341590d4');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '1615e0abb15f49faba5e06d5cb8ec175');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '171612c0544346b8876de16030001026');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '1993e03519a44ceea30609fac20e5077');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '1dacda3670d640d48a01b00bb01ae869');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '27');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '28c73e95894d4d4c8c97e8413522b62c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '29');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '29435333d44a402f8f88f4f5508cb2b6');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '298dc64ea9b443e99398f0591012a052');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '29cc833a92c346c29c9f715647b4cfa6');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '2e674ada7ac5456b87a05e8a51b25936');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '32fc6f99875d4a7186aed77ea9b56ae7');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '36a49841c9884b289c585dbf84bf1ee2');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '3922d0b1abd34f7daabf9c20137a8702');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '3d686344c4aa444e8ae79b83637dac13');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '414c87fa7c98469d8da6bc78ddfbad36');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '425762bcca414cde9277e2bc94d7ae7f');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '43569bb3e9004d838c94f6e8db9eab86');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '44199a6895244ad2910131d2a3791c78');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '44a6d2c40c5741e9aace7b59fc9d982c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '49d1b8fbcb614439afc3a8718bf8019d');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '4cdb699f56904781af765235d024962b');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '4fed66329a1b475c8d493304905fa342');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '50dc84007be64b7cb9d153645cd96bca');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '54822c3ba1ca412a96c568cfbdce91cf');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '5493bf3f0e8b45a2818984882c5c0c1e');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '594fc8c22fec4cc38bc303ad65b16906');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '5e63c8d4b6b14cdfa98985785ed10ec1');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '62f35357910048c49b0eb41ae857e11b');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '66f122d3b92148c683a6ba369ba14016');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '684dec16c28a4cf19252d38c8764a1fb');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '6f10c6a032e340feb2a57446e37325f2');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '6faaaa515a204692a037b9a69c97094e');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '746261b98e5946ed8a8197a2a63f015e');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '753217914eba4f8292a8afb4122c33ca');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '771fde3dae954fd696a293596e3cf235');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '79afed9e3df640d6b70fb501040deca2');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '7cfc9927fbca460197dadb36fcc9c2db');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '7ef956cbdfde4c8880746e0735ce4c5b');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '8365a0e96e8e42e38f2314fd2581d001');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '84d2b23331b04d2eb48e8039ad3d4986');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '85989db48ac04830b4c1429f3d2def1d');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '8616e041c46a400a8d03e9c98f20b445');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '894d53b6527047a79bfe4ec90d9eb106');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '89b98dbbae5247acafb7a3bab2991b74');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '8c62328256eb4b1f9e6ed06fbf949a52');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '917bee7ad7d743969aabffcf0c108b65');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '947234aaae4f4c00975b251f79ed39f2');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '970f6f78402e4b5d871b25f24d322df8');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '97585e4b74234b7abf4f7c6abf1b36ee');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '9cab1ab3c5a54934a1e695b72aef310f');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '9e47844b1c584c2ea371061e72aa4185');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', '9f874def69a641148a0052ea2251664c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'a241fe4f8f5d43b9b424f0df910eb64b');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'a612d6e1aabc4649a36226958b36de54');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'a6d4bf36cc124d5b99385dba7e048805');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'a717c0bbe7dd4650b94d04a2e6a26ed3');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'aa2eabb28d7840858295995ca824bd81');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'acb6c92cb12d40ed8baae6e72ee596bc');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'adf4f989f90e489ab4ed7d686ca776e2');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'ae03c3fbe78849a2a3b85c0cd94d33d5');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'af61d473276a43e2ab08977977c4213c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'b12f900fe3d64df596e574d3be85c703');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'b28229b489c74811b68056c2d601c39c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'b752cbb996d44ae7b18c1a536c531e4c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'b866f17908ec42508656a1bcf0566d3a');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'b86a3755d0834d3bb75016aecbcb8634');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'bb4802d919b9435abd52a06483fa541a');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'bb7866a05924475ba483ff1f1bee7d07');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'bbeb0ea4dacc489191ba5863f0207cea');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'bf457c00e86e49699107332a495c7cd9');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c05c016832254ee1a858b6293af81bc8');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c2fa5e202e704168bb2e2be83bdc049f');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c4d9ff269cdd4a16a961bbcafda90207');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c5bb2189b5e746fbbffaf1338d359b05');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c87060c043064f69865d5ba71dedfe36');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c8fcf6ed40114c0f80b723bd3c51fd47');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'c9ae6e17100043a7b9992517183e02cf');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'cca877f9f14a4175af58cb914df1dea8');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'ce235101d55d4a12a88826ac4291c071');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'd056a7f2d82e4835babf05cfe97c4469');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'd35303822fd94ff59009e65ff5d7a356');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'd54486db344f4042b7caf47313b18dc0');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'd652a9a6156d48bbb0f86353064c6906');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'de9d302f57dc440d9c95cf5d1da002d8');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'dfcc7519c82c4ca7941b2ea63ab70d47');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'e5fd5541e0fa409e8958ba7c1eda76ec');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'e7b9b118838745849c26fe39617a559f');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'e86826854a714ed2b1cff04c23fc2d00');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'eb0e6d2d693a4c8dbb61501f7abc6b54');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'ec459b8b0c094c629d8a2a80787a4c5b');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'ed880cbee8e444548cb9a8861b750e09');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'ef4a3b5108aa4a9bbc6620e07da20641');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'f56add9645044f87803c52d0b21d4b20');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'f6d5cd97150b4ab8abd49fb2d61351bc');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'fc2df0b12a6e4cc8b2eb122f9b8d214c');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'fd724482d99c43b9900a9b2843b95e39');
INSERT INTO `sys_role_menu` VALUES ('431aee4570e04c2ca04594a8f581ffa1', 'fd8163442b004ae49a3d0374dfd463e7');
INSERT INTO `sys_role_menu` VALUES ('59ff6ba4d4a9447f9e5d975f0176372c', '1');
INSERT INTO `sys_role_menu` VALUES ('59ff6ba4d4a9447f9e5d975f0176372c', '27');
INSERT INTO `sys_role_menu` VALUES ('59ff6ba4d4a9447f9e5d975f0176372c', '29');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '0076ef9dfe1a4b568f967858086ac6d2');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '04c4ced3b72f4bdd8b3a6017ec91c327');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '0677703a41fb45b8a9de4d65c0a5a104');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '09b06d88f9b64943ab1f79bc494339e0');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '0d6ea6a8ac8f41ab83fe33c2ce2329d1');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '1');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '14ad6ca62cc44ec09f42decb55d0fec9');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '168a9d6bddc04cad9bd1e65cb40ef561');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '188088ba98ef45b6b1879002a6f45fc8');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '1a1fa99bc4664641a9ed83d65498944c');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '1a7dcbf045a845e3bbdce512fa29878b');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '1ff401ab176341d599bbb85bee74fb4c');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '267dfd250cf04708b7fefde838c5d359');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '27');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '288370a4939f4191bd4efeb574447db5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '29');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '2cd5a8e59f9044fabb31fd54749e78e2');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '37ba8f3c264a4d8a8c2a5edd6bfe20b5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '3acb573acacd4512adec3fcfc637fe8b');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '3ad9e3ed645b48938fd17f49ca56630f');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '3c9fb6516d5d4b99a3d7163cb3368657');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '403380e68ce64f318b445074cd72ea0f');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '468ad338bda04ee3bdb81c20e08b9aa7');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '46d1bacc918b4f9eb7210265514e3ff9');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '475f7f9bfe2a44dab3d43dab787c9ed1');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '498272489b73477f95b27a5fdecef5a2');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '4a2ab88ee8564da4a91ea551c04f2287');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '4b25df9bc7054f8e96a0eda17fd9baea');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '4cc1133f2374450e9c597f3c476a57a8');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '4e4f1c6de48344a39b67f9479ff884d2');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '5049fcc5e9c84972accf35d239b01216');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '54a2da46f5b240ccae04e6103226a283');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '55a38974209941d88477db4126387138');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '55a8d135ce114d2096458b3c75aefee9');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '580890f7c7e84b6b8c3a3fa89bb5960f');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '5eacbf68df324227be2dbc1c6078dfc5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '61df1d61fb544158bceb209bf27e5c9e');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '6681e0b52a4a4663a49779cc45c28cf5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '6a1cc9b38e83467898ff4f1dca76d082');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '6b8275c371574880bed16c5b115de6b7');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '6e63b001128c4276971a6f14c8473216');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '6eee88b8a20f4e13ac9eaaf77318eea9');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '6f63896d695b491a9df7518d3768eff4');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '7163189b292849a6a70c670f04901320');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '74875044159d4bdf8ed00f44924e6ec5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '79b1d2d07a484e88b29071777f5b80e3');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '7a3fcc47c4cb4ac7b48b10261a991277');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '84e6092c1ca6436887dc57f15aa4513a');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '86a703249663439a9421a37e935ac14a');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'a30fb47df3b5407088bc534f562307e5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'a9a6f58aee7d462e9e9f8413d4b638c8');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'b4fa7b53a4f4475b8e57546a62d059c8');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'bb0ab44aaba34cbf8873568b84ad723a');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'bf29a5386aa240618e18219235e5ba16');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'c273393439b34954ada9804b1e3145cb');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'c2e74c52132d448e82e54548fd3c8863');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'c9e4734e900a4ff5a46f9374cad7a3cb');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'd262178c9f4143be81f4f69bcd428979');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'd8bdb124c7c5406b9266a1d184acb091');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'd9deee2945374bfe9c7c09668060d3f5');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'daa3a2c8ac064ff4b163930ce9a55ea8');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'dcc91714d37e40e9876e19dd7bad1d91');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'de180f7935fe4dac9904f402975a6876');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'e11d5625235648518916eb04f7c876f2');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'e64ea0ee09084ff9ac86a9fa33cc9201');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'e992848f1d4c4e0295d5af69c38a8c1a');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'eb6a353b5eba4ec597d0ac9986c66167');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'ed0b07b7e77846878a0fc22514aa2600');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'ee24cfacce2e4b3daefaadc0acb9f41f');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'f2cc77d1f30742a7851e4f39d80f8bf6');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'fb4a4dee4c25481a9aaa00fb2e668773');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'fbbaf0f4e463410e94bc6393f8d7e07c');
INSERT INTO `sys_role_menu` VALUES ('875f5e0e4f9542bd8de1ca8bb1c76680', 'fe587665eb9242e8ad7ed1e6793a9705');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '1');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '1ba25c6f48d84edab7c53c10f3f43f43');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '27');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '29');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '2c4821f099284d319531cf99addc0cb9');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '3300b7e891674ee78cba21777f022b7f');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '3356facbde9e48f3aaf4836dbb8b4303');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '35b6d7469dfc4ed3b3add21e6a04e58c');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '74cb439c6d0f4eec910e6557fb1c9b13');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '74ea70ad78e34fa8a47ffbcc3580153a');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '7606d03fba0c453eb9d32763f6c06254');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '7941ffce542347d8ba7182226742e9e7');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '7b92911a2c394668b7d2b0588648de55');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '7f6ed14dafa247c699b8c2a0e59409f9');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', '9fd081216f45485aa0354897d9d6645c');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', 'd9b9cab2da8b46d39de7d49fe8e963df');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', 'e70b4e143c0745edb284fadd7c38299e');
INSERT INTO `sys_role_menu` VALUES ('8d1403fee751441fb8baa84b4d40da1e', 'f0a0fb94bde2427c8c04bf4db0237ba0');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '0076ef9dfe1a4b568f967858086ac6d2');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '06c0d114af4f476596dbcfa2481f4633');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '06d0e7d84efe4cc3bd9cded40d996c30');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '09b06d88f9b64943ab1f79bc494339e0');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '0d6ea6a8ac8f41ab83fe33c2ce2329d1');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '1');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '1312be3280664ac0bc106e5d33f6c5fa');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '1320b96f8cda485487ddadf8888a56aa');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '14ad6ca62cc44ec09f42decb55d0fec9');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '168a9d6bddc04cad9bd1e65cb40ef561');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '188088ba98ef45b6b1879002a6f45fc8');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '1a1fa99bc4664641a9ed83d65498944c');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '1b597911e6eb4506a811678f32c21c8e');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '1ff401ab176341d599bbb85bee74fb4c');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '267dfd250cf04708b7fefde838c5d359');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '27');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '2784bdfa26244caf818b9c8923152b86');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '288370a4939f4191bd4efeb574447db5');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '29');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '29d0d525d9114d49b08c530c97eb8d51');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '2cd5a8e59f9044fabb31fd54749e78e2');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '3acb573acacd4512adec3fcfc637fe8b');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '3ad9e3ed645b48938fd17f49ca56630f');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '3c9fb6516d5d4b99a3d7163cb3368657');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '3fb19e771c20484d9205e5dae2dba69b');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '468ad338bda04ee3bdb81c20e08b9aa7');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '46d1bacc918b4f9eb7210265514e3ff9');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '475f7f9bfe2a44dab3d43dab787c9ed1');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '498272489b73477f95b27a5fdecef5a2');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '4b8393bc9b01468195ba3dc7e9b299be');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '4e4f1c6de48344a39b67f9479ff884d2');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '5049fcc5e9c84972accf35d239b01216');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '5462fadfe1f84868819db36123c5dda3');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '54a2da46f5b240ccae04e6103226a283');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '580890f7c7e84b6b8c3a3fa89bb5960f');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '5eacbf68df324227be2dbc1c6078dfc5');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '6681e0b52a4a4663a49779cc45c28cf5');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '6ada9fc7bae844ec80947a8afc728cbd');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '6b8275c371574880bed16c5b115de6b7');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '6e63b001128c4276971a6f14c8473216');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '70d8357b796c4eef809c0d92444c66a6');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '74875044159d4bdf8ed00f44924e6ec5');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '75fd8db516ac48d5bc62cb6c8de188ea');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '79b1d2d07a484e88b29071777f5b80e3');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '86a703249663439a9421a37e935ac14a');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '874c4ba15d1f400d8261582c821a9c41');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '881025ddfd2145fc893603879748b24d');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '8e04cb5362e04d49b1ad6b941031e34c');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'a30fb47df3b5407088bc534f562307e5');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'a9a6f58aee7d462e9e9f8413d4b638c8');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'ab1faf95f01046e8a831be7d072888df');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'ada38cc1d438419d8dfb0876b0cbdadf');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'b043a5fe510548848049ef6e852b3b7f');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'b4fa7b53a4f4475b8e57546a62d059c8');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'b74c75ded95a470e8b815343e10df98b');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'b93cd4589ec44bc19c8dc3cf1d7583a9');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'bdebeaaa485246e995341a7fa14ed56d');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'bf29a5386aa240618e18219235e5ba16');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'c273393439b34954ada9804b1e3145cb');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'c2e74c52132d448e82e54548fd3c8863');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'd262178c9f4143be81f4f69bcd428979');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'd8bdb124c7c5406b9266a1d184acb091');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'd9a75ce59a5e466e8e1f7c506abcf443');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'd9deee2945374bfe9c7c09668060d3f5');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'db368d6e194a435a9e55861cf20dca35');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'dcc91714d37e40e9876e19dd7bad1d91');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'de180f7935fe4dac9904f402975a6876');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'de6d03c44d5847178cfd84b597da8cab');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'e02077e01c964ef1ab3f523385cb93ed');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'e11d5625235648518916eb04f7c876f2');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'e64ea0ee09084ff9ac86a9fa33cc9201');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'e992848f1d4c4e0295d5af69c38a8c1a');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'ed0b07b7e77846878a0fc22514aa2600');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'edbb148eef4245bc8e20f4a820f27cd6');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'ee24cfacce2e4b3daefaadc0acb9f41f');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'f2cc77d1f30742a7851e4f39d80f8bf6');
INSERT INTO `sys_role_menu` VALUES ('a3526302c3d04ab0aa8b3a33879875da', 'fe587665eb9242e8ad7ed1e6793a9705');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '043b8c332edf47648dd90daa27b06634');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '0806cd8cee4c459585fb6221fb9fe8ce');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '1');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '1190815eb0464d46988df57aaeae32af');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '15abc8a968614c61bf538f9dd9d7c3c0');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '1ad8dce6d9be4529a01b7a94f2cd6d33');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '223c80bd6375475a95e0fda7116851df');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '25e27d363fc54a48bfcb43b3a70755b2');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '39370e8839b34c208220ad6e26de8de9');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '42ab92f78be34d299272efc7557291f6');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '47c773d75ab54028a43f99cac8e5aa0c');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '530753a71980432aac6a402f5cb3b01d');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '546758df70974b219a6584024c073131');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '57279fec5fc04ec6acb9e4a97afcc954');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '5adfaaa82efb496484fb47377dd521eb');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '5d46187d18a24cd6b9873bfaabc02891');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '64e89f94ae5843be8e155081690dbac3');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '6dfc22d8ca0b4e1ba2aa4dd41cd76af6');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '7307cae564a24c65aa9a5f87782f5371');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '7518d62493284db4b9ab34d7a1eec765');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '7ff870b7356d4d379d895cab1d6fb8e2');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '81bfdf3202444cc688dc7ff86b9238a4');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', '827de00bfa4d486cad23ae74df7e16f9');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'a2e75d5c261449a0bd70d050f8213198');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'a5264d10a1d8440ba072d3d57e7411de');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'a877b81bebf540698f8557196d849d6e');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'b1e51783b21249f5a663af0f06f07deb');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'be6329781fed4852bd32745ba7ec5b5a');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'c2368c25ad104794a678966075afbb00');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'd7c1c30d1c4e4a8c95f12eeaf3acea79');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'dc38104779574ecd9cf8158ecde37e0a');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'e551f115ae5949b09104c57bfce1b7b2');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'e97620c41b8440b8aae221330193c1bc');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'eb950f5c81cb4f11a170646d80539a4e');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'ef783aba500943c8b1b4cb5df5f024c9');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'f49624af1b0c4a9cb2b72f95edbbcd52');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'f4b7469db1ee4782816945b2d7c7b193');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'f50d2183437f46e3b151d13b49d0196f');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'fac850d676e24de8811b8c7e498fc379');
INSERT INTO `sys_role_menu` VALUES ('abfb233b53f049609d02d28d038813cf', 'fc9473d9b6434b1daeba07efcb8179ed');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', '1');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', '27');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', '29');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('b103c6ff8c124d01ae2899e674704c49', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('b60627e29b4c40e1ac7f59550bb62f20', '1');
INSERT INTO `sys_role_menu` VALUES ('b60627e29b4c40e1ac7f59550bb62f20', '27');
INSERT INTO `sys_role_menu` VALUES ('b60627e29b4c40e1ac7f59550bb62f20', '29');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '1');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '27');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '29');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '448aab72c0464ebf98a8b594e30a173c');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '44f63606f19c4e0c952876bcb4ece651');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '54822c3ba1ca412a96c568cfbdce91cf');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '879dc1da7f764b9085277867deae3fe4');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', '917bee7ad7d743969aabffcf0c108b65');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', 'acb6c92cb12d40ed8baae6e72ee596bc');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', 'd8c528f7ff9141ba91629e9f2fa73a48');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', 'da63a0cfe01541e699d4c6e6948d36e6');
INSERT INTO `sys_role_menu` VALUES ('bc2bed504a704c8383777fd4b11c3b74', 'e11bed6188f64e80ac6030afdb99e636');
INSERT INTO `sys_role_menu` VALUES ('beae038596d4469fad72ec7592f40d37', '1');
INSERT INTO `sys_role_menu` VALUES ('beae038596d4469fad72ec7592f40d37', '27');
INSERT INTO `sys_role_menu` VALUES ('beae038596d4469fad72ec7592f40d37', '29');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '098af9702f5a4527adbdbdac9beb352a');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '0be12b103bda4ad0930f5766b77207a2');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '0d57a30dff4746d0a5ed2cd9e7b4a213');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '1');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '156ffc1ee4e642a28bca3690ffbc09ab');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '27');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '29');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '33c81a7b171d4f5b8797460c27f9fabe');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '46cb74415db8489e8e287bc7cf3fb709');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '5c9e0dd1b6aa4889ba6d5baca04bbc09');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '88e8b76138c34dbdad0bc4557c6defc9');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '8c8e969acae445309a0fbdcaefc9e1bf');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', '9147ff7d8c1f4f37bf48349cbdeb9dcb');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'bb31b1933ae74f9b8b83d136cb406592');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'bb835f8498174523bb75296c2b9b6e56');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'c9d6d542c07742f58f4a0a6a26c5432a');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'd17ac0b69c0d4cb8af5bc23760505a76');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'dafcdbd0a3ed4fd39ab93e5299d6a27a');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'dc9e76efbe0b44c2a264adbac87360d3');
INSERT INTO `sys_role_menu` VALUES ('c1f9322a9d6e4411a28668adda662707', 'f418b99a67c24e4bb55df01aa1230c98');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) DEFAULT NULL COMMENT '归属公司',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `qrcode` varchar(1000) DEFAULT NULL COMMENT '二维码',
  `sign` varchar(450) DEFAULT NULL COMMENT '个性签名',
  `depart_id` varchar(64) DEFAULT NULL COMMENT '部门编号',
  `user_status` varchar(10) DEFAULT NULL COMMENT '用户状态',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `wxopenid` varchar(100) DEFAULT NULL COMMENT '微信Openid',
  `position` varchar(64) DEFAULT NULL COMMENT '职务',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '5', 'admin', '4daff6f04010ed3544625e80fcfd75296d3434ae34dff9c2727be8a4', '13815874603', '超级管理员', '260737830@qq.com', '0536-12345678', '15610273932', '1', '/sman/userfiles/1/images/u=1225775914,2507975769&fm=27&gp=0.jpg', '0:0:0:0:0:0:0:1', '2017-10-25 17:37:27', '1', '1', '2013-05-27 08:00:00', '1', '2017-10-16 10:26:01', '备注信息', '0', '/check/userfiles/1/qrcode/1.png', '你好啊', null, 'zc', null, null, null);
INSERT INTO `sys_user` VALUES ('31285722b3554eabae32b0879f191b1f', 'e6180d6f3fc04588bd03505acb344b7f', null, 'c2', '4fcd223c6c759fc17e1d60a0dbd05e84e15853265868d7ee3dbb5807', null, '嘿嘿', '', '15165807412', null, '2', null, '0:0:0:0:0:0:0:1', '2017-10-18 14:38:13', null, '1', '2017-10-18 14:26:04', '1', '2017-10-18 14:26:04', null, '0', null, null, null, 'zc', null, null, null);
INSERT INTO `sys_user` VALUES ('34dff6e97c1c419199b5520e61e6a9f3', 'e6180d6f3fc04588bd03505acb344b7f', '', 'wangxiaoming', '9107ee1496cae7e914251492dd6525da34dfdb5ba536b91ca225991e', '', '王小明', '', '13568696542', '', '2', '', '0:0:0:0:0:0:0:1', '2017-10-20 16:23:27', '', '1', '2017-10-19 09:44:32', '1', '2017-10-19 11:12:09', '', '0', '', '', '', 'zc', '', '', '');
INSERT INTO `sys_user` VALUES ('99976ffa302a4ded819da781f0cf619f', '9ffd57fc9d084eb9b8d13af536b0d957', '', 'c1', '74595ba61ef5d60524cfcf91d1a11b694785a30b9edb36ba0a7218b6', '', '张浩宇', '260737830@qq.com', '15165807412', '', '2', '', '0:0:0:0:0:0:0:1', '2017-10-20 16:32:56', '', '1', '2017-10-15 14:32:33', '1', '2017-10-15 14:43:36', '', '0', '', '', '', 'zc', '', '', '');
INSERT INTO `sys_user` VALUES ('afc235e4465744d8a55af60034c17076', '9ffd57fc9d084eb9b8d13af536b0d957', '', 'xuzhimo', '4c5204280be838e346e8eb5c4ddd393bae2ce686abd32a084f8dfdac', '', '徐志摩', '', '15165807412', '', '2', '', '0:0:0:0:0:0:0:1', '2017-10-19 10:49:07', '', '1', '2017-10-19 10:08:15', '1', '2017-10-19 10:41:13', '', '0', '', '', '', 'zc', '', '', '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('00bc8dadd2054fd99985c2d59691ba69', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('045a651e6c704603a4b83f47fc586283', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('09cddcc1e7b1412dabf0442bbfe09607', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('0a00a0a3e7534b51b0617b57be0c90a7', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('0b9f3875f4e34b5a832bf2f601e0ea65', '145681fb119f4c4491b5fe9692d78765');
INSERT INTO `sys_user_role` VALUES ('0dae16e543a94eb99be0d5c23e8699ff', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('0e2d63a6fd6b47378a7b7d9b63dc9838', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('0f6b1b59de8c43a0a89a44b142116bb6', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('1', '1c54e003c1fc4dcd9b087ef8d48abac3');
INSERT INTO `sys_user_role` VALUES ('1', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('10344a7496364920a2b31eefd00538cb', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('1df485e925814fa9b45334d3d27c7238', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('1e6889d8244d4e438ddfcc60ef428227', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('2230ca758a5148f5a6b82099153c83c7', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('2368cce72b0948ab9f0e47784700059f', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('263ac731ccb84512b6d80f08f490636d', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('2ab2dea79c874eedbfd7147b1724ad5b', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('2ab322d6669d4947b7c29478c86ac8ba', '875f5e0e4f9542bd8de1ca8bb1c76680');
INSERT INTO `sys_user_role` VALUES ('2b4d318f9b2d400e9d03288cd39c8ab9', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('2be00f0252d842eda84d315b317e2225', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('2d000495f4854b60a0e946187439d3f2', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('2e2e5c97e25a42bcb16e77f465de3e90', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('2fd9760f37024def9f5febedf1dd6cfe', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('30f9902e81d440bd9fb1ca8321bb4596', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('31285722b3554eabae32b0879f191b1f', 'c1f9322a9d6e4411a28668adda662707');
INSERT INTO `sys_user_role` VALUES ('335092a6db20430c8e53f4683153954b', '875f5e0e4f9542bd8de1ca8bb1c76680');
INSERT INTO `sys_user_role` VALUES ('34dff6e97c1c419199b5520e61e6a9f3', 'c1f9322a9d6e4411a28668adda662707');
INSERT INTO `sys_user_role` VALUES ('359fed71c3eb40f1b64a1ca723eff705', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('368cd55c318641a5b4e08dec31735571', '216557f4f6424dcd869eb698bb5764a5');
INSERT INTO `sys_user_role` VALUES ('36a8ee28aa174b50a461268e4aee00c7', '875f5e0e4f9542bd8de1ca8bb1c76680');
INSERT INTO `sys_user_role` VALUES ('373c135689134ddb99f041170d798647', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('392eb0d271824925845c30e4fd29e45d', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('3a39c3fcaa6c4b5388131365620f6320', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('3dd119b180bd4528bb2c3c7e20853418', '145681fb119f4c4491b5fe9692d78765');
INSERT INTO `sys_user_role` VALUES ('3f20e3404f884995b0239544d95e6bf6', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('44dab9d671024caca6f7b9927823cccc', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('4edd8aed02444b08803f40ad63376b94', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('5081d917893c416c8f14ca1f797afe7b', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('5440e3ca098049b68d0866f808a6f894', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('5b31e48dd3e043d5ac8b7b62c388103a', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('5bfc3b65b76b44e282b688a0418fafa6', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('5cd4c87bbafe48cdaf08380b22c4eba0', '145681fb119f4c4491b5fe9692d78765');
INSERT INTO `sys_user_role` VALUES ('60ba0bf7e6b6474286fd6d5f59e0858c', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('619c1b386f1c471cae155781f19957b8', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('6592736ff98442998247b196d136c099', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('66b0089c4ca94b4f991943554bdcc148', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('6d27505cfe354685af4b8d04e38c0c32', '216557f4f6424dcd869eb698bb5764a5');
INSERT INTO `sys_user_role` VALUES ('6ee79f0d2c044ca095c0f597065dbaee', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('75afb8b6dec44f8d8b5f7a2ec17980fa', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('7686c38bd5fb4ed1a3928a771623e14b', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('78b9e2f6f16f4976ab4887c6d0e9cc9e', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('7a49cb3ed6d64dc1a914a1e7113565ba', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('81c6e98760fc42128abca6bdbb6a5dcd', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('87631a0729974cc4bc37f83267b38d69', '145681fb119f4c4491b5fe9692d78765');
INSERT INTO `sys_user_role` VALUES ('88366147de1c4ece82807db41623ed71', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('89574fdc991b4625b0527a1bc4a230d9', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('9277ae270ce448e6ba1ecdb4f5741694', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('9877bd4a548442869127cb2771af97ee', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('9978d4318e9547298d3e2f3ac3e38732', '145681fb119f4c4491b5fe9692d78765');
INSERT INTO `sys_user_role` VALUES ('99976ffa302a4ded819da781f0cf619f', 'c1f9322a9d6e4411a28668adda662707');
INSERT INTO `sys_user_role` VALUES ('9a994f4970b74c6486c1ae23377d92d0', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('9b54690e3ffc47878a4438a3ed457380', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('9fde9eb898c9442b8916ad7ac4870f31', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('a1b87bf7f76f4ce8a12488978f2056b3', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('a45a27d6beb247ad8c6e7a26f02a7bb9', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('a4a64a2ee8a74a109917b9a091fea3d7', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('a607575ea2584fbea6784ede7cb657c6', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('a6d815cdb8fa4c52bd2fe67bd8f94abf', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('afc235e4465744d8a55af60034c17076', 'c1f9322a9d6e4411a28668adda662707');
INSERT INTO `sys_user_role` VALUES ('afe67f52ba464bada67423ef891f1c19', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('b2b963b74e844c54b80bd620176ee3b5', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('b92a14d29771453ebec1fbb205544934', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('ba6bfd1db67e41fea014e4f4e741009e', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('ba6bfd1db67e41fea014e4f4e741009e', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('bef10f7411ca47d8a895003b2e18d9e7', 'a3526302c3d04ab0aa8b3a33879875da');
INSERT INTO `sys_user_role` VALUES ('c0c4311944d94dd1b54fb0d1e0fd3861', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('c7f563f6df0e4b819030e6a52433bb4a', '8d1403fee751441fb8baa84b4d40da1e');
INSERT INTO `sys_user_role` VALUES ('c8658b377df24be084ae82556f186143', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('ca3c5c99f24a4015988ee826a8ecb54f', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('ca650d70a678422ea07b8a22fcb17b8b', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('cc75c99fc93540cbbe52c4b1a958e60e', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('ccf7598c8fa14e19a77e1e020b92c067', '59ff6ba4d4a9447f9e5d975f0176372c');
INSERT INTO `sys_user_role` VALUES ('ce2662f107a14d8b86748e9baa55b6f2', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('d1a53105c47f4aaebf65a24ac716ca8b', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('d1a53105c47f4aaebf65a24ac716ca8b', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('d636d6473a1140b4b1a064d8f275c9f9', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('de0aaec77f734d9b91030388e70a2ca9', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('df4a55051ca643928470dc01b80812a8', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('e257932d9bd347e0a08346504c2d4354', 'beae038596d4469fad72ec7592f40d37');
INSERT INTO `sys_user_role` VALUES ('e52ddf0fe2f84d4fac06afc26a99b98e', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('e76376823d6f42aa8f2ef23a8a79c3e0', 'b103c6ff8c124d01ae2899e674704c49');
INSERT INTO `sys_user_role` VALUES ('ea280ba6713a482ca9db3d5bf0c839ed', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('eba0d98bc50445c5830eab44bef0936c', 'bc2bed504a704c8383777fd4b11c3b74');
INSERT INTO `sys_user_role` VALUES ('f0fc88acea9b4041a61f4cbaf2f0f37b', '875f5e0e4f9542bd8de1ca8bb1c76680');
INSERT INTO `sys_user_role` VALUES ('f1c7a47d9c79470898fa6394a0ae0d9e', '145681fb119f4c4491b5fe9692d78765');
INSERT INTO `sys_user_role` VALUES ('f25231bdd4b94f27b01867e7b830b198', '431aee4570e04c2ca04594a8f581ffa1');
INSERT INTO `sys_user_role` VALUES ('f25231bdd4b94f27b01867e7b830b198', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('f2585b5ea18c4e4b8d344866153825ad', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('f529753fe2f6462c84d7467b48f5f999', 'abfb233b53f049609d02d28d038813cf');
INSERT INTO `sys_user_role` VALUES ('f9e2dc5d942d46158b780ac45554af8b', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('fa03b7f4aa6b46c9ab25bd961dbef80b', 'b60627e29b4c40e1ac7f59550bb62f20');
INSERT INTO `sys_user_role` VALUES ('fa8abc07712b4db1a53c5e5388219320', '59ff6ba4d4a9447f9e5d975f0176372c');

-- ----------------------------
-- Table structure for sys_weixin
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin`;
CREATE TABLE `sys_weixin` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `weixinhao` varchar(128) DEFAULT NULL COMMENT '微信号原始ID',
  `weixinappid` varchar(128) DEFAULT NULL COMMENT '微信Appid',
  `weixinappsecret` varchar(128) DEFAULT NULL COMMENT '微信Appsecret',
  `weixintoken` varchar(64) DEFAULT NULL COMMENT '微信Token',
  `mchid` varchar(64) DEFAULT NULL COMMENT '支付商户ID',
  `apikey` varchar(64) DEFAULT NULL COMMENT '支付ApiKey',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公众号管理';

-- ----------------------------
-- Records of sys_weixin
-- ----------------------------
INSERT INTO `sys_weixin` VALUES ('9e24171e43ad4694bb006836bd8b10fa', '1', '2017-03-13 14:15:46', '1', '2017-04-17 14:02:53', null, '0', 'gh_d9e1b5334930', 'wx4951f46a674d4744', '8b70d01b69696b2bada692602224521e', '111', '', '');

-- ----------------------------
-- Table structure for sys_weixin_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_template`;
CREATE TABLE `sys_weixin_template` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `bh` varchar(64) DEFAULT NULL COMMENT '编号',
  `templateid` varchar(64) DEFAULT NULL COMMENT '模板ID',
  `templatetitle` varchar(128) DEFAULT NULL COMMENT '模板标题',
  `templatecontent` varchar(2000) DEFAULT NULL COMMENT '模板内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统微信模板管理';

-- ----------------------------
-- Records of sys_weixin_template
-- ----------------------------

-- ----------------------------
-- Table structure for test_interface
-- ----------------------------
DROP TABLE IF EXISTS `test_interface`;
CREATE TABLE `test_interface` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `url` varchar(256) DEFAULT NULL COMMENT '请求URL',
  `body` varchar(2048) DEFAULT NULL COMMENT '请求body',
  `successmsg` varchar(2000) DEFAULT NULL COMMENT '成功时返回消息',
  `errormsg` varchar(512) DEFAULT NULL COMMENT '失败时返回消息',
  `remarks` varchar(512) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) CHARACTER SET latin1 DEFAULT '0' COMMENT '删除标记',
  `name` varchar(1024) DEFAULT NULL COMMENT '接口名称',
  `desc` varchar(4000) DEFAULT NULL COMMENT '字段说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接口列表';

-- ----------------------------
-- Records of test_interface
-- ----------------------------
INSERT INTO `test_interface` VALUES ('06038c10352f11e7bed4fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workorder/workOrder/getFwryWorkOrderLists;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'clzt=wcl&status=clypg', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"lists\":[{\"id\":\"e0a4c758f29a4d898defdd1bb86a9089\",\"orderid\":\"20170601152026\",\"lxr\":\"测试\",\"yzdh\":\"18678955835\",\"province\":\"山东省\",\"city\":\"青岛市\",\"county\":\"胶州市\",\"street\":\"\",\"address\":\"测试地址\",\"yyrq\":\"2017-06-01\",\"gclx\":\"dd13a41e2a8743d092c66c51f2935f83\",\"gclxmc\":\"PVC管\",\"status\":\"clypg\",\"remarks\":\"备注\"}]}}', null, 'clzt:处理状态，取值有3种：<br>wcl(未处理);jxz(进行中);ycl(已处理)<br>status:服务类型，取值有2种：<br>clypg(测量安装);syypg(试压服务)', '0', '2.获取工单列表', 'lists下节点说明:<br>id:主键<br> orderid:预约单号<br> lxr:业主姓名<br> yzdh:业主电话<br> province,city,county,address:业主地址<br> yyrq:预约日期<br>gclx:产品类型ID<br>gclxmc:管材类型名称<br> remarks:备注<br>\"lists\":[],返回0条。');
INSERT INTO `test_interface` VALUES ('0d53cc3f320f11e79d68fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/sys/user/entryptText', 'plainText=123456', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"entryptText\":\"417aecb8863a1311db5e5043232dcbd965e1fcd9900ed465167663fd\"}}', '{\"success\":false,\"errorCode\":\"1\",\"msg\":\"参数不能为空\"}', 'errorCode=-1是正常返回，其余均为异常返回。', '1', '签名', 'plainText：明文<br>entryptText：签名');
INSERT INTO `test_interface` VALUES ('191f7c100bc911e7bf9bfcaa14bddcc6', 'get', 'http://122.114.222.168:8080/dispatch/a/androidversion/sysandroidversion/getAppInfo;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax=true&amp;mobileLogin=true&amp;apptype=ios', '', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"获取App信息成功\",\"body\":{\"bbh\":1,\"downloadurl\":\"/pg/upload/2017-05-26-app-release.apk\",\"remarks\":\"版本1\"}}', '', '', '0', '12.获取APP最新版本信息', 'bbh:版本号<br>downloadurl:下载地址<br>remarks:说明');
INSERT INTO `test_interface` VALUES ('2ad5be64360711e7819dfcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workordersyresult/workorderSyResult/saveSyResult;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', '参照WorkorderSyResult类,属性如下：<br>\r\nworkorder.id//工单主键<br>\r\norderid;// 预约单号\r\nyyrq;// 预约日期\r\nlxr;// 客户姓名\r\nyzdh;// 联系电话\r\naddress;// 地址\r\ngclx;// 产品类型\r\nzbkbh;// 质保卡编号\r\nshfwbh;// 售后服务编号\r\nshyj;// 审核意见\r\nbeizhu;// 备注\r\nqtbeizhu;// 其他备注\r\ncfimg;// 厨房\r\nwsjimg;// 卫生间\r\nqtimg;// 其它\r\nhtzlimg;// 合同资料\r\nsyjieguo;// 试压结果\r\nList&lt;WorkOrderSyResultGuanjian&gt; workOrderSyResultGuanjianList;//管件列表<br>\r\n------------------------------------<br>\r\nWorkOrderSyResultGuanjian类属性如下：<br>\r\nString zhonglei;// 种类<br>\r\nInteger shuliang//数量', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"isValid\":true}}', null, '参照WorkorderSyResult类', '0', '6.提交试压服务结果', null);
INSERT INTO `test_interface` VALUES ('335c64a1411111e78c82fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workordersyresult/workorderSyResult/getAgencyGclx;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'gclx=f2defaf40d6740c98ba0012d206bef8d', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"gclxList\":[{\"id\":\"bfff33194b4f45489c1a93f374507522\",\"pdname\":\"螺纹管件\"},{\"id\":\"cb0b7fd23e1b481eb06c4a724784bc95\",\"pdname\":\"分集水器\"}]}}', '', '', '0', '10.获取经销商产品类型', 'gclxList下节点说明<br>id：唯一标识<br>pdname：类型名称');
INSERT INTO `test_interface` VALUES ('3c036f3c3f6f11e78d05fcaa14bddcc6', 'get', 'http://122.114.222.168:8080/dispatch/a/adagency/adAgency/getAgencyAd;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', '', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"lists\":[{\"mainpicurl\":\"/dispatch/userfiles/ba6bfd1db67e41fea014e4f4e741009e/images/adagency/adAgency/2017/05/1470013555124792C578.jpg\",\"contentsPage\":\"http://122.114.222.168:8010/404.aspx?id=a6c9fc683ac041cb83847ace9ebb6852\"}]}}', '', '', '0', '7.获取banner列表', 'mainpicurl:图片地址<br>contentsPage:详情页url');
INSERT INTO `test_interface` VALUES ('48418888f8d7469c8460e7ff48e33673', 'post', 'http://122.114.222.168:8080/dispatch/a/login?__ajax', 'username=j1-fw1&amp;password=123456&amp;mobileLogin=true', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"登录成功!\",\"body\":{\"username\":\"j1-fw1\",\"name\":\"经1-服务1\",\"mobileLogin\":true,\"JSESSIONID\":\"4e37c15af82e44828a4f9d3ae6b5182a\",\"userType\":\"5\",\"skill\":\"claz,sy\"}}', '{\"success\":false,\"errorCode\":\"1\",\"msg\":\"用户或密码错误, 请重试.\",\"body\":{\"username\":\"admin\",\"name\":\"\",\"mobileLogin\":true,\"JSESSIONID\":\"\"}}', '登录成功后返回的JSESSIONID，用于后续请求的输入参数。<br>errorCode=-1是正常返回，其余均为异常返回.', '0', '1.用户登录', 'userType:用户类型<br>5=经销商服务人员<br>限定只能服务人员登录.');
INSERT INTO `test_interface` VALUES ('592817fe321011e79d68fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/sys/user/validateText', 'plainText=123456&text=8765e7771e378260fca6efcb908b6745a3f8244aae0808f5b53b3290', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"isValid\":true}}', '{\"success\":false,\"errorCode\":\"1\",\"msg\":\"参数不能为空\"}', 'errorCode=-1是正常返回，其余均为异常返回。', '1', '验签', 'plainText:明文<br>text:签名');
INSERT INTO `test_interface` VALUES ('5ed6916a54b94acd899373f7d5ec2912', 'post', 'http://122.114.222.168:8080/dispatch/a/workorder/workOrder/appImageUpload;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'file', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"imgurl\":\"|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/app/con_banner.jpg|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/app/11.jpg|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/app/汉字12.jpg\"}}', '', '请使用multipart类型', '0', '4.上传图片', 'imgurl:图片服务器路径<br>可上传多张图片<br>key=files.');
INSERT INTO `test_interface` VALUES ('7d85ddcc35fb11e7819dfcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workorderclazresult/workOrderClazResult/saveClazResult;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', '参照WorkOrderClazResult类,属性如下：<br>\r\nworkorder.id//工单主键<br>\r\norderid;//预约单号<br>\r\nyyrq;//预约日期<br>\r\nlxr;//客户姓名<br>\r\nyzdh;//联系电话<br>\r\naddress;//地址<br>\r\ngclx;//产品类型<br>\r\nzbkbh;//质保卡编号<br>\r\nshfwbh;//售后服务编号<br>\r\nshyj;//审核意见<br>\r\nbeizhu;//备注<br>\r\ncfimg;//厨房<br>\r\nwsjimg;//卫生间<br>\r\nqtimg;//其它<br>\r\nhtzlimg;//合同资料<br>\r\nList&lt;WorkOrderClazResultGuanjian&gt;workOrderClazResultGuanjianList;//管件列表<br>\r\n------------------------------------<br>\r\nWorkOrderClazResultGuanjian类属性如下：<br>\r\nString zhonglei;// 种类<br>\r\nInteger shuliang//数量', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{}} ', null, '参照WorkOrderClazResult类', '0', '5.提交测量安装结果', null);
INSERT INTO `test_interface` VALUES ('8825da7c35eb11e7819dfcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workorder/workOrder/assertWorkOrder;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'id=17a08003ee7247aca5c403dee9f44e58', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{}}', null, 'errorCode=-1是正常返回，其余均为异常返回。 ', '0', '3.工单确认', null);
INSERT INTO `test_interface` VALUES ('af79dec2a3134632a8b6f1b363c9aba9', 'get', 'http://122.114.222.168:8080/dispatch/a/shanghudeptuser/shanghudeptuser/getDeptUserInfo;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax=true&amp;mobileLogin=true', '', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"获取个人信息成功!\",\"body\":{\"name\":\"新1北京运维巡检1\",\"loginName\":\"x1-bj-yw-xj1\",\"email\":\"\",\"phone\":\"\",\"mobile\":\"\",\"companyname\":\"新商户1\",\"departname\":\"运维部\",\"banzuname\":\"新1北京运维班组1\",\"userType\":\"3\",\"remarks\":\"新1北京运维巡检1\",\"photo\":\"/check/userfiles/fa03b7f4aa6b46c9ab25bd961dbef80b/images/20170301144227.jpg\"}}', '{\"success\":false,\"errorCode\":\"9\",\"msg\":\"没有登录!\",\"body\":{}}', 'JSESSIONID是登录成功后返回的JSESSIONID', '1', '2.获取登录用户信息', 'userType:用户类型，2=部门负责人，3=巡检人员<br>companyname：公司名称<br/>departname：部门名称<br/>banzuname：班组名称<br>photo:头像服务端路径');
INSERT INTO `test_interface` VALUES ('b28321fa3f8611e7be78fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workorderclazresult/workOrderClazResult/saveClazResultToSy;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', '同【5.提交测量安装结果】参数', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{}} ', '', '', '0', '8.测量安装直接到试压', '');
INSERT INTO `test_interface` VALUES ('b7d1405e410c11e78c82fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workorderclazresult/workOrderClazResult/getClazResultByOrderid;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'workorder.id=aae35a890e7148c789cf0873dc340d0f', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"result\":{\"id\":\"f4abe4c47a36426494287ae71125c75d\",\"workorderid\":\"2b9fe085ce4a4c628facfe349454cab9\",\"orderid\":\"20170523183937\",\"yyrq\":\"2017-05-31\",\"lxr\":\"毛东东\",\"yzdh\":\"\",\"address\":\"济南路\",\"gclx\":\"测试类型\",\"zbkbh\":\"123456\",\"shfwbh\":\"123456789\",\"shyj\":\"测试一下\",\"beizhu\":\"测试一下\",\"cfimg\":\"|/dispatch/userfiles/2d000495f4854b60a0e946187439d3f2/images/app/1495600325736linshi.jpg|/dispatch/userfiles/2d000495f4854b60a0e946187439d3f2/images/app/1495600332187linshi.jpg\",\"wsjimg\":\"|/dispatch/userfiles/2d000495f4854b60a0e946187439d3f2/images/app/1495600337005linshi.jpg\",\"qtimg\":\"\",\"htzlimg\":\"\"}}}', '', '', '0', '9.测量安装已完成详情', 'result下节点说明：<br>orderid：预约单号<br>yyrq：预约日期<br>lxr：客户姓名<br>yzdh：联系电话<br>address；地址<br>gclx；产品类型<br>zbkbh：质保卡编号<br>shfwbh；售后服务编号<br>shyj：审核意见<br>beizhu；备注<br>cfimg：厨房<br>wsjimg；卫生间<br>qtimg：其它<br>htzlimg：合同资料');
INSERT INTO `test_interface` VALUES ('f4974d4d412311e78c82fcaa14bddcc6', 'post', 'http://122.114.222.168:8080/dispatch/a/workordersyresult/workorderSyResult/getSyResultByOrderid;JSESSIONID=21a65e45a78f415c9c21f9376df9c1d3?__ajax', 'workorder.id=5f41fde31eb24c59bd4edff62ec695e4', '{\"success\":true,\"errorCode\":\"-1\",\"msg\":\"操作成功\",\"body\":{\"result\":{\"id\":\"ae756acd022e4d76bbe41b4beae93900\",\"workorderid\":\"5f41fde31eb24c59bd4edff62ec695e4\",\"orderid\":\"20170523183154\",\"yyrq\":\"2017-05-25\",\"lxr\":\"王东东\",\"yzdh\":\"15610878566\",\"address\":\"香港路\",\"gclx\":\"dd13a41e2a8743d092c66c51f2935f83\",\"zbkbh\":\"2222222\",\"shfwbh\":\"33333333\",\"shyj\":\"审核通过\",\"beizhu\":\"备注\",\"qtbeizhu\":\"其他备注\",\"cfimg\":\"|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/workordersyresult/workorderSyResult/2017/05/11.jpg\",\"wsjimg\":\"|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/workordersyresult/workorderSyResult/2017/05/1490680754190415p36C.jpg\",\"qtimg\":\"|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/workordersyresult/workorderSyResult/2017/05/1470013555124792C578.jpg\",\"htzlimg\":\"|/pg/userfiles/88366147de1c4ece82807db41623ed71/images/workordersyresult/workorderSyResult/2017/05/con_banner.jpg\",\"syjieguo\":\"试压正常\",\"workOrderSyResultGuanjianList\":[{\"zhonglei\":\"cb0b7fd23e1b481eb06c4a724784bc95\",\"shuliang\":15},{\"zhonglei\":\"bfff33194b4f45489c1a93f374507522\",\"shuliang\":12}]}}}', '', '', '0', '11.试压已完成详情', 'result下节点说明：<br>orderid: 预约单号<br>yyrq: 预约日期<br>lxr: 客户姓名<br>yzdh: 联系电话<br>address: 地址<br>gclx: 产品类型<br>zbkbh: 质保卡编号<br>shfwbh: 售后服务编号<br>shyj: 审核意见<br>beizhu: 备注<br>qtbeizhu: 其他备注<br>cfimg: 厨房<br>wsjimg: 卫生间<br>qtimg: 其它<br>htzlimg: 合同资料<br>syjieguo: 试压结果<br>workOrderSyResultGuanjianList：产品类型列表<br>zhonglei：种类<br>shuliang：数量');
INSERT INTO `test_interface` VALUES ('fcd8bddd2f2c4f5d9e333cb014f1938b', 'get', 'http://122.114.222.168:8080/dispatch/a/logout;JSESSIONID=b6b486a8919e4fc196358e10b6a82a2b?__ajax=true', '', '1  {&quot;success&quot;:&quot;1&quot;,&quot;msg&quot;:&quot;退出成功&quot;}', '', '', '0', '退出登录', null);

-- ----------------------------
-- Table structure for tranc_record
-- ----------------------------
DROP TABLE IF EXISTS `tranc_record`;
CREATE TABLE `tranc_record` (
  `id` varchar(64) NOT NULL,
  `jylx` varchar(200) DEFAULT NULL COMMENT '交易类型',
  `fkfid` varchar(64) DEFAULT NULL COMMENT '付款方ID',
  `fkfname` varchar(200) DEFAULT NULL COMMENT '付款方',
  `skfid` varchar(64) DEFAULT NULL COMMENT '收款方ID',
  `skfname` varchar(200) DEFAULT NULL COMMENT '收款方',
  `jine` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `orderid` varchar(64) DEFAULT NULL COMMENT '订单ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易流水';

-- ----------------------------
-- Records of tranc_record
-- ----------------------------
INSERT INTO `tranc_record` VALUES ('', '3', '220432dec7c84e07ac3a7a50f6a27b13', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tranc_record` VALUES ('16982d47031741198b145becae7dcb27', '0', '04ef2026e29749c5b456948f0b374c64', '馆主', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '200.00', '15aab5a0d18d48cd8fdfc3fcdf20c266', '1', '2017-10-17 11:49:17', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('332a6456887c4a368cc71c3838a493be', '0', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '9ffd57fc9d084eb9b8d13af536b0d957', '张浩宇', '200.00', '4127a5ceb078494bbc392c35c9b768b9', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('343a970a8cc14cd7b6d809807ed0f379', '0', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', 'afc235e4465744d8a55af60034c17076', '徐志摩', '200.00', 'ce744b24949d4845bcbc23c7fa2295c4', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('3904194796f443cf9dec6f92c425b231', '0', '34c18779a80349c3a7090886a8dc83ac', '库林', '9ffd57fc9d084eb9b8d13af536b0d957', '张浩宇', '200.00', '34c18779a80349c3a7090886a8dc83ac', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('4eaf197b4faa4293a15168a8c880c5d9', '0', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '9ffd57fc9d084eb9b8d13af536b0d957', '张浩宇', '200.00', '3fb6f2f82e5548dda1f3fb75c90a802b', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('5ed5561ee1e14817aedb141c89e9d03b', '0', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', 'afc235e4465744d8a55af60034c17076', '徐志摩', '200.00', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('71c67f3a6fe548229b36ff349ce288d7', '2', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '7d7e671d66674a2f9027bf142e9e41db', '馆主', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('7896ac860faf46b1be739c4f7dc2f810', '2', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '9ffd57fc9d084eb9b8d13af536b0d957', '张浩宇', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('84ab268de355464fbf2a8e1a6a539c26', '2', '3f7266adb941467b93b25406004a819c', '比克', '9ffd57fc9d084eb9b8d13af536b0d957', '张浩宇', '200.00', '3f7266adb941467b93b25406004a819c', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('87d2e96295854d138b4046378bbbf1f7', '3', '34c18779a80349c3a7090886a8dc83ac', '库林', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('9f87047355804703b65290c7536b3440', '3', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', 'afc235e4465744d8a55af60034c17076', '徐志摩', '200.00', 'ec86333c54b14c6ea739a57e5589bf74', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('a00f3969b2eb4decbd742cb8276f6947', '2', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', 'afc235e4465744d8a55af60034c17076', '徐志摩', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('a08499f1452f4abab1d8f6f2dba93dc4', '3', 'wangdachui', '王大锤', '7d7e671d66674a2f9027bf142e9e41db', '馆主', '200.02', null, '1', '2017-10-17 13:18:19', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('b0ab01f31ec74f1f9e6ccd07230becd4', '2', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '200.00', '1e827982e2af4a648e2fa6bbc69374c5', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('b2ee6f8363b24262bce957393983345c', '3', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '200.00', '2d20f1f3a08b46dcb369c0c5cd0d2aad', null, '2017-10-19 11:45:28', null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('d41c218a8a5a4419814a316886d863fe', '3', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('f781fbc0881a4a9cb6a956697b1f6497', '2', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '9ffd57fc9d084eb9b8d13af536b0d957', '张浩宇', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('fd6979b6aad04fd292661b11d65b7c73', '2', '4127a5ceb078494bbc392c35c9b768b9', '张大春', 'afc235e4465744d8a55af60034c17076', '徐志摩', null, null, null, null, null, null, null, '0');
INSERT INTO `tranc_record` VALUES ('ff5b35379e2946648f41e72ea032f50d', '3', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '34dff6e97c1c419199b5520e61e6a9f3', '王小明', '200.00', '15b3376c6aeb4e58b66892ec526db037', null, '2017-10-19 11:45:28', null, null, null, '0');

-- ----------------------------
-- Table structure for withdraw
-- ----------------------------
DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE `withdraw` (
  `id` varchar(64) NOT NULL,
  `sqrid` varchar(64) DEFAULT NULL COMMENT '申请人ID',
  `sqrname` varchar(64) DEFAULT NULL COMMENT '申请人',
  `jine` decimal(10,2) DEFAULT NULL COMMENT '提现金额',
  `shzt` varchar(64) DEFAULT NULL COMMENT '审核状态',
  `shrid` varchar(64) DEFAULT NULL COMMENT '审核人ID',
  `shrname` varchar(64) DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(30) DEFAULT NULL COMMENT '审核时间',
  `shbtgyy` varchar(500) DEFAULT NULL COMMENT '审核不通过原因',
  `lqzt` varchar(64) DEFAULT NULL COMMENT '领取状态',
  `lqsj` varchar(30) DEFAULT NULL COMMENT '领取时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdraw
-- ----------------------------
INSERT INTO `withdraw` VALUES ('258a9370e04f4533b6eb84220d48fb15', '15b3376c6aeb4e58b66892ec526db037', '比鲁斯', '200.00', '1', '1', '超级管理员', '2017-10-25 17:25:43', '', '1', null, null, '2017-10-20 12:11:39', '1', '2017-10-25 17:25:44', null, '0');
INSERT INTO `withdraw` VALUES ('268cd5efd7f8480ebe88e7a7222710f0', 'ce744b24949d4845bcbc23c7fa2295c4', '王大锤', '400.00', '2', '1', '超级管理员', '2017-10-25 17:25:57', '不符合条件', '1', null, null, '2017-10-20 12:11:39', '1', '2017-10-25 17:25:58', null, '0');
INSERT INTO `withdraw` VALUES ('2e293292630842f5b797d7aed44d9662', '34c18779a80349c3a7090886a8dc83ac', '库林', '200.00', '1', '1', '超级管理员', '2017-10-25 17:26:10', '', '0', '2017-10-20 12:11:39', '2017-10-20 12:11:39', '2017-10-20 12:11:39', '1', '2017-10-25 17:26:10', null, '0');
INSERT INTO `withdraw` VALUES ('4adde745fcf1435fa8e97b4e1032221a', '3fb6f2f82e5548dda1f3fb75c90a802b', '哈哈', '400.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('6d24add28a5f43abbcc3cf443c5b05e5', '2d20f1f3a08b46dcb369c0c5cd0d2aad', '武天', '200.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('ab116fa6f58f4c6da4431b1535f9cfcf', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '400.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('ad9e7c1b545e42e7860f80b6b2301cbe', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '300.00', '0', null, null, null, null, '1', null, '1', '2017-10-17 15:25:56', '1', '2017-10-17 16:21:25', null, '0');
INSERT INTO `withdraw` VALUES ('c78c723bfc01490d9b9e5e542ffa169a', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '200.00', '0', null, null, null, null, '1', null, '1', '2017-10-17 14:20:28', '1', '2017-10-17 16:21:42', null, '0');
INSERT INTO `withdraw` VALUES ('cfdf4e72f6de4bfdb4cd7a0d71a313b9', '1e827982e2af4a648e2fa6bbc69374c5', '琪琪', '200.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('d0301107271d4916b10ec08621cbdfea', 'a4b6c8d5bc1f4ba2b70996e1e40ca4d2', '维斯', '400.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('d8f35cb9fa794a2abdfb0f3ed587f4f9', 'ec86333c54b14c6ea739a57e5589bf74', '孙悟空', '400.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('e5c8238ce5f74c699a8f8aec82ce2a6a', '3f7266adb941467b93b25406004a819c', '比克', '400.00', '0', null, null, null, null, '1', null, null, '2017-10-20 12:11:39', null, null, null, '0');
INSERT INTO `withdraw` VALUES ('fa83dd9317584464965c5fa75fcc837e', '4127a5ceb078494bbc392c35c9b768b9', '张大春', '100.00', '0', null, null, null, null, '1', null, '1', '2017-10-17 14:19:47', '1', '2017-10-17 16:11:59', null, '0');

-- ----------------------------
-- Event structure for event_task_generation
-- ----------------------------
DROP EVENT IF EXISTS `event_task_generation`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event_task_generation` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-11 00:35:00' ON COMPLETION PRESERVE ENABLE DO CALL generate_task()
;;
DELIMITER ;
