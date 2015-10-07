-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 10 月 02 日 18:24
-- 服务器版本: 5.00.15
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `smart-note`
--

-- --------------------------------------------------------

--
-- 表的结构 `smart_article`
--

CREATE TABLE IF NOT EXISTS `smart_article` (
  `id` bigint(16) NOT NULL,
  `logo` varchar(256) default NULL,
  `title` varchar(100) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `moduleName` varchar(64) default NULL,
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(64) NOT NULL,
  `hits` int(11) default NULL,
  `createDate` datetime default NULL,
  `keywords` varchar(50) default NULL,
  `summary` varchar(500) default NULL,
  `comments` int(11) default '0',
  `userId` varchar(64) default NULL,
  `order` bigint(16) NOT NULL default '0',
  `status` int(11) default '1',
  `url` varchar(256) NOT NULL default '/it/detail.php',
  `isSelf` int(1) NOT NULL default '0' COMMENT '1原创  0 转载',
  `isRec` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `Article_SortOrder_Index` (`order`),
  KEY `createDate` (`createDate`),
  KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `smart_article`
--

INSERT INTO `smart_article` (`id`, `logo`, `title`, `moduleId`, `moduleName`, `categoryId`, `categoryName`, `hits`, `createDate`, `keywords`, `summary`, `comments`, `userId`, `order`, `status`, `url`, `isSelf`, `isRec`) VALUES
(1, NULL, 'express 开发web应用', 1, '编程语言', 6, 'Java', 124, '2015-10-01 02:51:55', NULL, 'express 开发web应用', 0, '1', 1, 1, 'detail.php', 0, 0),
(2, NULL, 'H5性能优化意义', 1, '编程语言', 6, 'java', 41, '2015-07-15 03:01:20', 'H5性能优化意义', 'H5性能优化意义', 0, '1', 2, 1, 'detail.php', 0, 0),
(3, NULL, 'java输入输出流 详解', 1, '编程语言', 6, 'Java', 82, '2012-07-15 03:01:20', 'inputstream,outputstream', 'stream代表的是任何有能力产出数据的数据源，或是任何有能力接收数据的接收源。在Java的IO中，所有的stream（包括Inputstream和Out stream）都包括两种类型：\r\n(1)字节流\r\n表示以字节为单位从stream中读取或往stream中写入信息，即io包中的inputstream类和outputstream类的派生类。通常用来读取二进制数据，如图象和声音。\r\n(2)字符流\r\n以Unicode字符为导向的stream，表示以Unicode字符为单位从stream中读取或往stream中写入信息。\r\n', 1, '1', 3, 1, 'detail.php', 0, 0),
(4, '双击上传图片', 'Java集合类面试题', 1, '编程语言', 6, 'Java', 46, '2012-07-15 03:01:20', 'Java集合类,HashMap,List,Collection', '1、你所知道的集合类都有哪些? 2、说出ArrayList,Vector, LinkedList的存储性能和特性 3、HashMap和Hashtable的区别 4、Collection 和 Collections的区别 5、List, Set, Map是否继承自Collection接口?', 0, '1', 4, 1, 'detail.php', 0, 0),
(5, NULL, 'Java集合类特点以及区别', 1, '编程语言', 6, 'Java', 87, '2012-07-15 03:01:20', 'Java集合类', '1、List: 有顺序的，元素可以重复  2、 Set：无顺序的，元素不可重复（值不相同） 3、 SortedSet：对一个Set排序 4、Map：元素是键值对 key：唯一，不可重复 value：可重复 5、SortedMap：元素自动对key排序  6、五个最常用的集合类之间的区别和联系:1．ArrayList 2．Vector 3．LinkedList 4．HashMap 5．HashTable', 0, '1', 5, 1, 'detail.php', 0, 0),
(6, NULL, 'jsp有哪些内置对象以及作用？', 1, '编程语言', 6, 'Java', 39, '2012-07-15 03:01:20', 'jsp内置对象', '1、jsp有哪些内置对象?作用分别是什么?\n2、jsp有哪些动作?作用分别是什么?\n3、JSP中动态INCLUDE与静态INCLUDE的区别？ \n4、两种跳转方式分别是什么?有什么区别?\n', 0, '1', 6, 1, 'detail.php', 0, 0),
(7, NULL, 'java几种典型内存泄露以及如何处理?', 1, '编程语言', 6, 'Java', 78, '2012-07-15 03:01:20', NULL, '1、Java是如何管理内存 2、什么是Java中的内存泄露 3、几种典型的内存泄漏 4 如何检测和处理内存泄漏\r\n', 0, '1', 7, 1, 'detail.php', 0, 0),
(8, NULL, 'Asp.Net输出缓存、数据缓存应用', 1, '编程语言', 7, '.NET/C#', 46, '2012-07-15 03:01:20', '缓存,OutPutCache', '一、页面输出缓存OutPutCache\r\n二、片段缓存，用户控件输出缓存\r\n三、数据缓存\r\n', 0, '1', 8, 1, 'detail.php', 0, 0),
(9, NULL, 'Petshop4.0 缓存设计学习', 1, '编程语言', 7, '.NET/C#', 95, '2012-07-15 03:01:20', '缓存', 'CacheDependency跟踪缓存依赖项，缓存依赖项可以是应用程序的 Cache 中的文件、目录或与其他对象的键。\nSqlCacheDependency类在所有受支持的 SQL Server 版本 (7.0, 2000, 2005) 上监视特定的 SQL Server 数据库表，以便在该表发生更改时，自动从 Cache 中删除与该表关联的项。 数据库表发生更改时，将自动删除缓存项，并向 Cache 中添加新版本的项。在使用 SQL Server 2005 数据库时，SqlCacheDependency 类还支持与 System.Data.SqlClient.SqlDependency 类进行集成。\n<br/>AggregateCacheDependency类监视依赖项对象的集合，以便在任何依赖项对象更改时，该缓存项都会自动移除。数组中的对象可以是 CacheDependency对象、SqlCacheDependency 对象、从 CacheDependency派生的自定义对象或这些对象的任意组合.\n\n', 0, '1', 9, 1, 'detail.php', 0, 0),
(10, '', 'C#类型，对象，堆栈和托管堆', 1, '编程语言', 7, '.NET', 46, '2012-07-15 03:01:20', '堆栈', 'C#的类型和对象在应用计算机内存时，大体用到两种内存，一个叫堆栈，另一个叫托管堆，下面我们用直角长方形来代表堆栈，用圆角长方形来代表托管堆。', 0, '1', 10, 1, 'detail.php', 0, 0),
(11, NULL, 'Java 常用排序算法--快速排序、插入排序、选择、冒泡', 1, '编程语言', 6, 'Java', 66, '2012-07-15 03:01:20', NULL, '快速排序是对冒泡排序的一种改进。它的基本思想是：通过一躺排序将要排序的数据分割成独立的两部分，其中一部分的所有数据都比另外一不部分的所有数据都要小，然后再按次方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，以此达到整个数据变成有序序列。最坏情况的时间复杂度为o(n2)，最好情况时间复杂度为o(nlog2n)。\r\n', 0, '1', 11, 1, 'detail.php', 0, 0),
(12, NULL, 'NHibernate框架学习系列文章', 1, '编程语言', 7, '.NET/C#', 80, '2012-07-15 03:01:20', 'NHibernate,Cuyahoga', '1、NHibernate的基本使用\n2、NHibernate.cfg.xml文件配置\n3、NHibernate HQL查询实例\n4、NHibernate 多表查询解决\n5、NHibernate延迟加载\n6、NHibernate主键生成方式\n7、NHibernate关联讲解\n8、NHibernate条件查询(Criteria Query)\n9、NHibernate开源框架Cuyahoga学习之权限映射\n10、NHibernate开源框架Cuyahoga学习之数据访问泛型约束的实现\n11、NHibernate开源框架Cuyahoga学习之数据访问接口的实现\n12、NHibernate开源框架Cuyahoga学习之数据访问实现\n', 0, '1', 12, 1, 'detail.php', 0, 0),
(13, NULL, 'Asp.net中基于Forms验证的角色验证授权', 1, '编程语言', 7, '.NET/C#', 32, '2012-07-15 18:46:36', 'Forms验证', 'Asp.net的身份验证有有三种，分别是"Windows | Forms | Passport"，其中又以Forms验证用的最多，也最灵活。\r\nForms 验证方式对基于用户的验证授权提供了很好的支持，可以通过一个登录页面验证用户的身份，将此用户的身份发回到客户端的Cookie，之后此用户再访问这个web应用就会连同这个身份Cookie一起发送到服务端。服务端上的授权设置就可以根据不同目录对不同用户的访问授权进行控制了。', 0, '1', 13, 1, 'detail.php', 0, 0),
(14, '', 'C#抽象类和接口的区别?', 1, '编程语言', 7, '.NET', 54, '2012-07-15 18:46:36', '', '抽象类是特殊的类，它具有如下特点：　　1、不能被实例化，除此以外，具有类的其他特性。　　2、重要的是抽象类可以包括抽象方法和抽象属性(但不是必须的)，这是普通类所不能的。抽象方法只能声明于抽象类中，且不包含任何实现，派生类必须覆盖它们。　　3、抽象类可以派生自另一个抽象类，可以覆盖基类的抽象方法也可以不覆盖，如果不覆盖，则其派生类必须覆盖它们。<br />接口是引用类型的，类似于类,和抽象类的相似之处有三点：1、不能实例化；2、包含未实现的方法声明；3、派生类必须实现未实现的方法，抽象类是抽象方法，接口则是所有成员（不仅是方法包括其他成员', 0, '1', 14, 1, 'detail.php', 0, 0),
(15, '', 'C# 中 const和readonly的区别', 1, '编程语言', 7, '.NET', 43, '2012-07-15 18:46:36', 'C# 中 const和readonly的区别', '1、readonly和const都是用来标识常量的 2、初始化值不同 3、const字段是编译时常量，而readonly字段可用于运行时常量。4.const默认是静态的，而readonly如果设置成静态的就必须显示声明。5.const修饰的值类型是有限制的，object、Array(数组)和struct(结构)不能声明为const常量。readonly可以是任何类型 ', 0, '1', 15, 1, 'detail.php', 0, 0),
(16, NULL, 'Struts2 工作原理图', 1, '编程语言', 6, 'Java', 38, '2012-07-15 18:46:36', 'Struts2', '一个请求在Struts2框架中的处理大概分为以下几个步骤\r\n1 客户端初始化一个指向Servlet容器（例如Tomcat）的请求\r\n2 这个请求经过一系列的过滤器（Filter）（这些过滤器中有一个叫做ActionContextCleanUp的可选过滤器，这个过滤器对于Struts2和其他框架的集成很有帮助，例如：SiteMesh Plugin）\r\n......', 0, '1', 16, 1, 'detail.php', 0, 0),
(17, NULL, 'Struts2框架介绍', 1, '编程语言', 6, 'Java', 41, '2012-07-15 18:46:36', 'MVC', 'Struts2其实并不是一个陌生的Web框架，Struts2是以Webwork的设计思想为核心，吸收了Struts1的优点，因此，可以认为 Struts2是Struts1和Webwork结合的产物。 ', 0, '1', 17, 1, 'detail.php', 0, 0),
(18, NULL, '45道Struts+Spring+Hibernate面试题', 1, '编程语言', 6, 'Java', 178, '2012-07-15 18:46:36', 'Struts,Spring,Hibernate', '主要：1、Struts有哪些主要功能以及原理 2 Hibernate 映射与持久化 3 Spring依赖注入', 3, '1', 18, 1, 'detail.php', 0, 0),
(19, '', 'C#单链表的实现及其应用', 1, '编程语言', 7, '.NET', 205, '2012-07-16 22:25:03', '单链表', '单链表构造、插入、删除、遍历操作以及实际应用。', 0, '1', 19, 1, 'detail.php', 0, 0),
(20, '', 'C#虚方法,抽象类,多态性', 1, '编程语言', 7, '.NET', 66, '2012-07-16 22:25:03', '', '1. 虚方法必须有实现部分，抽象方法没有提供实现部分，抽象方法是一种强制派生类覆盖的方法，否则派生类将不能被实例化2. 抽象方法只能在抽象类中声明，虚方法不是。其实如果类包含抽象方法，那么该类也是抽象的，也必须声明为抽象的3. 抽象方法必须在派生类中重写,这一点跟接口类似，虚方法不必。如果一个类派生自抽象类但没有完全实现所有抽象方法,那么这个类本身也必须声明为抽象的.另外抽象类不能实例化,但可以定义抽象类的引用,这种引用能够指向派生自该抽象类的非抽象子类的实例,调用这些虚拟和抽象方法时将自动按照多态性执行.抽象方法不能具有私有可见性,否则派生类将无法实现它.抽象类可以有构造函数,字段,属性', 0, '1', 20, 1, 'detail.php', 0, 0),
(21, NULL, 'C# abstract & virtual & override & new比较', 1, '编程语言', 7, 'C/C++', 183, '2012-07-16 22:25:03', 'abstract,virtual,override,new', '抽象类具有以下特性：\r\n1、抽象类不能实例化。\r\n2、抽象类可以包含抽象方法和抽象访问器。\r\n3、不能用 sealed 修饰符修改抽象类，这意味着该类不能被继承。\r\n4、从抽象类派生的非抽象类必须包括继承的所有抽象方法和抽象访问器的实实现。\r\n5、在方法或属性声明中使用 abstract 修饰符以指示此方法或属性不包含实现。', 0, '1', 21, 1, 'detail.php', 0, 0),
(22, '', 'C#委托实例讲解', 1, '编程语言', 7, '.NET', 105, '2012-07-16 22:25:03', 'C#委托', '把方法作为方法的参数,委托必须与传递的方法具有相同的参数类型和个数,通过委托动态指定要执行哪个方法', 0, '1', 22, 1, 'detail.php', 0, 0),
(23, '', 'C# 经典基础面试题20道（经过梳理）', 1, '编程语言', 7, '.NET', 94, '2012-07-16 22:56:31', '委托,进程,线程,垃圾回收', '1、请你说说C#.NET中类和结构的区别?2、死锁的必要条件?怎么克服?3、接口是否可以继承接口?抽象类是否可以实现接口?抽象类是否可以继承实体类?9、概述反射和序列化?13、什么叫应用程序域?什么是托管代码?什么是非托管代码?什么是强类型系统?什么是装箱和拆箱?什么是重载?CTS、CLS和CLR分别作何解释?', 0, '1', 23, 1, 'detail.php', 0, 0),
(24, NULL, 'Android 基础知识面试题之选择题', 2, '移动开发', 10, 'Android', 90, '2012-07-24 23:00:40', '内存回收,android 生命周期,Activity', '内存回收、 android 中下列属于Intent的作用、 android 关于service生命周期', 0, '1', 24, 1, 'detail.php', 0, 0),
(25, NULL, 'Android 基础知识面试题之填空题', 2, '移动开发', 10, 'Android', 327, '2012-07-24 23:00:40', 'android组件,android 生命周期', '1. android中常用的四个布局是framlayout，linenarlayout，relativelayout和tablelayout。\r\n2. android 的四大组件是activiey，service，broadcast和contentprovide。\r\n3. java.io包中的objectinputstream和objectoutputstream类主要用于对对象(Object)的读写。\r\n4. android 中service的实现方法是：startservice和bindservice。\r\n', 3, '1', 25, 1, 'detail.php', 0, 0),
(26, NULL, 'Android 基础知识面试题之简答题', 2, '移动开发', 10, 'Android', 118, '2012-07-24 23:00:40', 'handler机制,广播机制,activity生命周期,Service', '1、如何启用Service，如何停用Service。2、请解释下在单线程模型中Message、Handler、MessageQueue、Looper之间的关系。3、简要解释一下activity、 intent 、intent filter、service、Broadcase、BroadcaseReceiver', 0, '1', 26, 1, 'detail.php', 0, 0),
(27, NULL, 'Android四大组件基本介绍', 2, '移动开发', 10, 'Android', 53, '2012-08-13 22:48:29', 'Android四大组件', 'Android四大组件：Activity、Service、BroadCast Recevicer、Content provider', 0, '1', 27, 1, 'detail.php', 0, 0),
(28, NULL, 'Android四大组件基本介绍之Service基本知识点', 2, '移动开发', 10, 'Android', 37, '2012-08-13 23:01:06', 'Android Service', 'startService()的目的是回调onStart()方法，onCreate() 方法是在Service不存在的时候调用的，如果Service存在那么startService()将跳过onCreate() 方法', 0, '1', 28, 1, 'detail.php', 0, 0),
(29, NULL, 'Android四大组件基本介绍之Activity生命周期', 2, '移动开发', 10, 'Android', 30, '2012-08-13 23:18:18', 'Activity生命周期', 'Activity的整个生命周期都定义在下面的接口方法中，所有方法都可以被重载。所有的Activity都需要实现 onCreate(Bundle)去初始化设置，大部分Activity需要实现onPause()去提交更改过的数据，当前大部分的Activity也需要实现onFreeze()接口，以便恢复在onCreate(Bundle)里面设置的状态。', 0, '1', 29, 1, 'detail.php', 0, 0),
(30, NULL, 'Android四大组件基本介绍之BroadcastReceiver简介', 2, '移动开发', 10, 'Android', 39, '2012-08-13 23:29:03', 'BroadcastReceiver', '    在Android中，Broadcast是一种广泛运用的在应用程序之间传输信息的机制。而BroadcastReceiver是对发送出来的Broadcast进行过滤接受并响应的一类组件。下面将详细的阐述如何发送Broadcast和使用BroadcastReceiver过', 0, '1', 30, 1, 'detail.php', 0, 0),
(31, NULL, 'Android四大组件基本介绍之BroadcastReceiver使用', 2, '移动开发', 10, 'Android', 29, '2012-08-13 23:33:38', NULL, '　一.Broadcast Receive为广播接收器，它和事件处理机制类似，只不过事件的处理机制是程序组件级别的，而广播处理机制是系统级别的。\r\n　　二.事件的广播比价简单，构建Intent对象，调用sendBroadcast()方法将广播发出。事件的接收是通过定义一个继承BroadcastReceiver类来实现，继承该类后覆盖其onReceiver方法，并在该方法中相应事件。', 0, '1', 31, 1, 'detail.php', 0, 0),
(32, NULL, 'Android四大组件基本介绍之Content Provider使用', 2, '移动开发', 10, 'Android', 36, '2012-08-13 23:40:42', 'Content Provider', ' Android应用程序可以使用文件或SqlLite数据库来存储数据。Content Provider提供了一种多应用间数据共享的方式，比如：联系人信息可以被多个应用程序访问。Content Provider是个实现了一组用于提供其他应用程序存取数据的标准方法的类。', 0, '1', 32, 1, 'detail.php', 0, 0),
(33, NULL, 'Android view的几种布局方式及实践', 2, '移动开发', 10, 'Android', 52, '2012-08-13 23:45:37', 'view布局,Linear Layout,Relative Layout', 'View的布局显示方式有下面几种：线性布局（Linear Layout）、相对布局（Relative Layout）、表格布局（Table Layout）、网格视图（Grid View）、标签布局（Tab Layout）、列表视图（List View）、绝对布局（AbsoluteLayout）。', 0, '1', 33, 1, 'detail.php', 0, 0),
(34, NULL, 'Android中Handle类的基本用法', 2, '移动开发', 10, 'Android', 36, '2012-08-14 22:43:45', NULL, ' 当我们在处理下载或是其他需要长时间执行的任务时，如果直接把处理函数放Activity的OnCreate或是OnStart中，会导致执行过程中整个Activity无响应，如果时间过长，程序还会挂掉。Handler就是把这些功能放到一个单独的线程里执行，与Activity互不影响。', 0, '1', 34, 1, 'detail.php', 0, 0),
(35, NULL, 'Android导入静态数据库', 2, '移动开发', 10, 'Android', 29, '2012-08-14 22:48:36', NULL, '在Android中通过导入静态数据库来提高应用第一次的启动速', 0, '1', 35, 1, 'detail.php', 0, 0),
(36, NULL, 'Android数据存储之SQLite数据库存储一', 2, '移动开发', 10, 'Android', 30, '2012-08-14 22:58:08', 'sqlite,SQLite数据库,android sqlite', '//创建或打开数据库\r\nSQLiteDatabase myDataBase=this.openOrCreateDatabase("myDataBase.db",\r\nMODE_PRIVATE, new CursorFactory(){\r\n//创建新的数据库，名称myDatabase，模式MODE_PRIVATE，可选的游标工厂类\r\n@Override\r\npublic Cursor newCursor(SQLiteDatabase db,\r\nSQLiteCursorDriver masterQuery, String editTable,', 0, '1', 36, 1, 'detail.php', 0, 0),
(37, NULL, 'Android数据存储之SQLite数据库存储二', 2, '移动开发', 10, 'Android', 10, '2012-08-14 23:02:18', 'SQLite数据库存储,SQLiteOpenHelper', '在实际使用的时候，通常都要封装一个继承SQLiteOpenHelper类的数据库操作类。SQLiteOpenHelper类是一个抽象的辅助类，主要用来生成一个数据库并对数据库的版本进行管理，在SQLiteOpenHelper类的构造方法中分别传入Context、数据库名称，CursorFactory(一般传入null，否则为默认数据库)，数据库版本号(不能为负数)。在SQLiteOpenHelper中首先执行的是onCreate方法(当数据库第一次创建时)，一般在这个方法里生成数据表。要注意的是，在构造函数时并没有真正创建数据库，而是在调用getWriteableDatabase()或者getReadableDatabase()方法的时候系统才会真正创建数据库，如果当时系统中不存在这个数据库，系统会自动生成一个数据库，然后返回SQLiteDatabase对象。', 0, '1', 37, 1, 'detail.php', 0, 0),
(38, NULL, 'Oracle学习笔记之表结构修改', 4, '数据库', 21, 'Oracle', 72, '2012-08-15 19:42:37', 'Oracle修改列名,添加和删除列,修改列数据类型', 'Oracle修改列名,添加和删除列,修改列数据类型', 0, '1', 38, 1, 'detail.php', 0, 0),
(39, NULL, 'Oracle学习系列笔记之数据库登陆、表空间管理\r\n', 4, '数据库', 21, 'Oracle', 82, '2012-08-15 19:42:37', '查看表空间信息,临时表', 'spool,临时表,grant connect,resource to username,查看表空间信息', 0, '1', 39, 1, 'detail.php', 0, 0),
(40, NULL, 'SQL Server 基本操作', 4, '数据库', 22, 'SQL Server', 88, '2012-08-15 19:47:24', '表基本操作,存储过程', '表基本操作:列增删改,存储过程,两表更新：根据条件从一个表里面查询出符合条件的结果更新另一个表', 0, '1', 40, 1, 'detail.php', 0, 0),
(41, NULL, 'ASP.NET应用程序与页面生命周期', 1, '编程语言', 7, '.NET/C#', 88, '2012-08-15 19:47:24', 'ASP.NET页面生命周期,httphandler,httpmodule', 'ASP.NET 应用程序的生命周期以浏览器向 Web 服务器（对于 ASP.NET 应用程序，通常为 IIS）发送请求为起点，直至将请求结果返回至浏览器结束。在这个过程中，首先我们需要了解ASP.NET请求的2个大致的步骤。其次我们将详细了解 httphandler,httpmodule和 asp.net 页面对象（Page）中不同的事件的执行顺序，逻辑。', 0, '1', 41, 1, 'detail.php', 0, 0),
(42, NULL, 'Windows Azure应用平台系列文章', 1, '编程语言', 7, '.NET/C#', 83, '2012-08-15 19:47:24', 'Windows Azure Platform,Windows Azure AppFabric,Win', 'Windows Azure Platform,Windows Azure AppFabric,Windows Azure VM Role,SQL Azure\n', 0, '1', 42, 1, 'detail.php', 0, 0),
(43, NULL, 'Android 系列文章索引[webabcd\r\n]--博客园', 2, '移动开发', 10, 'Android', 6, '2012-08-15 19:47:24', 'HTTP通信, XML解析, 异步消息处理', '介绍系出名门 Android 系列文章索引：搭建开发环境, 布局, 菜单, 对话框, 通知, 活动, 服务, 广播, 广播接收器, 控件, 数据库支持, 内容提供器, HTTP通信, XML解析, 异步消息处理', 0, '1', 43, 1, 'detail.php', 0, 0),
(44, NULL, 'Android学习系列[谦虚的天下]--博客园', 2, '移动开发', 10, 'Android', 16, '2012-08-15 19:47:24', 'App消息推送机制,ListView\r\n', 'Android学习系列(1)--App签名(为apk签名)\r\n\r\nAndroid学习系列(2)--App自动更新之通知栏下载\r\n\r\nAndroid学习系列(3)--App自动更新之自定义进度视图和内部存储\r\n\r\nAndroid学习系列(4)--App自适应draw9patch不失真背景\r\n\r\nAndroid学习系列(5)--App布局初探之简单模型\r\n\r\nAndroid学习系列(6)--App模块化及工程扩展\r\n\r\nAndroid学习系列(7)--App消息推送机制\r\n', 0, '1', 44, 1, 'detail.php', 0, 0),
(45, NULL, 'ExtJs系列的文章[谦虚的天下]---博客园', 3, 'WEB开发', 15, 'JavaScript', 17, '2012-08-15 20:36:25', 'FormPanel,TabPanel', 'ExtJs2.0学习系列(1)--Ext.MessageBox\r\n\r\nExtJs2.0学习系列(2)--Ext.Panel\r\n\r\nExtJs2.0学习系列(3)--Ext.Window \r\n\r\nExtJs2.0学习系列(4)--Ext.FormPanel之第一式\r\n\r\nExtJs2.0学习系列(5)--Ext.FormPanel之第二式\r\n\r\nExtJs2.0学习系列(6)--Ext.FormPanel之第三式(ComboBox篇)\r\n\r\nExtJs2.0学习系列(7)--Ext.FormPanel之第四式(其他组件示例篇)\r\n\r\nExtJs2.0学习系列(8)--Ext.FormPanel之第五式(综合篇)\r\n\r\nExtJs2.0学习系列(9)--Ext.TabPanel之第一式\r\n', 0, '1', 45, 1, 'detail.php', 0, 0),
(46, NULL, 'Android常用代码片段', 2, '移动开发', 10, 'Android', 11, '2012-08-16 20:21:11', '发送短信,发送彩信,发送Mail', '1：查看是否有存储卡插入\r\n2：让某个Activity透明\r\n3：在屏幕元素中设置句柄\r\n4:发送短信\r\n5:发送彩信\r\n7：发送Mail\r\n8:注册一个 BroadcastReceiver\r\n9:定义ContentObserver，监听某个数据表\r\n', 0, '1', 46, 1, 'detail.php', 0, 0),
(47, NULL, 'Android常用代码片段一', 2, '移动开发', 10, 'Android', 20, '2012-08-16 20:21:11', NULL, ' 一、 获取系统版本号 二、获取系统信息 三、获取安装路径和已安装程序列表 四、获取图片、应用名、包名  五、解决listview上 Item上有按钮时 item本身不能点击的问题 六、不让文本框输入中文 七、获取屏幕宽高 八、将TabWidget显示在屏幕下方 九、获取线程ID和线程名称 十、android中调用其它android应用', 0, '1', 47, 1, 'detail.php', 0, 0),
(48, NULL, 'Android常用代码片段二', 2, '移动开发', 10, 'Android', 14, '2012-08-16 20:21:11', NULL, '  一、  获取系统版本号：\r\n  二、获取系统信息\r\n三、获取安装路径和已安装程序列表', 0, '1', 48, 1, 'detail.php', 0, 0),
(49, NULL, 'Android常用代码片段三', 2, '移动开发', 10, 'Android', 13, '2012-08-16 20:58:12', '获取手机屏幕分辨率,创建快捷方式,获取文件中的类名', '\r\n二十一、获取手机屏幕分辨率 二十二、在Activity里面播放背景音乐 二十三、让程序的界面不随机器的重力感应而翻转 二十四、使activity全屏显示 二十五、在RelativeLayout中使selector要注意点 二十六、显示或隐藏虚拟键盘 二十七、退出程序时清除通知中信息 二十八、创建快捷方式 二十九、获取文件中的类名： 三十. TextView中的getTextSize返回值是以像素(px)为单位的', 0, '1', 49, 1, 'detail.php', 0, 0),
(50, NULL, 'Android常用代码片段四', 2, '移动开发', 10, 'Android', 10, '2012-08-16 20:58:12', '获取移动设备的IP地址,listview中item中button可点击,输入框不挤压activity', '三十一. 在继承自View时,绘制bitmap时,需要将图片放到新建的drawable-xdpi中,否则容易出现绘制大小发生改变三十二. 在文字中加下划线: textView.getPaint().setFlags(Paint.STRIKE_THRU_TEXT_FLAG);\r\n三十三. scrollView是继承自frameLayout,所以在使用LayoutParams时需要用frameLayout的\r\n三十四、android阴影字体设置......四十、高仿小米launcher跨屏拖动item（GridView长按item进行拖动\r\n', 0, '1', 50, 1, 'detail.php', 0, 0),
(51, NULL, 'Android动画讲解', 2, '移动开发', 10, 'Android', 15, '2012-08-16 20:58:12', 'tween animation,frame animation,property animation', 'android支持两种动画模式，tween animation,frame animation，在android3.0中又引入了一个新的动画系统：property animation，这三种动画模式在SDK中被称为property animation,view animation,drawable animation。', 0, '1', 51, 1, 'detail.php', 0, 0),
(52, NULL, 'Android Activity切换动画overridePendingTransition', 2, '移动开发', 10, 'Android', 6, '2012-08-16 20:58:12', 'overridePendingTransition,Animation', 'translate 移动效果：sacle.xml 缩放效果：rotate.xml 旋转效果：\r\n', 0, '1', 52, 1, 'detail.php', 0, 0),
(53, NULL, '面试中的Singleton', 1, '编程语言', 6, 'Java', 64, '2012-08-16 20:58:12', 'Singleton', '首先要说的就是Singleton的构造函数。由于Singleton限制其类型实例有且只能有一个，因此我们应通过将构造函数设置为非公有来保证其不会被用户代码随意创建。而在类型实例访问函数中，我们通过局部静态变量达到实例仅有一个的要求。另外，通过该静态变量，我们可以将该实例的创建延迟到实例访问函数被调用时才执行，以提高程序的启动速度.', 0, '1', 53, 1, 'detail.php', 0, 0),
(54, NULL, '【MongoDB for Java】Java操作MongoDB', 4, '数据库', 6, 'Java', 80, '2012-08-16 20:58:12', 'MongoDB', '1、 建立SimpleTest.java，完成简单的mongoDB数据库操作\r\n\r\nMongo mongo = new Mongo();\r\n\r\n这样就创建了一个MongoDB的数据库连接对象，它默认连接到当前机器的localhost地址，端口是27017。\r\n\r\nDB db = mongo.getDB(“test”);\r\n\r\n这样就获得了一个test的数据库，如果mongoDB中没有创建这个数据库也是可以正常运行的。如果你读过上一篇文章就知道，mongoDB可以在没有创建这个数据库的情况下，完成数据的添加操作。当添加的时候，没有这个库，mongoDB会自动创建当前数据库。\r\n', 0, '1', 54, 1, 'detail.php', 0, 0),
(55, NULL, 'Android NDK编程入门笔记', 2, '移动开发', 10, 'Android', 17, '2012-08-16 20:58:12', 'Android NDK', '1. 代码的保护，由于apk的java层代码很容易被反编译，而C/C++库反汇难度较大。 2. 在NDK中调用第三方C/C++库，因为大部分的开源库都是用C/C++代码编写的。 3. 便于移植，用C/C++写得库可以方便在其他的嵌入式平台上再次使用。 ', 0, '1', 55, 1, 'detail.php', 0, 0),
(56, NULL, ' Android WebKit 分析', 2, '移动开发', 10, 'Android', 14, '2012-08-16 21:33:59', 'WebKit', 'WebKit是一个开源的浏览器网页排版引擎，包含WebCore排版引擎和JSCore引擎。WebCore和JSCore引擎来自于KDE项目的KHTML和KJS开源项目。Android平台的Web引擎框架采用了WebKit项目中的WebCore和JSCore部分，上层由Java语言封装，并且作为API提供给Android应用开发者，而底层使用WebKit核心库（WebCore和JSCore）进行网页排版。', 0, '1', 56, 1, 'detail.php', 0, 0),
(57, NULL, '一步一步写二叉查找树', 1, '编程语言', 6, 'Java', 41, '2012-08-16 21:41:59', '二叉树', '二叉查找树（BST）是二叉树的一个重要的应用，它在二叉树的基础上加上了这样的一个性质：对于树中的每一个节点来说，如果有左儿子的话，它的左儿子的值一定小于它本身的值，如果有右儿子的话，它的右儿子的值一定大于它本身的值。', 0, '1', 57, 1, 'detail.php', 0, 0),
(58, NULL, '基本数据结构：二叉树（binary tree）', 1, '编程语言', 6, 'Java', 55, '2012-08-16 21:41:59', '二叉树', '二叉树首先是一棵树，每个节点都不能有多于两个的儿子，也就是树的度不能超过2。二叉树的两个儿子分别称为“左儿子”和“右儿子”，次序不能颠倒。如图1是一个简单的二叉树。', 0, '1', 58, 1, 'detail.php', 0, 0),
(59, NULL, 'Java线程：join,sleep,yield,wait、notify、notifyAll', 1, '编程语言', 6, 'Java', 42, '2012-08-16 21:41:59', 'join,sleep,yield,wait、notify、notifyAll', 'join方法：假如你在A线程中调用了B线程的join方法B.join();，这时B线程继续运行，A线程停止（进入阻塞状态）。等B运行完毕A再继续运行。\r\nsleep方法：线程中调用sleep方法后，本线程停止(进入阻塞状态)，运行权交给其他线程。\r\nyield方法：线程中调用yield方法后本线程并不停止，运行权由本线程和优先级不低于本线程的线程来抢。（不一定优先级高的能先抢到，只是优先级高的抢到的时间长）\r\nwait方法：当前线程转入阻塞状态，让出cpu的控制权，解除锁定。\r\nnotify方法：唤醒因为wait()进入阻塞状态的其中一个线程。\r\nnotifyAll方法： 唤醒因为wait()进入阻塞状态的所有线程。\r\n', 0, '1', 59, 1, 'detail.php', 0, 0),
(60, NULL, '浅谈SQL Server 对于内存的管理', 4, '数据库', 22, 'SQL Server', 87, '2012-08-16 22:02:41', '内存管理', '理解SQL Server对于内存的管理是对于SQL Server问题处理和性能调优的基本，本篇文章讲述SQL Server对于内存管理的内存原理。', 0, '1', 60, 1, 'detail.php', 0, 0),
(61, '双击上传图片', 'Android框架学习-1.Activity', 2, '移动开发', 10, 'Android', 10, '2012-08-16 22:02:41', 'Activity', 'Activity是一个应用程序组件，它提供了一个屏幕，用户可以与它进行交互来做一些事情，比如拨打电话，拍照，发邮件，或查看地图。每个Activity都被给予了一个窗口，可在其中绘制它的用户界面。窗口通常会占据整个屏幕，但可能比屏幕和浮在上方的其他窗口都要小', 0, '1', 61, 1, 'detail.php', 0, 0),
(62, '双击上传图片', 'Android框架学习-2.service', 2, '移动开发', 10, 'Android', 31, '2012-08-16 22:02:41', 'Android Service', 'Service是一个长期运行在后台，并不提供用户界面的应用程序组件。其他应用程序的组件可以启动一个service，并且即使用户切换到另一个应用程序，service也可以在后台继续运行。此外，一个组件可以绑定到service与它进行交互，甚至执行进程间通信（IPC）。例如，一个service可能会处理来自后台的所有事情，包括网络事务、播放音乐、执行文件I/O或者与content provider交互。', 0, '1', 62, 1, 'detail.php', 0, 0),
(63, NULL, 'Android框架学习-3.Activity的生周期', 2, '移动开发', 10, 'Android', 34, '2012-08-16 22:02:41', 'Activity生周期', '1.启动一个Activity\r\n学习了解Activity生命周期的基本知识，用户创建和执行Activity是怎样调用生命周期的方法的\r\n2.暂停和恢复一个Activity\r\n了解Activity暂停(paused)和恢复(resumed)时发生了什么，在这些状态改变期间我们应该做什么\r\n3.停止和重新启动Activity\r\n当activity完成它的工作后发生了什么\r\n4.重新创建Activity\r\n当你的Activity被destroyed（摧毁）后发生了什么，并且学习如何能重新创建这个Activity\r\n', 0, '1', 63, 1, 'detail.php', 0, 0),
(64, NULL, 'Android框架学习-4.使用Fragments构建动态UI', 2, '移动开发', 10, 'Android', 28, '2012-08-16 22:02:41', 'Fragments', '1. 使用Android支持的库\r\n通过绑定Android支持库，学习怎样使用近期旧版本的APIs\r\n2. 创建一个Fragment\r\n学习怎样创建fragment并实现一些基本行为\r\n3．构建一个灵活的UI\r\n学习怎样为不同的屏幕提供不同的fragment配置布局\r\n4. 与其他Fragment通信\r\n学习如何为fragment设置通信路径来与启动fragment或Activity通信\r\n', 0, '1', 64, 1, 'detail.php', 0, 0),
(65, '双击上传图片', 'Oracle 11g Release 1 (11.1) 游标——显式游标', 4, '数据库', 21, 'Oracle', 81, '2012-08-16 22:02:41', 'Oracle游标', '•声明一个游标•打开一个游标•用游标获取一个（Fetch）数据•用游标获取全部（Fetch Bulk）数据•关闭一个游标•显式游标的属性', 0, '1', 65, 1, 'detail.php', 0, 0),
(67, '双击上传图片', 'Android---实现登录用户信息保存', 2, '移动开发', 10, 'Android', 38, '2012-08-17 21:16:07', 'XML数据的生成和XML数据的解析', 'XML数据生成：在将用户信息保存成XML数据前，我们应该先了解一个非常重要的类XmlSerializer,这个类帮助我们将需要保存成XML数据的信息进行序列化。', 0, '1', 67, 1, 'detail.php', 0, 0),
(69, NULL, 'Android中OutputStream/InputStream数据存储SD卡', 2, '移动开发', 10, 'Android', 34, '2012-08-17 21:16:07', 'OutputStream/InputStream数据存储', '优点： 1.适合游戏存储，能存储较大数据；2.不仅能存储到系统中，也能存储到SD卡中！', 0, '1', 69, 1, 'detail.php', 0, 0),
(70, NULL, 'Android中SharedPreference数据存储', 2, '移动开发', 10, 'Android', 19, '2012-08-17 21:16:07', 'SharedPreference', 'Android中SharedPreference与FIleInputStream/FileOutputStream将数据存储到SD卡中1.  SharedPreference2. 文件存储 (FIleInputStream/FileOutputStream)3.SQLite 4.ContentProvider (不推荐用于游戏保存)', 0, '1', 70, 1, 'detail.php', 0, 0),
(71, NULL, 'Android中OutputStream/InputStream数据存储', 2, '移动开发', 10, 'Android', 48, '2012-08-17 21:16:07', 'OutputStream/InputStream数据存储', '优点： 1.适合游戏存储，能存储较大数据；2.不仅能存储到系统中，也能存储到SD卡中！', 0, '1', 71, 1, 'detail.php', 0, 0),
(72, '双击上传图片', 'Dalvik字节码和JVM字节码的区别', 1, '编程语言', 6, 'Java', 48, '2012-08-18 20:45:42', 'Dalvik,Android 虚拟机', 'JVM字节码由.class文件组成，每个文件一个class。JVM在运行的时候为每一个类装载字节码。相反的，Dalvik程序只包含一个.dex文件，这个文件包含了程序中所有的类。下图显示了.dex文件的生成过程。 ', 0, '1', 72, 1, 'detail.php', 0, 0),
(73, '双击上传图片', 'Android动画Tween 和 Frame 分析', 2, '移动开发', 10, 'Android', 43, '2012-08-18 21:59:46', 'Animation,Tween ,Frame', 'Android 平台提供了两类动画，一类是 Tween 动画，即通过对场景里的对象不断做图像变换(平移、缩放、旋转)产生动画效果；第二类是 Frame 动画，即顺序播放事先做好的图像，跟电影类似。本文分析了 Tween 动画的实现原理。', 0, '1', 73, 1, 'detail.php', 0, 0),
(74, NULL, 'Android中用Application类实现全局变量', 2, '移动开发', 10, 'Android', 35, '2012-08-21 00:05:34', 'Application', '在Java中如果要使用全局变量，一般定义public static类型的变量。但是这种方法不符合Android的框架架构，Android中要使用Application context。', 0, '1', 74, 1, 'detail.php', 0, 0),
(75, '双击上传图片', 'JVM运行时数据区详解-Heap堆(优化配置、代码样例)', 1, '编程语言', 6, 'Java', 62, '2012-08-21 00:11:48', 'JVM,java虚拟机,Heap堆', 'java虚拟机的堆Heap可供多条线程共享当前运行时的内存区域，当然也供所有类实例和数组对象分配内存的区域。', 0, '1', 75, 1, 'detail.php', 0, 0),
(76, '双击上传图片', 'JVM运行时数据区详解-Stack栈(优化配置、代码样例)', 1, '编程语言', 6, 'Java', 86, '2012-08-21 00:16:53', 'JVM,java虚拟机,Stack栈', 'Java虚拟机定义了若干种程序运行期间会使用到的运行时数据区，其中有一些会随着虚拟机启动而创建，随着虚拟机退出而销毁。另外一些则是与线程一一对应的，这些与线程对应的数据区域会随着线程开始和结束而创建和销毁。', 0, '1', 76, 1, 'detail.php', 0, 0),
(77, NULL, 'java快速排序算法', 1, '编程语言', 6, 'Java', 47, '2012-08-22 00:08:10', '快速排序', '快速排序（Quicksort）是对冒泡排序的一种改进。由C. A. R. Hoare在1962年提出。它的基本思想是：通过一趟排序将要排序的数据分割成独立的两部分，其中一部分的所有数据都比另外一部分的所有数据都要小，然后再按此方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，以此达到整个数据变成有序序列。\r\n', 0, '1', 77, 1, 'detail.php', 0, 0),
(78, NULL, 'java排序算法（插入/选择/希尔/堆)', 1, '编程语言', 6, 'Java', 205, '2012-08-22 00:19:53', '插入排序 选择排序 希尔排序 堆排序', '插入排序 \r\n直接插入排序、希尔排序\r\n\r\n\r\n选择排序 \r\n简单选择排序、堆排序\r\n\r\n\r\n交换排序 \r\n冒泡排序、快速排序\r\n\r\n\r\n归并排序 \r\n基数排序 \r\n排序基类', 0, '1', 78, 1, 'detail.php', 0, 0),
(79, '双击上传图片', 'Android动画效果编程基础 Animation', 2, '移动开发', 10, 'Android', 29, '2012-08-25 23:06:10', 'alpha,scale,translate ,rotate     ', 'alpha   渐变透明度动画效果   scale   渐变尺寸伸缩动画效果   translate   画面转换位置移动动画效果   rotate   画面转移旋转动画效果   ', 0, '1', 79, 1, 'detail.php', 0, 0),
(80, NULL, 'Android中判断网络连接是否可用', 2, '移动开发', 10, 'Android', 41, '2012-08-26 21:02:52', '网络连接是否可用,WIFI,3G', '1、判断网络连接是否可用  2、 如果没有开启网络的话，就进入到网络开启那个界面 3、 判断GPS是否打开 4 判断WIFI是否打开 5、 判断是否是3G网络  6、 判断是wifi还是3g网络', 0, '1', 80, 1, 'detail.php', 0, 0),
(81, NULL, 'Android开发之多线程处理、Handler详解', 2, '移动开发', 10, 'Android', 29, '2012-08-29 01:16:59', '', '1.Android开发过程中为什么要多线程 2. Android中使用Thread线程会遇到哪些问题', 0, '1', 81, 1, 'detail.php', 0, 0),
(82, NULL, 'Android游戏编程——View游戏框架 ', 2, '移动开发', 10, 'Android', 47, '2012-08-31 00:57:52', 'View,SurfaceView,GLSurfaceView', 'android游戏开发中常用的三种视图是：view、SurfaceView和GLSurfaceView。\r\nView：显示视图，内置画布，提供图形绘制函数、触屏事件、按键事件函数等；\r\nSurfaceView：基于view视图进行拓展的视图类，更适合2D游戏的开发；\r\nGLSurfaceView：基于SurfaceView视图再次进行拓展的视图类，专用于3D游戏开发的视图。\r\n\r\n', 0, '1', 82, 1, 'detail.php', 0, 0),
(83, '双击上传图片', 'Android 选项菜单完全讲解(OptionMenu)', 2, '移动开发', 10, 'Android', 27, '2012-09-02 16:51:57', '菜单,OptionMenu,ContextMenu', '菜单是用户界面中最常见的元素之一，使用非常频繁，在Android中，菜单被分为如下三种，选项菜单（OptionsMenu）、上下文菜单（ContextMenu）和子菜单（SubMenu）.', 0, '1', 83, 1, 'detail.php', 0, 0),
(84, NULL, 'Android 上下文菜单ContextMenu实现', 2, '移动开发', 10, 'Android', 38, '2012-09-02 16:51:57', '上下文菜单,ContextMenu', 'Android 的上下文菜单类似于 PC 上的右键菜单。当为一个视图注册了上下文菜单之后，长按（2 秒左右）这个视图对象就会弹出一个浮动菜单，即上下文菜单。任何视图都可以注册上下文菜单，不过，最常见的是用于列表视图ListView的item。注意：Android 的上下文菜单不支持图标或快捷键。\r\n', 0, '1', 84, 1, 'detail.php', 0, 0),
(85, '双击上传图片', '命令行FTP命令', 4, '数据库', 21, 'Oracle', 96, '2012-09-08 09:55:25', 'FTP命令', 'FTP上传下载', 0, '1', 85, 1, 'detail.php', 0, 0),
(86, NULL, 'Oracle declare语法', 4, '数据库', 21, 'Oracle', 107, '2012-09-08 10:13:11', 'Oracle declare语法,循环遍历', 'Oracle declare语法', 0, '1', 86, 1, 'detail.php', 0, 0),
(87, NULL, 'JQuery 简单实用技巧', 3, 'WEB开发', 16, 'JQuery', 71, '2012-09-08 10:18:31', '获取元素、下拉框取值赋值、frame操作', '获取元素、下拉框取值赋值、frame操作', 0, '1', 87, 1, 'detail.php', 0, 0),
(88, '双击上传图片', 'Windows8在后台中高效工作 - 后台任务 ', 2, '移动开发', 13, 'Windows8', 31, '2012-09-08 10:31:33', 'Windows8后台任务, BackgroundTaskDeferral', '在我此前所发布的博文（在后台保持高工作效率）中，我向各位解释了 Windows 8 的后台模型，以及如何让您的应用程序即使在屏幕之外也能以节能高效的方式运行。而在今天的博文中，我将谈谈后台任务，以及如何让您的应用程序即使在挂起时也可于后台中运行代码。我将向您介绍两个常见的应用场景，并利用示例代码向您展示如何在后台中运行自己的应用程序代码；此外，本篇博文的内容还将包括借助支持锁屏的应用程序每 15 分钟下载一次 POP 电子邮件，以及当设备采用交流供电时，如何确保所有应用程序可在后台运行。', 0, '1', 88, 1, 'detail.php', 0, 0),
(90, '双击上传图片', 'Windows 8 后台模型之下载或上传', 2, '移动开发', 13, 'Windows8', 46, '2012-09-08 10:42:14', 'BackgroundDownloader,HandleDownloadAsync  ', '传输内容（例如，上载照片，下载视频或音乐）对于许多应用程序来说是十分常见的应用场景。BackgroundTransfer 命名空间提供了简单而丰富的 API，您可以使用它在前台和后台传输数据。该 API 可完成多种重要任务，因此您可以重点关注应用程序表现最为突出的部分。另外，它还优化了电源效率，可弹性��理网络故障，并且将网络成本纳入了考虑范围。接下来让我们一起来看一个特定示例：如何使用 BackgroundTransfer 下载文件。', 0, '1', 90, 1, 'detail.php', 0, 0),
(91, '双击上传图片', 'Windows 8 Metro 风格应用程序的生命周期', 2, '移动开发', 13, 'Windows8', 39, '2012-09-08 10:49:43', 'Metro生命周期,\r\n', '在任意给定时间，您的 Metro 风格应用程序都处于以下四种生命周期状态之一：未运行、正在运行、已挂起或已终止。当应用程序在不同状态之间切换时，它会收到生命周期事件，这些事件可帮助您向用户提供一致且高性能的体验。', 0, '1', 91, 1, 'detail.php', 0, 0),
(92, '双击上传图片', 'Android NDK编程入门讲解', 2, '移动开发', 10, 'Android', 61, '2012-09-10 15:55:34', 'Android NDK,JNI编程', '1. 代码的保护，由于apk的java层代码很容易被反编译，而C/C++库反汇难度较大。2. 在NDK中调用第三方C/C++库，因为大部分的开源库都是用C/C++代码编写的。3. 便于移植，用C/C++写得库可以方便在其他的嵌入式平台上再次使用。', 0, '1', 92, 1, 'detail.php', 0, 0),
(93, '双击上传图片', 'Android NDK 环境搭建', 2, '移动开发', 10, 'Android', 45, '2012-09-10 16:03:52', 'NDK,JNI,Android,环境搭建,C/C++ ', 'NDK 提供了一系列的工具，帮助开发者快速开发 C （或 C++ ）的动态库，并能自动将 so 和 java 应用一起打包成 apk 。', 0, '1', 93, 1, 'detail.php', 0, 0),
(95, '双击上传图片', 'Android JNI代码示例讲解', 2, '移动开发', 10, 'Android', 38, '2012-09-12 14:34:17', 'JNI,NDK,C/C++', '在Android 模拟器中可以对Android手机操作系统进行适当的修改，增加各种功能，以满足用户的需求。那么今天我们会为大家带来Android Jni的相关使用方法，以方便大家对这一系统的解读。Android的应用程序(Dalvik VM)中使用JNI（Java Native Interface）调用C/C++开发的共享库。', 0, '1', 95, 1, 'detail.php', 0, 0),
(96, '双击上传图片', 'Android ExecutorService线程池', 2, '移动开发', 10, 'Android', 38, '2012-09-13 19:41:45', 'ScheduledThreadPool,', '1.newCachedThreadPool()  2. newFixedThreadPool  3.ScheduledThreadPool 4.SingleThreadExecutor ', 0, '1', 96, 1, 'detail.php', 0, 0),
(97, '双击上传图片', 'Android AsyncTask 实现', 2, '移动开发', 10, 'Android', 67, '2012-09-13 19:50:44', 'AsyncTask,线程,Handler,Looper', 'AsyncTask定义了三种泛型类型 Params，Progress和Result。Params 启动任务执行的输入参数，比如HTTP请求的URL。Progress 后台任务执行的百分比。Result 后台执行任务最终返回的结果，比如String。', 0, '1', 97, 1, 'detail.php', 0, 0),
(98, NULL, 'Oracle存储过程与Java调用', 4, '数据库', 21, 'Oracle', 82, '2012-09-15 17:12:12', '存储过程,procedure', '简要记录存储过程语法与Java程序的调用方式', 0, '1', 98, 1, 'detail.php', 0, 0),
(99, '双击上传图片', 'Windows 8 Metro 应用开发入门之GridView控件', 2, '移动开发', 13, 'Windows8', 75, '2012-09-18 14:40:45', 'GridView,Flipview,Metro,Windows8', '基于Silverlight开发Metro App可以使用Silverlight原生的控件，为了更好的开发Metro App，控件库又专门增加了几个新的控件，如：GridView、Flipview、ProgressRing、SemanticZoom和VariableSizedWrapGrid等，这些控件为平板设备提供了良好的触控体验，这一章我们来介绍一下这几个控件的简单用法。', 0, '1', 99, 1, 'detail.php', 0, 0),
(100, '双击上传图片', 'Windows 8 Metro 应用开发入门之工具栏和对话框', 2, '移动开发', 13, 'Windows8', 89, '2012-09-18 14:51:08', 'TopAppBar,BottomAppBar,MessageDialog ', 'Metro UI与Windows Phone一样在提供了布局在屏幕下文的应用程序工具栏BottomAppBar，由于平板设备特有的应用，Metro UI还提供了布局在屏幕上方的导航栏TopAppBar。另外，Metro UI还提供了独特的对话框。这一章我们来介绍一下工具栏与导航栏的应用，最后再介绍一下弹出对话框。', 0, '1', 100, 1, 'detail.php', 0, 0),
(101, NULL, 'Java线程：有返回值的线程', 1, '编程语言', 6, 'Java', 102, '2012-09-18 15:17:47', 'Future,Callable', 'Java线程有返回值的线程 Future,Callable', 0, '1', 101, 1, 'detail.php', 0, 0),
(102, '双击上传图片', 'Java线程：自定义线程池', 1, '编程语言', 6, 'Java', 111, '2012-09-17 23:50:50', 'Thread,ThreadPool', 'Java线程自定义线程池', 0, '1', 102, 1, 'detail.php', 0, 0),
(103, NULL, 'Java Socket编程实例', 1, '编程语言', 6, 'Java', 114, '2012-09-17 23:38:41', 'Socket', 'socket通常也称作"套接字"，用于描述IP地址和端口，是一个通信链的句柄。应用程序通常通过"套接字"向网络发出请求或者应答网络请求', 0, '1', 103, 1, 'detail.php', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `smart_article_detail`
--

CREATE TABLE IF NOT EXISTS `smart_article_detail` (
  `id` bigint(20) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `smart_article_detail`
--

INSERT INTO `smart_article_detail` (`id`, `content`) VALUES
(1, '安装 Express\r\n\r\nexpress 是 Node.js 上最流行的 Web 开发框架，正如他的名字一样，使用它我们可以快速的开发一个 Web 应用。我们用 express 来搭建我们的博客，打开命令行，输入：\r\n\r\n$ npm install -g express-generator\r\n安装 express 命令行工具，使用它我们可以初始化一个 express 项目。\r\n\r\n新建一个工程\r\n\r\n在命令行中输入：\r\n\r\n$ express -e blog\r\n$ cd blog && npm install\r\n初始化一个 express 项目并安装所需模块，如下图所示：\r\n\r\n\r\n\r\n然后运行：\r\n\r\n$ DEBUG=blog node ./bin/www\r\n（上面的代码报错的话，可以这样运行启动项目：npm start） 启动项目，此时命令行中会显示 blog Express server listening on port 3000 +0ms，在浏览器里访问 localhost:3000，如下图所示：\r\n\r\n\r\n\r\n至此，我们用 express 初始化了一个工程项目，并指定使用 ejs 模板引擎，下一节我们讲解工程的内部结构。\r\n\r\n工程结构\r\n\r\n我们回头看看生成的工程目录里面都有什么，打开我们的 blog 文件夹，里面如图所示：\r\n\r\n\r\n\r\napp.js：启动文件，或者说入口文件\r\npackage.json：存储着工程的信息及模块依赖，当在 dependencies 中添加依赖的模块时，运行 npm install，npm 会检查当前目录下的 package.json，并自动安装所有指定的模块\r\nnode_modules：存放 package.json 中安装的模块，当你在 package.json 添加依赖的模块并安装后，存放在这个文件夹下\r\npublic：存放 image、css、js 等文件\r\nroutes：存放路由文件\r\nviews：存放视图文件或者说模版文件\r\nbin：存放可执行文件'),
(2, 'H5性能优化意义\r\n\r\n对于一个H5的产品，功能无疑很重要，但是性能同样是用户体验中不可或缺的一环。原本H5的渲染性能就不及native的app，如果不把性能优化做起来，将极大地影响用户使用产品的积极性。\r\n\r\n用户感受\r\n\r\n当用户能够在1-2秒内打开H5页面，看到信息的展示，或者能够开始进行下一步的操作，用户会感觉速度还好，可以接受；而页面如果在2-5秒后才进入可用的状态，用户的耐心会逐渐丧失；而如果一个界面超过5秒甚至更久才能显示出来，这对用户来说基本是无法忍受的，也许有一部分用户会退出重新进入，但更多的用户会直接放弃使用。\r\n\r\n一秒钟法则\r\n\r\n移动互联网的架构、通讯机制，与有线网络有着巨大的差异，这也给H5的开发带来了很大的挑战。\r\n\r\n10.jpg\r\n\r\n这是一张手机端接入服务器的流程。\r\n\r\n首先，手机要通过无线网络协议，从基站获得无线链路分配，才能跟网络进行通讯。无线网络基站、基站控制器这方面，会给手机进行信号的分配，已完成手机连接和交互。获得无线链路后，会进行网络附着、加密、鉴权，核心网络会检查你是不是可以连接在这个网络上，是否开通套餐，是不是漫游等。核心网络有SGSN和GGSN，在这一步完成无线网络协议和有线以太网的协议转换。再下一步，核心网络会给你进行APN选择、IP分配、启动计费。再往下面，才是传统网络的步骤：DNS查询、响应，建立TCP链接，HTTP GET，RTTP RESPONSE 200 OK，HTTP RESPONSE DATA，LAST HTTP RESPONSE DATA，开始UI展现。\r\n\r\n可见，通过运营商的网络上网，情况比较复杂，经过的节点太多；运营商的网络信号强度变化频繁，连接状态切换快；网络延迟高、丢包率高；网络建立连接的代价高，传输速度快慢不等（从2G到4G，相差很大）。\r\n\r\n而我们优化的目标，就是所谓的一秒钟法则，即达成以下的标准：\r\n\r\n2g网络：1秒内完成dns查询、和后台服务器建立连接\r\n3g网络：1秒内完成首字显示（首字时间）\r\nwifi网络：1秒内完成首屏显示（首屏时间）\r\n优化方案\r\n\r\n资源加载首屏加载\r\n\r\n用户从点击按钮开始载入网页，在他的感知中，什么时候是“加载完成”？是首屏加载，即在可见的屏幕范围内，内容展现完全，loading进度条消失。因此在H5性能优化中，一个很重要的目的就是尽可能提升这个“首屏加载”的时间，让它满足“一秒钟法则”。\r\n\r\n按需加载\r\n\r\n首先要明确，按需加载虽然能提升首屏加载的速度，但是可能带来更多的界面重绘，影响渲染性能，因此要评估具体的业务场景再做决定。\r\n\r\nLazyload\r\n\r\nLazyload，即延迟加载，这并不是一个新的技术，在PC时代也是非常常用的一种性能优化手段。这个方案的原则是让屏幕外，或者不影响整体效果显示的图片、背景等资源，在界面就绪之后再进行网络加载。\r\n\r\n滚屏加载\r\n\r\n滚屏加载是一种常见的无刷新动态加载数据的方案，通常用在列表形式数据展示中。一方面，数据不是通过翻页进行加载，这样就避免了再一次请求和渲染整个页面；另一方面，数据显示的数量是受限的，例如第一次只请求了10条数据，也就只需要渲染这10条数据，下拉滚屏的时候，再去获得下面10条数据。\r\n\r\nMedia Query（响应式加载）\r\n\r\n响应式设计是现在网站设计的一个流行趋势，随着移动互联网的发展，这项技术也越来越受到重视。通过这项技术，我们能够方便地控制资源的加载与显示，例如说在分辨率不同的手机上，分别使用不同的css，加载不同大小的图片资源。方案参考： http://www.poluoluo.com/jzxy/201206/167034.html\r\n\r\n第三方资源异步加载\r\n\r\n第三方资源有的时候不可控，比如说页面统计、地图显示、分享组件等，这些第三方资源使用的时候要慎重选择，充分考察它们对于性能的影响，使用异步加载的方式进行，防止第三方资源的使用影响到页面本身的功能。\r\n\r\nLoading进度条\r\n\r\n在加载时间较长的时候，务必要让用户明确感知到加载完成的提示，通常是在加载过程中显示Loading的进度条，加载完成的时候隐藏它。从心理上，这会让用户有一种“期盼感”，而不至于太过枯燥。\r\n\r\n对于一些重量级的H5应用，例如游戏，开始前需要加载很多资源才能让后面的游戏过程更为流畅，一个带百分比进度显示的进度条就更加重要。\r\n\r\n避免30*/40*/50*的http status\r\n\r\n200是一个正常的response，我们在浏览器中打开一个网页（后面会讲如何针对移动端进行调试），还会看到304，即命中浏览器缓存。这两种状态是正常的http status。\r\n\r\n302、301跳转是常见的跳转，尤其前一种，在我们进行鉴权的时候有时会用到，但这个做法要尽可能地优化，一个页面访问，最多只进行一次302跳转即可，切忌频繁地跳转。\r\n\r\n404、500，我们对自己开发的代码比较注意，一般不会发生，但是有的时候，加载第三方库，尤其是第三方库中有自己load组件的操作，这时，404和500错误可能会在你不知不觉的时候发生。例如钉钉的第三方微应用中，就遇到过dojo的组件加载问题，加载的一些子组件失败了，但是又没有影响页面显示，这就很容易被忽略。后面也会再讲，如何去测试和发现这样的隐患。\r\n\r\nFavicon.ico\r\n\r\n如果我们没有设置图标ico，则会加载默认的图标：域名目录下的favicon.ico。很多开发者没有注意到这一点，就会导致这个请求404或者500。\r\n\r\n通常，我们在应用内部打开网页，不会显示这个图标出来（除非放到浏览器中显示网页），我们需要保证这个图标存在，尽可能地小（一般4KB以下），并且设置一个较长的缓存过期时间。\r\n\r\n图片的使用格式选择\r\n\r\n显示效果较好的图片格式中，有webp、jpg和png24/32这几种常见的图片格式。一般来说，webp的图片最小，但在iOS或者android4.0以下的系统中可能会有兼容性问题需要解决。\r\n\r\nJpg是我们最常使用的方案，大小适中，解码速度快，兼容性问题也基本不存在，是我们在H5的应用中使用起来性价比最高的方案。\r\n\r\nPng24或png32，一般来说，显示效果肯定会比jpg更好，但是实际上人眼很难感知出来，所以在H5应用中要避免这种格式的大图片。\r\n\r\n对于少量的图片，推荐用智图或者tinypng等工具来帮助自己选择合适的大小、格式。\r\n\r\n像素控制\r\n\r\n在H5应用中，图片的像素要严格控制，一般来说不建议宽度超过640px。\r\n\r\n小图片合并\r\n\r\n在html网页中，如果有多个小图片需要加载，不妨试试CSS Sprites方案，尤其是一些基本不变，大小差不多的操作类型图标。\r\n\r\n避免html代码中的大小重设\r\n\r\n在html或者css中，如果有类似width: **px这样的代码，就要注意看一看了，如果说图片显示的效果是宽度100px，而下载的图片却是200px宽度，那这大小基本上就是所需要的4倍面积了，所以在H5应用中，使用图片的一个原则就是需要显示成多大，就下载多大的资源。\r\n\r\n避免DataURL\r\n\r\nDataURL是用Base64的方式，将图片变成一串文本编码放入代码的方式。这种方式有好处，因为它可以减少一次http交互的请求，对于一些体积特别小的图片，或者是动态生成的图片可以考虑使用。但在H5应用中，一般情况下，我们都是需要避免DataURL的，因为它的数据体积通常比二进制图片的格式大1/3，而且它不会被浏览器缓存，每次页面刷新都需要重新加载这部分数据。\r\n\r\n使用图片的替代(css3, svg, iconfont)\r\n\r\nCSS3和svg可以更好地使用GPU进行渲染加速，而且会避免增加图片资源导致的http请求增加。例如一些div的圆角效果，就完全可以用用css来实现。\r\n\r\nIconfont，可以认为是一种矢量类型的操作字体。如果页面中有较多的操作图标，可以考虑使用iconfont来替代图片资源。\r\n\r\n域名/服务端部署Gzip\r\n\r\n服务端要开启Gzip压缩。\r\n\r\n资源缓存，长cache\r\n\r\n合理设置资源的过期时间，尤其对一些静态的不需要改变的资源，将其缓存过期时间设置得长一些。\r\n\r\n分域名部署(静态资源域名)\r\n\r\n将动态资源和静态资源放置在不同的域名下，例如图片，放在自己特定的域名下。这样的好处是，静态资源请求时，不会带上动态域名中所设置的cookie头信息，从而减少http请求的大小。\r\n\r\n减少Cookie\r\n\r\n尽量减少Cookie头信息的大小，因为这部分数据使用的是上行流量，上行带宽更小，所以传输速度更慢，因此要尽量精简其大小。\r\n\r\nCDN加速\r\n\r\n部署CDN服务器，或者使用第三方的CDN加速服务，优化不同地域接入网站的带宽速度。\r\n\r\n代码资源Javascript, CSS合并\r\n\r\n尽量将所有的js和css合并，减少资源请求的次数。\r\n\r\n外联使用js, css\r\n\r\n外联使用js和css，这样可以有效地利用缓存，避免html页面刷新后重新加载这部分代码。\r\n\r\n压缩html, js, css\r\n\r\n压缩代码，尤其是js和css资源，压缩后的大小可以降低至原来的1/3以下，有效节约流量。\r\n\r\n资源的版本更新\r\n\r\n库js、css通常不会更新，但是我们的业务js和css可能会有更新，如果命中浏览器缓存，可能会让一些新的特性不能及时展现，甚至可能导致逻辑上的冲突。\r\n\r\n因此对于这些js、css的资源引入，最好用版本号或者更新时间来作为后缀，这样的话，后缀不变，命中缓存；后缀改变，浏览器自动更新最新的代码。\r\n\r\nCss位置\r\n\r\nCSS要放到html代码的开头的head标签结束前。如果网页是动态生成的，那么在head代码完成后可以强制输出（例如php的flush()操作），这样的话，浏览器就会更快地解析出来head中的内容，开始下载css文件资源。\r\n\r\nJs位置\r\n\r\nJs放到</body>前，这样的话，js的加载不会影响初始页面的渲染。\r\n\r\n代码规范避免空src\r\n\r\n图片设置为空的src地址，在某些浏览器中可能会导致增加一个无效的http请求，因此要避免。\r\n\r\n避免css表达式\r\n\r\n可能会让页面多次执行计算，造成卡顿等性能问题。\r\n\r\n避免空css规则\r\n\r\n降低css渲染计算的成本\r\n\r\n避免直接设置元素style\r\n\r\n直接设置style属性，一方面在html代码中不利于缓存，另一方面也不利于样式的复用，因此要避免，通过指定id或者class的方式，在css代码块中进行样式调整。\r\n\r\n服务端接口接口合并\r\n\r\n如果页面需要请求两部分以上的数据接口，建议将其合并，否则会增加一次http请求。\r\n\r\n减少接口数据量\r\n\r\n有的时候，服务端会把一些无关紧要的数据返回回来，尤其是类似于更新时间、状态等信息，如果在客户端不影响内容的逻辑展示，不妨在接口返回的数据中直接去掉这些内容。\r\n\r\n缓存\r\n\r\n缓存接口数据，在一些数据新旧敏感性不高的场景下很有作用，在非首次加载数据时候优先使用上次请求来的缓存数据，可以让页面更加快速地渲染出来，而不用等待一个新的http请求结束之后再渲染。这一点我们在后面还会再次提及。\r\n\r\n其他一些建议\r\n\r\n合理使用css\r\n正确使用Display属性Display属性会影响页面的渲染，因此请合理使用\r\ndisplay:inline后不应该再使用width、height、margin、padding以及float\r\ndisplay:inline-block后不应该再使用float\r\ndisplay:block后不应该再使用vertical-align\r\ndisplay:table-*后不应该再使用margin或者float\r\n不滥用float\r\n不声明过多的font-size\r\n值为0时不需要单位\r\n标准化各种浏览器前缀\r\n无前缀应放在最后\r\nCSS动画只用 （-webkit- 无前缀）两种即可\r\n其它前缀为 -webkit- -moz- -ms- 无前缀 四种，（-o-Opera浏览器改用blink内核，所以淘汰）\r\n选择器\r\n避免让选择符看起来像是正则表达式。高级选择器不容易读懂，执行耗时也长\r\n尽量使用ID选择器\r\n尽量使用css3动画\r\n资源加载\r\n使用srcset\r\n首次加载不超过1024KB（或者可以说是越小越好）\r\nhtml和js\r\n减少重绘和回流\r\n缓存dom选择和计算\r\n缓存列表.length\r\n尽量使用事件代理,避免批量绑定事件\r\n使用touchstart，touchend代替click\r\nHtml使用viewport\r\n减少dom节点\r\n合理使用requestAnimationFrame动画代替setTimeOut\r\n适当使用Canvas动画\r\nTouchMove, Scroll事件会导致多次渲染\r\n更快一步\r\n\r\n前面的很多建议与普通的PC端web网页的开发是一致的，但是在移动互联网应用下，仅仅做到这些，可能只有60分，那么怎样才能得到80分甚至更高？\r\n\r\n单页应用\r\n\r\n钉钉的审批微应用，使用的就是单页架构。在这种架构下，基本不存在页面跳转的等待时间，只需要执行js逻辑触发界面变化，最多进行一次网络请求，获得服务端数据，其他资源均不需要再次请求。\r\n\r\n资源离线\r\n\r\n再快的网络交互，毕竟也是跨越了数个网络节点，因此一张图片、一个js，优化到了极致，也照样可能需要几百毫秒的时间来获得。因此想要打破这个极限，就要使用资源离线的策略。\r\n\r\n在钉钉的微应用中，就使用了这样的一个“离线包”策略。一些固定的图片、js库等，被打包放入app中（或根据需要，在app启动的时候进行下载更新）。\r\n\r\n微应用中，网页代码里面加载网络资源的需求，就变成了直接加载本地文件，速度自然得到再一次巨大的提升。\r\n\r\n本地数据持久化和更新机制(版本管理)\r\n\r\n对于一些时效性没有那么高的数据，可以考虑将接口数据缓存。那么页面的渲染将变成这样的流程：\r\n\r\n20.png\r\n\r\n而非首次进入界面，流程如下：\r\n\r\n30.png\r\n\r\n可以看出，在非首次进入界面的时候，页面不需要等待网络数据返回，就可以进行界面渲染，渲染的初始数据来自于本地的缓存，页面可以“秒开”。而当服务端的数据返回之后，本地的渲染会再次更新，缓存也被更新。\r\n\r\n采用这样的方案有利有弊，好处显而易见，首屏加载的速度简直太快了——静态资源来自本地，数据接口来自本地，这在2G、3G或者其他网络速度较慢的时候，也可以让用户在极短的时间内就看到内容。但是这种方案也并非万能。\r\n\r\n首次加载不可避免，还是会请求网络。\r\n服务端有更新的时候，客户端不能够快速感知，页面可能还停留在一个“旧的版本”上，尤其是网络速度较慢时，可能还是需要经过好几秒，页面才会更新至最新版本。因此如果应用对数据的新旧很敏感的话，这种方案就不适合\r\n数据更新后，需要重新渲染界面，界面刷新的性能消耗比正常情况更多，而且增加了程序的复杂度，容易出错。\r\n预加载\r\n\r\n有时，我们能够通过用户的行为统计，预判出用户下一步可能进行的操作。假设，我们统计出来针对某个微应用，用户首页渲染完成之后，大部分会点击列表中的第一个项目查看详情。那么在首页渲染完成之后，我们就可以先预先加载第一个项目的部分内容，那么针对这部分用户，他们实际点击之后，立即就能看到新的页面中的内容。\r\n\r\n当然，这个方式也并不是在所有场景下都使用。一方面，需要做好充分的用户调研，掌握用户的使用习惯；另一方面，对于小部分用户而言，预加载所带来的就是不必要的流量消耗。\r\n\r\n测试方案\r\n\r\n工具准备Chrome\r\n\r\n在功能测试中，我们通常可以用chrome来测试不同的分辨率下，或是不同的设备上，网页的展现情况。在我们做性能优化的时候，也可以用这种方式来进行调试，方便地观察在特定设备上，静态资源是否按照我们想象的那样去加载了。40.png\r\n\r\n例如，我们想看下百度首页在某个设备下的表现。通过F12进入控制台，点击图中的短箭头标示出来的那个设备图标，然后就可以在Device和Network中选择不同的设备和网络状况。50.png\r\n\r\n例如iphone5下，这个地图的图标，明显就可以看到是用iconfont来实现的效果。\r\n\r\n当然，这个功能也仅仅是一种模拟，通过控制屏幕分辨率、UserAgent等来模拟设备请求，在实际的设备上，又该怎么查看呢？\r\n\r\n还是Chrome，我们在地址栏中输入chrome://inspect（注意：Android版本需要是4.4+，并且应用中的WebView必须进行相应的调试声明配置）60.png\r\n\r\n在这里点击inspect，则可进入我们熟悉的F12控制台界面，只不过debug的对象变成了我们在手机应用中的网页。70.png\r\n\r\n输入performance.timing.domComplete - performance.timing.navigationStart，就可以打印出网页加载的时间，domComplete表示所有的处理都已完成并且所有的附属资源都已经下载完毕。navigationStart表示开始加载新页面。两者相减，就代表这个网页完成渲染所需要的时间了。\r\n\r\n同样地，我们可以在Elements tab中，debug网页，查看各个资源的使用，在Network中，看看加载了哪些资源，是否都做过了压缩。\r\n\r\n然而，这种方式，还是有一定缺陷。1. 如果打开网页经过了跳转，那么我们只能在这里看到最后一个url页面的加载情况。2. 第一次打开页面的时候，在Network中，默认是不显示请求的详情的，当我们选择了preserve log upon navigation之后才会捕获，因此首次进入页面的加载情况，我们就很难获得了。\r\n\r\n那么有没有一种方法，让我们能够更方便地去查看首次访问时，各种资源的加载使用情况呢？\r\n\r\nCharles\r\n\r\nCharles Proxy，可以说是H5测试的一个神器。它的作用是在PC端开启一个代理服务器，手机连到这个代理服务器上之后，所有的http请求就都可以在这里看得清清楚楚。经过配置证书选项，https的请求也可以正常查看。80.png\r\n\r\n从图中，我们明显可以看到，有一些404的异常请求，这些都将对我们H5应用的性能造成影响。如果我们发现有一些资源的Duration比较大，那这些可能是服务端响应太慢，自然也可以作为我们优化的依据。\r\n\r\n测试标准\r\n\r\n在钉钉的测试中，形成了一套标准。\r\n\r\n指标项 遵循的原则 优先级 检查项 说明 内存 内存无泄漏 P0 主功能页面反复打开，功能的重复调用，内存无泄漏 可以使用sysdump,也可以用我们开发的perfeasy工具进行观察     P1 主功能页面，持续操作，退出后，内存占用不超过总内存的5% perfeasy CPU 减少无端的CPU使用 P1 灭屏，静置2分钟，在5分钟内CPU使用平均1% adb连接后, 使用top命令       主干功能正常操作CPU占用不超过60%, 持续5秒 perfeasy 电量 避免无端电量消耗 P0 灭屏状态下，无线程持续运行 一般来说, 静置cpu正常, 这一项就没有问题       灭屏，window.setTimeout()方法停止 一般来说, 静置cpu正常, 这一项就没有问题同上       灭屏，window.setInterval()方法停止 同上       ajax超时时间设置为5000ms以内 结合代码       ajax无retry逻辑 结合代码 资源 资源的正确使用 P0 是否存在资源的重复拉取 charles     P1 H5页面首屏总大小不超过200K charles, chrome     P1 抓包检查(js/css/html)代码去除了空格/注释，JS文件变量名变成a/b等代替 charles, chrome     P1 H5引用的单张图片小于60K charles, chrome\r\n\r\n如果影响了显示质量, 可酌情调整 流畅度 确保给到用户流畅的展示体验 P1 流畅的实时动画展示，avgFPS>=45 perfeasy 时延 确保给到用户流畅的切换体验 P0 wifi网络下，首次进入页面onload时间<1000ms Chrome 时延 确保给到用户流畅的切换体验 P0 wifi网络下，首次进入页面onload时间<1000ms Chrome       wifi网络下，非首次进入页面onload时间<500ms Chrome       3G正常网络， 首次进入页面onload时间<2000ms chrome, 树莓派模拟3G       3G正常网络， 非首次进入页面onload时间<1000ms chrome, 树莓派模拟3G\r\n\r\n经典案例\r\n\r\n图片未优化\r\n\r\n通过charles可以方便地进行测试。从请求监控的情况看，有一张图片超过了60KB，宽度640px，但是在应用中，实际显示的是一张小缩略图，是通过代码控制让它显示成小图的，因此修改方案很简单，将所有头像的图片均改为获取120px宽度的即可。90.png\r\n\r\n按需加载\r\n\r\n钉钉的教学页面\r\n多个slide页面, 每个页面有2-3个图片, 其中有一个是大图显示\r\n图片是客户提供的, 最大的图片大约是300KB以上\r\n第一次进入页面后, 所有slide的图片均进行加载\r\n3G网络下, loading的图标大约持续6000ms后才会消失\r\n\r\n优化方案\r\n尽可能优化图片, 但是压缩后发现噪点明显增加, 影响了显示效果\r\n修改加载方案, 第一次进入后, 只加载本页的图片\r\nloading时间降低至1秒左右\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `smart_user_info`
--

CREATE TABLE IF NOT EXISTS `smart_user_info` (
  `id` int(11) NOT NULL auto_increment,
  `nickname` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `qq` varchar(12) default NULL,
  `mobile` varchar(12) default NULL,
  `roleId` int(11) NOT NULL default '1',
  `createDate` date NOT NULL,
  `status` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `smart_user_info`
--

INSERT INTO `smart_user_info` (`id`, `nickname`, `email`, `password`, `qq`, `mobile`, `roleId`, `createDate`, `status`) VALUES
(1, 'sky', 'hubcarl@126.com', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 1, '2015-10-02', 1);

-- --------------------------------------------------------

--
-- 表的结构 `smart_user_note`
--

CREATE TABLE IF NOT EXISTS `smart_user_note` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `createDate` date NOT NULL,
  `hits` int(11) NOT NULL default '1',
  `comments` int(11) NOT NULL default '0',
  `userId` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
