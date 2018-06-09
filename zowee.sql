/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.96-community-nt : Database - zowee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zowee` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zowee`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `book_auth` varchar(45) default NULL,
  `book_price` varchar(45) default NULL,
  `create_date` datetime default NULL,
  PRIMARY KEY  (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL auto_increment,
  `text` varchar(20) default NULL,
  `url` varchar(100) default NULL,
  `parent_Id` int(11) default NULL,
  `menu_Description` varchar(200) default NULL,
  `state` varchar(20) default NULL,
  `icon_Cls` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`text`,`url`,`parent_Id`,`menu_Description`,`state`,`icon_Cls`) values (1,'卓翼MES系统','',-1,'卓翼MES系统内测','closed','icon-home'),(2,'权限管理','',1,NULL,'closed','icon-permission'),(3,'报表查询','',1,'学生模块','closed','icon-student'),(4,'天津看板','',1,'','closed','icon-course'),(5,'报表示例','baobiao/test.action',3,'','open','icon-item'),(9,'天津生产看板','',4,'','open','icon-course'),(10,'天津SMT看板','',4,'','open','icon-course'),(11,'天津仓库看板','',4,'','open','icon-course'),(12,'用户管理','user/list.action',2,NULL,'open','icon-userManage'),(13,'角色管理','role/list.action',2,NULL,'open','icon-roleManage'),(14,'菜单管理','menu/list.action',2,'树中属性描述','open','icon-menuManage'),(26,'天津LED看板','',4,'','open','icon-course'),(27,'松岗看板','',1,'','closed','icon-course'),(28,'品质看板','',27,'','open','icon-course'),(29,'DIP看板','',27,'','open','icon-course'),(30,'SMT看板','',27,'','closed','icon-course'),(31,'大仓看板','',27,'','open','icon-course'),(32,'MES工具','',1,'','closed','icon-student'),(33,'存储过程查询','sprocess/list.action',32,'','open','icon-item'),(37,'线体物料','report/smtline_line.action',30,'SMT JIT  线体物料看板','open','icon-item'),(38,'组包看板','',27,'后段组包看板','closed','icon-course'),(39,'车间看板','report/zbsite_list.action',38,'test  highcharts','open','icon-item'),(40,'作业模块','',1,'','closed','icon-course'),(41,'SMT-MES程序','',40,'','closed','icon-item'),(42,'DIP-MES程序','',40,'','open','icon-item'),(43,'修改密码','',1,'','open','icon-modifyPassword'),(44,'安全退出','',1,'','open','icon-exit'),(45,'作业示例','smtopc/example.action',41,'','open','icon-item'),(46,'ExtDemo','extdemo/extpage.action',41,'','open','icon-item');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `notice_Id` int(10) NOT NULL auto_increment,
  `notice_Title` varchar(200) default NULL,
  `notice_Content` varchar(4000) default NULL,
  `notice_Author` varchar(50) default NULL,
  `create_Time` datetime default NULL,
  PRIMARY KEY  (`notice_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

insert  into `notice`(`notice_Id`,`notice_Title`,`notice_Content`,`notice_Author`,`create_Time`) values (8,'【重要告知】：卓翼MES系统变更公告【影响时间：2016-06-25 22:00-00:00，系统不能正常使用】Notification FOR WEB-MES System','<p>今日总结：<br/></p><p>&nbsp; &nbsp;1、多行删除 主键ajax提交到后台 记住表单参数属性 traditional 传统的提交</p><p>&nbsp; &nbsp;2、springmvc前台参数收集 不能直接使用serializable接收 int</p><p>&nbsp; &nbsp;3、如果使用Interger[] 包装类型可以 &nbsp;integer 是实现了序列号接口的</p><p>&nbsp; &nbsp;4、所以写原始接口用序列华作为主键ID 非常合理！</p>','admin','2017-04-14 14:38:00'),(35,'【重要告知】：卓翼MES系统变更公告【影响时间：2017-03-25 22:00-00:00，系统不能正常使用】Notification FOR WEB-MES System','<p><strong><span style=\"text-decoration: underline; color: rgb(255, 0, 0);\"><em>maven 项目 svn 检出 请设置svn插件忽略不需要的target等！</em></span></strong></p><p><strong><span style=\"text-decoration: underline; color: rgb(255, 0, 0);\"><em>该项目属于maven规范的项目 &nbsp;已添加SVN管理！</em></span></strong></p>','admin','2017-04-21 14:10:00'),(38,'【重要告知】：卓翼MES系统变更公告【影响时间：2017-05-06 22:00-00:00，系统不能正常使用】Notification FOR WEB-MES System','<p><strong><span style=\"color: rgb(112, 48, 160);\">5月6日 修改如下：</span></strong></p><p><strong><span style=\"color: rgb(112, 48, 160);\">1、线体看板dialog 关闭 必须清理掉后台interval事件 &nbsp;都用win 的div的 初始化dialog存在bug 添加一个win2专用</span></strong></p><p><strong><span style=\"color: rgb(112, 48, 160);\">2、修改主页美化</span></strong></p><p><strong><span style=\"color: rgb(112, 48, 160);\">3、福利美女一张</span></strong></p><p><img src=\"http://10.2.0.17:8060/zowee/upload/ueditor/image/20170506/1494051923727052172.jpg\" title=\"1494051923727052172.jpg\" alt=\"30_114.jpg\"/></p>','admin','2017-05-06 14:17:00'),(39,'【重要告知】：卓翼MES系统变更公告【影响时间：2017-05-09 22:00-00:00，系统不能正常使用】Notification FOR WEB-MES System','<p><strong><span style=\"background-color: rgb(0, 176, 80);\">1、今日已添加 MES过站的示例 类似orbit静态事务</span></strong></p><p><strong><span style=\"background-color: rgb(0, 176, 80);\">2、存储过程调用 web端&nbsp;写法更简单 但是不面向对象 后期维护不便！</span></strong></p><p><br/></p><p><img src=\"http://10.2.0.17:8060/zowee/upload/ueditor/image/20170525/1495680926969025248.jpg\" title=\"1495680926969025248.jpg\" alt=\"IMG_1355.jpg\" width=\"793\" height=\"925\" style=\"width: 793px; height: 925px;\"/></p><p><br/></p>','admin','2017-05-25 10:44:00');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_Id` int(10) NOT NULL auto_increment,
  `role_Name` varchar(50) default NULL,
  `role_Desc` varchar(50) default NULL,
  PRIMARY KEY  (`role_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_Id`,`role_Name`,`role_Desc`) values (1,'系统管理组','系统最高权限'),(10,'初始角色组','默认初始角色权限');

/*Table structure for table `role_menu` */

DROP TABLE IF EXISTS `role_menu`;

CREATE TABLE `role_menu` (
  `role_menu_id` int(11) NOT NULL auto_increment,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY  (`role_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

/*Data for the table `role_menu` */

insert  into `role_menu`(`role_menu_id`,`roleId`,`menuId`) values (307,10,1),(308,10,3),(309,10,5),(310,10,4),(311,10,9),(312,10,10),(313,10,11),(314,10,26),(315,10,27),(316,10,28),(317,10,29),(318,10,30),(319,10,37),(320,10,31),(321,10,38),(322,10,39),(323,10,43),(324,10,44),(325,1,1),(326,1,2),(327,1,12),(328,1,13),(329,1,14),(330,1,3),(331,1,5),(332,1,4),(333,1,9),(334,1,10),(335,1,11),(336,1,26),(337,1,27),(338,1,28),(339,1,29),(340,1,30),(341,1,37),(342,1,31),(343,1,38),(344,1,39),(345,1,32),(346,1,33),(347,1,40),(348,1,41),(349,1,45),(350,1,46),(351,1,42),(352,1,43),(353,1,44);

/*Table structure for table `sp` */

DROP TABLE IF EXISTS `sp`;

CREATE TABLE `sp` (
  `sp_Id` int(10) NOT NULL auto_increment,
  `sp_Name` varchar(50) NOT NULL,
  `sp_Author` varchar(20) default NULL,
  `sp_Database` varchar(20) default NULL,
  `sp_Function` varchar(100) default NULL,
  `sp_Comment` varchar(500) default NULL,
  PRIMARY KEY  (`sp_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

/*Data for the table `sp` */

insert  into `sp`(`sp_Id`,`sp_Name`,`sp_Author`,`sp_Database`,`sp_Function`,`sp_Comment`) values (1,'Txn_SprayingScanAndTakeMZ_Batch','','10.2.0.56','上线扫描','oppo产品用  现在不用'),(2,'Txn_SprayingScanBANBIAN_Batch','','10.2.0.56','上线扫描','板边流程使用'),(3,'Txn_SprayingScan_Batch','','10.2.0.56','上线扫描',''),(4,'Txn_SMTIssueExeNew','','10.2.0.56','老贴片扣料',''),(5,'TXN_SMT_PCBAT','','10.2.0.56','板边扣料',''),(6,'TXN_YY4D','','10.2.0.56','华技专用','华技阴阳板模式'),(7,'Txn_DataChainSMTWatch','','10.2.0.56','目检',''),(8,'Txn_DataChainLoadCar','','10.2.0.56','装车',''),(9,'Txn_VisualCheckSMT','','10.2.0.56','板边条码目检',''),(10,'Txn_BatchInCarSMT','','10.2.0.56','板边条码装车关联子条码',''),(11,'Txn_BatchInCarSMT_CheckPcbaSN','','10.2.0.56','板边条码装车关联子条码',''),(12,'Txn_DataChainSMTWatchSecond','','10.2.0.56','联想PAD用目检扣料',''),(13,'Txn_DataChainLoadCarAndBindSubplate','','10.2.0.56','E5目检主副板绑定装车',''),(14,'Txn_Queryeyecheck_errorcode_smtDoMethod','','10.2.0.56','所有SMT不良信息录入查询（SMTEC）',''),(15,'Txn_TimeLinessRatioBoard_domethod','','10.2.0.25/report','看板--品质管理--IQC及时率',''),(16,'Productivity_SMT_Report_bak2','','10.2.0.25/report','看板--SMT看板--线体看板--第1层',''),(17,'MainBoard_SMT_WorkcenterToDay_bak2','','10.2.0.25/report','看板--SMT看板--线体看板--第2层',''),(18,'smt_board_new','','10.2.0.25/report','看板--SMT看板--线体看板--第3层',''),(19,'Report_SMT_LineStore4d','','10.2.0.25/report','看板--SMT看板--线边仓--第3层',''),(20,'ManufactureMonitorStatus_ForWeb','','10.2.0.25/report','看板--SMT看板--生产状态看板',''),(21,'Txn_smtxbckc_4d_DoMethod','','10.2.0.25/report','看板--SMT看板--线边仓安全库存',''),(22,'get_smtsb_title','','10.2.0.25/report','看板--SMT看板--设备看板','获取动态标题信息'),(23,'DevicePartsShow_DIP_WorkShopForWeb_FeiDa','','10.2.0.25/report','看板--SMT看板--设备看板--飞达看板1层','其他刮刀 锡膏 吸嘴等类似'),(24,'DevicePartsShow_FeiDa','','10.2.0.25/report','看板--SMT看板--设备看板--飞达看板2层','其他刮刀 锡膏 吸嘴等类似'),(25,'Query_SMTLine_all_new','','10.2.0.25/orbitxe','看板--SMT看板--线体看板',''),(26,'PickingListJLMCQuery_DoMethod_4d','','10.2.0.25/report','看板--SMT看板--超领看板',''),(27,'Txn_QueryDeliveryRecordInfo','','10.2.0.25/report','看板--大仓看板--收货看板',''),(28,'PMCKanBan_Report_4d','','10.2.0.25/report','看板--大仓看板--大仓计划--1层',''),(29,'DCMoName_KanBan_Report','','10.2.0.25/report','看板--大仓看板--大仓看板--1层',''),(30,'pmc_second_4d','','10.2.0.25/report','看板--大仓看板--大仓看板--2层',''),(31,'DCMaterialPlan_KanBan_Report','','10.2.0.25/report','看板--大仓看板--大仓看板--3层',''),(32,'Productivity_4F_Report_bak2','','10.2.0.25/report','看板--后段看板--第1层',''),(33,'MainBoard_ff_WorkcenterToDay_bak2','','10.2.0.25/report','看板--后段看板--第2层',''),(34,'DIP_board_new','','10.2.0.25/report','看板--后段看板--第3层',''),(35,'Txn_Board_MOEfficiencyList','','10.2.0.25/report','华为看板--生产看板--第1层',''),(36,'Txn_Board_MOEfficiency','','10.2.0.25/report','华为看板--生产看板--第2层',''),(37,'Txn_Board_MOEfficiencyDetail','','10.2.0.25/report','华为看板--生产看板--第3层',''),(38,'Txn_Board_WorkcenterNameFlowName_Query','','10.2.0.25/report','华为看板--工单产出',''),(39,'Txn_AutoLine','','10.2.0.25/report','自动化看板--三星项目',''),(40,'DCMaterialFirstPlan_KanBan_Report','','10.2.0.25/report','看板--大仓看板--大仓计划--2层',''),(41,'Txn_SMTXG4D','','10.2.0.56/OrbitX','二次锡膏绑定',''),(42,'TXN_OBARportQuerykanban','','25 OrbitXReport','小米OBA看板',''),(43,'Query_XiaoMiFirstPassYieldkanban','邓峰','10.2.0.56','小米直通率看板','');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL auto_increment,
  `sup_name` varchar(20) default NULL,
  `sup_linkman` varchar(20) default NULL,
  `sup_phone` varchar(11) default NULL,
  `sup_address` varchar(100) default NULL,
  `sup_remark` varchar(200) default NULL,
  `sup_pay` decimal(10,0) default NULL,
  `sup_type` varchar(100) default NULL,
  PRIMARY KEY  (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

insert  into `supplier`(`sup_id`,`sup_name`,`sup_linkman`,`sup_phone`,`sup_address`,`sup_remark`,`sup_pay`,`sup_type`) values (2,'三星供应商','小王','12388888888','广州增城','普通供应商','0','1'),(4,'TCL供应商','小王','12388888666','广州增城','普通供应商','0','1'),(7,'小米','小邓','15827920033','深圳','3333','100','2'),(9,'小米供应商','baby','15827920033','广东东莞','test','10000','2'),(10,'小米22','小邓','15827920033','深圳','',NULL,'3'),(13,'小米5555','','15827920033','','',NULL,'3'),(16,'小米55556666','小111','15827920033','深圳','','100','3'),(17,'小米228888','','15827920033','深圳','555','100','3'),(18,'小米55556666','小邓','','','','100','3');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_Id` int(10) NOT NULL auto_increment,
  `user_Name` varchar(50) default NULL,
  `user_Password` varchar(50) default NULL,
  `user_Type` varchar(50) default NULL,
  `role_Id` int(11) default NULL,
  `user_Description` varchar(50) default NULL,
  PRIMARY KEY  (`user_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_Id`,`user_Name`,`user_Password`,`user_Type`,`role_Id`,`user_Description`) values (1,'admin','admin','/userhead/1cf8a478a4c8421da88e980283f9c37c.png',1,'系统管理组之admin'),(2,'dengfeng','123456',NULL,1,'开发者');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
