/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : noc_admin

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 03/01/2023 17:35:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auto_code_examples
-- ----------------------------
DROP TABLE IF EXISTS `auto_code_examples`;
CREATE TABLE `auto_code_examples` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `auto_code_example_field` varchar(191) DEFAULT NULL COMMENT '仅作示例条目无实际作用',
  PRIMARY KEY (`id`),
  KEY `idx_auto_code_examples_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auto_code_examples
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` VALUES ('p', '888', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/deleteApisByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setUserAuthorities', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/resetPassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/getServerInfo', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getDB', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getMeta', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/preview', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getTables', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getColumn', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/rollback', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/delSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/getSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/updateSysOperationRecord', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/email/emailTest', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/importExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/loadExcel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/exportExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/excel/downloadTemplate', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '8881', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/setUserAuthorities', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/user/resetPassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/api/deleteApisByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/findFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/system/getServerInfo', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/getDB', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/getTables', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/preview', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/getColumn', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/getMeta', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/rollback', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/getSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/autoCode/delSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionary/createSysDictionary', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/email/emailTest', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/email/emailSend', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/excel/importExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/excel/loadExcel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/excel/exportExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/excel/downloadTemplate', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/noc/createNoc', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/noc/deleteNocById', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/noc/updateNocById', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/noc/getNocById', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/noc/getNocList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/noc/getNocDetailById', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/NP/createNocPriority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/NP/deleteNocPriority', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/NP/deleteNocPriorityByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/NP/updateNocPriority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/NP/findNocPriority', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/NP/getNocPriorityList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nd/createNocDepartment', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nd/deleteNocDepartment', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nd/deleteNocDepartmentByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nd/updateNocDepartment', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nd/findNocDepartment', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nd/getNocDepartmentList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ns/createNocStatus', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ns/deleteNocStatus', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ns/deleteNocStatusByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ns/updateNocStatus', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ns/findNocStatus', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ns/getNocStatusList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nt/createNocTeam', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nt/deleteNocTeam', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nt/deleteNocTeamByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nt/updateNocTeam', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nt/findNocTeam', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nt/getNocTeamList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nr/createNocReasons', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nr/deleteNocReasons', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nr/deleteNocReasonsByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nr/updateNocReasons', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nr/findNocReasons', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/nr/getNocReasonsList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ndr/createNocDirectReasons', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ndr/deleteNocDirectReasons', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ndr/deleteNocDirectReasonsByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ndr/updateNocDirectReasons', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ndr/findNocDirectReasons', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9528', '/ndr/getNocDirectReasonsList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/noc/getNocById', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/noc/getNocList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/noc/getNocDetailById', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/NP/findNocPriority', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/NP/getNocPriorityList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/nd/findNocDepartment', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/nd/getNocDepartmentList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/ns/findNocStatus', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/ns/getNocStatusList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/nt/findNocTeam', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/nt/getNocTeamList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/nr/findNocReasons', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/nr/getNocReasonsList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/ndr/findNocDirectReasons', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '10086', '/ndr/getNocDirectReasonsList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/findFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/noc/createNoc', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/noc/deleteNocById', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/noc/updateNocById', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/noc/getNocById', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/noc/getNocList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/noc/getNocDetailById', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/NP/createNocPriority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/NP/deleteNocPriority', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/NP/deleteNocPriorityByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/NP/updateNocPriority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/NP/findNocPriority', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/NP/getNocPriorityList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nd/createNocDepartment', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nd/deleteNocDepartment', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nd/deleteNocDepartmentByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nd/updateNocDepartment', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nd/findNocDepartment', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nd/getNocDepartmentList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ns/createNocStatus', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ns/deleteNocStatus', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ns/deleteNocStatusByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ns/updateNocStatus', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ns/findNocStatus', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ns/getNocStatusList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nt/createNocTeam', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nt/deleteNocTeam', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nt/deleteNocTeamByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nt/updateNocTeam', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nt/findNocTeam', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nt/getNocTeamList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nr/createNocReasons', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nr/deleteNocReasons', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nr/deleteNocReasonsByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nr/updateNocReasons', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nr/findNocReasons', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/nr/getNocReasonsList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ndr/createNocDirectReasons', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ndr/deleteNocDirectReasons', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ndr/deleteNocDirectReasonsByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ndr/updateNocDirectReasons', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ndr/findNocDirectReasons', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '9527', '/ndr/getNocDirectReasonsList', 'GET', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS `exa_customers`;
CREATE TABLE `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` varchar(191) DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of exa_customers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_chunks`;
CREATE TABLE `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of exa_file_chunks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
BEGIN;
INSERT INTO `exa_file_upload_and_downloads` VALUES (1, '2022-01-15 11:57:05.332', '2022-01-15 11:57:05.332', NULL, '10.png', 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png');
INSERT INTO `exa_file_upload_and_downloads` VALUES (2, '2022-01-15 11:57:05.332', '2022-01-15 11:57:05.332', NULL, 'logo.png', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png');
INSERT INTO `exa_file_upload_and_downloads` VALUES (3, '2022-03-27 20:50:42.926', '2022-03-27 20:50:42.926', NULL, '90sheji_linggan_13443247.png', 'uploads/file/5854306bb01d777718bae11c6c38de8b_20220327205042.png', 'png', '5854306bb01d777718bae11c6c38de8b_20220327205042.png');
INSERT INTO `exa_file_upload_and_downloads` VALUES (4, '2022-04-11 18:24:13.652', '2022-04-11 18:24:13.652', NULL, 'test.jpg', 'uploads/file/098f6bcd4621d373cade4e832627b4f6_20220411182413.jpg', 'jpg', '098f6bcd4621d373cade4e832627b4f6_20220411182413.jpg');
COMMIT;

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS `exa_files`;
CREATE TABLE `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_md5` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of exa_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS `jwt_blacklists`;
CREATE TABLE `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for noc
-- ----------------------------
DROP TABLE IF EXISTS `noc`;
CREATE TABLE `noc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(100) DEFAULT NULL COMMENT '故障编号',
  `title` varchar(100) NOT NULL COMMENT '故障标题',
  `priority_id` tinyint(4) DEFAULT '1' COMMENT '故障等级ID',
  `status_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '故障状态ID',
  `responsible_dept_id` tinyint(4) DEFAULT '1' COMMENT '故障责任领域ID',
  `responsible_team_id` tinyint(4) DEFAULT '1' COMMENT '故障责任业务线ID',
  `noc_reason_id` tinyint(4) DEFAULT '63' COMMENT '故障二级原因ID',
  `direct_reason_id` tinyint(4) DEFAULT '9' COMMENT '故障一级原因ID',
  `desc` varchar(4000) DEFAULT NULL COMMENT '故障概述',
  `detail` text COMMENT '故障详细处理过程',
  `analysis` text COMMENT '故障分析',
  `found_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '故障发现时间',
  `start_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '故障开始时间',
  `fixed_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '故障修复时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '故障删除时间',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '故障申报时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '故障更新时间',
  `declarant_uid` int(100) DEFAULT NULL COMMENT '申报人id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_number` (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='故障主表';

-- ----------------------------
-- Records of noc
-- ----------------------------
BEGIN;
INSERT INTO `noc` VALUES (2, '20220311', '测试故障1', 2, 5, 1, 1, 63, 9, '# 概述\n```bash\necho desc\n```', '# 处理\n```bash\necho detail\n```\n\n![Description](https://qmplusimg.henrongyi.top/1576554439myAvatar.png\n)', '# 复盘\n```bash\necho review\n```\n|column1|column2|column3|\n|-|-|-|\n|content1|content2|content3|', '2022-03-22 20:48:12', '2022-03-23 09:24:00', '2022-03-25 09:24:05', NULL, '2022-03-14 14:01:16', '2022-03-28 09:04:47', 1);
INSERT INTO `noc` VALUES (3, '20220323_1', '测试故障', 4, 1, 1, 3, 50, 5, 'aaa', 'sss', 'ddd', '2022-03-15 00:00:00', '2022-03-03 00:00:00', '2022-03-12 00:00:00', NULL, '2022-03-14 15:42:04', '2022-03-23 16:05:00', 1);
INSERT INTO `noc` VALUES (5, '3', '2', 4, 1, 1, 1, 55, 9, '', '', '', NULL, NULL, NULL, NULL, '2022-03-15 15:23:44', '2022-03-15 15:23:44', 1);
COMMIT;

-- ----------------------------
-- Table structure for noc_department
-- ----------------------------
DROP TABLE IF EXISTS `noc_department`;
CREATE TABLE `noc_department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) DEFAULT NULL COMMENT '领域名称',
  `director` varchar(100) DEFAULT NULL COMMENT '领域负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='领域表';

-- ----------------------------
-- Records of noc_department
-- ----------------------------
BEGIN;
INSERT INTO `noc_department` VALUES (1, '测试领域', 'test');
INSERT INTO `noc_department` VALUES (2, '测试领域2', 'test2');
COMMIT;

-- ----------------------------
-- Table structure for noc_direct_reasons
-- ----------------------------
DROP TABLE IF EXISTS `noc_direct_reasons`;
CREATE TABLE `noc_direct_reasons` (
  `id` int(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL COMMENT '原因名称',
  `treecode` varchar(10) DEFAULT NULL COMMENT 'code树',
  `parent_id` varchar(10) DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障原因表';

-- ----------------------------
-- Records of noc_direct_reasons
-- ----------------------------
BEGIN;
INSERT INTO `noc_direct_reasons` VALUES (1, '程序', '1', '0');
INSERT INTO `noc_direct_reasons` VALUES (2, '测试相关', '2', '0');
INSERT INTO `noc_direct_reasons` VALUES (3, '数据库', '3', '0');
INSERT INTO `noc_direct_reasons` VALUES (4, '公共组件', '4', '0');
INSERT INTO `noc_direct_reasons` VALUES (5, '第三方', '5', '0');
INSERT INTO `noc_direct_reasons` VALUES (6, '硬件性能', '6', '0');
INSERT INTO `noc_direct_reasons` VALUES (7, '网络', '7', '0');
INSERT INTO `noc_direct_reasons` VALUES (8, '云服务', '8', '0');
INSERT INTO `noc_direct_reasons` VALUES (9, '其他', '9', '0');
COMMIT;

-- ----------------------------
-- Table structure for noc_priority
-- ----------------------------
DROP TABLE IF EXISTS `noc_priority`;
CREATE TABLE `noc_priority` (
  `id` tinyint(4) NOT NULL,
  `priority` varchar(10) NOT NULL COMMENT '故障等级，P1-4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障改进项表';

-- ----------------------------
-- Records of noc_priority
-- ----------------------------
BEGIN;
INSERT INTO `noc_priority` VALUES (1, 'P1');
INSERT INTO `noc_priority` VALUES (2, 'P2');
INSERT INTO `noc_priority` VALUES (3, 'P3');
INSERT INTO `noc_priority` VALUES (4, 'P4');
COMMIT;

-- ----------------------------
-- Table structure for noc_reasons
-- ----------------------------
DROP TABLE IF EXISTS `noc_reasons`;
CREATE TABLE `noc_reasons` (
  `id` int(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL COMMENT '原因名称',
  `treecode` varchar(10) DEFAULT NULL COMMENT 'code树',
  `parent_id` varchar(10) DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障原因表';

-- ----------------------------
-- Records of noc_reasons
-- ----------------------------
BEGIN;
INSERT INTO `noc_reasons` VALUES (31, '代码BUG', '1#1', '1');
INSERT INTO `noc_reasons` VALUES (32, '上线操作', '1#2', '1');
INSERT INTO `noc_reasons` VALUES (33, '定时任务', '1#3', '1');
INSERT INTO `noc_reasons` VALUES (34, '历史遗留', '1#4', '1');
INSERT INTO `noc_reasons` VALUES (35, '接口问题', '1#5', '1');
INSERT INTO `noc_reasons` VALUES (36, '测试不充分', '2#1', '2');
INSERT INTO `noc_reasons` VALUES (37, '测试环境', '2#2', '2');
INSERT INTO `noc_reasons` VALUES (38, 'MYSQL', '3#1', '3');
INSERT INTO `noc_reasons` VALUES (39, 'REDIS', '3#2', '3');
INSERT INTO `noc_reasons` VALUES (40, '数据库操作', '3#3', '3');
INSERT INTO `noc_reasons` VALUES (41, '数据库查询性能', '3#4', '3');
INSERT INTO `noc_reasons` VALUES (42, '其他存储服务', '3#5', '3');
INSERT INTO `noc_reasons` VALUES (43, 'ETCD/ZOOKE', '4#1', '4');
INSERT INTO `noc_reasons` VALUES (44, 'NGINX/LVS', '4#2', '4');
INSERT INTO `noc_reasons` VALUES (45, 'DNS', '4#3', '4');
INSERT INTO `noc_reasons` VALUES (46, 'KAFKA/MQ', '4#4', '4');
INSERT INTO `noc_reasons` VALUES (47, 'NEXUS', '4#5', '4');
INSERT INTO `noc_reasons` VALUES (48, '文件存储', '4#6', '4');
INSERT INTO `noc_reasons` VALUES (49, 'CDN', '4#7', '4');
INSERT INTO `noc_reasons` VALUES (50, '第三方服务', '5#1', '5');
INSERT INTO `noc_reasons` VALUES (51, '外部攻击', '5#2', '5');
INSERT INTO `noc_reasons` VALUES (52, '设备停电', '5#3', '5');
INSERT INTO `noc_reasons` VALUES (53, '宕机', '6#1', '6');
INSERT INTO `noc_reasons` VALUES (54, 'CPU/LOAD', '6#2', '6');
INSERT INTO `noc_reasons` VALUES (55, '内存', '6#3', '6');
INSERT INTO `noc_reasons` VALUES (56, '存储空间', '6#4', '6');
INSERT INTO `noc_reasons` VALUES (57, '磁盘故障', '6#5', '6');
INSERT INTO `noc_reasons` VALUES (58, '网络设备', '7#1', '7');
INSERT INTO `noc_reasons` VALUES (59, '网络质量', '7#2', '7');
INSERT INTO `noc_reasons` VALUES (60, '网络设置', '7#3', '7');
INSERT INTO `noc_reasons` VALUES (61, '上线系统', '8#1', '8');
INSERT INTO `noc_reasons` VALUES (62, '云集群', '8#2', '8');
INSERT INTO `noc_reasons` VALUES (63, '其他', '9#1', '9');
INSERT INTO `noc_reasons` VALUES (64, '程序配置', '1#6', '1');
COMMIT;

-- ----------------------------
-- Table structure for noc_status
-- ----------------------------
DROP TABLE IF EXISTS `noc_status`;
CREATE TABLE `noc_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_noc_status_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noc_status
-- ----------------------------
BEGIN;
INSERT INTO `noc_status` VALUES (1, '故障中', NULL, NULL, NULL);
INSERT INTO `noc_status` VALUES (2, '复盘中', NULL, NULL, NULL);
INSERT INTO `noc_status` VALUES (3, '待审核', NULL, NULL, NULL);
INSERT INTO `noc_status` VALUES (4, '已审核', NULL, NULL, NULL);
INSERT INTO `noc_status` VALUES (5, '已归档', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for noc_team
-- ----------------------------
DROP TABLE IF EXISTS `noc_team`;
CREATE TABLE `noc_team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) DEFAULT NULL COMMENT '业务线名称',
  `responsible_dept_id` varchar(4) DEFAULT NULL COMMENT '领域id',
  `leader` varchar(100) DEFAULT NULL COMMENT '业务线team leader',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='业务线表';

-- ----------------------------
-- Records of noc_team
-- ----------------------------
BEGIN;
INSERT INTO `noc_team` VALUES (1, '测试业务线', '1', 'test');
INSERT INTO `noc_team` VALUES (2, '测试业务线2', '2', 'test2');
INSERT INTO `noc_team` VALUES (3, '测试业务线3', '1', 'test3');
COMMIT;

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
BEGIN;
INSERT INTO `sys_apis` VALUES (1, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/base/login', '用户登录(必选)', 'base', 'POST');
INSERT INTO `sys_apis` VALUES (2, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST');
INSERT INTO `sys_apis` VALUES (3, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/deleteUser', '删除用户', '系统用户', 'DELETE');
INSERT INTO `sys_apis` VALUES (4, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/register', '用户注册(必选)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (5, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/getUserList', '获取用户列表', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (6, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT');
INSERT INTO `sys_apis` VALUES (7, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT');
INSERT INTO `sys_apis` VALUES (8, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET');
INSERT INTO `sys_apis` VALUES (9, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (10, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/changePassword', '修改密码（建(选择)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (11, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (12, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/user/resetPassword', '重置用户密码', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (13, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (14, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (15, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (16, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (17, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (18, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (19, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE');
INSERT INTO `sys_apis` VALUES (20, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/authority/copyAuthority', '拷贝角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (21, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/authority/createAuthority', '创建角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (22, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/authority/deleteAuthority', '删除角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (23, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/authority/updateAuthority', '更新角色信息', '角色', 'PUT');
INSERT INTO `sys_apis` VALUES (24, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/authority/getAuthorityList', '获取角色列表', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (25, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (26, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (27, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (28, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/addBaseMenu', '新增菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (29, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (30, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (31, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (32, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (33, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (34, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (35, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (36, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (37, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (38, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (39, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (40, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (41, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/upload', '文件上传示例', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (42, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (43, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (44, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (45, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (46, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (47, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/customer/customer', '更新客户', '客户', 'PUT');
INSERT INTO `sys_apis` VALUES (48, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/customer/customer', '创建客户', '客户', 'POST');
INSERT INTO `sys_apis` VALUES (49, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/customer/customer', '删除客户', '客户', 'DELETE');
INSERT INTO `sys_apis` VALUES (50, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/customer/customer', '获取单一客户', '客户', 'GET');
INSERT INTO `sys_apis` VALUES (51, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/customer/customerList', '获取客户列表', '客户', 'GET');
INSERT INTO `sys_apis` VALUES (52, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (53, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (54, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (55, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (56, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (57, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (58, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (59, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (60, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (61, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT');
INSERT INTO `sys_apis` VALUES (62, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST');
INSERT INTO `sys_apis` VALUES (63, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE');
INSERT INTO `sys_apis` VALUES (64, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET');
INSERT INTO `sys_apis` VALUES (65, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET');
INSERT INTO `sys_apis` VALUES (66, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST');
INSERT INTO `sys_apis` VALUES (67, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE');
INSERT INTO `sys_apis` VALUES (68, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT');
INSERT INTO `sys_apis` VALUES (69, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典', '系统字典', 'GET');
INSERT INTO `sys_apis` VALUES (70, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET');
INSERT INTO `sys_apis` VALUES (71, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST');
INSERT INTO `sys_apis` VALUES (72, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET');
INSERT INTO `sys_apis` VALUES (73, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET');
INSERT INTO `sys_apis` VALUES (74, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE');
INSERT INTO `sys_apis` VALUES (75, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE');
INSERT INTO `sys_apis` VALUES (76, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST');
INSERT INTO `sys_apis` VALUES (77, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` VALUES (78, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` VALUES (79, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (80, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/email/emailSend', '发送邮件示例', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (81, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/excel/importExcel', '导入excel', 'excel', 'POST');
INSERT INTO `sys_apis` VALUES (82, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/excel/loadExcel', '下载excel', 'excel', 'GET');
INSERT INTO `sys_apis` VALUES (83, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/excel/exportExcel', '导出excel', 'excel', 'POST');
INSERT INTO `sys_apis` VALUES (84, '2022-01-15 11:57:04.974', '2022-01-15 11:57:04.974', NULL, '/excel/downloadTemplate', '下载excel模板', 'excel', 'GET');
INSERT INTO `sys_apis` VALUES (85, '2022-01-15 14:05:30.194', '2022-01-17 13:33:20.737', NULL, '/noc/createNoc', '新增故障信息', '故障信息', 'POST');
INSERT INTO `sys_apis` VALUES (86, '2022-01-15 14:05:30.201', '2022-01-17 17:14:49.359', NULL, '/noc/deleteNocById', '删除故障信息', '故障信息', 'DELETE');
INSERT INTO `sys_apis` VALUES (87, '2022-01-15 14:05:30.204', '2022-01-17 13:33:06.570', '2022-01-17 17:48:22.582', '/noc/deleteNocByIds', '批量删除故障信息', '故障信息', 'DELETE');
INSERT INTO `sys_apis` VALUES (88, '2022-01-15 14:05:30.205', '2022-01-17 17:45:31.827', NULL, '/noc/updateNocById', '更新故障信息', '故障信息', 'PUT');
INSERT INTO `sys_apis` VALUES (89, '2022-01-15 14:05:30.217', '2022-01-17 14:42:40.154', NULL, '/noc/getNocById', '根据ID获取故障信息', '故障信息', 'GET');
INSERT INTO `sys_apis` VALUES (90, '2022-01-15 14:05:30.219', '2022-02-10 11:14:46.934', NULL, '/noc/getNocList', '获取故障信息列表', '故障信息', 'GET');
INSERT INTO `sys_apis` VALUES (91, '2022-01-17 13:31:12.961', '2022-01-17 13:31:12.961', '2022-01-17 13:33:48.637', '/noc/getNocList', '获取故障列表', 'noc', 'GET');
INSERT INTO `sys_apis` VALUES (92, '2022-03-08 17:14:35.601', '2022-03-08 17:14:35.601', NULL, '/NP/createNocPriority', '新增故障级别', 'NP', 'POST');
INSERT INTO `sys_apis` VALUES (93, '2022-03-08 17:14:35.610', '2022-03-08 17:14:35.610', NULL, '/NP/deleteNocPriority', '删除故障级别', 'NP', 'DELETE');
INSERT INTO `sys_apis` VALUES (94, '2022-03-08 17:14:35.611', '2022-03-08 17:14:35.611', NULL, '/NP/deleteNocPriorityByIds', '批量删除故障级别', 'NP', 'DELETE');
INSERT INTO `sys_apis` VALUES (95, '2022-03-08 17:14:35.884', '2022-03-08 17:14:35.884', NULL, '/NP/updateNocPriority', '更新故障级别', 'NP', 'PUT');
INSERT INTO `sys_apis` VALUES (96, '2022-03-08 17:14:36.165', '2022-03-08 17:14:36.165', NULL, '/NP/findNocPriority', '根据ID获取故障级别', 'NP', 'GET');
INSERT INTO `sys_apis` VALUES (97, '2022-03-08 17:14:36.167', '2022-03-08 17:14:36.167', NULL, '/NP/getNocPriorityList', '获取故障级别列表', 'NP', 'GET');
INSERT INTO `sys_apis` VALUES (98, '2022-03-09 11:32:35.751', '2022-03-09 11:32:35.751', '2022-03-09 13:45:13.342', '/ns/createNocReasons', '新增故障原因', 'ns', 'POST');
INSERT INTO `sys_apis` VALUES (99, '2022-03-09 11:32:35.758', '2022-03-09 11:32:35.758', '2022-03-09 13:45:13.342', '/ns/deleteNocReasons', '删除故障原因', 'ns', 'DELETE');
INSERT INTO `sys_apis` VALUES (100, '2022-03-09 11:32:35.759', '2022-03-09 11:32:35.759', '2022-03-09 13:45:13.342', '/ns/deleteNocReasonsByIds', '批量删除故障原因', 'ns', 'DELETE');
INSERT INTO `sys_apis` VALUES (101, '2022-03-09 11:32:35.762', '2022-03-09 11:32:35.762', '2022-03-09 13:45:13.342', '/ns/updateNocReasons', '更新故障原因', 'ns', 'PUT');
INSERT INTO `sys_apis` VALUES (102, '2022-03-09 11:32:36.368', '2022-03-09 11:32:36.368', '2022-03-09 13:45:13.342', '/ns/findNocReasons', '根据ID获取故障原因', 'ns', 'GET');
INSERT INTO `sys_apis` VALUES (103, '2022-03-09 11:32:36.644', '2022-03-09 11:32:36.644', '2022-03-09 13:45:13.342', '/ns/getNocReasonsList', '获取故障原因列表', 'ns', 'GET');
INSERT INTO `sys_apis` VALUES (104, '2022-03-09 13:07:24.648', '2022-03-09 13:07:24.648', NULL, '/nd/createNocDepartment', '新增领域', 'nd', 'POST');
INSERT INTO `sys_apis` VALUES (105, '2022-03-09 13:07:24.655', '2022-03-09 13:07:24.655', NULL, '/nd/deleteNocDepartment', '删除领域', 'nd', 'DELETE');
INSERT INTO `sys_apis` VALUES (106, '2022-03-09 13:07:24.657', '2022-03-09 13:07:24.657', NULL, '/nd/deleteNocDepartmentByIds', '批量删除领域', 'nd', 'DELETE');
INSERT INTO `sys_apis` VALUES (107, '2022-03-09 13:07:26.146', '2022-03-09 13:07:26.146', NULL, '/nd/updateNocDepartment', '更新领域', 'nd', 'PUT');
INSERT INTO `sys_apis` VALUES (108, '2022-03-09 13:07:26.328', '2022-03-09 13:07:26.328', NULL, '/nd/findNocDepartment', '根据ID获取领域', 'nd', 'GET');
INSERT INTO `sys_apis` VALUES (109, '2022-03-09 13:07:26.329', '2022-03-09 13:07:26.329', NULL, '/nd/getNocDepartmentList', '获取领域列表', 'nd', 'GET');
INSERT INTO `sys_apis` VALUES (110, '2022-03-09 13:20:15.297', '2022-03-09 13:20:15.297', NULL, '/ns/createNocStatus', '新增故障状态', 'ns', 'POST');
INSERT INTO `sys_apis` VALUES (111, '2022-03-09 13:20:15.299', '2022-03-09 13:20:15.299', NULL, '/ns/deleteNocStatus', '删除故障状态', 'ns', 'DELETE');
INSERT INTO `sys_apis` VALUES (112, '2022-03-09 13:20:15.301', '2022-03-09 13:20:15.301', NULL, '/ns/deleteNocStatusByIds', '批量删除故障状态', 'ns', 'DELETE');
INSERT INTO `sys_apis` VALUES (113, '2022-03-09 13:20:15.304', '2022-03-09 13:20:15.304', NULL, '/ns/updateNocStatus', '更新故障状态', 'ns', 'PUT');
INSERT INTO `sys_apis` VALUES (114, '2022-03-09 13:20:15.307', '2022-03-09 13:20:15.307', NULL, '/ns/findNocStatus', '根据ID获取故障状态', 'ns', 'GET');
INSERT INTO `sys_apis` VALUES (115, '2022-03-09 13:20:15.308', '2022-03-09 13:20:15.308', NULL, '/ns/getNocStatusList', '获取故障状态列表', 'ns', 'GET');
INSERT INTO `sys_apis` VALUES (116, '2022-03-09 13:37:10.742', '2022-03-09 13:37:10.742', NULL, '/nt/createNocTeam', '新增故障业务组', 'nt', 'POST');
INSERT INTO `sys_apis` VALUES (117, '2022-03-09 13:37:10.746', '2022-03-09 13:37:10.746', NULL, '/nt/deleteNocTeam', '删除故障业务组', 'nt', 'DELETE');
INSERT INTO `sys_apis` VALUES (118, '2022-03-09 13:37:10.747', '2022-03-09 13:37:10.747', NULL, '/nt/deleteNocTeamByIds', '批量删除故障业务组', 'nt', 'DELETE');
INSERT INTO `sys_apis` VALUES (119, '2022-03-09 13:37:10.749', '2022-03-09 13:37:10.749', NULL, '/nt/updateNocTeam', '更新故障业务组', 'nt', 'PUT');
INSERT INTO `sys_apis` VALUES (120, '2022-03-09 13:37:10.751', '2022-03-09 13:37:10.751', NULL, '/nt/findNocTeam', '根据ID获取故障业务组', 'nt', 'GET');
INSERT INTO `sys_apis` VALUES (121, '2022-03-09 13:37:10.752', '2022-03-09 13:37:10.752', NULL, '/nt/getNocTeamList', '获取故障业务组列表', 'nt', 'GET');
INSERT INTO `sys_apis` VALUES (122, '2022-03-09 13:46:40.579', '2022-03-09 13:46:40.579', NULL, '/nr/createNocReasons', '创建故障原因', 'nr', 'POST');
INSERT INTO `sys_apis` VALUES (123, '2022-03-09 13:47:29.902', '2022-03-09 13:47:29.902', NULL, '/nr/deleteNocReasons', '删除故障原因', 'nr', 'DELETE');
INSERT INTO `sys_apis` VALUES (124, '2022-03-09 13:48:03.141', '2022-03-09 13:48:03.141', NULL, '/nr/deleteNocReasonsByIds', '批量删除故障原因', 'nr', 'DELETE');
INSERT INTO `sys_apis` VALUES (125, '2022-03-09 13:48:26.194', '2022-03-09 13:48:26.194', NULL, '/nr/updateNocReasons', '更新故障原因', 'nr', 'PUT');
INSERT INTO `sys_apis` VALUES (126, '2022-03-09 13:49:08.596', '2022-03-09 13:49:08.596', NULL, '/nr/findNocReasons', '根据ID获取故障原因', 'nr', 'GET');
INSERT INTO `sys_apis` VALUES (127, '2022-03-09 13:49:36.381', '2022-03-09 13:49:36.381', NULL, '/nr/getNocReasonsList', '获取故障原因列表', 'nr', 'GET');
INSERT INTO `sys_apis` VALUES (128, '2022-03-09 15:16:59.593', '2022-03-09 15:16:59.593', NULL, '/ndr/createNocDirectReasons', '新增故障一级原因', 'ndr', 'POST');
INSERT INTO `sys_apis` VALUES (129, '2022-03-09 15:16:59.596', '2022-03-09 15:16:59.596', NULL, '/ndr/deleteNocDirectReasons', '删除故障一级原因', 'ndr', 'DELETE');
INSERT INTO `sys_apis` VALUES (130, '2022-03-09 15:16:59.599', '2022-03-09 15:16:59.599', NULL, '/ndr/deleteNocDirectReasonsByIds', '批量删除故障一级原因', 'ndr', 'DELETE');
INSERT INTO `sys_apis` VALUES (131, '2022-03-09 15:16:59.600', '2022-03-09 15:16:59.600', NULL, '/ndr/updateNocDirectReasons', '更新故障一级原因', 'ndr', 'PUT');
INSERT INTO `sys_apis` VALUES (132, '2022-03-09 15:16:59.602', '2022-03-09 15:16:59.602', NULL, '/ndr/findNocDirectReasons', '根据ID获取故障一级原因', 'ndr', 'GET');
INSERT INTO `sys_apis` VALUES (133, '2022-03-09 15:16:59.603', '2022-03-09 15:16:59.603', NULL, '/ndr/getNocDirectReasonsList', '获取故障一级原因列表', 'ndr', 'GET');
INSERT INTO `sys_apis` VALUES (134, '2022-03-15 14:54:01.029', '2022-03-15 14:54:01.029', NULL, '/noc/getNocDetailById', '根据ID获取故障的详细信息', '故障信息', 'GET');
INSERT INTO `sys_apis` VALUES (135, '2022-04-26 17:50:35.881', '2022-04-26 17:50:35.881', NULL, '/ymsDomainGroup/createYmsDomainGroup', '新增ymsDomainGroup表', 'ymsDomainGroup', 'POST');
INSERT INTO `sys_apis` VALUES (136, '2022-04-26 17:50:35.972', '2022-04-26 17:50:35.972', NULL, '/ymsDomainGroup/deleteYmsDomainGroup', '删除ymsDomainGroup表', 'ymsDomainGroup', 'DELETE');
INSERT INTO `sys_apis` VALUES (137, '2022-04-26 17:50:35.979', '2022-04-26 17:50:35.979', NULL, '/ymsDomainGroup/deleteYmsDomainGroupByIds', '批量删除ymsDomainGroup表', 'ymsDomainGroup', 'DELETE');
INSERT INTO `sys_apis` VALUES (138, '2022-04-26 17:50:36.555', '2022-04-26 17:50:36.555', NULL, '/ymsDomainGroup/updateYmsDomainGroup', '更新ymsDomainGroup表', 'ymsDomainGroup', 'PUT');
INSERT INTO `sys_apis` VALUES (139, '2022-04-26 17:50:36.560', '2022-04-26 17:50:36.560', NULL, '/ymsDomainGroup/findYmsDomainGroup', '根据ID获取ymsDomainGroup表', 'ymsDomainGroup', 'GET');
INSERT INTO `sys_apis` VALUES (140, '2022-04-26 17:50:37.057', '2022-04-26 17:50:37.057', NULL, '/ymsDomainGroup/getYmsDomainGroupList', '获取ymsDomainGroup表列表', 'ymsDomainGroup', 'GET');
COMMIT;

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `authority_name` varchar(191) DEFAULT NULL COMMENT '角色名',
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
BEGIN;
INSERT INTO `sys_authorities` VALUES ('2022-01-15 12:13:04.148', '2022-03-27 22:18:58.233', NULL, '10086', '只读用户', '0', 'noc_list');
INSERT INTO `sys_authorities` VALUES ('2022-01-15 11:57:05.031', '2022-01-15 11:57:05.031', NULL, '888', '普通用户', '0', 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2022-01-15 11:57:05.031', '2022-01-15 11:57:05.031', NULL, '8881', '普通用户子角色', '888', 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2022-03-27 22:11:18.569', '2022-03-27 22:16:34.461', NULL, '9527', '故障管理员', '0', 'noc_list');
INSERT INTO `sys_authorities` VALUES ('2022-01-15 11:57:05.031', '2022-01-15 12:50:43.511', NULL, '9528', '测试角色', '0', 'dashboard');
COMMIT;

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_menus`;
CREATE TABLE `sys_authority_menus` (
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`sys_authority_authority_id`,`sys_base_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_authority_menus` VALUES ('10086', 26);
INSERT INTO `sys_authority_menus` VALUES ('888', 1);
INSERT INTO `sys_authority_menus` VALUES ('888', 2);
INSERT INTO `sys_authority_menus` VALUES ('888', 3);
INSERT INTO `sys_authority_menus` VALUES ('888', 4);
INSERT INTO `sys_authority_menus` VALUES ('888', 5);
INSERT INTO `sys_authority_menus` VALUES ('888', 6);
INSERT INTO `sys_authority_menus` VALUES ('888', 7);
INSERT INTO `sys_authority_menus` VALUES ('888', 8);
INSERT INTO `sys_authority_menus` VALUES ('888', 9);
INSERT INTO `sys_authority_menus` VALUES ('888', 10);
INSERT INTO `sys_authority_menus` VALUES ('888', 11);
INSERT INTO `sys_authority_menus` VALUES ('888', 12);
INSERT INTO `sys_authority_menus` VALUES ('888', 13);
INSERT INTO `sys_authority_menus` VALUES ('888', 14);
INSERT INTO `sys_authority_menus` VALUES ('888', 15);
INSERT INTO `sys_authority_menus` VALUES ('888', 16);
INSERT INTO `sys_authority_menus` VALUES ('888', 17);
INSERT INTO `sys_authority_menus` VALUES ('888', 18);
INSERT INTO `sys_authority_menus` VALUES ('888', 19);
INSERT INTO `sys_authority_menus` VALUES ('888', 20);
INSERT INTO `sys_authority_menus` VALUES ('888', 22);
INSERT INTO `sys_authority_menus` VALUES ('888', 23);
INSERT INTO `sys_authority_menus` VALUES ('888', 24);
INSERT INTO `sys_authority_menus` VALUES ('888', 25);
INSERT INTO `sys_authority_menus` VALUES ('8881', 1);
INSERT INTO `sys_authority_menus` VALUES ('8881', 2);
INSERT INTO `sys_authority_menus` VALUES ('8881', 8);
INSERT INTO `sys_authority_menus` VALUES ('9527', 26);
INSERT INTO `sys_authority_menus` VALUES ('9527', 27);
INSERT INTO `sys_authority_menus` VALUES ('9528', 1);
INSERT INTO `sys_authority_menus` VALUES ('9528', 2);
INSERT INTO `sys_authority_menus` VALUES ('9528', 3);
INSERT INTO `sys_authority_menus` VALUES ('9528', 4);
INSERT INTO `sys_authority_menus` VALUES ('9528', 5);
INSERT INTO `sys_authority_menus` VALUES ('9528', 6);
INSERT INTO `sys_authority_menus` VALUES ('9528', 7);
INSERT INTO `sys_authority_menus` VALUES ('9528', 8);
INSERT INTO `sys_authority_menus` VALUES ('9528', 9);
INSERT INTO `sys_authority_menus` VALUES ('9528', 10);
INSERT INTO `sys_authority_menus` VALUES ('9528', 11);
INSERT INTO `sys_authority_menus` VALUES ('9528', 12);
INSERT INTO `sys_authority_menus` VALUES ('9528', 13);
INSERT INTO `sys_authority_menus` VALUES ('9528', 14);
INSERT INTO `sys_authority_menus` VALUES ('9528', 15);
INSERT INTO `sys_authority_menus` VALUES ('9528', 16);
INSERT INTO `sys_authority_menus` VALUES ('9528', 17);
INSERT INTO `sys_authority_menus` VALUES ('9528', 18);
INSERT INTO `sys_authority_menus` VALUES ('9528', 19);
INSERT INTO `sys_authority_menus` VALUES ('9528', 20);
INSERT INTO `sys_authority_menus` VALUES ('9528', 21);
INSERT INTO `sys_authority_menus` VALUES ('9528', 23);
INSERT INTO `sys_authority_menus` VALUES ('9528', 24);
INSERT INTO `sys_authority_menus` VALUES ('9528', 25);
INSERT INTO `sys_authority_menus` VALUES ('9528', 26);
INSERT INTO `sys_authority_menus` VALUES ('9528', 27);
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_code_histories
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_histories`;
CREATE TABLE `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `request_meta` text,
  `auto_code_path` text,
  `injection_meta` text,
  `struct_name` varchar(191) DEFAULT NULL,
  `struct_cn_name` varchar(191) DEFAULT NULL,
  `api_ids` varchar(191) DEFAULT NULL,
  `flag` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_auto_code_histories
-- ----------------------------
BEGIN;
INSERT INTO `sys_auto_code_histories` VALUES (1, '2022-01-15 14:05:30.488', '2022-01-15 14:05:30.488', '2022-03-23 10:11:35.543', 'noc', '{\"structName\":\"Noc\",\"tableName\":\"noc\",\"packageName\":\"noc\",\"humpPackageName\":\"noc\",\"abbreviation\":\"故障信息\",\"description\":\"故障信息\",\"autoCreateApiToSql\":true,\"autoMoveFile\":false,\"fields\":[{\"fieldName\":\"Serial_number\",\"fieldDesc\":\"故障编号\",\"fieldType\":\"string\",\"fieldJson\":\"serial_number\",\"dataTypeLong\":\"255\",\"comment\":\"故障编号\",\"columnName\":\"serial_number\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Title\",\"fieldDesc\":\"故障标题\",\"fieldType\":\"string\",\"fieldJson\":\"title\",\"dataTypeLong\":\"255\",\"comment\":\"故障标题\",\"columnName\":\"title\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Priority_id\",\"fieldDesc\":\"故障等级\",\"fieldType\":\"int\",\"fieldJson\":\"priority_id\",\"dataTypeLong\":\"4\",\"comment\":\"故障等级\",\"columnName\":\"priority_id\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Status\",\"fieldDesc\":\"故障状态\",\"fieldType\":\"int\",\"fieldJson\":\"status\",\"dataTypeLong\":\"4\",\"comment\":\"故障状态\",\"columnName\":\"status\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Responsible_dept\",\"fieldDesc\":\"故障责任部门id\",\"fieldType\":\"int\",\"fieldJson\":\"responsible_dept\",\"dataTypeLong\":\"\",\"comment\":\"故障责任部门id\",\"columnName\":\"responsible_dept\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Responsible_team\",\"fieldDesc\":\"故障责任业务线id\",\"fieldType\":\"int\",\"fieldJson\":\"responsible_team\",\"dataTypeLong\":\"\",\"comment\":\"故障责任业务线id\",\"columnName\":\"responsible_team\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Noc_reason\",\"fieldDesc\":\"故障原因\",\"fieldType\":\"int\",\"fieldJson\":\"noc_reason\",\"dataTypeLong\":\"\",\"comment\":\"故障原因\",\"columnName\":\"noc_reason\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Direct_reason_id\",\"fieldDesc\":\"故障二级原因\",\"fieldType\":\"int\",\"fieldJson\":\"direct_reason_id\",\"dataTypeLong\":\"\",\"comment\":\"故障二级原因\",\"columnName\":\"direct_reason_id\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Desc\",\"fieldDesc\":\"故障概述\",\"fieldType\":\"string\",\"fieldJson\":\"desc\",\"dataTypeLong\":\"\",\"comment\":\"故障概述\",\"columnName\":\"desc\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Detail\",\"fieldDesc\":\"故障详细信息\",\"fieldType\":\"string\",\"fieldJson\":\"detail\",\"dataTypeLong\":\"\",\"comment\":\"故障详细信息\",\"columnName\":\"detail\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Analysis\",\"fieldDesc\":\"故障分析内容\",\"fieldType\":\"string\",\"fieldJson\":\"analysis\",\"dataTypeLong\":\"\",\"comment\":\"故障分析内容\",\"columnName\":\"analysis\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Start_time\",\"fieldDesc\":\"故障开始时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"start_time\",\"dataTypeLong\":\"\",\"comment\":\"故障开始时间\",\"columnName\":\"start_time\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Fixed_time\",\"fieldDesc\":\"故障修复时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"fixed_time\",\"dataTypeLong\":\"\",\"comment\":\"故障修复时间\",\"columnName\":\"fixed_time\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Found_time\",\"fieldDesc\":\"故障发现时间\",\"fieldType\":\"time.Time\",\"fieldJson\":\"found_time\",\"dataTypeLong\":\"\",\"comment\":\"\",\"columnName\":\"found_time\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Declarant_uid\",\"fieldDesc\":\"故障申报人ID\",\"fieldType\":\"int\",\"fieldJson\":\"declarant_uid\",\"dataTypeLong\":\"\",\"comment\":\"故障申报人ID\",\"columnName\":\"declarant_uid\",\"fieldSearchType\":\"=\",\"dictType\":\"int\"},{\"fieldName\":\"Declarant_umail\",\"fieldDesc\":\"故障申报人邮箱\",\"fieldType\":\"string\",\"fieldJson\":\"declarant_umail\",\"dataTypeLong\":\"\",\"comment\":\"故障申报人邮箱\",\"columnName\":\"declarant_umail\",\"fieldSearchType\":\"=\",\"dictType\":\"\"},{\"fieldName\":\"Reviewer_email\",\"fieldDesc\":\"故障复核人邮箱\",\"fieldType\":\"string\",\"fieldJson\":\"reviewer_email\",\"dataTypeLong\":\"\",\"comment\":\"故障复核人邮箱\",\"columnName\":\"reviewer_email\",\"fieldSearchType\":\"=\",\"dictType\":\"\"}]}', '', '', 'Noc', '故障信息', '85;86;87;88;89;90;', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menu_parameters
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_parameters`;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_base_menu_parameters
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menus`;
CREATE TABLE `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_base_menus` VALUES (1, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', 1, 0, 0, '仪表盘', 'odometer', 0);
INSERT INTO `sys_base_menus` VALUES (2, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'about', 'about', 0, 'view/about/index.vue', 7, 0, 0, '关于我们', 'info-filled', 0);
INSERT INTO `sys_base_menus` VALUES (3, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', 3, 0, 0, '超级管理员', 'user', 0);
INSERT INTO `sys_base_menus` VALUES (4, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', 1, 0, 0, '角色管理', 'avatar', 0);
INSERT INTO `sys_base_menus` VALUES (5, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', 2, 1, 0, '菜单管理', 'tickets', 0);
INSERT INTO `sys_base_menus` VALUES (6, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'api', 'api', 0, 'view/superAdmin/api/api.vue', 3, 1, 0, 'api管理', 'platform', 0);
INSERT INTO `sys_base_menus` VALUES (7, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'user', 'user', 0, 'view/superAdmin/user/user.vue', 4, 0, 0, '用户管理', 'coordinate', 0);
INSERT INTO `sys_base_menus` VALUES (8, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'person', 'person', 1, 'view/person/person.vue', 4, 0, 0, '个人信息', 'message', 0);
INSERT INTO `sys_base_menus` VALUES (9, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'example', 'example', 0, 'view/example/index.vue', 6, 0, 0, '示例文件', 'management', 0);
INSERT INTO `sys_base_menus` VALUES (10, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '9', 'excel', 'excel', 0, 'view/example/excel/excel.vue', 4, 0, 0, 'excel导入导出', 'takeaway-box', 0);
INSERT INTO `sys_base_menus` VALUES (11, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '9', 'upload', 'upload', 0, 'view/example/upload/upload.vue', 5, 0, 0, '媒体库（上传下载）', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (12, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '9', 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', 6, 0, 0, '断点续传', 'upload-filled', 0);
INSERT INTO `sys_base_menus` VALUES (13, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '9', 'customer', 'customer', 0, 'view/example/customer/customer.vue', 7, 0, 0, '客户列表（资源示例）', 'avatar', 0);
INSERT INTO `sys_base_menus` VALUES (14, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', 5, 0, 0, '系统工具', 'tools', 0);
INSERT INTO `sys_base_menus` VALUES (15, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '14', 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', 1, 1, 0, '代码生成器', 'cpu', 0);
INSERT INTO `sys_base_menus` VALUES (16, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '14', 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', 2, 1, 0, '表单生成器', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (17, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '14', 'system', 'system', 0, 'view/systemTools/system/system.vue', 3, 0, 0, '系统配置', 'operation', 0);
INSERT INTO `sys_base_menus` VALUES (18, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'dictionary', 'dictionary', 0, 'view/superAdmin/dictionary/sysDictionary.vue', 5, 0, 0, '字典管理', 'notebook', 0);
INSERT INTO `sys_base_menus` VALUES (19, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'dictionaryDetail/:id', 'dictionaryDetail', 1, 'view/superAdmin/dictionary/sysDictionaryDetail.vue', 1, 0, 0, '字典详情', 'order', 0);
INSERT INTO `sys_base_menus` VALUES (20, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '3', 'operation', 'operation', 0, 'view/superAdmin/operation/sysOperationRecord.vue', 6, 0, 0, '操作历史', 'pie-chart', 0);
INSERT INTO `sys_base_menus` VALUES (21, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '9', 'simpleUploader', 'simpleUploader', 0, 'view/example/simpleUploader/simpleUploader', 6, 0, 0, '断点续传（插件版）', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (22, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 0, '/', 0, 0, 0, '官方网站', 'home-filled', 0);
INSERT INTO `sys_base_menus` VALUES (23, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '0', 'state', 'state', 0, 'view/system/state.vue', 6, 0, 0, '服务器状态', 'cloudy', 0);
INSERT INTO `sys_base_menus` VALUES (24, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '14', 'autoCodeAdmin', 'autoCodeAdmin', 0, 'view/systemTools/autoCodeAdmin/index.vue', 1, 0, 0, '自动化代码管理', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (25, '2022-01-15 11:57:05.023', '2022-01-15 11:57:05.023', NULL, 0, '14', 'autoCodeEdit/:id', 'autoCodeEdit', 1, 'view/systemTools/autoCode/index.vue', 0, 0, 0, '自动化代码（复用）', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (26, '2022-01-15 12:04:53.223', '2022-01-15 12:09:01.667', NULL, 0, '0', 'noc_list', 'noc_list', 0, 'view/noc_list/noc_list.vue', 1, 1, 0, '故障列表', 'list', 0);
INSERT INTO `sys_base_menus` VALUES (27, '2022-01-15 12:50:21.018', '2022-03-27 21:04:53.947', NULL, 0, '0', 'noc_admin', 'noc_admin', 0, 'view/noc_admin/noc_admin.vue', 2, 1, 0, '附件管理', 'cellphone', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_data_authority_id
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_authority_id`;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_data_authority_id
-- ----------------------------
BEGIN;
INSERT INTO `sys_data_authority_id` VALUES ('10086', '10086');
INSERT INTO `sys_data_authority_id` VALUES ('888', '888');
INSERT INTO `sys_data_authority_id` VALUES ('888', '8881');
INSERT INTO `sys_data_authority_id` VALUES ('888', '9528');
INSERT INTO `sys_data_authority_id` VALUES ('9528', '10086');
INSERT INTO `sys_data_authority_id` VALUES ('9528', '888');
INSERT INTO `sys_data_authority_id` VALUES ('9528', '8881');
INSERT INTO `sys_data_authority_id` VALUES ('9528', '9528');
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionaries` VALUES (1, '2022-01-15 11:57:05.033', '2022-01-15 11:57:05.033', NULL, '性别', 'gender', 1, '性别字典');
INSERT INTO `sys_dictionaries` VALUES (2, '2022-01-15 11:57:05.033', '2022-01-15 11:57:05.033', NULL, '数据库int类型', 'int', 1, 'int类型对应的数据库类型');
INSERT INTO `sys_dictionaries` VALUES (3, '2022-01-15 11:57:05.033', '2022-01-15 11:57:05.033', NULL, '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型');
INSERT INTO `sys_dictionaries` VALUES (4, '2022-01-15 11:57:05.033', '2022-01-15 11:57:05.033', NULL, '数据库浮点型', 'float64', 1, '数据库浮点型');
INSERT INTO `sys_dictionaries` VALUES (5, '2022-01-15 11:57:05.033', '2022-01-15 11:57:05.033', NULL, '数据库字符串', 'string', 1, '数据库字符串');
INSERT INTO `sys_dictionaries` VALUES (6, '2022-01-15 11:57:05.033', '2022-01-15 11:57:05.033', NULL, '数据库bool类型', 'bool', 1, '数据库bool类型');
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` bigint(20) DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionary_details` VALUES (1, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, '男', 1, 1, 1, 1);
INSERT INTO `sys_dictionary_details` VALUES (2, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, '女', 2, 1, 2, 1);
INSERT INTO `sys_dictionary_details` VALUES (3, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'smallint', 1, 1, 1, 2);
INSERT INTO `sys_dictionary_details` VALUES (4, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'mediumint', 2, 1, 2, 2);
INSERT INTO `sys_dictionary_details` VALUES (5, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'int', 3, 1, 3, 2);
INSERT INTO `sys_dictionary_details` VALUES (6, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'bigint', 4, 1, 4, 2);
INSERT INTO `sys_dictionary_details` VALUES (7, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'date', 0, 1, 0, 3);
INSERT INTO `sys_dictionary_details` VALUES (8, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'time', 1, 1, 1, 3);
INSERT INTO `sys_dictionary_details` VALUES (9, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'year', 2, 1, 2, 3);
INSERT INTO `sys_dictionary_details` VALUES (10, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'datetime', 3, 1, 3, 3);
INSERT INTO `sys_dictionary_details` VALUES (11, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'timestamp', 5, 1, 5, 3);
INSERT INTO `sys_dictionary_details` VALUES (12, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'float', 0, 1, 0, 4);
INSERT INTO `sys_dictionary_details` VALUES (13, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'double', 1, 1, 1, 4);
INSERT INTO `sys_dictionary_details` VALUES (14, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'decimal', 2, 1, 2, 4);
INSERT INTO `sys_dictionary_details` VALUES (15, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'char', 0, 1, 0, 5);
INSERT INTO `sys_dictionary_details` VALUES (16, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'varchar', 1, 1, 1, 5);
INSERT INTO `sys_dictionary_details` VALUES (17, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'tinyblob', 2, 1, 2, 5);
INSERT INTO `sys_dictionary_details` VALUES (18, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'tinytext', 3, 1, 3, 5);
INSERT INTO `sys_dictionary_details` VALUES (19, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'text', 4, 1, 4, 5);
INSERT INTO `sys_dictionary_details` VALUES (20, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'blob', 5, 1, 5, 5);
INSERT INTO `sys_dictionary_details` VALUES (21, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'mediumblob', 6, 1, 6, 5);
INSERT INTO `sys_dictionary_details` VALUES (22, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'mediumtext', 7, 1, 7, 5);
INSERT INTO `sys_dictionary_details` VALUES (23, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'longblob', 8, 1, 8, 5);
INSERT INTO `sys_dictionary_details` VALUES (24, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'longtext', 9, 1, 9, 5);
INSERT INTO `sys_dictionary_details` VALUES (25, '2022-01-15 11:57:05.276', '2022-01-15 11:57:05.276', NULL, 'tinyint', 0, 1, 0, 6);
COMMIT;

-- ----------------------------
-- Table structure for sys_operation_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_records`;
CREATE TABLE `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) DEFAULT NULL COMMENT '错误信息',
  `body` text COMMENT '请求Body',
  `resp` text COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_operation_records
-- ----------------------------
BEGIN;
INSERT INTO `sys_operation_records` VALUES (84, '2022-02-10 11:14:42.738', '2022-02-10 11:14:42.738', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 6240308, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '', '{\"id\":90}', '{\"code\":0,\"data\":{\"api\":{\"ID\":90,\"CreatedAt\":\"2022-01-15T14:05:30.219+08:00\",\"UpdatedAt\":\"2022-01-21T15:04:41.995+08:00\",\"path\":\"/noc/getNocList\",\"description\":\"获取故障信息列表\",\"apiGroup\":\"故障信息\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (85, '2022-02-10 11:14:46.942', '2022-02-10 11:14:46.942', NULL, '127.0.0.1', 'POST', '/api/updateApi', 200, 117947994, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '', '{\"ID\":90,\"CreatedAt\":\"2022-01-15T14:05:30.219+08:00\",\"UpdatedAt\":\"2022-01-21T15:04:41.995+08:00\",\"path\":\"/noc/getNocList\",\"description\":\"获取故障信息列表\",\"apiGroup\":\"故障信息\",\"method\":\"GET\"}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (86, '2022-02-10 11:40:07.512', '2022-02-10 11:40:07.512', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 20963072, 'ApiPOST Runtime +https://www.apipost.cn', '', '{\"ID\":773,\"title\":\"ceshi1\",\"status\":2}', '{\"code\":7,\"data\":{},\"msg\":\"更新失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (87, '2022-02-10 11:40:28.113', '2022-02-10 11:40:28.113', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 21679209, 'ApiPOST Runtime +https://www.apipost.cn', '', '{\"serial_number\":\"20220117_1\",\"title\":\"ceshi\",\"status\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (88, '2022-02-10 11:40:52.303', '2022-02-10 11:40:52.303', NULL, '127.0.0.1', 'DELETE', '/noc/deleteNocById', 200, 7196521, 'ApiPOST Runtime +https://www.apipost.cn', '', '{\"ID\":12}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (89, '2022-02-11 16:44:55.028', '2022-02-11 16:44:55.028', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 39372971, 'ApiPOST Runtime +https://www.apipost.cn', '', '{\"serial_number\":\"20220117_1\",\"title\":\"ceshi\",\"status\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (90, '2022-02-11 16:45:15.812', '2022-02-11 16:45:15.812', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 24084793, 'ApiPOST Runtime +https://www.apipost.cn', '', '{\"serial_number\":\"20220117_1\",\"title\":\"ceshi\",\"status_id\":1}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (91, '2022-03-08 18:01:15.236', '2022-03-08 18:01:15.236', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 219111155, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"POST\"},{\"path\":\"/api/updateApi\",\"method\":\"POST\"},{\"path\":\"/api/getApiList\",\"method\":\"POST\"},{\"path\":\"/api/getAllApis\",\"method\":\"POST\"},{\"path\":\"/api/getApiById\",\"method\":\"POST\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (92, '2022-03-08 18:01:48.594', '2022-03-08 18:01:48.594', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 4207785, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":97}', '{\"code\":0,\"data\":{\"api\":{\"ID\":97,\"CreatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"UpdatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"path\":\"/NP/getNocPriorityList\",\"description\":\"获取故障级别列表\",\"apiGroup\":\"NP\",\"method\":\"GET\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (93, '2022-03-08 18:01:56.932', '2022-03-08 18:01:56.932', NULL, '127.0.0.1', 'POST', '/api/updateApi', 200, 3909786, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":97,\"CreatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"UpdatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"path\":\"/np/getNocPriorityList\",\"description\":\"获取故障级别列表\",\"apiGroup\":\"NP\",\"method\":\"GET\"}', '{\"code\":7,\"data\":{},\"msg\":\"修改失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (94, '2022-03-08 18:02:34.605', '2022-03-08 18:02:34.605', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 3100726, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":97}', '{\"code\":0,\"data\":{\"api\":{\"ID\":97,\"CreatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"UpdatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"path\":\"/NP/getNocPriorityList\",\"description\":\"获取故障级别列表\",\"apiGroup\":\"NP\",\"method\":\"GET\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (95, '2022-03-08 18:02:56.912', '2022-03-08 18:02:56.912', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 1388092, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":97}', '{\"code\":0,\"data\":{\"api\":{\"ID\":97,\"CreatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"UpdatedAt\":\"2022-03-08T17:14:36.167+08:00\",\"path\":\"/NP/getNocPriorityList\",\"description\":\"获取故障级别列表\",\"apiGroup\":\"NP\",\"method\":\"GET\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (96, '2022-03-09 11:45:34.759', '2022-03-09 11:45:34.759', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 247336643, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"POST\"},{\"path\":\"/api/updateApi\",\"method\":\"POST\"},{\"path\":\"/api/getApiList\",\"method\":\"POST\"},{\"path\":\"/api/getAllApis\",\"method\":\"POST\"},{\"path\":\"/api/getApiById\",\"method\":\"POST\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/ns/getNocReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (97, '2022-03-09 13:43:42.196', '2022-03-09 13:43:42.196', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 167238212, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"POST\"},{\"path\":\"/api/updateApi\",\"method\":\"POST\"},{\"path\":\"/api/getApiList\",\"method\":\"POST\"},{\"path\":\"/api/getAllApis\",\"method\":\"POST\"},{\"path\":\"/api/getApiById\",\"method\":\"POST\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/ns/getNocReasonsList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocStatus\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocStatus\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocStatusByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocStatus\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nd/createNocDepartment\",\"method\":\"POST\"},{\"path\":\"/nd/deleteNocDepartment\",\"method\":\"DELETE\"},{\"path\":\"/nd/deleteNocDepartmentByIds\",\"method\":\"DELETE\"},{\"path\":\"/nd/updateNocDepartment\",\"method\":\"PUT\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/nt/createNocTeam\",\"method\":\"POST\"},{\"path\":\"/nt/deleteNocTeam\",\"method\":\"DELETE\"},{\"path\":\"/nt/deleteNocTeamByIds\",\"method\":\"DELETE\"},{\"path\":\"/nt/updateNocTeam\",\"method\":\"PUT\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (98, '2022-03-09 13:45:13.420', '2022-03-09 13:45:13.420', NULL, '127.0.0.1', 'DELETE', '/api/deleteApisByIds', 200, 76826088, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ids\":[98,99,100,101,102,103]}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (99, '2022-03-09 13:46:40.594', '2022-03-09 13:46:40.594', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 15950217, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/nr/createNocReasons\",\"apiGroup\":\"nr\",\"method\":\"POST\",\"description\":\"创建故障原因\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (100, '2022-03-09 13:47:29.913', '2022-03-09 13:47:29.913', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 14235715, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/nr/deleteNocReasons\",\"apiGroup\":\"nr\",\"method\":\"DELETE\",\"description\":\"删除故障原因\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (101, '2022-03-09 13:48:03.170', '2022-03-09 13:48:03.170', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 31743539, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/nr/deleteNocReasonsByIds\",\"apiGroup\":\"nr\",\"method\":\"DELETE\",\"description\":\"批量删除故障原因\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (102, '2022-03-09 13:48:26.244', '2022-03-09 13:48:26.244', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 51522919, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/nr/updateNocReasons\",\"apiGroup\":\"nr\",\"method\":\"PUT\",\"description\":\"更新故障原因\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (103, '2022-03-09 13:49:08.635', '2022-03-09 13:49:08.635', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 39493100, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/nr/findNocReasons\",\"apiGroup\":\"nr\",\"method\":\"GET\",\"description\":\"根据ID获取故障原因\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (104, '2022-03-09 13:49:36.438', '2022-03-09 13:49:36.438', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 58132502, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/nr/getNocReasonsList\",\"apiGroup\":\"nr\",\"method\":\"GET\",\"description\":\"获取故障原因列表\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (105, '2022-03-09 13:49:58.475', '2022-03-09 13:49:58.475', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 122143400, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"POST\"},{\"path\":\"/api/updateApi\",\"method\":\"POST\"},{\"path\":\"/api/getApiList\",\"method\":\"POST\"},{\"path\":\"/api/getAllApis\",\"method\":\"POST\"},{\"path\":\"/api/getApiById\",\"method\":\"POST\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/nd/createNocDepartment\",\"method\":\"POST\"},{\"path\":\"/nd/deleteNocDepartment\",\"method\":\"DELETE\"},{\"path\":\"/nd/deleteNocDepartmentByIds\",\"method\":\"DELETE\"},{\"path\":\"/nd/updateNocDepartment\",\"method\":\"PUT\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocStatus\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocStatus\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocStatusByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocStatus\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nt/createNocTeam\",\"method\":\"POST\"},{\"path\":\"/nt/deleteNocTeam\",\"method\":\"DELETE\"},{\"path\":\"/nt/deleteNocTeamByIds\",\"method\":\"DELETE\"},{\"path\":\"/nt/updateNocTeam\",\"method\":\"PUT\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"},{\"path\":\"/nr/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/nr/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/nr/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/nr/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/nr/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/nr/getNocReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (106, '2022-03-09 15:21:53.598', '2022-03-09 15:21:53.598', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 177201613, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"POST\"},{\"path\":\"/api/updateApi\",\"method\":\"POST\"},{\"path\":\"/api/getApiList\",\"method\":\"POST\"},{\"path\":\"/api/getAllApis\",\"method\":\"POST\"},{\"path\":\"/api/getApiById\",\"method\":\"POST\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/nd/createNocDepartment\",\"method\":\"POST\"},{\"path\":\"/nd/deleteNocDepartment\",\"method\":\"DELETE\"},{\"path\":\"/nd/deleteNocDepartmentByIds\",\"method\":\"DELETE\"},{\"path\":\"/nd/updateNocDepartment\",\"method\":\"PUT\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocStatus\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocStatus\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocStatusByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocStatus\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nt/createNocTeam\",\"method\":\"POST\"},{\"path\":\"/nt/deleteNocTeam\",\"method\":\"DELETE\"},{\"path\":\"/nt/deleteNocTeamByIds\",\"method\":\"DELETE\"},{\"path\":\"/nt/updateNocTeam\",\"method\":\"PUT\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"},{\"path\":\"/nr/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/nr/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/nr/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/nr/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/nr/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/nr/getNocReasonsList\",\"method\":\"GET\"},{\"path\":\"/ndr/createNocDirectReasons\",\"method\":\"POST\"},{\"path\":\"/ndr/deleteNocDirectReasons\",\"method\":\"DELETE\"},{\"path\":\"/ndr/deleteNocDirectReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/ndr/updateNocDirectReasons\",\"method\":\"PUT\"},{\"path\":\"/ndr/findNocDirectReasons\",\"method\":\"GET\"},{\"path\":\"/ndr/getNocDirectReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (107, '2022-03-09 19:21:01.703', '2022-03-09 19:21:01.703', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 5183056, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":18}', '{\"code\":0,\"data\":{\"api\":{\"ID\":18,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/getApiById\",\"description\":\"获取api详细信息\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (108, '2022-03-14 13:19:09.843', '2022-03-14 13:19:09.843', NULL, '127.0.0.1', 'POST', '/user/setUserAuthority', 200, 79539343, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"10086\"}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (109, '2022-03-14 13:19:21.602', '2022-03-14 13:19:21.602', NULL, '127.0.0.1', 'POST', '/user/setUserAuthority', 200, 85315784, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\"}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (110, '2022-03-14 13:21:36.241', '2022-03-14 13:21:36.241', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 14561589, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"1\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (111, '2022-03-14 13:21:48.868', '2022-03-14 13:21:48.868', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 3468385, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"1\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (112, '2022-03-14 13:23:36.019', '2022-03-14 13:23:36.019', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 4384569, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"1\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (113, '2022-03-14 13:33:53.832', '2022-03-14 13:33:53.832', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 7250236, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"\",\"serial_number\":\"\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (114, '2022-03-14 13:37:02.409', '2022-03-14 13:37:02.409', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 46795999, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"1\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (115, '2022-03-14 13:41:29.128', '2022-03-14 13:41:29.128', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 2460358, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"1\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (116, '2022-03-14 14:01:15.607', '2022-03-14 14:01:15.607', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 68186603, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"1\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (117, '2022-03-14 15:42:04.464', '2022-03-14 15:42:04.464', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 65042282, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"2\",\"serial_number\":\"2\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (118, '2022-03-15 14:54:01.116', '2022-03-15 14:54:01.116', NULL, '127.0.0.1', 'POST', '/api/createApi', 200, 111553733, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"path\":\"/noc/getNocDetailById\",\"apiGroup\":\"故障信息\",\"method\":\"GET\",\"description\":\"根据ID获取故障的详细信息\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (119, '2022-03-15 14:57:24.970', '2022-03-15 14:57:24.970', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 266646668, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"authorityId\":\"9528\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/deleteUser\",\"method\":\"DELETE\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserList\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/setUserAuthorities\",\"method\":\"POST\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/user/resetPassword\",\"method\":\"POST\"},{\"path\":\"/api/createApi\",\"method\":\"POST\"},{\"path\":\"/api/deleteApi\",\"method\":\"POST\"},{\"path\":\"/api/updateApi\",\"method\":\"POST\"},{\"path\":\"/api/getApiList\",\"method\":\"POST\"},{\"path\":\"/api/getAllApis\",\"method\":\"POST\"},{\"path\":\"/api/getApiById\",\"method\":\"POST\"},{\"path\":\"/api/deleteApisByIds\",\"method\":\"DELETE\"},{\"path\":\"/authority/copyAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/createAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/deleteAuthority\",\"method\":\"POST\"},{\"path\":\"/authority/updateAuthority\",\"method\":\"PUT\"},{\"path\":\"/authority/getAuthorityList\",\"method\":\"POST\"},{\"path\":\"/authority/setDataAuthority\",\"method\":\"POST\"},{\"path\":\"/casbin/updateCasbin\",\"method\":\"POST\"},{\"path\":\"/casbin/getPolicyPathByAuthorityId\",\"method\":\"POST\"},{\"path\":\"/menu/addBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/menu/deleteBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/updateBaseMenu\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuById\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuList\",\"method\":\"POST\"},{\"path\":\"/menu/getBaseMenuTree\",\"method\":\"POST\"},{\"path\":\"/menu/getMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/addMenuAuthority\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/system/getServerInfo\",\"method\":\"POST\"},{\"path\":\"/system/getSystemConfig\",\"method\":\"POST\"},{\"path\":\"/system/setSystemConfig\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"PUT\"},{\"path\":\"/customer/customer\",\"method\":\"POST\"},{\"path\":\"/customer/customer\",\"method\":\"DELETE\"},{\"path\":\"/customer/customer\",\"method\":\"GET\"},{\"path\":\"/customer/customerList\",\"method\":\"GET\"},{\"path\":\"/autoCode/getDB\",\"method\":\"GET\"},{\"path\":\"/autoCode/getTables\",\"method\":\"GET\"},{\"path\":\"/autoCode/createTemp\",\"method\":\"POST\"},{\"path\":\"/autoCode/preview\",\"method\":\"POST\"},{\"path\":\"/autoCode/getColumn\",\"method\":\"GET\"},{\"path\":\"/autoCode/getMeta\",\"method\":\"POST\"},{\"path\":\"/autoCode/rollback\",\"method\":\"POST\"},{\"path\":\"/autoCode/getSysHistory\",\"method\":\"POST\"},{\"path\":\"/autoCode/delSysHistory\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/updateSysDictionaryDetail\",\"method\":\"PUT\"},{\"path\":\"/sysDictionaryDetail/createSysDictionaryDetail\",\"method\":\"POST\"},{\"path\":\"/sysDictionaryDetail/deleteSysDictionaryDetail\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionaryDetail/findSysDictionaryDetail\",\"method\":\"GET\"},{\"path\":\"/sysDictionaryDetail/getSysDictionaryDetailList\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/createSysDictionary\",\"method\":\"POST\"},{\"path\":\"/sysDictionary/deleteSysDictionary\",\"method\":\"DELETE\"},{\"path\":\"/sysDictionary/updateSysDictionary\",\"method\":\"PUT\"},{\"path\":\"/sysDictionary/findSysDictionary\",\"method\":\"GET\"},{\"path\":\"/sysDictionary/getSysDictionaryList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/createSysOperationRecord\",\"method\":\"POST\"},{\"path\":\"/sysOperationRecord/findSysOperationRecord\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/getSysOperationRecordList\",\"method\":\"GET\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecord\",\"method\":\"DELETE\"},{\"path\":\"/sysOperationRecord/deleteSysOperationRecordByIds\",\"method\":\"DELETE\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/email/emailTest\",\"method\":\"POST\"},{\"path\":\"/email/emailSend\",\"method\":\"POST\"},{\"path\":\"/excel/importExcel\",\"method\":\"POST\"},{\"path\":\"/excel/loadExcel\",\"method\":\"GET\"},{\"path\":\"/excel/exportExcel\",\"method\":\"POST\"},{\"path\":\"/excel/downloadTemplate\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/noc/getNocDetailById\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/nd/createNocDepartment\",\"method\":\"POST\"},{\"path\":\"/nd/deleteNocDepartment\",\"method\":\"DELETE\"},{\"path\":\"/nd/deleteNocDepartmentByIds\",\"method\":\"DELETE\"},{\"path\":\"/nd/updateNocDepartment\",\"method\":\"PUT\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocStatus\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocStatus\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocStatusByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocStatus\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nt/createNocTeam\",\"method\":\"POST\"},{\"path\":\"/nt/deleteNocTeam\",\"method\":\"DELETE\"},{\"path\":\"/nt/deleteNocTeamByIds\",\"method\":\"DELETE\"},{\"path\":\"/nt/updateNocTeam\",\"method\":\"PUT\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"},{\"path\":\"/nr/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/nr/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/nr/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/nr/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/nr/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/nr/getNocReasonsList\",\"method\":\"GET\"},{\"path\":\"/ndr/createNocDirectReasons\",\"method\":\"POST\"},{\"path\":\"/ndr/deleteNocDirectReasons\",\"method\":\"DELETE\"},{\"path\":\"/ndr/deleteNocDirectReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/ndr/updateNocDirectReasons\",\"method\":\"PUT\"},{\"path\":\"/ndr/findNocDirectReasons\",\"method\":\"GET\"},{\"path\":\"/ndr/getNocDirectReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (120, '2022-03-15 15:23:13.795', '2022-03-15 15:23:13.795', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 89354801, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"2\",\"serial_number\":\"1\",\"declarant_uid\":1}', '{\"code\":7,\"data\":{},\"msg\":\"创建失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (121, '2022-03-15 15:23:43.859', '2022-03-15 15:23:43.859', NULL, '127.0.0.1', 'POST', '/noc/createNoc', 200, 68002417, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"title\":\"2\",\"serial_number\":\"3\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (122, '2022-03-15 16:51:44.682', '2022-03-15 16:51:44.682', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 7475488, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":18}', '{\"code\":0,\"data\":{\"api\":{\"ID\":18,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/getApiById\",\"description\":\"获取api详细信息\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (123, '2022-03-15 16:51:55.240', '2022-03-15 16:51:55.240', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 3017776, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":18}', '{\"code\":0,\"data\":{\"api\":{\"ID\":18,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/getApiById\",\"description\":\"获取api详细信息\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (124, '2022-03-15 16:52:27.605', '2022-03-15 16:52:27.605', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 7470084, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":18}', '{\"code\":0,\"data\":{\"api\":{\"ID\":18,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/getApiById\",\"description\":\"获取api详细信息\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (125, '2022-03-15 16:58:17.578', '2022-03-15 16:58:17.578', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 5132481, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":15}', '{\"code\":0,\"data\":{\"api\":{\"ID\":15,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/updateApi\",\"description\":\"更新Api\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (126, '2022-03-22 19:53:12.858', '2022-03-22 19:53:12.858', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 207707847, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[74.99999994179234,14.285714287694137,57.14285715077655,9.523809527439253,52.38095244166785,5.000000002182787,50.00000008731149,4.9999999985448085],\"cores\":4},\"ram\":{\"usedMb\":11380,\"totalMb\":16384,\"usedPercent\":69},\"disk\":{\"usedMb\":224804,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (127, '2022-03-22 19:53:23.035', '2022-03-22 19:53:23.035', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 203825450, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[60.00000001164153,0,34.9999999825377,4.761904763719627,30.000000040745363,9.09090909060843,34.99999994179234,4.9999999985448085],\"cores\":4},\"ram\":{\"usedMb\":11361,\"totalMb\":16384,\"usedPercent\":69},\"disk\":{\"usedMb\":224781,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (128, '2022-03-22 19:53:33.315', '2022-03-22 19:53:33.315', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201317239, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[65,0,28.571428543710635,4.761904760254885,29.999999976716936,0,23.80952380820391,0],\"cores\":4},\"ram\":{\"usedMb\":10555,\"totalMb\":16384,\"usedPercent\":64},\"disk\":{\"usedMb\":224786,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (129, '2022-03-22 19:53:42.910', '2022-03-22 19:53:42.910', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200739825, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[55.00000001164154,5.000000005820766,29.999999976716936,0,26.315789505932223,0,30.000000069849193,0],\"cores\":4},\"ram\":{\"usedMb\":10107,\"totalMb\":16384,\"usedPercent\":61},\"disk\":{\"usedMb\":224787,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (130, '2022-03-22 19:53:52.912', '2022-03-22 19:53:52.912', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200364335, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[69.99999994179234,9.523809527439253,54.999999941792346,10.000000004365575,57.14285715077655,9.523809534533724,52.63157895059323,9.523809527439253],\"cores\":4},\"ram\":{\"usedMb\":10368,\"totalMb\":16384,\"usedPercent\":63},\"disk\":{\"usedMb\":224814,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (131, '2022-03-22 19:54:02.906', '2022-03-22 19:54:02.906', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200830454, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[75.00000002910383,14.285714294623622,57.14285717849449,9.523809527439253,55.00000000582077,9.523809527439253,45.000000023283064,14.285714287694137],\"cores\":4},\"ram\":{\"usedMb\":11058,\"totalMb\":16384,\"usedPercent\":67},\"disk\":{\"usedMb\":224817,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (132, '2022-03-22 19:54:12.906', '2022-03-22 19:54:12.906', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200475534, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[61.904761904761905,0,42.85714289673991,4.9999999985448085,45.00000007566996,9.52380951688004,36.8421052776695,9.523809523974512],\"cores\":4},\"ram\":{\"usedMb\":11210,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":224797,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (133, '2022-03-22 19:54:22.970', '2022-03-22 19:54:22.970', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201005087, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[78.94736839525423,9.999999997089617,52.631579015089244,15.000000006548362,52.63157895059323,14.285714268390576,54.999999941792346,15.000000002910383],\"cores\":4},\"ram\":{\"usedMb\":11252,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":223786,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (134, '2022-03-22 19:54:33.192', '2022-03-22 19:54:33.192', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 210419567, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[64.99999995925464,4.9999999985448085,35.000000023283064,0,35,0,35.00000001164153,5.000000002182787],\"cores\":4},\"ram\":{\"usedMb\":11218,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":223786,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (135, '2022-03-22 19:54:42.905', '2022-03-22 19:54:42.905', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201206846, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[76.19047621951403,30.000000005820766,75.00000002910383,33.3333333391079,69.99999999417923,35.00000000800355,70.00000002328306,30.000000005820766],\"cores\":4},\"ram\":{\"usedMb\":11460,\"totalMb\":16384,\"usedPercent\":69},\"disk\":{\"usedMb\":223787,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (136, '2022-03-22 19:54:52.914', '2022-03-22 19:54:52.914', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201188192, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[47.61904761376801,9.523809509950556,30.000000005820766,4.761904763719627,33.3333333056154,0,33.33333337952989,0],\"cores\":4},\"ram\":{\"usedMb\":11385,\"totalMb\":16384,\"usedPercent\":69},\"disk\":{\"usedMb\":223788,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (137, '2022-03-22 19:55:02.910', '2022-03-22 19:55:02.910', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201305874, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[68.42105257030772,4.9999999985448085,44.999999994179234,4.999999992724042,50.00000005820766,4.9999999985448085,45.000000023283064,0],\"cores\":4},\"ram\":{\"usedMb\":10862,\"totalMb\":16384,\"usedPercent\":66},\"disk\":{\"usedMb\":223788,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (138, '2022-03-22 19:55:12.902', '2022-03-22 19:55:12.902', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200344015, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[66.66666666666666,0,40,4.761904754975278,45.00000004656613,4.999999992724042,42.10526315789473,5.000000002182787],\"cores\":4},\"ram\":{\"usedMb\":10740,\"totalMb\":16384,\"usedPercent\":65},\"disk\":{\"usedMb\":223789,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (139, '2022-03-22 19:55:22.914', '2022-03-22 19:55:22.914', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 202004873, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[71.42857137313557,0,33.333333342572644,4.76190475844002,24.99999994179234,0,20,0],\"cores\":4},\"ram\":{\"usedMb\":11218,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":223790,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (140, '2022-03-22 19:55:32.903', '2022-03-22 19:55:32.903', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200742093, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[63.157894752966115,4.9999999985448085,45.000000023283064,0,25,4.761904754975278,21.052631517676147,0],\"cores\":4},\"ram\":{\"usedMb\":11063,\"totalMb\":16384,\"usedPercent\":67},\"disk\":{\"usedMb\":224807,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (141, '2022-03-22 19:55:42.923', '2022-03-22 19:55:42.923', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 202803219, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[61.90476184932604,4.761904767184368,35.00000004074536,0,26.315789443048597,4.9999999985448085,29.99999997089617,0],\"cores\":4},\"ram\":{\"usedMb\":10555,\"totalMb\":16384,\"usedPercent\":64},\"disk\":{\"usedMb\":224806,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (142, '2022-03-22 19:55:52.996', '2022-03-22 19:55:52.996', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200918955, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[68.42105257030772,5.263157893527541,65.0000000174623,4.9999999985448085,54.999999941792346,9.999999992724042,52.38095235323444,0],\"cores\":4},\"ram\":{\"usedMb\":10338,\"totalMb\":16384,\"usedPercent\":63},\"disk\":{\"usedMb\":224774,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (143, '2022-03-22 19:56:02.909', '2022-03-22 19:56:02.909', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201288898, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[75.00000005820766,4.761904760254885,35.00000001164153,4.9999999985448085,30.000000011641532,0,25,5.000000002182787],\"cores\":4},\"ram\":{\"usedMb\":10645,\"totalMb\":16384,\"usedPercent\":64},\"disk\":{\"usedMb\":224774,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (144, '2022-03-22 19:56:12.911', '2022-03-22 19:56:12.911', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200553478, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[26.315789444660997,0,21.052631574110166,4.9999999985448085,19.999999965075403,0,19.999999994179234,0],\"cores\":4},\"ram\":{\"usedMb\":10925,\"totalMb\":16384,\"usedPercent\":66},\"disk\":{\"usedMb\":224774,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (145, '2022-03-22 19:56:22.909', '2022-03-22 19:56:22.909', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 209978455, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[72.72727275132547,4.545454543650589,54.54545449253849,4.545454542147292,49.99999994708394,4.761904767184368,38.09523815199387,4.761904760254885],\"cores\":4},\"ram\":{\"usedMb\":11015,\"totalMb\":16384,\"usedPercent\":67},\"disk\":{\"usedMb\":223750,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (146, '2022-03-22 19:56:32.905', '2022-03-22 19:56:32.905', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201569393, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[26.315789505932223,0,19.999999994179234,0,14.99999997089617,0,15.000000034924597,0],\"cores\":4},\"ram\":{\"usedMb\":10970,\"totalMb\":16384,\"usedPercent\":66},\"disk\":{\"usedMb\":223750,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (147, '2022-03-22 19:56:42.916', '2022-03-22 19:56:42.916', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201275937, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[64.99999994179234,5,33.33333331485471,4.761904760254885,33.33333331485471,0,25.00000002910383,0],\"cores\":4},\"ram\":{\"usedMb\":10744,\"totalMb\":16384,\"usedPercent\":65},\"disk\":{\"usedMb\":223750,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (148, '2022-03-22 19:56:52.918', '2022-03-22 19:56:52.918', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200718349, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[57.14285714285714,10.000000004365575,50.00000002910383,4.9999999985448085,54.99999997089618,5.000000002182787,38.09523808203908,9.523809523974512],\"cores\":4},\"ram\":{\"usedMb\":10417,\"totalMb\":16384,\"usedPercent\":63},\"disk\":{\"usedMb\":224771,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (149, '2022-03-22 19:57:02.969', '2022-03-22 19:57:02.969', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200698368, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[60,4.9999999985448085,29.999999976716936,4.761904763719627,26.31578947368421,5.000000005820766,30.000000034924597,0],\"cores\":4},\"ram\":{\"usedMb\":10112,\"totalMb\":16384,\"usedPercent\":61},\"disk\":{\"usedMb\":224771,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (150, '2022-03-22 19:57:12.905', '2022-03-22 19:57:12.905', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201034364, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[78.94736835978141,10.000000004365575,61.9047619865958,9.999999997089617,68.42105262351694,10.526315794713986,61.90476191796092,14.285714284229398],\"cores\":4},\"ram\":{\"usedMb\":10170,\"totalMb\":16384,\"usedPercent\":62},\"disk\":{\"usedMb\":224771,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (151, '2022-03-22 19:57:22.907', '2022-03-22 19:57:22.907', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200604829, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[50,4.761904754975278,30.000000005820766,4.9999999985448085,20.000000023283064,0,20.0000000174623,0],\"cores\":4},\"ram\":{\"usedMb\":10349,\"totalMb\":16384,\"usedPercent\":63},\"disk\":{\"usedMb\":224772,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (152, '2022-03-22 19:57:32.920', '2022-03-22 19:57:32.920', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200654388, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[65.0000000174623,10.000000004365575,42.85714287694138,9.999999985448085,44.999999994179234,5.000000002182787,39.99999997089617,5],\"cores\":4},\"ram\":{\"usedMb\":11188,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":224770,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (153, '2022-03-22 19:57:43.012', '2022-03-22 19:57:43.012', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200787918, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[75.00000002910383,19.047619069067448,54.99999997671694,15.000000002910383,52.38095235323444,15.000000020372681,57.89473685177967,10.000000004365575],\"cores\":4},\"ram\":{\"usedMb\":11275,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":223744,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (154, '2022-03-22 19:57:52.904', '2022-03-22 19:57:52.904', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200743771, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[78.94736835978141,14.999999985448085,54.999999941792346,19.04761907253219,61.9047619865958,14.999999999272404,63.157894752966115,15.000000006548362],\"cores\":4},\"ram\":{\"usedMb\":11055,\"totalMb\":16384,\"usedPercent\":67},\"disk\":{\"usedMb\":223744,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (155, '2022-03-22 19:58:02.903', '2022-03-22 19:58:02.903', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201333179, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[80.0000000349246,15.000000002910383,66.6666666112308,20.00000000509317,74.99999991268851,20.00000000145519,68.42105273799739,25.000000007275958],\"cores\":4},\"ram\":{\"usedMb\":11529,\"totalMb\":16384,\"usedPercent\":70},\"disk\":{\"usedMb\":223745,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (156, '2022-03-22 19:58:12.903', '2022-03-22 19:58:12.903', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200714455, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[60.000000081490725,10.000000004365575,47.36842108004239,5.000000002182787,47.61904756361175,10.000000004365575,44.99999997089617,5.263157893527541],\"cores\":4},\"ram\":{\"usedMb\":11231,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":223745,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (157, '2022-03-22 19:58:49.928', '2022-03-22 19:58:49.928', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200434693, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[73.68421046504456,0,35.000000023283064,0,39.99999997089617,9.09090908098733,21.052631548311755,5.000000005820766],\"cores\":4},\"ram\":{\"usedMb\":10042,\"totalMb\":16384,\"usedPercent\":61},\"disk\":{\"usedMb\":224770,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (158, '2022-03-22 19:59:49.914', '2022-03-22 19:59:49.914', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200697566, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[63.15789476909012,9.999999997089617,50,0,38.09523808203908,5.263157897356993,36.84210523252228,9.523809527439253],\"cores\":4},\"ram\":{\"usedMb\":10075,\"totalMb\":16384,\"usedPercent\":61},\"disk\":{\"usedMb\":224772,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (159, '2022-03-22 20:00:50.072', '2022-03-22 20:00:50.072', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200532752, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[84.9999999825377,30.000000040745363,85.00000008149073,25.000000007275958,89.47368425889833,24.999999978172127,85.00000001164153,29.99999997453415],\"cores\":4},\"ram\":{\"usedMb\":10845,\"totalMb\":16384,\"usedPercent\":66},\"disk\":{\"usedMb\":223757,\"usedGb\":218,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":93}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (160, '2022-03-22 20:01:49.961', '2022-03-22 20:01:49.961', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201173003, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[79.99999997671694,10.000000004365575,63.157894752966115,14.999999999272404,61.90476184932604,10.000000000727596,57.14285715077655,9.999999997089617],\"cores\":4},\"ram\":{\"usedMb\":11252,\"totalMb\":16384,\"usedPercent\":68},\"disk\":{\"usedMb\":224795,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (161, '2022-03-22 20:02:06.384', '2022-03-22 20:02:06.384', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200539254, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[89.99999998835847,26.315789482955516,85.00000004074536,24.99999997453415,85.00000004074536,25.00000000363798,84.21052625451824,30.000000005820766],\"cores\":4},\"ram\":{\"usedMb\":10719,\"totalMb\":16384,\"usedPercent\":65},\"disk\":{\"usedMb\":224796,\"usedGb\":219,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":94}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (162, '2022-03-22 20:05:52.108', '2022-03-22 20:05:52.108', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 65378166, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":604800,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (163, '2022-03-22 20:06:02.492', '2022-03-22 20:06:02.492', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201375548, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[80.95238093126252,15.000000002910383,66.66666662970943,10.000000000727596,70.00000002328306,14.999999989086064,65.0000000174623,10.000000004365575],\"cores\":4},\"ram\":{\"usedMb\":12413,\"totalMb\":16384,\"usedPercent\":75},\"disk\":{\"usedMb\":221740,\"usedGb\":216,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":92}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (164, '2022-03-22 20:06:07.030', '2022-03-22 20:06:07.030', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 200860487, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[74.99999994179234,14.285714303532956,64.99999997089617,10.000000000727596,61.90476189024299,14.285714303532956,66.66666668514529,14.285714271855317],\"cores\":4},\"ram\":{\"usedMb\":12436,\"totalMb\":16384,\"usedPercent\":75},\"disk\":{\"usedMb\":221748,\"usedGb\":216,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":92}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (165, '2022-03-23 13:36:34.483', '2022-03-23 13:36:34.483', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 17840331, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"id\":18}', '{\"code\":0,\"data\":{\"api\":{\"ID\":18,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/getApiById\",\"description\":\"获取api详细信息\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (166, '2022-03-23 13:36:50.187', '2022-03-23 13:36:50.187', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 1904853, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":604800,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (167, '2022-03-23 13:37:04.269', '2022-03-23 13:37:04.269', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 205220997, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[84.9999999825377,31.578947376483057,76.19047621951403,29.99999997089617,73.68421046504456,33.33333337260041,71.42857142461172,33.3333333056154],\"cores\":4},\"ram\":{\"usedMb\":12887,\"totalMb\":16384,\"usedPercent\":78},\"disk\":{\"usedMb\":217436,\"usedGb\":212,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":90}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (168, '2022-03-23 14:21:04.671', '2022-03-23 14:21:04.671', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201344542, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[80.0000000698492,24.999999978172127,74.99999994179234,16.666666672056266,70.00000002328306,25.000000007275958,66.6666666112308,28.571428575388275],\"cores\":4},\"ram\":{\"usedMb\":10853,\"totalMb\":16384,\"usedPercent\":66},\"disk\":{\"usedMb\":219618,\"usedGb\":214,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":91}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (169, '2022-03-23 14:21:09.919', '2022-03-23 14:21:09.919', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 619833, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":604800,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (170, '2022-03-23 14:21:18.835', '2022-03-23 14:21:18.835', NULL, '127.0.0.1', 'POST', '/system/setSystemConfig', 200, 21867806, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":\"60480000\",\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}', '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (171, '2022-03-23 14:21:19.066', '2022-03-23 14:21:19.066', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 182585, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":0,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (172, '2022-03-23 15:36:55.798', '2022-03-23 15:36:55.798', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 201344050, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.16.3\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[89.47368421052632,35.00000001164153,84.9999999825377,31.578947376483057,80.95238086922714,34.99999997089617,80.00000012805685,38.09523810282753],\"cores\":4},\"ram\":{\"usedMb\":12213,\"totalMb\":16384,\"usedPercent\":74},\"disk\":{\"usedMb\":218731,\"usedGb\":213,\"totalMb\":239072,\"totalGb\":233,\"usedPercent\":91}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (173, '2022-03-23 15:36:56.343', '2022-03-23 15:36:56.343', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 1977367, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":0,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (174, '2022-03-23 15:36:58.469', '2022-03-23 15:36:58.469', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 140299, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":0,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (175, '2022-03-23 15:37:25.014', '2022-03-23 15:37:25.014', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 91703074, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":3,\"CreatedAt\":\"2022-03-14T15:42:04+08:00\",\"UpdatedAt\":\"2022-03-14T15:42:04+08:00\",\"serial_number\":\"2\",\"title\":\"2\",\"priority_id\":4,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":3,\"noc_reason_id\":59,\"direct_reason_id\":7,\"desc\":\"aaa\",\"detail\":\"sss\",\"analysis\":\"ddd\",\"start_time\":\"2022-03-02T16:00:00.000Z\",\"fixed_time\":\"2022-03-11T16:00:00.000Z\",\"found_time\":\"2022-03-14T16:00:00.000Z\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (176, '2022-03-23 15:38:37.019', '2022-03-23 15:38:37.019', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 77452998, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":3,\"CreatedAt\":\"2022-03-14T15:42:04+08:00\",\"UpdatedAt\":\"2022-03-23T15:37:25+08:00\",\"serial_number\":\"20220323_1\",\"title\":\"测试故障\",\"priority_id\":4,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":3,\"noc_reason_id\":36,\"direct_reason_id\":2,\"desc\":\"aaa\",\"detail\":\"sss\",\"analysis\":\"ddd\",\"start_time\":\"2022-03-03T00:00:00+08:00\",\"fixed_time\":\"2022-03-12T00:00:00+08:00\",\"found_time\":\"2022-03-15T00:00:00+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (177, '2022-03-23 15:58:18.850', '2022-03-23 15:58:18.850', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 116701933, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-14T14:01:16+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":1,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (178, '2022-03-23 15:58:30.180', '2022-03-23 15:58:30.180', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 845460455, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T15:58:19+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (179, '2022-03-23 15:58:35.283', '2022-03-23 15:58:35.283', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 5097141794, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T15:58:19+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (180, '2022-03-23 15:58:36.534', '2022-03-23 15:58:36.534', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 1239035937, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T15:58:19+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (181, '2022-03-23 16:05:00.034', '2022-03-23 16:05:00.034', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 91271037, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":3,\"CreatedAt\":\"2022-03-14T15:42:04+08:00\",\"UpdatedAt\":\"2022-03-23T15:38:37+08:00\",\"serial_number\":\"20220323_1\",\"title\":\"测试故障\",\"priority_id\":4,\"status_id\":1,\"responsible_dept_id\":1,\"responsible_team_id\":3,\"noc_reason_id\":50,\"direct_reason_id\":5,\"desc\":\"aaa\",\"detail\":\"sss\",\"analysis\":\"ddd\",\"start_time\":\"2022-03-03T00:00:00+08:00\",\"fixed_time\":\"2022-03-12T00:00:00+08:00\",\"found_time\":\"2022-03-15T00:00:00+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (182, '2022-03-23 16:11:44.320', '2022-03-23 16:11:44.320', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 31496658, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T15:58:35+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":3,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (183, '2022-03-23 16:11:51.423', '2022-03-23 16:11:51.423', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 54560288, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T16:11:44+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":4,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (184, '2022-03-23 16:12:01.788', '2022-03-23 16:12:01.788', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 562837210, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T16:11:51+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (185, '2022-03-26 17:26:49.195', '2022-03-26 17:26:49.195', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 125378386, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-23T16:12:01+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 放放风\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (186, '2022-03-26 17:43:19.012', '2022-03-26 17:43:19.012', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 102680809, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-26T17:26:49+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 放放风\\n```bash\\necho ls\\n```\",\"detail\":\"萨萨嘎\",\"analysis\":\"阿萨个娃娃\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (187, '2022-03-26 17:49:46.841', '2022-03-26 17:49:46.841', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 14436523, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-26T17:43:19+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 概述\\n```bash\\necho desc\\n```\",\"detail\":\"# 处理\\n```bash\\necho detail\\n```\",\"analysis\":\"# 复盘\\n```bash\\necho review\\n```\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (188, '2022-03-27 21:00:54.948', '2022-03-27 21:00:54.948', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 68275358, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-26T17:49:47+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 概述\\n```bash\\necho desc\\n```\",\"detail\":\"# 处理\\n```bash\\necho detail\\n```\\n\\n![Description](https://qmplusimg.henrongyi.top/1576554439myAvatar.png\\n)\",\"analysis\":\"# 复盘\\n```bash\\necho review\\n```\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (189, '2022-03-27 21:04:17.112', '2022-03-27 21:04:17.112', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 79399072, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":27,\"CreatedAt\":\"2022-01-15T12:50:21.018+08:00\",\"UpdatedAt\":\"2022-01-15T12:50:21.018+08:00\",\"parentId\":\"0\",\"path\":\"noc_admin\",\"name\":\"noc_admin\",\"hidden\":false,\"component\":\"view/noc_admin/noc_admin.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"附件\",\"icon\":\"cellphone\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (190, '2022-03-27 21:04:54.030', '2022-03-27 21:04:54.030', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 87050109, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":27,\"CreatedAt\":\"2022-01-15T12:50:21.018+08:00\",\"UpdatedAt\":\"2022-03-27T21:04:17.045+08:00\",\"parentId\":\"0\",\"path\":\"noc_admin\",\"name\":\"noc_admin\",\"hidden\":false,\"component\":\"view/noc_admin/noc_admin.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"附件管理\",\"icon\":\"cellphone\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (191, '2022-03-27 21:05:27.711', '2022-03-27 21:05:27.711', NULL, '127.0.0.1', 'POST', '/user/register', 200, 68788847, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"username\":\"guest1\",\"password\":\"guest1\",\"nickName\":\"guest1\",\"headerImg\":\"uploads/file/5854306bb01d777718bae11c6c38de8b_20220327205042.png\",\"authorityId\":\"10086\",\"authorityIds\":[\"10086\"]}', '{\"code\":0,\"data\":{\"user\":{\"ID\":3,\"CreatedAt\":\"2022-03-27T21:05:27.644776+08:00\",\"UpdatedAt\":\"2022-03-27T21:05:27.644776+08:00\",\"uuid\":\"09534636-aa21-47a9-a388-81ebbacf42c1\",\"userName\":\"guest1\",\"nickName\":\"guest1\",\"sideMode\":\"dark\",\"headerImg\":\"uploads/file/5854306bb01d777718bae11c6c38de8b_20220327205042.png\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"10086\",\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":[{\"CreatedAt\":\"2022-03-27T21:05:27.6494+08:00\",\"UpdatedAt\":\"2022-03-27T21:05:27.6494+08:00\",\"DeletedAt\":null,\"authorityId\":\"10086\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}]}},\"msg\":\"注册成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (192, '2022-03-27 21:05:52.329', '2022-03-27 21:05:52.329', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 27839465, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"menus\":[{\"ID\":26,\"CreatedAt\":\"2022-01-15T12:04:53.223+08:00\",\"UpdatedAt\":\"2022-01-15T12:09:01.667+08:00\",\"parentId\":\"0\",\"path\":\"noc_list\",\"name\":\"noc_list\",\"hidden\":false,\"component\":\"view/noc_list/noc_list.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"故障列表\",\"icon\":\"list\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]},{\"ID\":27,\"CreatedAt\":\"2022-01-15T12:50:21.018+08:00\",\"UpdatedAt\":\"2022-03-27T21:04:53.947+08:00\",\"parentId\":\"0\",\"path\":\"noc_admin\",\"name\":\"noc_admin\",\"hidden\":false,\"component\":\"view/noc_admin/noc_admin.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"附件管理\",\"icon\":\"cellphone\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]}],\"authorityId\":\"10086\"}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (193, '2022-03-27 21:07:14.449', '2022-03-27 21:07:14.449', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 46262185, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"authorityId\":\"10086\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/noc/getNocDetailById\",\"method\":\"GET\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"},{\"path\":\"/nr/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/nr/getNocReasonsList\",\"method\":\"GET\"},{\"path\":\"/ndr/findNocDirectReasons\",\"method\":\"GET\"},{\"path\":\"/ndr/getNocDirectReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (194, '2022-03-27 21:07:20.127', '2022-03-27 21:07:20.127', NULL, '127.0.0.1', 'POST', '/authority/setDataAuthority', 200, 31493270, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"CreatedAt\":\"2022-01-15T12:13:04.148+08:00\",\"UpdatedAt\":\"2022-01-15T12:50:38.189+08:00\",\"DeletedAt\":null,\"authorityId\":\"10086\",\"authorityName\":\"只读用户\",\"parentId\":\"0\",\"dataAuthorityId\":[{\"authorityId\":\"10086\",\"authorityName\":\"只读用户\"}],\"children\":[],\"menus\":null,\"defaultRouter\":\"noc_list\"}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (195, '2022-03-27 21:38:29.569', '2022-03-27 21:38:29.569', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 447517, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"9ca5e5b9-d9d1-4196-9997-db206f6a0b4a\",\"expiresTime\":86400,\"bufferTime\":86400,\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (196, '2022-03-27 21:38:49.262', '2022-03-27 21:38:49.262', NULL, '127.0.0.1', 'POST', '/system/setSystemConfig', 200, 24097366, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '{\"config\":{\"jwt\":{\"signingKey\":\"gwxtest\",\"expiresTime\":86400,\"bufferTime\":86400,\"issuer\":\"gwxtest\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4&parseTime=True&loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}}', '{\"code\":0,\"data\":\"设置成功\",\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (197, '2022-03-27 21:39:04.439', '2022-03-27 21:39:04.439', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 108801, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"gwxtest\",\"expiresTime\":86400,\"bufferTime\":86400,\"issuer\":\"gwxtest\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (198, '2022-03-27 21:39:44.884', '2022-03-27 21:39:44.884', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 71002147, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '{\"menus\":[{\"ID\":26,\"CreatedAt\":\"2022-01-15T12:04:53.223+08:00\",\"UpdatedAt\":\"2022-01-15T12:09:01.667+08:00\",\"parentId\":\"0\",\"path\":\"noc_list\",\"name\":\"noc_list\",\"hidden\":false,\"component\":\"view/noc_list/noc_list.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"故障列表\",\"icon\":\"list\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]}],\"authorityId\":\"10086\"}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (199, '2022-03-27 22:11:19.144', '2022-03-27 22:11:19.144', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 578733438, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '{\"authorityId\":\"9527\",\"authorityName\":\"故障管理员\",\"parentId\":\"0\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2022-03-27T22:11:18.569047+08:00\",\"UpdatedAt\":\"2022-03-27T22:11:18.569047+08:00\",\"DeletedAt\":null,\"authorityId\":\"9527\",\"authorityName\":\"故障管理员\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (200, '2022-03-27 22:11:34.755', '2022-03-27 22:11:34.755', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 98696586, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '{\"menus\":[{\"ID\":26,\"CreatedAt\":\"2022-01-15T12:04:53.223+08:00\",\"UpdatedAt\":\"2022-01-15T12:09:01.667+08:00\",\"parentId\":\"0\",\"path\":\"noc_list\",\"name\":\"noc_list\",\"hidden\":false,\"component\":\"view/noc_list/noc_list.vue\",\"sort\":1,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"故障列表\",\"icon\":\"list\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]},{\"ID\":27,\"CreatedAt\":\"2022-01-15T12:50:21.018+08:00\",\"UpdatedAt\":\"2022-03-27T21:04:53.947+08:00\",\"parentId\":\"0\",\"path\":\"noc_admin\",\"name\":\"noc_admin\",\"hidden\":false,\"component\":\"view/noc_admin/noc_admin.vue\",\"sort\":2,\"meta\":{\"keepAlive\":true,\"defaultMenu\":false,\"title\":\"附件管理\",\"icon\":\"cellphone\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[]}],\"authorityId\":\"9527\"}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (201, '2022-03-27 22:13:18.187', '2022-03-27 22:13:18.187', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 587038401, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '{\"authorityId\":\"9527\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/noc/getNocDetailById\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/nd/createNocDepartment\",\"method\":\"POST\"},{\"path\":\"/nd/deleteNocDepartment\",\"method\":\"DELETE\"},{\"path\":\"/nd/deleteNocDepartmentByIds\",\"method\":\"DELETE\"},{\"path\":\"/nd/updateNocDepartment\",\"method\":\"PUT\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocStatus\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocStatus\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocStatusByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocStatus\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nt/createNocTeam\",\"method\":\"POST\"},{\"path\":\"/nt/deleteNocTeam\",\"method\":\"DELETE\"},{\"path\":\"/nt/deleteNocTeamByIds\",\"method\":\"DELETE\"},{\"path\":\"/nt/updateNocTeam\",\"method\":\"PUT\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"},{\"path\":\"/nr/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/nr/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/nr/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/nr/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/nr/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/nr/getNocReasonsList\",\"method\":\"GET\"},{\"path\":\"/ndr/createNocDirectReasons\",\"method\":\"POST\"},{\"path\":\"/ndr/deleteNocDirectReasons\",\"method\":\"DELETE\"},{\"path\":\"/ndr/deleteNocDirectReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/ndr/updateNocDirectReasons\",\"method\":\"PUT\"},{\"path\":\"/ndr/findNocDirectReasons\",\"method\":\"GET\"},{\"path\":\"/ndr/getNocDirectReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (202, '2022-03-27 22:14:09.731', '2022-03-27 22:14:09.731', NULL, '127.0.0.1', 'POST', '/user/register', 200, 30467141, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.55', '', '{\"username\":\"noc_admin\",\"password\":\"nocadmin\",\"nickName\":\"故障管理员\",\"headerImg\":\"https://qmplusimg.henrongyi.top/1576554439myAvatar.png\",\"authorityId\":\"9527\",\"authorityIds\":[\"9527\"]}', '{\"code\":0,\"data\":{\"user\":{\"ID\":4,\"CreatedAt\":\"2022-03-27T22:14:09.706443+08:00\",\"UpdatedAt\":\"2022-03-27T22:14:09.706443+08:00\",\"uuid\":\"f27b55e0-6b8a-4db5-bab5-7dba35cbff59\",\"userName\":\"noc_admin\",\"nickName\":\"故障管理员\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/1576554439myAvatar.png\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":\"9527\",\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":[{\"CreatedAt\":\"2022-03-27T22:14:09.724823+08:00\",\"UpdatedAt\":\"2022-03-27T22:14:09.724823+08:00\",\"DeletedAt\":null,\"authorityId\":\"9527\",\"authorityName\":\"\",\"parentId\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}]}},\"msg\":\"注册成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (203, '2022-03-27 22:16:34.569', '2022-03-27 22:16:34.569', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 110349924, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"authorityId\":\"9527\",\"AuthorityName\":\"故障管理员\",\"parentId\":\"0\",\"defaultRouter\":\"noc_list\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"9527\",\"authorityName\":\"故障管理员\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"noc_list\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (204, '2022-03-27 22:17:19.807', '2022-03-27 22:17:19.807', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 101552886, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-27T21:00:55+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 概述\\n```bash\\necho desc\\n```\",\"detail\":\"# 处理\\n```bash\\necho detail\\n```\\n\\n![Description](https://qmplusimg.henrongyi.top/1576554439myAvatar.png\\n)\",\"analysis\":\"# 复盘\\n```bash\\necho review\\n```\\n\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 4);
INSERT INTO `sys_operation_records` VALUES (205, '2022-03-27 22:17:29.016', '2022-03-27 22:17:29.016', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 29684277, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-27T22:17:20+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 概述\\n```bash\\necho desc\\n```\",\"detail\":\"# 处理\\n```bash\\necho detail\\n```\\n\\n![Description](https://qmplusimg.henrongyi.top/1576554439myAvatar.png\\n)\",\"analysis\":\"# 复盘\\n```bash\\necho review\\n```\\n|column1|column2|column3|\\n|-|-|-|\\n|content1|content2|content3|\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 4);
INSERT INTO `sys_operation_records` VALUES (206, '2022-03-27 22:18:43.051', '2022-03-27 22:18:43.051', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 485741001, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"authorityId\":\"9527\",\"casbinInfos\":[{\"path\":\"/base/login\",\"method\":\"POST\"},{\"path\":\"/jwt/jsonInBlacklist\",\"method\":\"POST\"},{\"path\":\"/user/register\",\"method\":\"POST\"},{\"path\":\"/user/setUserInfo\",\"method\":\"PUT\"},{\"path\":\"/user/setSelfInfo\",\"method\":\"PUT\"},{\"path\":\"/user/getUserInfo\",\"method\":\"GET\"},{\"path\":\"/user/changePassword\",\"method\":\"POST\"},{\"path\":\"/user/setUserAuthority\",\"method\":\"POST\"},{\"path\":\"/menu/getMenu\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/findFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinue\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/breakpointContinueFinish\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/removeChunk\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/upload\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/deleteFile\",\"method\":\"POST\"},{\"path\":\"/fileUploadAndDownload/getFileList\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/upload\",\"method\":\"POST\"},{\"path\":\"/simpleUploader/checkFileMd5\",\"method\":\"GET\"},{\"path\":\"/simpleUploader/mergeFileMd5\",\"method\":\"GET\"},{\"path\":\"/noc/createNoc\",\"method\":\"POST\"},{\"path\":\"/noc/deleteNocById\",\"method\":\"DELETE\"},{\"path\":\"/noc/updateNocById\",\"method\":\"PUT\"},{\"path\":\"/noc/getNocById\",\"method\":\"GET\"},{\"path\":\"/noc/getNocList\",\"method\":\"GET\"},{\"path\":\"/noc/getNocDetailById\",\"method\":\"GET\"},{\"path\":\"/NP/createNocPriority\",\"method\":\"POST\"},{\"path\":\"/NP/deleteNocPriority\",\"method\":\"DELETE\"},{\"path\":\"/NP/deleteNocPriorityByIds\",\"method\":\"DELETE\"},{\"path\":\"/NP/updateNocPriority\",\"method\":\"PUT\"},{\"path\":\"/NP/findNocPriority\",\"method\":\"GET\"},{\"path\":\"/NP/getNocPriorityList\",\"method\":\"GET\"},{\"path\":\"/nd/createNocDepartment\",\"method\":\"POST\"},{\"path\":\"/nd/deleteNocDepartment\",\"method\":\"DELETE\"},{\"path\":\"/nd/deleteNocDepartmentByIds\",\"method\":\"DELETE\"},{\"path\":\"/nd/updateNocDepartment\",\"method\":\"PUT\"},{\"path\":\"/nd/findNocDepartment\",\"method\":\"GET\"},{\"path\":\"/nd/getNocDepartmentList\",\"method\":\"GET\"},{\"path\":\"/ns/createNocStatus\",\"method\":\"POST\"},{\"path\":\"/ns/deleteNocStatus\",\"method\":\"DELETE\"},{\"path\":\"/ns/deleteNocStatusByIds\",\"method\":\"DELETE\"},{\"path\":\"/ns/updateNocStatus\",\"method\":\"PUT\"},{\"path\":\"/ns/findNocStatus\",\"method\":\"GET\"},{\"path\":\"/ns/getNocStatusList\",\"method\":\"GET\"},{\"path\":\"/nt/createNocTeam\",\"method\":\"POST\"},{\"path\":\"/nt/deleteNocTeam\",\"method\":\"DELETE\"},{\"path\":\"/nt/deleteNocTeamByIds\",\"method\":\"DELETE\"},{\"path\":\"/nt/updateNocTeam\",\"method\":\"PUT\"},{\"path\":\"/nt/findNocTeam\",\"method\":\"GET\"},{\"path\":\"/nt/getNocTeamList\",\"method\":\"GET\"},{\"path\":\"/nr/createNocReasons\",\"method\":\"POST\"},{\"path\":\"/nr/deleteNocReasons\",\"method\":\"DELETE\"},{\"path\":\"/nr/deleteNocReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/nr/updateNocReasons\",\"method\":\"PUT\"},{\"path\":\"/nr/findNocReasons\",\"method\":\"GET\"},{\"path\":\"/nr/getNocReasonsList\",\"method\":\"GET\"},{\"path\":\"/ndr/createNocDirectReasons\",\"method\":\"POST\"},{\"path\":\"/ndr/deleteNocDirectReasons\",\"method\":\"DELETE\"},{\"path\":\"/ndr/deleteNocDirectReasonsByIds\",\"method\":\"DELETE\"},{\"path\":\"/ndr/updateNocDirectReasons\",\"method\":\"PUT\"},{\"path\":\"/ndr/findNocDirectReasons\",\"method\":\"GET\"},{\"path\":\"/ndr/getNocDirectReasonsList\",\"method\":\"GET\"}]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (207, '2022-03-27 22:18:58.284', '2022-03-27 22:18:58.284', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 54381034, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"authorityId\":\"10086\",\"AuthorityName\":\"只读用户\",\"parentId\":\"0\",\"defaultRouter\":\"noc_list\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":\"10086\",\"authorityName\":\"只读用户\",\"parentId\":\"0\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"noc_list\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (208, '2022-03-28 09:04:47.115', '2022-03-28 09:04:47.115', NULL, '127.0.0.1', 'PUT', '/noc/updateNocById', 200, 94297305, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36', '', '{\"ID\":2,\"CreatedAt\":\"2022-03-14T14:01:16+08:00\",\"UpdatedAt\":\"2022-03-27T22:17:29+08:00\",\"serial_number\":\"20220311\",\"title\":\"测试故障1\",\"priority_id\":2,\"status_id\":5,\"responsible_dept_id\":1,\"responsible_team_id\":1,\"noc_reason_id\":63,\"direct_reason_id\":9,\"desc\":\"# 概述\\n```bash\\necho desc\\n```\",\"detail\":\"# 处理\\n```bash\\necho detail\\n```\\n\\n![Description](https://qmplusimg.henrongyi.top/1576554439myAvatar.png\\n)\",\"analysis\":\"# 复盘\\n```bash\\necho review\\n```\\n|column1|column2|column3|\\n|-|-|-|\\n|content1|content2|content3|\",\"start_time\":\"2022-03-23T09:24:00+08:00\",\"fixed_time\":\"2022-03-25T09:24:05+08:00\",\"found_time\":\"2022-03-22T20:48:12+08:00\",\"declarant_uid\":1}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (209, '2022-07-14 21:17:18.909', '2022-07-14 21:17:18.909', NULL, '127.0.0.1', 'POST', '/api/getApiById', 200, 4148227, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '', '{\"id\":18}', '{\"code\":0,\"data\":{\"api\":{\"ID\":18,\"CreatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"UpdatedAt\":\"2022-01-15T11:57:04.974+08:00\",\"path\":\"/api/getApiById\",\"description\":\"获取api详细信息\",\"apiGroup\":\"api\",\"method\":\"POST\"}},\"msg\":\"操作成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (210, '2022-07-14 21:18:19.287', '2022-07-14 21:18:19.287', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 855674, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signingKey\":\"gwxtest\",\"expiresTime\":86400,\"bufferTime\":86400,\"issuer\":\"gwxtest\"},\"zap\":{\"level\":\"info\",\"format\":\"console\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"director\":\"log\",\"showLine\":false,\"encodeLevel\":\"LowercaseColorLevelEncoder\",\"stacktraceKey\":\"stacktrace\",\"logInConsole\":true},\"redis\":{\"db\":0,\"addr\":\"127.0.0.1:6379\",\"password\":\"\"},\"email\":{\"to\":\"xxx@qq.com\",\"port\":465,\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"isSSL\":true,\"secret\":\"xxx\",\"nickname\":\"test\"},\"casbin\":{\"modelPath\":\"./resource/rbac_model.conf\"},\"system\":{\"env\":\"public\",\"addr\":9999,\"dbType\":\"mysql\",\"ossType\":\"local\",\"useMultipoint\":false,\"iplimitCount\":15000,\"iplimitTime\":3600},\"captcha\":{\"keyLong\":6,\"imgWidth\":240,\"imgHeight\":80},\"autoCode\":{\"transferRestart\":true,\"root\":\"/Users/gwx/Documents/GitHub/noc-admin\",\"server\":\"/server\",\"serverApi\":\"/api/v1/noc\",\"serverInitialize\":\"/initialize\",\"serverModel\":\"/model/noc\",\"serverRequest\":\"/model/noc/request/\",\"serverRouter\":\"/router/noc\",\"serverService\":\"/service/noc\",\"web\":\"/web/src\",\"webApi\":\"/api\",\"webForm\":\"/view\",\"webTable\":\"/view\"},\"mysql\":{\"path\":\"127.0.0.1\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"dbname\":\"noc_admin\",\"username\":\"root\",\"password\":\"80958674x\",\"maxIdleConns\":0,\"maxOpenConns\":0,\"logMode\":\"\",\"logZap\":false},\"pgsql\":{\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false},\"db-list\":[{\"disable\":false,\"type\":\"\",\"alias-name\":\"\",\"path\":\"\",\"port\":\"\",\"config\":\"\",\"dbname\":\"\",\"username\":\"\",\"password\":\"\",\"maxIdleConns\":10,\"maxOpenConns\":100,\"logMode\":\"\",\"logZap\":false}],\"local\":{\"path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"imgPath\":\"\",\"useHttps\":false,\"accessKey\":\"\",\"secretKey\":\"\",\"useCdnDomains\":false},\"aliyunOSS\":{\"endpoint\":\"yourEndpoint\",\"accessKeyId\":\"yourAccessKeyId\",\"accessKeySecret\":\"yourAccessKeySecret\",\"bucketName\":\"yourBucketName\",\"bucketUrl\":\"yourBucketUrl\",\"basePath\":\"yourBasePath\"},\"huaWeiObs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"accessKey\":\"you-access-key\",\"secretKey\":\"you-secret-key\"},\"tencentCOS\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"awsS3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secretID\":\"xxxxxxxx\",\"secretKey\":\"xxxxxxxx\",\"baseURL\":\"https://gin.vue.admin\",\"pathPrefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"excel\":{\"dir\":\"./resource/excel/\"},\"timer\":{\"start\":true,\"spec\":\"@daily\",\"detail\":[{\"tableName\":\"sys_operation_records\",\"compareField\":\"created_at\",\"interval\":\"2160h\"},{\"tableName\":\"jwt_blacklists\",\"compareField\":\"created_at\",\"interval\":\"168h\"}]},\"cors\":{\"mode\":\"whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_authority`;
CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_authority` VALUES (1, '10086');
INSERT INTO `sys_user_authority` VALUES (1, '888');
INSERT INTO `sys_user_authority` VALUES (1, '8881');
INSERT INTO `sys_user_authority` VALUES (1, '9528');
INSERT INTO `sys_user_authority` VALUES (2, '888');
INSERT INTO `sys_user_authority` VALUES (3, '10086');
INSERT INTO `sys_user_authority` VALUES (4, '9527');
COMMIT;

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` varchar(90) DEFAULT '888' COMMENT '用户角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
BEGIN;
INSERT INTO `sys_users` VALUES (1, '2022-01-15 11:57:05.008', '2022-03-14 13:19:21.524', NULL, '75e878d8-b283-434f-98b1-882f7de5d20b', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', '#1890ff', '9528');
INSERT INTO `sys_users` VALUES (2, '2022-01-15 11:57:05.008', '2022-01-15 11:57:05.008', NULL, '77bac2a9-5129-4088-ab35-38d384d8ab66', 'a303176530', '3ec063004a6f31642261936a379fde3d', 'QMPlusUser', 'dark', 'https:///qmplusimg.henrongyi.top/1572075907logo.png', '#fff', '#1890ff', '9528');
INSERT INTO `sys_users` VALUES (3, '2022-03-27 21:05:27.645', '2022-03-27 21:05:27.645', NULL, '09534636-aa21-47a9-a388-81ebbacf42c1', 'guest1', '15dac3875ad0f994a832043be841dc7e', 'guest1', 'dark', 'uploads/file/5854306bb01d777718bae11c6c38de8b_20220327205042.png', '#fff', '#1890ff', '10086');
INSERT INTO `sys_users` VALUES (4, '2022-03-27 22:14:09.706', '2022-03-27 22:14:09.706', NULL, 'f27b55e0-6b8a-4db5-bab5-7dba35cbff59', 'noc_admin', '281c0b2766209175602bd674ffd2d918', '故障管理员', 'dark', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', '#fff', '#1890ff', '9527');
COMMIT;

-- ----------------------------
-- Table structure for yms_domain_group
-- ----------------------------
DROP TABLE IF EXISTS `yms_domain_group`;
CREATE TABLE `yms_domain_group` (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `domain_code` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '领域编码',
  `domain_name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '领域名称',
  `parent_domain_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父领域ID，根节点不需要填充值',
  `domain_desc` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '领域描述',
  `domain_principal` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '领域负责人',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `dr` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  `data_center_id` bigint(20) DEFAULT '1',
  `path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路径',
  `sort_index` int(11) DEFAULT '1' COMMENT '排序',
  `is_exclusive` tinyint(1) DEFAULT '1' COMMENT '是否专属化',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='领域分组';

-- ----------------------------
-- Records of yms_domain_group
-- ----------------------------
BEGIN;
INSERT INTO `yms_domain_group` VALUES ('000', 'YONBIP', 'YonBIP', '#', 'YONBIP', 'admin', 20210402064235, 1631195320929, 0, 1, '#,000,', 1, 1);
INSERT INTO `yms_domain_group` VALUES ('06bVw1bp', 'iuap-legacy-ref', '老参照', '313', 'A44-老参照', 'f***j1@**u.com', 1630467288830, 1630467288830, 0, 1, '#,000,300,313,06bVw1bp,', 1, 1);
INSERT INTO `yms_domain_group` VALUES ('06v1j8dq', 'yonbip-hr-bpm', '流程适配', 'cwmCxqgu', '流程适配', 'li***c@y***u.com', 1627615058379, 1627615058379, 0, 1, '#,000,NgFgW8L5,XJXcaYTW,cwmCxqgu,06v1j8dq,', 1, 1);
INSERT INTO `yms_domain_group` VALUES ('zyCPxWJT', 'yonbip-ec-cooperation', '协作套件', 'cGHxq5yU', '协作套件', 'x***t@***u.com', 1627872723574, 1627872723574, 0, 1, '#,000,e7ylIwGi,cGHxq5yU,zyCPxWJT,', 1, 1);
COMMIT;

-- ----------------------------
-- View structure for authority_menu
-- ----------------------------
DROP VIEW IF EXISTS `authority_menu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `authority_menu` AS select `sys_base_menus`.`id` AS `id`,`sys_base_menus`.`path` AS `path`,`sys_base_menus`.`icon` AS `icon`,`sys_base_menus`.`name` AS `name`,`sys_base_menus`.`sort` AS `sort`,`sys_base_menus`.`title` AS `title`,`sys_base_menus`.`hidden` AS `hidden`,`sys_base_menus`.`component` AS `component`,`sys_base_menus`.`parent_id` AS `parent_id`,`sys_base_menus`.`created_at` AS `created_at`,`sys_base_menus`.`updated_at` AS `updated_at`,`sys_base_menus`.`deleted_at` AS `deleted_at`,`sys_base_menus`.`keep_alive` AS `keep_alive`,`sys_base_menus`.`menu_level` AS `menu_level`,`sys_base_menus`.`default_menu` AS `default_menu`,`sys_base_menus`.`close_tab` AS `close_tab`,`sys_authority_menus`.`sys_base_menu_id` AS `menu_id`,`sys_authority_menus`.`sys_authority_authority_id` AS `authority_id` from (`sys_authority_menus` join `sys_base_menus` on((`sys_authority_menus`.`sys_base_menu_id` = `sys_base_menus`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
