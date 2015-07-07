CREATE TABLE `daily_record`.`dr_user`(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(36) NOT NULL COMMENT '用户名',
  `password` VARCHAR(36) NOT NULL COMMENT '密码',
  `sex` TINYINT(1) DEFAULT 0 COMMENT '性别，0-女，1-男',
  `email` VARCHAR(64) DEFAULT '' COMMENT '邮箱',
  `creator` VARCHAR(36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR(36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT(1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT(1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
);

CREATE TABLE `daily_record`.`dr_company`(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(36) NOT NULL COMMENT '公司名称',
  `creator` VARCHAR(36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR(36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT(1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT(1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
);

CREATE TABLE `daily_record`.`dr_department`(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `company_id` BIGINT(20) COMMENT '公司id',
  `department_name` VARCHAR(36) NOT NULL COMMENT '部门名称',
  `creator` VARCHAR(36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR(36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT(1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT(1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
);

CREATE TABLE `daily_record`.`dr_group`(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `department_id` BIGINT(20) COMMENT '公司id',
  `group_name` VARCHAR(36) NOT NULL COMMENT '组名称',
  `creator` VARCHAR(36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR(36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT(1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT(1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
);

CREATE TABLE `daily_record`.`dr_project` (
  `id` BIGINT (20) NOT NULL AUTO_INCREMENT,
  `group_id` BIGINT (20) COMMENT '组id',
  `project_code` VARCHAR (64) NOT NULL COMMENT '项目代码',
  `project_name` VARCHAR (36) NOT NULL COMMENT '项目名称',
  `version_no` VARCHAR (36) COMMENT '版本号',
  `creator` VARCHAR (36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR (36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT (1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT (1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
);

ALTER TABLE `daily_record`.`dr_user`
  ADD COLUMN `name_cn` VARCHAR(36) NULL   COMMENT '中文名' AFTER `password`,
  ADD COLUMN `name_en` VARCHAR(36) NULL AFTER `name_cn`;

CREATE TABLE `daily_record`.`dr_task` (
  `id` BIGINT (20) NOT NULL AUTO_INCREMENT,
  `code` VARCHAR (36),
  `name` VARCHAR (36),
  `creator` VARCHAR (36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR (36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT (1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT (1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `daily_record`.`dr_daily_record`(
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20),
  `task_id` BIGINT(20),
  `project_id` BIGINT(20),
  `record_time` DATETIME COMMENT '日志日期',
  `plan_type` TINYINT(1) COMMENT '计划类型，0-计划外，1-计划中',
  `record_desc` VARCHAR(5000) COMMENT '日志简述',
  `start_time` DATETIME COMMENT '日志开始时间',
  `end_time` DATETIME COMMENT '日志结束时间',
  `normal_working_hour` DOUBLE COMMENT '正常工时',
  `extra_hours` DOUBLE COMMENT '加班工时',
  `total_hours` DOUBLE COMMENT '合计工时',
  `is_finished` TINYINT(1) COMMENT '是否完成 0-否，1-是',
  `finished_desc` VARCHAR(5000) COMMENT '完成情况描述',
  `creator` VARCHAR (36) COMMENT '创建人',
  `create_time` DATETIME COMMENT '创建时间',
  `modifier` VARCHAR (36) COMMENT '修改人',
  `modify_time` DATETIME COMMENT '修改时间',
  `status` TINYINT (1) DEFAULT 1 COMMENT '0-禁用，1启用',
  `is_delete` TINYINT (1) DEFAULT 0 COMMENT '是否被删除，0-否，1-是',
  PRIMARY KEY (`id`)
);
