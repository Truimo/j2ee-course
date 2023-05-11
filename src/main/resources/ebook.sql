/*
 Navicat Premium Data Transfer

 Source Server         : 轻量级应用服务器
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : bijiahao.top:3306
 Source Schema         : ebook

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 17/01/2022 14:29:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avatar
-- ----------------------------
DROP TABLE IF EXISTS `avatar`;
CREATE TABLE `avatar`  (
  `id` smallint(0) NOT NULL COMMENT '头像id',
  `avatar_txt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像名字',
  `avatar_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avatar
-- ----------------------------
INSERT INTO `avatar` VALUES (1, '040601', 'resources/images/avatars/040601.jpg');
INSERT INTO `avatar` VALUES (2, '040602', 'resources/images/avatars/040602.jpg');
INSERT INTO `avatar` VALUES (3, '040603', 'resources/images/avatars/040603.jpg');
INSERT INTO `avatar` VALUES (4, '040604', 'resources/images/avatars/040604.jpg');
INSERT INTO `avatar` VALUES (5, '040605', 'resources/images/avatars/040605.jpg');
INSERT INTO `avatar` VALUES (6, '040606', 'resources/images/avatars/040606.jpg');
INSERT INTO `avatar` VALUES (7, '040607', 'resources/images/avatars/040607.jpg');
INSERT INTO `avatar` VALUES (8, '040608', 'resources/images/avatars/040608.jpg');
INSERT INTO `avatar` VALUES (9, '040609', 'resources/images/avatars/040609.jpg');
INSERT INTO `avatar` VALUES (10, '040610', 'resources/images/avatars/040610.jpg');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint(0) NOT NULL COMMENT '书籍编号',
  `book_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍的标题',
  `book_author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍作者',
  `book_summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '书籍简评',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '类型id',
  `download_times` int(0) NULL DEFAULT NULL COMMENT '下载时间',
  `book_pubYear` date NULL DEFAULT NULL COMMENT '书籍发布时间',
  `book_file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍路径',
  `book_cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍封面路径',
  `book_format` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍格式如txt，pdf等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (11211001211103991, '狼王梦', '沈石溪', '这是一本狼王梦', 11, 1, '2021-10-01', 'D:/lianshu/ebooks/经典文学/现代文学/狼王梦.txt', 'D:/lianshu/bookCovers/经典文学/现代文学/狼王梦.jpg', 'txt');
INSERT INTO `book` VALUES (11211101211103106, '最后一头战象', '沈石溪', '《最后一头战象》为“动物小说大王沈石溪品藏书系”中的一部中篇动物小说，作者为沈石溪。2008年11月由浙江少年儿童出版社出版，属于儿童小说。\r\n动物小说之所以比其他类型的小说更有吸引力，是因为这个题材最容易让人识破人类文化的外壳和文明社会种种虚伪的表象，可以毫无遮掩地直接表现丑陋与美丽融于一体的原生态的生命。', 11, 2, '2021-11-01', 'D:/lianshu/ebooks/经典文学/现代文学/最后一头战象.txt', 'D:/lianshu/bookCovers/经典文学/现代文学/最后一头战象.jpg', 'txt');
INSERT INTO `book` VALUES (11211101211103708, '斑羚飞渡', '沈石溪', '《斑羚飞渡》沈石溪创作的小说，选自其小说集《和乌鸦做邻居》。\r\n该小说虚构描写的是一群被逼至绝境的斑羚，为了赢得种群的生存机会，用牺牲一半挽救另一半的方法摆脱困境的壮举。', 11, 1, '2021-11-01', 'D:/lianshu/ebooks/经典文学/现代文学/斑羚飞渡.txt', 'D:/lianshu/bookCovers/经典文学/现代文学/斑羚飞渡.jpg', 'txt');
INSERT INTO `book` VALUES (12211101211103496, '孟子', '孟子', '这是一本孟子', 12, 0, '2021-11-01', 'D:/lianshu/ebooks/经典文学/古典文学/孟子.txt', 'D:/lianshu/bookCovers/经典文学/古典文学/孟子.jpg', 'txt');
INSERT INTO `book` VALUES (13210301211103335, '伊索寓言', '伊索', '这是一本伊索寓言', 13, 0, '2021-03-01', 'D:/lianshu/ebooks/经典文学/国外文学/伊索寓言.txt', 'D:/lianshu/bookCovers/经典文学/国外文学/伊索寓言.jpg', 'txt');
INSERT INTO `book` VALUES (14211101211103626, '红星照耀中国', '[美] 埃德加·斯诺', '《红星照耀中国》（Red Star Over China），曾易名为《西行漫记》，是美国记者埃德加·斯诺所著的纪实文学作品，于1937年10月在伦敦首次出版，于1938年2月首次出版中文版 。\r\n该作品真实记录了埃德加·斯诺自1936年6月至1936年10月在中国西北革命根据地进行实地采访的所见所闻，报道了中国和中国工农红军以及许多红军领袖、红军将领的情况 。从多个方面展示中国共产党为民族解放而艰苦奋斗和牺牲奉献的精神，瓦解了种种歪曲、丑化共产党的谣言   。斯诺通过对领导人和普通民众的观察和描述，把枯燥的红区党组织、各种文件、会议等内容转变为让读者读起来感到亲切生动的文字 ', 14, 0, '2021-11-01', 'D:/lianshu/ebooks/经典文学/纪实文学/红星照耀中国.txt', 'D:/lianshu/bookCovers/经典文学/纪实文学/红星照耀中国.jpg', 'txt');

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `id` int(0) NOT NULL COMMENT '书籍类型id',
  `book_large_type` int(0) NOT NULL COMMENT '书籍类型',
  `book_small_type` int(0) NOT NULL COMMENT '书籍详细类型',
  `large_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍类型名称',
  `small_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书籍详细类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (11, 1, 1, '经典文学', '现代文学');
INSERT INTO `book_type` VALUES (12, 1, 2, '经典文学', '古典文学');
INSERT INTO `book_type` VALUES (13, 1, 3, '经典文学', '国外文学');
INSERT INTO `book_type` VALUES (14, 1, 4, '经典文学', '纪实文学');
INSERT INTO `book_type` VALUES (15, 1, 5, '经典文学', '诗词歌赋');
INSERT INTO `book_type` VALUES (21, 2, 1, '通俗小说', '武侠玄幻');
INSERT INTO `book_type` VALUES (22, 2, 2, '通俗小说', '青春言情');
INSERT INTO `book_type` VALUES (23, 2, 3, '通俗小说', '悬疑推理');
INSERT INTO `book_type` VALUES (24, 2, 4, '通俗小说', '历史军事');
INSERT INTO `book_type` VALUES (25, 2, 5, '通俗小说', '职场生活');
INSERT INTO `book_type` VALUES (31, 3, 1, '计算机类', '编程语言');
INSERT INTO `book_type` VALUES (32, 3, 2, '计算机类', '数据库');
INSERT INTO `book_type` VALUES (33, 3, 3, '计算机类', '人工智能');
INSERT INTO `book_type` VALUES (34, 3, 4, '计算机类', '移动开发');
INSERT INTO `book_type` VALUES (35, 3, 5, '计算机类', '图形图像');
INSERT INTO `book_type` VALUES (41, 4, 1, '杂志期刊', '科学技术');
INSERT INTO `book_type` VALUES (42, 4, 2, '杂志期刊', '人文艺术');
INSERT INTO `book_type` VALUES (43, 4, 3, '杂志期刊', '政治军事');
INSERT INTO `book_type` VALUES (44, 4, 4, '杂志期刊', '经济管理');
INSERT INTO `book_type` VALUES (45, 4, 5, '杂志期刊', '娱乐休闲');

-- ----------------------------
-- Table structure for contribution
-- ----------------------------
DROP TABLE IF EXISTS `contribution`;
CREATE TABLE `contribution`  (
  `id` smallint(0) NOT NULL COMMENT '系统自增主键',
  `level_txt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员等级名称',
  `lowerLimit` int(0) NULL DEFAULT NULL COMMENT '最小等级限制',
  `upperLimit` int(0) NULL DEFAULT NULL COMMENT '最大等级限制',
  `level_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contribution
-- ----------------------------
INSERT INTO `contribution` VALUES (1, '普通会员', 0, 20, '/resources/images/level/level1.jpg');
INSERT INTO `contribution` VALUES (2, '白银会员', 21, 50, '/resources/images/level/level2.jpg');
INSERT INTO `contribution` VALUES (3, '黄金会员', 51, 100, '/resources/images/level/level3.jpg');
INSERT INTO `contribution` VALUES (4, '铂金会员', 101, 200, '/resources/images/level/level4.jpg');
INSERT INTO `contribution` VALUES (5, '钻石会员', 201, 999999, '/resources/images/level/level5.jpg');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '系统自增主键',
  `loginedUser` bigint(0) NULL DEFAULT NULL COMMENT '登录的用户id',
  `contact` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `suggestion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建议',
  `status` int(0) NOT NULL COMMENT '建议状态',
  `postTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '建议发布日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (2, 1, '', '真棒', 1, '2021-12-23 06:43:25');
INSERT INTO `feedback` VALUES (3, 1, '', '上新', 1, '2021-12-23 05:43:32');
INSERT INTO `feedback` VALUES (6, 1, '1531234567', '请将首页完善', 0, '2022-01-03 06:43:34');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '系统自增主键',
  `uploader` bigint(0) NOT NULL COMMENT '上传者id',
  `uploadedBook` bigint(0) NOT NULL COMMENT '上传书籍编号',
  `uploadedDate` date NULL DEFAULT NULL COMMENT '上传日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (3, 1, 11211001211103991, '2021-11-03');
INSERT INTO `upload` VALUES (4, 1, 12211101211103496, '2021-11-03');
INSERT INTO `upload` VALUES (5, 1, 13210301211103335, '2021-11-03');
INSERT INTO `upload` VALUES (6, 1, 14211101211103626, '2021-11-03');
INSERT INTO `upload` VALUES (7, 1, 11211101211103708, '2021-11-03');
INSERT INTO `upload` VALUES (8, 1, 11211101211103106, '2021-11-03');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '系统自增主键',
  `userCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户标识名',
  `userPassword` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件',
  `avatarNum` smallint(0) NULL DEFAULT NULL COMMENT '头像编号',
  `contribution` int(0) NULL DEFAULT NULL COMMENT '贡献度',
  `creationDate` date NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'abc123', 'admin', '', 5, 19, '2021-11-02');
INSERT INTO `user` VALUES (5, 'admin1', '123123', '测试昵称1', '', 3, 0, '2021-11-04');
INSERT INTO `user` VALUES (6, 'zhou', '1234', 'å¨', '', 3, 0, '2021-11-04');
INSERT INTO `user` VALUES (7, 'laobi', '2865gfv79349', 'admin1', '2500299292@qq.com', 10, 0, '2021-12-27');

SET FOREIGN_KEY_CHECKS = 1;
