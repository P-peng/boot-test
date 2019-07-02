# Host: 127.0.0.1  (Version 5.7.11-log)
# Date: 2019-07-02 18:04:07
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "sde_coupon_record"
#

DROP TABLE IF EXISTS `sde_coupon_record`;
CREATE TABLE `sde_coupon_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `coupon_type` char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '优惠劵类型(0:现金劵)',
  `number` int(11) DEFAULT NULL COMMENT '申请数量',
  `apply_flag` char(1) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '申请标记',
  `give_flag` char(1) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '发放标记',
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(1) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '删除标记',
  `merchant_id` int(11) DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='优惠卷申请记录表';

#
# Data for table "sde_coupon_record"
#

INSERT INTO `sde_coupon_record` VALUES (1,1,'1',1,'0','0','1','1899-12-30 01:00:00','1','1899-12-30 01:00:00','0',0);

#
# Structure for table "sequence"
#

DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '序列的名字',
  `current_value` int(11) NOT NULL COMMENT '序列的当前值',
  `increment` int(11) NOT NULL DEFAULT '1' COMMENT '序列的自增值',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

#
# Data for table "sequence"
#

INSERT INTO `sequence` VALUES ('MDC',15,1);

#
# Structure for table "stock_coin_deal_config"
#

DROP TABLE IF EXISTS `stock_coin_deal_config`;
CREATE TABLE `stock_coin_deal_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `coin_name` varchar(255) DEFAULT NULL COMMENT '币种名称',
  `coin_code` varchar(255) DEFAULT NULL COMMENT '币种代码',
  `min_number` decimal(25,6) DEFAULT NULL COMMENT '最小交易币数',
  `max_number` decimal(25,6) DEFAULT NULL COMMENT '最大交易币数',
  `deal_fee_percent` decimal(25,6) DEFAULT '0.000000' COMMENT '交易手续费  百分比计算',
  `deal_fee_number` decimal(25,6) DEFAULT '0.000000' COMMENT '交易手续费  次数计算',
  `is_percent` char(1) NOT NULL DEFAULT '1' COMMENT '是否启用百分比计算(0:启用 1:停用)',
  `activate_status` char(1) DEFAULT '0' COMMENT '是否启用(0:启用1:停用)',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` int(11) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `is_del` char(1) DEFAULT '0' COMMENT '是否删除(0:正常1:删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_pay_record_index` (`coin_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='币交易系统配置';

#
# Data for table "stock_coin_deal_config"
#


#
# Structure for table "stock_local_wallet"
#

DROP TABLE IF EXISTS `stock_local_wallet`;
CREATE TABLE `stock_local_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `stock_user_addr_id` int(11) DEFAULT NULL COMMENT '钱包地址id',
  `account` decimal(25,8) DEFAULT '0.00000000' COMMENT '余额',
  `coin` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '币代号',
  `auth_status` char(1) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '授权状态0未授权 1授权',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` char(1) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='本地钱包';

#
# Data for table "stock_local_wallet"
#


#
# Structure for table "sys_wallet_address"
#

DROP TABLE IF EXISTS `sys_wallet_address`;
CREATE TABLE `sys_wallet_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `coin_code` varchar(255) DEFAULT NULL COMMENT '币种代码',
  `from_address` varchar(128) DEFAULT NULL COMMENT '用户地址',
  `salt` varchar(128) DEFAULT NULL COMMENT '私钥',
  `activate_status` varchar(1) DEFAULT '0' COMMENT '是否停用(0:启用1:停用)',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` int(11) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `is_del` varchar(1) DEFAULT '0' COMMENT '是否删除(0:正常1:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统钱包地址私钥';

#
# Data for table "sys_wallet_address"
#


#
# Structure for table "t"
#

DROP TABLE IF EXISTS `t`;
CREATE TABLE `t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "t"
#

INSERT INTO `t` VALUES (2,'2'),(3,'33'),(4,'4'),(5,'5'),(6,'pp'),(7,'686'),(10,'686'),(11,'邓志鹏'),(12,'686'),(13,'686'),(14,'686'),(15,'686');

#
# Structure for table "t2"
#

DROP TABLE IF EXISTS `t2`;
CREATE TABLE `t2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "t2"
#

INSERT INTO `t2` VALUES (1,'11','8888'),(2,'22','8888');

#
# Function "currval"
#

DROP FUNCTION IF EXISTS `currval`;
CREATE FUNCTION `currval`(seq_name VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
    COMMENT '取当前值的函数'
BEGIN 
     DECLARE value INTEGER; 
     SET value = 0; 
     SELECT current_value INTO value 
          FROM sequence 
          WHERE name = seq_name; 
     RETURN value; 
END;

#
# Function "nextval"
#

DROP FUNCTION IF EXISTS `nextval`;
CREATE FUNCTION `nextval`(seq_name VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
    COMMENT '取下一个值的函数'
BEGIN 
     UPDATE sequence SET current_value=last_insert_id(current_value+increment) WHERE name=seq_name;
     RETURN last_insert_id();
END;

#
# Function "setval"
#

DROP FUNCTION IF EXISTS `setval`;
CREATE FUNCTION `setval`(seq_name VARCHAR(50), value INTEGER) RETURNS int(11)
    DETERMINISTIC
    COMMENT '更新当前值的函数'
BEGIN 
     UPDATE sequence 
          SET current_value = value 
          WHERE name = seq_name; 
     RETURN currval(seq_name); 
END;
