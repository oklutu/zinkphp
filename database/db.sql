CREATE TABLE `app_suggest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '登陆用户id',
  `mobile` varchar(16) NOT NULL DEFAULT '' COMMENT '反馈用户手机号',
  `content` varchar(500) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '反馈内容',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '反馈类型',
  `image_ids` varchar(200) NOT NULL DEFAULT '' COMMENT '反馈图片pid，多张用英文逗号分隔',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '产品id号',
  `phone_model` varchar(28) NOT NULL DEFAULT '' COMMENT '手机型号',
  `os_version` varchar(16) NOT NULL DEFAULT '' COMMENT '操作系统版本',
  `network` varchar(10) NOT NULL DEFAULT '' COMMENT '网络类型',
  `platform` varchar(16) NOT NULL DEFAULT '' COMMENT '平台:ios,android',
  `cid` varchar(64) NOT NULL DEFAULT '' COMMENT 'App 激活id',
  `version_no` int(10) NOT NULL DEFAULT '0' COMMENT 'App 版本号',
  `ip` varchar(32) NOT NULL DEFAULT '' COMMENT '反馈者ip',
  `sign` varchar(32) NOT NULL DEFAULT '' COMMENT '数据签名,防止重复提交',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据更新时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `app` (`pid`,`platform`,`version_no`),
  KEY `sign` (`sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='App 意见反馈表';