/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : my_logs

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 31/12/2023 00:42:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `order_order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单子表id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_detail_202312
-- ----------------------------
DROP TABLE IF EXISTS `order_detail_202312`;
CREATE TABLE `order_detail_202312`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `order_order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单子表id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail_202312
-- ----------------------------
INSERT INTO `order_detail_202312` VALUES ('1741066791821578242', '2', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741066791821578243', '3', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741069085321519107', '1741069082842685441', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741069085321519108', '1741069082842685441', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741075671817428994', '1741075669212766210', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741075671817428995', '1741075669212766210', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741083304511270913', '1741083301566869506', '2023-12-01 00:00:00');
INSERT INTO `order_detail_202312` VALUES ('1741083304511270914', '1741083301566869506', '2023-12-01 00:00:00');

-- ----------------------------
-- Table structure for order_detail_202401
-- ----------------------------
DROP TABLE IF EXISTS `order_detail_202401`;
CREATE TABLE `order_detail_202401`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `order_order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单子表id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail_202401
-- ----------------------------
INSERT INTO `order_detail_202401` VALUES ('1741066787916681218', '1', '2024-01-01 00:00:00');
INSERT INTO `order_detail_202401` VALUES ('1741069085321519106', '1741069082842685441', '2024-01-01 00:00:00');
INSERT INTO `order_detail_202401` VALUES ('1741075671750320129', '1741075669212766210', '2024-01-01 00:00:00');
INSERT INTO `order_detail_202401` VALUES ('1741083304444162050', '1741083301566869506', '2024-01-01 00:00:00');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202301
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202301`;
CREATE TABLE `order_info_202301`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202302
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202302`;
CREATE TABLE `order_info_202302`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202303
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202303`;
CREATE TABLE `order_info_202303`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202304
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202304`;
CREATE TABLE `order_info_202304`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202305
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202305`;
CREATE TABLE `order_info_202305`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202306
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202306`;
CREATE TABLE `order_info_202306`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202307
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202307`;
CREATE TABLE `order_info_202307`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202308
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202308`;
CREATE TABLE `order_info_202308`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202309
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202309`;
CREATE TABLE `order_info_202309`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202310
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202310`;
CREATE TABLE `order_info_202310`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202311
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202311`;
CREATE TABLE `order_info_202311`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202312
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202312`;
CREATE TABLE `order_info_202312`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info_202401
-- ----------------------------
DROP TABLE IF EXISTS `order_info_202401`;
CREATE TABLE `order_info_202401`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售订单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间（分表字段)',
  `order_info_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售订单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info_202401
-- ----------------------------
INSERT INTO `order_info_202401` VALUES ('1741069082842685441', '2024-01-01 00:00:00', '订单A');
INSERT INTO `order_info_202401` VALUES ('1741075669212766210', '2024-01-01 00:00:00', '订单A');
INSERT INTO `order_info_202401` VALUES ('1741083301566869506', '2024-01-01 00:00:00', '订单C');

SET FOREIGN_KEY_CHECKS = 1;
