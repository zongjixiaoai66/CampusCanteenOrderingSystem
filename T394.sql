/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t394`;
CREATE DATABASE IF NOT EXISTS `t394` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t394`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(2, 3, '收货人2', '17703786902', '地址2', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(3, 1, '收货人3', '17703786903', '地址3', 2, '2023-03-21 08:07:41', '2023-03-21 08:58:40', '2023-03-21 08:07:41'),
	(4, 2, '收货人4', '17703786904', '地址4', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(6, 3, '收货人6', '17703786906', '地址6', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(7, 2, '收货人7', '17703786907', '地址7', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(8, 2, '收货人8', '17703786908', '地址8', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(9, 2, '收货人9', '17703786909', '地址9', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(10, 3, '收货人10', '17703786910', '地址10', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(11, 2, '收货人11', '17703786911', '地址11', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(12, 3, '收货人12', '17703786912', '地址12', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(13, 1, '收货人13', '17703786913', '地址13', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(14, 3, '收货人14', '17703786914', '地址14', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(38, 'shangjia_types', '商家类型', 1, '商家类型1', NULL, NULL, '2023-03-21 08:07:18'),
	(39, 'shangjia_types', '商家类型', 2, '商家类型2', NULL, NULL, '2023-03-21 08:07:18'),
	(40, 'shangjia_types', '商家类型', 3, '商家类型3', NULL, NULL, '2023-03-21 08:07:18'),
	(41, 'shitang_types', '食堂类型', 1, '食堂类型1', NULL, NULL, '2023-03-21 08:07:19'),
	(42, 'shitang_types', '食堂类型', 2, '食堂类型2', NULL, NULL, '2023-03-21 08:07:19'),
	(43, 'shitang_types', '食堂类型', 3, '食堂类型3', NULL, NULL, '2023-03-21 08:07:19'),
	(44, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-21 08:07:19'),
	(45, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-21 08:07:19'),
	(46, 'meishi_types', '美食类型', 1, '美食类型1', NULL, NULL, '2023-03-21 08:07:19'),
	(47, 'meishi_types', '美食类型', 2, '美食类型2', NULL, NULL, '2023-03-21 08:07:19'),
	(48, 'meishi_types', '美食类型', 3, '美食类型3', NULL, NULL, '2023-03-21 08:07:19'),
	(49, 'meishi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-21 08:07:19'),
	(50, 'meishi_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-03-21 08:07:19'),
	(51, 'meishi_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-03-21 08:07:19'),
	(52, 'meishi_order_types', '订单类型', 103, '已出餐', NULL, NULL, '2023-03-21 08:07:19'),
	(53, 'meishi_order_types', '订单类型', 104, '已取餐', NULL, NULL, '2023-03-21 08:07:19'),
	(54, 'meishi_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-03-21 08:07:19'),
	(55, 'meishi_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-03-21 08:07:19'),
	(56, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-03-21 08:07:19'),
	(57, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-03-21 08:07:19'),
	(58, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-21 08:07:19'),
	(59, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-21 08:07:19'),
	(60, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-21 08:07:19'),
	(61, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-21 08:07:19'),
	(62, 'status_types', '账号状态', 1, '正常', NULL, NULL, '2023-03-21 08:07:19'),
	(63, 'status_types', '账号状态', 2, '冻结', NULL, NULL, '2023-03-21 08:07:19'),
	(64, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-21 08:07:19'),
	(65, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-21 08:07:19');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `shangjia_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, '发布内容1', 304, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 410, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(3, '帖子标题3', 2, NULL, NULL, '发布内容3', 387, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(4, '帖子标题4', 1, NULL, NULL, '发布内容4', 353, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', 392, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(6, '帖子标题6', 1, NULL, NULL, '发布内容6', 337, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(7, '帖子标题7', 3, NULL, NULL, '发布内容7', 92, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(8, '帖子标题8', 3, NULL, NULL, '发布内容8', 50, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(9, '帖子标题9', 3, NULL, NULL, '发布内容9', 439, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(10, '帖子标题10', 3, NULL, NULL, '发布内容10', 38, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(11, '帖子标题11', 2, NULL, NULL, '发布内容11', 206, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(12, '帖子标题12', 3, NULL, NULL, '发布内容12', 301, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(13, '帖子标题13', 1, NULL, NULL, '发布内容13', 315, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(14, '帖子标题14', 1, NULL, NULL, '发布内容14', 54, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(15, NULL, 1, NULL, NULL, '12312312', 14, 2, '2023-03-21 08:58:19', NULL, '2023-03-21 08:58:19'),
	(16, NULL, NULL, 2, NULL, '12312312', 14, 2, '2023-03-21 09:05:00', NULL, '2023-03-21 09:05:00'),
	(17, NULL, NULL, NULL, 1, '123123', 14, 2, '2023-03-21 09:05:38', NULL, '2023-03-21 09:05:38'),
	(18, NULL, 1, NULL, NULL, '666', 14, 2, '2024-08-13 07:14:45', NULL, '2024-08-13 07:14:45');

DROP TABLE IF EXISTS `meishi`;
CREATE TABLE IF NOT EXISTS `meishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '美食编号',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `shitang_id` int DEFAULT NULL COMMENT '食堂',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `meishi_types` int DEFAULT NULL COMMENT '美食类型 Search111',
  `meishi_kucun_number` int DEFAULT NULL COMMENT '美食库存',
  `meishi_old_money` decimal(10,2) DEFAULT NULL COMMENT '美食原价 ',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `meishi_clicknum` int DEFAULT NULL COMMENT '美食热度',
  `meishi_content` longtext COMMENT '美食介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='美食';

DELETE FROM `meishi`;
INSERT INTO `meishi` (`id`, `meishi_uuid_number`, `meishi_name`, `shangjia_id`, `shitang_id`, `meishi_photo`, `meishi_types`, `meishi_kucun_number`, `meishi_old_money`, `meishi_new_money`, `meishi_clicknum`, `meishi_content`, `shangxia_types`, `meishi_delete`, `insert_time`, `create_time`) VALUES
	(1, '1679386061366', '美食名称1', 3, 1, 'upload/meishi1.jpg', 1, 101, 738.12, 137.25, 215, '美食介绍1', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(2, '1679386061361', '美食名称2', 1, 2, 'upload/meishi2.jpg', 1, 102, 851.78, 48.82, 471, '美食介绍2', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(3, '1679386061405', '美食名称3', 2, 3, 'upload/meishi3.jpg', 1, 103, 802.05, 119.74, 114, '美食介绍3', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(4, '1679386061317', '美食名称4', 1, 4, 'upload/meishi4.jpg', 2, 105, 558.49, 477.74, 256, '美食介绍4', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(5, '1679386061405', '美食名称5', 3, 5, 'upload/meishi5.jpg', 3, 105, 717.78, 137.94, 91, '美食介绍5', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(6, '1679386061389', '美食名称6', 3, 6, 'upload/meishi6.jpg', 3, 105, 968.53, 158.81, 445, '美食介绍6', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(7, '1679386061363', '美食名称7', 1, 7, 'upload/meishi7.jpg', 2, 107, 711.05, 477.02, 89, '美食介绍7', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(8, '1679386061360', '美食名称8', 2, 8, 'upload/meishi8.jpg', 1, 108, 617.31, 87.47, 363, '美食介绍8', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(9, '1679386061325', '美食名称9', 3, 9, 'upload/meishi9.jpg', 3, 109, 529.92, 281.47, 43, '美食介绍9', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(10, '1679386061323', '美食名称10', 2, 10, 'upload/meishi10.jpg', 2, 1010, 560.37, 418.24, 259, '美食介绍10', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(11, '1679386061327', '美食名称11', 3, 11, 'upload/meishi11.jpg', 2, 1011, 676.54, 18.82, 406, '美食介绍11', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(12, '1679386061346', '美食名称12', 2, 12, 'upload/meishi12.jpg', 2, 1012, 610.15, 356.91, 161, '美食介绍12', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(13, '1679386061318', '美食名称13', 2, 13, 'upload/meishi13.jpg', 2, 1012, 695.42, 339.03, 99, '美食介绍13', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(14, '1679386061353', '美食名称14', 2, 14, 'upload/meishi14.jpg', 3, 1013, 746.24, 70.83, 194, '美食介绍14', 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(15, '1679389222742', '123', 1, 13, '/upload/1679389236205.jpeg', 2, 123, 123.00, 12.00, 1, '<p>123</p>', 1, 2, '2023-03-21 09:00:41', '2023-03-21 09:00:41');

DROP TABLE IF EXISTS `meishi_collection`;
CREATE TABLE IF NOT EXISTS `meishi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='美食收藏';

DELETE FROM `meishi_collection`;
INSERT INTO `meishi_collection` (`id`, `meishi_id`, `yonghu_id`, `meishi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(3, 3, 2, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(5, 5, 2, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(6, 6, 3, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(7, 7, 3, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(8, 8, 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(9, 9, 3, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(10, 10, 3, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(11, 11, 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(13, 13, 1, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(14, 14, 2, 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(15, 12, 1, 1, '2023-03-21 08:58:50', '2023-03-21 08:58:50'),
	(16, 6, 1, 1, '2024-08-13 07:14:52', '2024-08-13 07:14:52');

DROP TABLE IF EXISTS `meishi_commentback`;
CREATE TABLE IF NOT EXISTS `meishi_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='美食评价';

DELETE FROM `meishi_commentback`;
INSERT INTO `meishi_commentback` (`id`, `meishi_id`, `yonghu_id`, `meishi_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-03-21 08:07:41', '回复信息1', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(2, 2, 2, '评价内容2', '2023-03-21 08:07:41', '回复信息2', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(3, 3, 1, '评价内容3', '2023-03-21 08:07:41', '回复信息3', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(4, 4, 3, '评价内容4', '2023-03-21 08:07:41', '回复信息4', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(5, 5, 3, '评价内容5', '2023-03-21 08:07:41', '回复信息5', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(6, 6, 2, '评价内容6', '2023-03-21 08:07:41', '回复信息6', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(7, 7, 2, '评价内容7', '2023-03-21 08:07:41', '回复信息7', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(8, 8, 1, '评价内容8', '2023-03-21 08:07:41', '回复信息8', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(9, 9, 2, '评价内容9', '2023-03-21 08:07:41', '回复信息9', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(10, 10, 1, '评价内容10', '2023-03-21 08:07:41', '回复信息10', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(11, 11, 3, '评价内容11', '2023-03-21 08:07:41', '回复信息11', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(12, 12, 3, '评价内容12', '2023-03-21 08:07:41', '回复信息12', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(13, 13, 3, '评价内容13', '2023-03-21 08:07:41', '回复信息13', '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(14, 14, 2, '评价内容14', '2023-03-21 08:07:41', '回复信息14', '2023-03-21 08:07:41', '2023-03-21 08:07:41');

DROP TABLE IF EXISTS `meishi_order`;
CREATE TABLE IF NOT EXISTS `meishi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `meishi_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `meishi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meishi_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `meishi_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `meishi_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `meishi_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食订单';

DELETE FROM `meishi_order`;
INSERT INTO `meishi_order` (`id`, `meishi_order_uuid_number`, `address_id`, `meishi_id`, `yonghu_id`, `buy_number`, `meishi_order_time`, `meishi_order_true_price`, `meishi_order_courier_name`, `meishi_order_courier_number`, `meishi_order_types`, `meishi_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1679388295842', 3, 11, 1, 1, '2023-03-21 08:44:52', 18.82, NULL, NULL, 102, 1, '2023-03-21 08:44:56', '2023-03-21 08:44:56'),
	(2, '1679388295842', 3, 4, 1, 2, '2023-03-21 08:44:52', 477.74, NULL, NULL, 102, 1, '2023-03-21 08:44:56', '2023-03-21 08:44:56'),
	(3, '1679389136667', 3, 14, 1, 1, '2023-03-23 08:58:52', 70.83, NULL, NULL, 101, 1, '2023-03-21 08:58:57', '2023-03-21 08:58:57'),
	(4, '1679389136667', 3, 13, 1, 1, '2023-03-23 08:58:52', 339.03, NULL, NULL, 103, 1, '2023-03-21 08:58:57', '2023-03-21 08:58:57'),
	(5, '1723533322518', 3, 6, 1, 1, '2024-08-13 07:15:20', 158.81, NULL, NULL, 101, 1, '2024-08-13 07:15:23', '2024-08-13 07:15:23');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='新闻公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-03-21 08:07:41', '公告详情1', '2023-03-21 08:07:41'),
	(2, '公告标题2', 1, 'upload/news2.jpg', '2023-03-21 08:07:41', '公告详情2', '2023-03-21 08:07:41'),
	(3, '公告标题3', 1, 'upload/news3.jpg', '2023-03-21 08:07:41', '公告详情3', '2023-03-21 08:07:41'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-03-21 08:07:41', '公告详情4', '2023-03-21 08:07:41'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-03-21 08:07:41', '公告详情5', '2023-03-21 08:07:41'),
	(6, '公告标题6', 2, 'upload/news6.jpg', '2023-03-21 08:07:41', '公告详情6', '2023-03-21 08:07:41'),
	(7, '公告标题7', 1, 'upload/news7.jpg', '2023-03-21 08:07:41', '公告详情7', '2023-03-21 08:07:41'),
	(8, '公告标题8', 2, 'upload/news8.jpg', '2023-03-21 08:07:41', '公告详情8', '2023-03-21 08:07:41'),
	(9, '公告标题9', 1, 'upload/news9.jpg', '2023-03-21 08:07:41', '公告详情9', '2023-03-21 08:07:41'),
	(10, '公告标题10', 1, 'upload/news10.jpg', '2023-03-21 08:07:41', '公告详情10', '2023-03-21 08:07:41'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-03-21 08:07:41', '公告详情11', '2023-03-21 08:07:41'),
	(12, '公告标题12', 2, 'upload/news12.jpg', '2023-03-21 08:07:41', '公告详情12', '2023-03-21 08:07:41'),
	(13, '公告标题13', 1, 'upload/news13.jpg', '2023-03-21 08:07:41', '公告详情13', '2023-03-21 08:07:41'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-03-21 08:07:41', '公告详情14', '2023-03-21 08:07:41');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_types` int DEFAULT NULL COMMENT '商家类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `shangjia_types`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '商家1', '123456', '商家名称1', '17703786901', '1@qq.com', 'upload/shangjia1.jpg', 3, -6.19, '商家介绍1', 1, '2023-03-21 08:07:41'),
	(2, '商家2', '123456', '商家名称2', '17703786902', '2@qq.com', 'upload/shangjia2.jpg', 2, 405.86, '商家介绍2', 1, '2023-03-21 08:07:41'),
	(3, '商家3', '123456', '商家名称3', '17703786903', '3@qq.com', 'upload/shangjia3.jpg', 3, 814.10, '商家介绍3', 1, '2023-03-21 08:07:41');

DROP TABLE IF EXISTS `shitang`;
CREATE TABLE IF NOT EXISTS `shitang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shitang_uuid_number` varchar(200) DEFAULT NULL COMMENT '食堂编号',
  `shitang_name` varchar(200) DEFAULT NULL COMMENT '食堂名称  Search111 ',
  `shitang_photo` varchar(200) DEFAULT NULL COMMENT '食堂照片',
  `shitang_types` int DEFAULT NULL COMMENT '食堂类型 Search111',
  `shitang_add` varchar(200) DEFAULT NULL COMMENT '食堂地址',
  `shitang_clicknum` int DEFAULT NULL COMMENT '食堂热度',
  `shitang_content` longtext COMMENT '食堂介绍 ',
  `shitang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='食堂';

DELETE FROM `shitang`;
INSERT INTO `shitang` (`id`, `shitang_uuid_number`, `shitang_name`, `shitang_photo`, `shitang_types`, `shitang_add`, `shitang_clicknum`, `shitang_content`, `shitang_delete`, `insert_time`, `create_time`) VALUES
	(1, '1679386061350', '食堂名称1', 'upload/shitang1.jpg', 1, '食堂地址1', 87, '食堂介绍1', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(2, '1679386061348', '食堂名称2', 'upload/shitang2.jpg', 3, '食堂地址2', 90, '食堂介绍2', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(3, '1679386061330', '食堂名称3', 'upload/shitang3.jpg', 3, '食堂地址3', 40, '食堂介绍3', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(4, '1679386061372', '食堂名称4', 'upload/shitang4.jpg', 2, '食堂地址4', 71, '食堂介绍4', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(5, '1679386061364', '食堂名称5', 'upload/shitang5.jpg', 3, '食堂地址5', 307, '食堂介绍5', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(6, '1679386061420', '食堂名称6', 'upload/shitang6.jpg', 2, '食堂地址6', 410, '食堂介绍6', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(7, '1679386061336', '食堂名称7', 'upload/shitang7.jpg', 1, '食堂地址7', 52, '食堂介绍7', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(8, '1679386061414', '食堂名称8', 'upload/shitang1.jpg', 2, '食堂地址8', 470, '食堂介绍8', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(9, '1679386061347', '食堂名称9', 'upload/shitang2.jpg', 1, '食堂地址9', 429, '食堂介绍9', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(10, '1679386061394', '食堂名称10', 'upload/shitang3.jpg', 3, '食堂地址10', 458, '食堂介绍10', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(11, '1679386061379', '食堂名称11', 'upload/shitang4.jpg', 1, '食堂地址11', 263, '食堂介绍11', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(12, '1679386061376', '食堂名称12', 'upload/shitang5.jpg', 3, '食堂地址12', 35, '食堂介绍12', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(13, '1679386061385', '食堂名称13', 'upload/shitang6.jpg', 1, '食堂地址13', 176, '食堂介绍13', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41'),
	(14, '1679386061334', '食堂名称14', 'upload/shitang7.jpg', 1, '食堂地址14', 36, '食堂介绍14', 1, '2023-03-21 08:07:41', '2023-03-21 08:07:41');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'gjk000ujj318ugpsw0oxjr62qcnpmxz5', '2023-03-21 08:12:39', '2024-08-13 08:13:05'),
	(2, 1, 'a1', 'yonghu', '用户', 'wctefyw87rofrsojc0p65b24um02ppsj', '2023-03-21 08:14:02', '2024-08-13 08:14:34'),
	(3, 1, 'a1', 'shangjia', '商家', 'wx9gp9btolxn4eahejnd4qz7z5m3jxnh', '2023-03-21 08:57:26', '2024-08-13 08:14:17'),
	(4, 2, 'a2', 'shangjia', '商家', '9uf66q5jq1rtkryrsrp2qxyxnu970gs7', '2023-03-21 09:02:00', '2023-03-21 10:02:01');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-21 08:07:18');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `status_types` int DEFAULT NULL COMMENT '账号状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `status_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 845.38, 1, '2023-03-21 08:07:41'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 924.39, 2, '2023-03-21 08:07:41'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 67.32, 1, '2023-03-21 08:07:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
