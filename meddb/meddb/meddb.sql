BEGIN TRANSACTION;
CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
);
CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
);
CREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
);
INSERT INTO auth_permission VALUES(1,'Can add group',2,'add_group');
INSERT INTO auth_permission VALUES(2,'Can add permission',1,'add_permission');
INSERT INTO auth_permission VALUES(3,'Can add user',3,'add_user');
INSERT INTO auth_permission VALUES(4,'Can change group',2,'change_group');
INSERT INTO auth_permission VALUES(5,'Can change permission',1,'change_permission');
INSERT INTO auth_permission VALUES(6,'Can change user',3,'change_user');
INSERT INTO auth_permission VALUES(7,'Can delete group',2,'delete_group');
INSERT INTO auth_permission VALUES(8,'Can delete permission',1,'delete_permission');
INSERT INTO auth_permission VALUES(9,'Can delete user',3,'delete_user');
INSERT INTO auth_permission VALUES(10,'Can add content type',4,'add_contenttype');
INSERT INTO auth_permission VALUES(11,'Can change content type',4,'change_contenttype');
INSERT INTO auth_permission VALUES(12,'Can delete content type',4,'delete_contenttype');
INSERT INTO auth_permission VALUES(13,'Can add session',5,'add_session');
INSERT INTO auth_permission VALUES(14,'Can change session',5,'change_session');
INSERT INTO auth_permission VALUES(15,'Can delete session',5,'delete_session');
INSERT INTO auth_permission VALUES(16,'Can add site',6,'add_site');
INSERT INTO auth_permission VALUES(17,'Can change site',6,'change_site');
INSERT INTO auth_permission VALUES(18,'Can delete site',6,'delete_site');
INSERT INTO auth_permission VALUES(19,'Can add log entry',7,'add_logentry');
INSERT INTO auth_permission VALUES(20,'Can change log entry',7,'change_logentry');
INSERT INTO auth_permission VALUES(21,'Can delete log entry',7,'delete_logentry');
INSERT INTO auth_permission VALUES(22,'Can add INN',12,'add_inn');
INSERT INTO auth_permission VALUES(23,'Can add Manufacturing Site',17,'add_site');
INSERT INTO auth_permission VALUES(24,'Can add container',22,'add_container');
INSERT INTO auth_permission VALUES(25,'Can add context',26,'add_context');
INSERT INTO auth_permission VALUES(26,'Can add country',9,'add_country');
INSERT INTO auth_permission VALUES(27,'Can add currency',24,'add_currency');
INSERT INTO auth_permission VALUES(28,'Can add dosage form',11,'add_dosageform');
INSERT INTO auth_permission VALUES(29,'Can add incoterm',10,'add_incoterm');
INSERT INTO auth_permission VALUES(30,'Can add ingredient',14,'add_ingredient');
INSERT INTO auth_permission VALUES(31,'Can add manufacturer',16,'add_manufacturer');
INSERT INTO auth_permission VALUES(32,'Can add medicine',13,'add_medicine');
INSERT INTO auth_permission VALUES(33,'Can add msh price',15,'add_mshprice');
INSERT INTO auth_permission VALUES(36,'Can add procurement',25,'add_procurement');
INSERT INTO auth_permission VALUES(37,'Can add product',19,'add_product');
INSERT INTO auth_permission VALUES(38,'Can add registration',23,'add_registration');
INSERT INTO auth_permission VALUES(39,'Can add source',8,'add_source');
INSERT INTO auth_permission VALUES(40,'Can add supplier',18,'add_supplier');
INSERT INTO auth_permission VALUES(41,'Can change INN',12,'change_inn');
INSERT INTO auth_permission VALUES(42,'Can change Manufacturing Site',17,'change_site');
INSERT INTO auth_permission VALUES(43,'Can change container',22,'change_container');
INSERT INTO auth_permission VALUES(44,'Can change context',26,'change_context');
INSERT INTO auth_permission VALUES(45,'Can change country',9,'change_country');
INSERT INTO auth_permission VALUES(46,'Can change currency',24,'change_currency');
INSERT INTO auth_permission VALUES(47,'Can change dosage form',11,'change_dosageform');
INSERT INTO auth_permission VALUES(48,'Can change incoterm',10,'change_incoterm');
INSERT INTO auth_permission VALUES(49,'Can change ingredient',14,'change_ingredient');
INSERT INTO auth_permission VALUES(50,'Can change manufacturer',16,'change_manufacturer');
INSERT INTO auth_permission VALUES(51,'Can change medicine',13,'change_medicine');
INSERT INTO auth_permission VALUES(52,'Can change msh price',15,'change_mshprice');
INSERT INTO auth_permission VALUES(55,'Can change procurement',25,'change_procurement');
INSERT INTO auth_permission VALUES(56,'Can change product',19,'change_product');
INSERT INTO auth_permission VALUES(57,'Can change registration',23,'change_registration');
INSERT INTO auth_permission VALUES(58,'Can change source',8,'change_source');
INSERT INTO auth_permission VALUES(59,'Can change supplier',18,'change_supplier');
INSERT INTO auth_permission VALUES(60,'Can delete INN',12,'delete_inn');
INSERT INTO auth_permission VALUES(61,'Can delete Manufacturing Site',17,'delete_site');
INSERT INTO auth_permission VALUES(62,'Can delete container',22,'delete_container');
INSERT INTO auth_permission VALUES(63,'Can delete context',26,'delete_context');
INSERT INTO auth_permission VALUES(64,'Can delete country',9,'delete_country');
INSERT INTO auth_permission VALUES(65,'Can delete currency',24,'delete_currency');
INSERT INTO auth_permission VALUES(66,'Can delete dosage form',11,'delete_dosageform');
INSERT INTO auth_permission VALUES(67,'Can delete incoterm',10,'delete_incoterm');
INSERT INTO auth_permission VALUES(68,'Can delete ingredient',14,'delete_ingredient');
INSERT INTO auth_permission VALUES(69,'Can delete manufacturer',16,'delete_manufacturer');
INSERT INTO auth_permission VALUES(70,'Can delete medicine',13,'delete_medicine');
INSERT INTO auth_permission VALUES(71,'Can delete msh price',15,'delete_mshprice');
INSERT INTO auth_permission VALUES(74,'Can delete procurement',25,'delete_procurement');
INSERT INTO auth_permission VALUES(75,'Can delete product',19,'delete_product');
INSERT INTO auth_permission VALUES(76,'Can delete registration',23,'delete_registration');
INSERT INTO auth_permission VALUES(77,'Can delete source',8,'delete_source');
INSERT INTO auth_permission VALUES(78,'Can delete supplier',18,'delete_supplier');
INSERT INTO auth_permission VALUES(79,'Can add currency',27,'add_currency');
INSERT INTO auth_permission VALUES(80,'Can add exchange rate',28,'add_exchangerate');
INSERT INTO auth_permission VALUES(81,'Can change currency',27,'change_currency');
INSERT INTO auth_permission VALUES(82,'Can change exchange rate',28,'change_exchangerate');
INSERT INTO auth_permission VALUES(83,'Can delete currency',27,'delete_currency');
INSERT INTO auth_permission VALUES(84,'Can delete exchange rate',28,'delete_exchangerate');
INSERT INTO auth_permission VALUES(85,'Can add migration history',29,'add_migrationhistory');
INSERT INTO auth_permission VALUES(86,'Can change migration history',29,'change_migrationhistory');
INSERT INTO auth_permission VALUES(87,'Can delete migration history',29,'delete_migrationhistory');
INSERT INTO auth_permission VALUES(88,'Can add country mapping code',30,'add_countrymappingcode');
INSERT INTO auth_permission VALUES(89,'Can change country mapping code',30,'change_countrymappingcode');
INSERT INTO auth_permission VALUES(90,'Can delete country mapping code',30,'delete_countrymappingcode');
CREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
);
INSERT INTO auth_user VALUES(1,'adi','','','a@b.com','pbkdf2_sha256$10000$7T2owdTK6eSC$GnHSWP+Si9kiOE8ld10GCmX83X5JeLEQwGYXPhA6XEo=',1,1,1,'2014-02-21 10:32:17.709471','2013-06-02 09:25:08.883000');
INSERT INTO auth_user VALUES(2,'philippa','','','','pbkdf2_sha256$10000$855rpKSvZJ0a$7UbIhWUSd0jw7ObnPQsFF/2XiCn3c9gS5/mLqzuaguU=',1,1,1,'2014-02-21 10:43:23.304002','2014-02-21 10:42:05');
CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
);
CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
);
CREATE TABLE "currency_currency" (
    "id" integer NOT NULL PRIMARY KEY,
    "code" varchar(3) NOT NULL UNIQUE,
    "description" varchar(128)
);
INSERT INTO currency_currency VALUES(1,'EUR','Euro');
INSERT INTO currency_currency VALUES(2,'BWP','');
INSERT INTO currency_currency VALUES(3,'ZAR','');
INSERT INTO currency_currency VALUES(4,'USD','');
INSERT INTO currency_currency VALUES(5,'ZMK','');
INSERT INTO currency_currency VALUES(6,'NAD','');
INSERT INTO currency_currency VALUES(7,'SZL','');
INSERT INTO currency_currency VALUES(8,'MWK','');
INSERT INTO currency_currency VALUES(9,'LSL','');
INSERT INTO currency_currency VALUES(10,'TZS','');
INSERT INTO currency_currency VALUES(11,'GBP','');
INSERT INTO currency_currency VALUES(12,'AOA','Angolan Kwanza');
INSERT INTO currency_currency VALUES(13,'MUR','');
CREATE TABLE "currency_exchangerate" (
    "id" integer NOT NULL PRIMARY KEY,
    "currency_id" integer NOT NULL REFERENCES "currency_currency" ("id"),
    "rate" real NOT NULL,
    "date" date NOT NULL
);
INSERT INTO currency_exchangerate VALUES(1,1,0.819421,'2012-07-12');
INSERT INTO currency_exchangerate VALUES(2,2,7.546565,'2012-04-16');
INSERT INTO currency_exchangerate VALUES(3,3,8.194255,'2012-07-30');
INSERT INTO currency_exchangerate VALUES(4,3,9.416126,'2009-01-01');
INSERT INTO currency_exchangerate VALUES(5,5,4810.878221,'2009-01-01');
INSERT INTO currency_exchangerate VALUES(6,3,8.282926,'2012-08-01');
INSERT INTO currency_exchangerate VALUES(7,1,0.717107,'2009-01-01');
INSERT INTO currency_exchangerate VALUES(8,2,7.427942,'2011-12-01');
INSERT INTO currency_exchangerate VALUES(9,3,8.852098,'2012-12-03');
INSERT INTO currency_exchangerate VALUES(10,6,9.312471,'2009-01-01');
INSERT INTO currency_exchangerate VALUES(11,7,7.37946,'2009-12-01');
INSERT INTO currency_exchangerate VALUES(12,2,6.68346,'2011-03-07');
INSERT INTO currency_exchangerate VALUES(13,2,7.340381,'2011-10-18');
INSERT INTO currency_exchangerate VALUES(14,2,7.811583,'2012-06-08');
INSERT INTO currency_exchangerate VALUES(15,8,142.150246,'2007-01-01');
INSERT INTO currency_exchangerate VALUES(16,2,6.648608,'2011-03-12');
INSERT INTO currency_exchangerate VALUES(17,2,7.7675,'2012-08-28');
INSERT INTO currency_exchangerate VALUES(18,1,0.758976,'2012-04-12');
INSERT INTO currency_exchangerate VALUES(19,2,7.957851,'2012-12-01');
INSERT INTO currency_exchangerate VALUES(20,1,0.633568,'2008-07-01');
INSERT INTO currency_exchangerate VALUES(21,2,7.389696,'2012-05-02');
INSERT INTO currency_exchangerate VALUES(22,3,6.694921,'2011-08-01');
INSERT INTO currency_exchangerate VALUES(23,9,8.474021,'2009-05-01');
INSERT INTO currency_exchangerate VALUES(24,1,0.765758,'2012-10-22');
INSERT INTO currency_exchangerate VALUES(25,2,7.906104,'2012-05-30');
INSERT INTO currency_exchangerate VALUES(26,10,1173.221908,'2008-07-01');
INSERT INTO currency_exchangerate VALUES(27,2,7.500067,'2012-04-13');
INSERT INTO currency_exchangerate VALUES(28,1,0.761873,'2012-04-19');
INSERT INTO currency_exchangerate VALUES(29,2,7.451961,'2012-05-07');
INSERT INTO currency_exchangerate VALUES(30,3,8.437233,'2009-05-01');
INSERT INTO currency_exchangerate VALUES(31,1,0.744236,'2012-02-28');
INSERT INTO currency_exchangerate VALUES(32,1,0.794415,'2012-09-03');
INSERT INTO currency_exchangerate VALUES(33,2,6.719465,'2011-01-26');
INSERT INTO currency_exchangerate VALUES(34,2,6.619975,'2011-03-08');
INSERT INTO currency_exchangerate VALUES(35,11,0.627238,'2012-02-29');
INSERT INTO currency_exchangerate VALUES(36,2,6.56007,'2011-06-20');
INSERT INTO currency_exchangerate VALUES(37,2,6.458696,'2011-05-05');
INSERT INTO currency_exchangerate VALUES(38,2,6.619851,'2011-06-27');
INSERT INTO currency_exchangerate VALUES(39,2,6.716351,'2011-02-23');
INSERT INTO currency_exchangerate VALUES(40,1,0.806531,'2012-07-05');
INSERT INTO currency_exchangerate VALUES(41,2,6.488921,'2011-06-06');
INSERT INTO currency_exchangerate VALUES(42,2,6.798304,'2011-08-24');
INSERT INTO currency_exchangerate VALUES(43,3,8.352933,'2012-10-01');
INSERT INTO currency_exchangerate VALUES(44,3,8.672306,'2012-11-06');
INSERT INTO currency_exchangerate VALUES(45,3,7.551588,'2012-02-28');
INSERT INTO currency_exchangerate VALUES(46,2,6.721078,'2011-05-25');
INSERT INTO currency_exchangerate VALUES(47,2,7.653782,'2011-11-23');
INSERT INTO currency_exchangerate VALUES(48,3,8.202217,'2012-07-01');
INSERT INTO currency_exchangerate VALUES(49,1,0.764552,'2012-04-10');
INSERT INTO currency_exchangerate VALUES(50,2,6.618847,'2011-01-18');
INSERT INTO currency_exchangerate VALUES(51,2,7.439197,'2011-10-03');
INSERT INTO currency_exchangerate VALUES(52,2,6.63805,'2011-03-01');
INSERT INTO currency_exchangerate VALUES(53,2,6.791944,'2011-08-15');
INSERT INTO currency_exchangerate VALUES(54,2,7.279896,'2011-11-07');
INSERT INTO currency_exchangerate VALUES(55,2,7.415989,'2012-04-04');
INSERT INTO currency_exchangerate VALUES(56,2,7.768316,'2012-05-16');
INSERT INTO currency_exchangerate VALUES(57,2,7.271885,'2012-02-23');
INSERT INTO currency_exchangerate VALUES(58,3,7.625023,'2012-04-01');
INSERT INTO currency_exchangerate VALUES(59,3,8.075353,'2011-10-01');
INSERT INTO currency_exchangerate VALUES(60,2,7.83869,'2012-07-23');
INSERT INTO currency_exchangerate VALUES(61,2,7.434575,'2012-04-24');
INSERT INTO currency_exchangerate VALUES(62,2,6.717313,'2011-05-23');
INSERT INTO currency_exchangerate VALUES(63,2,7.186633,'2012-02-07');
INSERT INTO currency_exchangerate VALUES(64,2,7.504718,'2011-09-22');
INSERT INTO currency_exchangerate VALUES(65,2,6.557754,'2011-07-22');
INSERT INTO currency_exchangerate VALUES(66,2,7.64454,'2012-09-07');
INSERT INTO currency_exchangerate VALUES(67,2,7.92794,'2012-11-12');
INSERT INTO currency_exchangerate VALUES(68,2,7.725396,'2012-09-06');
INSERT INTO currency_exchangerate VALUES(69,3,8.462414,'2013-01-01');
INSERT INTO currency_exchangerate VALUES(70,2,7.609166,'2012-09-14');
INSERT INTO currency_exchangerate VALUES(71,2,7.639697,'2012-09-12');
INSERT INTO currency_exchangerate VALUES(72,2,7.831333,'2012-10-05');
INSERT INTO currency_exchangerate VALUES(73,2,7.981469,'2012-11-14');
INSERT INTO currency_exchangerate VALUES(74,2,7.204139,'2012-03-05');
INSERT INTO currency_exchangerate VALUES(75,2,7.454039,'2011-11-11');
INSERT INTO currency_exchangerate VALUES(76,2,7.767314,'2012-06-21');
INSERT INTO currency_exchangerate VALUES(77,2,6.696959,'2011-05-24');
INSERT INTO currency_exchangerate VALUES(78,2,6.784262,'2011-02-08');
INSERT INTO currency_exchangerate VALUES(79,2,6.524458,'2011-06-14');
INSERT INTO currency_exchangerate VALUES(80,2,7.291608,'2011-10-25');
INSERT INTO currency_exchangerate VALUES(81,2,7.280403,'2012-02-15');
INSERT INTO currency_exchangerate VALUES(82,2,7.273475,'2012-02-14');
INSERT INTO currency_exchangerate VALUES(83,2,7.270807,'2011-10-14');
INSERT INTO currency_exchangerate VALUES(84,2,6.788606,'2011-08-16');
INSERT INTO currency_exchangerate VALUES(85,1,0.828861,'2012-07-24');
INSERT INTO currency_exchangerate VALUES(86,2,7.408075,'2012-01-23');
INSERT INTO currency_exchangerate VALUES(87,2,7.567673,'2012-01-09');
INSERT INTO currency_exchangerate VALUES(88,2,7.740057,'2012-07-06');
INSERT INTO currency_exchangerate VALUES(89,2,7.236412,'2012-02-20');
INSERT INTO currency_exchangerate VALUES(90,2,6.730419,'2011-01-28');
INSERT INTO currency_exchangerate VALUES(91,2,7.379154,'2011-12-05');
INSERT INTO currency_exchangerate VALUES(92,1,0.806531,'2011-01-01');
INSERT INTO currency_exchangerate VALUES(93,5,5233.386649,'2012-04-23');
INSERT INTO currency_exchangerate VALUES(94,5,5232.196666,'2013-01-08');
INSERT INTO currency_exchangerate VALUES(95,5,5227.108333,'2013-04-23');
INSERT INTO currency_exchangerate VALUES(96,5,5197.263329,'2012-06-27');
INSERT INTO currency_exchangerate VALUES(97,5,5232.196666,'2013-01-10');
INSERT INTO currency_exchangerate VALUES(98,5,5227.108333,'2013-05-16');
INSERT INTO currency_exchangerate VALUES(99,5,5227.108333,'2013-05-22');
INSERT INTO currency_exchangerate VALUES(100,5,4796.080437,'2012-07-06');
INSERT INTO currency_exchangerate VALUES(101,5,4958.818763,'2012-08-29');
INSERT INTO currency_exchangerate VALUES(102,5,5212.260666,'2012-11-19');
INSERT INTO currency_exchangerate VALUES(103,5,5269.542225,'2012-05-29');
INSERT INTO currency_exchangerate VALUES(104,5,5312.177104,'2012-03-27');
INSERT INTO currency_exchangerate VALUES(105,5,5315.83902,'2012-03-28');
INSERT INTO currency_exchangerate VALUES(106,5,4801.975219,'2012-07-09');
INSERT INTO currency_exchangerate VALUES(107,5,4877.474695,'2012-07-23');
INSERT INTO currency_exchangerate VALUES(108,5,4887.732195,'2012-07-24');
INSERT INTO currency_exchangerate VALUES(109,5,4852.862195,'2012-08-16');
INSERT INTO currency_exchangerate VALUES(110,5,5232.196666,'2013-01-16');
INSERT INTO currency_exchangerate VALUES(111,5,5232.196666,'2013-01-29');
INSERT INTO currency_exchangerate VALUES(112,5,5232.196666,'2013-02-01');
INSERT INTO currency_exchangerate VALUES(113,5,5232.196666,'2013-02-22');
INSERT INTO currency_exchangerate VALUES(114,5,5238.1625,'2013-03-04');
INSERT INTO currency_exchangerate VALUES(115,5,5238.1625,'2013-03-26');
INSERT INTO currency_exchangerate VALUES(116,5,5227.108333,'2013-04-13');
INSERT INTO currency_exchangerate VALUES(117,5,5177.41043,'2012-11-02');
INSERT INTO currency_exchangerate VALUES(118,5,5209.455666,'2012-11-22');
INSERT INTO currency_exchangerate VALUES(119,5,5214.676666,'2012-11-23');
INSERT INTO currency_exchangerate VALUES(120,5,5270.272578,'2012-12-19');
INSERT INTO currency_exchangerate VALUES(121,5,5238.1625,'2013-02-04');
INSERT INTO currency_exchangerate VALUES(122,5,5238.1625,'2013-02-13');
INSERT INTO currency_exchangerate VALUES(123,5,5232.196666,'2013-02-19');
INSERT INTO currency_exchangerate VALUES(124,5,5233.366667,'2013-04-04');
INSERT INTO currency_exchangerate VALUES(125,5,5227.108333,'2013-05-02');
INSERT INTO currency_exchangerate VALUES(126,5,5290.289133,'2012-03-20');
INSERT INTO currency_exchangerate VALUES(127,5,5248.076037,'2012-05-19');
INSERT INTO currency_exchangerate VALUES(128,5,5250.657466,'2012-05-23');
INSERT INTO currency_exchangerate VALUES(129,5,5244.982578,'2012-12-04');
INSERT INTO currency_exchangerate VALUES(130,5,5227.108333,'2013-04-15');
INSERT INTO currency_exchangerate VALUES(131,5,5227.108333,'2013-05-10');
INSERT INTO currency_exchangerate VALUES(132,5,5227.108333,'2013-05-31');
INSERT INTO currency_exchangerate VALUES(133,5,5137.588907,'2012-01-17');
INSERT INTO currency_exchangerate VALUES(134,5,5163.240801,'2012-01-18');
INSERT INTO currency_exchangerate VALUES(135,5,5271.509002,'2012-03-16');
INSERT INTO currency_exchangerate VALUES(136,5,5335.937696,'2012-03-23');
INSERT INTO currency_exchangerate VALUES(137,5,5315.83902,'2012-03-30');
INSERT INTO currency_exchangerate VALUES(138,5,5204.007612,'2012-04-17');
INSERT INTO currency_exchangerate VALUES(139,5,5245.2925,'2012-12-17');
INSERT INTO currency_exchangerate VALUES(140,5,5232.196666,'2013-02-25');
INSERT INTO currency_exchangerate VALUES(141,5,5238.1625,'2013-03-14');
INSERT INTO currency_exchangerate VALUES(142,5,5227.108333,'2013-04-18');
INSERT INTO currency_exchangerate VALUES(143,5,5227.108333,'2013-04-26');
INSERT INTO currency_exchangerate VALUES(144,5,5227.108333,'2013-05-29');
INSERT INTO currency_exchangerate VALUES(145,5,5233.366667,'2013-04-12');
INSERT INTO currency_exchangerate VALUES(146,5,5227.108333,'2013-05-28');
INSERT INTO currency_exchangerate VALUES(147,5,5232.196666,'2013-01-22');
INSERT INTO currency_exchangerate VALUES(148,5,5227.108333,'2013-06-03');
INSERT INTO currency_exchangerate VALUES(149,5,5232.196666,'2013-01-24');
INSERT INTO currency_exchangerate VALUES(150,5,5232.196666,'2013-02-15');
INSERT INTO currency_exchangerate VALUES(151,5,5227.108333,'2013-05-23');
INSERT INTO currency_exchangerate VALUES(152,5,5238.1625,'2013-03-07');
INSERT INTO currency_exchangerate VALUES(153,5,5238.1625,'2013-03-19');
INSERT INTO currency_exchangerate VALUES(154,5,5220.686666,'2013-03-27');
INSERT INTO currency_exchangerate VALUES(155,5,5227.108333,'2013-05-17');
INSERT INTO currency_exchangerate VALUES(156,5,5232.196666,'2013-02-05');
INSERT INTO currency_exchangerate VALUES(157,5,5232.196666,'2013-02-28');
INSERT INTO currency_exchangerate VALUES(158,5,5232.196666,'2013-03-15');
INSERT INTO currency_exchangerate VALUES(159,5,5227.108333,'2013-06-01');
INSERT INTO currency_exchangerate VALUES(160,5,5232.196666,'2013-01-30');
INSERT INTO currency_exchangerate VALUES(161,5,5232.196666,'2013-02-12');
INSERT INTO currency_exchangerate VALUES(162,5,5233.366667,'2013-04-11');
INSERT INTO currency_exchangerate VALUES(163,5,5232.196666,'2013-01-07');
INSERT INTO currency_exchangerate VALUES(164,5,5232.196666,'2013-01-15');
INSERT INTO currency_exchangerate VALUES(165,5,5232.196666,'2013-03-06');
INSERT INTO currency_exchangerate VALUES(166,5,5227.108333,'2013-06-04');
INSERT INTO currency_exchangerate VALUES(167,5,5232.196666,'2013-01-11');
INSERT INTO currency_exchangerate VALUES(168,5,5232.196666,'2013-01-17');
INSERT INTO currency_exchangerate VALUES(169,5,5227.108333,'2013-04-03');
INSERT INTO currency_exchangerate VALUES(170,5,5227.108333,'2013-04-17');
INSERT INTO currency_exchangerate VALUES(171,5,5232.196666,'2013-01-18');
INSERT INTO currency_exchangerate VALUES(172,5,5238.1625,'2013-03-25');
INSERT INTO currency_exchangerate VALUES(173,5,5233.366667,'2013-04-19');
INSERT INTO currency_exchangerate VALUES(174,3,8.462414,'2013-03-01');
INSERT INTO currency_exchangerate VALUES(175,1,0.750898,'2012-03-01');
INSERT INTO currency_exchangerate VALUES(176,1,0.767661,'2013-03-01');
INSERT INTO currency_exchangerate VALUES(177,3,7.498505,'2012-03-01');
INSERT INTO currency_exchangerate VALUES(178,3,6.622288,'2011-01-01');
INSERT INTO currency_exchangerate VALUES(179,12,92.405819,'2011-01-01');
INSERT INTO currency_exchangerate VALUES(180,1,0.763984,'2012-01-31');
INSERT INTO currency_exchangerate VALUES(181,11,0.656271,'2013-05-14');
INSERT INTO currency_exchangerate VALUES(182,1,0.764731,'2013-02-26');
INSERT INTO currency_exchangerate VALUES(183,1,0.758668,'2013-04-16');
INSERT INTO currency_exchangerate VALUES(184,1,0.771671,'2013-03-13');
INSERT INTO currency_exchangerate VALUES(185,1,0.763761,'2013-06-25');
INSERT INTO currency_exchangerate VALUES(186,3,10.243169,'2013-08-23');
INSERT INTO currency_exchangerate VALUES(187,1,0.765722,'2013-07-12');
INSERT INTO currency_exchangerate VALUES(188,11,0.660839,'2013-02-26');
INSERT INTO currency_exchangerate VALUES(189,1,0.765236,'2013-04-09');
INSERT INTO currency_exchangerate VALUES(190,1,0.769955,'2013-03-22');
INSERT INTO currency_exchangerate VALUES(191,3,9.990286,'2013-07-12');
INSERT INTO currency_exchangerate VALUES(192,3,8.989966,'2013-02-28');
INSERT INTO currency_exchangerate VALUES(193,11,0.661659,'2013-07-12');
INSERT INTO currency_exchangerate VALUES(194,13,30.0,'2013-03-26');
INSERT INTO currency_exchangerate VALUES(195,13,30.0,'2013-03-18');
INSERT INTO currency_exchangerate VALUES(196,13,30.0,'2013-03-31');
INSERT INTO currency_exchangerate VALUES(197,13,30.0,'2013-04-01');
INSERT INTO currency_exchangerate VALUES(198,13,30.0,'2013-03-22');
INSERT INTO currency_exchangerate VALUES(199,13,30.0,'2013-02-18');
INSERT INTO currency_exchangerate VALUES(200,13,30.0,'2013-02-05');
INSERT INTO currency_exchangerate VALUES(201,13,30.0,'2013-01-31');
INSERT INTO currency_exchangerate VALUES(202,13,30.0,'2013-07-05');
INSERT INTO currency_exchangerate VALUES(203,13,30.0,'2013-06-11');
INSERT INTO currency_exchangerate VALUES(204,13,30.0,'2013-07-11');
INSERT INTO currency_exchangerate VALUES(205,13,30.0,'2013-09-10');
INSERT INTO currency_exchangerate VALUES(206,13,30.0,'2012-07-05');
INSERT INTO currency_exchangerate VALUES(207,13,30.0,'2013-10-09');
INSERT INTO currency_exchangerate VALUES(208,1,0.780874,'2012-01-12');
INSERT INTO currency_exchangerate VALUES(209,13,31.10105,'2013-04-22');
INSERT INTO currency_exchangerate VALUES(210,1,0.757152,'2013-01-01');
CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "content_type_id" integer REFERENCES "django_content_type" ("id"),
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
);
INSERT INTO django_admin_log VALUES(1,'2013-06-02 09:31:37.032000',1,27,1,'EUR',1,'');
INSERT INTO django_admin_log VALUES(2,'2013-06-02 09:32:35.245000',1,27,2,'BWP',1,'');
INSERT INTO django_admin_log VALUES(3,'2013-06-02 09:32:45.423000',1,27,3,'ZAR',1,'');
INSERT INTO django_admin_log VALUES(4,'2013-06-02 09:32:56.011000',1,27,4,'USD',1,'');
INSERT INTO django_admin_log VALUES(5,'2013-06-02 09:33:06.059000',1,27,5,'ZMK',1,'');
INSERT INTO django_admin_log VALUES(6,'2013-06-02 09:33:22.758000',1,27,6,'NAD',1,'');
INSERT INTO django_admin_log VALUES(7,'2013-06-02 09:33:33.003000',1,27,7,'SZL',1,'');
INSERT INTO django_admin_log VALUES(8,'2013-06-02 09:33:46.499000',1,27,8,'MWK',1,'');
INSERT INTO django_admin_log VALUES(9,'2013-06-02 09:34:13.970000',1,27,9,'LSL',1,'');
INSERT INTO django_admin_log VALUES(10,'2013-06-02 09:34:26.550000',1,27,10,'TZS',1,'');
INSERT INTO django_admin_log VALUES(11,'2013-06-02 09:34:49.453000',1,27,11,'GBP',1,'');
INSERT INTO django_admin_log VALUES(12,'2013-06-03 07:34:05.868000',1,16,97,'Kausikh Therapeutics (P) LTD (IND)',1,'');
INSERT INTO django_admin_log VALUES(13,'2013-06-03 07:34:26.806000',1,17,137,'India (Kausikh Therapeutics (P) LTD)',1,'');
INSERT INTO django_admin_log VALUES(14,'2013-06-03 07:34:51.688000',1,19,2824,'Kayvir 200 - Kausikh Therapeutics (P) LTD (IND) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(15,'2013-06-03 07:36:03.799000',1,16,98,'Denk Pharma Gmbh & Co. KG (No Country)',1,'');
INSERT INTO django_admin_log VALUES(16,'2013-06-03 07:36:42.276000',1,17,138,'Alemanha (Denk Pharma Gmbh & Co. KG)',1,'');
INSERT INTO django_admin_log VALUES(17,'2013-06-03 07:36:44.701000',1,19,2825,'Acyclovir - Denk 200 - Denk Pharma Gmbh & Co. KG (No Country) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(18,'2013-06-03 07:37:47.253000',1,19,2826,'Acivir - 200 - Cipla Limited (IND) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(19,'2013-06-03 07:39:44.981000',1,9,36,'Portugal (POR)',1,'');
INSERT INTO django_admin_log VALUES(20,'2013-06-03 07:39:47.036000',1,16,99,'Farmalabor Produtos Farmaceuticos LDA (POR)',1,'');
INSERT INTO django_admin_log VALUES(21,'2013-06-03 07:40:06.211000',1,17,139,'Portugal (Farmalabor Produtos Farmaceuticos LDA)',1,'');
INSERT INTO django_admin_log VALUES(22,'2013-06-03 07:40:09.198000',1,19,2827,'Cicloviral 200 - Farmalabor Produtos Farmaceuticos LDA (POR) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(23,'2013-06-03 07:41:10.538000',1,19,2828,'Ciclovax - 200 - Remedica Ltd (CYP) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(24,'2013-06-03 07:42:09.718000',1,16,100,'Aegis Ltd (CYP)',1,'');
INSERT INTO django_admin_log VALUES(25,'2013-06-03 07:42:30.565000',1,17,140,'Cyprus (Aegis Ltd)',1,'');
INSERT INTO django_admin_log VALUES(26,'2013-06-03 07:42:35.805000',1,19,2829,'Virucid 200 - Aegis Ltd (CYP) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(27,'2013-06-03 07:43:59.665000',1,17,141,'India (Stallion Laboratories)',1,'');
INSERT INTO django_admin_log VALUES(28,'2013-06-03 07:44:09.262000',1,19,2830,'Acytal - 200 - Stallion Laboratories (IND) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(29,'2013-06-03 07:45:12.917000',1,17,142,'India (West Coast Pharmaceutical Works )',1,'');
INSERT INTO django_admin_log VALUES(30,'2013-06-03 07:45:19.752000',1,19,2831,'Aclo 200 - West Coast Pharmaceutical Works  (IND) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(31,'2013-06-03 07:46:20.890000',1,16,101,'Lincoln Pharmaceuticals Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(32,'2013-06-03 07:46:53.481000',1,17,143,'Ahmedabad, Índia (Lincoln Pharmaceuticals Ltd)',1,'');
INSERT INTO django_admin_log VALUES(33,'2013-06-03 07:46:58.698000',1,19,2832,'Genvir - 200 - Lincoln Pharmaceuticals Ltd (IND) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(34,'2013-06-03 07:50:50.191000',1,17,143,'Gujarat, Índia (Lincoln Pharmaceuticals Ltd)',2,'Changed name.');
INSERT INTO django_admin_log VALUES(35,'2013-06-03 07:52:21.434000',1,17,142,'India, Ahmedabad (West Coast Pharmaceutical Works )',2,'Changed name.');
INSERT INTO django_admin_log VALUES(36,'2013-06-03 09:03:41.576000',1,16,98,'Denk Pharma Gmbh & Co. KG (IND)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(37,'2013-06-03 11:27:45.718000',1,17,144,'India (Medopharma Ltd)',1,'');
INSERT INTO django_admin_log VALUES(38,'2013-06-03 11:28:09.537000',1,19,2833,'Benkil 400 - Medopharma Ltd (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(39,'2013-06-03 11:30:44.676000',1,25,2167,'5400 x Benkil 400 - Medopharma Ltd (IND) (albendazole 400mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(40,'2013-06-03 11:30:51.496000',1,19,2805,'Medopharma Ltd (IND) (albendazole 400mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(41,'2013-06-03 11:31:49.999000',1,16,102,'Apex Drug House (IND)',1,'');
INSERT INTO django_admin_log VALUES(42,'2013-06-03 11:32:07.279000',1,17,145,'India (Apex Drug House)',1,'');
INSERT INTO django_admin_log VALUES(43,'2013-06-03 11:32:15.133000',1,19,2834,'Wormfree - Apex Drug House (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(44,'2013-06-03 11:32:55.095000',1,16,103,'Intermed (IND)',1,'');
INSERT INTO django_admin_log VALUES(45,'2013-06-03 11:33:22.982000',1,17,146,'India (Intermed)',1,'');
INSERT INTO django_admin_log VALUES(46,'2013-06-03 11:33:26.706000',1,19,2835,'Albensha - Intermed (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(47,'2013-06-03 11:34:18.529000',1,17,147,'India (Indoco Remedies)',1,'');
INSERT INTO django_admin_log VALUES(48,'2013-06-03 11:34:34.209000',1,19,2836,'Abz - Indoco Remedies (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(49,'2013-06-03 11:35:24.775000',1,16,104,'Saga Laboratories (IND)',1,'');
INSERT INTO django_admin_log VALUES(50,'2013-06-03 11:35:45.801000',1,17,148,'India (Saga Laboratories)',1,'');
INSERT INTO django_admin_log VALUES(51,'2013-06-03 11:35:50.743000',1,19,2837,'Xipizole - Saga Laboratories (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(52,'2013-06-03 11:36:40.766000',1,16,105,'Fredun Pharmaceutical Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(53,'2013-06-03 11:37:09.235000',1,17,149,'India (Fredun Pharmaceutical Ltd)',1,'');
INSERT INTO django_admin_log VALUES(54,'2013-06-03 11:37:14.929000',1,19,2838,'Vormifred 400 - Fredun Pharmaceutical Ltd (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(55,'2013-06-03 11:37:58.254000',1,16,106,'Protech Biosistems (IND)',1,'');
INSERT INTO django_admin_log VALUES(56,'2013-06-03 11:38:22.552000',1,17,150,'India (Protech Biosistems)',1,'');
INSERT INTO django_admin_log VALUES(57,'2013-06-03 11:38:26.719000',1,19,2839,'Sanoxal - Protech Biosistems (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(58,'2013-06-03 11:39:18.466000',1,19,2840,'Bendaz - 400 - Kausikh Therapeutics (P) LTD (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(59,'2013-06-03 11:42:03.579000',1,9,37,'Brazil (BRA)',1,'');
INSERT INTO django_admin_log VALUES(60,'2013-06-03 11:42:05.917000',1,16,107,'Laboratorio Neo Quimica Com. E Ind Ltda (BRA)',1,'');
INSERT INTO django_admin_log VALUES(61,'2013-06-03 11:42:38.356000',1,17,151,'Brazil (Laboratorio Neo Quimica Com. E Ind Ltda)',1,'');
INSERT INTO django_admin_log VALUES(62,'2013-06-03 11:42:42.506000',1,19,2841,'Neo Amitriptilin - Laboratorio Neo Quimica Com. E Ind Ltda (BRA) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(63,'2013-06-04 07:24:54.585000',1,16,108,'T & T Pharmacare (IND)',1,'');
INSERT INTO django_admin_log VALUES(64,'2013-06-04 07:25:08.376000',1,17,152,'India (T & T Pharmacare)',1,'');
INSERT INTO django_admin_log VALUES(65,'2013-06-04 12:37:17.022000',1,25,33,'1800 x Tumocin-15 - Medix Care (Pty) Ltd (IND) (bleomycin 15iu injection)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(66,'2013-06-05 07:49:59.092000',1,13,188,'aciclovir 400mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(67,'2013-06-05 07:50:22.881000',1,19,2842,'Unknown (UNK) (aciclovir 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(68,'2013-06-05 07:50:37.107000',1,30,1,'Zambia (ZMB) - EM0015',1,'');
INSERT INTO django_admin_log VALUES(69,'2013-06-05 07:52:06.598000',1,19,2843,'Amoxycillin (Trihydrate) - Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(70,'2013-06-05 07:52:19.675000',1,30,2,'Zambia (ZMB) - EM0032',1,'');
INSERT INTO django_admin_log VALUES(71,'2013-06-05 07:53:48.274000',1,19,2844,'Amoxycillin (Trihydrate), Dry Pwd For Suspension - Unknown (UNK) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(72,'2013-06-05 07:54:13.995000',1,30,3,'Zambia (ZMB) - EM0033',1,'');
INSERT INTO django_admin_log VALUES(73,'2013-06-05 07:57:48.320000',1,19,2845,'Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(74,'2013-06-05 07:58:01.298000',1,30,4,'Zambia (ZMB) - MAL0002',1,'');
INSERT INTO django_admin_log VALUES(75,'2013-06-05 07:58:53.007000',1,19,2846,'Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(76,'2013-06-05 07:59:06.510000',1,30,5,'Zambia (ZMB) - MAL0062',1,'');
INSERT INTO django_admin_log VALUES(77,'2013-06-05 07:59:41.466000',1,19,2847,'Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(78,'2013-06-05 07:59:52.815000',1,30,6,'Zambia (ZMB) - MAL0003',1,'');
INSERT INTO django_admin_log VALUES(79,'2013-06-05 08:00:41.483000',1,19,2848,'Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(80,'2013-06-05 08:00:55.480000',1,30,7,'Zambia (ZMB) - MAL0063',1,'');
INSERT INTO django_admin_log VALUES(81,'2013-06-05 09:32:04.619000',1,19,2849,'Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(82,'2013-06-05 09:32:18.353000',1,30,8,'Zambia (ZMB) - MAL0004',1,'');
INSERT INTO django_admin_log VALUES(83,'2013-06-05 09:33:17.228000',1,19,2850,'Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(84,'2013-06-05 09:33:23.291000',1,30,9,'Zambia (ZMB) - MAL0001',1,'');
INSERT INTO django_admin_log VALUES(85,'2013-06-05 09:34:44.362000',1,19,2851,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ - Unknown (UNK) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(86,'2013-06-05 09:34:58.457000',1,30,10,'Zambia (ZMB) - EM0595',1,'');
INSERT INTO django_admin_log VALUES(87,'2013-06-05 09:35:40.701000',1,19,2852,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ - Unknown (UNK) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(88,'2013-06-05 09:35:51.643000',1,30,11,'Zambia (ZMB) - EM0054',1,'');
INSERT INTO django_admin_log VALUES(89,'2013-06-05 09:36:32.705000',1,19,2853,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ - Unknown (UNK) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(90,'2013-06-05 09:36:44.521000',1,30,12,'Zambia (ZMB) - EM0055',1,'');
INSERT INTO django_admin_log VALUES(91,'2013-06-05 09:37:24.541000',1,19,2854,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ - Unknown (UNK) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(92,'2013-06-05 09:37:27.089000',1,30,13,'Zambia (ZMB) - EM0748',1,'');
INSERT INTO django_admin_log VALUES(93,'2013-06-05 09:42:45.443000',1,19,2855,'BENZYL PENICILLIN SODIUM, 5MU, PWD FOR INJ - Unknown (UNK) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(94,'2013-06-05 09:43:01.789000',1,30,14,'Zambia (ZMB) - EM0061',1,'');
INSERT INTO django_admin_log VALUES(95,'2013-06-05 09:43:41.076000',1,19,2856,'BENZYL PENICILLIN SODIUM, 5MU, PWD FOR INJ - Unknown (UNK) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(96,'2013-06-05 09:43:50.627000',1,30,15,'Zambia (ZMB) - EM0062',1,'');
INSERT INTO django_admin_log VALUES(97,'2013-06-05 09:44:34.155000',1,19,2857,'CARBAMAZEPINE, TAB 200MG - Unknown (UNK) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(98,'2013-06-05 09:44:45.483000',1,30,16,'Zambia (ZMB) - EM0072',1,'');
INSERT INTO django_admin_log VALUES(99,'2013-06-05 09:45:59.764000',1,19,2858,'CEPHALEXIN, TAB/CAP 250MG - Unknown (UNK) (cephalexin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(100,'2013-06-05 09:46:10.209000',1,30,17,'Zambia (ZMB) - EM0085',1,'');
INSERT INTO django_admin_log VALUES(101,'2013-06-05 09:47:05.217000',1,19,2859,'CEPHALEXIN, TAB/CAP 250MG - Unknown (UNK) (chloramphenicol 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(102,'2013-06-05 09:47:23.689000',1,30,18,'Zambia (ZMB) - EM0090',1,'');
INSERT INTO django_admin_log VALUES(103,'2013-06-05 09:48:28.753000',1,19,2860,'CHLORPHENIRAMINE MALEATE, TAB 4MG - Unknown (UNK) (chloropheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(104,'2013-06-05 09:48:40.860000',1,30,19,'Zambia (ZMB) - EM0096',1,'');
INSERT INTO django_admin_log VALUES(105,'2013-06-05 09:49:37.200000',1,19,2861,'CIPROFLOXACIN, TAB 250MG - Unknown (UNK) (ciprofloxacin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(106,'2013-06-05 09:49:51.478000',1,30,20,'Zambia (ZMB) - EM0110',1,'');
INSERT INTO django_admin_log VALUES(107,'2013-06-05 09:51:17.068000',1,19,2862,'CO-TRIMOXAZOLE, PWD FOR SUSP, 240MG/5ML, 100ML BTL - Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(108,'2013-06-05 09:51:25.932000',1,30,21,'Zambia (ZMB) - EM0524',1,'');
INSERT INTO django_admin_log VALUES(109,'2013-06-05 09:52:19.897000',1,19,2863,'CO-TRIMOXAZOLE, PWD FOR SUSP, 240MG/5ML, 60ML BTL - Unknown (UNK) (cotrimoxazole 240mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(110,'2013-06-05 09:52:28.559000',1,30,22,'Zambia (ZMB) - EM0477',1,'');
INSERT INTO django_admin_log VALUES(111,'2013-06-05 09:54:09.104000',1,19,4,'Macleods Pharmaceuticals Limited (IND) (co-trimoxazole 240mg/5ml syrup/susp)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(112,'2013-06-05 09:54:37.677000',1,19,2863,'CO-TRIMOXAZOLE, PWD FOR SUSP, 240MG/5ML, 60ML BTL - Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(113,'2013-06-05 09:55:45.017000',1,13,134,'cotrimoxazole 240mg/5ml suspension',3,'');
INSERT INTO django_admin_log VALUES(114,'2013-06-05 09:57:29.650000',1,13,189,'sulfadoxine 800, trimethoprim 160 cap/tab',1,'');
INSERT INTO django_admin_log VALUES(115,'2013-06-05 09:57:53.814000',1,13,189,'co-trimoxazole 960mg cap/tab',2,'Changed name.');
INSERT INTO django_admin_log VALUES(116,'2013-06-05 09:58:20.235000',1,19,2864,'CO-TRIMOXAZOLE TABLETS 960MG - Unknown (UNK) (co-trimoxazole 960mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(117,'2013-06-05 09:58:39.647000',1,30,23,'Zambia (ZMB) - EM0782',1,'');
INSERT INTO django_admin_log VALUES(118,'2013-06-05 09:59:30.917000',1,19,2865,'CO-TRIMOXAZOLE, TAB (DOUBLE STRENGTH), 960MG - Unknown (UNK) (co-trimoxazole 960mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(119,'2013-06-05 09:59:48.320000',1,30,24,'Zambia (ZMB) - EM0781',1,'');
INSERT INTO django_admin_log VALUES(120,'2013-06-05 10:00:29.132000',1,19,2866,'CO-TRIMOXAZOLE, TAB 480MG - Unknown (UNK) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(121,'2013-06-05 10:00:38.973000',1,30,25,'Zambia (ZMB) - EM0130',1,'');
INSERT INTO django_admin_log VALUES(122,'2013-06-05 10:02:14.534000',1,19,2867,'ERYTHROMYCIN STEARATE, TAB 250MG - Unknown (UNK) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(123,'2013-06-05 10:02:23.995000',1,30,26,'Zambia (ZMB) - EM0195',1,'');
INSERT INTO django_admin_log VALUES(124,'2013-06-05 10:03:03.709000',1,19,2868,'GLIBENCLAMIDE, TAB 5MG - Unknown (UNK) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(125,'2013-06-05 10:04:13.384000',1,30,27,'Zambia (ZMB) - EM0228',1,'');
INSERT INTO django_admin_log VALUES(126,'2013-06-05 10:06:14.132000',1,13,190,'lamivudine/stavudine/ nevirapine 150mg, nevirapine 50mg, stavudine 20mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(127,'2013-06-05 10:06:39.473000',1,19,2869,'LAMIVUDINE / STAVUDINE / NEVIRAPINE, TAB 150/30/20 - Unknown (UNK) (lamivudine/stavudine/ nevirapine 150mg, nevirapine 50mg, stavudine 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(128,'2013-06-05 10:06:51.188000',1,30,28,'Zambia (ZMB) - ARV0012',1,'');
INSERT INTO django_admin_log VALUES(129,'2013-06-05 10:08:10.802000',1,13,191,'lamivudine 60mg, nevirapine 12mg, stavudine 100mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(130,'2013-06-05 10:08:20.923000',1,19,2870,'LAMIVUDINE / STAVUDINE / NEVIRAPINE, TAB 60/12/100 - Unknown (UNK) (lamivudine 60mg, nevirapine 12mg, stavudine 100mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(131,'2013-06-05 10:08:47.317000',1,14,209,'lamivudine/stavudine/ nevirapine 150mg',3,'');
INSERT INTO django_admin_log VALUES(132,'2013-06-05 10:09:31.183000',1,30,29,'Zambia (ZMB) - ARV0014',1,'');
INSERT INTO django_admin_log VALUES(133,'2013-06-05 10:10:14.055000',1,19,2871,'LAMIVUDINE / ZIDOVUDINE, TAB 150/300MG - Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(134,'2013-06-05 10:10:27.729000',1,30,30,'Zambia (ZMB) - ARV0016',1,'');
INSERT INTO django_admin_log VALUES(135,'2013-06-05 10:11:22.880000',1,19,2872,'LAMIVUDINE / ZIDOVUDINE, TAB 150/300MG - Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(136,'2013-06-05 10:11:25.587000',1,30,31,'Zambia (ZMB) - ARV0053',1,'');
INSERT INTO django_admin_log VALUES(137,'2013-06-05 10:12:18.918000',1,19,2873,'LAMIVUDINE, TAB 150MG - Unknown (UNK) (lamivudine 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(138,'2013-06-05 10:12:43.310000',1,30,32,'Zambia (ZMB) - ARV0011',1,'');
INSERT INTO django_admin_log VALUES(139,'2013-06-05 10:14:17.569000',1,13,192,'lamivudine 30mg, zidovudine 60mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(140,'2013-06-05 10:14:29.577000',1,19,2874,'LAMIVUDINE/ZIDOVUDINE 30MG/60MG - Unknown (UNK) (lamivudine 30mg, zidovudine 60mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(141,'2013-06-05 10:14:48.750000',1,12,58,'lamivudine/stavudine/ nevirapine',3,'');
INSERT INTO django_admin_log VALUES(142,'2013-06-05 10:14:56.991000',1,12,69,'rifampicin/isoniazid/ pyrazinamid',3,'');
INSERT INTO django_admin_log VALUES(143,'2013-06-05 10:15:13.932000',1,30,33,'Zambia (ZMB) - ARV0048',1,'');
INSERT INTO django_admin_log VALUES(144,'2013-06-05 10:22:21.026000',1,19,2875,'LOPINAVIR / RITONAVIR (KALETRA), CAP 200/50MG - Unknown (UNK) (lopinavir 200mg, ritonavir 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(145,'2013-06-05 10:22:33.087000',1,30,34,'Zambia (ZMB) - ARV0018',1,'');
INSERT INTO django_admin_log VALUES(146,'2013-06-05 10:23:47.578000',1,19,2876,'MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(147,'2013-06-05 10:23:57.374000',1,30,35,'Zambia (ZMB) - RH0014',1,'');
INSERT INTO django_admin_log VALUES(148,'2013-06-05 10:24:30.135000',1,19,2877,'MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(149,'2013-06-05 10:24:40.534000',1,30,36,'Zambia (ZMB) - RH0023',1,'');
INSERT INTO django_admin_log VALUES(150,'2013-06-05 10:25:34.546000',1,13,193,'metformin 250mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(151,'2013-06-05 10:25:45.280000',1,19,2878,'METFORMIN TABLET B.P 250MG - Unknown (UNK) (metformin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(152,'2013-06-05 10:25:56.230000',1,30,37,'Zambia (ZMB) - EM0798',1,'');
INSERT INTO django_admin_log VALUES(153,'2013-06-05 10:27:10.559000',1,19,2879,'METRONIDAZOLE HCL, TAB 200MG - Unknown (UNK) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(154,'2013-06-05 10:27:25.087000',1,30,38,'Zambia (ZMB) - EM0798',1,'');
INSERT INTO django_admin_log VALUES(155,'2013-06-05 10:27:47.761000',1,30,39,'Zambia (ZMB) - EM0316',1,'');
INSERT INTO django_admin_log VALUES(156,'2013-06-05 10:28:12.048000',1,30,38,'Zambia (ZMB) - EM0798',3,'');
INSERT INTO django_admin_log VALUES(157,'2013-06-05 10:28:19.518000',1,30,39,'Zambia (ZMB) - EM0316',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(158,'2013-06-05 10:29:31.903000',1,19,2880,'NEVIRAPINE, TAB 200MG - Unknown (UNK) (nevirapine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(159,'2013-06-05 10:29:43.691000',1,30,40,'Zambia (ZMB) - ARV0025',1,'');
INSERT INTO django_admin_log VALUES(160,'2013-06-05 10:30:41.242000',1,19,2881,'ORAL REHYDRATION SALTS, WHO FORMULA, SACHET TO MAK - Unknown (UNK) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(161,'2013-06-05 10:30:51.178000',1,30,41,'Zambia (ZMB) - EM0337',1,'');
INSERT INTO django_admin_log VALUES(162,'2013-06-05 10:31:21.763000',1,19,2882,'ORAL REHYDRATION SALTS, WHO FORMULA, SACHET TO MAK - Unknown (UNK) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(163,'2013-06-05 10:31:31.466000',1,30,42,'Zambia (ZMB) - EM0338',1,'');
INSERT INTO django_admin_log VALUES(164,'2013-06-05 10:32:11.493000',1,19,2883,'OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(165,'2013-06-05 10:32:21.623000',1,30,43,'Zambia (ZMB) - EM0341',1,'');
INSERT INTO django_admin_log VALUES(166,'2013-06-05 10:33:21.886000',1,19,2884,'PARACETAMOL, SYRUP 120MG/5ML, 100ML BTL  - Unknown (UNK) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(167,'2013-06-05 10:33:34.038000',1,30,44,'Zambia (ZMB) - EM0342',1,'');
INSERT INTO django_admin_log VALUES(168,'2013-06-05 10:34:05.284000',1,19,2885,'PARACETAMOL, SYRUP 120MG/5ML, 2.5L - Unknown (UNK) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(169,'2013-06-05 10:34:14.898000',1,30,45,'Zambia (ZMB) - EM0621',1,'');
INSERT INTO django_admin_log VALUES(170,'2013-06-05 10:34:51.959000',1,13,194,'paracetamol 100mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(171,'2013-06-05 10:35:02.669000',1,19,2886,'PARACETAMOL, TAB 100MG - Unknown (UNK) (paracetamol 100mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(172,'2013-06-05 10:35:14.605000',1,30,46,'Zambia (ZMB) - EM0345',1,'');
INSERT INTO django_admin_log VALUES(173,'2013-06-05 10:36:42.697000',1,19,2887,'RIFAMPICIN /ISONIAZID 60/30MG (RIMACTAZID PAED) - Unknown (UNK) (isoniazid 30mg, rifampicin 60mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(174,'2013-06-05 10:36:55.191000',1,30,47,'Zambia (ZMB) - TB0046',1,'');
INSERT INTO django_admin_log VALUES(175,'2013-06-05 10:38:11.983000',1,19,2888,'RIFAMPICIN + ISONIAZID, TAB 150/75MG - Unknown (UNK) (isoniazid 75mg, rifampicin 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(176,'2013-06-05 10:38:25.058000',1,30,48,'Zambia (ZMB) - TB0051',1,'');
INSERT INTO django_admin_log VALUES(177,'2013-06-05 10:39:02.598000',1,19,2889,'RIFAMPICIN + ISONIAZID, TAB 60/30MG - Unknown (UNK) (isoniazid 30mg, rifampicin 60mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(178,'2013-06-05 10:39:21.552000',1,30,49,'Zambia (ZMB) - TB0053',1,'');
INSERT INTO django_admin_log VALUES(179,'2013-06-05 10:40:17.405000',1,19,2890,'RIFAMPICIN/ISONIAZID/PYRAZINAMIDE 60/30/150MG (RIM - Unknown (UNK) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(180,'2013-06-05 10:40:28.932000',1,30,50,'Zambia (ZMB) - TB0047',1,'');
INSERT INTO django_admin_log VALUES(181,'2013-06-05 10:41:05.699000',1,19,2891,'RIFAMPICIN+ISONIAZID+PYRAZINAMIDE,TAB 60/30/150MG - Unknown (UNK) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(182,'2013-06-05 10:41:17.008000',1,30,51,'Zambia (ZMB) - TB0054',1,'');
INSERT INTO django_admin_log VALUES(183,'2013-06-05 10:41:57.589000',1,19,2892,'SALBUTAMOL, INHALER 0.1MG DOSE, 200 DOSES - Unknown (UNK) (salbutamol 100mcg/dose inhaler)',1,'');
INSERT INTO django_admin_log VALUES(184,'2013-06-05 10:42:07.754000',1,30,52,'Zambia (ZMB) - EM0413',1,'');
INSERT INTO django_admin_log VALUES(185,'2013-06-05 10:43:33.025000',1,19,2893,'SULPHADOXINE / PYRIMETHAMINE, TAB 500/25MG - Unknown (UNK) (pyrimethamine 25mg, sulphadoxine 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(186,'2013-06-05 10:43:46.319000',1,30,53,'Zambia (ZMB) - MAL0013',1,'');
INSERT INTO django_admin_log VALUES(187,'2013-06-05 10:44:30.362000',1,19,2894,'TAMOXIFEN 20MG, TABLET - Unknown (UNK) (tamoxifen 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(188,'2013-06-05 10:44:41.654000',1,30,54,'Zambia (ZMB) - EM0576',1,'');
INSERT INTO django_admin_log VALUES(189,'2013-06-05 10:45:09.455000',1,19,2895,'TAMOXIFEN 20MG, TABLET - Unknown (UNK) (tamoxifen 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(190,'2013-06-05 10:45:20.604000',1,30,55,'Zambia (ZMB) - EM0834',1,'');
INSERT INTO django_admin_log VALUES(191,'2013-06-05 10:46:11.537000',1,19,2896,'ZINC,TAB 20MG - Unknown (UNK) (zinc sulphate 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(192,'2013-06-05 10:46:23.779000',1,30,56,'Zambia (ZMB) - NCEM0050',1,'');
INSERT INTO django_admin_log VALUES(193,'2013-06-05 10:52:57.709000',1,18,119,'Alliance Pharmaceutical LTD',1,'');
INSERT INTO django_admin_log VALUES(194,'2013-06-05 10:55:16.833000',1,18,120,'Baxy Pharmaceuticals LTD',1,'');
INSERT INTO django_admin_log VALUES(195,'2013-06-05 10:57:29.038000',1,18,121,'CLINTON FOUNDATION HIV/AIDS IN',1,'');
INSERT INTO django_admin_log VALUES(196,'2013-06-05 10:59:24.438000',1,18,122,'BAXY PHARMACEUTICALS MANF.CO',1,'');
INSERT INTO django_admin_log VALUES(197,'2013-06-05 11:01:45.577000',1,18,1,'Cipla Limited',2,'Changed address.');
INSERT INTO django_admin_log VALUES(198,'2013-06-06 06:40:47.658000',1,18,123,'Division Pharmaceuticals LTD',1,'');
INSERT INTO django_admin_log VALUES(199,'2013-06-06 06:43:07.246000',1,18,28,'Heterodrugs H/C',2,'Changed address.');
INSERT INTO django_admin_log VALUES(200,'2013-06-06 06:44:34.116000',1,18,25,'IDA Foundation',2,'Changed address and phone.');
INSERT INTO django_admin_log VALUES(201,'2013-06-06 06:44:54.692000',1,18,25,'IDA Foundation',2,'Changed email.');
INSERT INTO django_admin_log VALUES(202,'2013-06-06 06:47:09.463000',1,18,124,'International Drug Company',1,'');
INSERT INTO django_admin_log VALUES(203,'2013-06-06 06:47:37.827000',1,18,119,'Alliance Pharmaceutical LTD',2,'Changed phone and fax.');
INSERT INTO django_admin_log VALUES(204,'2013-06-06 06:47:53.012000',1,18,123,'Division Pharmaceuticals LTD',2,'Changed phone.');
INSERT INTO django_admin_log VALUES(205,'2013-06-06 06:52:20.406000',1,18,125,'M/S. Naprod Life Sciences PVT.',1,'');
INSERT INTO django_admin_log VALUES(206,'2013-06-06 07:54:54.863000',1,18,126,'Pharmanova (Zambia) LTD',1,'');
INSERT INTO django_admin_log VALUES(207,'2013-06-06 10:03:24.108000',1,18,127,'John Snow Inc',1,'');
INSERT INTO django_admin_log VALUES(208,'2013-06-06 10:06:20.252000',1,18,128,'Melcome Pharmaceuticals LTD',1,'');
INSERT INTO django_admin_log VALUES(209,'2013-06-06 10:08:54.604000',1,18,129,'Pharma Plus LTD',1,'');
INSERT INTO django_admin_log VALUES(210,'2013-06-06 10:10:19.382000',1,18,130,'Phillips Pharmaceutical (Z) LTD',1,'');
INSERT INTO django_admin_log VALUES(211,'2013-06-06 10:11:45.537000',1,18,131,'Prime Pharmaceuticals LTD',1,'');
INSERT INTO django_admin_log VALUES(212,'2013-06-06 10:12:42.708000',1,18,132,'Partners for Supply Chain Management',1,'');
INSERT INTO django_admin_log VALUES(213,'2013-06-06 10:15:38.977000',1,18,133,'Savers Pharmaceuticals LTD',1,'');
INSERT INTO django_admin_log VALUES(214,'2013-06-06 10:16:50.472000',1,18,134,'Sterlin Medical Diagnostics',1,'');
INSERT INTO django_admin_log VALUES(215,'2013-06-06 10:19:23.473000',1,18,135,'UNDP/Global Funds Project/GFR8',1,'');
INSERT INTO django_admin_log VALUES(216,'2013-06-06 10:22:17.181000',1,18,136,'UNDP/Global Fund Project R4',1,'');
INSERT INTO django_admin_log VALUES(217,'2013-06-06 10:23:41.113000',1,18,137,'UNDP/Global Funds Project/GFR7',1,'');
INSERT INTO django_admin_log VALUES(218,'2013-06-06 10:24:54.534000',1,18,138,'UNDP/Global Fund Project/GF R4',1,'');
INSERT INTO django_admin_log VALUES(219,'2013-06-06 10:26:56.969000',1,18,139,'United Nations Child Education Fund',1,'');
INSERT INTO django_admin_log VALUES(220,'2013-06-06 10:30:29.421000',1,18,140,'Unimed International Limited',1,'');
INSERT INTO django_admin_log VALUES(221,'2013-06-06 12:42:53.719000',1,18,141,'USAID/Deliver Project',1,'');
INSERT INTO django_admin_log VALUES(222,'2013-06-06 12:44:40.255000',1,18,142,'V.L Pharmaceutical Healthnet',1,'');
INSERT INTO django_admin_log VALUES(223,'2013-06-06 12:45:31.600000',1,18,143,'World Health Organisation',1,'');
INSERT INTO django_admin_log VALUES(224,'2013-06-06 12:46:46.981000',1,18,144,'Yash Pharmaceuticals LTD',1,'');
INSERT INTO django_admin_log VALUES(225,'2013-06-06 12:48:06.224000',1,18,145,'Zamjam International LTD',1,'');
INSERT INTO django_admin_log VALUES(226,'2013-06-07 06:12:51.825000',1,25,95,'1800 x Remedica Ltd (CYP) (tamoxifen 20mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(227,'2013-06-07 06:22:12.612000',1,13,38,'sodium chloride 0.9% w/v infusion',3,'');
INSERT INTO django_admin_log VALUES(228,'2013-06-07 08:00:06.091000',1,16,39,'Glenmark Pharmaceuticals (UKN)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(229,'2013-06-07 09:39:24.962000',1,8,39,'MSD - June 2013 @ 2013-06-07 11:39:06+02:00',1,'');
INSERT INTO django_admin_log VALUES(230,'2013-06-07 09:40:34.033000',1,19,2897,'Amitryptiline Tabs - Remedica Ltd (CYP) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(231,'2013-06-07 09:42:15.220000',1,18,146,'Stanley Tanzania LTD',1,'');
INSERT INTO django_admin_log VALUES(232,'2013-06-07 09:42:51.189000',1,18,146,'Stanley Tanzania LTD',2,'Changed email.');
INSERT INTO django_admin_log VALUES(233,'2013-06-07 09:44:18.472000',1,25,2184,'1514 x Amitryptiline Tabs - Remedica Ltd (CYP) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(234,'2013-06-07 09:45:50.333000',1,16,109,'Elys Chemicals Industries Ltd (TZA)',1,'');
INSERT INTO django_admin_log VALUES(235,'2013-06-07 09:46:16.296000',1,17,153,'Nairobi (Elys Chemicals Industries Ltd)',1,'');
INSERT INTO django_admin_log VALUES(236,'2013-06-07 09:46:23.586000',1,19,2898,'Amoxicillin 125mg/5ml suspension - Elys Chemicals Industries Ltd (TZA) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(237,'2013-06-07 09:48:23.017000',1,18,147,'Elys Chemicals Industries Ltd,',1,'');
INSERT INTO django_admin_log VALUES(238,'2013-06-07 09:50:08.371000',1,25,2185,'1514 x Amoxicillin 125mg/5ml suspension - Elys Chemicals Industries Ltd (TZA) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(239,'2013-06-07 09:50:09.952000',1,25,2186,'1514 x Amoxicillin 125mg/5ml suspension - Elys Chemicals Industries Ltd (TZA) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(240,'2013-06-07 09:51:12.824000',1,25,2186,'1514 x Amoxicillin 125mg/5ml suspension - Elys Chemicals Industries Ltd (TZA) (amoxicillin 125mg/5ml susp)',3,'');
INSERT INTO django_admin_log VALUES(241,'2013-06-07 09:53:11.252000',1,16,110,'Keko Pharmaceutical Industries Ltd (TZA)',1,'');
INSERT INTO django_admin_log VALUES(242,'2013-06-07 09:53:57.877000',1,17,154,'Dar es Salaam (Keko Pharmaceutical Industries Ltd)',1,'');
INSERT INTO django_admin_log VALUES(243,'2013-06-07 09:54:02.070000',1,19,2899,'amoxicillin 500mg capsule - Keko Pharmaceutical Industries Ltd (TZA) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(244,'2013-06-07 09:57:18.630000',1,18,148,'Keko Pharmaceutical Industries Ltd,',1,'');
INSERT INTO django_admin_log VALUES(245,'2013-06-07 09:57:59.428000',1,25,2186,'43435 x amoxicillin 500mg capsule - Keko Pharmaceutical Industries Ltd (TZA) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(246,'2013-06-07 10:01:26.896000',1,19,2900,'Captopril 25mg - Keko Pharmaceutical Industries Ltd (TZA) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(247,'2013-06-07 10:05:10.973000',1,25,2185,'1514 x Amoxicillin 125mg/5ml suspension - Elys Chemicals Industries Ltd (TZA) (amoxicillin 125mg/5ml susp)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(248,'2013-06-07 10:10:52.489000',1,25,2187,'11953 x Epsitron - Remedica Ltd (CYP) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(249,'2013-06-07 10:12:12.484000',1,25,2188,'2562 x Medochemie Ltd (CYP) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(250,'2013-06-07 10:13:15.636000',1,17,155,'India (Kopran Ltd)',1,'');
INSERT INTO django_admin_log VALUES(251,'2013-06-07 10:13:24.854000',1,19,2901,'Ceftriaxone 250mg pdr for injection - Kopran Ltd (IND) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(252,'2013-06-07 10:14:54.139000',1,18,149,'Astra Pharma (T) Ltd',1,'');
INSERT INTO django_admin_log VALUES(253,'2013-06-07 10:15:47.740000',1,25,2189,'35177 x Ceftriaxone 250mg pdr for injection - Kopran Ltd (IND) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(254,'2013-06-07 10:19:28.637000',1,28,40,'1 EUR = 0.8065 USD on 2012-07-05',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(255,'2013-06-07 10:19:39.644000',1,28,92,'1 EUR = 0.8065 USD on 2011-01-01',1,'');
INSERT INTO django_admin_log VALUES(256,'2013-06-07 10:23:28.870000',1,25,2188,'2562 x Storilat - Remedica Ltd (CYP) (carbamazepine 200mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(257,'2013-06-07 10:26:35.515000',1,25,2189,'35177 x Ceftriaxone 250mg pdr for injection - Kopran Ltd (IND) (carbamazepine 200mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(258,'2013-06-07 10:30:24.172000',1,19,2901,'Ceftriaxone 250mg pdr for injection - Kopran Ltd (IND) (ceftriaxone 250mg powder for injec)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(259,'2013-06-07 10:33:58.126000',1,25,2188,'2562 x Storilat - Remedica Ltd (CYP) (carbamazepine 200mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(260,'2013-06-07 11:42:38.433000',1,25,2187,'11953 x Epsitron - Remedica Ltd (CYP) (captopril 25mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(261,'2013-06-08 06:25:42.514000',1,23,1,'34343 - ',3,'');
INSERT INTO django_admin_log VALUES(262,'2013-06-08 06:26:25.089000',1,8,40,'Essential Medicine List - May 2013 @ 2013-06-08 08:26:04+02:00',1,'');
INSERT INTO django_admin_log VALUES(263,'2013-06-18 10:03:05.784930',1,8,41,' RECEIPTS 2012 2013.xlsx (CMST) @ 2013-06-18 05:02:46+02:00',1,'');
INSERT INTO django_admin_log VALUES(264,'2013-06-18 10:07:44.533437',1,25,2190,'2500 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(265,'2013-06-18 10:08:41.865661',1,25,2190,'2500 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(266,'2013-06-18 10:09:40.623756',1,25,2190,'2500 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(267,'2013-06-18 10:10:55.250136',1,25,2191,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(268,'2013-06-18 10:11:52.103586',1,25,2190,'2500 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed end_date.');
INSERT INTO django_admin_log VALUES(269,'2013-06-18 10:12:23.546995',1,25,2190,'2500 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed start_date.');
INSERT INTO django_admin_log VALUES(270,'2013-06-18 10:19:29.090869',1,25,2190,'2500 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed start_date and end_date.');
INSERT INTO django_admin_log VALUES(271,'2013-06-18 10:20:51.661291',1,25,2191,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed start_date and end_date.');
INSERT INTO django_admin_log VALUES(272,'2013-06-18 10:22:00.874639',1,25,2192,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(273,'2013-06-18 10:22:58.302659',1,25,2193,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(274,'2013-06-18 10:32:57.850852',1,25,2193,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(275,'2013-06-18 10:33:03.456872',1,25,2192,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(276,'2013-06-18 10:34:28.906154',1,25,2192,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(277,'2013-06-18 10:34:34.716424',1,25,2193,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(278,'2013-06-18 10:36:28.227216',1,25,2193,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(279,'2013-06-18 10:38:17.114490',1,19,2902,'Unknown - Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(280,'2013-06-18 10:40:54.223176',1,18,150,'UNDP/Global Fund Project 7',1,'');
INSERT INTO django_admin_log VALUES(281,'2013-06-18 10:41:47.752664',1,25,2194,'10 x Unknown - Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(282,'2013-06-18 10:48:35.941045',1,25,2194,'10 x Unknown - Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(283,'2013-06-18 10:49:37.739051',1,25,2195,'10 x Unknown - Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(284,'2013-06-18 10:50:59.225713',1,22,98,'150 mg powder for 1ml injection',1,'');
INSERT INTO django_admin_log VALUES(285,'2013-06-18 10:52:32.592049',1,25,2196,'1658 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(286,'2013-06-18 10:53:21.755534',1,25,2197,'1658 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(287,'2013-06-18 10:54:15.875948',1,25,2196,'1658 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',3,'');
INSERT INTO django_admin_log VALUES(288,'2013-06-18 10:56:01.654841',1,25,2198,'1902 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(289,'2013-06-18 10:57:08.252963',1,25,2199,'1196 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(290,'2013-06-18 10:58:26.170363',1,25,2200,'1804 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(291,'2013-06-18 10:59:27.988864',1,25,2201,'876 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(292,'2013-06-18 11:00:51.167386',1,18,151,'UNDP',1,'');
INSERT INTO django_admin_log VALUES(293,'2013-06-18 11:01:31.699322',1,25,2202,'11792 x MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG - Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(294,'2013-06-18 11:08:02.681065',1,8,42,'Tanzanian Visit - 6 June 2013 @ 2013-06-18 06:07:49+02:00',1,'');
INSERT INTO django_admin_log VALUES(295,'2013-06-18 11:09:47.814720',1,9,38,'Saudi Arabia (SAU)',1,'');
INSERT INTO django_admin_log VALUES(296,'2013-06-18 11:09:53.039702',1,16,111,'PSI (SAU)',1,'');
INSERT INTO django_admin_log VALUES(297,'2013-06-18 11:10:03.984928',1,19,2903,'Magnesium sulphate 500mg/ml injection - PSI (SAU) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(298,'2013-06-18 11:11:49.466717',1,18,152,'Vital Supplies Limited',1,'');
INSERT INTO django_admin_log VALUES(299,'2013-06-18 11:12:53.810519',1,25,2203,'3000 x Magnesium sulphate 500mg/ml injection - PSI (SAU) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(300,'2013-06-28 11:14:22.718744',1,13,167,'ferrous salt 200mg, folic acid 0.25mg cap/tab',2,'Changed strength for ingredient "ferrous salt 200mg". Changed strength for ingredient "folic acid 0.25mg".');
INSERT INTO django_admin_log VALUES(301,'2013-06-28 11:15:25.365885',1,15,51,'ferrous salt 200mg, folic acid 0.25mg cap/tab @ 0.0071',1,'');
INSERT INTO django_admin_log VALUES(302,'2013-06-28 11:36:26.313837',1,15,52,'levonorgestrel 0.75mg N/A @ 0.1942',1,'');
INSERT INTO django_admin_log VALUES(303,'2013-06-28 11:58:43.424195',1,25,2195,'10 x Unknown - Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',3,'');
INSERT INTO django_admin_log VALUES(304,'2013-06-28 11:59:01.686748',1,25,2194,'10 x Unknown - Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',3,'');
INSERT INTO django_admin_log VALUES(305,'2013-06-28 12:00:54.594997',1,8,43,'Email exchange with Annie Zulu @ 2013-06-28 07:00:38+02:00',1,'');
INSERT INTO django_admin_log VALUES(306,'2013-06-28 12:01:56.036573',1,25,2204,'1 x Magnesium sulphate 500mg/ml injection - PSI (SAU) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(307,'2013-06-28 12:02:04.859915',1,25,2204,'1 x Magnesium sulphate 500mg/ml injection - PSI (SAU) (magnesium sulphate 500mg/ml injection injection)',2,'Changed start_date and end_date.');
INSERT INTO django_admin_log VALUES(308,'2013-06-28 12:07:34.360655',1,25,2204,'1 x Magnesium sulphate 500mg/ml injection - PSI (SAU) (magnesium sulphate 500mg/ml injection injection)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(309,'2013-06-28 12:25:36.699399',1,25,2203,'3000 x Magnesium sulphate 500mg/ml injection - PSI (SAU) (magnesium sulphate 500mg/ml injection injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(310,'2013-06-28 12:58:29.933630',1,25,2192,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(311,'2013-06-28 12:59:24.863784',1,25,2193,'4000 x OXYTOCIN IV INJ, 10IU/ML 1ML AMP - Unknown (UNK) (oxytocin 10iu/ml injection)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(312,'2013-07-01 07:10:51.418694',1,15,1,'aciclovir 200mg cap/tab @ 0.0428',2,'Changed price.');
INSERT INTO django_admin_log VALUES(313,'2013-07-01 07:12:52.917679',1,15,3,'amitriptyline 25mg cap/tab @ 0.0110',2,'Changed price.');
INSERT INTO django_admin_log VALUES(314,'2013-07-01 07:13:42.587633',1,15,4,'artemether 20mg, lumefantrine 120mg cap/tab @ 0.0766',2,'Changed price.');
INSERT INTO django_admin_log VALUES(315,'2013-07-01 07:15:17.701460',1,15,6,'benzathine penicillin 2.4mu vial @ 0.8936',2,'Changed price.');
INSERT INTO django_admin_log VALUES(316,'2013-07-01 07:15:49.582014',1,15,7,'benzyl penicillin 1.0mu vial @ 0.5325',2,'Changed price.');
INSERT INTO django_admin_log VALUES(317,'2013-07-01 07:16:15.738676',1,15,8,'captopril 25mg cap/tab @ 0.0113',2,'Changed price.');
INSERT INTO django_admin_log VALUES(318,'2013-07-01 07:16:53.974409',1,15,9,'carbamazepine 200mg cap/tab @ 0.0299',2,'Changed price.');
INSERT INTO django_admin_log VALUES(319,'2013-07-01 07:17:33.748144',1,15,10,'ceftriaxone injection 1g vial @ 0.6184',2,'Changed price.');
INSERT INTO django_admin_log VALUES(320,'2013-07-01 07:18:19.706280',1,15,11,'cephalexin 250mg cap/tab @ 0.0466',2,'Changed price.');
INSERT INTO django_admin_log VALUES(321,'2013-07-01 07:19:08.027753',1,15,13,'chloramphenicol 250mg cap/tab @ 0.0190',2,'Changed price.');
INSERT INTO django_admin_log VALUES(322,'2013-07-01 07:19:33.445869',1,15,14,'ciprofloxacin 500mg cap/tab @ 0.0343',2,'Changed price.');
INSERT INTO django_admin_log VALUES(323,'2013-07-01 07:19:54.117369',1,15,17,'diazepam 5mg cap/tab @ 0.0031',2,'Changed price.');
INSERT INTO django_admin_log VALUES(324,'2013-07-01 07:20:22.680036',1,15,18,'diclofenac 50mg cap/tab @ 0.0065',2,'Changed price.');
INSERT INTO django_admin_log VALUES(325,'2013-07-01 07:21:08.220607',1,15,20,'erythromycin 250mg cap/tab @ 0.0396',2,'Changed price.');
INSERT INTO django_admin_log VALUES(326,'2013-07-01 07:21:48.240077',1,15,21,'ferrous salt 200mg, folic acid 0.4mg cap/tab @ 0.0034',2,'Changed price.');
INSERT INTO django_admin_log VALUES(327,'2013-07-01 07:22:06.718208',1,15,22,'glibenclamide 5mg cap/tab @ 0.0039',2,'Changed price.');
INSERT INTO django_admin_log VALUES(328,'2013-07-01 07:22:36.388272',1,15,23,'metronidazole 200-250mg cap/tab @ 0.0061',2,'Changed price.');
INSERT INTO django_admin_log VALUES(329,'2013-07-01 07:23:03.315639',1,15,24,'omeprazole 20mg cap/tab @ 0.0222',2,'Changed price.');
INSERT INTO django_admin_log VALUES(330,'2013-07-01 07:23:39.088818',1,15,25,'oral rehydration salts who formula powder @ 0.1097',2,'Changed price.');
INSERT INTO django_admin_log VALUES(331,'2013-07-01 07:25:27.805379',1,15,27,'paracetamol 125mg/ml syrup/susp @ 0.0026',2,'Changed price.');
INSERT INTO django_admin_log VALUES(332,'2013-07-01 07:26:04.753064',1,15,31,'salbutamol 100mcg/dose inhaler @ 0.0098',2,'Changed price.');
INSERT INTO django_admin_log VALUES(333,'2013-07-01 07:27:05.174393',1,15,33,'pyrimethamine 25mg, sulphadoxine 500mg cap/tab @ 0.1400',2,'Changed price.');
INSERT INTO django_admin_log VALUES(334,'2013-07-01 07:27:32.420131',1,15,34,'tetracycline 1% eye oint @ 0.0686',2,'Changed price.');
INSERT INTO django_admin_log VALUES(335,'2013-07-01 07:27:58.572807',1,15,36,'zinc sulphate 20mg cap/tab @ 0.0334',2,'Changed price.');
INSERT INTO django_admin_log VALUES(336,'2013-07-01 07:28:34.444281',1,15,39,'bleomycin 15iu injection @ 22.0000',2,'Changed price.');
INSERT INTO django_admin_log VALUES(337,'2013-07-01 07:28:59.253239',1,15,41,'ciprofloxacin 250mg cap/tab @ 0.0292',2,'Changed price.');
INSERT INTO django_admin_log VALUES(338,'2013-07-01 07:29:39.102964',1,15,42,'tamoxifen 20mg cap/tab @ 0.0998',2,'Changed price.');
INSERT INTO django_admin_log VALUES(339,'2013-07-01 07:30:13.166315',1,15,43,'lamivudine 150mg, zidovudine 300mg cap/tab @ 0.1714',2,'Changed price.');
INSERT INTO django_admin_log VALUES(340,'2013-07-01 07:31:03.685412',1,15,45,'metronidazole 400-500mg cap/tab @ 0.0154',2,'Changed price.');
INSERT INTO django_admin_log VALUES(341,'2013-07-01 07:31:27.962145',1,15,46,'medroxyprogesteron acetate 150mg/ml injection @ 0.9000',2,'Changed price.');
INSERT INTO django_admin_log VALUES(342,'2013-07-01 07:32:01.354807',1,15,47,'magnesium sulphate 500mg/ml injection injection @ 0.0978',2,'Changed price.');
INSERT INTO django_admin_log VALUES(343,'2013-07-01 07:32:28.163191',1,15,48,'oxytocin 10iu/ml injection @ 0.1755',2,'Changed price.');
INSERT INTO django_admin_log VALUES(344,'2013-07-01 07:33:07.316720',1,15,49,'chloroquine 150mg cap/tab @ 0.0107',2,'Changed price.');
INSERT INTO django_admin_log VALUES(345,'2013-07-01 07:33:29.871033',1,15,50,'amoxicillin 125mg/5ml susp @ 0.0047',2,'Changed price.');
INSERT INTO django_admin_log VALUES(346,'2013-07-01 07:33:55.094779',1,15,51,'ferrous salt 200mg, folic acid 0.25mg cap/tab @ 0.0031',2,'Changed price.');
INSERT INTO django_admin_log VALUES(347,'2013-07-01 07:34:30.358640',1,15,52,'levonorgestrel 0.75mg N/A @ 0.2422',2,'Changed price.');
INSERT INTO django_admin_log VALUES(348,'2013-07-03 12:21:26.598799',1,8,44,'MSH 2012 @ 2013-07-03 07:21:02+02:00',1,'');
INSERT INTO django_admin_log VALUES(349,'2013-07-03 12:23:06.396926',1,25,2205,'1 x Unknown (UNK) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(350,'2013-07-03 12:24:38.786882',1,22,99,'2 ml vial',1,'');
INSERT INTO django_admin_log VALUES(351,'2013-07-03 12:25:54.214953',1,25,2206,'1 x Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(352,'2013-07-09 07:44:06.319355',1,8,45,'Malawi Submission - July 2013 @ 2013-07-09 09:43:48+02:00',1,'');
INSERT INTO django_admin_log VALUES(353,'2013-07-09 07:48:29.590767',1,16,112,'Health Care Pharma PVT LTD (IND)',1,'');
INSERT INTO django_admin_log VALUES(354,'2013-07-09 07:49:03.599769',1,17,156,'Boisar, India (Health Care Pharma PVT LTD)',1,'');
INSERT INTO django_admin_log VALUES(355,'2013-07-09 07:49:10.477229',1,19,2904,'Health Care Pharma PVT LTD (IND) (ferrous salt 200mg, folic acid 0.4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(356,'2013-07-09 07:50:47.807557',1,18,153,'Premiumway International',1,'');
INSERT INTO django_admin_log VALUES(357,'2013-07-09 07:52:09.155618',1,18,153,'Premiumway International',2,'Changed phone.');
INSERT INTO django_admin_log VALUES(358,'2013-07-09 07:58:29.250533',1,25,2207,'1 x Health Care Pharma PVT LTD (IND) (ferrous salt 200mg, folic acid 0.4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(359,'2013-07-09 08:06:46.855551',1,18,154,'UNFPA',1,'');
INSERT INTO django_admin_log VALUES(360,'2013-07-09 08:08:25.476607',1,25,2208,'1 x Gedeon Richter (UNK) (levonorgestrel 0.75mg N/A)',1,'');
INSERT INTO django_admin_log VALUES(361,'2013-07-09 08:10:10.115134',1,25,2208,'1 x Gedeon Richter (UNK) (levonorgestrel 0.75mg N/A)',2,'Changed currency.');
INSERT INTO django_admin_log VALUES(362,'2013-07-09 08:11:05.377695',1,25,2208,'1 x Gedeon Richter (UNK) (levonorgestrel 0.75mg N/A)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(363,'2013-07-09 08:13:58.339783',1,9,39,'China (CHN)',1,'');
INSERT INTO django_admin_log VALUES(364,'2013-07-09 08:14:03.210431',1,16,113,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN)',1,'');
INSERT INTO django_admin_log VALUES(365,'2013-07-09 08:14:42.284886',1,17,157,'China (Ningbo Tisun Medic Biochemic Co. Ltd)',1,'');
INSERT INTO django_admin_log VALUES(366,'2013-07-09 08:15:26.857437',1,19,2905,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(367,'2013-07-09 08:15:28.042898',1,19,2906,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(368,'2013-07-09 09:44:05.352313',1,18,155,'World Wide Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(369,'2013-07-09 09:44:27.449387',1,25,2209,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(370,'2013-07-09 09:45:18.183621',1,19,2907,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(371,'2013-07-09 09:46:50.804860',1,25,2210,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(372,'2013-07-09 09:47:55.108660',1,25,2209,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (magnesium sulphate 500mg/ml injection injection)',2,'Changed start_date and end_date.');
INSERT INTO django_admin_log VALUES(373,'2013-07-09 09:49:06.646233',1,19,2908,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(374,'2013-07-09 09:53:36.875633',1,25,2211,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(375,'2013-07-09 11:22:34.713401',1,16,114,'Alkem Laboratories LTD (IND)',1,'');
INSERT INTO django_admin_log VALUES(376,'2013-07-09 11:23:02.017492',1,16,115,'Arbro Pharmaceutical LTD (IND)',1,'');
INSERT INTO django_admin_log VALUES(377,'2013-07-09 11:26:21.065559',1,16,116,'Arch Chemicals Pvt Ltd (ZAF)',1,'');
INSERT INTO django_admin_log VALUES(378,'2013-07-09 11:26:31.027629',1,16,117,'Arbro Pharmaceutical LTD (IND)',1,'');
INSERT INTO django_admin_log VALUES(379,'2013-07-09 11:27:03.398692',1,16,118,'Arubindo Pharmaceuticals (No Country)',1,'');
INSERT INTO django_admin_log VALUES(380,'2013-07-09 11:27:31.711736',1,16,119,'Astra Lifecare PVT Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(381,'2013-07-09 11:28:14.048882',1,16,118,'Arubindo Pharmaceuticals (IND)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(382,'2013-07-09 11:28:29.710283',1,16,118,'Arubindo Pharmaceuticals (IND)',2,'Changed website.');
INSERT INTO django_admin_log VALUES(383,'2013-07-09 11:29:07.280960',1,16,120,'Balpharma LTD (IND)',1,'');
INSERT INTO django_admin_log VALUES(384,'2013-07-09 11:29:45.128439',1,16,121,'Baroque Pharmaceuticals Pvt Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(385,'2013-07-09 11:30:24.294791',1,16,122,'Be-Tabs Pharmaceuticals (ZAF)',1,'');
INSERT INTO django_admin_log VALUES(386,'2013-07-09 11:30:36.787139',1,16,123,'Claris Lifesciences Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(387,'2013-07-09 11:30:47.898508',1,16,124,'Coral Laboratories (IND)',1,'');
INSERT INTO django_admin_log VALUES(388,'2013-07-09 11:31:09.077758',1,16,125,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN)',1,'');
INSERT INTO django_admin_log VALUES(389,'2013-07-09 11:31:25.631346',1,16,126,'Dawa Limited (KEN)',1,'');
INSERT INTO django_admin_log VALUES(390,'2013-07-09 11:31:41.428902',1,16,127,'Elys Chemicals Industries Ltd (KEN)',1,'');
INSERT INTO django_admin_log VALUES(391,'2013-07-09 11:31:54.296971',1,16,128,'Fourrts (India) Lab. PVT. Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(392,'2013-07-09 11:32:04.748990',1,16,129,'Gracure Pharmaceutical Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(393,'2013-07-09 11:32:54.722820',1,16,130,'Health Life (IND)',1,'');
INSERT INTO django_admin_log VALUES(394,'2013-07-09 11:33:28.362024',1,16,131,'NCPC International Corporation (CHN)',1,'');
INSERT INTO django_admin_log VALUES(395,'2013-07-09 11:33:51.912586',1,16,132,'S. Kant Healthcare Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(396,'2013-07-09 11:34:04.316502',1,16,133,'SADM  Pharmaceutical Ltd (MAW)',1,'');
INSERT INTO django_admin_log VALUES(397,'2013-07-09 11:34:13.761114',1,16,134,'Sinochem Nongbo Ltd (CHN)',1,'');
INSERT INTO django_admin_log VALUES(398,'2013-07-09 11:35:56.194744',1,18,156,'Unicef - Lilongwe',1,'');
INSERT INTO django_admin_log VALUES(399,'2013-07-09 11:36:57.571987',1,18,157,'SADM  Pharmaceutical Ltd',1,'');
INSERT INTO django_admin_log VALUES(400,'2013-07-09 11:37:33.882941',1,18,158,'Intermed Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(401,'2013-07-09 11:38:09.057430',1,18,159,'Tata - Zambia',1,'');
INSERT INTO django_admin_log VALUES(402,'2013-07-09 11:39:09.178145',1,18,160,'Worldwide Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(403,'2013-07-09 11:40:09.742891',1,18,161,'Pharmanova Ltd - Malawi',1,'');
INSERT INTO django_admin_log VALUES(404,'2013-07-09 11:40:41.309773',1,18,162,'Malawi Pharmacies',1,'');
INSERT INTO django_admin_log VALUES(405,'2013-07-09 11:41:19.835197',1,18,163,'Medi World',1,'');
INSERT INTO django_admin_log VALUES(406,'2013-07-09 11:42:14.351621',1,18,164,'Nirma - India',1,'');
INSERT INTO django_admin_log VALUES(407,'2013-07-09 11:43:11.698473',1,18,165,'Astra Pharma - Malawi',1,'');
INSERT INTO django_admin_log VALUES(408,'2013-07-09 11:44:00.518241',1,18,166,'Pharmavet Ltd',1,'');
INSERT INTO django_admin_log VALUES(409,'2013-07-09 11:44:35.437388',1,18,167,'Alkem Laboratories LTD',1,'');
INSERT INTO django_admin_log VALUES(410,'2013-07-09 11:46:33.075670',1,18,168,'Sonali Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(411,'2013-07-09 11:48:33.789904',1,18,169,'Zedpharma Ltd',1,'');
INSERT INTO django_admin_log VALUES(412,'2013-07-09 11:51:11.904210',1,18,170,'Famycare Ltd',1,'');
INSERT INTO django_admin_log VALUES(413,'2013-07-09 11:51:36.307673',1,18,171,'Vital Healthcare Ltd',1,'');
INSERT INTO django_admin_log VALUES(414,'2013-07-09 11:53:46.435496',1,18,172,'Arubindo Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(415,'2013-07-09 11:55:12.979602',1,18,173,'Osaka Pharmaceuticals  Pvt Ltd',1,'');
INSERT INTO django_admin_log VALUES(416,'2013-07-09 11:57:09.969905',1,18,174,'Narula Exports',1,'');
INSERT INTO django_admin_log VALUES(417,'2013-07-09 11:57:44.227006',1,18,175,'Sunrise Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(418,'2013-07-09 11:58:06.803250',1,18,176,'Kentam Pharmaceuticals Ltd',1,'');
INSERT INTO django_admin_log VALUES(419,'2013-07-09 11:58:59.349662',1,18,177,'Dawa Pharmaceticals Ltd',1,'');
INSERT INTO django_admin_log VALUES(420,'2013-07-09 12:00:25.312860',1,18,178,'Unichem - Malawi',1,'');
INSERT INTO django_admin_log VALUES(421,'2013-07-09 12:01:43.036176',1,18,179,'City Pharmacy Ltd',1,'');
INSERT INTO django_admin_log VALUES(422,'2013-07-09 17:30:58.050321',1,17,47,'Adcock Ingram Healthcare Pty Ltd - South Africa (Adcock Ingram Healthcare Pty Ltd)',2,'Changed address.');
INSERT INTO django_admin_log VALUES(423,'2013-07-09 17:31:40.934115',1,19,171,'Adco - Lamivudine and Zidovudine 150/300 - Adcock Ingram Healthcare Pty Ltd (ZAF) (lamivudine 150mg, zidovudine 300mg cap/tab)',2,'Changed manufacturer and site.');
INSERT INTO django_admin_log VALUES(424,'2013-07-09 17:33:08.280167',1,19,143,'Adco Omeprazole 20mg - Laboratorios Liconsa S.A. (ESP) (omeprazole 20mg cap/tab)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(425,'2013-07-09 17:34:04.629860',1,19,101,'Adco-Diclophenac 50 - Pharma-Q (Pty) Ltd (ZAF) (diclofenac 50mg cap/tab)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(426,'2013-07-15 10:41:49.663338',1,19,2909,'Sinochem Nongbo Ltd (CHN) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(427,'2013-07-15 10:43:22.635753',1,25,2212,'1 x Sinochem Nongbo Ltd (CHN) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(428,'2013-07-15 10:44:09.002257',1,19,2910,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(429,'2013-07-15 10:45:29.273896',1,25,2213,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(430,'2013-07-15 10:46:18.242897',1,19,2911,'MicroLab (UNK) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(431,'2013-07-15 10:47:09.518121',1,25,2214,'1 x MicroLab (UNK) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(432,'2013-07-15 10:48:19.381392',1,25,2215,'1 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(433,'2013-07-15 10:48:57.119409',1,19,2912,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(434,'2013-07-15 10:50:21.524554',1,25,2216,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(435,'2013-07-15 12:14:50.857815',1,25,2216,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (benzathine penicillin 2.4mu vial)',2,'Changed start_date and end_date.');
INSERT INTO django_admin_log VALUES(436,'2013-07-15 12:16:31.144074',1,19,2913,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (benzyl penicillin 1.0mu vial)',1,'');
INSERT INTO django_admin_log VALUES(437,'2013-07-15 12:19:33.488200',1,19,2914,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (benzyl penicillin 1.0mu vial)',1,'');
INSERT INTO django_admin_log VALUES(438,'2013-07-15 12:20:04.248570',1,25,2217,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (benzyl penicillin 1.0mu vial)',1,'');
INSERT INTO django_admin_log VALUES(439,'2013-07-16 08:52:30.848765',1,19,2915,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(440,'2013-07-16 08:53:11.792886',1,25,2218,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(441,'2013-07-16 08:54:39.576513',1,25,2217,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (benzyl penicillin 1.0mu vial)',2,'Changed supplier.');
INSERT INTO django_admin_log VALUES(442,'2013-07-16 08:54:45.061513',1,18,160,'Worldwide Pharmaceuticals',3,'');
INSERT INTO django_admin_log VALUES(443,'2013-07-16 08:55:27.918529',1,19,2916,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(444,'2013-07-16 08:56:02.971621',1,25,2219,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(445,'2013-07-16 08:56:35.335261',1,19,2917,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(446,'2013-07-16 08:57:16.662824',1,25,2220,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(447,'2013-07-16 08:59:37.461893',1,17,158,'India (Gracure Pharmaceutical Ltd)',1,'');
INSERT INTO django_admin_log VALUES(448,'2013-07-16 08:59:40.992870',1,19,2918,'Gracure Pharmaceutical Ltd (IND) (cephalexin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(449,'2013-07-16 09:00:10.879840',1,25,2221,'1 x Gracure Pharmaceutical Ltd (IND) (cephalexin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(450,'2013-07-16 09:00:46.111827',1,17,159,'China (CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd)',1,'');
INSERT INTO django_admin_log VALUES(451,'2013-07-16 09:00:56.084849',1,19,2919,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (chloramphenicol 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(452,'2013-07-16 09:01:58.454146',1,18,180,'Emles',1,'');
INSERT INTO django_admin_log VALUES(453,'2013-07-16 09:02:22.943311',1,25,2222,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (chloramphenicol 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(454,'2013-07-16 09:03:03.766268',1,19,2920,'Elys Chemicals Industries Ltd (KEN) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(455,'2013-07-16 09:04:05.527780',1,17,160,'India (Gracure Pharmaceutical Ltd)',1,'');
INSERT INTO django_admin_log VALUES(456,'2013-07-16 09:04:08.471064',1,19,2921,'Gracure Pharmaceutical Ltd (IND) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(457,'2013-07-16 09:04:34.966625',1,25,2223,'1 x Gracure Pharmaceutical Ltd (IND) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(458,'2013-07-16 09:05:19.746862',1,17,161,'China (CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd)',1,'');
INSERT INTO django_admin_log VALUES(459,'2013-07-16 09:05:22.922690',1,19,2922,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(460,'2013-07-16 09:06:01.356143',1,25,2224,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(461,'2013-07-16 09:06:52.243918',1,17,162,'India (S. Kant Healthcare Ltd)',1,'');
INSERT INTO django_admin_log VALUES(462,'2013-07-16 09:06:55.834757',1,19,2923,'S. Kant Healthcare Ltd (IND) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(463,'2013-07-16 09:07:33.057168',1,25,2225,'1 x S. Kant Healthcare Ltd (IND) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(464,'2013-07-16 09:08:42.022606',1,17,163,'Malawi (SADM  Pharmaceutical Ltd)',1,'');
INSERT INTO django_admin_log VALUES(465,'2013-07-16 09:08:44.735751',1,19,2924,'SADM  Pharmaceutical Ltd (MAW) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(466,'2013-07-16 09:09:18.810452',1,25,2226,'1 x SADM  Pharmaceutical Ltd (MAW) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(467,'2013-07-16 09:10:05.303122',1,17,164,'India (S. Kant Healthcare Ltd)',1,'');
INSERT INTO django_admin_log VALUES(468,'2013-07-16 09:10:54.192394',1,19,2925,'S. Kant Healthcare Ltd (IND) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(469,'2013-07-16 09:11:36.330674',1,25,2227,'1 x S. Kant Healthcare Ltd (IND) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(470,'2013-07-16 09:13:03.718826',1,17,165,'India (S. Kant Healthcare Ltd)',1,'');
INSERT INTO django_admin_log VALUES(471,'2013-07-16 09:13:09.587285',1,19,2926,'S. Kant Healthcare Ltd (IND) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(472,'2013-07-16 09:13:55.100059',1,25,2228,'1 x S. Kant Healthcare Ltd (IND) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(473,'2013-07-16 09:15:15.092779',1,19,2927,'Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(474,'2013-07-16 09:15:54.119631',1,25,2229,'1 x Ningbo Tisun Medic Biochemic Co. Ltd (CHN) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(475,'2013-07-16 09:16:31.606935',1,17,166,'Kenya (Dawa Limited)',1,'');
INSERT INTO django_admin_log VALUES(476,'2013-07-16 09:16:34.611177',1,19,2928,'Dawa Limited (KEN) (paracetamol 125mg/ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(477,'2013-07-16 09:17:10.368993',1,25,2230,'1 x Dawa Limited (KEN) (paracetamol 125mg/ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(478,'2013-07-16 09:17:59.874811',1,16,135,'Laboralorio Aldo-Union (ESP)',1,'');
INSERT INTO django_admin_log VALUES(479,'2013-07-16 09:18:47.322511',1,19,2929,'Laboralorio Aldo-Union (ESP) (salbutamol 100mcg/dose inhaler)',1,'');
INSERT INTO django_admin_log VALUES(480,'2013-07-16 09:19:40.950989',1,17,167,'Spain (Laboralorio Aldo-Union)',1,'');
INSERT INTO django_admin_log VALUES(481,'2013-07-16 09:23:25.671815',1,17,168,'India (Fourrts (India) Lab. PVT. Ltd)',1,'');
INSERT INTO django_admin_log VALUES(482,'2013-07-16 09:23:28.356820',1,19,2930,'Fourrts (India) Lab. PVT. Ltd (IND) (pyrimethamine 25mg, sulphadoxine 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(483,'2013-07-16 09:24:08.600709',1,25,2231,'1 x Fourrts (India) Lab. PVT. Ltd (IND) (pyrimethamine 25mg, sulphadoxine 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(484,'2013-07-16 09:24:42.238744',1,17,169,'China (Sinochem Nongbo Ltd)',1,'');
INSERT INTO django_admin_log VALUES(485,'2013-07-16 09:24:55.640303',1,19,2931,'Sinochem Nongbo Ltd (CHN) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(486,'2013-07-16 09:25:59.619704',1,25,2232,'1 x Sinochem Nongbo Ltd (CHN) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(487,'2013-07-16 09:26:39.934858',1,17,170,'China (Sinochem Nongbo Ltd)',1,'');
INSERT INTO django_admin_log VALUES(488,'2013-07-16 09:26:42.624984',1,19,2932,'Sinochem Nongbo Ltd (CHN) (zinc sulphate 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(489,'2013-07-16 09:27:17.236192',1,25,2233,'1 x Sinochem Nongbo Ltd (CHN) (zinc sulphate 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(490,'2013-07-16 09:28:44.962836',1,17,171,'China (CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd)',1,'');
INSERT INTO django_admin_log VALUES(491,'2013-07-16 09:28:49.679006',1,19,2933,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (ceftriaxone 250mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(492,'2013-07-16 09:37:02.430417',1,25,2234,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (ceftriaxone 250mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(493,'2013-07-16 09:37:57.535821',1,17,172,'Malawi (SADM  Pharmaceutical Ltd)',1,'');
INSERT INTO django_admin_log VALUES(494,'2013-07-16 09:38:08.797101',1,19,2934,'SADM  Pharmaceutical Ltd (MAW) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(495,'2013-07-16 10:25:33.329162',1,25,2235,'1 x SADM  Pharmaceutical Ltd (MAW) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(496,'2013-07-16 10:41:53.467779',1,15,53,'co-trimoxazole 240mg/5ml syrup/susp @ 0.0046',1,'');
INSERT INTO django_admin_log VALUES(497,'2013-07-16 10:50:13.254632',1,19,2935,'Elys Chemicals Industries Ltd (KEN) (nystatin 100,000iu pessary)',1,'');
INSERT INTO django_admin_log VALUES(498,'2013-07-16 10:50:57.160339',1,25,2236,'1 x Elys Chemicals Industries Ltd (KEN) (nystatin 100,000iu pessary)',1,'');
INSERT INTO django_admin_log VALUES(499,'2013-07-16 10:52:44.000730',1,25,2237,'1 x Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(500,'2013-07-16 10:53:30.267232',1,19,2936,'Hetero Drugs Limited (IND) (chloropheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(501,'2013-07-16 10:54:13.637910',1,25,2238,'1 x Hetero Drugs Limited (IND) (chloropheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(502,'2013-07-16 13:14:58.331537',1,16,136,'Universal Corporation (No Country)',1,'');
INSERT INTO django_admin_log VALUES(503,'2013-07-16 13:15:12.014364',1,19,2937,'Universal Corporation (No Country) (chloroquine 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(504,'2013-07-16 13:21:51.232550',1,25,2235,'1 x SADM  Pharmaceutical Ltd (MAW) (co-trimoxazole 240mg/5ml syrup/susp)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(505,'2013-07-16 13:30:16.306841',1,16,136,'Universal Corporation (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(506,'2013-07-16 13:32:39.942999',1,16,137,'Tonghua Dongbao Pharmaceutical Co. Ltd (UNK)',1,'');
INSERT INTO django_admin_log VALUES(507,'2013-07-16 13:33:22.001252',1,19,2938,'Tonghua Dongbao Pharmaceutical Co. Ltd (UNK) (insulin isophane 100 iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(508,'2013-07-16 13:35:22.097683',1,25,2239,'1 x Tonghua Dongbao Pharmaceutical Co. Ltd (UNK) (insulin isophane 100 iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(509,'2013-07-16 13:36:30.904191',1,15,54,'insulin isophane 100 iu/ml injection @ 0.4800',1,'');
INSERT INTO django_admin_log VALUES(510,'2013-07-16 13:38:27.776131',1,19,2939,'Unknown (UNK) (lamivudine 30mg, nevirapine 50mg, stavudine 6mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(511,'2013-07-16 13:39:10.149176',1,25,2240,'1 x Unknown (UNK) (lamivudine 30mg, nevirapine 50mg, stavudine 6mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(512,'2013-07-16 13:44:39.745247',1,15,55,'lamivudine 30mg, nevirapine 50mg, stavudine 6mg dispersible tab @ 0.0553',1,'');
INSERT INTO django_admin_log VALUES(513,'2013-07-16 13:47:46.727074',1,17,173,'Kenya (Universal Corporation)',1,'');
INSERT INTO django_admin_log VALUES(514,'2013-07-16 13:48:16.519069',1,19,2940,'Universal Corporation (UNK) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(515,'2013-07-16 13:48:56.662273',1,25,2241,'1 x Universal Corporation (UNK) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(516,'2013-07-16 13:50:02.476750',1,15,56,'metformin 500mg cap/tab @ 0.0280',1,'');
INSERT INTO django_admin_log VALUES(517,'2013-07-16 13:52:00.987876',1,25,2242,'1 x Dawa Limited (KEN) (paracetamol 125mg/ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(518,'2013-07-16 13:55:52.233705',1,25,2242,'1 x Dawa Limited (KEN) (paracetamol 125mg/ml syrup/susp)',3,'');
INSERT INTO django_admin_log VALUES(519,'2013-07-16 13:56:22.982029',1,19,2928,'Dawa Limited (KEN) (paracetamol 120mg/5ml suspension)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(520,'2013-07-16 13:58:02.731502',1,15,57,'paracetamol 120mg/5ml suspension @ 0.0026',1,'');
INSERT INTO django_admin_log VALUES(521,'2013-07-16 14:00:24.492212',1,18,181,'Global Fund',1,'');
INSERT INTO django_admin_log VALUES(522,'2013-07-16 14:00:52.324036',1,25,2242,'1 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, rifampicin 60mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(523,'2013-07-16 14:02:40.871588',1,15,58,'isoniazid 30mg, rifampicin 60mg tablets @ 0.0185',1,'');
INSERT INTO django_admin_log VALUES(524,'2013-07-16 14:05:30.097706',1,25,2243,'1 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(525,'2013-07-16 14:07:33.986514',1,15,59,'isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab @ 0.0235',1,'');
INSERT INTO django_admin_log VALUES(526,'2013-07-16 14:10:34.031448',1,17,174,'China (NCPC International Corporation)',1,'');
INSERT INTO django_admin_log VALUES(527,'2013-07-16 14:10:38.188429',1,19,2941,'NCPC International Corporation (CHN) (sodium valproate 200mg/5ml syrup)',1,'');
INSERT INTO django_admin_log VALUES(528,'2013-07-16 14:11:31.752090',1,25,2244,'1 x NCPC International Corporation (CHN) (sodium valproate 200mg/5ml syrup)',1,'');
INSERT INTO django_admin_log VALUES(529,'2013-07-16 14:14:24.512941',1,19,2942,'SADM  Pharmaceutical Ltd (MAW) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(530,'2013-07-16 14:14:57.254623',1,25,2245,'1 x SADM  Pharmaceutical Ltd (MAW) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(531,'2013-07-16 14:16:00.010496',1,15,60,'co-trimoxazole 480mg cap/tab @ 0.0129',1,'');
INSERT INTO django_admin_log VALUES(532,'2013-07-16 14:17:27.887890',1,19,2943,'Dawa Limited (KEN) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(533,'2013-07-16 14:18:29.221376',1,25,2246,'1 x Dawa Limited (KEN) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(534,'2013-07-16 14:20:03.865277',1,19,2944,'NCPC International Corporation (CHN) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(535,'2013-07-16 14:20:40.052761',1,25,2247,'1 x NCPC International Corporation (CHN) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(536,'2013-07-16 14:22:34.616135',1,15,61,'amoxicillin 250mg cap/tab @ 0.0218',1,'');
INSERT INTO django_admin_log VALUES(537,'2013-07-16 14:23:46.799577',1,19,2945,'Sinochem Nongbo Ltd (CHN) (ciprofloxacin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(538,'2013-07-16 14:24:25.845235',1,25,2248,'1 x Sinochem Nongbo Ltd (CHN) (ciprofloxacin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(539,'2013-07-16 14:25:24.205556',1,19,2946,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(540,'2013-07-16 14:25:58.763800',1,25,2249,'1 x CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(541,'2013-07-16 14:28:10.118915',1,15,62,'amoxicillin 500mg cap/tab @ 0.0305',1,'');
INSERT INTO django_admin_log VALUES(542,'2013-07-16 14:28:55.043332',1,15,61,'amoxicillin 250mg cap/tab @ 0.0188',2,'Changed price.');
INSERT INTO django_admin_log VALUES(543,'2013-07-16 14:29:51.276368',1,15,63,'diclofenac 25mg cap/tab @ 0.0063',1,'');
INSERT INTO django_admin_log VALUES(544,'2013-07-16 14:31:37.448752',1,19,2947,'Sinochem Nongbo Ltd (CHN) (ferrous salt 200mg, folic acid 0.25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(545,'2013-07-16 14:32:19.632512',1,25,2250,'1 x Sinochem Nongbo Ltd (CHN) (ferrous salt 200mg, folic acid 0.25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(546,'2013-07-16 14:33:41.511417',1,19,2948,'Sinochem Nongbo Ltd (CHN) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(547,'2013-07-16 14:34:30.783403',1,25,2251,'1 x Sinochem Nongbo Ltd (CHN) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(548,'2013-07-16 14:35:35.824902',1,15,64,'benzyl penicillin 5.0 mu vial vial @ 0.4200',1,'');
INSERT INTO django_admin_log VALUES(549,'2013-07-16 14:36:51.452856',1,19,2949,'Dawa Limited (KEN) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(550,'2013-07-16 14:37:43.344512',1,25,2252,'1 x Dawa Limited (KEN) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(551,'2013-07-16 18:29:53.869537',1,19,2950,'SADM  Pharmaceutical Ltd (MAW) (metronidazole 400-500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(552,'2013-07-16 18:33:21.381003',1,25,2253,'1 x SADM  Pharmaceutical Ltd (MAW) (metronidazole 400-500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(553,'2013-07-16 18:35:02.038155',1,17,175,'India (Lincoln Pharmaceuticals Ltd)',1,'');
INSERT INTO django_admin_log VALUES(554,'2013-07-16 18:35:08.791648',1,19,2951,'Lincoln Pharmaceuticals Ltd (IND) (amitriptyline 10mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(555,'2013-07-16 18:35:48.939906',1,25,2254,'1 x Lincoln Pharmaceuticals Ltd (IND) (amitriptyline 10mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(556,'2013-07-16 18:38:04.349803',1,15,65,'amitriptyline 10mg cap/tab @ 0.0294',1,'');
INSERT INTO django_admin_log VALUES(557,'2013-07-16 18:47:48.604520',1,19,2952,'Sinochem Nongbo Ltd (CHN) (carbamazepine 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(558,'2013-07-16 18:48:35.132808',1,25,2255,'1 x Sinochem Nongbo Ltd (CHN) (carbamazepine 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(559,'2013-07-16 18:49:54.523933',1,15,66,'carbamazepine 400mg cap/tab @ 0.1450',1,'');
INSERT INTO django_admin_log VALUES(560,'2013-07-16 18:51:13.148244',1,19,2953,'Macleods Pharmaceuticals Limited (IND) (isoniazid 75mg, rifampicin 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(561,'2013-07-16 18:51:56.106498',1,25,2256,'1 x Macleods Pharmaceuticals Limited (IND) (isoniazid 75mg, rifampicin 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(562,'2013-07-16 18:53:33.981086',1,15,67,'isoniazid 75mg, rifampicin 150mg cap/tab @ 0.4490',1,'');
INSERT INTO django_admin_log VALUES(563,'2013-07-16 18:55:30.532139',1,15,67,'isoniazid 75mg, rifampicin 150mg cap/tab @ 0.0449',2,'Changed price.');
INSERT INTO django_admin_log VALUES(564,'2013-07-16 18:56:43.243412',1,19,2954,'S. Kant Healthcare Ltd (IND) (omeprazole 10mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(565,'2013-07-16 19:00:04.776039',1,19,2955,'Unknown (UNK) (nevirapine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(566,'2013-07-17 15:33:40.605019',1,16,138,'Novartis - US (USA)',1,'');
INSERT INTO django_admin_log VALUES(567,'2013-07-17 15:33:56.191841',1,17,176,'USA (Novartis - US)',1,'');
INSERT INTO django_admin_log VALUES(568,'2013-07-17 15:33:59.164577',1,19,2956,'Artementer Lumefantrine - Novartis - US (USA) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(569,'2013-07-17 15:34:20.875616',1,22,100,'360 tablet box',1,'');
INSERT INTO django_admin_log VALUES(570,'2013-07-17 15:35:58.652605',1,18,182,'Novartis Pharma AG',1,'');
INSERT INTO django_admin_log VALUES(571,'2013-07-17 15:37:28.921999',1,25,2257,'64307 x Artementer Lumefantrine - Novartis - US (USA) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(572,'2013-07-17 15:38:06.719644',1,22,101,'180 tablet box',1,'');
INSERT INTO django_admin_log VALUES(573,'2013-07-17 15:38:42.155740',1,25,2258,'138784 x Artementer Lumefantrine - Novartis - US (USA) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(574,'2013-07-17 15:40:32.337557',1,16,139,'Ajanta (IND)',1,'');
INSERT INTO django_admin_log VALUES(575,'2013-07-17 15:41:17.350770',1,17,177,'Ajanta House (Ajanta)',1,'');
INSERT INTO django_admin_log VALUES(576,'2013-07-17 15:41:19.887019',1,19,2957,'Ajanta (IND) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(577,'2013-07-17 15:41:51.463175',1,22,102,'540 tablet box',1,'');
INSERT INTO django_admin_log VALUES(578,'2013-07-17 15:43:33.845292',1,18,183,'Ajanta Pharma (India) Ltd',1,'');
INSERT INTO django_admin_log VALUES(579,'2013-07-17 15:46:54.922974',1,17,178,'Devika Towere, New Delhi (Ranbaxy)',1,'');
INSERT INTO django_admin_log VALUES(580,'2013-07-17 15:46:58.671242',1,19,2958,'Duovir - Ranbaxy (IND) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(581,'2013-07-17 15:48:36.614438',1,22,103,'60 tablet tin',1,'');
INSERT INTO django_admin_log VALUES(582,'2013-07-17 15:48:40.544682',1,25,2259,'406260 x Duovir - Ranbaxy (IND) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(583,'2013-07-17 15:51:22.044110',1,16,140,'Famycare Ltd (IND)',1,'');
INSERT INTO django_admin_log VALUES(584,'2013-07-17 15:51:57.719350',1,17,179,'Mumbai, India (Famycare Ltd)',1,'');
INSERT INTO django_admin_log VALUES(585,'2013-07-17 15:52:00.194864',1,19,2959,'Depoprovera - Famycare Ltd (IND) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(586,'2013-07-17 15:52:45.941286',1,22,104,'1 Kit Kit',1,'');
INSERT INTO django_admin_log VALUES(587,'2013-07-17 15:53:44.217789',1,25,2260,'3696 x Depoprovera - Famycare Ltd (IND) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(588,'2013-07-17 15:56:25.166898',1,25,2260,'3696 x Depoprovera - Famycare Ltd (IND) (medroxyprogesteron acetate 150mg/ml injection)',3,'');
INSERT INTO django_admin_log VALUES(589,'2013-08-01 11:23:46.850379',1,13,188,'aciclovir 400mg cap/tab',3,'');
INSERT INTO django_admin_log VALUES(590,'2013-08-01 11:26:55.942030',1,25,2260,'6928 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(591,'2013-08-01 11:28:39.293993',1,25,2261,'6299 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(592,'2013-08-01 11:30:17.067221',1,25,2262,'8105 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(593,'2013-08-01 13:18:02.758217',1,18,137,'UNDP/Global Funds Project/GFR7',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(594,'2013-08-01 13:18:20.010518',1,18,184,'UNDP/GFR10',1,'');
INSERT INTO django_admin_log VALUES(595,'2013-08-01 13:27:12.231195',1,25,2260,'6928 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed packsize, price and currency.');
INSERT INTO django_admin_log VALUES(596,'2013-08-01 13:28:02.473162',1,25,2260,'6928 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed packsize.');
INSERT INTO django_admin_log VALUES(597,'2013-08-01 13:28:54.951560',1,25,2260,'6928 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(598,'2013-08-01 13:29:46.700786',1,25,2261,'6299 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price and currency.');
INSERT INTO django_admin_log VALUES(599,'2013-08-01 13:30:10.708514',1,25,2262,'8105 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price and currency.');
INSERT INTO django_admin_log VALUES(600,'2013-08-01 13:52:14.508808',1,25,2275,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(601,'2013-08-01 13:54:35.310931',1,25,2288,'2816 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(602,'2013-08-01 13:56:05.947404',1,25,2328,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(603,'2013-08-01 13:56:39.964538',1,25,2327,'10440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(604,'2013-08-01 13:57:17.203979',1,25,2267,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(605,'2013-08-01 13:57:43.796737',1,25,2275,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(606,'2013-08-01 13:58:20.631985',1,25,2295,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(607,'2013-08-01 13:58:45.739295',1,25,2268,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(608,'2013-08-01 14:00:20.298841',1,25,2275,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(609,'2013-08-01 14:04:18.652501',1,25,2320,'6750 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(610,'2013-08-01 18:54:19.623951',1,25,2260,'6928 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(611,'2013-08-01 18:54:19.896137',1,25,2261,'6299 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(612,'2013-08-01 18:54:20.063376',1,25,2262,'8105 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(613,'2013-08-01 18:54:20.288807',1,25,2263,'3255 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(614,'2013-08-01 18:54:20.506567',1,25,2264,'7430 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(615,'2013-08-01 18:54:20.649111',1,25,2265,'7416 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(616,'2013-08-01 18:54:20.841463',1,25,2266,'3255 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(617,'2013-08-01 18:54:20.992119',1,25,2267,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(618,'2013-08-01 18:54:21.134429',1,25,2268,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(619,'2013-08-01 18:54:21.276757',1,25,2269,'7200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(620,'2013-08-01 18:54:21.410714',1,25,2270,'15 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(621,'2013-08-01 18:54:21.553032',1,25,2271,'690 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(622,'2013-08-01 18:54:21.728810',1,25,2272,'7201 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(623,'2013-08-01 18:54:21.879410',1,25,2273,'2192 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(624,'2013-08-01 18:54:22.030093',1,25,2274,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(625,'2013-08-01 18:54:22.189036',1,25,2275,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(626,'2013-08-01 18:54:22.340142',1,25,2276,'3519 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(627,'2013-08-01 18:54:22.499221',1,25,2277,'3683 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(628,'2013-08-01 18:54:22.666538',1,25,2278,'5313 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(629,'2013-08-01 18:54:22.817213',1,25,2279,'4458 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(630,'2013-08-01 18:54:22.959536',1,25,2280,'3025 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(631,'2013-08-01 18:54:23.118559',1,25,2281,'1776 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(632,'2013-08-01 18:54:23.297882',1,25,2282,'928 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(633,'2013-08-01 18:54:23.457017',1,25,2283,'848 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(634,'2013-08-01 18:54:23.607664',1,25,2284,'1870 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(635,'2013-08-01 18:54:23.750128',1,25,2285,'6720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(636,'2013-08-01 18:54:23.884131',1,25,2286,'4800 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(637,'2013-08-01 18:54:24.026546',1,25,2287,'17849 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(638,'2013-08-01 18:54:24.185529',1,25,2288,'2816 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(639,'2013-08-01 18:54:24.336272',1,25,2289,'13860 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(640,'2013-08-01 18:54:24.495382',1,25,2290,'485 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(641,'2013-08-01 18:54:24.637798',1,25,2291,'22 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(642,'2013-08-01 18:54:24.788916',1,25,2292,'26460 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(643,'2013-08-01 18:54:24.939605',1,25,2293,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(644,'2013-08-01 18:54:25.090270',1,25,2294,'208 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(645,'2013-08-01 18:54:25.240970',1,25,2295,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(646,'2013-08-01 18:54:25.391771',1,25,2296,'168 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(647,'2013-08-01 18:54:25.550852',1,25,2297,'11523 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(648,'2013-08-01 18:54:25.693273',1,25,2298,'11523 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(649,'2013-08-01 18:54:25.844013',1,25,2299,'5024 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(650,'2013-08-01 18:54:25.994736',1,25,2300,'10570 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(651,'2013-08-01 18:54:26.137095',1,25,2301,'12450 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(652,'2013-08-01 18:54:26.296174',1,25,2302,'4960 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(653,'2013-08-01 18:54:26.438949',1,25,2303,'3134 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(654,'2013-08-01 18:54:26.598116',1,25,2304,'3200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(655,'2013-08-01 18:54:26.752893',1,25,2305,'5200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(656,'2013-08-01 18:54:26.903661',1,25,2306,'25269 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(657,'2013-08-01 18:54:27.046061',1,25,2307,'10009 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(658,'2013-08-01 18:54:27.188860',1,25,2308,'28013 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(659,'2013-08-01 18:54:27.331223',1,25,2309,'10909 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(660,'2013-08-01 18:54:27.481989',1,25,2310,'8034 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(661,'2013-08-01 18:54:27.624338',1,25,2311,'9753 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(662,'2013-08-01 18:54:27.791781',1,25,2312,'6024 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(663,'2013-08-01 18:54:27.959078',1,25,2313,'3600 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(664,'2013-08-01 18:54:28.108023',1,25,2314,'8675 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(665,'2013-08-01 18:54:28.352562',1,25,2315,'14017 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(666,'2013-08-01 18:54:28.518845',1,25,2316,'2920 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(667,'2013-08-01 18:54:28.687439',1,25,2317,'15313 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(668,'2013-08-01 18:54:28.838639',1,25,2318,'16237 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(669,'2013-08-01 18:54:28.988825',1,25,2319,'13460 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(670,'2013-08-01 18:54:29.164366',1,25,2320,'6750 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(671,'2013-08-01 18:54:29.315080',1,25,2321,'6750 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(672,'2013-08-01 18:54:29.449093',1,25,2322,'7224 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(673,'2013-08-01 18:54:29.599830',1,25,2323,'6120 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(674,'2013-08-01 18:54:29.767123',1,25,2324,'6120 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(675,'2013-08-01 18:54:29.926088',1,25,2325,'33240 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(676,'2013-08-01 18:54:30.060144',1,25,2326,'10016 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(677,'2013-08-01 18:54:30.219119',1,25,2327,'10440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(678,'2013-08-01 18:54:30.390844',1,25,2328,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(679,'2013-08-01 18:54:30.531793',1,25,2329,'10451 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(680,'2013-08-01 18:54:30.676009',1,25,2330,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(681,'2013-08-01 18:54:30.867157',1,25,2331,'10435 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(682,'2013-08-01 18:54:31.043695',1,25,2332,'11171 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(683,'2013-08-01 18:54:31.186106',1,25,2333,'4830 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(684,'2013-08-01 18:54:31.336873',1,25,2334,'6105 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(685,'2013-08-01 18:54:31.479431',1,25,2335,'32415 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(686,'2013-08-01 18:54:31.654972',1,25,2336,'285 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(687,'2013-08-01 18:54:31.814324',1,25,2337,'45 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(688,'2013-08-01 18:54:31.973427',1,25,2338,'210 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(689,'2013-08-01 18:54:32.115789',1,25,2339,'14535 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(690,'2013-08-01 21:02:41.855567',1,25,2260,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(691,'2013-08-01 21:02:42.198538',1,25,2261,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(692,'2013-08-01 21:02:42.406310',1,25,2262,'7200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(693,'2013-08-01 21:02:42.573729',1,25,2263,'15 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(694,'2013-08-01 21:02:42.745193',1,25,2264,'690 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(695,'2013-08-01 21:02:42.920934',1,25,2265,'7201 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(696,'2013-08-01 21:02:43.104914',1,25,2266,'2192 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(697,'2013-08-01 21:02:43.288847',1,25,2267,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(698,'2013-08-01 21:02:43.447843',1,25,2268,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(699,'2013-08-01 21:02:43.620291',1,25,2269,'2816 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(700,'2013-08-01 21:02:43.791194',1,25,2270,'13860 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(701,'2013-08-01 21:02:43.950195',1,25,2271,'485 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(702,'2013-08-01 21:02:44.109272',1,25,2272,'22 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(703,'2013-08-01 21:02:44.351553',1,25,2273,'26460 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(704,'2013-08-01 21:02:44.527206',1,25,2274,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(705,'2013-08-01 21:02:44.686200',1,25,2275,'208 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(706,'2013-08-01 21:02:44.836915',1,25,2276,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(707,'2013-08-01 21:02:45.004178',1,25,2277,'10009 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(708,'2013-08-01 21:02:45.171532',1,25,2278,'28013 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(709,'2013-08-01 21:02:45.355524',1,25,2279,'10909 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(710,'2013-08-01 21:02:45.514921',1,25,2280,'8034 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(711,'2013-08-01 21:02:45.690605',1,25,2281,'10440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(712,'2013-08-01 21:02:45.924607',1,25,2282,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(713,'2013-08-01 21:02:46.100177',1,25,2283,'10451 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(714,'2013-08-01 21:02:46.287311',1,25,2284,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(715,'2013-08-01 21:02:46.446317',1,25,2285,'10435 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(716,'2013-08-01 21:02:46.596993',1,25,2286,'11171 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(717,'2013-08-01 21:02:46.781029',1,25,2287,'4830 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(718,'2013-08-01 21:02:46.932213',1,25,2288,'6105 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(719,'2013-08-01 21:02:47.099614',1,25,2289,'32415 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(720,'2013-08-01 21:02:47.267065',1,25,2290,'285 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(721,'2013-08-01 21:02:47.483799',1,25,2291,'45 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(722,'2013-08-01 21:02:47.684614',1,25,2292,'210 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(723,'2013-08-01 21:02:47.868657',1,25,2293,'14535 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(724,'2013-08-01 21:18:01.587348',1,25,2260,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(725,'2013-08-01 21:18:01.852768',1,25,2261,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(726,'2013-08-01 21:18:02.027132',1,25,2262,'7200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(727,'2013-08-01 21:18:02.181727',1,25,2263,'15 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(728,'2013-08-01 21:18:02.337062',1,25,2264,'690 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(729,'2013-08-01 21:18:02.508169',1,25,2265,'7201 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(730,'2013-08-01 21:18:02.700577',1,25,2266,'2192 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(731,'2013-08-01 21:18:02.856139',1,25,2267,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(732,'2013-08-01 21:18:03.007877',1,25,2268,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(733,'2013-08-01 21:18:03.175268',1,25,2269,'2816 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(734,'2013-08-01 21:18:03.342663',1,25,2270,'13860 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(735,'2013-08-01 21:18:03.506586',1,25,2271,'485 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(736,'2013-08-01 21:18:03.661106',1,25,2272,'22 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(737,'2013-08-01 21:18:03.849745',1,25,2273,'26460 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(738,'2013-08-01 21:18:04.033807',1,25,2274,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(739,'2013-08-01 21:18:04.176163',1,25,2275,'208 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(740,'2013-08-01 21:18:04.343584',1,25,2276,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(741,'2013-08-01 21:18:04.498109',1,25,2277,'10009 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(742,'2013-08-01 21:18:04.648862',1,25,2278,'28013 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(743,'2013-08-01 21:18:04.814226',1,25,2279,'10909 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(744,'2013-08-01 21:18:05.004991',1,25,2280,'8034 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(745,'2013-08-01 21:18:05.151576',1,25,2281,'10440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(746,'2013-08-01 21:18:05.300715',1,25,2282,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(747,'2013-08-01 21:18:05.442958',1,25,2283,'10451 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(748,'2013-08-01 21:18:05.577016',1,25,2284,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(749,'2013-08-01 21:18:05.719446',1,25,2285,'10435 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(750,'2013-08-01 21:18:05.853528',1,25,2286,'11171 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(751,'2013-08-01 21:18:06.024768',1,25,2287,'4830 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(752,'2013-08-01 21:18:06.192132',1,25,2288,'6105 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(753,'2013-08-01 21:18:06.331060',1,25,2289,'32415 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(754,'2013-08-01 21:18:06.473485',1,25,2290,'285 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(755,'2013-08-01 21:18:06.603029',1,25,2291,'45 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(756,'2013-08-01 21:18:06.737128',1,25,2292,'210 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(757,'2013-08-01 21:18:06.904519',1,25,2293,'14535 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(758,'2013-08-01 21:30:07.620876',1,25,2260,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(759,'2013-08-01 21:30:07.965467',1,25,2261,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(760,'2013-08-01 21:30:08.141176',1,25,2262,'7200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(761,'2013-08-01 21:30:08.315429',1,25,2263,'15 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(762,'2013-08-01 21:30:08.467503',1,25,2264,'690 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(763,'2013-08-01 21:30:08.626569',1,25,2265,'7201 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(764,'2013-08-01 21:30:09.019191',1,25,2266,'2192 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(765,'2013-08-01 21:30:09.219870',1,25,2267,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(766,'2013-08-01 21:30:09.403910',1,25,2268,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(767,'2013-08-01 21:30:09.712958',1,25,2269,'2816 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(768,'2013-08-01 21:30:09.904589',1,25,2270,'13860 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(769,'2013-08-01 21:30:10.106372',1,25,2271,'485 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(770,'2013-08-01 21:30:10.275830',1,25,2272,'22 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(771,'2013-08-01 21:30:10.459895',1,25,2273,'26460 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(772,'2013-08-01 21:30:10.648663',1,25,2274,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(773,'2013-08-01 21:30:10.836318',1,25,2275,'208 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(774,'2013-08-01 21:30:10.987045',1,25,2276,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(775,'2013-08-01 21:30:11.137771',1,25,2277,'10009 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(776,'2013-08-01 21:30:11.305130',1,25,2278,'28013 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(777,'2013-08-01 21:30:11.489183',1,25,2279,'10909 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(778,'2013-08-01 21:30:11.719702',1,25,2280,'8034 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(779,'2013-08-01 21:30:11.899368',1,25,2281,'10440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(780,'2013-08-01 21:30:12.087846',1,25,2282,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(781,'2013-08-01 21:30:12.284177',1,25,2283,'10451 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(782,'2013-08-01 21:30:12.493219',1,25,2284,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(783,'2013-08-01 21:30:12.652313',1,25,2285,'10435 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(784,'2013-08-01 21:30:12.828075',1,25,2286,'11171 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(785,'2013-08-01 21:30:12.991855',1,25,2287,'4830 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(786,'2013-08-01 21:30:13.167516',1,25,2288,'6105 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(787,'2013-08-01 21:30:13.343547',1,25,2289,'32415 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(788,'2013-08-01 21:30:13.535862',1,25,2290,'285 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(789,'2013-08-01 21:30:13.703203',1,25,2291,'45 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(790,'2013-08-01 21:30:13.928994',1,25,2292,'210 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(791,'2013-08-01 21:30:14.087979',1,25,2293,'14535 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(792,'2013-08-01 21:35:00.915935',1,25,2260,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(793,'2013-08-01 21:35:01.268349',1,25,2261,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(794,'2013-08-01 21:35:01.418912',1,25,2262,'7200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(795,'2013-08-01 21:35:01.569871',1,25,2263,'15 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(796,'2013-08-01 21:35:01.720535',1,25,2264,'690 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(797,'2013-08-01 21:35:01.904698',1,25,2265,'7201 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(798,'2013-08-01 21:35:02.044878',1,25,2266,'2192 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(799,'2013-08-01 21:35:02.187131',1,25,2267,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(800,'2013-08-01 21:35:02.572163',1,25,2268,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(801,'2013-08-01 21:38:12.164675',1,22,105,'12 tablet pack',1,'');
INSERT INTO django_admin_log VALUES(802,'2013-08-01 21:38:37.420721',1,22,106,'18 tablet pack',1,'');
INSERT INTO django_admin_log VALUES(803,'2013-08-01 21:38:52.364034',1,22,106,'18 tablet pack',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(804,'2013-08-01 21:38:59.818667',1,22,107,'24 tablet pack',1,'');
INSERT INTO django_admin_log VALUES(805,'2013-08-01 21:39:19.325674',1,22,107,'24 tablet pack',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(806,'2013-08-01 21:39:29.455357',1,22,108,'6 tablet pack',1,'');
INSERT INTO django_admin_log VALUES(807,'2013-08-01 21:47:58.483649',1,13,194,'paracetamol 100mg cap/tab',3,'');
INSERT INTO django_admin_log VALUES(808,'2013-08-01 21:55:53.399939',1,25,2260,'12270 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(809,'2013-08-01 21:55:53.581536',1,25,2261,'1440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(810,'2013-08-01 21:55:53.740531',1,25,2262,'7200 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(811,'2013-08-01 21:55:53.891146',1,25,2263,'15 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(812,'2013-08-01 21:55:54.041642',1,25,2264,'690 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(813,'2013-08-01 21:55:54.199621',1,25,2265,'7201 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(814,'2013-08-01 21:55:54.360686',1,25,2266,'2192 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(815,'2013-08-01 21:55:54.527975',1,25,2267,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(816,'2013-08-01 21:55:54.678646',1,25,2268,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(817,'2013-08-01 21:55:54.854396',1,25,2269,'2816 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(818,'2013-08-01 21:55:55.030030',1,25,2270,'13860 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(819,'2013-08-01 21:55:55.206091',1,25,2271,'485 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(820,'2013-08-01 21:55:55.356788',1,25,2272,'22 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(821,'2013-08-01 21:55:55.540782',1,25,2273,'26460 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(822,'2013-08-01 21:55:55.746947',1,25,2274,'2333 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(823,'2013-08-01 21:55:55.925476',1,25,2275,'208 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(824,'2013-08-01 21:55:56.109456',1,25,2276,'10 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(825,'2013-08-01 21:55:56.260062',1,25,2277,'10009 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(826,'2013-08-01 21:55:56.444115',1,25,2278,'28013 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(827,'2013-08-01 21:55:56.611357',1,25,2279,'10909 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(828,'2013-08-01 21:55:56.778825',1,25,2280,'8034 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(829,'2013-08-01 21:55:56.954646',1,25,2281,'10440 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(830,'2013-08-01 21:55:57.151287',1,25,2282,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(831,'2013-08-01 21:55:57.314172',1,25,2283,'10451 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(832,'2013-08-01 21:55:57.489925',1,25,2284,'720 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(833,'2013-08-01 21:55:57.653450',1,25,2285,'10435 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(834,'2013-08-01 21:55:57.837806',1,25,2286,'11171 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(835,'2013-08-01 21:55:57.988576',1,25,2287,'4830 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(836,'2013-08-01 21:55:58.156713',1,25,2288,'6105 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(837,'2013-08-01 21:55:58.381410',1,25,2289,'32415 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(838,'2013-08-01 21:55:58.552172',1,25,2290,'285 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(839,'2013-08-01 21:55:58.752819',1,25,2291,'45 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(840,'2013-08-01 21:55:58.942099',1,25,2292,'210 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(841,'2013-08-01 21:55:59.112855',1,25,2293,'14535 x Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(842,'2013-08-01 21:55:59.337046',1,25,2294,'4000 x Unknown (UNK) (benzathine penicillin 2.4mu vial)',3,'');
INSERT INTO django_admin_log VALUES(843,'2013-08-01 21:55:59.504382',1,25,2295,'1576 x Unknown (UNK) (benzathine penicillin 2.4mu vial)',3,'');
INSERT INTO django_admin_log VALUES(844,'2013-08-01 21:55:59.699566',1,25,2296,'8000 x Unknown (UNK) (carbamazepine 200mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(845,'2013-08-01 22:10:39.843625',1,22,109,'60 ml bottle',1,'');
INSERT INTO django_admin_log VALUES(846,'2013-09-08 16:52:18.351518',1,8,46,'Lesotho Awards - 2013 @ 2013-09-08 18:52:10+02:00',1,'');
INSERT INTO django_admin_log VALUES(847,'2013-09-08 16:58:37.657728',1,25,2402,'540 x Adco-Metronidazole - Adcock Ingram Healthcare Pty Ltd (ZAF) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(848,'2013-09-08 17:00:21.340281',1,19,2960,'Unknown (UNK) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(849,'2013-09-08 17:01:16.507779',1,25,2403,'1080 x Unknown (UNK) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(850,'2013-09-08 17:03:16.038817',1,18,185,'Universal Corporation',1,'');
INSERT INTO django_admin_log VALUES(851,'2013-09-08 17:03:53.166588',1,25,2404,'1800 x Unknown (UNK) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(852,'2013-09-08 17:05:00.297659',1,25,2405,'29895 x Unknown (UNK) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(853,'2013-09-08 17:51:48.316984',1,25,2406,'4540 x Unknown (UNK) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(854,'2013-09-08 17:53:11.710146',1,25,2407,'10275 x Unknown (UNK) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(855,'2013-09-08 17:55:19.052961',1,25,2408,'16800 x Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(856,'2013-09-08 17:57:00.918181',1,25,2409,'105270 x Unknown (UNK) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(857,'2013-09-08 17:57:55.394577',1,25,2410,'1780 x Unknown (UNK) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(858,'2013-09-08 18:06:23.530503',1,25,2411,'22725 x Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(859,'2013-09-08 18:07:16.161556',1,25,2412,'3198 x Unknown (UNK) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(860,'2013-09-08 18:08:06.277093',1,25,2413,'11318 x Unknown (UNK) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(861,'2013-09-08 18:14:37.266856',1,25,2414,'1200 x Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(862,'2013-09-08 18:16:15.007401',1,19,2961,'Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(863,'2013-09-08 18:16:59.952770',1,25,2415,'6000 x Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(864,'2013-09-08 18:17:59.351497',1,25,2416,'6000 x CHLORPHENIRAMINE MALEATE, TAB 4MG - Unknown (UNK) (chloropheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(865,'2013-09-08 18:19:41.162572',1,25,2417,'230 x Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(866,'2013-09-08 18:21:27.107619',1,25,2418,'1925 x Unknown (UNK) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(867,'2013-09-08 18:29:21.957086',1,28,174,'1 ZAR = 8.4624 USD on 2013-03-01',1,'');
INSERT INTO django_admin_log VALUES(868,'2013-09-08 18:30:50.782355',1,25,2418,'1925 x Unknown (UNK) (tetracycline 1% eye oint)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(869,'2013-09-08 18:40:14.335908',1,25,2341,'103680 x Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(870,'2013-09-09 07:10:38.378125',1,25,2342,'103680 x Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',2,'Changed price.');
INSERT INTO django_admin_log VALUES(871,'2013-09-09 09:52:12.549108',1,8,47,'Zimbabwe - September 2013 @ 2013-09-09 11:52:03+02:00',1,'');
INSERT INTO django_admin_log VALUES(872,'2013-09-09 09:53:32.472309',1,25,2419,'1 x Unknown (UNK) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(873,'2013-09-09 09:54:41.672934',1,25,2420,'1 x Unknown (UNK) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(874,'2013-09-09 16:24:21.368452',1,25,2421,'1 x Unknown (UNK) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(875,'2013-09-09 16:24:59.280910',1,25,2420,'1 x Unknown (UNK) (albendazole 400mg cap/tab)',2,'Changed incoterm.');
INSERT INTO django_admin_log VALUES(876,'2013-09-09 16:25:07.596916',1,25,2419,'1 x Unknown (UNK) (aciclovir 200mg cap/tab)',2,'Changed incoterm.');
INSERT INTO django_admin_log VALUES(877,'2013-09-09 16:26:51.031915',1,25,2422,'1 x Unknown (UNK) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(878,'2013-09-09 16:27:52.316868',1,25,2423,'1 x Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(879,'2013-09-09 16:28:42.608031',1,25,2424,'1 x Artemether + Lumefantrine - Unknown (UNK) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(880,'2013-09-09 16:30:15.370424',1,25,2425,'1 x Unknown (UNK) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(881,'2013-09-09 16:31:11.236033',1,19,2962,'Unknown (UNK) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(882,'2013-09-09 16:31:49.652489',1,25,2426,'1 x Unknown (UNK) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(883,'2013-09-09 16:33:01.331030',1,25,2427,'1 x Unknown (UNK) (bleomycin 15iu injection)',1,'');
INSERT INTO django_admin_log VALUES(884,'2013-09-09 16:33:44.683254',1,25,2428,'1 x Unknown (UNK) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(885,'2013-09-09 16:35:08.821534',1,25,2429,'1 x Unknown (UNK) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(886,'2013-09-09 16:36:16.246471',1,13,194,'ceftriaxone injection 500mg powder for injec',1,'');
INSERT INTO django_admin_log VALUES(887,'2013-09-09 16:36:26.214570',1,19,2963,'Unknown (UNK) (ceftriaxone injection 500mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(888,'2013-09-09 16:36:57.335349',1,25,2430,'1 x Unknown (UNK) (ceftriaxone injection 500mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(889,'2013-09-09 16:37:49.462296',1,25,2431,'1 x Unknown (UNK) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(890,'2013-09-09 16:38:50.349432',1,25,2432,'1 x Unknown (UNK) (chloropheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(891,'2013-09-09 16:39:30.442682',1,19,2964,'Unknown (UNK) (ciprofloxacin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(892,'2013-09-09 16:40:08.467263',1,25,2433,'1 x Unknown (UNK) (ciprofloxacin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(893,'2013-09-09 16:41:05.905723',1,25,2434,'1 x Unknown (UNK) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(894,'2013-09-09 16:41:43.696381',1,25,2435,'1 x Unknown (UNK) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(895,'2013-09-09 16:42:27.486420',1,25,2436,'1 x Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(896,'2013-09-09 16:43:14.805669',1,25,2437,'1 x Unknown (UNK) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(897,'2013-09-09 16:43:55.741140',1,25,2438,'1 x Unknown (UNK) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(898,'2013-09-09 16:44:26.201978',1,19,2965,'Unknown (UNK) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(899,'2013-09-09 16:44:57.184822',1,25,2439,'1 x Unknown (UNK) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(900,'2013-09-09 16:45:35.804676',1,25,2440,'1 x Unknown (UNK) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(901,'2013-09-09 16:47:13.000341',1,13,195,'ferrous salt 60-65mg, folic acid 0.1-0.25mg cap/tab',1,'');
INSERT INTO django_admin_log VALUES(902,'2013-09-09 16:47:24.570408',1,19,2966,'Unknown (UNK) (ferrous salt 60-65mg, folic acid 0.1-0.25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(903,'2013-09-09 16:48:06.551884',1,25,2441,'1 x Unknown (UNK) (ferrous salt 60-65mg, folic acid 0.1-0.25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(904,'2013-09-09 16:48:39.680186',1,25,2442,'1 x Unknown (UNK) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(905,'2013-09-09 16:49:26.734860',1,25,2443,'1 x Unknown (UNK) (insulin isophane 100 iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(906,'2013-09-09 16:50:12.934079',1,25,2444,'1 x Unknown (UNK) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(907,'2013-09-09 16:51:15.889292',1,25,2445,'1 x Unknown (UNK) (isoniazid 75mg, rifampicin 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(908,'2013-09-09 16:51:55.700309',1,25,2446,'1 x Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(909,'2013-09-09 16:52:47.714765',1,25,2447,'1 x Unknown (UNK) (lamivudine 30mg, nevirapine 50mg, stavudine 6mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(910,'2013-09-09 16:54:13.366282',1,25,2448,'1 x Unknown (UNK) (lopinavir 200mg, ritonavir 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(911,'2013-09-09 16:54:54.113932',1,25,2449,'1 x Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(912,'2013-09-09 16:55:24.901006',1,25,2450,'1 x Unknown (UNK) (magnesium sulphate 500mg/ml injection injection)',1,'');
INSERT INTO django_admin_log VALUES(913,'2013-09-09 16:56:14.464046',1,25,2451,'1 x Unknown (UNK) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(914,'2013-09-10 06:59:03.092702',1,25,2452,'1 x Unknown (UNK) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(915,'2013-09-10 06:59:47.846760',1,25,2453,'1 x Unknown (UNK) (nevirapine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(916,'2013-09-10 07:00:19.128320',1,22,110,'15 pessary pack',1,'');
INSERT INTO django_admin_log VALUES(917,'2013-09-10 07:00:54.479692',1,25,2454,'1 x Unknown (UNK) (nystatin 100,000iu pessary)',1,'');
INSERT INTO django_admin_log VALUES(918,'2013-09-10 07:01:40.330986',1,25,2455,'1 x Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(919,'2013-09-10 07:02:22.042058',1,25,2456,'1 x Unknown (UNK) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(920,'2013-09-10 07:03:10.041832',1,25,2457,'1 x Unknown (UNK) (pyrimethamine 25mg, sulphadoxine 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(921,'2013-09-10 07:03:44.167872',1,25,2458,'1 x Unknown (UNK) (salbutamol 100mcg/dose inhaler)',1,'');
INSERT INTO django_admin_log VALUES(922,'2013-09-10 07:04:23.335678',1,25,2459,'1 x Unknown (UNK) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(923,'2013-09-10 07:05:05.421013',1,25,2460,'1 x Unknown (UNK) (zinc sulphate 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(924,'2013-09-10 19:46:31.751827',1,15,6,'benzathine penicillin 2.4mu vial @ 0.3241',2,'Changed price.');
INSERT INTO django_admin_log VALUES(925,'2013-09-10 19:59:51.879491',1,15,68,'ceftriaxone 250mg powder for injec @ 0.3967',1,'');
INSERT INTO django_admin_log VALUES(926,'2013-09-10 20:06:44.372245',1,22,111,'10 vial pack',1,'');
INSERT INTO django_admin_log VALUES(927,'2013-09-10 20:07:21.078188',1,25,2171,'37800 x Unknown (UNK) (ceftriaxone injection 1g vial)',2,'Changed container and packsize.');
INSERT INTO django_admin_log VALUES(928,'2013-09-10 20:09:38.797431',1,15,69,'chloropheniramine 4mg cap/tab @ 0.0038',1,'');
INSERT INTO django_admin_log VALUES(929,'2013-09-10 20:10:03.008764',1,12,51,'chlorpheniramine',2,'Changed name.');
INSERT INTO django_admin_log VALUES(930,'2013-09-10 20:16:41.600983',1,15,70,'clotrimazole 100mg pessary @ 0.0575',1,'');
INSERT INTO django_admin_log VALUES(931,'2013-09-10 20:21:19.872314',1,13,189,'co-trimoxazole 960mg cap/tab',3,'');
INSERT INTO django_admin_log VALUES(932,'2013-09-10 20:22:44.875085',1,25,2223,'1 x Gracure Pharmaceutical Ltd (IND) (diazepam 5mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(933,'2013-09-10 20:35:58.637337',1,15,71,'Factor VIII 300IU injection @ 77.8600',1,'');
INSERT INTO django_admin_log VALUES(934,'2013-09-11 10:43:56.099476',1,8,47,'Zimbabwe - September 2013 @ 2013-09-09 09:52:03+00:00',3,'');
INSERT INTO django_admin_log VALUES(935,'2013-09-11 10:49:59.209220',1,25,2419,'2515 x Unknown (UNK) (bleomycin 15iu injection)',1,'');
INSERT INTO django_admin_log VALUES(936,'2013-09-11 11:33:00.270536',1,18,186,'Trinity Pharma',1,'');
INSERT INTO django_admin_log VALUES(937,'2013-09-11 11:34:09.833968',1,25,2420,'1010 x Unknown (UNK) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(938,'2013-09-12 06:43:21.071914',1,25,2402,'540 x Adco-Metronidazole - Adcock Ingram Healthcare Pty Ltd (ZAF) (metronidazole 200-250mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(939,'2013-09-12 06:49:31.627329',1,25,2421,'1780 x Unknown (UNK) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(940,'2013-09-12 06:51:20.337919',1,25,2421,'1780 x Unknown (UNK) (oral rehydration salts who formula powder)',3,'');
INSERT INTO django_admin_log VALUES(941,'2013-09-12 06:58:00.415135',1,22,112,'80 tablet pack',1,'');
INSERT INTO django_admin_log VALUES(942,'2013-09-12 06:59:36.031903',1,25,2420,'1010 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed container and method.');
INSERT INTO django_admin_log VALUES(943,'2013-09-12 07:01:14.817232',1,18,187,'Pharma Marketing International',1,'');
INSERT INTO django_admin_log VALUES(944,'2013-09-12 07:01:45.003383',1,25,2421,'4800 x Unknown (UNK) (sodium valproate 200mg/5ml syrup)',1,'');
INSERT INTO django_admin_log VALUES(945,'2013-09-12 07:02:39.108070',1,19,2967,'Unknown (UNK) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(946,'2013-09-12 07:03:05.717375',1,18,188,'Coral Laboratories',1,'');
INSERT INTO django_admin_log VALUES(947,'2013-09-12 07:03:35.741187',1,25,2422,'2520 x Unknown (UNK) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(948,'2013-09-12 07:04:25.101669',1,25,2423,'3000 x Unknown (UNK) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(949,'2013-09-12 07:05:31.289957',1,25,2424,'5580 x Unknown (UNK) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(950,'2013-09-12 07:06:45.549398',1,18,189,'Medicare Lesotho',1,'');
INSERT INTO django_admin_log VALUES(951,'2013-09-12 07:07:22.204647',1,25,2425,'31260 x Unknown (UNK) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(952,'2013-09-12 07:08:42.311206',1,25,2426,'2690 x Unknown (UNK) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(953,'2013-09-12 07:09:37.713477',1,18,190,'Troge Pharmaceutical',1,'');
INSERT INTO django_admin_log VALUES(954,'2013-09-12 07:10:05.408961',1,25,2427,'4125 x Unknown (UNK) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(955,'2013-09-12 07:10:40.735746',1,18,191,'Supre Latex',1,'');
INSERT INTO django_admin_log VALUES(956,'2013-09-12 07:11:07.460179',1,25,2428,'39040 x Unknown (UNK) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(957,'2013-09-12 07:13:04.031455',1,25,2429,'5040 x Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(958,'2013-09-12 07:14:00.131521',1,25,2430,'1500 x Unknown (UNK) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(959,'2013-09-12 07:15:26.677249',1,19,2968,'Erythromycin Stearate 250mg - Unknown (UNK) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(960,'2013-09-12 07:16:27.198670',1,25,2431,'3900 x Erythromycin Stearate 250mg - Unknown (UNK) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(961,'2013-09-12 07:18:40.510707',1,25,2432,'4800 x Unknown (UNK) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(962,'2013-09-12 07:20:23.836569',1,25,2433,'20000 x Unknown (UNK) (ceftriaxone 250mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(963,'2013-09-12 07:21:37.515262',1,25,2434,'13395 x Unknown (UNK) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(964,'2013-09-12 07:22:36.593347',1,25,2435,'45110 x Unknown (UNK) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(965,'2013-09-12 07:23:49.259268',1,25,2436,'7994 x Unknown (UNK) (ceftriaxone 250mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(966,'2013-09-12 07:25:36.392063',1,18,192,'Imres BP',1,'');
INSERT INTO django_admin_log VALUES(967,'2013-09-12 07:26:09.211741',1,25,2437,'1260 x Unknown (UNK) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(968,'2013-09-12 07:27:08.487957',1,25,2438,'3490 x Unknown (UNK) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(969,'2013-09-12 07:31:33.339587',1,25,2439,'25320 x Unknown (UNK) (salbutamol 100mcg/dose inhaler)',1,'');
INSERT INTO django_admin_log VALUES(970,'2013-09-12 07:32:54.542298',1,25,2440,'1620 x Unknown (UNK) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(971,'2013-09-12 07:33:57.469243',1,25,2441,'7200 x Unknown (UNK) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(972,'2013-09-12 07:34:58.956922',1,25,2442,'3300 x Unknown (UNK) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(973,'2013-09-12 07:36:21.879361',1,25,2443,'6280 x Unknown (UNK) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(974,'2013-09-12 07:38:20.711042',1,25,2444,'16720 x Unknown (UNK) (captopril 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(975,'2013-09-12 07:39:11.223685',1,25,2445,'1080 x Unknown (UNK) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(976,'2013-09-12 07:40:01.251552',1,19,2969,'Unknown (UNK) (metronidazole 400-500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(977,'2013-09-12 07:40:46.174934',1,25,2446,'2200 x Unknown (UNK) (metronidazole 400-500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(978,'2013-09-12 10:01:33.714978',1,13,192,'lamivudine 30mg, zidovudine 60mg cap/tab',3,'');
INSERT INTO django_admin_log VALUES(979,'2013-09-12 20:13:29.594671',1,25,2447,'720 x Unknown (UNK) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(980,'2013-09-12 20:14:21.788121',1,25,2448,'1140 x Unknown (UNK) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(981,'2013-09-12 20:16:18.103824',1,22,113,'28 capsule pack',1,'');
INSERT INTO django_admin_log VALUES(982,'2013-09-12 20:16:22.058694',1,25,2403,'1080 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(983,'2013-09-12 20:17:21.101177',1,22,114,'80 capsule pack',1,'');
INSERT INTO django_admin_log VALUES(984,'2013-09-12 20:18:58.661881',1,25,2420,'1010 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(985,'2013-09-12 20:19:33.032908',1,25,2415,'6000 x Unknown (UNK) (amoxicillin 250mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(986,'2013-09-12 20:20:08.708803',1,25,2429,'5040 x Unknown (UNK) (amoxicillin 250mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(987,'2013-09-12 20:27:54.306531',1,25,2449,'2490 x ERYTHROMYCIN STEARATE, TAB 250MG - Unknown (UNK) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(988,'2013-09-12 20:29:04.550528',1,22,115,'1 ampoule pack',1,'');
INSERT INTO django_admin_log VALUES(989,'2013-09-12 20:29:21.904301',1,22,116,'100 ampoule pack',1,'');
INSERT INTO django_admin_log VALUES(990,'2013-09-12 20:30:09.384417',1,25,2450,'556 x Unknown (UNK) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(991,'2013-09-12 20:32:02.651197',1,25,2451,'20800 x Unknown (UNK) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(992,'2013-09-12 20:34:39.052104',1,25,2451,'20800 x Unknown (UNK) (tetracycline 1% eye oint)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(993,'2013-09-12 20:36:32.757725',1,13,196,'lamivudine 150, nevirapine 200, zidovudine 300 tablets',1,'');
INSERT INTO django_admin_log VALUES(994,'2013-09-12 20:36:47.013105',1,19,2970,'Unknown (UNK) (lamivudine 150, nevirapine 200, zidovudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(995,'2013-09-12 20:37:47.916593',1,25,2452,'31050 x Unknown (UNK) (lamivudine 150, nevirapine 200, zidovudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(996,'2013-09-12 20:38:58.730401',1,25,2453,'63805 x Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(997,'2013-09-12 20:39:31.620139',1,13,197,'zidovudine 300 tablets',1,'');
INSERT INTO django_admin_log VALUES(998,'2013-09-12 20:39:43.466112',1,19,2971,'Unknown (UNK) (zidovudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(999,'2013-09-12 20:40:25.608093',1,25,2454,'28430 x Unknown (UNK) (zidovudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1000,'2013-09-12 20:41:04.084326',1,18,193,'Aurobindo Pharma Ltd',1,'');
INSERT INTO django_admin_log VALUES(1001,'2013-09-12 20:41:33.597972',1,25,2455,'27345 x Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1002,'2013-09-12 20:42:16.133509',1,12,91,'Tenofovir',1,'');
INSERT INTO django_admin_log VALUES(1003,'2013-09-12 20:42:35.722021',1,13,198,'Tenofovir 300, lamivudine 300 tablets',1,'');
INSERT INTO django_admin_log VALUES(1004,'2013-09-12 20:42:47.372974',1,19,2972,'Unknown (UNK) (Tenofovir 300, lamivudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1005,'2013-09-12 20:43:25.393173',1,25,2456,'15285 x Unknown (UNK) (Tenofovir 300, lamivudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1006,'2013-09-12 20:44:18.059705',1,13,199,'nevirapine 50mg/5ml syrup/susp',1,'');
INSERT INTO django_admin_log VALUES(1007,'2013-09-12 20:44:34.605200',1,19,2973,'Unknown (UNK) (nevirapine 50mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1008,'2013-09-12 20:44:49.424037',1,22,117,'240 ml bottle',1,'');
INSERT INTO django_admin_log VALUES(1009,'2013-09-12 20:45:24.616284',1,25,2457,'6200 x Unknown (UNK) (nevirapine 50mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1010,'2013-09-12 20:46:29.812075',1,25,2458,'3600 x Unknown (UNK) (lopinavir 200mg, ritonavir 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1011,'2013-09-12 20:47:05.319605',1,18,194,'Hetero Labs Ltd',1,'');
INSERT INTO django_admin_log VALUES(1012,'2013-09-12 20:47:40.660839',1,25,2459,'35665 x Unknown (UNK) (Tenofovir 300, lamivudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1013,'2013-09-12 20:48:33.667211',1,12,92,'efivarenz',1,'');
INSERT INTO django_admin_log VALUES(1014,'2013-09-12 20:48:40.591577',1,13,200,'Tenofovir 300mg, efivarenz 600mg, lamivudine 300mg tablets',1,'');
INSERT INTO django_admin_log VALUES(1015,'2013-09-12 20:48:50.975238',1,19,2974,'Unknown (UNK) (Tenofovir 300mg, efivarenz 600mg, lamivudine 300mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1016,'2013-09-12 20:49:31.077444',1,25,2460,'282310 x Unknown (UNK) (Tenofovir 300mg, efivarenz 600mg, lamivudine 300mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1017,'2013-09-12 20:50:05.617228',1,8,47,'Lesotho ARV Awards - 2012 @ 2013-09-12 22:49:47+02:00',1,'');
INSERT INTO django_admin_log VALUES(1018,'2013-09-12 20:50:33.681614',1,13,201,'efivarenz 200mg tablets',1,'');
INSERT INTO django_admin_log VALUES(1019,'2013-09-12 20:50:45.745411',1,19,2975,'Unknown (UNK) (efivarenz 200mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1020,'2013-09-12 20:51:40.239537',1,25,2461,'11760 x Unknown (UNK) (efivarenz 200mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1021,'2013-09-12 20:52:09.960493',1,12,93,'abacavir',1,'');
INSERT INTO django_admin_log VALUES(1022,'2013-09-12 20:52:30.394945',1,13,202,'abacavir 300mg tablets',1,'');
INSERT INTO django_admin_log VALUES(1023,'2013-09-12 20:52:42.015531',1,19,2976,'Unknown (UNK) (abacavir 300mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1024,'2013-09-12 20:53:25.711351',1,25,2462,'2340 x Unknown (UNK) (abacavir 300mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1025,'2013-09-12 20:53:52.259145',1,13,203,'abacavir 60mg tablets',1,'');
INSERT INTO django_admin_log VALUES(1026,'2013-09-12 20:54:02.724845',1,19,2977,'Unknown (UNK) (abacavir 60mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1027,'2013-09-12 20:54:43.405623',1,25,2463,'2000 x Unknown (UNK) (abacavir 60mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1028,'2013-09-12 20:55:09.349952',1,13,204,'efivarenz 50mg tablets',1,'');
INSERT INTO django_admin_log VALUES(1029,'2013-09-12 20:55:18.594547',1,19,2978,'Unknown (UNK) (efivarenz 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1030,'2013-09-12 20:56:09.682859',1,25,2464,'600 x Unknown (UNK) (efivarenz 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1031,'2013-09-12 20:56:52.771914',1,13,205,'nevirapine 50mg/2ml syrup/susp',1,'');
INSERT INTO django_admin_log VALUES(1032,'2013-09-12 20:57:06.725353',1,19,2979,'Unknown (UNK) (nevirapine 50mg/2ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1033,'2013-09-12 20:57:35.945953',1,22,118,'25 ml bottle',1,'');
INSERT INTO django_admin_log VALUES(1034,'2013-09-12 20:58:08.792737',1,25,2465,'73790 x Unknown (UNK) (nevirapine 50mg/2ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1035,'2013-09-12 20:58:47.498477',1,13,206,'lopinavir 100mg, ritonavir 25mg tablets',1,'');
INSERT INTO django_admin_log VALUES(1036,'2013-09-12 20:58:57.514358',1,19,2980,'Unknown (UNK) (lopinavir 100mg, ritonavir 25mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1037,'2013-09-12 20:59:46.945440',1,25,2466,'1500 x Unknown (UNK) (lopinavir 100mg, ritonavir 25mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1038,'2013-09-12 21:02:03.560975',1,13,207,'lopinavir 80mg, ritonavir 20mg syrup/susp',1,'');
INSERT INTO django_admin_log VALUES(1039,'2013-09-12 21:02:19.264190',1,19,2981,'Unknown (UNK) (lopinavir 80mg, ritonavir 20mg syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1040,'2013-09-12 21:03:43.624716',1,25,2467,'9000 x Unknown (UNK) (lopinavir 80mg, ritonavir 20mg syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1041,'2013-09-13 10:33:19.136967',1,8,48,'Angolan Mission - August 2013 @ 2013-09-13 12:33:09+02:00',1,'');
INSERT INTO django_admin_log VALUES(1042,'2013-09-13 10:35:03.123612',1,18,195,'Grumaann Royton De Angola Lda',1,'');
INSERT INTO django_admin_log VALUES(1043,'2013-09-13 10:35:41.662003',1,25,2468,'4000000 x Unknown (UNK) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1044,'2013-09-13 10:36:40.168072',1,19,2982,'Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1045,'2013-09-13 10:37:06.035964',1,18,196,'Gefarma',1,'');
INSERT INTO django_admin_log VALUES(1046,'2013-09-13 10:37:30.426890',1,16,141,'Coimbra (POR)',1,'');
INSERT INTO django_admin_log VALUES(1047,'2013-09-13 10:37:44.004155',1,17,180,'Portugal (Coimbra)',1,'');
INSERT INTO django_admin_log VALUES(1048,'2013-09-13 10:37:47.940766',1,19,2983,'Coimbra (POR) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1049,'2013-09-13 10:39:09.553020',1,25,2469,'519360 x Coimbra (POR) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1050,'2013-09-13 10:40:20.929566',1,16,141,'Basi (POR)',2,'Changed name.');
INSERT INTO django_admin_log VALUES(1051,'2013-09-13 10:40:50.666791',1,17,180,'Coimbra (Basi)',2,'Changed name and country.');
INSERT INTO django_admin_log VALUES(1052,'2013-09-16 09:52:23.929026',1,25,2469,'519360 x Basi (POR) (amoxicillin 250mg cap/tab)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(1053,'2013-09-16 09:54:52.650340',1,19,2984,'Basi (POR) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1054,'2013-09-16 09:56:21.718053',1,25,2470,'15000 x Basi (POR) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1055,'2013-09-16 09:58:52.556366',1,19,2985,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd (CHN) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(1056,'2013-09-16 09:59:10.197939',1,22,119,'5 ml vial',1,'');
INSERT INTO django_admin_log VALUES(1057,'2013-09-16 09:59:25.992030',1,18,197,'Omnifar',1,'');
INSERT INTO django_admin_log VALUES(1058,'2013-09-16 10:00:14.155647',1,16,142,'I.J. Pharmaceutical (IND)',1,'');
INSERT INTO django_admin_log VALUES(1059,'2013-09-16 10:00:37.806490',1,17,181,'India (I.J. Pharmaceutical)',1,'');
INSERT INTO django_admin_log VALUES(1060,'2013-09-16 10:00:41.747218',1,19,2986,'I.J. Pharmaceutical (IND) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1061,'2013-09-16 10:01:08.483522',1,18,198,'Medtrónica',1,'');
INSERT INTO django_admin_log VALUES(1062,'2013-09-16 10:02:32.801076',1,24,15,'AOA',1,'');
INSERT INTO django_admin_log VALUES(1063,'2013-09-16 10:02:48.658551',1,25,2471,'50000 x I.J. Pharmaceutical (IND) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1064,'2013-09-16 10:04:49.905695',1,24,15,'AKZ',2,'Changed code.');
INSERT INTO django_admin_log VALUES(1065,'2013-09-16 10:06:23.635118',1,24,15,'AKZ',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(1066,'2013-09-16 10:08:26.619133',1,24,15,'AOA',2,'Changed code.');
INSERT INTO django_admin_log VALUES(1067,'2013-09-16 11:30:44.830914',1,24,12,'',3,'');
INSERT INTO django_admin_log VALUES(1068,'2013-09-16 11:31:01.408358',1,24,15,'ZAR',2,'Changed code.');
INSERT INTO django_admin_log VALUES(1069,'2013-09-16 11:31:13.767913',1,24,15,'AOA',2,'Changed code.');
INSERT INTO django_admin_log VALUES(1070,'2013-09-16 11:32:58.170186',1,27,12,'AOA',1,'');
INSERT INTO django_admin_log VALUES(1071,'2013-09-16 11:37:35.275223',1,25,2472,'90000 x Unknown (UNK) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1072,'2013-09-16 11:38:01.511041',1,19,2987,'Basi (POR) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1073,'2013-09-16 11:38:24.445732',1,18,199,'Concentra',1,'');
INSERT INTO django_admin_log VALUES(1074,'2013-09-16 11:38:46.931631',1,25,2473,'2000 x Basi (POR) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1075,'2013-09-16 11:43:04.318921',1,19,2988,'Basi (POR) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1076,'2013-09-16 11:44:28.758752',1,25,2474,'50000 x Basi (POR) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1077,'2013-09-16 11:45:36.252265',1,9,40,'Cuba (CUB)',1,'');
INSERT INTO django_admin_log VALUES(1078,'2013-09-16 11:45:43.654120',1,16,143,'Farmacuba (CUB)',1,'');
INSERT INTO django_admin_log VALUES(1079,'2013-09-16 11:46:04.133245',1,17,182,'Cuba (Farmacuba)',1,'');
INSERT INTO django_admin_log VALUES(1080,'2013-09-16 11:47:37.832961',1,19,2989,'Farmacuba (CUB) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1081,'2013-09-16 11:48:06.934218',1,18,200,'Prest-Saúde',1,'');
INSERT INTO django_admin_log VALUES(1082,'2013-09-16 11:48:47.762473',1,25,2475,'2500 x Farmacuba (CUB) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1083,'2013-09-16 11:49:18.031332',1,19,2990,'Basi (POR) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1084,'2013-09-16 11:49:59.867613',1,18,201,'Neofarma',1,'');
INSERT INTO django_admin_log VALUES(1085,'2013-09-16 11:50:20.261395',1,25,2476,'500000 x Basi (POR) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1086,'2013-09-16 11:51:42.596520',1,16,144,'Geolab (BRA)',1,'');
INSERT INTO django_admin_log VALUES(1087,'2013-09-16 11:51:55.550037',1,17,183,'Brazil (Geolab)',1,'');
INSERT INTO django_admin_log VALUES(1088,'2013-09-16 11:51:58.156546',1,19,2991,'Geolab (BRA) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1089,'2013-09-16 11:52:35.671755',1,25,2477,'150300 x Geolab (BRA) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1090,'2013-09-16 11:52:52.964324',1,22,1,'1 tablet unknown',3,'');
INSERT INTO django_admin_log VALUES(1091,'2013-09-16 11:56:09.884796',1,18,202,'Paberna, LDA',1,'');
INSERT INTO django_admin_log VALUES(1092,'2013-09-16 11:56:36.202238',1,25,2478,'9000 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(1093,'2013-09-16 11:57:23.055417',1,25,2478,'9000 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, rifampicin 60mg tablets)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1094,'2013-09-16 11:58:24.531252',1,25,2478,'9000 x Macleods Pharmaceuticals Limited (IND) (isoniazid 75mg, rifampicin 150mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1095,'2013-09-16 12:01:53.738874',1,25,2478,'9000 x Macleods Pharmaceuticals Limited (IND) (isoniazid 75mg, rifampicin 150mg cap/tab)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(1096,'2013-09-16 12:03:00.976224',1,25,2479,'10000 x Unknown (UNK) (levonorgestrel 0.75mg N/A)',1,'');
INSERT INTO django_admin_log VALUES(1097,'2013-09-16 12:04:27.063058',1,25,1785,'10000 x Unknown (UNK) (aciclovir 200mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1098,'2013-09-16 12:04:40.227520',1,25,2426,'2690 x Unknown (UNK) (aciclovir 200mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1099,'2013-09-16 12:04:45.672337',1,19,1896,'Unknown (UNK) (aciclovir 200mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1100,'2013-09-16 12:05:18.773900',1,25,2047,'1161 x Unknown (UNK) (aciclovir 200mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1101,'2013-09-16 12:05:23.615665',1,19,2598,'Unknown (UNK) (aciclovir 200mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1102,'2013-09-16 12:05:48.574898',1,25,2069,'35603 x Unknown (UNK) (aciclovir 200mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1103,'2013-09-16 12:05:57.507392',1,19,2648,'Unknown (UNK) (aciclovir 200mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1104,'2013-09-16 12:06:18.426431',1,25,2102,'154 x Unknown (UNK) (aciclovir 200mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1105,'2013-09-16 12:06:23.539002',1,19,2698,'Unknown (UNK) (aciclovir 200mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1106,'2013-09-16 12:07:25.828731',1,16,145,'Akorn (IND)',1,'');
INSERT INTO django_admin_log VALUES(1107,'2013-09-16 12:07:42.225430',1,19,2992,'Akorn (IND) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(1108,'2013-09-16 12:08:32.357265',1,17,184,'India (Akorn)',1,'');
INSERT INTO django_admin_log VALUES(1109,'2013-09-16 12:09:18.846564',1,25,2480,'30240 x Akorn (IND) (medroxyprogesteron acetate 150mg/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(1110,'2013-09-16 12:09:56.828856',1,16,146,'Regain Laboratories (IND)',1,'');
INSERT INTO django_admin_log VALUES(1111,'2013-09-16 12:10:19.131483',1,17,185,'Hissar, Haryana, India (Regain Laboratories)',1,'');
INSERT INTO django_admin_log VALUES(1112,'2013-09-16 12:10:23.418424',1,19,2993,'Regain Laboratories (IND) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1113,'2013-09-16 12:11:05.996678',1,25,2481,'20040 x Regain Laboratories (IND) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1114,'2013-09-16 12:11:55.541600',1,25,2482,'250000 x Unknown (UNK) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1115,'2013-09-16 12:13:13.373776',1,25,2483,'5000 x Unknown (UNK) (nystatin 100,000iu pessary)',1,'');
INSERT INTO django_admin_log VALUES(1116,'2013-09-16 12:13:54.542149',1,25,1886,'1037070 x Unknown (UNK) (nystatin 100,000iu pessary)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1117,'2013-09-16 12:13:58.214220',1,19,2079,'Unknown (UNK) (nystatin 100,000iu pessary)',3,'');
INSERT INTO django_admin_log VALUES(1118,'2013-09-16 12:14:22.919079',1,22,44,'6 pessary pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1119,'2013-09-16 12:14:32.673475',1,22,19,'50 sachet pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1120,'2013-09-16 12:14:44.790238',1,22,48,'1 sachet pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1121,'2013-09-16 12:14:53.254343',1,22,51,'1 pessary pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1122,'2013-09-16 12:15:07.339689',1,22,54,'100 pessary pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1123,'2013-09-16 12:15:15.894239',1,22,62,'100 sachet pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1124,'2013-09-16 12:15:22.876318',1,22,72,'25 sachet pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1125,'2013-09-16 12:15:30.788825',1,22,81,'1 vial pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1126,'2013-09-16 12:16:01.946882',1,19,2994,'Basi (POR) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1127,'2013-09-16 12:16:43.779830',1,25,2484,'30016 x Basi (POR) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1128,'2013-09-16 12:17:23.282810',1,25,2403,'1080 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1129,'2013-09-16 12:17:28.872216',1,19,2960,'Unknown (UNK) (omeprazole 20mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1130,'2013-09-16 12:18:02.447209',1,25,2038,'1200 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1131,'2013-09-16 12:18:06.469279',1,19,2583,'Unknown (UNK) (omeprazole 20mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1132,'2013-09-16 12:18:41.539073',1,25,1904,'1000 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1133,'2013-09-16 12:18:46.486881',1,19,2130,'Unknown (UNK) (omeprazole 20mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1134,'2013-09-16 12:19:11.076901',1,25,1970,'1211325 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1135,'2013-09-16 12:19:19.863124',1,25,2420,'1010 x Unknown (UNK) (omeprazole 20mg cap/tab)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1136,'2013-09-16 12:19:27.049516',1,19,2280,'Unknown (UNK) (omeprazole 20mg cap/tab)',3,'');
INSERT INTO django_admin_log VALUES(1137,'2013-09-16 12:24:32.262471',1,8,49,'Zimbabwe - Natpharm Receipts - September 2013 @ 2013-09-16 07:24:17+02:00',1,'');
INSERT INTO django_admin_log VALUES(1138,'2013-09-16 12:27:46.093599',1,25,2485,'9803 x Unknown (UNK) (efivarenz 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1139,'2013-09-16 12:47:30.654338',1,25,2486,'43425 x Unknown (UNK) (efivarenz 200mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1140,'2013-09-16 19:43:56.756706',1,25,2208,'1 x Gedeon Richter (UNK) (levonorgestrel 0.75mg N/A)',3,'');
INSERT INTO django_admin_log VALUES(1141,'2013-09-16 20:06:58.507361',1,15,72,'Human Albumin Serum 20-25% infusion @ 0.6213',1,'');
INSERT INTO django_admin_log VALUES(1142,'2013-09-16 20:09:15.960059',1,15,73,'Tenofovir 300, lamivudine 300 tablets @ 0.1973',1,'');
INSERT INTO django_admin_log VALUES(1143,'2013-09-16 20:10:48.616218',1,15,74,'abacavir 300mg tablets @ 0.2200',1,'');
INSERT INTO django_admin_log VALUES(1144,'2013-09-16 20:12:17.650818',1,15,75,'ceftriaxone injection 500mg powder for injec @ 0.4700',1,'');
INSERT INTO django_admin_log VALUES(1145,'2013-09-16 20:13:39.288429',1,19,2966,'Unknown (UNK) (ferrous salt 200mg, folic acid 0.25mg cap/tab)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(1146,'2013-09-16 20:13:46.141151',1,13,195,'ferrous salt 60-65mg, folic acid 0.1-0.25mg cap/tab',3,'');
INSERT INTO django_admin_log VALUES(1147,'2013-09-16 20:15:05.796800',1,15,76,'lamivudine 150mg cap/tab @ 0.0385',1,'');
INSERT INTO django_admin_log VALUES(1148,'2013-09-16 20:15:47.480248',1,15,77,'lamivudine 60mg, nevirapine 12mg, stavudine 100mg cap/tab @ 0.0780',1,'');
INSERT INTO django_admin_log VALUES(1149,'2013-09-16 20:16:58.759358',1,15,78,'lopinavir 100mg, ritonavir 25mg tablets @ 0.1143',1,'');
INSERT INTO django_admin_log VALUES(1150,'2013-09-16 20:17:44.589542',1,15,79,'lopinavir 200mg, ritonavir 50mg tablets @ 0.2375',1,'');
INSERT INTO django_admin_log VALUES(1151,'2013-09-16 20:18:17.987383',1,15,80,'lopinavir 80mg, ritonavir 20mg syrup/susp @ 0.1183',1,'');
INSERT INTO django_admin_log VALUES(1152,'2013-09-16 20:19:09.232708',1,15,81,'measles vaccine n/a injection @ 0.5876',1,'');
INSERT INTO django_admin_log VALUES(1153,'2013-09-16 20:20:00.562607',1,15,82,'nevirapine 200mg cap/tab @ 0.0611',1,'');
INSERT INTO django_admin_log VALUES(1154,'2013-09-16 20:20:52.964158',1,15,83,'nystatin 100,000iu pessary @ 0.0405',1,'');
INSERT INTO django_admin_log VALUES(1155,'2013-09-16 20:21:30.787751',1,15,84,'omeprazole 10mg cap/tab @ 0.0530',1,'');
INSERT INTO django_admin_log VALUES(1156,'2013-09-16 20:22:14.387177',1,15,85,'simvastatin 10mg cap/tab @ 0.0698',1,'');
INSERT INTO django_admin_log VALUES(1157,'2013-09-16 20:22:33.956597',1,15,86,'simvastatin 20mg cap/tab @ 0.0250',1,'');
INSERT INTO django_admin_log VALUES(1158,'2013-09-16 20:23:35.049329',1,15,87,'stavudine 15mg cap/tab @ 0.0267',1,'');
INSERT INTO django_admin_log VALUES(1159,'2013-09-16 20:24:12.707961',1,15,88,'zidovudine 300 tablets @ 0.1934',1,'');
INSERT INTO django_admin_log VALUES(1160,'2013-09-16 21:15:04.149528',1,25,2487,'9803 x Unknown (UNK) (efivarenz 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1161,'2013-09-16 21:16:05.622463',1,25,2488,'9597 x Unknown (UNK) (lopinavir 200mg, ritonavir 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1162,'2013-09-16 21:16:54.346851',1,25,2489,'32139 x Unknown (UNK) (lopinavir 100mg, ritonavir 25mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1163,'2013-09-16 21:18:51.164112',1,18,203,'DFID',1,'');
INSERT INTO django_admin_log VALUES(1164,'2013-09-16 21:19:23.235448',1,25,2490,'82649 x Unknown (UNK) (lamivudine 30mg, nevirapine 50mg, stavudine 6mg dispersible tab)',1,'');
INSERT INTO django_admin_log VALUES(1165,'2013-09-17 10:51:46.525572',1,25,2436,'7994 x Unknown (UNK) (ceftriaxone 250mg powder for injec)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1166,'2013-09-17 18:32:45.359950',1,25,84,'1690 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1167,'2013-09-17 18:33:23.976544',1,25,83,'1334 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1168,'2013-09-17 18:33:31.267164',1,25,82,'2490 x Lupin Limited (IND) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1169,'2013-09-17 18:33:44.816835',1,25,85,'1139 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, pyrazinamid 150mg, rifampicin 60mg dispersible tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1170,'2013-09-17 18:36:26.412112',1,25,86,'2490 x Lupin Limited (IND) (isoniazid 30mg, rifampicin 60mg tablets)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1171,'2013-09-17 18:38:09.551847',1,25,88,'4008 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, rifampicin 60mg tablets)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1172,'2013-09-17 18:38:50.781388',1,25,87,'2000 x Macleods Pharmaceuticals Limited (IND) (isoniazid 30mg, rifampicin 60mg tablets)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1173,'2013-09-19 07:49:50.194641',1,25,2491,'141031 x Unknown (UNK) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1174,'2013-09-19 08:03:08.710286',1,25,2492,'124811 x Unknown (UNK) (lamivudine 150, nevirapine 200, zidovudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1175,'2013-09-19 08:07:39.428549',1,25,2493,'893803 x Unknown (UNK) (Tenofovir 300, lamivudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1176,'2013-09-19 08:56:37.020398',1,25,2494,'42500 x Unknown (UNK) (lopinavir 100mg, ritonavir 25mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1177,'2013-09-19 08:57:24.011423',1,25,2495,'725743 x Unknown (UNK) (nevirapine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1178,'2013-09-19 08:58:05.113927',1,25,2496,'35061 x Unknown (UNK) (zidovudine 300 tablets)',1,'');
INSERT INTO django_admin_log VALUES(1179,'2013-09-19 08:59:30.609783',1,25,2497,'13079 x Unknown (UNK) (lopinavir 80mg, ritonavir 20mg syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1180,'2013-09-19 09:00:14.243164',1,18,204,'European Union',1,'');
INSERT INTO django_admin_log VALUES(1181,'2013-09-19 09:00:44.719958',1,25,2498,'6772 x Unknown (UNK) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1182,'2013-09-19 09:01:53.315859',1,25,2498,'6772 x Unknown (UNK) (amoxicillin 250mg cap/tab)',2,'Changed currency.');
INSERT INTO django_admin_log VALUES(1183,'2013-09-19 09:03:56.820718',1,25,2498,'6772 x Unknown (UNK) (amoxicillin 250mg cap/tab)',2,'Changed currency.');
INSERT INTO django_admin_log VALUES(1184,'2013-09-19 09:06:39.387639',1,8,50,'Seychelles Report - 16092013 @ 2013-09-19 04:06:23+02:00',1,'');
INSERT INTO django_admin_log VALUES(1185,'2013-09-19 09:08:25.044562',1,17,186,'Upside Industrial Area (Dehradum) (Ranbaxy)',1,'');
INSERT INTO django_admin_log VALUES(1186,'2013-09-19 09:08:33.743348',1,19,2995,'Ranbaxy (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1187,'2013-09-19 09:09:02.241321',1,18,205,'Nchimanlal Export Ltd',1,'');
INSERT INTO django_admin_log VALUES(1188,'2013-09-19 09:09:47.893930',1,25,2499,'10000 x Ranbaxy (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1189,'2013-09-19 09:10:29.083727',1,16,147,'Teva (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1190,'2013-09-19 09:11:07.930441',1,17,187,'Eastbourne UK (Teva)',1,'');
INSERT INTO django_admin_log VALUES(1191,'2013-09-19 09:11:10.627559',1,19,2996,'Teva (No Country) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1192,'2013-09-19 09:12:02.696973',1,25,2500,'28000 x Teva (No Country) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1193,'2013-09-19 09:13:25.941927',1,17,188,'Veerasandra (MicroLab)',1,'');
INSERT INTO django_admin_log VALUES(1194,'2013-09-19 09:13:28.357915',1,19,2997,'MicroLab (UNK) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1195,'2013-09-19 09:14:32.221464',1,25,2501,'4000 x MicroLab (UNK) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1196,'2013-09-19 09:15:08.817047',1,16,148,'Kent (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1197,'2013-09-19 09:16:24.833672',1,9,41,'Ireland (IRL)',1,'');
INSERT INTO django_admin_log VALUES(1198,'2013-09-19 09:16:27.047940',1,17,189,'Athlone Lab (Kent)',1,'');
INSERT INTO django_admin_log VALUES(1199,'2013-09-19 09:16:31.837413',1,19,2998,'Kent (No Country) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1200,'2013-09-19 09:17:17.340938',1,25,2502,'150 x Kent (No Country) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1201,'2013-09-19 09:18:59.315356',1,17,190,'Bryanston (Adcock Ingram Healthcare Pty Ltd)',1,'');
INSERT INTO django_admin_log VALUES(1202,'2013-09-19 09:19:01.787422',1,19,2999,'Adcock Ingram Healthcare Pty Ltd (ZAF) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1203,'2013-09-19 09:19:25.412629',1,22,120,'1 capsule pack',1,'');
INSERT INTO django_admin_log VALUES(1204,'2013-09-19 09:20:05.601505',1,25,2503,'240000 x Adcock Ingram Healthcare Pty Ltd (ZAF) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1205,'2013-09-19 09:21:04.353474',1,16,149,'Sandoz (UNK)',1,'');
INSERT INTO django_admin_log VALUES(1206,'2013-09-19 09:21:56.491662',1,9,42,'Austria (AUT)',1,'');
INSERT INTO django_admin_log VALUES(1207,'2013-09-19 09:21:58.512641',1,17,191,'Kundl - Austria (Sandoz)',1,'');
INSERT INTO django_admin_log VALUES(1208,'2013-09-19 09:22:04.095038',1,19,3000,'Sandoz (UNK) (benzyl penicillin 1.0mu vial)',1,'');
INSERT INTO django_admin_log VALUES(1209,'2013-09-19 09:22:30.394075',1,22,121,'100 vial pack',1,'');
INSERT INTO django_admin_log VALUES(1210,'2013-09-19 09:23:14.917994',1,25,2504,'65 x Sandoz (UNK) (benzyl penicillin 1.0mu vial)',1,'');
INSERT INTO django_admin_log VALUES(1211,'2013-09-19 09:24:39.240844',1,25,2505,'15 x Fresenius Kabi (IND) (bleomycin 15iu injection)',1,'');
INSERT INTO django_admin_log VALUES(1212,'2013-09-19 09:25:28.784145',1,16,150,'Sterop (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1213,'2013-09-19 09:26:03.936110',1,17,192,'Limassol (Sterop)',1,'');
INSERT INTO django_admin_log VALUES(1214,'2013-09-19 09:26:06.195135',1,19,3001,'Sterop (No Country) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1215,'2013-09-19 09:27:01.891427',1,25,2506,'90000 x Sterop (No Country) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1216,'2013-09-19 09:28:23.699622',1,17,193,'Kaiseraugst, Switzerland (F. Hoffmann- La Roche)',1,'');
INSERT INTO django_admin_log VALUES(1217,'2013-09-19 09:28:25.646609',1,19,3002,'F. Hoffmann- La Roche (CHE) (ceftriaxone 250mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(1218,'2013-09-19 09:29:35.947331',1,25,2507,'200 x F. Hoffmann- La Roche (CHE) (ceftriaxone 250mg powder for injec)',1,'');
INSERT INTO django_admin_log VALUES(1219,'2013-09-19 09:48:48.333259',1,17,194,'Kempton Park, South Africa (Sandoz Pty LTD)',1,'');
INSERT INTO django_admin_log VALUES(1220,'2013-09-19 09:48:50.231253',1,19,3003,'Sandoz Pty LTD (ZAF) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(1221,'2013-09-19 09:49:41.026137',1,25,2508,'5500 x Sandoz Pty LTD (ZAF) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(1222,'2013-09-19 09:50:38.833247',1,19,3004,'Medopharma Ltd (IND) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1223,'2013-09-19 09:51:15.188544',1,25,2509,'120 x Medopharma Ltd (IND) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1224,'2013-09-19 09:51:53.119348',1,16,151,'Dr Reddy (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1225,'2013-09-19 09:52:06.239545',1,17,195,'UK (Dr Reddy)',1,'');
INSERT INTO django_admin_log VALUES(1226,'2013-09-19 09:52:11.788651',1,19,3005,'Dr Reddy (No Country) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1227,'2013-09-19 09:52:51.468513',1,25,2510,'50000 x Dr Reddy (No Country) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1228,'2013-09-19 09:55:20.312367',1,17,196,'Sirinagar (Cipla Limited)',1,'');
INSERT INTO django_admin_log VALUES(1229,'2013-09-19 09:55:22.475980',1,19,3006,'Cipla Limited (IND) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(1230,'2013-09-19 09:56:08.189062',1,25,2511,'15000 x Cipla Limited (IND) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(1231,'2013-09-19 09:57:37.364769',1,17,197,'Bhosari Pune, India (Cipla Limited)',1,'');
INSERT INTO django_admin_log VALUES(1232,'2013-09-19 09:57:40.263633',1,19,3007,'Cipla Limited (IND) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1233,'2013-09-19 09:58:23.130951',1,25,2512,'1200 x Cipla Limited (IND) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1234,'2013-09-19 09:59:24.810137',1,19,3008,'Amstelfarma (NLD) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1235,'2013-09-19 10:00:07.955858',1,25,2513,'35000 x Amstelfarma (NLD) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1236,'2013-09-19 10:01:46.425239',1,17,198,'Samnath, Dabhel, India (Cipla Limited)',1,'');
INSERT INTO django_admin_log VALUES(1237,'2013-09-19 10:01:49.327590',1,19,3009,'Cipla Limited (IND) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1238,'2013-09-19 10:02:31.356776',1,25,2514,'60 x Cipla Limited (IND) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1239,'2013-09-19 10:04:48.054247',1,17,51,'Hadapsar, India (Serum Institute)',2,'Changed name and address.');
INSERT INTO django_admin_log VALUES(1240,'2013-09-19 10:05:50.193091',1,25,2515,'300 x Serum Institute (IND) (dpt vaccine injection n/a N/A)',1,'');
INSERT INTO django_admin_log VALUES(1241,'2013-09-19 10:09:11.887915',1,16,152,'Milpharm (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1242,'2013-09-19 10:09:43.318097',1,17,199,'South Ruislip, UK (Milpharm)',1,'');
INSERT INTO django_admin_log VALUES(1243,'2013-09-19 10:09:46.766549',1,19,3010,'Milpharm (No Country) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1244,'2013-09-19 10:10:32.448271',1,25,2516,'45024 x Milpharm (No Country) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1245,'2013-09-19 10:12:21.427037',1,17,200,'Okhia, India (Bio Nova Pharma)',1,'');
INSERT INTO django_admin_log VALUES(1246,'2013-09-19 10:13:00.437815',1,25,2517,'260 x Bio Nova Pharma (IND) (ferrous salt 200mg, folic acid 0.4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1247,'2013-09-19 10:13:40.409639',1,16,153,'Kedrion (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1248,'2013-09-19 10:14:23.920114',1,17,201,'Barga (Luccal), Italy (Kedrion)',1,'');
INSERT INTO django_admin_log VALUES(1249,'2013-09-19 10:14:29.662306',1,19,3011,'Kedrion (No Country) (Human Albumin Serum 20-25% infusion)',1,'');
INSERT INTO django_admin_log VALUES(1250,'2013-09-20 06:43:23.422413',1,25,2518,'450 x Kedrion (No Country) (Human Albumin Serum 20-25% infusion)',1,'');
INSERT INTO django_admin_log VALUES(1251,'2013-09-20 06:45:21.404903',1,17,45,'Glaxo Smithkline, South Africa (Glaxo Smithkline South Africa Pty Ltd)',2,'Changed name.');
INSERT INTO django_admin_log VALUES(1252,'2013-09-20 06:46:00.308879',1,17,202,'Bryanston (Glaxo Smithkline South Africa Pty Ltd)',1,'');
INSERT INTO django_admin_log VALUES(1253,'2013-09-20 06:46:02.051587',1,19,3012,'Glaxo Smithkline South Africa Pty Ltd (ZAF) (lamivudine 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1254,'2013-09-20 06:46:47.608673',1,25,2519,'233 x Glaxo Smithkline South Africa Pty Ltd (ZAF) (lamivudine 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1255,'2013-09-20 06:47:43.303472',1,25,2520,'667 x Combivir - Glaxo Smithkline South Africa Pty Ltd (ZAF) (lamivudine 150mg, zidovudine 300mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1256,'2013-09-20 06:48:49.689216',1,16,154,'Aspen (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1257,'2013-09-20 06:49:27.007275',1,17,203,'Adcock (Aspen)',1,'');
INSERT INTO django_admin_log VALUES(1258,'2013-09-20 06:49:29.546155',1,19,3013,'Aspen (No Country) (lopinavir 200mg, ritonavir 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1259,'2013-09-20 06:50:05.590048',1,25,2521,'667 x Aspen (No Country) (lopinavir 200mg, ritonavir 50mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1260,'2013-09-20 06:50:57.597276',1,17,52,'Wockhardt Ltd - India (Wockhardt Ltd)',2,'Changed address.');
INSERT INTO django_admin_log VALUES(1261,'2013-09-20 06:51:46.046220',1,25,2522,'9000 x Wockhardt Ltd (IND) (metformin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1262,'2013-09-20 06:52:59.598849',1,25,2523,'208 x Medopharma Ltd (IND) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1263,'2013-09-20 06:53:50.598937',1,25,2524,'1200 x Wockhardt Ltd (IND) (omeprazole 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1264,'2013-09-20 06:55:21.400100',1,17,89,'Waluj, India (FDC Ltd)',2,'Changed name and address.');
INSERT INTO django_admin_log VALUES(1265,'2013-09-20 06:57:18.947663',1,25,2525,'180 x FDC Ltd (IND) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(1266,'2013-09-20 06:58:04.974751',1,17,69,'Dundigal, India (Gland Pharma Limited)',2,'Changed name and address.');
INSERT INTO django_admin_log VALUES(1267,'2013-09-20 06:58:43.184587',1,25,2526,'24 x Gland Pharma Limited (IND) (oxytocin 10iu/ml injection)',1,'');
INSERT INTO django_admin_log VALUES(1268,'2013-09-20 06:59:26.874091',1,16,155,'Medreich (No Country)',1,'');
INSERT INTO django_admin_log VALUES(1269,'2013-09-20 07:00:00.665966',1,17,204,'Avalahalli (Medreich)',1,'');
INSERT INTO django_admin_log VALUES(1270,'2013-09-20 07:00:03.283107',1,19,3014,'Medreich (No Country) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(1271,'2013-09-20 07:00:52.085878',1,25,2527,'40000 x Medreich (No Country) (paracetamol 120mg/5ml suspension)',1,'');
INSERT INTO django_admin_log VALUES(1272,'2013-09-20 07:02:28.069455',1,19,66,'Glaxo Smithkline South Africa Pty Ltd (ZAF) (salbutamol 100mcg/dose inhaler)',2,'Changed site.');
INSERT INTO django_admin_log VALUES(1273,'2013-09-20 07:03:11.826038',1,25,2528,'8000 x Glaxo Smithkline South Africa Pty Ltd (ZAF) (salbutamol 100mcg/dose inhaler)',1,'');
INSERT INTO django_admin_log VALUES(1274,'2013-09-20 07:04:12.392329',1,17,205,'Wrexham (Wockhardt Ltd)',1,'');
INSERT INTO django_admin_log VALUES(1275,'2013-09-20 07:04:17.049980',1,19,3015,'Wockhardt Ltd (IND) (sodium valproate 200mg/5ml syrup)',1,'');
INSERT INTO django_admin_log VALUES(1276,'2013-09-20 07:05:06.829070',1,25,2529,'700 x Wockhardt Ltd (IND) (sodium valproate 200mg/5ml syrup)',1,'');
INSERT INTO django_admin_log VALUES(1277,'2013-09-20 07:06:49.786992',1,17,53,'Kishanpuna, India (Fresenius Kabi)',2,'Changed name and address.');
INSERT INTO django_admin_log VALUES(1278,'2013-09-20 07:07:32.430097',1,25,2530,'150 x Gynatam - Fresenius Kabi (IND) (tamoxifen 20mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1279,'2013-09-20 07:08:50.000925',1,17,96,'Galentic Pharma (India) Pvt. Ltd - India (Galentic Pharma (India) Pvt. Ltd)',2,'Changed address.');
INSERT INTO django_admin_log VALUES(1280,'2013-09-20 07:09:16.658308',1,22,122,'50 g tube',1,'');
INSERT INTO django_admin_log VALUES(1281,'2013-09-20 07:09:57.460417',1,25,2531,'4 x Galentic Pharma (India) Pvt. Ltd (IND) (tetracycline 1% eye oint)',1,'');
INSERT INTO django_admin_log VALUES(1282,'2013-09-20 12:24:21.368578',1,8,49,'Zimbabwe - Natpharm Receipts - September 2013 @ 2013-09-16 05:24:17+00:00',3,'');
INSERT INTO django_admin_log VALUES(1283,'2013-09-24 17:59:32.531173',1,16,147,'Teva (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1284,'2013-09-24 17:59:41.013484',1,16,148,'Kent (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1285,'2013-09-24 17:59:48.225005',1,16,150,'Sterop (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1286,'2013-09-24 17:59:56.065151',1,16,151,'Dr Reddy (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1287,'2013-09-24 18:00:03.071005',1,16,152,'Milpharm (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1288,'2013-09-24 18:00:11.824043',1,16,153,'Kedrion (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1289,'2013-09-24 18:00:19.223007',1,16,154,'Aspen (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1290,'2013-09-24 18:00:26.916715',1,16,155,'Medreich (UNK)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1291,'2013-10-14 18:15:35.988578',1,14,35,'paracetamol 125mg/ml',3,'');
INSERT INTO django_admin_log VALUES(1292,'2013-10-23 04:24:30.247778',1,8,51,'October Mission @ 2013-10-23 06:24:21+02:00',1,'');
INSERT INTO django_admin_log VALUES(1293,'2013-10-23 04:25:44.037755',1,16,156,'Rhydburg Pharmaceuticals (MUS)',1,'');
INSERT INTO django_admin_log VALUES(1294,'2013-10-23 04:26:11.466729',1,16,157,'India (IND)',1,'');
INSERT INTO django_admin_log VALUES(1295,'2013-10-23 04:27:03.097576',1,17,206,'India (Rhydburg Pharmaceuticals)',1,'');
INSERT INTO django_admin_log VALUES(1296,'2013-10-23 04:27:08.234642',1,19,3016,'Rhydburg Pharmaceuticals (MUS) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1297,'2013-10-23 04:27:44.774139',1,18,206,'Rhydburg Pharmaceuticals',1,'');
INSERT INTO django_admin_log VALUES(1298,'2013-10-23 04:28:23.929515',1,24,16,'MRs',1,'');
INSERT INTO django_admin_log VALUES(1299,'2013-10-23 04:29:19.006999',1,25,2532,'1 x Rhydburg Pharmaceuticals (MUS) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1300,'2013-10-23 04:30:15.684020',1,27,13,'MRs',1,'');
INSERT INTO django_admin_log VALUES(1301,'2013-10-23 04:30:35.809789',1,28,194,'1 MRs = 30.0000 USD on 2013-03-26',1,'');
INSERT INTO django_admin_log VALUES(1302,'2013-10-23 04:33:01.076151',1,16,158,'Medicamen Biotech (IND)',1,'');
INSERT INTO django_admin_log VALUES(1303,'2013-10-23 04:33:13.382728',1,17,207,'India (Medicamen Biotech)',1,'');
INSERT INTO django_admin_log VALUES(1304,'2013-10-23 04:33:21.673412',1,19,3017,'Medicamen Biotech (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1305,'2013-10-23 04:34:12.493483',1,18,207,'Medicamen Biotech',1,'');
INSERT INTO django_admin_log VALUES(1306,'2013-10-23 04:35:18.399964',1,25,2533,'1 x Medicamen Biotech (IND) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1307,'2013-10-23 04:35:37.260954',1,28,195,'1 MRs = 30.0000 USD on 2013-03-18',1,'');
INSERT INTO django_admin_log VALUES(1308,'2013-10-23 04:37:01.873837',1,28,196,'1 MRs = 30.0000 USD on 2013-03-31',1,'');
INSERT INTO django_admin_log VALUES(1309,'2013-10-23 04:38:02.690655',1,16,159,'Mascareignes (MUS)',1,'');
INSERT INTO django_admin_log VALUES(1310,'2013-10-23 04:38:26.717042',1,17,208,'Mauritius (Mascareignes)',1,'');
INSERT INTO django_admin_log VALUES(1311,'2013-10-23 04:38:32.539077',1,19,3018,'Mascareignes (MUS) (amitriptyline 10mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1312,'2013-10-23 04:39:10.215224',1,18,208,'Mascareignes',1,'');
INSERT INTO django_admin_log VALUES(1313,'2013-10-23 04:40:02.519735',1,25,2534,'18500 x Mascareignes (MUS) (amitriptyline 10mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1314,'2013-10-23 04:40:35.410547',1,19,3019,'Mascareignes (MUS) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1315,'2013-10-23 04:41:15.313719',1,25,2535,'13000 x Mascareignes (MUS) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1316,'2013-10-23 04:41:28.827882',1,28,197,'1 MRs = 30.0000 USD on 2013-04-01',1,'');
INSERT INTO django_admin_log VALUES(1317,'2013-10-23 04:42:41.020126',1,16,160,'Radicura (IND)',1,'');
INSERT INTO django_admin_log VALUES(1318,'2013-10-23 04:42:56.928069',1,17,209,'India (Radicura)',1,'');
INSERT INTO django_admin_log VALUES(1319,'2013-10-23 04:43:00.074696',1,19,3020,'Radicura (IND) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1320,'2013-10-23 04:43:28.467531',1,18,209,'Radicura',1,'');
INSERT INTO django_admin_log VALUES(1321,'2013-10-23 04:44:25.595371',1,25,2536,'1400 x Radicura (IND) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1322,'2013-10-23 04:45:39.431156',1,25,2534,'18500 x Mascareignes (MUS) (amitriptyline 10mg cap/tab)',2,'Changed incoterm.');
INSERT INTO django_admin_log VALUES(1323,'2013-10-23 04:45:57.111025',1,25,2535,'13000 x Mascareignes (MUS) (amitriptyline 25mg cap/tab)',2,'Changed incoterm.');
INSERT INTO django_admin_log VALUES(1324,'2013-10-23 04:46:22.270435',1,25,2532,'550 x Rhydburg Pharmaceuticals (MUS) (aciclovir 200mg cap/tab)',2,'Changed packsize and volume.');
INSERT INTO django_admin_log VALUES(1325,'2013-10-23 04:46:48.851590',1,25,2533,'1200 x Medicamen Biotech (IND) (albendazole 400mg cap/tab)',2,'Changed packsize and volume.');
INSERT INTO django_admin_log VALUES(1326,'2013-10-23 04:49:30.162387',1,25,2537,'25000 x Indo Amoxycillin 500 - Kopran Ltd (IND) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1327,'2013-10-23 04:49:56.461663',1,28,198,'1 MRs = 30.0000 USD on 2013-03-22',1,'');
INSERT INTO django_admin_log VALUES(1328,'2013-10-23 05:13:27.491390',1,19,3021,'Radicura (IND) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1329,'2013-10-23 05:14:21.245333',1,25,2538,'25000 x Indo Amoxycillin 500 - Kopran Ltd (IND) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1330,'2013-10-23 05:15:36.915489',1,25,2537,'90000 x Radicura (IND) (amoxicillin 250mg cap/tab)',2,'Changed product, price, currency, volume, start_date and end_date.');
INSERT INTO django_admin_log VALUES(1331,'2013-10-23 05:19:57.086473',1,8,48,'Angolan Mission - August 2013 @ 2013-09-13 10:33:09+00:00',3,'');
INSERT INTO django_admin_log VALUES(1332,'2013-10-23 06:15:17.399307',1,19,3022,'Cipla Limited (IND) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1333,'2013-10-23 06:15:48.454135',1,18,210,'Scott',1,'');
INSERT INTO django_admin_log VALUES(1334,'2013-10-23 06:16:26.650135',1,25,2539,'200 x Cipla Limited (IND) (artemether 20mg, lumefantrine 120mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1335,'2013-10-23 06:16:52.862064',1,28,199,'1 MRs = 30.0000 USD on 2013-02-18',1,'');
INSERT INTO django_admin_log VALUES(1336,'2013-10-23 06:17:38.780564',1,16,161,'Norbrook (GBR)',1,'');
INSERT INTO django_admin_log VALUES(1337,'2013-10-23 06:17:56.231313',1,17,210,'United Kingdom (Norbrook)',1,'');
INSERT INTO django_admin_log VALUES(1338,'2013-10-23 06:17:59.109399',1,19,3023,'Norbrook (GBR) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(1339,'2013-10-23 06:18:41.816529',1,25,2540,'1 x Norbrook (GBR) (benzyl penicillin 5.0 mu vial vial)',1,'');
INSERT INTO django_admin_log VALUES(1340,'2013-10-23 06:19:02.372020',1,28,200,'1 MRs = 30.0000 USD on 2013-02-05',1,'');
INSERT INTO django_admin_log VALUES(1341,'2013-10-23 06:19:41.473099',1,19,3024,'Mascareignes (MUS) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1342,'2013-10-23 06:21:53.747250',1,25,2541,'1 x Mascareignes (MUS) (carbamazepine 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1343,'2013-10-23 06:22:10.744661',1,28,201,'1 MRs = 30.0000 USD on 2013-01-31',1,'');
INSERT INTO django_admin_log VALUES(1344,'2013-10-23 06:23:52.543332',1,19,3025,'Umedica Laboratories PVT. LTD (IND) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1345,'2013-10-23 06:27:13.388664',1,18,211,'Umedica',1,'');
INSERT INTO django_admin_log VALUES(1346,'2013-10-23 06:28:04.478717',1,25,2542,'2500 x Umedica Laboratories PVT. LTD (IND) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1347,'2013-10-23 06:33:32.571512',1,28,202,'1 MRs = 30.0000 USD on 2013-07-05',1,'');
INSERT INTO django_admin_log VALUES(1348,'2013-10-23 06:34:28.410498',1,28,203,'1 MRs = 30.0000 USD on 2013-07-11',1,'');
INSERT INTO django_admin_log VALUES(1349,'2013-10-23 06:35:43.276959',1,28,203,'1 MRs = 30.0000 USD on 2013-06-11',2,'Changed date.');
INSERT INTO django_admin_log VALUES(1350,'2013-10-23 06:36:03.306554',1,28,204,'1 MRs = 30.0000 USD on 2013-07-11',1,'');
INSERT INTO django_admin_log VALUES(1351,'2013-10-23 06:36:32.483874',1,28,205,'1 MRs = 30.0000 USD on 2013-09-10',1,'');
INSERT INTO django_admin_log VALUES(1352,'2013-10-23 06:37:03.139209',1,28,206,'1 MRs = 30.0000 USD on 2012-07-05',1,'');
INSERT INTO django_admin_log VALUES(1353,'2013-10-23 07:45:14.994922',1,17,211,'Belgium (Sterop)',1,'');
INSERT INTO django_admin_log VALUES(1354,'2013-10-23 07:45:18.880829',1,19,3026,'Sterop (UNK) (chloroquine 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1355,'2013-10-23 07:46:12.240984',1,25,2543,'125 x Sterop (UNK) (chloroquine 150mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1356,'2013-10-23 07:46:29.027413',1,28,207,'1 MRs = 30.0000 USD on 2013-10-09',1,'');
INSERT INTO django_admin_log VALUES(1357,'2013-10-23 10:41:19.612307',1,25,2532,'550 x Rhydburg Pharmaceuticals (MUS) (aciclovir 200mg cap/tab)',2,'Changed supplier.');
INSERT INTO django_admin_log VALUES(1358,'2013-10-23 11:58:08.116751',1,25,2532,'5500 x Rhydburg Pharmaceuticals (MUS) (aciclovir 200mg cap/tab)',2,'Changed incoterm, price and volume.');
INSERT INTO django_admin_log VALUES(1359,'2013-10-23 12:00:50.938175',1,25,2533,'1200 x Medicamen Biotech (IND) (albendazole 400mg cap/tab)',2,'Changed supplier, incoterm and price.');
INSERT INTO django_admin_log VALUES(1360,'2013-10-23 12:01:52.814366',1,25,2534,'185000 x Mascareignes (MUS) (amitriptyline 10mg cap/tab)',2,'Changed price, volume and method.');
INSERT INTO django_admin_log VALUES(1361,'2013-10-23 12:02:40.831657',1,25,2535,'130000 x Mascareignes (MUS) (amitriptyline 25mg cap/tab)',2,'Changed price, volume and method.');
INSERT INTO django_admin_log VALUES(1362,'2013-10-23 12:03:48.147306',1,25,2536,'140000 x Radicura (IND) (amoxicillin 125mg/5ml susp)',2,'Changed price and volume.');
INSERT INTO django_admin_log VALUES(1363,'2013-10-23 12:04:23.961892',1,22,123,'10 capsule pack',1,'');
INSERT INTO django_admin_log VALUES(1364,'2013-10-23 12:04:58.284650',1,25,2537,'900000 x Radicura (IND) (amoxicillin 250mg cap/tab)',2,'Changed container, supplier, price, volume and method.');
INSERT INTO django_admin_log VALUES(1365,'2013-10-23 12:06:31.389728',1,18,212,'Unicorn',1,'');
INSERT INTO django_admin_log VALUES(1366,'2013-10-23 12:07:25.819668',1,25,2538,'250000 x Indo Amoxycillin 500 - Kopran Ltd (IND) (amoxicillin 500mg cap/tab)',2,'Changed supplier, price, volume, method, start_date and end_date.');
INSERT INTO django_admin_log VALUES(1367,'2013-10-23 12:08:26.776531',1,25,2539,'200 x Cipla Limited (IND) (artemether 20mg, lumefantrine 120mg cap/tab)',2,'Changed incoterm and method.');
INSERT INTO django_admin_log VALUES(1368,'2013-10-23 12:09:02.103139',1,25,2540,'1 x Norbrook (GBR) (benzyl penicillin 5.0 mu vial vial)',3,'');
INSERT INTO django_admin_log VALUES(1369,'2013-10-24 05:37:01.858284',1,25,2541,'300000 x Mascareignes (MUS) (carbamazepine 200mg cap/tab)',2,'Changed container, price and volume.');
INSERT INTO django_admin_log VALUES(1370,'2013-10-24 05:38:33.065580',1,25,2542,'2500 x Umedica Laboratories PVT. LTD (IND) (chlorpheniramine 4mg cap/tab)',2,'Changed price and method.');
INSERT INTO django_admin_log VALUES(1371,'2013-10-24 05:39:34.295912',1,19,3027,'Umedica Laboratories PVT. LTD (IND) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(1372,'2013-10-24 05:40:39.538005',1,25,2544,'100000 x Umedica Laboratories PVT. LTD (IND) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(1373,'2013-10-24 05:41:24.406815',1,18,213,'Ducray/Lenoir',1,'');
INSERT INTO django_admin_log VALUES(1374,'2013-10-24 05:41:55.277190',1,25,2543,'125 x Sterop (UNK) (chloroquine 150mg cap/tab)',2,'Changed supplier, incoterm and method.');
INSERT INTO django_admin_log VALUES(1375,'2013-10-24 05:42:53.037408',1,16,162,'Sanofi Aventis (IND)',1,'');
INSERT INTO django_admin_log VALUES(1376,'2013-10-24 05:43:13.162570',1,17,212,'India (Sanofi Aventis)',1,'');
INSERT INTO django_admin_log VALUES(1377,'2013-10-24 05:43:16.275507',1,19,3028,'Sanofi Aventis (IND) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1378,'2013-10-24 05:44:18.219925',1,25,2545,'75000 x Sanofi Aventis (IND) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1379,'2013-10-24 05:44:52.690534',1,19,3029,'Umedica Laboratories PVT. LTD (IND) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(1380,'2013-10-24 05:45:50.018305',1,25,2546,'25000 x Umedica Laboratories PVT. LTD (IND) (clotrimazole 100mg pessary)',1,'');
INSERT INTO django_admin_log VALUES(1381,'2013-10-24 05:46:23.549792',1,16,163,'Laborate (IND)',1,'');
INSERT INTO django_admin_log VALUES(1382,'2013-10-24 05:46:38.759337',1,17,213,'India (Laborate)',1,'');
INSERT INTO django_admin_log VALUES(1383,'2013-10-24 05:46:41.763784',1,19,3030,'Laborate (IND) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1384,'2013-10-24 05:48:10.945454',1,25,2547,'35000 x Laborate (IND) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1385,'2013-10-24 05:48:55.986591',1,19,3031,'Umedica Laboratories PVT. LTD (IND) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1386,'2013-10-24 05:50:05.610970',1,25,2548,'60000 x Umedica Laboratories PVT. LTD (IND) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1387,'2013-10-24 05:51:22.895784',1,19,3032,'Mascareignes (MUS) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1388,'2013-10-24 05:52:22.067570',1,25,2549,'33000 x Mascareignes (MUS) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1389,'2013-10-24 05:52:57.248276',1,16,164,'Milan (IND)',1,'');
INSERT INTO django_admin_log VALUES(1390,'2013-10-24 05:53:18.351891',1,17,214,'India (Milan)',1,'');
INSERT INTO django_admin_log VALUES(1391,'2013-10-24 05:53:22.847509',1,19,3033,'Milan (IND) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1392,'2013-10-24 05:54:15.373696',1,19,3034,'Umedica Laboratories PVT. LTD (IND) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1393,'2013-10-24 05:55:15.035978',1,25,2550,'400000 x Umedica Laboratories PVT. LTD (IND) (diclofenac 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1394,'2013-10-24 05:55:39.489206',1,19,3035,'Milan (IND) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1395,'2013-10-24 05:56:08.594684',1,18,214,'Milan',1,'');
INSERT INTO django_admin_log VALUES(1396,'2013-10-24 05:56:45.208842',1,25,2551,'1800000 x Milan (IND) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1397,'2013-10-24 05:57:10.254925',1,25,2550,'400000 x Umedica Laboratories PVT. LTD (IND) (diclofenac 25mg cap/tab)',2,'Changed start_date and end_date.');
INSERT INTO django_admin_log VALUES(1398,'2013-10-24 05:57:52.082521',1,16,165,'Sanofi Pasteur (FRA)',1,'');
INSERT INTO django_admin_log VALUES(1399,'2013-10-24 05:58:11.715934',1,17,215,'France (Sanofi Pasteur)',1,'');
INSERT INTO django_admin_log VALUES(1400,'2013-10-24 05:58:14.071723',1,19,3036,'Sanofi Pasteur (FRA) (dpt vaccine injection n/a N/A)',1,'');
INSERT INTO django_admin_log VALUES(1401,'2013-10-24 05:58:38.094861',1,18,215,'Sanofi Pasteur',1,'');
INSERT INTO django_admin_log VALUES(1402,'2013-10-24 05:59:04.076478',1,22,21,'300 ml bottle',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1403,'2013-10-24 05:59:11.453179',1,22,45,'10 dose pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1404,'2013-10-24 05:59:18.510884',1,22,47,'1 dose pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1405,'2013-10-24 05:59:27.010356',1,22,59,'5 dose pack',2,'Changed type.');
INSERT INTO django_admin_log VALUES(1406,'2013-10-24 06:00:14.485737',1,25,2552,'3000 x Sanofi Pasteur (FRA) (dpt vaccine injection n/a N/A)',1,'');
INSERT INTO django_admin_log VALUES(1407,'2013-10-24 06:00:44.744887',1,19,3037,'Radicura (IND) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1408,'2013-10-24 06:01:37.931722',1,25,2553,'90000 x Radicura (IND) (erythromycin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1409,'2013-10-24 06:02:34.076239',1,13,208,'Factor VIII 500IU vial',1,'');
INSERT INTO django_admin_log VALUES(1410,'2013-10-24 06:02:48.134388',1,16,166,'Kedrion (ITA)',1,'');
INSERT INTO django_admin_log VALUES(1411,'2013-10-24 06:03:19.735633',1,17,216,'Italy (Kedrion)',1,'');
INSERT INTO django_admin_log VALUES(1412,'2013-10-24 06:03:24.536813',1,19,3038,'Kedrion (ITA) (Factor VIII 500IU vial)',1,'');
INSERT INTO django_admin_log VALUES(1413,'2013-10-24 06:04:25.440005',1,25,2554,'800 x Kedrion (ITA) (Factor VIII 500IU vial)',1,'');
INSERT INTO django_admin_log VALUES(1414,'2013-10-24 06:05:19.160827',1,25,2554,'800 x Kedrion (UNK) (Human Albumin Serum 20-25% infusion)',2,'Changed product.');
INSERT INTO django_admin_log VALUES(1415,'2013-10-24 06:05:33.589654',1,17,216,'Italy (Kedrion)',3,'');
INSERT INTO django_admin_log VALUES(1416,'2013-10-24 06:06:19.279234',1,16,153,'Kedrion (ITA)',2,'Changed country.');
INSERT INTO django_admin_log VALUES(1417,'2013-10-24 06:22:59.992175',1,16,167,'BDH (IND)',1,'');
INSERT INTO django_admin_log VALUES(1418,'2013-10-24 06:23:16.012935',1,17,216,'India (BDH)',1,'');
INSERT INTO django_admin_log VALUES(1419,'2013-10-24 06:23:19.769027',1,19,3038,'BDH (IND) (ferrous salt 200mg, folic acid 0.4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1420,'2013-10-24 06:23:39.851908',1,18,216,'BDH',1,'');
INSERT INTO django_admin_log VALUES(1421,'2013-10-24 06:24:07.251422',1,25,2555,'500000 x BDH (IND) (ferrous salt 200mg, folic acid 0.4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1422,'2014-01-11 19:13:33.068369',1,27,13,'MUR',2,'Changed code.');
INSERT INTO django_admin_log VALUES(1423,'2014-01-11 19:25:32.158827',1,24,16,'MUR',2,'Changed code.');
INSERT INTO django_admin_log VALUES(1424,'2014-01-14 05:40:58.929322',1,8,52,'DRC January 2014 Mission @ 2014-01-14 07:40:45+02:00',1,'');
INSERT INTO django_admin_log VALUES(1425,'2014-01-14 05:41:51.787012',1,16,168,'Phatkin Labo SPRL (COD)',1,'');
INSERT INTO django_admin_log VALUES(1426,'2014-01-14 05:42:43.290094',1,17,217,'Kinshasa (Phatkin Labo SPRL)',1,'');
INSERT INTO django_admin_log VALUES(1427,'2014-01-14 05:42:48.721899',1,19,3039,'Phatkin Labo SPRL (COD) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1428,'2014-01-14 05:44:44.964204',1,18,217,'Phatkin  Labo SPRL',1,'');
INSERT INTO django_admin_log VALUES(1429,'2014-01-14 05:46:21.605473',1,25,2556,'20000 x Phatkin Labo SPRL (COD) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1430,'2014-01-14 05:47:05.036420',1,16,169,'Zenufa Labo SPRL (COD)',1,'');
INSERT INTO django_admin_log VALUES(1431,'2014-01-14 05:47:37.242561',1,17,218,'Kishasa (Zenufa Labo SPRL)',1,'');
INSERT INTO django_admin_log VALUES(1432,'2014-01-14 05:47:43.253505',1,19,3040,'Zenufa Labo SPRL (COD) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1433,'2014-01-14 05:54:27.151862',1,18,218,'Zenufa Labo SPRL',1,'');
INSERT INTO django_admin_log VALUES(1434,'2014-01-14 05:55:26.596379',1,25,2557,'1030 x Zenufa Labo SPRL (COD) (amoxicillin 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1435,'2014-01-14 05:57:35.551214',1,25,2556,'20000 x Phatkin Labo SPRL (COD) (amoxicillin 125mg/5ml susp)',2,'Changed method.');
INSERT INTO django_admin_log VALUES(1436,'2014-01-14 05:57:53.855263',1,25,2557,'1030 x Zenufa Labo SPRL (COD) (amoxicillin 250mg cap/tab)',2,'Changed method.');
INSERT INTO django_admin_log VALUES(1437,'2014-01-14 06:02:58.161950',1,19,3041,'MicroLab (UNK) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1438,'2014-01-14 06:05:21.736146',1,25,2558,'4500 x MicroLab (UNK) (amoxicillin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1439,'2014-01-14 06:06:52.278410',1,16,22,'MicroLabs (IND)',2,'Changed name and country.');
INSERT INTO django_admin_log VALUES(1440,'2014-01-14 06:07:10.172975',1,17,64,'MicroLabs - Unknown (MicroLabs)',2,'Changed name.');
INSERT INTO django_admin_log VALUES(1441,'2014-01-14 06:08:17.574888',1,17,188,'Veerasandra (MicroLabs)',2,'Changed address.');
INSERT INTO django_admin_log VALUES(1442,'2014-01-14 06:09:04.783303',1,17,219,'Bommasandra (MicroLabs)',1,'');
INSERT INTO django_admin_log VALUES(1443,'2014-01-14 06:09:47.733783',1,17,220,'Goa (MicroLabs)',1,'');
INSERT INTO django_admin_log VALUES(1444,'2014-01-14 06:10:01.164334',1,16,22,'Micro Labs (IND)',2,'Changed name.');
INSERT INTO django_admin_log VALUES(1445,'2014-01-14 06:10:50.513337',1,16,22,'Micro Labs (IND)',2,'Changed website.');
INSERT INTO django_admin_log VALUES(1446,'2014-01-14 06:12:49.863278',1,16,170,'Shijiazuang Pharma (CHN)',1,'');
INSERT INTO django_admin_log VALUES(1447,'2014-01-14 06:14:09.546216',1,17,221,'Workshop 101 (Shijiazuang Pharma)',1,'');
INSERT INTO django_admin_log VALUES(1448,'2014-01-14 06:14:12.632586',1,19,3042,'Shijiazuang Pharma (CHN) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(1449,'2014-01-14 06:14:47.035188',1,22,124,'50 vial pack',1,'');
INSERT INTO django_admin_log VALUES(1450,'2014-01-14 06:17:18.722324',1,25,2559,'600 x Shijiazuang Pharma (CHN) (benzathine penicillin 2.4mu vial)',1,'');
INSERT INTO django_admin_log VALUES(1451,'2014-01-14 06:19:00.721860',1,25,2559,'600 x Shijiazuang Pharma (CHN) (benzathine penicillin 2.4mu vial)',3,'');
INSERT INTO django_admin_log VALUES(1452,'2014-01-14 06:22:56.165140',1,16,171,'Cipla Okasa Pharma Satara (IND)',1,'');
INSERT INTO django_admin_log VALUES(1453,'2014-01-14 06:24:26.229959',1,17,222,'Bhiwandi (Cipla Okasa Pharma Satara)',1,'');
INSERT INTO django_admin_log VALUES(1454,'2014-01-14 06:24:33.743370',1,19,3043,'Cipla Okasa Pharma Satara (IND) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(1455,'2014-01-14 06:25:55.971852',1,25,2559,'10880 x Cipla Okasa Pharma Satara (IND) (ceftriaxone injection 1g vial)',1,'');
INSERT INTO django_admin_log VALUES(1456,'2014-01-14 06:26:38.036524',1,25,2559,'10880 x Cipla Okasa Pharma Satara (IND) (ceftriaxone injection 1g vial)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1457,'2014-01-14 06:27:05.898334',1,25,2559,'10880 x Cipla Okasa Pharma Satara (IND) (ceftriaxone injection 1g vial)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(1458,'2014-01-14 06:27:46.606372',1,19,3044,'Micro Labs (IND) (chloramphenicol 250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1459,'2014-01-14 06:31:48.377086',1,17,223,'Malur Factory (Medopharma Ltd)',1,'');
INSERT INTO django_admin_log VALUES(1460,'2014-01-14 06:32:12.633039',1,19,3045,'Medopharma Ltd (IND) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1461,'2014-01-14 06:33:22.803298',1,25,2560,'20 x Medopharma Ltd (IND) (chlorpheniramine 4mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1462,'2014-01-14 06:38:13.404222',1,17,224,'Aurangabad (Ajanta)',1,'');
INSERT INTO django_admin_log VALUES(1463,'2014-01-14 06:38:31.745358',1,19,3046,'Ajanta (IND) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1464,'2014-01-14 06:39:31.372752',1,25,2561,'200 x Ajanta (IND) (ciprofloxacin 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1465,'2014-01-14 06:42:41.971376',1,16,172,'New Cesamex Labo SPRL (COD)',1,'');
INSERT INTO django_admin_log VALUES(1466,'2014-01-14 06:43:28.699299',1,17,225,'Kinshasa (New Cesamex Labo SPRL)',1,'');
INSERT INTO django_admin_log VALUES(1467,'2014-01-14 06:44:30.020733',1,19,3047,'New Cesamex Labo SPRL (COD) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1468,'2014-01-14 06:46:23.977806',1,18,219,'New Cesamex Labo SPRL',1,'');
INSERT INTO django_admin_log VALUES(1469,'2014-01-14 06:47:10.788087',1,25,2562,'6500 x New Cesamex Labo SPRL (COD) (co-trimoxazole 240mg/5ml syrup/susp)',1,'');
INSERT INTO django_admin_log VALUES(1470,'2014-01-14 06:52:00.859974',1,19,3048,'Zenufa Labo SPRL (COD) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1471,'2014-01-14 06:52:19.310757',1,17,218,'Kinshasa (Zenufa Labo SPRL)',2,'Changed name.');
INSERT INTO django_admin_log VALUES(1472,'2014-01-14 06:53:38.416786',1,25,2563,'39840 x Zenufa Labo SPRL (COD) (co-trimoxazole 480mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1473,'2014-01-14 06:57:22.314196',1,25,2563,'1660 x Zenufa Labo SPRL (COD) (co-trimoxazole 480mg cap/tab)',2,'Changed volume.');
INSERT INTO django_admin_log VALUES(1474,'2014-01-14 06:59:06.294356',1,25,2563,'1660 x Zenufa Labo SPRL (COD) (co-trimoxazole 480mg cap/tab)',2,'No fields changed.');
INSERT INTO django_admin_log VALUES(1475,'2014-01-14 06:59:31.606071',1,19,3049,'New Cesamex Labo SPRL (COD) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1476,'2014-01-14 07:00:13.241733',1,25,2564,'685 x New Cesamex Labo SPRL (COD) (diazepam 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1477,'2014-01-14 07:01:02.182375',1,19,3050,'New Cesamex Labo SPRL (COD) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1478,'2014-01-14 07:01:59.309919',1,25,2565,'797 x New Cesamex Labo SPRL (COD) (diclofenac 50mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1479,'2014-01-14 07:03:08.015309',1,19,3050,'New Cesamex Labo SPRL (COD) (diclofenac 25mg cap/tab)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(1480,'2014-01-14 07:05:22.913317',1,19,3051,'Micro Labs (IND) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1481,'2014-01-14 07:06:14.288144',1,25,2566,'133 x Micro Labs (IND) (glibenclamide 5mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1482,'2014-01-14 08:19:41.965274',1,19,3052,'Micro Labs (IND) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1483,'2014-01-14 08:20:33.747848',1,25,2567,'4879 x Micro Labs (IND) (metronidazole 200-250mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1484,'2014-01-14 08:23:50.349587',1,17,226,'Bhiwandi (Medicamen Biotech)',1,'');
INSERT INTO django_admin_log VALUES(1485,'2014-01-14 08:23:59.874684',1,19,3053,'Medicamen Biotech (IND) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(1486,'2014-01-14 08:25:07.308707',1,25,2568,'2302 x Medicamen Biotech (IND) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(1487,'2014-01-14 08:25:09.954063',1,25,2569,'2302 x Medicamen Biotech (IND) (oral rehydration salts who formula powder)',1,'');
INSERT INTO django_admin_log VALUES(1488,'2014-01-14 08:25:48.576975',1,25,2569,'2302 x Medicamen Biotech (IND) (oral rehydration salts who formula powder)',3,'');
INSERT INTO django_admin_log VALUES(1489,'2014-01-14 08:26:53.243953',1,19,3054,'Zenufa Labo SPRL (COD) (pyrimethamine 25mg, sulphadoxine 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1490,'2014-01-14 08:27:40.440668',1,25,2569,'480 x Zenufa Labo SPRL (COD) (pyrimethamine 25mg, sulphadoxine 500mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1491,'2014-01-14 08:34:53.963286',1,17,227,'Rabale (Galentic Pharma (India) Pvt. Ltd)',1,'');
INSERT INTO django_admin_log VALUES(1492,'2014-01-14 08:50:38.576423',1,19,17,'Paramox - GlaxoSmithKline (IND) (paracetamol 120mg/5ml suspension)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(1493,'2014-01-14 08:50:51.713941',1,19,24,'Panadol - GlaxoSmithKline (IND) (paracetamol 120mg/5ml suspension)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(1494,'2014-01-14 08:51:04.428458',1,19,180,'Barrs Paracetamol Syrup - Barrs Pharmaceutical Industries (Pty) Ltd (ZAF) (paracetamol 120mg/5ml suspension)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(1495,'2014-01-14 08:51:17.514606',1,19,181,'Triotemp - Unknown (UNK) (paracetamol 120mg/5ml suspension)',2,'Changed medicine.');
INSERT INTO django_admin_log VALUES(1496,'2014-01-14 08:53:00.246095',1,13,33,' syrup/susp',3,'');
INSERT INTO django_admin_log VALUES(1497,'2014-01-14 10:26:50.394096',1,25,2566,'133 x Micro Labs (IND) (glibenclamide 5mg cap/tab)',2,'Changed container.');
INSERT INTO django_admin_log VALUES(1498,'2014-02-21 10:42:05.816226',1,3,2,'philippa',1,'');
INSERT INTO django_admin_log VALUES(1499,'2014-02-21 10:42:17.401993',1,3,2,'philippa',2,'Changed password, is_staff and is_superuser.');
INSERT INTO django_admin_log VALUES(1500,'2014-02-21 10:45:47.500017',2,8,53,'Swaziland February Submission @ 2014-02-21 12:45:31+02:00',1,'');
INSERT INTO django_admin_log VALUES(1501,'2014-02-21 10:49:18.093108',2,25,2570,'22553 x Unknown (UNK) (abacavir 300mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1502,'2014-02-21 10:54:46.873115',2,25,2571,'1000 x Unknown (UNK) (abacavir 60mg tablets)',1,'');
INSERT INTO django_admin_log VALUES(1503,'2014-02-21 11:01:38.114249',2,18,220,'Swazipharm',1,'');
INSERT INTO django_admin_log VALUES(1504,'2014-02-21 11:02:59.358363',2,25,2572,'unknown quantity x Lovire - Ranbaxy (IND) (aciclovir 200mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1505,'2014-02-21 11:05:44.929234',2,25,2573,'unknown quantity x Unknown (UNK) (albendazole 400mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1506,'2014-02-21 11:08:03.558277',2,25,2574,'unknown quantity x Sandoz Amitriptyline HCl - Pharma-Q (Pty) Ltd (ZAF) (amitriptyline 25mg cap/tab)',1,'');
INSERT INTO django_admin_log VALUES(1507,'2014-02-21 11:12:41.212612',2,17,228,'JHB (Adcock Ingram Criticalcare Pty Ltd)',1,'');
INSERT INTO django_admin_log VALUES(1508,'2014-02-21 11:12:49.281550',2,19,3055,'Amoxicillin - Adcock Ingram Criticalcare Pty Ltd (ZAF) (amoxicillin 125mg/5ml susp)',1,'');
INSERT INTO django_admin_log VALUES(1509,'2014-02-21 11:14:29.375134',2,18,221,'ASD Medical',1,'');
INSERT INTO django_admin_log VALUES(1510,'2014-02-21 11:15:11.584566',2,25,2575,'unknown quantity x Amoxicillin - Adcock Ingram Criticalcare Pty Ltd (ZAF) (amoxicillin 125mg/5ml susp)',1,'');
CREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
);
INSERT INTO django_content_type VALUES(1,'permission','auth','permission');
INSERT INTO django_content_type VALUES(2,'group','auth','group');
INSERT INTO django_content_type VALUES(3,'user','auth','user');
INSERT INTO django_content_type VALUES(4,'content type','contenttypes','contenttype');
INSERT INTO django_content_type VALUES(5,'session','sessions','session');
INSERT INTO django_content_type VALUES(6,'site','sites','site');
INSERT INTO django_content_type VALUES(7,'log entry','admin','logentry');
INSERT INTO django_content_type VALUES(8,'source','registrations','source');
INSERT INTO django_content_type VALUES(9,'country','registrations','country');
INSERT INTO django_content_type VALUES(10,'incoterm','registrations','incoterm');
INSERT INTO django_content_type VALUES(11,'dosage form','registrations','dosageform');
INSERT INTO django_content_type VALUES(12,'INN','registrations','inn');
INSERT INTO django_content_type VALUES(13,'medicine','registrations','medicine');
INSERT INTO django_content_type VALUES(14,'ingredient','registrations','ingredient');
INSERT INTO django_content_type VALUES(15,'msh price','registrations','mshprice');
INSERT INTO django_content_type VALUES(16,'manufacturer','registrations','manufacturer');
INSERT INTO django_content_type VALUES(17,'Manufacturing Site','registrations','site');
INSERT INTO django_content_type VALUES(18,'supplier','registrations','supplier');
INSERT INTO django_content_type VALUES(19,'product','registrations','product');
INSERT INTO django_content_type VALUES(22,'container','registrations','container');
INSERT INTO django_content_type VALUES(23,'registration','registrations','registration');
INSERT INTO django_content_type VALUES(24,'currency','registrations','currency');
INSERT INTO django_content_type VALUES(25,'procurement','registrations','procurement');
INSERT INTO django_content_type VALUES(26,'context','registrations','context');
INSERT INTO django_content_type VALUES(27,'currency','currency','currency');
INSERT INTO django_content_type VALUES(28,'exchange rate','currency','exchangerate');
INSERT INTO django_content_type VALUES(29,'migration history','south','migrationhistory');
INSERT INTO django_content_type VALUES(30,'country mapping code','registrations','countrymappingcode');
CREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
INSERT INTO django_session VALUES('006945af36f9b2b331d1075b84f7f938','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-06-16 09:25:26.471000');
INSERT INTO django_session VALUES('6b1407f21f8068ec3868e86d7da2a9d8','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-06-19 06:47:13.165000');
INSERT INTO django_session VALUES('34ffc42779e28e1c2e2e0b1bf91dddc2','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-06-26 17:14:41.028989');
INSERT INTO django_session VALUES('da8198ef4a3480464bcb77725a2790c1','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-06-27 06:34:33.364939');
INSERT INTO django_session VALUES('bd5584d27b268949147a513bb91648a3','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-06-27 06:34:35.623066');
INSERT INTO django_session VALUES('f06e9b1be713f65501e7dfd8c030d82f','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-06-27 06:34:39.620490');
INSERT INTO django_session VALUES('b1e65cb33dd35f50417309473d6034d4','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:49:18.521775');
INSERT INTO django_session VALUES('9e9597e164f449dbcfef270e00276f24','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:50:52.244108');
INSERT INTO django_session VALUES('e7ca8160478a792cfe1be88b3317ee72','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:52:34.105135');
INSERT INTO django_session VALUES('d44f6f13aa7b5caa98587f7e8163d0c3','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:53:47.358152');
INSERT INTO django_session VALUES('6357a391cb4602d346e9a97e5a70fe18','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:56:56.483777');
INSERT INTO django_session VALUES('2abe0547b1559e25daacddc87d1074df','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:57:55.762485');
INSERT INTO django_session VALUES('545bfd60b8a771e2cf2679387de98ccb','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-07-02 09:58:32.802171');
INSERT INTO django_session VALUES('b70218307903ed54e54b258a07decc64','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-07-02 10:01:04.213541');
INSERT INTO django_session VALUES('38aab59ee56397001d6c6bfb53140fa7','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-07-17 12:18:44.952747');
INSERT INTO django_session VALUES('010b24628c9b51473bf47164ae900c20','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-07-23 07:42:44.553183');
INSERT INTO django_session VALUES('da93ed31b09296bb90860ef6f4f207f8','NWM0N2M4Njg0NjFmYzkwNWQwMTVkYzY5ODA3MzNhY2E5MWI5NGUzOTqAAn1xAVUKdGVzdGNvb2tp
ZVUGd29ya2VkcQJzLg==
','2013-08-05 09:18:53.557228');
INSERT INTO django_session VALUES('f12982cc846ec04daeece83ac247f448','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-08-05 14:12:52.393318');
INSERT INTO django_session VALUES('70bed2d02654bf39bbbd522d1607b66e','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-08-15 09:18:14.504273');
INSERT INTO django_session VALUES('bb37a1e5a357abdfe5d3d4174258a03d','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-08-26 19:03:30.647347');
INSERT INTO django_session VALUES('61196b32b4d7c0f2b61a0b10243ac1e7','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-09-22 16:51:30.340947');
INSERT INTO django_session VALUES('e812408fb850c104870b57ae3f3fab7b','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-09-30 09:51:05.950037');
INSERT INTO django_session VALUES('09dea9a5080ec80a57a7bf628b4824c8','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-09-30 20:06:42.321208');
INSERT INTO django_session VALUES('0e7e1e7f37e66c52b8eb5fd7ef94e773','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-10-01 07:30:20.820141');
INSERT INTO django_session VALUES('2e2fb36445a77367ba93adc5d313ffbd','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-10-01 10:49:19.148817');
INSERT INTO django_session VALUES('5d6ba8e4e84674483a06ffcb24f90bdf','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-10-03 07:59:58.700323');
INSERT INTO django_session VALUES('60aa21f527bf1c272aa89e35958ee9fd','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-10-08 17:58:06.380629');
INSERT INTO django_session VALUES('897e6d5c699be3a30c7c8d97d8279672','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-10-28 16:11:29.528048');
INSERT INTO django_session VALUES('3bd0f56bb8778546b4033497054717f7','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-11-05 06:07:12.041754');
INSERT INTO django_session VALUES('03e86f13208b2bd80825ccc24babd4df','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-11-05 08:37:51.712281');
INSERT INTO django_session VALUES('0c897dc287c197cf4204b54dd3ec9c34','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-11-05 08:38:00.136266');
INSERT INTO django_session VALUES('a93fe9cc18cd749a44ff5eb0883d97f1','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-11-05 08:38:16.160788');
INSERT INTO django_session VALUES('1bb88ed9e24f0537b74606e875432605','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2013-11-05 08:38:19.125328');
INSERT INTO django_session VALUES('a14d33cc57cadbdadafdaa8429a30c5d','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-11-05 08:38:29.647701');
INSERT INTO django_session VALUES('9fe3d66885571b01373a545e137642b9','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2014-01-25 19:13:12.521754');
INSERT INTO django_session VALUES('09fd8711c167b52d3485ecb39ca95bbd','NTcwM2ExNTgwZmZkOTNmZGMzZjBjOWM5ZWY3OWI4N2RkN2I4OThmMDqAAn1xAS4=
','2014-03-07 10:26:54.900509');
INSERT INTO django_session VALUES('6c1724a63368902a5c25319fe45b2c94','NmY3M2VlODQwM2ZkNDhhNzliYjFmODM0MDcwMmQ0MGQzOThhMTQ5NzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2014-03-07 10:32:17.844363');
INSERT INTO django_session VALUES('1e905f9b9f0ebe47dadb9fe30d071f1f','MGI0YTA3OTg2Yjg5N2QxZTFhOGRiMjI3MDU2MmZjY2QzNWFjZjUyNzqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAnUu
','2014-03-07 10:43:23.470613');
INSERT INTO django_session VALUES('90ed9719b676334d8e8446e81da9caa7','MGFlMzU1YTYyYzhkZTllMTdjNzAwMTk0Yjg0OTU5MjFkMThiNWQ4NzqAAn1xAVUKdGVzdGNvb2tp
ZXECVQZ3b3JrZWRxA3Mu
','2014-03-07 11:56:55.165613');
CREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
);
INSERT INTO django_site VALUES(1,'example.com','example.com');
CREATE TABLE "registrations_container" (
    "id" integer NOT NULL PRIMARY KEY,
    "type" varchar(32) NOT NULL,
    "unit" varchar(32) NOT NULL,
    "quantity" real NOT NULL
);
INSERT INTO registrations_container VALUES(2,'vial','ml',1.0);
INSERT INTO registrations_container VALUES(3,'pack','tablet',500.0);
INSERT INTO registrations_container VALUES(4,'pack','tablet',100.0);
INSERT INTO registrations_container VALUES(6,'pack','tablet',1000.0);
INSERT INTO registrations_container VALUES(7,'pack','tablet',1.0);
INSERT INTO registrations_container VALUES(8,'pack','tablet',2.0);
INSERT INTO registrations_container VALUES(9,'injection','ml',1.0);
INSERT INTO registrations_container VALUES(11,'pack','tablet',10.0);
INSERT INTO registrations_container VALUES(12,'tube','g',5.0);
INSERT INTO registrations_container VALUES(13,'pack','tablet',60.0);
INSERT INTO registrations_container VALUES(14,'pack','tablet',25.0);
INSERT INTO registrations_container VALUES(15,'pack','pessaries (with applicators)',6.0);
INSERT INTO registrations_container VALUES(16,'pack','tablet',120.0);
INSERT INTO registrations_container VALUES(17,'ampoule','ml',2.0);
INSERT INTO registrations_container VALUES(18,'pack','tablet',28.0);
INSERT INTO registrations_container VALUES(19,'pack','sachet',50.0);
INSERT INTO registrations_container VALUES(20,'ampoule','ml',1.0);
INSERT INTO registrations_container VALUES(21,'bottle','ml',300.0);
INSERT INTO registrations_container VALUES(22,'pack','tablet',30.0);
INSERT INTO registrations_container VALUES(23,'tube','g',3.5);
INSERT INTO registrations_container VALUES(24,'pack','tablet',56.0);
INSERT INTO registrations_container VALUES(25,'pack','tablet',21.0);
INSERT INTO registrations_container VALUES(26,'pack','tablet',200.0);
INSERT INTO registrations_container VALUES(27,'pack','tablet',5.0);
INSERT INTO registrations_container VALUES(28,'pack','tablet',14.0);
INSERT INTO registrations_container VALUES(29,'pack','tablet',84.0);
INSERT INTO registrations_container VALUES(30,'bottle','ml',75.0);
INSERT INTO registrations_container VALUES(31,'pack','tablet',15.0);
INSERT INTO registrations_container VALUES(32,'pack','tablet',20.0);
INSERT INTO registrations_container VALUES(33,'bottle','ml',30.0);
INSERT INTO registrations_container VALUES(34,'pack','tablet',40.0);
INSERT INTO registrations_container VALUES(35,'pack','tablet',250.0);
INSERT INTO registrations_container VALUES(36,'injection','ml',3.0);
INSERT INTO registrations_container VALUES(37,'vial','ml',10.0);
INSERT INTO registrations_container VALUES(38,'bottle','ml',50.0);
INSERT INTO registrations_container VALUES(39,'bottle','ml',100.0);
INSERT INTO registrations_container VALUES(40,'bottle','ml',500.0);
INSERT INTO registrations_container VALUES(41,'inhaler','dose',300.0);
INSERT INTO registrations_container VALUES(42,'injection','ml',2.0);
INSERT INTO registrations_container VALUES(43,'pack','tablet',12.0);
INSERT INTO registrations_container VALUES(44,'pack','pessary',6.0);
INSERT INTO registrations_container VALUES(45,'pack','dose',10.0);
INSERT INTO registrations_container VALUES(46,'injection','ml',10.0);
INSERT INTO registrations_container VALUES(47,'pack','dose',1.0);
INSERT INTO registrations_container VALUES(48,'pack','sachet',1.0);
INSERT INTO registrations_container VALUES(49,'inhaler','dose',200.0);
INSERT INTO registrations_container VALUES(50,'bottle','ml',300.0);
INSERT INTO registrations_container VALUES(51,'pack','pessary',1.0);
INSERT INTO registrations_container VALUES(52,'ampoule','ml',2000.0);
INSERT INTO registrations_container VALUES(53,'vial','ml',100.0);
INSERT INTO registrations_container VALUES(54,'pack','pessary',100.0);
INSERT INTO registrations_container VALUES(55,'ampoule','ml',100.0);
INSERT INTO registrations_container VALUES(56,'tube','g',1.0);
INSERT INTO registrations_container VALUES(57,'bottle','ml',1.0);
INSERT INTO registrations_container VALUES(58,'tube','g',4.0);
INSERT INTO registrations_container VALUES(59,'pack','dose',5.0);
INSERT INTO registrations_container VALUES(60,'injection','ml',5.0);
INSERT INTO registrations_container VALUES(61,'ampoule','ml',10.0);
INSERT INTO registrations_container VALUES(62,'pack','sachet',100.0);
INSERT INTO registrations_container VALUES(63,'bottle','ml',200.0);
INSERT INTO registrations_container VALUES(64,'vial','ml',15.0);
INSERT INTO registrations_container VALUES(66,'bottle','ml',2500.0);
INSERT INTO registrations_container VALUES(67,'bottle','ml',2400.0);
INSERT INTO registrations_container VALUES(68,'vial','ml',20.0);
INSERT INTO registrations_container VALUES(69,'pack','tablet',300.0);
INSERT INTO registrations_container VALUES(70,'vial','ml',50.0);
INSERT INTO registrations_container VALUES(71,'vial','ml',25.0);
INSERT INTO registrations_container VALUES(72,'pack','sachet',25.0);
INSERT INTO registrations_container VALUES(73,'pack','tablet',672.0);
INSERT INTO registrations_container VALUES(74,'pack','tablet',90.0);
INSERT INTO registrations_container VALUES(75,'bottle','ml',1000.0);
INSERT INTO registrations_container VALUES(76,'bottle','ml',150.0);
INSERT INTO registrations_container VALUES(77,'pack','capsule',30.0);
INSERT INTO registrations_container VALUES(78,'pack','capsule',15.0);
INSERT INTO registrations_container VALUES(79,'pack','capsule',100.0);
INSERT INTO registrations_container VALUES(80,'pack','capsule',500.0);
INSERT INTO registrations_container VALUES(81,'pack','vial',1.0);
INSERT INTO registrations_container VALUES(82,'pack','capsule',20.0);
INSERT INTO registrations_container VALUES(83,'vial - injection','iu',15.0);
INSERT INTO registrations_container VALUES(84,'injection - syringe','ml',3.0);
INSERT INTO registrations_container VALUES(85,'vial','ml',10.0);
INSERT INTO registrations_container VALUES(86,'pack','tablet (scored)',56.0);
INSERT INTO registrations_container VALUES(87,'pack','tablet (film coated)',120.0);
INSERT INTO registrations_container VALUES(88,'pack','capsule',56.0);
INSERT INTO registrations_container VALUES(89,'pack','capsule',60.0);
INSERT INTO registrations_container VALUES(90,'boxed blister pack','tablet',2.0);
INSERT INTO registrations_container VALUES(91,'patient ready pack','tablet',56.0);
INSERT INTO registrations_container VALUES(93,'bottle - powder for mixture','ml',100.0);
INSERT INTO registrations_container VALUES(94,'pack','capsule',1000.0);
INSERT INTO registrations_container VALUES(96,'pack','tablet',42.0);
INSERT INTO registrations_container VALUES(97,'vial','g',1.0);
INSERT INTO registrations_container VALUES(98,'powder for 1ml injection','mg',150.0);
INSERT INTO registrations_container VALUES(99,'vial','ml',2.0);
INSERT INTO registrations_container VALUES(100,'box','tablet',360.0);
INSERT INTO registrations_container VALUES(101,'box','tablet',180.0);
INSERT INTO registrations_container VALUES(102,'box','tablet',540.0);
INSERT INTO registrations_container VALUES(103,'tin','tablet',60.0);
INSERT INTO registrations_container VALUES(104,'Kit','Kit',1.0);
INSERT INTO registrations_container VALUES(105,'pack','tablet',12.0);
INSERT INTO registrations_container VALUES(106,'pack','tablet',18.0);
INSERT INTO registrations_container VALUES(107,'pack','tablet',24.0);
INSERT INTO registrations_container VALUES(108,'pack','tablet',6.0);
INSERT INTO registrations_container VALUES(109,'bottle','ml',60.0);
INSERT INTO registrations_container VALUES(110,'pack','pessary',15.0);
INSERT INTO registrations_container VALUES(111,'pack','vial',10.0);
INSERT INTO registrations_container VALUES(112,'pack','tablet',80.0);
INSERT INTO registrations_container VALUES(113,'pack','capsule',28.0);
INSERT INTO registrations_container VALUES(114,'pack','capsule',80.0);
INSERT INTO registrations_container VALUES(115,'pack','ampoule',1.0);
INSERT INTO registrations_container VALUES(116,'pack','ampoule',100.0);
INSERT INTO registrations_container VALUES(117,'bottle','ml',240.0);
INSERT INTO registrations_container VALUES(118,'bottle','ml',25.0);
INSERT INTO registrations_container VALUES(119,'vial','ml',5.0);
INSERT INTO registrations_container VALUES(120,'pack','capsule',1.0);
INSERT INTO registrations_container VALUES(121,'pack','vial',100.0);
INSERT INTO registrations_container VALUES(122,'tube','g',50.0);
INSERT INTO registrations_container VALUES(123,'pack','capsule',10.0);
INSERT INTO registrations_container VALUES(124,'pack','vial',50.0);
CREATE TABLE "registrations_context" (
    "id" integer NOT NULL PRIMARY KEY,
    "source_id" integer NOT NULL REFERENCES "registrations_source" ("id"),
    "country_id" integer NOT NULL REFERENCES "registrations_country" ("id"),
    "population" integer,
    "gni_per_capita" real,
    "nmra_name" varchar(32),
    "nmra_website" varchar(200),
    "pspa_name" varchar(32),
    "pspa_website" varchar(200),
    "nmpa_name" varchar(32),
    "nmpa_website" varchar(200),
    "nmpa_status" varchar(32),
    "budget" real,
    "tender_time" integer,
    "tender_currencies" varchar(32),
    "payment_terms" varchar(32),
    "local_preference" varchar(64),
    "import_duty" real,
    "freight" real
);
CREATE TABLE "registrations_country" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(16) NOT NULL,
    "code" varchar(3) NOT NULL
);
INSERT INTO registrations_country VALUES(1,'India','IND');
INSERT INTO registrations_country VALUES(2,'United Kingdom','GBR');
INSERT INTO registrations_country VALUES(3,'South Africa','ZAF');
INSERT INTO registrations_country VALUES(4,'Switzerland','CHE');
INSERT INTO registrations_country VALUES(5,'Cyprus','CYP');
INSERT INTO registrations_country VALUES(6,'Keyna','KEN');
INSERT INTO registrations_country VALUES(7,'Morocco','MAR');
INSERT INTO registrations_country VALUES(8,'Italy','ITA');
INSERT INTO registrations_country VALUES(9,'Mauritius','MUS');
INSERT INTO registrations_country VALUES(10,'Netherlands','NLD');
INSERT INTO registrations_country VALUES(11,'Seychelles','SEY');
INSERT INTO registrations_country VALUES(12,'Unknown','UNK');
INSERT INTO registrations_country VALUES(13,'Hungary','HUN');
INSERT INTO registrations_country VALUES(14,'USA','USA');
INSERT INTO registrations_country VALUES(15,'Botswana','BWA');
INSERT INTO registrations_country VALUES(16,'Zimbabwe','ZWE');
INSERT INTO registrations_country VALUES(17,'Malaysia','MAL');
INSERT INTO registrations_country VALUES(18,'Denmark','DNK');
INSERT INTO registrations_country VALUES(19,'Canada','CAN');
INSERT INTO registrations_country VALUES(20,'Germany','DEU');
INSERT INTO registrations_country VALUES(21,'France','FRA');
INSERT INTO registrations_country VALUES(22,'Malawi','MAW');
INSERT INTO registrations_country VALUES(23,'Mozambique','MOZ');
INSERT INTO registrations_country VALUES(24,'Angola','ANG');
INSERT INTO registrations_country VALUES(25,'DRC','COD');
INSERT INTO registrations_country VALUES(26,'Lesotho','LES');
INSERT INTO registrations_country VALUES(27,'Namibia','NAM');
INSERT INTO registrations_country VALUES(28,'Swaziland','SWZ');
INSERT INTO registrations_country VALUES(29,'Tanzania','TZA');
INSERT INTO registrations_country VALUES(30,'Zambia','ZMB');
INSERT INTO registrations_country VALUES(31,'Spain','ESP');
INSERT INTO registrations_country VALUES(32,'Mexico','MEX');
INSERT INTO registrations_country VALUES(33,'Greece','GRE');
INSERT INTO registrations_country VALUES(35,'Unknown','UKN');
INSERT INTO registrations_country VALUES(36,'Portugal','POR');
INSERT INTO registrations_country VALUES(37,'Brazil','BRA');
INSERT INTO registrations_country VALUES(38,'Saudi Arabia','SAU');
INSERT INTO registrations_country VALUES(39,'China','CHN');
INSERT INTO registrations_country VALUES(40,'Cuba','CUB');
INSERT INTO registrations_country VALUES(41,'Ireland','IRL');
INSERT INTO registrations_country VALUES(42,'Austria','AUT');
CREATE TABLE "registrations_countrymappingcode" ("id" integer NOT NULL PRIMARY KEY, "country_id" integer NOT NULL, "product_id" integer NOT NULL, "code" varchar(50) NOT NULL);
INSERT INTO registrations_countrymappingcode VALUES(2,30,2843,'EM0032');
INSERT INTO registrations_countrymappingcode VALUES(3,30,2844,'EM0033');
INSERT INTO registrations_countrymappingcode VALUES(4,30,2845,'MAL0002');
INSERT INTO registrations_countrymappingcode VALUES(5,30,2846,'MAL0062');
INSERT INTO registrations_countrymappingcode VALUES(6,30,2847,'MAL0003');
INSERT INTO registrations_countrymappingcode VALUES(7,30,2848,'MAL0063');
INSERT INTO registrations_countrymappingcode VALUES(8,30,2849,'MAL0004');
INSERT INTO registrations_countrymappingcode VALUES(9,30,2850,'MAL0001');
INSERT INTO registrations_countrymappingcode VALUES(10,30,2851,'EM0595');
INSERT INTO registrations_countrymappingcode VALUES(11,30,2852,'EM0054');
INSERT INTO registrations_countrymappingcode VALUES(12,30,2853,'EM0055');
INSERT INTO registrations_countrymappingcode VALUES(13,30,2854,'EM0748');
INSERT INTO registrations_countrymappingcode VALUES(14,30,2855,'EM0061');
INSERT INTO registrations_countrymappingcode VALUES(15,30,2856,'EM0062');
INSERT INTO registrations_countrymappingcode VALUES(16,30,2857,'EM0072');
INSERT INTO registrations_countrymappingcode VALUES(17,30,2858,'EM0085');
INSERT INTO registrations_countrymappingcode VALUES(18,30,2859,'EM0090');
INSERT INTO registrations_countrymappingcode VALUES(19,30,2860,'EM0096');
INSERT INTO registrations_countrymappingcode VALUES(20,30,2861,'EM0110');
INSERT INTO registrations_countrymappingcode VALUES(21,30,2862,'EM0524');
INSERT INTO registrations_countrymappingcode VALUES(22,30,2863,'EM0477');
INSERT INTO registrations_countrymappingcode VALUES(25,30,2866,'EM0130');
INSERT INTO registrations_countrymappingcode VALUES(26,30,2867,'EM0195');
INSERT INTO registrations_countrymappingcode VALUES(27,30,2868,'EM0228');
INSERT INTO registrations_countrymappingcode VALUES(28,30,2869,'ARV0012');
INSERT INTO registrations_countrymappingcode VALUES(29,30,2870,'ARV0014');
INSERT INTO registrations_countrymappingcode VALUES(30,30,2871,'ARV0016');
INSERT INTO registrations_countrymappingcode VALUES(31,30,2872,'ARV0053');
INSERT INTO registrations_countrymappingcode VALUES(32,30,2873,'ARV0011');
INSERT INTO registrations_countrymappingcode VALUES(34,30,2875,'ARV0018');
INSERT INTO registrations_countrymappingcode VALUES(35,30,2876,'RH0014');
INSERT INTO registrations_countrymappingcode VALUES(36,30,2877,'RH0023');
INSERT INTO registrations_countrymappingcode VALUES(37,30,2878,'EM0798');
INSERT INTO registrations_countrymappingcode VALUES(39,30,2879,'EM0316');
INSERT INTO registrations_countrymappingcode VALUES(40,30,2880,'ARV0025');
INSERT INTO registrations_countrymappingcode VALUES(41,30,2881,'EM0337');
INSERT INTO registrations_countrymappingcode VALUES(42,30,2882,'EM0338');
INSERT INTO registrations_countrymappingcode VALUES(43,30,2883,'EM0341');
INSERT INTO registrations_countrymappingcode VALUES(44,30,2884,'EM0342');
INSERT INTO registrations_countrymappingcode VALUES(45,30,2885,'EM0621');
INSERT INTO registrations_countrymappingcode VALUES(47,30,2887,'TB0046');
INSERT INTO registrations_countrymappingcode VALUES(48,30,2888,'TB0051');
INSERT INTO registrations_countrymappingcode VALUES(49,30,2889,'TB0053');
INSERT INTO registrations_countrymappingcode VALUES(50,30,2890,'TB0047');
INSERT INTO registrations_countrymappingcode VALUES(51,30,2891,'TB0054');
INSERT INTO registrations_countrymappingcode VALUES(52,30,2892,'EM0413');
INSERT INTO registrations_countrymappingcode VALUES(53,30,2893,'MAL0013');
INSERT INTO registrations_countrymappingcode VALUES(54,30,2894,'EM0576');
INSERT INTO registrations_countrymappingcode VALUES(55,30,2895,'EM0834');
INSERT INTO registrations_countrymappingcode VALUES(56,30,2896,'NCEM0050');
CREATE TABLE "registrations_currency" (
    "id" integer NOT NULL PRIMARY KEY,
    "code" varchar(3) NOT NULL
);
INSERT INTO registrations_currency VALUES(1,'USD');
INSERT INTO registrations_currency VALUES(2,'EUR');
INSERT INTO registrations_currency VALUES(3,'GBP');
INSERT INTO registrations_currency VALUES(4,'ZAR');
INSERT INTO registrations_currency VALUES(5,'BWP');
INSERT INTO registrations_currency VALUES(6,'TZL');
INSERT INTO registrations_currency VALUES(7,'TZS');
INSERT INTO registrations_currency VALUES(8,'ZMK');
INSERT INTO registrations_currency VALUES(9,'NAD');
INSERT INTO registrations_currency VALUES(10,'MWK');
INSERT INTO registrations_currency VALUES(11,'LSL');
INSERT INTO registrations_currency VALUES(13,'SZL');
INSERT INTO registrations_currency VALUES(14,'UNK');
INSERT INTO registrations_currency VALUES(15,'AOA');
INSERT INTO registrations_currency VALUES(16,'MUR');
CREATE TABLE "registrations_dosageform" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(16) NOT NULL
);
INSERT INTO registrations_dosageform VALUES(2,'cap/tab');
INSERT INTO registrations_dosageform VALUES(3,'susp');
INSERT INTO registrations_dosageform VALUES(4,'vial');
INSERT INTO registrations_dosageform VALUES(5,'infusion');
INSERT INTO registrations_dosageform VALUES(6,'powder');
INSERT INTO registrations_dosageform VALUES(7,'syrup/susp');
INSERT INTO registrations_dosageform VALUES(8,'dose');
INSERT INTO registrations_dosageform VALUES(9,'eye oint');
INSERT INTO registrations_dosageform VALUES(19,'tablets');
INSERT INTO registrations_dosageform VALUES(20,'N/A');
INSERT INTO registrations_dosageform VALUES(21,'powder for suspe');
INSERT INTO registrations_dosageform VALUES(23,'injection');
INSERT INTO registrations_dosageform VALUES(24,'powder for injec');
INSERT INTO registrations_dosageform VALUES(26,'oral liquid');
INSERT INTO registrations_dosageform VALUES(27,'cream');
INSERT INTO registrations_dosageform VALUES(28,'pessary');
INSERT INTO registrations_dosageform VALUES(29,'inhaler');
INSERT INTO registrations_dosageform VALUES(30,'ointment');
INSERT INTO registrations_dosageform VALUES(33,'suspension');
INSERT INTO registrations_dosageform VALUES(34,'capules');
INSERT INTO registrations_dosageform VALUES(35,'dispersible tab');
INSERT INTO registrations_dosageform VALUES(36,'syrup');
CREATE TABLE "registrations_incoterm" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(3) NOT NULL,
    "description" varchar(128) NOT NULL
);
INSERT INTO registrations_incoterm VALUES(1,'FOB','Free On Board');
INSERT INTO registrations_incoterm VALUES(2,'CIF','Cost, Insurance and Freight');
INSERT INTO registrations_incoterm VALUES(3,'DDP','Delivered Duty Paid');
INSERT INTO registrations_incoterm VALUES(4,'DAP','Delivered at Place');
INSERT INTO registrations_incoterm VALUES(5,'UNK','Unknown');
INSERT INTO registrations_incoterm VALUES(6,'DDU','Delivered Duty Unpaid');
INSERT INTO registrations_incoterm VALUES(7,'CIP','CIP');
INSERT INTO registrations_incoterm VALUES(8,'loc','Local');
INSERT INTO registrations_incoterm VALUES(9,'CFR','Cost and Freight (named port of destination)');
CREATE TABLE "registrations_ingredient" (
    "id" integer NOT NULL PRIMARY KEY,
    "medicine_id" integer NOT NULL REFERENCES "registrations_medicine" ("id"),
    "inn_id" integer NOT NULL REFERENCES "registrations_inn" ("id"),
    "strength" varchar(16) NOT NULL
);
INSERT INTO registrations_ingredient VALUES(2,2,2,'200mg');
INSERT INTO registrations_ingredient VALUES(3,3,3,'400mg');
INSERT INTO registrations_ingredient VALUES(4,4,4,'25mg');
INSERT INTO registrations_ingredient VALUES(7,7,6,'20mg');
INSERT INTO registrations_ingredient VALUES(8,7,7,'120mg');
INSERT INTO registrations_ingredient VALUES(10,9,9,'2.4mu');
INSERT INTO registrations_ingredient VALUES(11,10,10,'1.0mu');
INSERT INTO registrations_ingredient VALUES(12,11,11,'25mg');
INSERT INTO registrations_ingredient VALUES(13,12,12,'200mg');
INSERT INTO registrations_ingredient VALUES(14,13,13,'1g');
INSERT INTO registrations_ingredient VALUES(15,14,14,'250mg');
INSERT INTO registrations_ingredient VALUES(17,16,15,'250mg');
INSERT INTO registrations_ingredient VALUES(18,17,17,'500mg');
INSERT INTO registrations_ingredient VALUES(23,22,22,'5mg');
INSERT INTO registrations_ingredient VALUES(24,23,23,'50mg');
INSERT INTO registrations_ingredient VALUES(26,25,25,'250mg');
INSERT INTO registrations_ingredient VALUES(27,26,26,'200mg');
INSERT INTO registrations_ingredient VALUES(28,26,27,'0.4mg');
INSERT INTO registrations_ingredient VALUES(30,28,28,'5mg');
INSERT INTO registrations_ingredient VALUES(31,29,29,'200-250mg');
INSERT INTO registrations_ingredient VALUES(32,30,30,'20mg');
INSERT INTO registrations_ingredient VALUES(33,31,31,'who formula');
INSERT INTO registrations_ingredient VALUES(39,37,70,'100mcg/dose');
INSERT INTO registrations_ingredient VALUES(41,39,39,'500mg');
INSERT INTO registrations_ingredient VALUES(42,39,40,'25mg');
INSERT INTO registrations_ingredient VALUES(43,40,41,'1%');
INSERT INTO registrations_ingredient VALUES(45,42,43,'20mg');
INSERT INTO registrations_ingredient VALUES(65,62,49,'15iu');
INSERT INTO registrations_ingredient VALUES(68,65,50,'250mg');
INSERT INTO registrations_ingredient VALUES(75,72,79,'200mg/5ml');
INSERT INTO registrations_ingredient VALUES(78,75,55,'n/a');
INSERT INTO registrations_ingredient VALUES(84,81,59,'0.75mg');
INSERT INTO registrations_ingredient VALUES(86,83,61,'500 mg/ml');
INSERT INTO registrations_ingredient VALUES(91,88,65,'100,000iu');
INSERT INTO registrations_ingredient VALUES(94,91,66,'10iu/ml');
INSERT INTO registrations_ingredient VALUES(103,100,74,'20mg');
INSERT INTO registrations_ingredient VALUES(105,102,75,'300mg');
INSERT INTO registrations_ingredient VALUES(136,130,51,'4mg');
INSERT INTO registrations_ingredient VALUES(137,131,52,'150mg');
INSERT INTO registrations_ingredient VALUES(139,133,53,'100mg');
INSERT INTO registrations_ingredient VALUES(146,140,57,'100 iu/ml');
INSERT INTO registrations_ingredient VALUES(147,141,84,'30mg');
INSERT INTO registrations_ingredient VALUES(149,143,60,'200mg');
INSERT INTO registrations_ingredient VALUES(151,145,62,'n/a');
INSERT INTO registrations_ingredient VALUES(152,146,63,'150mg/ml');
INSERT INTO registrations_ingredient VALUES(153,147,64,'500mg');
INSERT INTO registrations_ingredient VALUES(158,152,32,'120mg/5ml');
INSERT INTO registrations_ingredient VALUES(159,153,68,'60mg');
INSERT INTO registrations_ingredient VALUES(160,154,68,'60mg');
INSERT INTO registrations_ingredient VALUES(162,156,71,'20mg');
INSERT INTO registrations_ingredient VALUES(163,157,72,'200mg/5ml');
INSERT INTO registrations_ingredient VALUES(169,162,78,'80mg');
INSERT INTO registrations_ingredient VALUES(170,102,77,'150mg');
INSERT INTO registrations_ingredient VALUES(171,163,5,'125mg/5ml');
INSERT INTO registrations_ingredient VALUES(172,164,5,'250mg');
INSERT INTO registrations_ingredient VALUES(173,165,17,'250mg');
INSERT INTO registrations_ingredient VALUES(174,166,23,'25mg');
INSERT INTO registrations_ingredient VALUES(175,167,26,'200mg');
INSERT INTO registrations_ingredient VALUES(176,167,27,'0.25mg');
INSERT INTO registrations_ingredient VALUES(177,162,79,'400mg');
INSERT INTO registrations_ingredient VALUES(178,72,78,'40mg/5ml');
INSERT INTO registrations_ingredient VALUES(181,170,10,'5mu');
INSERT INTO registrations_ingredient VALUES(182,153,80,'30mg');
INSERT INTO registrations_ingredient VALUES(183,143,81,'50mg');
INSERT INTO registrations_ingredient VALUES(185,172,5,'500mg');
INSERT INTO registrations_ingredient VALUES(186,173,29,'400-500mg');
INSERT INTO registrations_ingredient VALUES(187,174,4,'10mg');
INSERT INTO registrations_ingredient VALUES(188,175,12,'400mg');
INSERT INTO registrations_ingredient VALUES(191,141,85,'6mg');
INSERT INTO registrations_ingredient VALUES(192,141,86,'50mg');
INSERT INTO registrations_ingredient VALUES(194,179,68,'150mg');
INSERT INTO registrations_ingredient VALUES(195,179,80,'75mg');
INSERT INTO registrations_ingredient VALUES(196,154,80,'30mg');
INSERT INTO registrations_ingredient VALUES(197,154,87,'150mg');
INSERT INTO registrations_ingredient VALUES(198,180,30,'10mg');
INSERT INTO registrations_ingredient VALUES(199,181,71,'10mg');
INSERT INTO registrations_ingredient VALUES(200,182,77,'150mg');
INSERT INTO registrations_ingredient VALUES(201,183,85,'15mg');
INSERT INTO registrations_ingredient VALUES(202,184,86,'200mg');
INSERT INTO registrations_ingredient VALUES(203,185,88,'20-25%');
INSERT INTO registrations_ingredient VALUES(204,186,89,'100mcg');
INSERT INTO registrations_ingredient VALUES(205,187,90,'300IU');
INSERT INTO registrations_ingredient VALUES(210,190,86,'50mg');
INSERT INTO registrations_ingredient VALUES(211,190,85,'20mg');
INSERT INTO registrations_ingredient VALUES(212,191,77,'60mg');
INSERT INTO registrations_ingredient VALUES(213,191,86,'12mg');
INSERT INTO registrations_ingredient VALUES(214,191,85,'100mg');
INSERT INTO registrations_ingredient VALUES(217,193,64,'250mg');
INSERT INTO registrations_ingredient VALUES(218,194,13,'500mg');
INSERT INTO registrations_ingredient VALUES(221,196,77,150);
INSERT INTO registrations_ingredient VALUES(222,196,75,300);
INSERT INTO registrations_ingredient VALUES(223,196,86,200);
INSERT INTO registrations_ingredient VALUES(224,197,75,300);
INSERT INTO registrations_ingredient VALUES(225,198,91,300);
INSERT INTO registrations_ingredient VALUES(226,198,77,300);
INSERT INTO registrations_ingredient VALUES(227,199,86,'50mg/5ml');
INSERT INTO registrations_ingredient VALUES(228,200,91,'300mg');
INSERT INTO registrations_ingredient VALUES(229,200,77,'300mg');
INSERT INTO registrations_ingredient VALUES(230,200,92,'600mg');
INSERT INTO registrations_ingredient VALUES(231,201,92,'200mg');
INSERT INTO registrations_ingredient VALUES(232,202,93,'300mg');
INSERT INTO registrations_ingredient VALUES(233,203,93,'60mg');
INSERT INTO registrations_ingredient VALUES(234,204,92,'50mg');
INSERT INTO registrations_ingredient VALUES(235,205,86,'50mg/2ml');
INSERT INTO registrations_ingredient VALUES(236,206,60,'100mg');
INSERT INTO registrations_ingredient VALUES(237,206,81,'25mg');
INSERT INTO registrations_ingredient VALUES(238,207,60,'80mg');
INSERT INTO registrations_ingredient VALUES(239,207,81,'20mg');
INSERT INTO registrations_ingredient VALUES(240,208,90,'500IU');
CREATE TABLE "registrations_inn" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(128) NOT NULL
);
INSERT INTO registrations_inn VALUES(2,'aciclovir');
INSERT INTO registrations_inn VALUES(3,'albendazole');
INSERT INTO registrations_inn VALUES(4,'amitriptyline');
INSERT INTO registrations_inn VALUES(5,'amoxicillin');
INSERT INTO registrations_inn VALUES(6,'artemether');
INSERT INTO registrations_inn VALUES(7,'lumefantrine');
INSERT INTO registrations_inn VALUES(8,'atenolol');
INSERT INTO registrations_inn VALUES(9,'benzathine penicillin');
INSERT INTO registrations_inn VALUES(10,'benzyl penicillin');
INSERT INTO registrations_inn VALUES(11,'captopril');
INSERT INTO registrations_inn VALUES(12,'carbamazepine');
INSERT INTO registrations_inn VALUES(13,'ceftriaxone injection');
INSERT INTO registrations_inn VALUES(14,'cephalexin');
INSERT INTO registrations_inn VALUES(15,'chloramphenicol');
INSERT INTO registrations_inn VALUES(17,'ciprofloxacin');
INSERT INTO registrations_inn VALUES(18,'cloxacillin');
INSERT INTO registrations_inn VALUES(21,'dextrose');
INSERT INTO registrations_inn VALUES(22,'diazepam');
INSERT INTO registrations_inn VALUES(23,'diclofenac');
INSERT INTO registrations_inn VALUES(24,'doxycycline');
INSERT INTO registrations_inn VALUES(25,'erythromycin');
INSERT INTO registrations_inn VALUES(26,'ferrous salt');
INSERT INTO registrations_inn VALUES(27,'folic acid');
INSERT INTO registrations_inn VALUES(28,'glibenclamide');
INSERT INTO registrations_inn VALUES(29,'metronidazole');
INSERT INTO registrations_inn VALUES(30,'omeprazole');
INSERT INTO registrations_inn VALUES(31,'oral rehydration salts');
INSERT INTO registrations_inn VALUES(32,'paracetamol');
INSERT INTO registrations_inn VALUES(34,'praziquantel');
INSERT INTO registrations_inn VALUES(35,'quinine dihydrochloride');
INSERT INTO registrations_inn VALUES(36,'quinine sulphate');
INSERT INTO registrations_inn VALUES(38,'sodium chloride');
INSERT INTO registrations_inn VALUES(39,'sulphadoxine');
INSERT INTO registrations_inn VALUES(40,'pyrimethamine');
INSERT INTO registrations_inn VALUES(41,'tetracycline');
INSERT INTO registrations_inn VALUES(42,'water for injection');
INSERT INTO registrations_inn VALUES(43,'zinc sulphate');
INSERT INTO registrations_inn VALUES(47,'amodiaquine');
INSERT INTO registrations_inn VALUES(48,'amoxycillin');
INSERT INTO registrations_inn VALUES(49,'bleomycin');
INSERT INTO registrations_inn VALUES(50,'ceftriaxone');
INSERT INTO registrations_inn VALUES(51,'chlorpheniramine');
INSERT INTO registrations_inn VALUES(52,'chloroquine');
INSERT INTO registrations_inn VALUES(53,'clotrimazole');
INSERT INTO registrations_inn VALUES(54,'cotrimoxazole');
INSERT INTO registrations_inn VALUES(55,'dpt vaccine injection');
INSERT INTO registrations_inn VALUES(56,'ferrous sulfate/ folic acid');
INSERT INTO registrations_inn VALUES(57,'insulin isophane');
INSERT INTO registrations_inn VALUES(59,'levonorgestrel');
INSERT INTO registrations_inn VALUES(60,'lopinavir');
INSERT INTO registrations_inn VALUES(61,'magnesium sulphate');
INSERT INTO registrations_inn VALUES(62,'measles vaccine');
INSERT INTO registrations_inn VALUES(63,'medroxyprogesteron acetate');
INSERT INTO registrations_inn VALUES(64,'metformin');
INSERT INTO registrations_inn VALUES(65,'nystatin');
INSERT INTO registrations_inn VALUES(66,'oxytocin');
INSERT INTO registrations_inn VALUES(68,'rifampicin');
INSERT INTO registrations_inn VALUES(70,'salbutamol');
INSERT INTO registrations_inn VALUES(71,'simvastatin');
INSERT INTO registrations_inn VALUES(72,'sodium valproate');
INSERT INTO registrations_inn VALUES(73,'sulfadoxine');
INSERT INTO registrations_inn VALUES(74,'tamoxifen');
INSERT INTO registrations_inn VALUES(75,'zidovudine');
INSERT INTO registrations_inn VALUES(76,'pyremethamine');
INSERT INTO registrations_inn VALUES(77,'lamivudine');
INSERT INTO registrations_inn VALUES(78,'trimethoprim');
INSERT INTO registrations_inn VALUES(79,'sulfamethoxazole');
INSERT INTO registrations_inn VALUES(80,'isoniazid');
INSERT INTO registrations_inn VALUES(81,'ritonavir');
INSERT INTO registrations_inn VALUES(82,'amodiaquine');
INSERT INTO registrations_inn VALUES(83,'clotrimazole');
INSERT INTO registrations_inn VALUES(84,'lamivudine');
INSERT INTO registrations_inn VALUES(85,'stavudine');
INSERT INTO registrations_inn VALUES(86,'nevirapine');
INSERT INTO registrations_inn VALUES(87,'pyrazinamid');
INSERT INTO registrations_inn VALUES(88,'Human Albumin Serum');
INSERT INTO registrations_inn VALUES(89,'Human Immunoglobin - Anti-D');
INSERT INTO registrations_inn VALUES(90,'Factor VIII');
INSERT INTO registrations_inn VALUES(91,'Tenofovir');
INSERT INTO registrations_inn VALUES(92,'efivarenz');
INSERT INTO registrations_inn VALUES(93,'abacavir');
CREATE TABLE "registrations_manufacturer" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(64) NOT NULL,
    "country_id" integer REFERENCES "registrations_country" ("id"),
    "website" varchar(200)
);
INSERT INTO registrations_manufacturer VALUES(1,'Cipla Limited',1,'');
INSERT INTO registrations_manufacturer VALUES(2,'ICON/IPPF',2,'');
INSERT INTO registrations_manufacturer VALUES(3,'Glaxo Smithkline South Africa Pty Ltd',3,'http://www.gsk.com/worldwide/south-africa.html');
INSERT INTO registrations_manufacturer VALUES(4,'Novo Nordisk (Pty) Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(5,'Adcock Ingram Healthcare Pty Ltd',3,'http://www.adcock.co.za/');
INSERT INTO registrations_manufacturer VALUES(6,'F. Hoffmann- La Roche',4,'');
INSERT INTO registrations_manufacturer VALUES(7,'Medochemie Ltd',5,'');
INSERT INTO registrations_manufacturer VALUES(8,'International Healthcare Distributer',3,'');
INSERT INTO registrations_manufacturer VALUES(9,'Serum Institute',1,'');
INSERT INTO registrations_manufacturer VALUES(10,'Wockhardt Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(11,'Fresenius Kabi',1,'');
INSERT INTO registrations_manufacturer VALUES(12,'Quayle Dental Ltd',2,'');
INSERT INTO registrations_manufacturer VALUES(13,'Neon Lab Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(14,'Bayer Healthcare-Middle Africa',6,'');
INSERT INTO registrations_manufacturer VALUES(15,'Aspen Pharmacare',3,'http://www.aspenpharma.com/default.aspx?pid=9&stepid=1&oid=129');
INSERT INTO registrations_manufacturer VALUES(16,'Genpharma',7,'');
INSERT INTO registrations_manufacturer VALUES(17,'Boehringer Ingelheim',3,'');
INSERT INTO registrations_manufacturer VALUES(18,'Sandoz Pty LTD',3,'');
INSERT INTO registrations_manufacturer VALUES(19,'ARI HEALTHCARE PVT LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(20,'Franco India Phar PVT LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(21,'Macleods Pharmaceuticals Limited',1,'http://www.macleodspharma.com/');
INSERT INTO registrations_manufacturer VALUES(22,'Micro Labs',1,'http://www.microlabsltd.com/');
INSERT INTO registrations_manufacturer VALUES(23,'Meditab',12,'');
INSERT INTO registrations_manufacturer VALUES(24,'Unknown',12,'');
INSERT INTO registrations_manufacturer VALUES(27,'Gedeon Richter',12,'http://www.richter.hu/');
INSERT INTO registrations_manufacturer VALUES(28,'Amstelfarma',10,'http://www.amstelfarma.nl/');
INSERT INTO registrations_manufacturer VALUES(29,'Bristol-Myers Squibb',14,'http://www.bms.com/');
INSERT INTO registrations_manufacturer VALUES(30,'Gland Pharma Limited',1,'http://www.glandpharma.com/');
INSERT INTO registrations_manufacturer VALUES(31,'GlaxoSmithKline',1,'');
INSERT INTO registrations_manufacturer VALUES(32,'Torrent Pharmaceuticals Ltd',1,'http://torrent-pharma.com/');
INSERT INTO registrations_manufacturer VALUES(33,'Remedica Ltd',5,'');
INSERT INTO registrations_manufacturer VALUES(34,'Varichem Pharmaceuticals Pty Ltd',16,'');
INSERT INTO registrations_manufacturer VALUES(35,'Premier Pharma Trade Pty Ltd',17,'');
INSERT INTO registrations_manufacturer VALUES(36,'Medix Care (Pty) Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(37,'Karnakata Antibiotics and Pharmaceuticals Limited',1,'');
INSERT INTO registrations_manufacturer VALUES(38,'Cipla Medpro (Pty) Ltd',3,'http://www.ciplamedpro.co.za/');
INSERT INTO registrations_manufacturer VALUES(39,'Glenmark Pharmaceuticals',35,'http://www.glenmarkpharma.com/');
INSERT INTO registrations_manufacturer VALUES(40,'Apotex',19,'http://www.apotex.com/');
INSERT INTO registrations_manufacturer VALUES(41,'Mylan Laboratories Limited',1,'http://mylanlabs.in/');
INSERT INTO registrations_manufacturer VALUES(42,'Abbott GmbH & Co',20,'http://www.abbott.com/');
INSERT INTO registrations_manufacturer VALUES(43,'Adcock Ingram Criticalcare Pty Ltd',3,'http://www.adcock.co.za/');
INSERT INTO registrations_manufacturer VALUES(44,'Martindale Pharmaceuticals',2,'http://www.martindalepharma.co.uk/');
INSERT INTO registrations_manufacturer VALUES(45,'Pfeizer Laboratories Pty Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(46,'Bodene Pty Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(47,'Hovid Bhd',17,'');
INSERT INTO registrations_manufacturer VALUES(48,'Mark Biosciences',1,'');
INSERT INTO registrations_manufacturer VALUES(49,'Astrazeneca Pharmaceuticals Pty Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(50,'Mirren (Pty) Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(51,'FDC Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(52,'Morningside Pharmaceuticals',2,'http://www.morningsidepharm.com/');
INSERT INTO registrations_manufacturer VALUES(53,'Novartis South Africa (Pty) Ltd',3,'http://www.novartis.co.za/');
INSERT INTO registrations_manufacturer VALUES(54,'Alembic Limited',1,'http://www.alembic-india.com/');
INSERT INTO registrations_manufacturer VALUES(55,'Biotech Laboratories (Pty) Ltd',3,'http://www.biotech.co.za/');
INSERT INTO registrations_manufacturer VALUES(56,'Lupin Limited',1,'http://www.lupinworld.com/');
INSERT INTO registrations_manufacturer VALUES(57,'Sanofi-Aventis Pty Ltd',3,'http://www.sanofi-aventis.co.za/');
INSERT INTO registrations_manufacturer VALUES(58,'Galentic Pharma (India) Pvt. Ltd',1,'http://www.galentic.com/');
INSERT INTO registrations_manufacturer VALUES(59,'Matrix Laboratories Limited',1,'http://mylanlabs.in/');
INSERT INTO registrations_manufacturer VALUES(60,'Hetero Drugs Limited',1,'http://www.heterodrugs.com/');
INSERT INTO registrations_manufacturer VALUES(61,'Nutrition (Pty) Ltd',21,'');
INSERT INTO registrations_manufacturer VALUES(62,'Zinplex',3,'http://www.zinplex.co.za/');
INSERT INTO registrations_manufacturer VALUES(63,'Sanofi Synthe Lab',21,'http://en.sanofi.com/');
INSERT INTO registrations_manufacturer VALUES(64,'Ranbaxy',1,'http://www.ranbaxy.com/');
INSERT INTO registrations_manufacturer VALUES(65,'Bio Nova Pharma',1,'http://bionovapharma.net/');
INSERT INTO registrations_manufacturer VALUES(66,'Adcock Ingram Ltd',3,'http://www.adcock.co.za/');
INSERT INTO registrations_manufacturer VALUES(67,'Laboratorios Liconsa S.A.',31,'');
INSERT INTO registrations_manufacturer VALUES(68,'Pharma-Q (Pty) Ltd',3,'http://www.pharmaq.co.za/');
INSERT INTO registrations_manufacturer VALUES(69,'Adcock Ingram Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(70,'Natal Bioproducts Institute',3,'http://www.nbi-kzn.org.za/');
INSERT INTO registrations_manufacturer VALUES(71,'Kopran Ltd',1,'http://www.kopran.com/');
INSERT INTO registrations_manufacturer VALUES(72,'Pharmanova',16,'');
INSERT INTO registrations_manufacturer VALUES(73,'IPCA Laboratories',1,'http://www.ipcalabs.com/');
INSERT INTO registrations_manufacturer VALUES(74,'Barrs Pharmaceutical Industries (Pty) Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(75,'Unique Pharmaceutical Laboratories',1,'');
INSERT INTO registrations_manufacturer VALUES(76,'Lemery SA.',32,'');
INSERT INTO registrations_manufacturer VALUES(78,'Indoco Remedies',1,'');
INSERT INTO registrations_manufacturer VALUES(79,'Sanofi-Aventis Deutschland GmbH',20,'');
INSERT INTO registrations_manufacturer VALUES(80,'Genpharm Inc',19,'');
INSERT INTO registrations_manufacturer VALUES(81,'Catalent France Osny S.A.S',21,'');
INSERT INTO registrations_manufacturer VALUES(82,'Winthrop Pharmaceuticals (Pty) Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(83,'Genepharm S.A.',33,'');
INSERT INTO registrations_manufacturer VALUES(84,'Novartis Farma S.P.A',8,'');
INSERT INTO registrations_manufacturer VALUES(85,'M.J. Biopharm Pvt Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(86,'Emcure Pharmaceuticals Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(87,'Medopharma Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(88,'Medico Remedies',35,'');
INSERT INTO registrations_manufacturer VALUES(90,'Umedica Laboratories PVT. LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(91,'Khandelwal Laboratories PVT LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(92,'Jewim',1,'');
INSERT INTO registrations_manufacturer VALUES(93,'West Coast Pharmaceutical Works ',1,'');
INSERT INTO registrations_manufacturer VALUES(94,'Stallion Laboratories',1,'');
INSERT INTO registrations_manufacturer VALUES(95,'Bharat Parenterals',1,'');
INSERT INTO registrations_manufacturer VALUES(96,'Mercury Laboratories',1,'');
INSERT INTO registrations_manufacturer VALUES(97,'Kausikh Therapeutics (P) LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(98,'Denk Pharma Gmbh & Co. KG',1,'');
INSERT INTO registrations_manufacturer VALUES(99,'Farmalabor Produtos Farmaceuticos LDA',36,'');
INSERT INTO registrations_manufacturer VALUES(100,'Aegis Ltd',5,'');
INSERT INTO registrations_manufacturer VALUES(101,'Lincoln Pharmaceuticals Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(102,'Apex Drug House',1,'');
INSERT INTO registrations_manufacturer VALUES(103,'Intermed',1,'');
INSERT INTO registrations_manufacturer VALUES(104,'Saga Laboratories',1,'');
INSERT INTO registrations_manufacturer VALUES(105,'Fredun Pharmaceutical Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(106,'Protech Biosistems',1,'');
INSERT INTO registrations_manufacturer VALUES(107,'Laboratorio Neo Quimica Com. E Ind Ltda',37,'');
INSERT INTO registrations_manufacturer VALUES(108,'T & T Pharmacare',1,'');
INSERT INTO registrations_manufacturer VALUES(109,'Elys Chemicals Industries Ltd',29,'');
INSERT INTO registrations_manufacturer VALUES(110,'Keko Pharmaceutical Industries Ltd',29,'');
INSERT INTO registrations_manufacturer VALUES(111,'PSI',38,'');
INSERT INTO registrations_manufacturer VALUES(112,'Health Care Pharma PVT LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(113,'Ningbo Tisun Medic Biochemic Co. Ltd',39,'');
INSERT INTO registrations_manufacturer VALUES(114,'Alkem Laboratories LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(115,'Arbro Pharmaceutical LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(116,'Arch Chemicals Pvt Ltd',3,'');
INSERT INTO registrations_manufacturer VALUES(117,'Arbro Pharmaceutical LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(118,'Arubindo Pharmaceuticals',1,'http://www.aurobindo.com/');
INSERT INTO registrations_manufacturer VALUES(119,'Astra Lifecare PVT Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(120,'Balpharma LTD',1,'');
INSERT INTO registrations_manufacturer VALUES(121,'Baroque Pharmaceuticals Pvt Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(122,'Be-Tabs Pharmaceuticals',3,'http://www.be-tabs.co.za/');
INSERT INTO registrations_manufacturer VALUES(123,'Claris Lifesciences Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(124,'Coral Laboratories',1,'');
INSERT INTO registrations_manufacturer VALUES(125,'CSPC Zhongnuo Pharmaceutical (Shijiazhuang) Co. Ltd',39,'');
INSERT INTO registrations_manufacturer VALUES(126,'Dawa Limited',6,'');
INSERT INTO registrations_manufacturer VALUES(127,'Elys Chemicals Industries Ltd',6,'');
INSERT INTO registrations_manufacturer VALUES(128,'Fourrts (India) Lab. PVT. Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(129,'Gracure Pharmaceutical Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(130,'Health Life',1,'');
INSERT INTO registrations_manufacturer VALUES(131,'NCPC International Corporation',39,'');
INSERT INTO registrations_manufacturer VALUES(132,'S. Kant Healthcare Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(133,'SADM  Pharmaceutical Ltd',22,'');
INSERT INTO registrations_manufacturer VALUES(134,'Sinochem Nongbo Ltd',39,'');
INSERT INTO registrations_manufacturer VALUES(135,'Laboralorio Aldo-Union',31,'');
INSERT INTO registrations_manufacturer VALUES(136,'Universal Corporation',12,'');
INSERT INTO registrations_manufacturer VALUES(137,'Tonghua Dongbao Pharmaceutical Co. Ltd',12,'');
INSERT INTO registrations_manufacturer VALUES(138,'Novartis - US',14,'http://www.novartis.com/');
INSERT INTO registrations_manufacturer VALUES(139,'Ajanta',1,'');
INSERT INTO registrations_manufacturer VALUES(140,'Famycare Ltd',1,'');
INSERT INTO registrations_manufacturer VALUES(141,'Basi',36,'');
INSERT INTO registrations_manufacturer VALUES(142,'I.J. Pharmaceutical',1,'');
INSERT INTO registrations_manufacturer VALUES(143,'Farmacuba',40,'');
INSERT INTO registrations_manufacturer VALUES(144,'Geolab',37,'');
INSERT INTO registrations_manufacturer VALUES(145,'Akorn',1,'');
INSERT INTO registrations_manufacturer VALUES(146,'Regain Laboratories',1,'');
INSERT INTO registrations_manufacturer VALUES(147,'Teva',12,'');
INSERT INTO registrations_manufacturer VALUES(148,'Kent',12,'');
INSERT INTO registrations_manufacturer VALUES(149,'Sandoz',12,'');
INSERT INTO registrations_manufacturer VALUES(150,'Sterop',12,'');
INSERT INTO registrations_manufacturer VALUES(151,'Dr Reddy',12,'');
INSERT INTO registrations_manufacturer VALUES(152,'Milpharm',12,'');
INSERT INTO registrations_manufacturer VALUES(153,'Kedrion',8,'');
INSERT INTO registrations_manufacturer VALUES(154,'Aspen',12,'');
INSERT INTO registrations_manufacturer VALUES(155,'Medreich',12,'');
INSERT INTO registrations_manufacturer VALUES(156,'Rhydburg Pharmaceuticals',9,'');
INSERT INTO registrations_manufacturer VALUES(157,'India',1,'');
INSERT INTO registrations_manufacturer VALUES(158,'Medicamen Biotech',1,'');
INSERT INTO registrations_manufacturer VALUES(159,'Mascareignes',9,'');
INSERT INTO registrations_manufacturer VALUES(160,'Radicura',1,'');
INSERT INTO registrations_manufacturer VALUES(161,'Norbrook',2,'');
INSERT INTO registrations_manufacturer VALUES(162,'Sanofi Aventis',1,'');
INSERT INTO registrations_manufacturer VALUES(163,'Laborate',1,'');
INSERT INTO registrations_manufacturer VALUES(164,'Milan',1,'');
INSERT INTO registrations_manufacturer VALUES(165,'Sanofi Pasteur',21,'');
INSERT INTO registrations_manufacturer VALUES(166,'Kedrion',8,'');
INSERT INTO registrations_manufacturer VALUES(167,'BDH',1,'');
INSERT INTO registrations_manufacturer VALUES(168,'Phatkin Labo SPRL',25,'');
INSERT INTO registrations_manufacturer VALUES(169,'Zenufa Labo SPRL',25,'');
INSERT INTO registrations_manufacturer VALUES(170,'Shijiazuang Pharma',39,'');
INSERT INTO registrations_manufacturer VALUES(171,'Cipla Okasa Pharma Satara',1,'');
INSERT INTO registrations_manufacturer VALUES(172,'New Cesamex Labo SPRL',25,'http://www.newcesamex.com/');
CREATE TABLE "registrations_medicine" (
    "id" integer NOT NULL PRIMARY KEY,
    "dosageform_id" integer NOT NULL REFERENCES "registrations_dosageform" ("id"),
    "name" varchar(50)
);
INSERT INTO registrations_medicine VALUES(2,2,'');
INSERT INTO registrations_medicine VALUES(3,2,'');
INSERT INTO registrations_medicine VALUES(4,2,'');
INSERT INTO registrations_medicine VALUES(7,2,'');
INSERT INTO registrations_medicine VALUES(9,4,NULL);
INSERT INTO registrations_medicine VALUES(10,4,'');
INSERT INTO registrations_medicine VALUES(11,2,'');
INSERT INTO registrations_medicine VALUES(12,2,'');
INSERT INTO registrations_medicine VALUES(13,4,'');
INSERT INTO registrations_medicine VALUES(14,2,'');
INSERT INTO registrations_medicine VALUES(16,2,'');
INSERT INTO registrations_medicine VALUES(17,2,'');
INSERT INTO registrations_medicine VALUES(22,2,'');
INSERT INTO registrations_medicine VALUES(23,2,'');
INSERT INTO registrations_medicine VALUES(25,2,'');
INSERT INTO registrations_medicine VALUES(26,2,'');
INSERT INTO registrations_medicine VALUES(28,2,'');
INSERT INTO registrations_medicine VALUES(29,2,'');
INSERT INTO registrations_medicine VALUES(30,2,'');
INSERT INTO registrations_medicine VALUES(31,6,NULL);
INSERT INTO registrations_medicine VALUES(37,29,'');
INSERT INTO registrations_medicine VALUES(39,2,'');
INSERT INTO registrations_medicine VALUES(40,9,'');
INSERT INTO registrations_medicine VALUES(42,2,'');
INSERT INTO registrations_medicine VALUES(62,23,'');
INSERT INTO registrations_medicine VALUES(65,24,'');
INSERT INTO registrations_medicine VALUES(72,7,'co-trimoxazole 240mg/5ml');
INSERT INTO registrations_medicine VALUES(75,20,NULL);
INSERT INTO registrations_medicine VALUES(81,20,'');
INSERT INTO registrations_medicine VALUES(83,23,'magnesium sulphate 500mg/ml injection');
INSERT INTO registrations_medicine VALUES(88,28,'');
INSERT INTO registrations_medicine VALUES(91,23,'');
INSERT INTO registrations_medicine VALUES(100,2,'');
INSERT INTO registrations_medicine VALUES(102,2,'');
INSERT INTO registrations_medicine VALUES(130,2,'');
INSERT INTO registrations_medicine VALUES(131,2,'');
INSERT INTO registrations_medicine VALUES(133,28,NULL);
INSERT INTO registrations_medicine VALUES(140,23,NULL);
INSERT INTO registrations_medicine VALUES(141,35,'');
INSERT INTO registrations_medicine VALUES(143,19,'');
INSERT INTO registrations_medicine VALUES(145,23,NULL);
INSERT INTO registrations_medicine VALUES(146,23,NULL);
INSERT INTO registrations_medicine VALUES(147,2,'');
INSERT INTO registrations_medicine VALUES(152,33,NULL);
INSERT INTO registrations_medicine VALUES(153,19,'');
INSERT INTO registrations_medicine VALUES(154,35,'');
INSERT INTO registrations_medicine VALUES(156,2,'');
INSERT INTO registrations_medicine VALUES(157,36,NULL);
INSERT INTO registrations_medicine VALUES(162,2,'co-trimoxazole 480mg');
INSERT INTO registrations_medicine VALUES(163,3,'');
INSERT INTO registrations_medicine VALUES(164,2,'');
INSERT INTO registrations_medicine VALUES(165,2,'');
INSERT INTO registrations_medicine VALUES(166,2,'');
INSERT INTO registrations_medicine VALUES(167,2,'');
INSERT INTO registrations_medicine VALUES(170,4,'benzyl penicillin 5.0 mu vial');
INSERT INTO registrations_medicine VALUES(172,2,'');
INSERT INTO registrations_medicine VALUES(173,2,'');
INSERT INTO registrations_medicine VALUES(174,2,'');
INSERT INTO registrations_medicine VALUES(175,2,'');
INSERT INTO registrations_medicine VALUES(179,2,'');
INSERT INTO registrations_medicine VALUES(180,2,'');
INSERT INTO registrations_medicine VALUES(181,2,'');
INSERT INTO registrations_medicine VALUES(182,2,'');
INSERT INTO registrations_medicine VALUES(183,2,'');
INSERT INTO registrations_medicine VALUES(184,2,'');
INSERT INTO registrations_medicine VALUES(185,5,'');
INSERT INTO registrations_medicine VALUES(186,23,'');
INSERT INTO registrations_medicine VALUES(187,23,'');
INSERT INTO registrations_medicine VALUES(190,2,'');
INSERT INTO registrations_medicine VALUES(191,2,'');
INSERT INTO registrations_medicine VALUES(193,2,'');
INSERT INTO registrations_medicine VALUES(194,24,'');
INSERT INTO registrations_medicine VALUES(196,19,'');
INSERT INTO registrations_medicine VALUES(197,19,'');
INSERT INTO registrations_medicine VALUES(198,19,'');
INSERT INTO registrations_medicine VALUES(199,7,'');
INSERT INTO registrations_medicine VALUES(200,19,'');
INSERT INTO registrations_medicine VALUES(201,19,'');
INSERT INTO registrations_medicine VALUES(202,19,'');
INSERT INTO registrations_medicine VALUES(203,19,'');
INSERT INTO registrations_medicine VALUES(204,19,'');
INSERT INTO registrations_medicine VALUES(205,7,'');
INSERT INTO registrations_medicine VALUES(206,19,'');
INSERT INTO registrations_medicine VALUES(207,7,'');
INSERT INTO registrations_medicine VALUES(208,4,'Factor VIII 500IU');
CREATE TABLE "registrations_mshprice" (
    "id" integer NOT NULL PRIMARY KEY,
    "medicine_id" integer NOT NULL UNIQUE REFERENCES "registrations_medicine" ("id"),
    "price" real NOT NULL
);
INSERT INTO registrations_mshprice VALUES(1,2,0.0428);
INSERT INTO registrations_mshprice VALUES(2,3,0.0188);
INSERT INTO registrations_mshprice VALUES(3,4,0.011);
INSERT INTO registrations_mshprice VALUES(4,7,0.0766);
INSERT INTO registrations_mshprice VALUES(6,9,0.3241);
INSERT INTO registrations_mshprice VALUES(7,10,0.5325);
INSERT INTO registrations_mshprice VALUES(8,11,0.0113);
INSERT INTO registrations_mshprice VALUES(9,12,0.0299);
INSERT INTO registrations_mshprice VALUES(10,13,0.6184);
INSERT INTO registrations_mshprice VALUES(11,14,0.0466);
INSERT INTO registrations_mshprice VALUES(13,16,0.019);
INSERT INTO registrations_mshprice VALUES(14,17,0.0343);
INSERT INTO registrations_mshprice VALUES(17,22,0.0031);
INSERT INTO registrations_mshprice VALUES(18,23,0.0065);
INSERT INTO registrations_mshprice VALUES(20,25,0.0396);
INSERT INTO registrations_mshprice VALUES(21,26,0.0034);
INSERT INTO registrations_mshprice VALUES(22,28,0.0039);
INSERT INTO registrations_mshprice VALUES(23,29,0.0061);
INSERT INTO registrations_mshprice VALUES(24,30,0.0222);
INSERT INTO registrations_mshprice VALUES(25,31,0.1097);
INSERT INTO registrations_mshprice VALUES(31,37,0.0098);
INSERT INTO registrations_mshprice VALUES(33,39,0.14);
INSERT INTO registrations_mshprice VALUES(34,40,0.0686);
INSERT INTO registrations_mshprice VALUES(36,42,0.0334);
INSERT INTO registrations_mshprice VALUES(39,62,22.0);
INSERT INTO registrations_mshprice VALUES(41,165,0.0292);
INSERT INTO registrations_mshprice VALUES(42,100,0.0998);
INSERT INTO registrations_mshprice VALUES(43,102,0.1714);
INSERT INTO registrations_mshprice VALUES(45,173,0.0154);
INSERT INTO registrations_mshprice VALUES(46,146,0.9);
INSERT INTO registrations_mshprice VALUES(47,83,0.0978);
INSERT INTO registrations_mshprice VALUES(48,91,0.1755);
INSERT INTO registrations_mshprice VALUES(49,131,0.0107);
INSERT INTO registrations_mshprice VALUES(50,163,0.0047);
INSERT INTO registrations_mshprice VALUES(51,167,0.0031);
INSERT INTO registrations_mshprice VALUES(52,81,0.2422);
INSERT INTO registrations_mshprice VALUES(53,72,0.0046);
INSERT INTO registrations_mshprice VALUES(54,140,0.48);
INSERT INTO registrations_mshprice VALUES(55,141,0.0553);
INSERT INTO registrations_mshprice VALUES(56,147,0.028);
INSERT INTO registrations_mshprice VALUES(57,152,0.0026);
INSERT INTO registrations_mshprice VALUES(58,153,0.0185);
INSERT INTO registrations_mshprice VALUES(59,154,0.0235);
INSERT INTO registrations_mshprice VALUES(60,162,0.0129);
INSERT INTO registrations_mshprice VALUES(61,164,0.0188);
INSERT INTO registrations_mshprice VALUES(62,172,0.0305);
INSERT INTO registrations_mshprice VALUES(63,166,0.0063);
INSERT INTO registrations_mshprice VALUES(64,170,0.42);
INSERT INTO registrations_mshprice VALUES(65,174,0.0294);
INSERT INTO registrations_mshprice VALUES(66,175,0.145);
INSERT INTO registrations_mshprice VALUES(67,179,0.0449);
INSERT INTO registrations_mshprice VALUES(68,65,0.3967);
INSERT INTO registrations_mshprice VALUES(69,130,0.0038);
INSERT INTO registrations_mshprice VALUES(70,133,0.0575);
INSERT INTO registrations_mshprice VALUES(71,187,77.86);
INSERT INTO registrations_mshprice VALUES(72,185,0.6213);
INSERT INTO registrations_mshprice VALUES(73,198,0.1973);
INSERT INTO registrations_mshprice VALUES(74,202,0.22);
INSERT INTO registrations_mshprice VALUES(75,194,0.47);
INSERT INTO registrations_mshprice VALUES(76,182,0.0385);
INSERT INTO registrations_mshprice VALUES(77,191,0.078);
INSERT INTO registrations_mshprice VALUES(78,206,0.1143);
INSERT INTO registrations_mshprice VALUES(79,143,0.2375);
INSERT INTO registrations_mshprice VALUES(80,207,0.1183);
INSERT INTO registrations_mshprice VALUES(81,145,0.5876);
INSERT INTO registrations_mshprice VALUES(82,184,0.0611);
INSERT INTO registrations_mshprice VALUES(83,88,0.0405);
INSERT INTO registrations_mshprice VALUES(84,180,0.053);
INSERT INTO registrations_mshprice VALUES(85,181,0.0698);
INSERT INTO registrations_mshprice VALUES(86,156,0.025);
INSERT INTO registrations_mshprice VALUES(87,183,0.0267);
INSERT INTO registrations_mshprice VALUES(88,197,0.1934);
CREATE TABLE "registrations_pack" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(32) NOT NULL
);
INSERT INTO registrations_pack VALUES(1,'pack');
INSERT INTO registrations_pack VALUES(2,'ml (bottle)');
INSERT INTO registrations_pack VALUES(3,'ml');
INSERT INTO registrations_pack VALUES(4,'ml (injection)');
INSERT INTO registrations_pack VALUES(5,'dose');
INSERT INTO registrations_pack VALUES(6,'g (tube)');
INSERT INTO registrations_pack VALUES(7,'unit');
INSERT INTO registrations_pack VALUES(8,'ml (vial)');
INSERT INTO registrations_pack VALUES(9,'ml (ampoule)');
INSERT INTO registrations_pack VALUES(10,'sachets');
INSERT INTO registrations_pack VALUES(11,'pessary');
INSERT INTO registrations_pack VALUES(12,'dose (inhaler)');
CREATE TABLE "registrations_packsize" (
    "id" integer NOT NULL PRIMARY KEY,
    "pack_id" integer REFERENCES "registrations_pack" ("id"),
    "quantity" real NOT NULL
);
INSERT INTO registrations_packsize VALUES(1,1,1.0);
INSERT INTO registrations_packsize VALUES(2,1,500.0);
INSERT INTO registrations_packsize VALUES(3,1,100.0);
INSERT INTO registrations_packsize VALUES(4,3,100.0);
INSERT INTO registrations_packsize VALUES(5,1,1000.0);
INSERT INTO registrations_packsize VALUES(6,4,1.0);
INSERT INTO registrations_packsize VALUES(7,5,200.0);
INSERT INTO registrations_packsize VALUES(8,1,10.0);
INSERT INTO registrations_packsize VALUES(9,6,5.0);
INSERT INTO registrations_packsize VALUES(10,7,15.0);
INSERT INTO registrations_packsize VALUES(11,1,60.0);
INSERT INTO registrations_packsize VALUES(12,1,25.0);
INSERT INTO registrations_packsize VALUES(13,8,1.0);
INSERT INTO registrations_packsize VALUES(14,1,6.0);
INSERT INTO registrations_packsize VALUES(15,1,120.0);
INSERT INTO registrations_packsize VALUES(16,9,2.0);
INSERT INTO registrations_packsize VALUES(17,1,28.0);
INSERT INTO registrations_packsize VALUES(18,10,50.0);
INSERT INTO registrations_packsize VALUES(19,9,1.0);
INSERT INTO registrations_packsize VALUES(20,3,300.0);
INSERT INTO registrations_packsize VALUES(21,1,30.0);
INSERT INTO registrations_packsize VALUES(22,6,3.5);
INSERT INTO registrations_packsize VALUES(23,1,56.0);
INSERT INTO registrations_packsize VALUES(24,1,21.0);
INSERT INTO registrations_packsize VALUES(25,1,200.0);
INSERT INTO registrations_packsize VALUES(26,1,5.0);
INSERT INTO registrations_packsize VALUES(27,1,14.0);
INSERT INTO registrations_packsize VALUES(28,1,84.0);
INSERT INTO registrations_packsize VALUES(29,1,30.0);
INSERT INTO registrations_packsize VALUES(30,1,500.0);
INSERT INTO registrations_packsize VALUES(31,2,1.0);
INSERT INTO registrations_packsize VALUES(32,1,12.0);
INSERT INTO registrations_packsize VALUES(33,11,1.0);
INSERT INTO registrations_packsize VALUES(34,10,1.0);
INSERT INTO registrations_packsize VALUES(35,5,1.0);
INSERT INTO registrations_packsize VALUES(36,6,1.0);
INSERT INTO registrations_packsize VALUES(37,2,100.0);
INSERT INTO registrations_packsize VALUES(38,11,6.0);
INSERT INTO registrations_packsize VALUES(39,11,100.0);
INSERT INTO registrations_packsize VALUES(40,2,10.0);
INSERT INTO registrations_packsize VALUES(41,2,2.0);
INSERT INTO registrations_packsize VALUES(42,5,10.0);
INSERT INTO registrations_packsize VALUES(43,8,10.0);
INSERT INTO registrations_packsize VALUES(44,2,300.0);
INSERT INTO registrations_packsize VALUES(45,8,100.0);
INSERT INTO registrations_packsize VALUES(46,6,4.0);
INSERT INTO registrations_packsize VALUES(47,5,5.0);
INSERT INTO registrations_packsize VALUES(48,2,5.0);
INSERT INTO registrations_packsize VALUES(49,10,100.0);
INSERT INTO registrations_packsize VALUES(50,2,200.0);
INSERT INTO registrations_packsize VALUES(51,1,75.0);
INSERT INTO registrations_packsize VALUES(52,11,56.0);
INSERT INTO registrations_packsize VALUES(53,2,30.0);
INSERT INTO registrations_packsize VALUES(54,1,20.0);
INSERT INTO registrations_packsize VALUES(55,5,1000.0);
INSERT INTO registrations_packsize VALUES(56,1,50.0);
INSERT INTO registrations_packsize VALUES(57,5,28.0);
INSERT INTO registrations_packsize VALUES(58,2,1000.0);
INSERT INTO registrations_packsize VALUES(59,2,500.0);
INSERT INTO registrations_packsize VALUES(60,2,21.0);
INSERT INTO registrations_packsize VALUES(61,1,2.0);
INSERT INTO registrations_packsize VALUES(62,5,20.0);
INSERT INTO registrations_packsize VALUES(63,6,56.0);
INSERT INTO registrations_packsize VALUES(64,2,2500.0);
INSERT INTO registrations_packsize VALUES(65,2,2400.0);
INSERT INTO registrations_packsize VALUES(66,8,20.0);
INSERT INTO registrations_packsize VALUES(67,1,300.0);
INSERT INTO registrations_packsize VALUES(68,1,24.0);
INSERT INTO registrations_packsize VALUES(69,8,50.0);
INSERT INTO registrations_packsize VALUES(70,2,60.0);
INSERT INTO registrations_packsize VALUES(71,2,120.0);
INSERT INTO registrations_packsize VALUES(72,5,50.0);
INSERT INTO registrations_packsize VALUES(73,11,1000.0);
INSERT INTO registrations_packsize VALUES(74,2,25.0);
INSERT INTO registrations_packsize VALUES(75,1,672.0);
INSERT INTO registrations_packsize VALUES(76,5,90.0);
INSERT INTO registrations_packsize VALUES(77,6,30.0);
INSERT INTO registrations_packsize VALUES(78,2,50.0);
INSERT INTO registrations_packsize VALUES(79,10,25.0);
INSERT INTO registrations_packsize VALUES(80,1,90.0);
INSERT INTO registrations_packsize VALUES(81,2,75.0);
INSERT INTO registrations_packsize VALUES(82,1,15.0);
INSERT INTO registrations_packsize VALUES(83,1,40.0);
INSERT INTO registrations_packsize VALUES(84,1,250.0);
INSERT INTO registrations_packsize VALUES(85,4,3.0);
INSERT INTO registrations_packsize VALUES(86,5,300.0);
INSERT INTO registrations_packsize VALUES(87,3,50.0);
INSERT INTO registrations_packsize VALUES(88,4,2.0);
INSERT INTO registrations_packsize VALUES(89,2,2000.0);
INSERT INTO registrations_packsize VALUES(90,1,25.0);
INSERT INTO registrations_packsize VALUES(91,1,100.0);
INSERT INTO registrations_packsize VALUES(92,2,100.0);
INSERT INTO registrations_packsize VALUES(93,1,12.0);
INSERT INTO registrations_packsize VALUES(94,8,1.0);
INSERT INTO registrations_packsize VALUES(95,1,60.0);
INSERT INTO registrations_packsize VALUES(96,1,100.0);
INSERT INTO registrations_packsize VALUES(97,8,1.0);
INSERT INTO registrations_packsize VALUES(98,1,500.0);
INSERT INTO registrations_packsize VALUES(99,1,100.0);
INSERT INTO registrations_packsize VALUES(100,11,6.0);
INSERT INTO registrations_packsize VALUES(101,1,100.0);
INSERT INTO registrations_packsize VALUES(102,5,10.0);
INSERT INTO registrations_packsize VALUES(103,1,100.0);
INSERT INTO registrations_packsize VALUES(104,1,100.0);
INSERT INTO registrations_packsize VALUES(105,2,10.0);
INSERT INTO registrations_packsize VALUES(106,1,120.0);
INSERT INTO registrations_packsize VALUES(107,2,2.0);
INSERT INTO registrations_packsize VALUES(108,5,1.0);
INSERT INTO registrations_packsize VALUES(109,2,1.0);
INSERT INTO registrations_packsize VALUES(110,1,100.0);
INSERT INTO registrations_packsize VALUES(111,1,1000.0);
INSERT INTO registrations_packsize VALUES(112,10,1.0);
INSERT INTO registrations_packsize VALUES(113,2,1.0);
INSERT INTO registrations_packsize VALUES(114,2,100.0);
INSERT INTO registrations_packsize VALUES(115,8,1.0);
INSERT INTO registrations_packsize VALUES(116,5,200.0);
INSERT INTO registrations_packsize VALUES(117,2,300.0);
INSERT INTO registrations_packsize VALUES(118,6,3.5);
INSERT INTO registrations_packsize VALUES(119,1,60.0);
INSERT INTO registrations_packsize VALUES(120,1,25.0);
INSERT INTO registrations_packsize VALUES(121,1,100.0);
INSERT INTO registrations_packsize VALUES(122,2,100.0);
INSERT INTO registrations_packsize VALUES(123,1,12.0);
INSERT INTO registrations_packsize VALUES(124,8,1.0);
INSERT INTO registrations_packsize VALUES(125,1,60.0);
INSERT INTO registrations_packsize VALUES(126,1,100.0);
INSERT INTO registrations_packsize VALUES(127,8,1.0);
INSERT INTO registrations_packsize VALUES(128,1,500.0);
INSERT INTO registrations_packsize VALUES(129,1,100.0);
INSERT INTO registrations_packsize VALUES(130,11,6.0);
INSERT INTO registrations_packsize VALUES(131,1,100.0);
INSERT INTO registrations_packsize VALUES(132,5,10.0);
INSERT INTO registrations_packsize VALUES(133,1,100.0);
INSERT INTO registrations_packsize VALUES(134,1,100.0);
INSERT INTO registrations_packsize VALUES(135,2,10.0);
INSERT INTO registrations_packsize VALUES(136,1,120.0);
INSERT INTO registrations_packsize VALUES(137,2,2.0);
INSERT INTO registrations_packsize VALUES(138,5,1.0);
INSERT INTO registrations_packsize VALUES(139,2,1.0);
INSERT INTO registrations_packsize VALUES(140,1,100.0);
INSERT INTO registrations_packsize VALUES(141,1,1000.0);
INSERT INTO registrations_packsize VALUES(142,10,1.0);
INSERT INTO registrations_packsize VALUES(143,2,1.0);
INSERT INTO registrations_packsize VALUES(144,2,100.0);
INSERT INTO registrations_packsize VALUES(145,8,1.0);
INSERT INTO registrations_packsize VALUES(146,5,200.0);
INSERT INTO registrations_packsize VALUES(147,2,300.0);
INSERT INTO registrations_packsize VALUES(148,6,3.5);
INSERT INTO registrations_packsize VALUES(149,1,60.0);
INSERT INTO registrations_packsize VALUES(150,1,1000.0);
INSERT INTO registrations_packsize VALUES(151,1,1000.0);
INSERT INTO registrations_packsize VALUES(152,2,100.0);
INSERT INTO registrations_packsize VALUES(153,1,1000.0);
INSERT INTO registrations_packsize VALUES(154,1,12.0);
INSERT INTO registrations_packsize VALUES(155,1,1000.0);
INSERT INTO registrations_packsize VALUES(156,8,1.0);
INSERT INTO registrations_packsize VALUES(157,1,1.0);
INSERT INTO registrations_packsize VALUES(158,1,1000.0);
INSERT INTO registrations_packsize VALUES(159,1,1000.0);
INSERT INTO registrations_packsize VALUES(160,1,100.0);
INSERT INTO registrations_packsize VALUES(161,11,1.0);
INSERT INTO registrations_packsize VALUES(162,2,100.0);
INSERT INTO registrations_packsize VALUES(163,1,1000.0);
INSERT INTO registrations_packsize VALUES(164,1,1000.0);
INSERT INTO registrations_packsize VALUES(165,1,1000.0);
INSERT INTO registrations_packsize VALUES(166,1,1000.0);
INSERT INTO registrations_packsize VALUES(167,1,1000.0);
INSERT INTO registrations_packsize VALUES(168,1,1000.0);
INSERT INTO registrations_packsize VALUES(169,2,10.0);
INSERT INTO registrations_packsize VALUES(170,2,2000.0);
INSERT INTO registrations_packsize VALUES(171,2,100.0);
INSERT INTO registrations_packsize VALUES(172,1,1000.0);
INSERT INTO registrations_packsize VALUES(173,11,100.0);
INSERT INTO registrations_packsize VALUES(174,10,50.0);
INSERT INTO registrations_packsize VALUES(175,2,100.0);
INSERT INTO registrations_packsize VALUES(176,2,100.0);
INSERT INTO registrations_packsize VALUES(177,8,1.0);
INSERT INTO registrations_packsize VALUES(178,5,200.0);
INSERT INTO registrations_packsize VALUES(179,1,1000.0);
INSERT INTO registrations_packsize VALUES(180,6,1.0);
INSERT INTO registrations_packsize VALUES(181,1,100.0);
INSERT INTO registrations_packsize VALUES(182,1,1000.0);
INSERT INTO registrations_packsize VALUES(183,1,1000.0);
INSERT INTO registrations_packsize VALUES(184,2,100.0);
INSERT INTO registrations_packsize VALUES(185,1,1000.0);
INSERT INTO registrations_packsize VALUES(186,1,12.0);
INSERT INTO registrations_packsize VALUES(187,1,1000.0);
INSERT INTO registrations_packsize VALUES(188,8,1.0);
INSERT INTO registrations_packsize VALUES(189,1,25.0);
INSERT INTO registrations_packsize VALUES(190,1,100.0);
INSERT INTO registrations_packsize VALUES(191,2,100.0);
INSERT INTO registrations_packsize VALUES(192,1,12.0);
INSERT INTO registrations_packsize VALUES(193,8,1.0);
INSERT INTO registrations_packsize VALUES(194,1,60.0);
INSERT INTO registrations_packsize VALUES(195,1,100.0);
INSERT INTO registrations_packsize VALUES(196,8,1.0);
INSERT INTO registrations_packsize VALUES(197,1,500.0);
INSERT INTO registrations_packsize VALUES(198,1,100.0);
INSERT INTO registrations_packsize VALUES(199,11,6.0);
INSERT INTO registrations_packsize VALUES(200,1,100.0);
INSERT INTO registrations_packsize VALUES(201,5,10.0);
INSERT INTO registrations_packsize VALUES(202,1,100.0);
INSERT INTO registrations_packsize VALUES(203,1,100.0);
INSERT INTO registrations_packsize VALUES(204,2,10.0);
INSERT INTO registrations_packsize VALUES(205,1,120.0);
INSERT INTO registrations_packsize VALUES(206,2,2.0);
INSERT INTO registrations_packsize VALUES(207,5,1.0);
INSERT INTO registrations_packsize VALUES(208,2,1.0);
INSERT INTO registrations_packsize VALUES(209,1,100.0);
INSERT INTO registrations_packsize VALUES(210,1,1000.0);
INSERT INTO registrations_packsize VALUES(211,10,1.0);
INSERT INTO registrations_packsize VALUES(212,2,1.0);
INSERT INTO registrations_packsize VALUES(213,2,100.0);
INSERT INTO registrations_packsize VALUES(214,8,1.0);
INSERT INTO registrations_packsize VALUES(215,5,200.0);
INSERT INTO registrations_packsize VALUES(216,2,300.0);
INSERT INTO registrations_packsize VALUES(217,6,3.5);
INSERT INTO registrations_packsize VALUES(218,1,60.0);
INSERT INTO registrations_packsize VALUES(219,1,1000.0);
INSERT INTO registrations_packsize VALUES(220,1,1000.0);
INSERT INTO registrations_packsize VALUES(221,2,100.0);
INSERT INTO registrations_packsize VALUES(222,1,1000.0);
INSERT INTO registrations_packsize VALUES(223,1,12.0);
INSERT INTO registrations_packsize VALUES(224,1,1000.0);
INSERT INTO registrations_packsize VALUES(225,8,1.0);
INSERT INTO registrations_packsize VALUES(226,1,1.0);
INSERT INTO registrations_packsize VALUES(227,1,1000.0);
INSERT INTO registrations_packsize VALUES(228,1,1000.0);
INSERT INTO registrations_packsize VALUES(229,1,100.0);
INSERT INTO registrations_packsize VALUES(230,11,1.0);
INSERT INTO registrations_packsize VALUES(231,2,100.0);
INSERT INTO registrations_packsize VALUES(232,1,1000.0);
INSERT INTO registrations_packsize VALUES(233,1,1000.0);
INSERT INTO registrations_packsize VALUES(234,1,1000.0);
INSERT INTO registrations_packsize VALUES(235,1,1000.0);
INSERT INTO registrations_packsize VALUES(236,1,1000.0);
INSERT INTO registrations_packsize VALUES(237,1,1000.0);
INSERT INTO registrations_packsize VALUES(238,2,10.0);
INSERT INTO registrations_packsize VALUES(239,2,2000.0);
INSERT INTO registrations_packsize VALUES(240,2,100.0);
INSERT INTO registrations_packsize VALUES(241,1,1000.0);
INSERT INTO registrations_packsize VALUES(242,11,100.0);
INSERT INTO registrations_packsize VALUES(243,10,50.0);
INSERT INTO registrations_packsize VALUES(244,2,100.0);
INSERT INTO registrations_packsize VALUES(245,2,100.0);
INSERT INTO registrations_packsize VALUES(246,8,1.0);
INSERT INTO registrations_packsize VALUES(247,5,200.0);
INSERT INTO registrations_packsize VALUES(248,1,1000.0);
INSERT INTO registrations_packsize VALUES(249,6,1.0);
INSERT INTO registrations_packsize VALUES(250,1,100.0);
INSERT INTO registrations_packsize VALUES(251,1,30.0);
INSERT INTO registrations_packsize VALUES(252,1,1000.0);
INSERT INTO registrations_packsize VALUES(253,2,100.0);
INSERT INTO registrations_packsize VALUES(254,1,500.0);
INSERT INTO registrations_packsize VALUES(255,1,12.0);
INSERT INTO registrations_packsize VALUES(256,1,60.0);
INSERT INTO registrations_packsize VALUES(257,1,30.0);
INSERT INTO registrations_packsize VALUES(258,8,10.0);
INSERT INTO registrations_packsize VALUES(259,1,100.0);
INSERT INTO registrations_packsize VALUES(260,11,6.0);
INSERT INTO registrations_packsize VALUES(261,1,1000.0);
INSERT INTO registrations_packsize VALUES(262,1,1000.0);
INSERT INTO registrations_packsize VALUES(263,1,500.0);
INSERT INTO registrations_packsize VALUES(264,1,100.0);
INSERT INTO registrations_packsize VALUES(265,1,1000.0);
INSERT INTO registrations_packsize VALUES(266,2,10.0);
INSERT INTO registrations_packsize VALUES(267,1,120.0);
INSERT INTO registrations_packsize VALUES(268,2,2.0);
INSERT INTO registrations_packsize VALUES(269,5,10.0);
INSERT INTO registrations_packsize VALUES(270,2,100.0);
INSERT INTO registrations_packsize VALUES(271,1,500.0);
INSERT INTO registrations_packsize VALUES(272,1,500.0);
INSERT INTO registrations_packsize VALUES(273,1,30.0);
INSERT INTO registrations_packsize VALUES(274,2,100.0);
INSERT INTO registrations_packsize VALUES(275,2,100.0);
INSERT INTO registrations_packsize VALUES(276,8,10.0);
INSERT INTO registrations_packsize VALUES(277,5,200.0);
INSERT INTO registrations_packsize VALUES(278,2,300.0);
INSERT INTO registrations_packsize VALUES(279,1,30.0);
INSERT INTO registrations_packsize VALUES(280,6,5.0);
INSERT INTO registrations_packsize VALUES(281,1,60.0);
INSERT INTO registrations_packsize VALUES(282,1,100.0);
INSERT INTO registrations_packsize VALUES(283,2,100.0);
INSERT INTO registrations_packsize VALUES(284,1,12.0);
INSERT INTO registrations_packsize VALUES(285,1,1000.0);
INSERT INTO registrations_packsize VALUES(286,1,100.0);
INSERT INTO registrations_packsize VALUES(287,1,1000.0);
INSERT INTO registrations_packsize VALUES(288,1,1000.0);
INSERT INTO registrations_packsize VALUES(289,1,100.0);
INSERT INTO registrations_packsize VALUES(290,2,100.0);
INSERT INTO registrations_packsize VALUES(291,1,1000.0);
INSERT INTO registrations_packsize VALUES(292,1,1000.0);
INSERT INTO registrations_packsize VALUES(293,1,1000.0);
INSERT INTO registrations_packsize VALUES(294,2,10.0);
INSERT INTO registrations_packsize VALUES(295,2,2.0);
INSERT INTO registrations_packsize VALUES(296,2,1.0);
INSERT INTO registrations_packsize VALUES(297,1,100.0);
INSERT INTO registrations_packsize VALUES(298,1,1000.0);
INSERT INTO registrations_packsize VALUES(299,11,1.0);
INSERT INTO registrations_packsize VALUES(300,1,100.0);
INSERT INTO registrations_packsize VALUES(301,10,1.0);
INSERT INTO registrations_packsize VALUES(302,2,100.0);
INSERT INTO registrations_packsize VALUES(303,8,1.0);
INSERT INTO registrations_packsize VALUES(304,5,200.0);
INSERT INTO registrations_packsize VALUES(305,2,100.0);
INSERT INTO registrations_packsize VALUES(306,1,1000.0);
INSERT INTO registrations_packsize VALUES(307,6,3.5);
INSERT INTO registrations_packsize VALUES(308,1,1000.0);
INSERT INTO registrations_packsize VALUES(309,1,500.0);
INSERT INTO registrations_packsize VALUES(310,1,1000.0);
INSERT INTO registrations_packsize VALUES(311,1,12.0);
INSERT INTO registrations_packsize VALUES(312,1,1000.0);
INSERT INTO registrations_packsize VALUES(313,1,1000.0);
INSERT INTO registrations_packsize VALUES(314,2,1.0);
INSERT INTO registrations_packsize VALUES(315,1,1000.0);
INSERT INTO registrations_packsize VALUES(316,1,500.0);
INSERT INTO registrations_packsize VALUES(317,2,1.0);
INSERT INTO registrations_packsize VALUES(318,1,500.0);
INSERT INTO registrations_packsize VALUES(319,8,100.0);
INSERT INTO registrations_packsize VALUES(320,1,100.0);
INSERT INTO registrations_packsize VALUES(321,6,4.0);
INSERT INTO registrations_packsize VALUES(322,1,500.0);
INSERT INTO registrations_packsize VALUES(323,2,100.0);
INSERT INTO registrations_packsize VALUES(324,1,12.0);
INSERT INTO registrations_packsize VALUES(325,8,1.0);
INSERT INTO registrations_packsize VALUES(326,1,100.0);
INSERT INTO registrations_packsize VALUES(327,8,1.0);
INSERT INTO registrations_packsize VALUES(328,1,1000.0);
INSERT INTO registrations_packsize VALUES(329,1,100.0);
INSERT INTO registrations_packsize VALUES(330,1,10.0);
INSERT INTO registrations_packsize VALUES(331,2,100.0);
INSERT INTO registrations_packsize VALUES(332,1,500.0);
INSERT INTO registrations_packsize VALUES(333,1,1000.0);
INSERT INTO registrations_packsize VALUES(334,5,5.0);
INSERT INTO registrations_packsize VALUES(335,1,100.0);
INSERT INTO registrations_packsize VALUES(336,1,1000.0);
INSERT INTO registrations_packsize VALUES(337,1,100.0);
INSERT INTO registrations_packsize VALUES(338,2,5.0);
INSERT INTO registrations_packsize VALUES(339,1,60.0);
INSERT INTO registrations_packsize VALUES(340,1,120.0);
INSERT INTO registrations_packsize VALUES(341,2,10.0);
INSERT INTO registrations_packsize VALUES(342,5,10.0);
INSERT INTO registrations_packsize VALUES(343,2,1.0);
INSERT INTO registrations_packsize VALUES(344,1,100.0);
INSERT INTO registrations_packsize VALUES(345,10,100.0);
INSERT INTO registrations_packsize VALUES(346,2,1.0);
INSERT INTO registrations_packsize VALUES(347,2,100.0);
INSERT INTO registrations_packsize VALUES(348,8,10.0);
INSERT INTO registrations_packsize VALUES(349,1,100.0);
INSERT INTO registrations_packsize VALUES(350,1,28.0);
INSERT INTO registrations_packsize VALUES(351,5,200.0);
INSERT INTO registrations_packsize VALUES(352,2,200.0);
INSERT INTO registrations_packsize VALUES(353,1,12.0);
INSERT INTO registrations_packsize VALUES(354,1,100.0);
INSERT INTO registrations_packsize VALUES(355,6,3.5);
INSERT INTO registrations_packsize VALUES(356,1,60.0);
INSERT INTO registrations_packsize VALUES(357,1,1.0);
INSERT INTO registrations_packsize VALUES(358,1,1.0);
INSERT INTO registrations_packsize VALUES(359,2,100.0);
INSERT INTO registrations_packsize VALUES(360,1,12.0);
INSERT INTO registrations_packsize VALUES(361,1,1.0);
INSERT INTO registrations_packsize VALUES(362,8,1.0);
INSERT INTO registrations_packsize VALUES(363,1,1.0);
INSERT INTO registrations_packsize VALUES(364,1,1.0);
INSERT INTO registrations_packsize VALUES(365,1,1.0);
INSERT INTO registrations_packsize VALUES(366,11,6.0);
INSERT INTO registrations_packsize VALUES(367,2,100.0);
INSERT INTO registrations_packsize VALUES(368,1,1.0);
INSERT INTO registrations_packsize VALUES(369,1,1.0);
INSERT INTO registrations_packsize VALUES(370,1,1.0);
INSERT INTO registrations_packsize VALUES(371,5,10.0);
INSERT INTO registrations_packsize VALUES(372,1,1.0);
INSERT INTO registrations_packsize VALUES(373,1,1.0);
INSERT INTO registrations_packsize VALUES(374,5,1.0);
INSERT INTO registrations_packsize VALUES(375,1,1.0);
INSERT INTO registrations_packsize VALUES(376,1,1.0);
INSERT INTO registrations_packsize VALUES(377,1,1.0);
INSERT INTO registrations_packsize VALUES(378,10,1.0);
INSERT INTO registrations_packsize VALUES(379,2,1.0);
INSERT INTO registrations_packsize VALUES(380,2,100.0);
INSERT INTO registrations_packsize VALUES(381,8,1.0);
INSERT INTO registrations_packsize VALUES(382,5,200.0);
INSERT INTO registrations_packsize VALUES(383,2,150.0);
INSERT INTO registrations_packsize VALUES(384,1,1.0);
INSERT INTO registrations_packsize VALUES(385,1,1.0);
INSERT INTO registrations_packsize VALUES(386,6,3.5);
INSERT INTO registrations_packsize VALUES(387,1,500.0);
INSERT INTO registrations_packsize VALUES(388,2,100.0);
INSERT INTO registrations_packsize VALUES(389,1,60.0);
INSERT INTO registrations_packsize VALUES(390,1,1000.0);
INSERT INTO registrations_packsize VALUES(391,1,1000.0);
INSERT INTO registrations_packsize VALUES(392,1,100.0);
INSERT INTO registrations_packsize VALUES(393,11,6.0);
INSERT INTO registrations_packsize VALUES(394,2,100.0);
INSERT INTO registrations_packsize VALUES(395,1,500.0);
INSERT INTO registrations_packsize VALUES(396,1,1000.0);
INSERT INTO registrations_packsize VALUES(397,5,10.0);
INSERT INTO registrations_packsize VALUES(398,1,1000.0);
INSERT INTO registrations_packsize VALUES(399,1,1000.0);
INSERT INTO registrations_packsize VALUES(400,1,1000.0);
INSERT INTO registrations_packsize VALUES(401,2,10.0);
INSERT INTO registrations_packsize VALUES(402,1,30.0);
INSERT INTO registrations_packsize VALUES(403,1,120.0);
INSERT INTO registrations_packsize VALUES(404,2,100.0);
INSERT INTO registrations_packsize VALUES(405,5,10.0);
INSERT INTO registrations_packsize VALUES(406,1,500.0);
INSERT INTO registrations_packsize VALUES(407,1,1000.0);
INSERT INTO registrations_packsize VALUES(408,1,28.0);
INSERT INTO registrations_packsize VALUES(409,10,100.0);
INSERT INTO registrations_packsize VALUES(410,2,2500.0);
INSERT INTO registrations_packsize VALUES(411,8,1.0);
INSERT INTO registrations_packsize VALUES(412,1,60.0);
INSERT INTO registrations_packsize VALUES(413,1,84.0);
INSERT INTO registrations_packsize VALUES(414,5,200.0);
INSERT INTO registrations_packsize VALUES(415,6,5.0);
INSERT INTO registrations_packsize VALUES(416,1,100.0);
INSERT INTO registrations_packsize VALUES(417,1,500.0);
INSERT INTO registrations_packsize VALUES(418,2,2400.0);
INSERT INTO registrations_packsize VALUES(419,1,100.0);
INSERT INTO registrations_packsize VALUES(420,1,500.0);
INSERT INTO registrations_packsize VALUES(421,8,20.0);
INSERT INTO registrations_packsize VALUES(422,1,1000.0);
INSERT INTO registrations_packsize VALUES(423,1,1000.0);
INSERT INTO registrations_packsize VALUES(424,1,100.0);
INSERT INTO registrations_packsize VALUES(425,11,6.0);
INSERT INTO registrations_packsize VALUES(426,1,100.0);
INSERT INTO registrations_packsize VALUES(427,1,1000.0);
INSERT INTO registrations_packsize VALUES(428,1,100.0);
INSERT INTO registrations_packsize VALUES(429,1,1000.0);
INSERT INTO registrations_packsize VALUES(430,1,100.0);
INSERT INTO registrations_packsize VALUES(431,1,1000.0);
INSERT INTO registrations_packsize VALUES(432,5,200.0);
INSERT INTO registrations_packsize VALUES(433,1,100.0);
INSERT INTO registrations_packsize VALUES(434,1,300.0);
INSERT INTO registrations_packsize VALUES(435,1,100.0);
INSERT INTO registrations_packsize VALUES(436,6,5.0);
INSERT INTO registrations_packsize VALUES(437,1,60.0);
INSERT INTO registrations_packsize VALUES(438,1,100.0);
INSERT INTO registrations_packsize VALUES(439,1,500.0);
INSERT INTO registrations_packsize VALUES(440,2,2400.0);
INSERT INTO registrations_packsize VALUES(441,1,100.0);
INSERT INTO registrations_packsize VALUES(442,1,500.0);
INSERT INTO registrations_packsize VALUES(443,8,20.0);
INSERT INTO registrations_packsize VALUES(444,1,1000.0);
INSERT INTO registrations_packsize VALUES(445,1,1000.0);
INSERT INTO registrations_packsize VALUES(446,1,100.0);
INSERT INTO registrations_packsize VALUES(447,11,6.0);
INSERT INTO registrations_packsize VALUES(448,1,100.0);
INSERT INTO registrations_packsize VALUES(449,1,1000.0);
INSERT INTO registrations_packsize VALUES(450,1,100.0);
INSERT INTO registrations_packsize VALUES(451,1,1000.0);
INSERT INTO registrations_packsize VALUES(452,1,100.0);
INSERT INTO registrations_packsize VALUES(453,1,1000.0);
INSERT INTO registrations_packsize VALUES(454,5,200.0);
INSERT INTO registrations_packsize VALUES(455,1,100.0);
INSERT INTO registrations_packsize VALUES(456,1,300.0);
INSERT INTO registrations_packsize VALUES(457,1,100.0);
INSERT INTO registrations_packsize VALUES(458,6,5.0);
INSERT INTO registrations_packsize VALUES(459,1,60.0);
INSERT INTO registrations_packsize VALUES(460,1,100.0);
INSERT INTO registrations_packsize VALUES(461,1,100.0);
INSERT INTO registrations_packsize VALUES(462,1,1000.0);
INSERT INTO registrations_packsize VALUES(463,1,1000.0);
INSERT INTO registrations_packsize VALUES(464,1,24.0);
INSERT INTO registrations_packsize VALUES(465,2,100.0);
INSERT INTO registrations_packsize VALUES(466,1,1000.0);
INSERT INTO registrations_packsize VALUES(467,1,12.0);
INSERT INTO registrations_packsize VALUES(468,8,10.0);
INSERT INTO registrations_packsize VALUES(469,1,1000.0);
INSERT INTO registrations_packsize VALUES(470,8,50.0);
INSERT INTO registrations_packsize VALUES(471,1,1000.0);
INSERT INTO registrations_packsize VALUES(472,1,1000.0);
INSERT INTO registrations_packsize VALUES(473,1,1000.0);
INSERT INTO registrations_packsize VALUES(474,1,1000.0);
INSERT INTO registrations_packsize VALUES(475,2,100.0);
INSERT INTO registrations_packsize VALUES(476,1,1000.0);
INSERT INTO registrations_packsize VALUES(477,1,1000.0);
INSERT INTO registrations_packsize VALUES(478,1,1000.0);
INSERT INTO registrations_packsize VALUES(479,1,1000.0);
INSERT INTO registrations_packsize VALUES(480,1,1000.0);
INSERT INTO registrations_packsize VALUES(481,2,10.0);
INSERT INTO registrations_packsize VALUES(482,1,60.0);
INSERT INTO registrations_packsize VALUES(483,1,2.0);
INSERT INTO registrations_packsize VALUES(484,1,120.0);
INSERT INTO registrations_packsize VALUES(485,2,50.0);
INSERT INTO registrations_packsize VALUES(486,2,25.0);
INSERT INTO registrations_packsize VALUES(487,1,1000.0);
INSERT INTO registrations_packsize VALUES(488,10,25.0);
INSERT INTO registrations_packsize VALUES(489,2,100.0);
INSERT INTO registrations_packsize VALUES(490,8,20.0);
INSERT INTO registrations_packsize VALUES(491,1,672.0);
INSERT INTO registrations_packsize VALUES(492,1,90.0);
INSERT INTO registrations_packsize VALUES(493,1,1000.0);
INSERT INTO registrations_packsize VALUES(494,1,30.0);
INSERT INTO registrations_packsize VALUES(495,1,60.0);
INSERT INTO registrations_packsize VALUES(496,1,100.0);
INSERT INTO registrations_packsize VALUES(497,1,25.0);
INSERT INTO registrations_packsize VALUES(498,1,100.0);
INSERT INTO registrations_packsize VALUES(499,1,1000.0);
INSERT INTO registrations_packsize VALUES(500,1,1000.0);
INSERT INTO registrations_packsize VALUES(501,1,12.0);
INSERT INTO registrations_packsize VALUES(502,1,100.0);
INSERT INTO registrations_packsize VALUES(503,1,100.0);
INSERT INTO registrations_packsize VALUES(504,1,1000.0);
INSERT INTO registrations_packsize VALUES(505,1,1000.0);
INSERT INTO registrations_packsize VALUES(506,11,6.0);
INSERT INTO registrations_packsize VALUES(507,2,100.0);
INSERT INTO registrations_packsize VALUES(508,1,500.0);
INSERT INTO registrations_packsize VALUES(509,1,1000.0);
INSERT INTO registrations_packsize VALUES(510,2,10.0);
INSERT INTO registrations_packsize VALUES(511,1,60.0);
INSERT INTO registrations_packsize VALUES(512,1,500.0);
INSERT INTO registrations_packsize VALUES(513,1,1000.0);
INSERT INTO registrations_packsize VALUES(514,2,1.0);
INSERT INTO registrations_packsize VALUES(515,2,1000.0);
INSERT INTO registrations_packsize VALUES(516,1,1000.0);
INSERT INTO registrations_packsize VALUES(517,5,200.0);
INSERT INTO registrations_packsize VALUES(518,6,3.5);
INSERT INTO registrations_packsize VALUES(519,1,60.0);
INSERT INTO registrations_packsize VALUES(520,1,25.0);
INSERT INTO registrations_packsize VALUES(521,1,1.0);
INSERT INTO registrations_packsize VALUES(522,1,84.0);
INSERT INTO registrations_packsize VALUES(523,2,75.0);
INSERT INTO registrations_packsize VALUES(524,1,100.0);
INSERT INTO registrations_packsize VALUES(525,8,15.0);
INSERT INTO registrations_packsize VALUES(526,1,56.0);
INSERT INTO registrations_packsize VALUES(527,1,100.0);
INSERT INTO registrations_packsize VALUES(528,8,1.0);
INSERT INTO registrations_packsize VALUES(529,1,20.0);
INSERT INTO registrations_packsize VALUES(530,1,1000.0);
INSERT INTO registrations_packsize VALUES(531,1,14.0);
INSERT INTO registrations_packsize VALUES(532,1,10.0);
INSERT INTO registrations_packsize VALUES(533,2,50.0);
INSERT INTO registrations_packsize VALUES(534,1,28.0);
INSERT INTO registrations_packsize VALUES(535,1,100.0);
INSERT INTO registrations_packsize VALUES(536,1,21.0);
INSERT INTO registrations_packsize VALUES(537,1,2.0);
INSERT INTO registrations_packsize VALUES(538,1,100.0);
INSERT INTO registrations_packsize VALUES(539,2,10.0);
INSERT INTO registrations_packsize VALUES(540,1,2.0);
INSERT INTO registrations_packsize VALUES(541,1,120.0);
INSERT INTO registrations_packsize VALUES(542,2,2.0);
INSERT INTO registrations_packsize VALUES(543,5,10.0);
INSERT INTO registrations_packsize VALUES(544,2,1.0);
INSERT INTO registrations_packsize VALUES(545,1,500.0);
INSERT INTO registrations_packsize VALUES(546,1,250.0);
INSERT INTO registrations_packsize VALUES(547,1,30.0);
INSERT INTO registrations_packsize VALUES(548,10,50.0);
INSERT INTO registrations_packsize VALUES(549,2,1.0);
INSERT INTO registrations_packsize VALUES(550,2,500.0);
INSERT INTO registrations_packsize VALUES(551,8,1.0);
INSERT INTO registrations_packsize VALUES(552,1,56.0);
INSERT INTO registrations_packsize VALUES(553,1,28.0);
INSERT INTO registrations_packsize VALUES(554,5,200.0);
INSERT INTO registrations_packsize VALUES(555,1,28.0);
INSERT INTO registrations_packsize VALUES(556,2,300.0);
INSERT INTO registrations_packsize VALUES(557,1,250.0);
INSERT INTO registrations_packsize VALUES(558,1,60.0);
INSERT INTO registrations_packsize VALUES(559,1,25.0);
INSERT INTO registrations_packsize VALUES(560,1,1.0);
INSERT INTO registrations_packsize VALUES(561,1,84.0);
INSERT INTO registrations_packsize VALUES(562,2,75.0);
INSERT INTO registrations_packsize VALUES(563,1,100.0);
INSERT INTO registrations_packsize VALUES(564,8,15.0);
INSERT INTO registrations_packsize VALUES(565,1,56.0);
INSERT INTO registrations_packsize VALUES(566,1,100.0);
INSERT INTO registrations_packsize VALUES(567,8,1.0);
INSERT INTO registrations_packsize VALUES(568,1,20.0);
INSERT INTO registrations_packsize VALUES(569,1,1000.0);
INSERT INTO registrations_packsize VALUES(570,1,14.0);
INSERT INTO registrations_packsize VALUES(571,1,10.0);
INSERT INTO registrations_packsize VALUES(572,2,50.0);
INSERT INTO registrations_packsize VALUES(573,1,28.0);
INSERT INTO registrations_packsize VALUES(574,1,100.0);
INSERT INTO registrations_packsize VALUES(575,1,21.0);
INSERT INTO registrations_packsize VALUES(576,1,2.0);
INSERT INTO registrations_packsize VALUES(577,1,100.0);
INSERT INTO registrations_packsize VALUES(578,2,10.0);
INSERT INTO registrations_packsize VALUES(579,1,2.0);
INSERT INTO registrations_packsize VALUES(580,1,120.0);
INSERT INTO registrations_packsize VALUES(581,2,2.0);
INSERT INTO registrations_packsize VALUES(582,5,10.0);
INSERT INTO registrations_packsize VALUES(583,2,1.0);
INSERT INTO registrations_packsize VALUES(584,1,500.0);
INSERT INTO registrations_packsize VALUES(585,1,250.0);
INSERT INTO registrations_packsize VALUES(586,1,30.0);
INSERT INTO registrations_packsize VALUES(587,10,50.0);
INSERT INTO registrations_packsize VALUES(588,2,1.0);
INSERT INTO registrations_packsize VALUES(589,2,500.0);
INSERT INTO registrations_packsize VALUES(590,8,1.0);
INSERT INTO registrations_packsize VALUES(591,1,56.0);
INSERT INTO registrations_packsize VALUES(592,1,28.0);
INSERT INTO registrations_packsize VALUES(593,5,200.0);
INSERT INTO registrations_packsize VALUES(594,1,28.0);
INSERT INTO registrations_packsize VALUES(595,2,300.0);
INSERT INTO registrations_packsize VALUES(596,1,250.0);
INSERT INTO registrations_packsize VALUES(597,1,60.0);
INSERT INTO registrations_packsize VALUES(598,1,28.0);
INSERT INTO registrations_packsize VALUES(599,2,100.0);
INSERT INTO registrations_packsize VALUES(600,1,30.0);
INSERT INTO registrations_packsize VALUES(601,1,500.0);
INSERT INTO registrations_packsize VALUES(602,1,30.0);
INSERT INTO registrations_packsize VALUES(603,1,100.0);
INSERT INTO registrations_packsize VALUES(604,2,100.0);
INSERT INTO registrations_packsize VALUES(605,1,1000.0);
INSERT INTO registrations_packsize VALUES(606,1,500.0);
INSERT INTO registrations_packsize VALUES(607,1,100.0);
INSERT INTO registrations_packsize VALUES(608,1,500.0);
INSERT INTO registrations_packsize VALUES(609,1,84.0);
INSERT INTO registrations_packsize VALUES(610,1,28.0);
INSERT INTO registrations_packsize VALUES(611,2,100.0);
INSERT INTO registrations_packsize VALUES(612,1,84.0);
INSERT INTO registrations_packsize VALUES(613,1,84.0);
INSERT INTO registrations_packsize VALUES(614,5,300.0);
INSERT INTO registrations_packsize VALUES(615,1,30.0);
INSERT INTO registrations_packsize VALUES(616,1,15.0);
INSERT INTO registrations_packsize VALUES(617,1,84.0);
INSERT INTO registrations_packsize VALUES(618,1,10.0);
INSERT INTO registrations_packsize VALUES(619,1,40.0);
INSERT INTO registrations_packsize VALUES(620,1,20.0);
INSERT INTO registrations_packsize VALUES(621,1,84.0);
INSERT INTO registrations_packsize VALUES(622,1,56.0);
INSERT INTO registrations_packsize VALUES(623,1,21.0);
INSERT INTO registrations_packsize VALUES(624,2,50.0);
INSERT INTO registrations_packsize VALUES(625,1,56.0);
INSERT INTO registrations_packsize VALUES(626,1,56.0);
INSERT INTO registrations_packsize VALUES(627,1,100.0);
INSERT INTO registrations_packsize VALUES(628,1,56.0);
INSERT INTO registrations_packsize VALUES(629,1,30.0);
INSERT INTO registrations_packsize VALUES(630,1,56.0);
INSERT INTO registrations_packsize VALUES(631,1,28.0);
INSERT INTO registrations_packsize VALUES(632,1,20.0);
INSERT INTO registrations_packsize VALUES(633,1,1000.0);
INSERT INTO registrations_packsize VALUES(634,1,1000.0);
INSERT INTO registrations_packsize VALUES(635,2,100.0);
INSERT INTO registrations_packsize VALUES(636,1,1000.0);
INSERT INTO registrations_packsize VALUES(637,1,12.0);
INSERT INTO registrations_packsize VALUES(638,1,1000.0);
INSERT INTO registrations_packsize VALUES(639,8,1.0);
INSERT INTO registrations_packsize VALUES(640,1,1.0);
INSERT INTO registrations_packsize VALUES(641,1,1000.0);
INSERT INTO registrations_packsize VALUES(642,1,1000.0);
INSERT INTO registrations_packsize VALUES(643,1,100.0);
INSERT INTO registrations_packsize VALUES(644,11,1.0);
INSERT INTO registrations_packsize VALUES(645,2,100.0);
INSERT INTO registrations_packsize VALUES(646,1,1000.0);
INSERT INTO registrations_packsize VALUES(647,1,1000.0);
INSERT INTO registrations_packsize VALUES(648,1,1000.0);
INSERT INTO registrations_packsize VALUES(649,1,1000.0);
INSERT INTO registrations_packsize VALUES(650,1,1000.0);
INSERT INTO registrations_packsize VALUES(651,1,1000.0);
INSERT INTO registrations_packsize VALUES(652,4,10.0);
INSERT INTO registrations_packsize VALUES(653,9,2000.0);
INSERT INTO registrations_packsize VALUES(654,8,100.0);
INSERT INTO registrations_packsize VALUES(655,1,1000.0);
INSERT INTO registrations_packsize VALUES(656,11,100.0);
INSERT INTO registrations_packsize VALUES(657,10,50.0);
INSERT INTO registrations_packsize VALUES(658,9,100.0);
INSERT INTO registrations_packsize VALUES(659,2,100.0);
INSERT INTO registrations_packsize VALUES(660,8,1.0);
INSERT INTO registrations_packsize VALUES(661,12,200.0);
INSERT INTO registrations_packsize VALUES(662,1,1000.0);
INSERT INTO registrations_packsize VALUES(663,6,1.0);
INSERT INTO registrations_packsize VALUES(664,1,100.0);
INSERT INTO registrations_packsize VALUES(665,1,1000.0);
INSERT INTO registrations_packsize VALUES(666,1,1000.0);
INSERT INTO registrations_packsize VALUES(667,2,100.0);
INSERT INTO registrations_packsize VALUES(668,1,1000.0);
INSERT INTO registrations_packsize VALUES(669,1,12.0);
INSERT INTO registrations_packsize VALUES(670,1,1000.0);
INSERT INTO registrations_packsize VALUES(671,8,1.0);
INSERT INTO registrations_packsize VALUES(672,1,1.0);
INSERT INTO registrations_packsize VALUES(673,1,1000.0);
INSERT INTO registrations_packsize VALUES(674,1,1000.0);
INSERT INTO registrations_packsize VALUES(675,1,100.0);
INSERT INTO registrations_packsize VALUES(676,11,1.0);
INSERT INTO registrations_packsize VALUES(677,2,100.0);
INSERT INTO registrations_packsize VALUES(678,1,1000.0);
INSERT INTO registrations_packsize VALUES(679,1,1000.0);
INSERT INTO registrations_packsize VALUES(680,1,1000.0);
INSERT INTO registrations_packsize VALUES(681,1,1000.0);
INSERT INTO registrations_packsize VALUES(682,1,1000.0);
INSERT INTO registrations_packsize VALUES(683,1,1000.0);
INSERT INTO registrations_packsize VALUES(684,4,10.0);
INSERT INTO registrations_packsize VALUES(685,9,2000.0);
INSERT INTO registrations_packsize VALUES(686,8,100.0);
INSERT INTO registrations_packsize VALUES(687,1,1000.0);
INSERT INTO registrations_packsize VALUES(688,11,100.0);
INSERT INTO registrations_packsize VALUES(689,10,50.0);
INSERT INTO registrations_packsize VALUES(690,9,100.0);
INSERT INTO registrations_packsize VALUES(691,2,100.0);
INSERT INTO registrations_packsize VALUES(692,8,1.0);
INSERT INTO registrations_packsize VALUES(693,12,200.0);
INSERT INTO registrations_packsize VALUES(694,1,1000.0);
INSERT INTO registrations_packsize VALUES(695,6,1.0);
INSERT INTO registrations_packsize VALUES(696,1,100.0);
INSERT INTO registrations_packsize VALUES(697,1,1000.0);
INSERT INTO registrations_packsize VALUES(698,1,1000.0);
INSERT INTO registrations_packsize VALUES(699,2,100.0);
INSERT INTO registrations_packsize VALUES(700,1,1000.0);
INSERT INTO registrations_packsize VALUES(701,1,12.0);
INSERT INTO registrations_packsize VALUES(702,1,1000.0);
INSERT INTO registrations_packsize VALUES(703,8,1.0);
INSERT INTO registrations_packsize VALUES(704,1,1.0);
INSERT INTO registrations_packsize VALUES(705,1,1000.0);
INSERT INTO registrations_packsize VALUES(706,1,1000.0);
INSERT INTO registrations_packsize VALUES(707,1,100.0);
INSERT INTO registrations_packsize VALUES(708,11,1.0);
INSERT INTO registrations_packsize VALUES(709,2,100.0);
INSERT INTO registrations_packsize VALUES(710,1,1000.0);
INSERT INTO registrations_packsize VALUES(711,1,1000.0);
INSERT INTO registrations_packsize VALUES(712,1,1000.0);
INSERT INTO registrations_packsize VALUES(713,1,1000.0);
INSERT INTO registrations_packsize VALUES(714,1,1000.0);
INSERT INTO registrations_packsize VALUES(715,1,1000.0);
INSERT INTO registrations_packsize VALUES(716,4,10.0);
INSERT INTO registrations_packsize VALUES(717,9,2000.0);
INSERT INTO registrations_packsize VALUES(718,8,100.0);
INSERT INTO registrations_packsize VALUES(719,1,1000.0);
INSERT INTO registrations_packsize VALUES(720,10,50.0);
INSERT INTO registrations_packsize VALUES(721,9,100.0);
INSERT INTO registrations_packsize VALUES(722,2,100.0);
INSERT INTO registrations_packsize VALUES(723,8,1.0);
INSERT INTO registrations_packsize VALUES(724,12,200.0);
INSERT INTO registrations_packsize VALUES(725,1,1000.0);
INSERT INTO registrations_packsize VALUES(726,6,1.0);
INSERT INTO registrations_packsize VALUES(727,1,100.0);
INSERT INTO registrations_packsize VALUES(728,1,1000.0);
INSERT INTO registrations_packsize VALUES(729,1,1000.0);
INSERT INTO registrations_packsize VALUES(730,2,100.0);
INSERT INTO registrations_packsize VALUES(731,1,1000.0);
INSERT INTO registrations_packsize VALUES(732,1,12.0);
INSERT INTO registrations_packsize VALUES(733,1,1000.0);
INSERT INTO registrations_packsize VALUES(734,8,1.0);
INSERT INTO registrations_packsize VALUES(735,1,1.0);
INSERT INTO registrations_packsize VALUES(736,1,1000.0);
INSERT INTO registrations_packsize VALUES(737,1,1000.0);
INSERT INTO registrations_packsize VALUES(738,1,100.0);
INSERT INTO registrations_packsize VALUES(739,11,1.0);
INSERT INTO registrations_packsize VALUES(740,2,100.0);
INSERT INTO registrations_packsize VALUES(741,1,1000.0);
INSERT INTO registrations_packsize VALUES(742,1,1000.0);
INSERT INTO registrations_packsize VALUES(743,1,1000.0);
INSERT INTO registrations_packsize VALUES(744,1,1000.0);
INSERT INTO registrations_packsize VALUES(745,1,1000.0);
INSERT INTO registrations_packsize VALUES(746,1,1000.0);
INSERT INTO registrations_packsize VALUES(747,4,10.0);
INSERT INTO registrations_packsize VALUES(748,9,2000.0);
INSERT INTO registrations_packsize VALUES(749,8,100.0);
INSERT INTO registrations_packsize VALUES(750,1,1000.0);
INSERT INTO registrations_packsize VALUES(751,11,100.0);
INSERT INTO registrations_packsize VALUES(752,10,50.0);
INSERT INTO registrations_packsize VALUES(753,9,100.0);
INSERT INTO registrations_packsize VALUES(754,2,100.0);
INSERT INTO registrations_packsize VALUES(755,8,1.0);
INSERT INTO registrations_packsize VALUES(756,12,200.0);
INSERT INTO registrations_packsize VALUES(757,1,1000.0);
INSERT INTO registrations_packsize VALUES(758,6,1.0);
INSERT INTO registrations_packsize VALUES(759,1,100.0);
INSERT INTO registrations_packsize VALUES(760,1,1.0);
INSERT INTO registrations_packsize VALUES(761,1,1.0);
INSERT INTO registrations_packsize VALUES(762,1,1.0);
INSERT INTO registrations_packsize VALUES(763,2,1.0);
INSERT INTO registrations_packsize VALUES(764,1,1.0);
INSERT INTO registrations_packsize VALUES(765,1,12.0);
INSERT INTO registrations_packsize VALUES(766,1,1.0);
INSERT INTO registrations_packsize VALUES(767,1,1.0);
INSERT INTO registrations_packsize VALUES(768,8,1.0);
INSERT INTO registrations_packsize VALUES(769,1,1.0);
INSERT INTO registrations_packsize VALUES(770,1,1.0);
INSERT INTO registrations_packsize VALUES(771,1,1.0);
INSERT INTO registrations_packsize VALUES(772,11,1.0);
INSERT INTO registrations_packsize VALUES(773,2,1.0);
INSERT INTO registrations_packsize VALUES(774,1,1.0);
INSERT INTO registrations_packsize VALUES(775,1,1.0);
INSERT INTO registrations_packsize VALUES(776,1,1.0);
INSERT INTO registrations_packsize VALUES(777,1,1.0);
INSERT INTO registrations_packsize VALUES(778,1,1.0);
INSERT INTO registrations_packsize VALUES(779,1,1.0);
INSERT INTO registrations_packsize VALUES(780,1,1.0);
INSERT INTO registrations_packsize VALUES(781,8,1.0);
INSERT INTO registrations_packsize VALUES(782,1,1.0);
INSERT INTO registrations_packsize VALUES(783,1,1.0);
INSERT INTO registrations_packsize VALUES(784,11,1.0);
INSERT INTO registrations_packsize VALUES(785,1,1.0);
INSERT INTO registrations_packsize VALUES(786,10,1.0);
INSERT INTO registrations_packsize VALUES(787,9,1.0);
INSERT INTO registrations_packsize VALUES(788,2,1.0);
INSERT INTO registrations_packsize VALUES(789,8,1.0);
INSERT INTO registrations_packsize VALUES(790,1,1.0);
INSERT INTO registrations_packsize VALUES(791,12,1.0);
INSERT INTO registrations_packsize VALUES(792,1,1.0);
INSERT INTO registrations_packsize VALUES(793,6,1.0);
INSERT INTO registrations_packsize VALUES(794,1,25.0);
INSERT INTO registrations_packsize VALUES(795,1,100.0);
INSERT INTO registrations_packsize VALUES(796,2,100.0);
INSERT INTO registrations_packsize VALUES(797,1,12.0);
INSERT INTO registrations_packsize VALUES(798,8,1.0);
INSERT INTO registrations_packsize VALUES(799,1,60.0);
INSERT INTO registrations_packsize VALUES(800,1,100.0);
INSERT INTO registrations_packsize VALUES(801,8,1.0);
INSERT INTO registrations_packsize VALUES(802,1,500.0);
INSERT INTO registrations_packsize VALUES(803,1,100.0);
INSERT INTO registrations_packsize VALUES(804,11,6.0);
INSERT INTO registrations_packsize VALUES(805,1,100.0);
INSERT INTO registrations_packsize VALUES(806,5,10.0);
INSERT INTO registrations_packsize VALUES(807,1,100.0);
INSERT INTO registrations_packsize VALUES(808,1,100.0);
INSERT INTO registrations_packsize VALUES(809,4,10.0);
INSERT INTO registrations_packsize VALUES(810,1,120.0);
INSERT INTO registrations_packsize VALUES(811,9,2.0);
INSERT INTO registrations_packsize VALUES(812,5,1.0);
INSERT INTO registrations_packsize VALUES(813,8,1.0);
INSERT INTO registrations_packsize VALUES(814,1,100.0);
INSERT INTO registrations_packsize VALUES(815,1,1000.0);
INSERT INTO registrations_packsize VALUES(816,10,1.0);
INSERT INTO registrations_packsize VALUES(817,9,1.0);
INSERT INTO registrations_packsize VALUES(818,2,100.0);
INSERT INTO registrations_packsize VALUES(819,8,1.0);
INSERT INTO registrations_packsize VALUES(820,12,200.0);
INSERT INTO registrations_packsize VALUES(821,2,300.0);
INSERT INTO registrations_packsize VALUES(822,6,3.5);
INSERT INTO registrations_packsize VALUES(823,1,60.0);
INSERT INTO registrations_packsize VALUES(824,1,1000.0);
INSERT INTO registrations_packsize VALUES(825,1,1000.0);
INSERT INTO registrations_packsize VALUES(826,2,100.0);
INSERT INTO registrations_packsize VALUES(827,1,1000.0);
INSERT INTO registrations_packsize VALUES(828,1,12.0);
INSERT INTO registrations_packsize VALUES(829,1,1000.0);
INSERT INTO registrations_packsize VALUES(830,8,1.0);
INSERT INTO registrations_packsize VALUES(831,1,1.0);
INSERT INTO registrations_packsize VALUES(832,1,1000.0);
INSERT INTO registrations_packsize VALUES(833,1,1000.0);
INSERT INTO registrations_packsize VALUES(834,1,100.0);
INSERT INTO registrations_packsize VALUES(835,11,1.0);
INSERT INTO registrations_packsize VALUES(836,2,100.0);
INSERT INTO registrations_packsize VALUES(837,1,1000.0);
INSERT INTO registrations_packsize VALUES(838,1,1000.0);
INSERT INTO registrations_packsize VALUES(839,1,1000.0);
INSERT INTO registrations_packsize VALUES(840,1,1000.0);
INSERT INTO registrations_packsize VALUES(841,1,1000.0);
INSERT INTO registrations_packsize VALUES(842,1,1000.0);
INSERT INTO registrations_packsize VALUES(843,4,10.0);
INSERT INTO registrations_packsize VALUES(844,9,2000.0);
INSERT INTO registrations_packsize VALUES(845,8,100.0);
INSERT INTO registrations_packsize VALUES(846,1,1000.0);
INSERT INTO registrations_packsize VALUES(847,11,100.0);
INSERT INTO registrations_packsize VALUES(848,10,50.0);
INSERT INTO registrations_packsize VALUES(849,9,100.0);
INSERT INTO registrations_packsize VALUES(850,2,100.0);
INSERT INTO registrations_packsize VALUES(851,8,1.0);
INSERT INTO registrations_packsize VALUES(852,12,200.0);
INSERT INTO registrations_packsize VALUES(853,1,1000.0);
INSERT INTO registrations_packsize VALUES(854,6,1.0);
INSERT INTO registrations_packsize VALUES(855,1,100.0);
INSERT INTO registrations_packsize VALUES(856,1,30.0);
INSERT INTO registrations_packsize VALUES(857,1,1000.0);
INSERT INTO registrations_packsize VALUES(858,2,100.0);
INSERT INTO registrations_packsize VALUES(859,1,500.0);
INSERT INTO registrations_packsize VALUES(860,1,12.0);
INSERT INTO registrations_packsize VALUES(861,1,60.0);
INSERT INTO registrations_packsize VALUES(862,1,30.0);
INSERT INTO registrations_packsize VALUES(863,8,10.0);
INSERT INTO registrations_packsize VALUES(864,1,100.0);
INSERT INTO registrations_packsize VALUES(865,11,6.0);
INSERT INTO registrations_packsize VALUES(866,1,1000.0);
INSERT INTO registrations_packsize VALUES(867,1,1000.0);
INSERT INTO registrations_packsize VALUES(868,1,500.0);
INSERT INTO registrations_packsize VALUES(869,1,100.0);
INSERT INTO registrations_packsize VALUES(870,1,1000.0);
INSERT INTO registrations_packsize VALUES(871,4,10.0);
INSERT INTO registrations_packsize VALUES(872,1,120.0);
INSERT INTO registrations_packsize VALUES(873,9,2.0);
INSERT INTO registrations_packsize VALUES(874,5,10.0);
INSERT INTO registrations_packsize VALUES(875,8,100.0);
INSERT INTO registrations_packsize VALUES(876,1,500.0);
INSERT INTO registrations_packsize VALUES(877,1,500.0);
INSERT INTO registrations_packsize VALUES(878,1,30.0);
INSERT INTO registrations_packsize VALUES(879,9,100.0);
INSERT INTO registrations_packsize VALUES(880,2,100.0);
INSERT INTO registrations_packsize VALUES(881,8,10.0);
INSERT INTO registrations_packsize VALUES(882,12,200.0);
INSERT INTO registrations_packsize VALUES(883,2,300.0);
INSERT INTO registrations_packsize VALUES(884,1,30.0);
INSERT INTO registrations_packsize VALUES(885,6,5.0);
INSERT INTO registrations_packsize VALUES(886,1,60.0);
INSERT INTO registrations_packsize VALUES(887,1,100.0);
INSERT INTO registrations_packsize VALUES(888,2,100.0);
INSERT INTO registrations_packsize VALUES(889,1,12.0);
INSERT INTO registrations_packsize VALUES(890,1,1000.0);
INSERT INTO registrations_packsize VALUES(891,1,100.0);
INSERT INTO registrations_packsize VALUES(892,1,1000.0);
INSERT INTO registrations_packsize VALUES(893,1,1000.0);
INSERT INTO registrations_packsize VALUES(894,1,100.0);
INSERT INTO registrations_packsize VALUES(895,2,100.0);
INSERT INTO registrations_packsize VALUES(896,1,1000.0);
INSERT INTO registrations_packsize VALUES(897,1,1000.0);
INSERT INTO registrations_packsize VALUES(898,1,1000.0);
INSERT INTO registrations_packsize VALUES(899,4,10.0);
INSERT INTO registrations_packsize VALUES(900,9,2.0);
INSERT INTO registrations_packsize VALUES(901,8,1.0);
INSERT INTO registrations_packsize VALUES(902,1,100.0);
INSERT INTO registrations_packsize VALUES(903,1,1000.0);
INSERT INTO registrations_packsize VALUES(904,11,1.0);
INSERT INTO registrations_packsize VALUES(905,1,100.0);
INSERT INTO registrations_packsize VALUES(906,10,1.0);
INSERT INTO registrations_packsize VALUES(907,2,100.0);
INSERT INTO registrations_packsize VALUES(908,8,1.0);
INSERT INTO registrations_packsize VALUES(909,12,200.0);
INSERT INTO registrations_packsize VALUES(910,2,100.0);
INSERT INTO registrations_packsize VALUES(911,1,1000.0);
INSERT INTO registrations_packsize VALUES(912,6,3.5);
INSERT INTO registrations_packsize VALUES(913,1,1000.0);
INSERT INTO registrations_packsize VALUES(914,1,500.0);
INSERT INTO registrations_packsize VALUES(915,1,1000.0);
INSERT INTO registrations_packsize VALUES(916,1,12.0);
INSERT INTO registrations_packsize VALUES(917,1,1000.0);
INSERT INTO registrations_packsize VALUES(918,1,1000.0);
INSERT INTO registrations_packsize VALUES(919,2,1.0);
INSERT INTO registrations_packsize VALUES(920,1,1000.0);
INSERT INTO registrations_packsize VALUES(921,1,500.0);
INSERT INTO registrations_packsize VALUES(922,4,1.0);
INSERT INTO registrations_packsize VALUES(923,1,500.0);
INSERT INTO registrations_packsize VALUES(924,8,100.0);
INSERT INTO registrations_packsize VALUES(925,1,100.0);
INSERT INTO registrations_packsize VALUES(926,6,4.0);
INSERT INTO registrations_packsize VALUES(927,1,500.0);
INSERT INTO registrations_packsize VALUES(928,2,100.0);
INSERT INTO registrations_packsize VALUES(929,1,12.0);
INSERT INTO registrations_packsize VALUES(930,8,1.0);
INSERT INTO registrations_packsize VALUES(931,1,100.0);
INSERT INTO registrations_packsize VALUES(932,8,1.0);
INSERT INTO registrations_packsize VALUES(933,1,1000.0);
INSERT INTO registrations_packsize VALUES(934,1,100.0);
INSERT INTO registrations_packsize VALUES(935,1,10.0);
INSERT INTO registrations_packsize VALUES(936,2,100.0);
INSERT INTO registrations_packsize VALUES(937,1,500.0);
INSERT INTO registrations_packsize VALUES(938,1,1000.0);
INSERT INTO registrations_packsize VALUES(939,5,5.0);
INSERT INTO registrations_packsize VALUES(940,1,100.0);
INSERT INTO registrations_packsize VALUES(941,1,1000.0);
INSERT INTO registrations_packsize VALUES(942,1,100.0);
INSERT INTO registrations_packsize VALUES(943,4,5.0);
INSERT INTO registrations_packsize VALUES(944,1,60.0);
INSERT INTO registrations_packsize VALUES(945,1,120.0);
INSERT INTO registrations_packsize VALUES(946,9,10.0);
INSERT INTO registrations_packsize VALUES(947,5,10.0);
INSERT INTO registrations_packsize VALUES(948,8,1.0);
INSERT INTO registrations_packsize VALUES(949,1,100.0);
INSERT INTO registrations_packsize VALUES(950,10,100.0);
INSERT INTO registrations_packsize VALUES(951,9,1.0);
INSERT INTO registrations_packsize VALUES(952,2,100.0);
INSERT INTO registrations_packsize VALUES(953,8,10.0);
INSERT INTO registrations_packsize VALUES(954,1,100.0);
INSERT INTO registrations_packsize VALUES(955,1,28.0);
INSERT INTO registrations_packsize VALUES(956,12,200.0);
INSERT INTO registrations_packsize VALUES(957,2,200.0);
INSERT INTO registrations_packsize VALUES(958,1,12.0);
INSERT INTO registrations_packsize VALUES(959,1,100.0);
INSERT INTO registrations_packsize VALUES(960,6,3.5);
INSERT INTO registrations_packsize VALUES(961,1,60.0);
INSERT INTO registrations_packsize VALUES(962,1,1.0);
INSERT INTO registrations_packsize VALUES(963,1,1.0);
INSERT INTO registrations_packsize VALUES(964,2,100.0);
INSERT INTO registrations_packsize VALUES(965,1,12.0);
INSERT INTO registrations_packsize VALUES(966,1,1.0);
INSERT INTO registrations_packsize VALUES(967,8,1.0);
INSERT INTO registrations_packsize VALUES(968,1,1.0);
INSERT INTO registrations_packsize VALUES(969,1,1.0);
INSERT INTO registrations_packsize VALUES(970,1,1.0);
INSERT INTO registrations_packsize VALUES(971,11,6.0);
INSERT INTO registrations_packsize VALUES(972,2,100.0);
INSERT INTO registrations_packsize VALUES(973,1,1.0);
INSERT INTO registrations_packsize VALUES(974,1,1.0);
INSERT INTO registrations_packsize VALUES(975,1,1.0);
INSERT INTO registrations_packsize VALUES(976,5,10.0);
INSERT INTO registrations_packsize VALUES(977,1,1.0);
INSERT INTO registrations_packsize VALUES(978,1,1.0);
INSERT INTO registrations_packsize VALUES(979,5,1.0);
INSERT INTO registrations_packsize VALUES(980,1,1.0);
INSERT INTO registrations_packsize VALUES(981,1,1.0);
INSERT INTO registrations_packsize VALUES(982,1,1.0);
INSERT INTO registrations_packsize VALUES(983,10,1.0);
INSERT INTO registrations_packsize VALUES(984,9,1.0);
INSERT INTO registrations_packsize VALUES(985,2,100.0);
INSERT INTO registrations_packsize VALUES(986,8,1.0);
INSERT INTO registrations_packsize VALUES(987,12,200.0);
INSERT INTO registrations_packsize VALUES(988,2,150.0);
INSERT INTO registrations_packsize VALUES(989,1,1.0);
INSERT INTO registrations_packsize VALUES(990,1,1.0);
INSERT INTO registrations_packsize VALUES(991,6,3.5);
INSERT INTO registrations_packsize VALUES(992,1,25.0);
INSERT INTO registrations_packsize VALUES(993,1,1.0);
INSERT INTO registrations_packsize VALUES(994,1,84.0);
INSERT INTO registrations_packsize VALUES(995,2,75.0);
INSERT INTO registrations_packsize VALUES(996,1,100.0);
INSERT INTO registrations_packsize VALUES(997,8,15.0);
INSERT INTO registrations_packsize VALUES(998,1,56.0);
INSERT INTO registrations_packsize VALUES(999,1,100.0);
INSERT INTO registrations_packsize VALUES(1000,8,1.0);
INSERT INTO registrations_packsize VALUES(1001,1,20.0);
INSERT INTO registrations_packsize VALUES(1002,1,1000.0);
INSERT INTO registrations_packsize VALUES(1003,1,14.0);
INSERT INTO registrations_packsize VALUES(1004,1,10.0);
INSERT INTO registrations_packsize VALUES(1005,2,50.0);
INSERT INTO registrations_packsize VALUES(1006,1,28.0);
INSERT INTO registrations_packsize VALUES(1007,1,100.0);
INSERT INTO registrations_packsize VALUES(1008,1,21.0);
INSERT INTO registrations_packsize VALUES(1009,1,2.0);
INSERT INTO registrations_packsize VALUES(1010,1,100.0);
INSERT INTO registrations_packsize VALUES(1011,4,10.0);
INSERT INTO registrations_packsize VALUES(1012,1,2.0);
INSERT INTO registrations_packsize VALUES(1013,1,120.0);
INSERT INTO registrations_packsize VALUES(1014,9,2.0);
INSERT INTO registrations_packsize VALUES(1015,5,10.0);
INSERT INTO registrations_packsize VALUES(1016,8,1.0);
INSERT INTO registrations_packsize VALUES(1017,1,500.0);
INSERT INTO registrations_packsize VALUES(1018,1,250.0);
INSERT INTO registrations_packsize VALUES(1019,1,30.0);
INSERT INTO registrations_packsize VALUES(1020,10,50.0);
INSERT INTO registrations_packsize VALUES(1021,9,1.0);
INSERT INTO registrations_packsize VALUES(1022,2,500.0);
INSERT INTO registrations_packsize VALUES(1023,8,1.0);
INSERT INTO registrations_packsize VALUES(1024,1,56.0);
INSERT INTO registrations_packsize VALUES(1025,1,28.0);
INSERT INTO registrations_packsize VALUES(1026,12,200.0);
INSERT INTO registrations_packsize VALUES(1027,1,28.0);
INSERT INTO registrations_packsize VALUES(1028,2,300.0);
INSERT INTO registrations_packsize VALUES(1029,1,250.0);
INSERT INTO registrations_packsize VALUES(1030,1,60.0);
INSERT INTO registrations_packsize VALUES(1031,1,28.0);
INSERT INTO registrations_packsize VALUES(1032,2,100.0);
INSERT INTO registrations_packsize VALUES(1033,1,30.0);
INSERT INTO registrations_packsize VALUES(1034,1,500.0);
INSERT INTO registrations_packsize VALUES(1035,1,30.0);
INSERT INTO registrations_packsize VALUES(1036,1,100.0);
INSERT INTO registrations_packsize VALUES(1037,2,100.0);
INSERT INTO registrations_packsize VALUES(1038,1,1000.0);
INSERT INTO registrations_packsize VALUES(1039,1,500.0);
INSERT INTO registrations_packsize VALUES(1040,1,100.0);
INSERT INTO registrations_packsize VALUES(1041,1,500.0);
INSERT INTO registrations_packsize VALUES(1042,1,84.0);
INSERT INTO registrations_packsize VALUES(1043,1,28.0);
INSERT INTO registrations_packsize VALUES(1044,2,100.0);
INSERT INTO registrations_packsize VALUES(1045,1,84.0);
INSERT INTO registrations_packsize VALUES(1046,1,84.0);
INSERT INTO registrations_packsize VALUES(1047,12,300.0);
INSERT INTO registrations_packsize VALUES(1048,1,30.0);
INSERT INTO registrations_packsize VALUES(1049,1,15.0);
INSERT INTO registrations_packsize VALUES(1050,1,84.0);
INSERT INTO registrations_packsize VALUES(1051,1,10.0);
INSERT INTO registrations_packsize VALUES(1052,1,40.0);
INSERT INTO registrations_packsize VALUES(1053,1,20.0);
INSERT INTO registrations_packsize VALUES(1054,1,84.0);
INSERT INTO registrations_packsize VALUES(1055,1,56.0);
INSERT INTO registrations_packsize VALUES(1056,1,21.0);
INSERT INTO registrations_packsize VALUES(1057,2,50.0);
INSERT INTO registrations_packsize VALUES(1058,1,56.0);
INSERT INTO registrations_packsize VALUES(1059,1,56.0);
INSERT INTO registrations_packsize VALUES(1060,1,100.0);
INSERT INTO registrations_packsize VALUES(1061,1,56.0);
INSERT INTO registrations_packsize VALUES(1062,1,30.0);
INSERT INTO registrations_packsize VALUES(1063,1,56.0);
INSERT INTO registrations_packsize VALUES(1064,1,28.0);
INSERT INTO registrations_packsize VALUES(1065,1,20.0);
INSERT INTO registrations_packsize VALUES(1066,1,25.0);
INSERT INTO registrations_packsize VALUES(1067,1,1.0);
INSERT INTO registrations_packsize VALUES(1068,1,84.0);
INSERT INTO registrations_packsize VALUES(1069,1,500.0);
INSERT INTO registrations_packsize VALUES(1070,2,100.0);
INSERT INTO registrations_packsize VALUES(1071,1,60.0);
INSERT INTO registrations_packsize VALUES(1072,1,1000.0);
INSERT INTO registrations_packsize VALUES(1073,1,1000.0);
INSERT INTO registrations_packsize VALUES(1074,1,100.0);
INSERT INTO registrations_packsize VALUES(1075,11,6.0);
INSERT INTO registrations_packsize VALUES(1076,2,100.0);
INSERT INTO registrations_packsize VALUES(1077,1,500.0);
INSERT INTO registrations_packsize VALUES(1078,1,1000.0);
INSERT INTO registrations_packsize VALUES(1079,5,10.0);
INSERT INTO registrations_packsize VALUES(1080,1,1000.0);
INSERT INTO registrations_packsize VALUES(1081,1,1000.0);
INSERT INTO registrations_packsize VALUES(1082,1,1000.0);
INSERT INTO registrations_packsize VALUES(1083,4,10.0);
INSERT INTO registrations_packsize VALUES(1084,1,30.0);
INSERT INTO registrations_packsize VALUES(1085,1,120.0);
INSERT INTO registrations_packsize VALUES(1086,9,100.0);
INSERT INTO registrations_packsize VALUES(1087,5,10.0);
INSERT INTO registrations_packsize VALUES(1088,1,500.0);
INSERT INTO registrations_packsize VALUES(1089,1,1000.0);
INSERT INTO registrations_packsize VALUES(1090,1,28.0);
INSERT INTO registrations_packsize VALUES(1091,10,100.0);
INSERT INTO registrations_packsize VALUES(1092,2,2500.0);
INSERT INTO registrations_packsize VALUES(1093,8,1.0);
INSERT INTO registrations_packsize VALUES(1094,1,60.0);
INSERT INTO registrations_packsize VALUES(1095,1,84.0);
INSERT INTO registrations_packsize VALUES(1096,12,200.0);
INSERT INTO registrations_packsize VALUES(1097,6,5.0);
INSERT INTO registrations_packsize VALUES(1098,1,100.0);
INSERT INTO registrations_packsize VALUES(1099,1,500.0);
INSERT INTO registrations_packsize VALUES(1100,2,2400.0);
INSERT INTO registrations_packsize VALUES(1101,1,100.0);
INSERT INTO registrations_packsize VALUES(1102,1,500.0);
INSERT INTO registrations_packsize VALUES(1103,8,20.0);
INSERT INTO registrations_packsize VALUES(1104,1,1000.0);
INSERT INTO registrations_packsize VALUES(1105,1,1000.0);
INSERT INTO registrations_packsize VALUES(1106,1,100.0);
INSERT INTO registrations_packsize VALUES(1107,11,6.0);
INSERT INTO registrations_packsize VALUES(1108,1,100.0);
INSERT INTO registrations_packsize VALUES(1109,1,1000.0);
INSERT INTO registrations_packsize VALUES(1110,1,100.0);
INSERT INTO registrations_packsize VALUES(1111,1,1000.0);
INSERT INTO registrations_packsize VALUES(1112,1,100.0);
INSERT INTO registrations_packsize VALUES(1113,1,1000.0);
INSERT INTO registrations_packsize VALUES(1114,12,200.0);
INSERT INTO registrations_packsize VALUES(1115,1,100.0);
INSERT INTO registrations_packsize VALUES(1116,1,300.0);
INSERT INTO registrations_packsize VALUES(1117,1,100.0);
INSERT INTO registrations_packsize VALUES(1118,6,5.0);
INSERT INTO registrations_packsize VALUES(1119,1,60.0);
INSERT INTO registrations_packsize VALUES(1120,1,100.0);
INSERT INTO registrations_packsize VALUES(1121,1,100.0);
INSERT INTO registrations_packsize VALUES(1122,1,1000.0);
INSERT INTO registrations_packsize VALUES(1123,1,1000.0);
INSERT INTO registrations_packsize VALUES(1124,1,24.0);
INSERT INTO registrations_packsize VALUES(1125,2,100.0);
INSERT INTO registrations_packsize VALUES(1126,1,1000.0);
INSERT INTO registrations_packsize VALUES(1127,1,12.0);
INSERT INTO registrations_packsize VALUES(1128,8,10.0);
INSERT INTO registrations_packsize VALUES(1129,1,1000.0);
INSERT INTO registrations_packsize VALUES(1130,8,50.0);
INSERT INTO registrations_packsize VALUES(1131,1,1000.0);
INSERT INTO registrations_packsize VALUES(1132,1,1000.0);
INSERT INTO registrations_packsize VALUES(1133,1,1000.0);
INSERT INTO registrations_packsize VALUES(1134,1,1000.0);
INSERT INTO registrations_packsize VALUES(1135,2,100.0);
INSERT INTO registrations_packsize VALUES(1136,1,1000.0);
INSERT INTO registrations_packsize VALUES(1137,1,1000.0);
INSERT INTO registrations_packsize VALUES(1138,1,1000.0);
INSERT INTO registrations_packsize VALUES(1139,1,1000.0);
INSERT INTO registrations_packsize VALUES(1140,1,1000.0);
INSERT INTO registrations_packsize VALUES(1141,4,10.0);
INSERT INTO registrations_packsize VALUES(1142,1,60.0);
INSERT INTO registrations_packsize VALUES(1143,1,2.0);
INSERT INTO registrations_packsize VALUES(1144,1,120.0);
INSERT INTO registrations_packsize VALUES(1145,9,50.0);
INSERT INTO registrations_packsize VALUES(1146,8,25.0);
INSERT INTO registrations_packsize VALUES(1147,1,1000.0);
INSERT INTO registrations_packsize VALUES(1148,10,25.0);
INSERT INTO registrations_packsize VALUES(1149,9,100.0);
INSERT INTO registrations_packsize VALUES(1150,8,20.0);
INSERT INTO registrations_packsize VALUES(1151,1,672.0);
INSERT INTO registrations_packsize VALUES(1152,1,90.0);
INSERT INTO registrations_packsize VALUES(1153,1,1000.0);
INSERT INTO registrations_packsize VALUES(1154,1,30.0);
INSERT INTO registrations_packsize VALUES(1155,1,60.0);
INSERT INTO registrations_packsize VALUES(1156,1,100.0);
INSERT INTO registrations_packsize VALUES(1157,1,25.0);
INSERT INTO registrations_packsize VALUES(1158,1,100.0);
INSERT INTO registrations_packsize VALUES(1159,1,1000.0);
INSERT INTO registrations_packsize VALUES(1160,1,1000.0);
INSERT INTO registrations_packsize VALUES(1161,1,12.0);
INSERT INTO registrations_packsize VALUES(1162,1,100.0);
INSERT INTO registrations_packsize VALUES(1163,1,100.0);
INSERT INTO registrations_packsize VALUES(1164,1,1000.0);
INSERT INTO registrations_packsize VALUES(1165,1,1000.0);
INSERT INTO registrations_packsize VALUES(1166,11,6.0);
INSERT INTO registrations_packsize VALUES(1167,2,100.0);
INSERT INTO registrations_packsize VALUES(1168,1,500.0);
INSERT INTO registrations_packsize VALUES(1169,1,1000.0);
INSERT INTO registrations_packsize VALUES(1170,4,10.0);
INSERT INTO registrations_packsize VALUES(1171,1,60.0);
INSERT INTO registrations_packsize VALUES(1172,1,500.0);
INSERT INTO registrations_packsize VALUES(1173,1,1000.0);
INSERT INTO registrations_packsize VALUES(1174,9,1.0);
INSERT INTO registrations_packsize VALUES(1175,2,1000.0);
INSERT INTO registrations_packsize VALUES(1176,1,1000.0);
INSERT INTO registrations_packsize VALUES(1177,12,200.0);
INSERT INTO registrations_packsize VALUES(1178,6,3.5);
INSERT INTO registrations_packsize VALUES(1179,1,60.0);
INSERT INTO registrations_packsize VALUES(1180,1,1.0);
INSERT INTO registrations_packsize VALUES(1181,1,1.0);
INSERT INTO registrations_packsize VALUES(1182,2,100.0);
INSERT INTO registrations_packsize VALUES(1183,1,12.0);
INSERT INTO registrations_packsize VALUES(1184,1,1.0);
INSERT INTO registrations_packsize VALUES(1185,8,1.0);
INSERT INTO registrations_packsize VALUES(1186,1,1.0);
INSERT INTO registrations_packsize VALUES(1187,1,1.0);
INSERT INTO registrations_packsize VALUES(1188,1,1.0);
INSERT INTO registrations_packsize VALUES(1189,11,6.0);
INSERT INTO registrations_packsize VALUES(1190,2,100.0);
INSERT INTO registrations_packsize VALUES(1191,1,1.0);
INSERT INTO registrations_packsize VALUES(1192,1,1.0);
INSERT INTO registrations_packsize VALUES(1193,1,1.0);
INSERT INTO registrations_packsize VALUES(1194,5,10.0);
INSERT INTO registrations_packsize VALUES(1195,1,1.0);
INSERT INTO registrations_packsize VALUES(1196,1,1.0);
INSERT INTO registrations_packsize VALUES(1197,5,1.0);
INSERT INTO registrations_packsize VALUES(1198,1,1.0);
INSERT INTO registrations_packsize VALUES(1199,1,1.0);
INSERT INTO registrations_packsize VALUES(1200,1,1.0);
INSERT INTO registrations_packsize VALUES(1201,10,1.0);
INSERT INTO registrations_packsize VALUES(1202,9,1.0);
INSERT INTO registrations_packsize VALUES(1203,2,100.0);
INSERT INTO registrations_packsize VALUES(1204,8,1.0);
INSERT INTO registrations_packsize VALUES(1205,12,200.0);
INSERT INTO registrations_packsize VALUES(1206,2,150.0);
INSERT INTO registrations_packsize VALUES(1207,1,1.0);
INSERT INTO registrations_packsize VALUES(1208,1,1.0);
INSERT INTO registrations_packsize VALUES(1209,6,3.5);
CREATE TABLE "registrations_procurement" (
    "id" integer NOT NULL PRIMARY KEY,
    "source_id" integer NOT NULL REFERENCES "registrations_source" ("id"),
    "country_id" integer NOT NULL REFERENCES "registrations_country" ("id"),
    "product_id" integer NOT NULL REFERENCES "registrations_product" ("id"),
    "container_id" integer NOT NULL REFERENCES "registrations_container" ("id"),
    "packsize" integer,
    "supplier_id" integer REFERENCES "registrations_supplier" ("id"),
    "incoterm_id" integer NOT NULL REFERENCES "registrations_incoterm" ("id"),
    "price" real NOT NULL,
    "currency_id" integer NOT NULL REFERENCES "registrations_currency" ("id"),
    "volume" integer NOT NULL,
    "method" varchar(32),
    "start_date" date,
    "end_date" date
);
INSERT INTO registrations_procurement VALUES(1,1,11,1,2,1,29,1,13.95,1,32,'','2012-02-02','2012-02-02');
INSERT INTO registrations_procurement VALUES(2,1,11,2,3,1,25,1,17.5,2,34,'','2012-07-12','2012-07-12');
INSERT INTO registrations_procurement VALUES(3,1,11,3,4,1,7,2,3.0,2,1800,'','2012-04-12','2012-04-12');
INSERT INTO registrations_procurement VALUES(4,1,11,4,39,1,25,1,3.479,2,700,'','2012-09-03','2012-09-03');
INSERT INTO registrations_procurement VALUES(5,1,11,5,6,1,25,1,8.15,2,95,'','2012-07-24','2012-07-24');
INSERT INTO registrations_procurement VALUES(6,1,11,6,6,1,25,1,4.85,2,60,'','2012-10-22','2012-10-22');
INSERT INTO registrations_procurement VALUES(7,1,11,7,81,1,9,2,3.5,1,200,'','2012-10-10','2012-10-10');
INSERT INTO registrations_procurement VALUES(8,1,11,8,6,1,25,1,2.25,2,400,'','2012-04-19','2012-04-19');
INSERT INTO registrations_procurement VALUES(9,1,11,9,8,1,25,1,0.35,2,700,'','2012-04-19','2012-04-19');
INSERT INTO registrations_procurement VALUES(10,1,11,10,4,1,10,1,1.1,1,3000,'','2012-02-28','2012-02-28');
INSERT INTO registrations_procurement VALUES(11,1,11,10,4,1,10,1,1.1,1,10000,'','2012-02-28','2012-02-28');
INSERT INTO registrations_procurement VALUES(12,1,11,11,7,1,22,1,0.0085,2,150000,'','2012-02-28','2012-02-28');
INSERT INTO registrations_procurement VALUES(13,1,11,12,6,1,25,1,5.2,2,100,'','2012-09-03','2012-09-03');
INSERT INTO registrations_procurement VALUES(14,1,11,13,4,1,10,2,2.29,1,1000,'','2012-09-03','2012-09-03');
INSERT INTO registrations_procurement VALUES(15,1,11,13,4,1,10,2,2.7,1,1000,'','2012-09-06','2012-09-06');
INSERT INTO registrations_procurement VALUES(16,1,11,14,7,1,22,1,0.028,3,70000,'','2012-02-29','2012-02-29');
INSERT INTO registrations_procurement VALUES(17,1,11,53,62,1,25,1,7.25,2,280,'','2012-07-05','2012-07-05');
INSERT INTO registrations_procurement VALUES(18,1,11,16,9,1,25,1,1.065,2,1000,'','2012-09-03','2012-09-03');
INSERT INTO registrations_procurement VALUES(19,1,11,17,39,1,3,2,0.56,1,30000,'','2012-03-28','2012-03-28');
INSERT INTO registrations_procurement VALUES(20,1,11,18,49,1,15,2,8.538,4,4000,'','2012-11-06','2012-11-06');
INSERT INTO registrations_procurement VALUES(21,1,11,19,49,1,3,2,8.538,4,9000,'','2012-02-28','2012-02-28');
INSERT INTO registrations_procurement VALUES(22,1,11,20,11,1,29,1,0.4,1,1000,'','2012-02-29','2012-02-29');
INSERT INTO registrations_procurement VALUES(23,1,11,20,4,1,29,1,5.0,1,110,'','2012-09-10','2012-09-10');
INSERT INTO registrations_procurement VALUES(24,1,11,21,12,1,25,1,0.181,2,200,'','2012-04-10','2012-04-10');
INSERT INTO registrations_procurement VALUES(25,1,11,22,2,1,22,1,22.95,1,20,'','2012-03-28','2012-03-28');
INSERT INTO registrations_procurement VALUES(26,1,11,22,2,1,22,1,29.4,1,20,'','2012-03-28','2012-03-28');
INSERT INTO registrations_procurement VALUES(27,1,11,23,13,1,3,2,70.8,4,667,'','2012-02-28','2012-02-28');
INSERT INTO registrations_procurement VALUES(28,1,11,24,39,1,29,1,3.27,1,1266,'','2012-03-28','2012-03-28');
INSERT INTO registrations_procurement VALUES(29,2,15,25,14,1,44,3,12.6,5,2200,'','2012-04-16','2012-04-16');
INSERT INTO registrations_procurement VALUES(30,2,15,26,4,1,46,3,21.968,5,9000,'','2011-12-01','2011-12-01');
INSERT INTO registrations_procurement VALUES(31,2,15,27,93,1,44,3,5.946716,5,60000,'','2012-01-23','2012-01-23');
INSERT INTO registrations_procurement VALUES(32,2,15,28,94,1,48,3,195.0,5,5000,'','2012-01-09','2012-01-09');
INSERT INTO registrations_procurement VALUES(33,2,15,29,2,1,49,3,215.0,5,1800,'','2012-02-23','2012-02-23');
INSERT INTO registrations_procurement VALUES(34,2,15,30,13,1,46,3,8.2669323,5,30000,'','2012-08-28','2012-08-28');
INSERT INTO registrations_procurement VALUES(35,2,15,31,4,1,46,3,21.0526,5,15000,'','2012-12-01','2012-12-01');
INSERT INTO registrations_procurement VALUES(36,2,15,32,81,1,52,3,4.4,5,308000,'','2012-05-02','2012-05-02');
INSERT INTO registrations_procurement VALUES(37,2,15,33,6,1,53,3,282.07739,5,1000,'','2012-09-14','2012-09-14');
INSERT INTO registrations_procurement VALUES(38,2,15,34,11,1,55,3,7.95,5,250,'','2012-04-13','2012-04-13');
INSERT INTO registrations_procurement VALUES(39,2,15,35,15,1,49,3,12.95,5,43000,'','2012-05-30','2012-05-30');
INSERT INTO registrations_procurement VALUES(40,2,15,36,4,1,52,3,22.68,5,3000,'','2012-05-30','2012-05-30');
INSERT INTO registrations_procurement VALUES(41,2,15,37,4,1,44,3,12.940275,5,300,'','2012-04-13','2012-04-13');
INSERT INTO registrations_procurement VALUES(42,2,15,37,4,1,44,3,12.976293,5,1000,'','2012-07-06','2012-07-06');
INSERT INTO registrations_procurement VALUES(43,2,15,38,4,1,51,3,48.480243,5,12000,'','2012-04-13','2012-04-13');
INSERT INTO registrations_procurement VALUES(44,2,15,39,4,1,44,3,21.6627525,5,20000,'','2012-02-20','2012-02-20');
INSERT INTO registrations_procurement VALUES(45,2,15,40,4,1,44,3,7.3,5,26436,'','2012-05-07','2012-05-07');
INSERT INTO registrations_procurement VALUES(46,2,15,41,16,1,58,3,182.975338,5,50000,'','2012-09-12','2012-09-12');
INSERT INTO registrations_procurement VALUES(47,2,15,41,16,1,58,3,182.96837,5,50000,'','2012-11-12','2012-11-12');
INSERT INTO registrations_procurement VALUES(48,2,15,42,16,1,55,3,248.0,5,500,'','2012-10-05','2012-10-05');
INSERT INTO registrations_procurement VALUES(49,2,15,42,16,1,44,3,247.21,5,500,'','2012-10-05','2012-10-05');
INSERT INTO registrations_procurement VALUES(50,2,15,42,16,1,60,3,192.619613043,5,23000,'','2012-11-14','2012-11-14');
INSERT INTO registrations_procurement VALUES(51,2,15,43,17,1,55,3,3.3,5,3500,'','2012-07-23','2012-07-23');
INSERT INTO registrations_procurement VALUES(52,2,15,44,17,10,51,3,11.722,5,1000,'','2012-04-24','2012-04-24');
INSERT INTO registrations_procurement VALUES(53,2,15,45,2,1,64,3,11.04,5,5494,'','2012-03-05','2012-03-05');
INSERT INTO registrations_procurement VALUES(54,2,15,46,2,1,49,3,6.1,5,75000,'','2011-11-11','2011-11-11');
INSERT INTO registrations_procurement VALUES(55,2,15,46,2,1,49,3,455.0,5,1700,'','2012-06-21','2012-06-21');
INSERT INTO registrations_procurement VALUES(56,2,15,47,4,1,48,3,13.5,5,30000,'','2011-05-24','2011-05-24');
INSERT INTO registrations_procurement VALUES(57,2,15,48,4,1,52,3,23.9,5,5500,'','2011-02-08','2011-02-08');
INSERT INTO registrations_procurement VALUES(58,2,15,48,4,1,51,3,18.93,5,200000,'','2011-06-14','2011-06-14');
INSERT INTO registrations_procurement VALUES(59,2,15,48,6,1,44,3,70.96,5,2000,'','2011-01-26','2011-01-26');
INSERT INTO registrations_procurement VALUES(60,2,15,49,6,1,44,3,70.96,5,2000,'','2011-01-26','2011-01-26');
INSERT INTO registrations_procurement VALUES(61,2,15,49,6,1,44,3,59.55,5,9800,'','2011-03-08','2011-03-08');
INSERT INTO registrations_procurement VALUES(62,2,15,50,18,1,44,3,401.38,5,12,'','2011-06-20','2011-06-20');
INSERT INTO registrations_procurement VALUES(63,2,15,51,18,1,52,3,13.55,5,9288,'','2011-05-05','2011-05-05');
INSERT INTO registrations_procurement VALUES(64,2,15,51,18,1,52,3,13.37,5,14712,'','2011-06-27','2011-06-27');
INSERT INTO registrations_procurement VALUES(65,2,15,52,19,1,69,3,12.04,5,40000,'','2011-02-23','2011-02-23');
INSERT INTO registrations_procurement VALUES(66,2,15,53,19,1,51,3,74.32,5,30000,'','2011-06-06','2011-06-06');
INSERT INTO registrations_procurement VALUES(67,2,15,54,19,1,71,3,181.77,5,2000,'','2011-08-24','2011-08-24');
INSERT INTO registrations_procurement VALUES(68,2,15,55,20,1,44,3,4.84,5,69000,'','2011-05-23','2011-05-23');
INSERT INTO registrations_procurement VALUES(69,2,15,55,20,1,44,3,4.84,5,45000,'','2012-02-07','2012-02-07');
INSERT INTO registrations_procurement VALUES(70,2,15,55,20,1,44,3,4.84,5,22000,'','2012-04-16','2012-04-16');
INSERT INTO registrations_procurement VALUES(71,2,15,56,39,1,44,3,4.41,5,200000,'','2011-10-25','2011-10-25');
INSERT INTO registrations_procurement VALUES(72,2,15,56,39,1,44,3,4.41,5,264000,'','2012-02-15','2012-02-15');
INSERT INTO registrations_procurement VALUES(73,2,15,56,39,1,44,3,4.41,5,122000,'','2012-04-16','2012-04-16');
INSERT INTO registrations_procurement VALUES(74,2,15,57,2,1,48,3,3.95,5,25200,'','2011-03-12','2011-03-12');
INSERT INTO registrations_procurement VALUES(75,2,15,58,2,1,48,3,3.95,5,69300,'','2011-01-28','2011-01-28');
INSERT INTO registrations_procurement VALUES(76,2,15,58,2,1,48,3,3.95,5,78000,'','2011-03-07','2011-03-07');
INSERT INTO registrations_procurement VALUES(77,2,15,58,2,1,48,3,3.95,5,60000,'','2011-10-14','2011-10-14');
INSERT INTO registrations_procurement VALUES(78,2,15,58,2,1,48,3,3.95,5,6000,'','2011-12-05','2011-12-05');
INSERT INTO registrations_procurement VALUES(79,2,15,59,2,1,48,3,3.9,5,40000,'','2011-03-07','2011-03-07');
INSERT INTO registrations_procurement VALUES(80,2,15,59,2,1,48,3,3.9,5,20000,'','2011-10-18','2011-10-18');
INSERT INTO registrations_procurement VALUES(81,2,15,60,2,1,55,3,6.79,5,33000,'','2012-06-08','2012-06-08');
INSERT INTO registrations_procurement VALUES(82,2,15,61,18,1,49,3,31.75,5,2490,'','2012-02-14','2012-02-14');
INSERT INTO registrations_procurement VALUES(83,2,15,62,18,1,51,3,13.73,5,1334,'','2011-01-18','2011-01-18');
INSERT INTO registrations_procurement VALUES(84,2,15,62,18,1,51,3,15.06,5,1690,'','2011-10-14','2011-10-14');
INSERT INTO registrations_procurement VALUES(85,2,15,62,18,1,51,3,15.81,5,1139,'','2011-11-23','2011-11-23');
INSERT INTO registrations_procurement VALUES(86,2,15,63,74,1,23,3,20.55,5,2490,'','2012-02-14','2012-02-14');
INSERT INTO registrations_procurement VALUES(87,2,15,64,18,1,51,3,9.13,5,2000,'','2011-01-18','2011-01-18');
INSERT INTO registrations_procurement VALUES(88,2,15,64,18,1,51,3,10.01,5,4008,'','2011-10-14','2011-10-14');
INSERT INTO registrations_procurement VALUES(89,2,15,65,49,1,44,3,12.81,5,10000,'','2011-05-25','2011-05-25');
INSERT INTO registrations_procurement VALUES(90,2,15,66,49,1,51,3,16.59,5,70000,'','2011-11-23','2011-11-23');
INSERT INTO registrations_procurement VALUES(91,2,15,67,21,1,82,3,175.95,5,810,'','2012-05-30','2012-05-30');
INSERT INTO registrations_procurement VALUES(92,2,15,68,21,1,44,3,180.97,5,850,'','2011-08-16','2011-08-16');
INSERT INTO registrations_procurement VALUES(93,2,15,69,22,1,46,3,28.85,5,1200,'','2011-06-27','2011-06-27');
INSERT INTO registrations_procurement VALUES(94,2,15,69,22,1,46,3,30.93,5,800,'','2011-09-22','2011-09-22');
INSERT INTO registrations_procurement VALUES(95,2,15,69,22,1,46,3,34.32,5,1800,'','2011-12-01','2011-12-01');
INSERT INTO registrations_procurement VALUES(96,2,15,70,23,1,51,3,1.83,5,80000,'','2011-01-18','2011-01-18');
INSERT INTO registrations_procurement VALUES(97,2,15,70,23,1,51,3,2.05,5,80000,'','2011-10-03','2011-10-03');
INSERT INTO registrations_procurement VALUES(98,2,15,70,23,1,51,3,2.1,5,60000,'','2011-11-23','2011-11-23');
INSERT INTO registrations_procurement VALUES(99,2,15,71,13,1,79,3,57.05,5,632000,'','2011-07-22','2011-07-22');
INSERT INTO registrations_procurement VALUES(100,2,15,71,13,1,79,3,55.87,5,100000,'','2012-09-07','2012-09-07');
INSERT INTO registrations_procurement VALUES(101,2,15,71,13,1,79,3,55.88,5,200000,'','2012-11-12','2012-11-12');
INSERT INTO registrations_procurement VALUES(102,2,15,71,13,1,79,3,55.88,5,100000,'','2012-11-12','2012-11-12');
INSERT INTO registrations_procurement VALUES(103,2,15,72,13,1,58,3,57.2,5,150000,'','2012-09-06','2012-09-06');
INSERT INTO registrations_procurement VALUES(104,2,15,72,13,1,58,3,58.15,5,110500,'','2012-11-12','2012-11-12');
INSERT INTO registrations_procurement VALUES(105,2,15,72,13,1,58,3,58.15,5,200000,'','2012-11-12','2012-11-12');
INSERT INTO registrations_procurement VALUES(106,2,15,73,4,1,84,3,10.26,5,1200,'','2011-03-01','2011-03-01');
INSERT INTO registrations_procurement VALUES(107,2,15,74,4,1,44,3,29.72,5,4000,'','2011-08-15','2011-08-15');
INSERT INTO registrations_procurement VALUES(108,2,15,74,4,1,44,3,28.94,5,4000,'','2011-11-07','2011-11-07');
INSERT INTO registrations_procurement VALUES(109,2,15,74,4,1,55,3,27.5,5,15000,'','2012-04-04','2012-04-04');
INSERT INTO registrations_procurement VALUES(110,2,15,74,4,1,55,3,27.5,5,15000,'','2012-05-16','2012-05-16');
INSERT INTO registrations_procurement VALUES(111,4,3,75,14,1,87,4,9.34,4,350800,'domestic tender','2012-07-30','2012-07-31');
INSERT INTO registrations_procurement VALUES(112,4,3,76,11,1,87,4,3.18,4,10000,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(113,4,3,77,11,1,74,4,4.4,4,946400,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(114,4,3,78,11,1,54,4,5.35,4,236600,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(115,4,3,79,24,1,89,4,6.91,4,2862019,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(116,4,3,80,24,1,91,4,7.36,4,2805537,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(117,4,3,81,24,1,90,4,7.54,4,2762544,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(118,4,3,79,18,1,89,4,3.76,4,1331520,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(119,4,3,81,18,1,90,4,4.04,4,887680,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(120,4,3,79,4,1,89,4,12.68,4,305200,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(121,4,3,82,25,1,91,4,2.1,4,1008420,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(122,4,3,83,25,1,74,4,2.18,4,432180,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(123,4,3,83,18,1,74,4,2.63,4,295100,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(124,4,3,84,35,1,86,4,14.13,4,21100,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(125,4,3,85,27,1,74,4,1.15,4,2116100,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(126,4,3,85,28,1,74,4,2.18,4,1247440,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(127,4,3,86,28,1,91,4,2.6,4,311860,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(128,4,3,85,25,1,74,4,2.85,4,353300,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(129,4,3,87,4,1,86,4,10.13,4,92600,'domestic tender','2012-07-30','2013-07-31');
INSERT INTO registrations_procurement VALUES(130,5,3,88,7,1,91,4,2.4852,4,1278450,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(131,5,3,89,7,1,54,4,3.021,4,142050,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(132,5,3,90,18,1,92,4,6.1674,4,621900,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(133,5,3,90,4,1,92,4,22.7772,4,115400,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(134,5,3,91,18,1,92,4,2.85,4,3435200,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(135,5,3,92,18,1,18,4,3.05,4,858800,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(136,5,3,93,24,1,89,4,6.76,4,100000,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(137,5,3,91,29,1,92,4,7.0338,4,307800,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(138,5,3,94,24,1,93,4,6.02,4,126600,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(139,5,3,95,18,1,92,4,5.0274,4,67500,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(140,5,3,95,24,1,92,4,9.519,4,1638100,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(141,5,3,95,29,1,92,4,14.136,4,1417500,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(142,5,3,95,4,1,92,4,19.9044,4,164700,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(143,5,3,96,22,1,72,4,19.52,4,1831200,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(144,5,3,97,22,1,72,4,31.47,4,1733700,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(145,5,3,98,4,1,94,4,40.08,4,72200,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(146,5,3,99,11,1,86,4,0.6599,4,6913000,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(147,5,3,99,22,1,86,4,1.0599,4,3540200,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(148,5,3,99,6,1,86,4,24.9785,4,88800,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(149,5,3,100,4,1,86,4,6.5987,4,119000,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(150,5,3,100,3,1,86,4,24.4987,4,254800,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(151,5,3,101,25,1,86,4,2.1398,4,505000,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(152,5,3,102,24,1,90,4,5.3352,4,1839816,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(153,5,3,103,24,1,95,4,5.69,4,1226544,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(956,5,3,102,29,1,90,4,7.8888,4,1288029,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(957,5,3,103,29,1,95,4,7.75,4,1276079,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(958,5,3,141,74,1,93,4,7.75,4,1170392,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(959,5,3,141,3,1,93,4,40.02,4,278800,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(960,5,3,142,77,1,96,4,10.26,4,9100,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(961,5,3,143,18,1,86,4,7.5989,4,2201400,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(962,5,3,144,18,1,95,4,3.48,4,2595920,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(963,5,3,145,18,1,87,4,3.81,4,648980,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(964,5,3,147,18,1,95,4,3.48,4,1748460,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(965,5,3,146,18,1,87,4,5.41,4,1165640,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(966,10,3,148,30,1,91,4,2.76,4,1271340,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(967,10,3,149,30,1,90,4,2.9754,4,544860,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(968,10,3,148,39,1,91,4,3.37,4,2843470,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(969,10,3,149,39,1,90,4,3.658,4,1218630,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(970,10,3,150,78,1,90,4,1.96,4,6735714,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(971,10,3,151,78,1,91,4,2.11,4,4309068,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(972,10,3,152,78,1,97,4,2.13,4,3679218,'domestic tender','2011-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(973,10,3,150,79,1,90,4,12.54,4,92900,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(974,10,3,150,80,1,90,4,52.9,4,20600,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(975,10,3,153,78,1,90,4,3.14,4,6735714,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(976,10,3,154,78,NULL,91,4,3.39,4,4309068,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(977,10,3,155,78,1,97,4,3.34,4,3679218,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(978,10,3,153,79,1,90,4,20.41,4,137600,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(979,10,3,156,81,1,90,4,2.0,4,1284000,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(980,10,3,157,81,1,91,4,2.05,4,856000,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(981,10,3,158,82,1,87,4,6.34,4,53300,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(982,10,3,159,32,1,90,4,8.42,4,3173280,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(983,10,3,160,32,1,91,4,8.6,4,2115520,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(984,10,3,159,34,1,90,4,17.54,4,64000,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(985,10,3,159,24,1,90,4,24.61,4,97300,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(986,10,3,159,4,1,90,4,38.29,4,218100,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(987,10,3,159,3,1,90,4,184.1,4,84500,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(988,11,3,161,2,1,98,4,220.1,4,29200,'domestic tender','2012-04-01','2014-03-31');
INSERT INTO registrations_procurement VALUES(989,11,3,162,22,1,98,4,17.04,4,105800,'domestic tender','2012-04-01','2014-03-31');
INSERT INTO registrations_procurement VALUES(991,12,3,163,84,5,4,4,25.163,4,1510300,'domestic tender','2012-04-01','2014-03-31');
INSERT INTO registrations_procurement VALUES(992,12,3,164,85,1,76,4,22.8,4,271542,'domestic tender','2012-04-01','2014-03-31');
INSERT INTO registrations_procurement VALUES(993,13,3,165,86,1,86,4,14.8471,4,10544000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(994,13,3,166,86,1,54,4,17.4078,4,4399000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(995,13,3,167,86,1,99,4,16.95,4,3457000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(996,13,3,168,86,1,92,4,17.955,4,1600000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(997,13,3,169,87,1,60,4,176.09,4,2000000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(998,13,3,170,88,1,92,4,12.54,4,125000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(999,13,3,171,88,1,86,4,69.7109,4,423000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(1000,13,3,172,89,1,100,4,70.09,4,409000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(1001,13,3,173,88,1,94,4,68.2,4,368000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(1002,13,3,174,24,1,93,4,18.61,4,2230000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(1003,13,3,175,24,1,86,4,19.2767,4,1859000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(1004,13,3,176,24,1,92,4,20.98,4,912000,'domestic tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(1005,14,3,177,2,1,64,4,6.5,4,9782570,'domestic tender','2011-10-01','2013-09-30');
INSERT INTO registrations_procurement VALUES(1006,14,3,178,2,1,101,4,7.4931,4,4192530,'do','2011-10-01','2013-09-30');
INSERT INTO registrations_procurement VALUES(1007,14,3,179,90,1,102,4,17.1,4,50000,'domestic tender','2011-10-01','2013-09-30');
INSERT INTO registrations_procurement VALUES(1008,15,3,180,38,1,103,4,1.2466,4,11541330,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1009,15,3,181,38,1,104,4,1.9266,4,1282370,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1010,15,3,180,39,1,103,4,2.0466,4,5606900,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1011,15,3,180,40,1,103,4,9.2866,4,120000,'domestic tender','2012-10-01','2012-09-30');
INSERT INTO registrations_procurement VALUES(1012,16,3,182,91,1,76,4,39.88,4,1597600,'domestic tender','2011-08-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(1013,17,3,183,49,1,54,4,12.4146,4,2963607,'domestic tender','2012-07-01','2014-06-30');
INSERT INTO registrations_procurement VALUES(1014,17,3,184,41,1,54,4,19.38,4,1075,'domestic tender','2012-07-01','2014-06-30');
INSERT INTO registrations_procurement VALUES(1015,17,3,185,41,1,54,4,17.0886,4,5038202,'domestic tender','2012-07-01','2014-06-30');
INSERT INTO registrations_procurement VALUES(1016,18,3,186,38,1,105,4,279.59,4,3000,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1017,18,3,186,39,1,105,4,559.17,4,7200,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1018,18,3,187,17,1,105,4,513.27,4,44700,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1019,18,3,188,37,NULL,105,4,767.51,4,7000,'domestic tender','2012-10-01','2014-09-30');
INSERT INTO registrations_procurement VALUES(1020,5,3,190,4,NULL,74,4,28.5,4,28100,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(1021,5,3,190,6,NULL,74,4,94.0,4,122100,'domestic tender','2012-08-01','2014-07-31');
INSERT INTO registrations_procurement VALUES(1785,21,15,2245,14,1,NULL,1,1.215396,1,10000,'','2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1786,21,15,1898,4,1,NULL,1,2.577766,1,3501,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1787,21,15,1900,39,1,NULL,1,0.87872,1,12500,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1788,21,15,1902,43,1,NULL,1,23.16206,1,350,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1789,21,15,1903,2,1,NULL,1,10.49699,1,3550,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1790,21,15,1904,13,1,NULL,1,1.032975,1,69886,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1791,21,15,1905,4,1,NULL,1,2.067675,1,43980,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1792,21,15,1906,2,1,NULL,1,0.576991,1,12500,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1793,21,15,1908,3,1,NULL,1,36.237,1,76,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1794,21,15,1910,4,1,NULL,1,15.97738,1,740,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1795,21,15,1912,44,1,NULL,1,1.377647,1,242203,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1796,21,15,1915,4,1,NULL,1,1.4742,1,12816,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1797,21,15,1917,45,1,NULL,1,2.974747,1,15000,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1798,21,15,1918,4,1,NULL,1,4.288833,1,32424,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1799,21,15,1920,4,1,NULL,1,0.95355,1,45384,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1800,21,15,1921,46,1,NULL,1,3.286394,1,11520,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1801,21,15,1924,16,1,NULL,1,45.45473,1,280,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1802,21,15,1925,17,1,NULL,1,1.641924,1,13500,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1803,21,15,1926,47,1,NULL,1,1.957071,1,20000,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1804,21,15,1927,2,1,NULL,1,1.326372,1,5494,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1805,21,15,1928,4,1,NULL,1,2.741336,1,5000,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1806,21,15,1929,6,1,NULL,1,12.51012,1,23620,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1807,21,15,1931,48,1,NULL,1,14.21374,1,14510,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1808,21,15,1932,20,1,NULL,1,3.124368,1,61500,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1809,21,15,1933,39,1,NULL,1,0.446586,1,18180,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1810,21,15,1934,2,1,NULL,1,0.60828,1,70000,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1811,21,15,1937,49,1,NULL,1,2.193282,1,49000,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1812,21,15,1939,50,1,NULL,1,10.20191,1,1050,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1813,21,15,1942,23,1,NULL,1,0.364976,1,48726,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1814,21,15,1943,13,1,NULL,1,9.984,1,576200,NULL,'2007-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1815,21,25,1946,6,NULL,NULL,1,6.4,2,525,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1816,21,25,1947,6,NULL,NULL,1,3.85,2,100,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1817,21,25,1949,39,NULL,NULL,1,0.29,2,132450,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1818,21,25,1950,6,NULL,NULL,1,22.06,2,689,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1819,21,25,1954,6,NULL,NULL,1,9.2,2,1300,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1820,21,25,1955,2,NULL,NULL,1,0.311,2,68890,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1821,21,25,1957,6,NULL,NULL,1,10.95,2,3886,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1822,21,25,1958,6,NULL,NULL,1,1.01,2,5448,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1823,21,25,1960,4,NULL,NULL,1,1.8,2,16860,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1824,21,25,1961,51,NULL,NULL,1,0.21,2,24600,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1825,21,25,1962,39,NULL,NULL,1,0.247,2,24270,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1826,21,25,1963,6,NULL,NULL,1,6.8,2,15558,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1827,21,25,1964,6,NULL,NULL,1,1.55,2,3948,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1828,21,25,1965,6,NULL,NULL,1,2.89,2,1038,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1829,21,25,1967,6,NULL,NULL,1,16.69,2,2000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1830,21,25,1968,6,NULL,NULL,1,1.12,2,772,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1831,21,25,1969,6,NULL,NULL,1,1.8,2,447,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1832,21,25,1970,46,NULL,NULL,1,4.62,2,1500,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1833,21,25,1974,52,NULL,NULL,1,68.0,2,200,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1834,21,25,1976,53,NULL,NULL,1,60.89,2,19,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1835,21,25,1978,6,NULL,NULL,1,3.25,2,28927,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1836,21,25,1979,54,NULL,NULL,1,1.12,2,12614,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1837,21,25,1981,19,NULL,NULL,1,2.2,2,10495,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1838,21,25,1982,55,NULL,NULL,1,8.33,2,1009,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1839,21,25,1983,39,NULL,NULL,1,0.161,2,53440,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1840,21,25,1984,2,NULL,NULL,1,0.143,2,45550,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1841,21,25,1987,49,NULL,NULL,1,1.24,2,1031,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1842,21,25,1990,6,NULL,NULL,1,15.01,2,400,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1843,21,25,1992,56,NULL,NULL,1,0.1172,2,117000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1844,21,25,1994,4,NULL,NULL,1,2.1,2,41000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1845,21,26,1997,6,NULL,NULL,6,9.23,1,2200,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1846,21,26,1999,39,NULL,NULL,6,4.79,4,39500,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1847,21,26,2000,3,NULL,NULL,6,139.45,4,4000,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1848,21,26,2003,13,NULL,NULL,6,4.85,1,48000,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1849,21,26,2004,22,NULL,NULL,6,34.56,1,62,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1850,21,26,2005,37,NULL,NULL,6,7.37,1,503,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1851,21,26,2010,4,NULL,NULL,6,43.13,11,3300,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1852,21,26,2011,44,NULL,NULL,6,0.63,1,7200,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1853,21,26,2013,6,NULL,NULL,6,169.99,1,307,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1854,21,26,2014,6,NULL,NULL,6,5.97,1,2030,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1855,21,26,2015,3,NULL,NULL,6,57.81,1,2000,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1856,21,26,2017,4,NULL,NULL,6,23.65,1,1500,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1857,21,26,2019,6,NULL,NULL,6,156.27,4,480,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1858,21,26,2020,46,NULL,NULL,6,35.0,1,27000,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1859,21,26,2023,16,NULL,NULL,6,39.5,1,7120,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1860,21,26,2024,17,NULL,NULL,6,14.79,4,790,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1861,21,26,2025,45,NULL,NULL,6,1.9,1,59480,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1862,21,26,2026,53,NULL,NULL,6,540.0,1,950,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1863,21,26,2027,3,NULL,NULL,6,46.63,1,2350,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1864,21,26,2028,3,NULL,NULL,6,53.0,1,40,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1865,21,26,2030,22,NULL,NULL,6,57.94,1,1200,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1866,21,26,2032,55,NULL,NULL,6,12.2,1,850,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1867,21,26,2033,39,NULL,NULL,6,3.62,1,128000,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1868,21,26,2034,37,NULL,NULL,6,70.82,1,2200,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1869,21,26,2037,49,NULL,NULL,6,16.5,1,18500,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1870,21,26,2039,50,NULL,NULL,6,3.25,4,6500,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1871,21,26,2041,22,NULL,NULL,6,78.66,1,380,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1872,21,26,2042,12,NULL,NULL,6,5.0,11,25150,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1873,21,26,2043,13,NULL,NULL,6,8.54,1,87504,NULL,'2009-05-01','2010-05-31');
INSERT INTO registrations_procurement VALUES(1874,21,22,2049,39,NULL,NULL,2,72.5,10,700000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1875,21,22,2054,6,NULL,NULL,2,1242.26,10,1578,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1876,21,22,2056,4,NULL,NULL,2,336.53,10,2500,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1877,21,22,2057,6,NULL,NULL,2,2435.0,10,18000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1878,21,22,2058,6,NULL,NULL,2,155.11,10,8190,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1879,21,22,2060,4,NULL,NULL,2,311.81,10,89815,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1880,21,22,2062,39,NULL,NULL,2,53.7,10,520000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1881,21,22,2064,6,NULL,NULL,2,540.0,10,400,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1882,21,22,2069,6,NULL,NULL,2,200.27,10,3000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1883,21,22,2070,46,NULL,NULL,2,763.58,10,20000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1884,21,22,2074,17,NULL,NULL,2,150.0,10,25000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1885,21,22,2077,4,NULL,NULL,2,127.41,10,4000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1886,21,22,1979,51,NULL,NULL,2,4.24,10,1037070,'','2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1887,21,22,2080,4,NULL,NULL,2,249.0,10,6000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1888,21,22,2081,48,NULL,NULL,2,13.0,10,100000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1889,21,22,2083,39,NULL,NULL,2,54.7,10,500000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1890,21,22,2084,2,NULL,NULL,2,20.61,10,465483,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1891,21,22,2087,49,NULL,NULL,2,190.0,10,50000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1892,21,22,2089,39,NULL,NULL,2,260.36,10,2000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1893,21,22,2090,6,NULL,NULL,2,2095.36,10,43333,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1894,21,22,2092,23,NULL,NULL,2,22.0,10,440000,NULL,'2007-01-01','2007-12-31');
INSERT INTO registrations_procurement VALUES(1895,21,23,2096,6,NULL,NULL,3,8.95,1,1500,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1896,21,23,2097,3,NULL,NULL,1,1.6112,1,600,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1897,21,23,2100,6,NULL,NULL,1,20.59,1,35000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1898,21,23,2104,6,NULL,NULL,1,9.49,1,2000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1899,21,23,2107,6,NULL,NULL,1,9.73,1,8000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1900,21,23,2112,57,NULL,NULL,3,14.4,1,40000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1901,21,23,2113,6,NULL,NULL,3,7.74,1,75000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1902,21,23,2119,3,NULL,NULL,1,0.93,1,2000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1903,21,23,2120,9,NULL,NULL,1,4.5,1,5000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1904,21,23,2030,3,NULL,NULL,3,4.2,1,1000,'','2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1905,21,23,2134,53,NULL,NULL,3,16.3481,1,8000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1906,21,23,2138,4,NULL,NULL,3,1.8,1,500,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1907,21,23,2142,58,NULL,NULL,1,0.065,1,300000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1908,21,27,2147,3,NULL,NULL,1,58.64,9,5421,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1909,21,27,2149,39,NULL,NULL,1,4.36,9,283020,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1910,21,27,2151,43,NULL,NULL,1,5.71,9,81100,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1911,21,27,2152,2,NULL,NULL,1,147.32,9,694,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1912,21,27,2154,4,NULL,NULL,1,134.7,9,5119,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1913,21,27,2155,2,NULL,NULL,6,3.96,9,92495,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1914,21,27,2157,6,NULL,NULL,6,331.51,9,172,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1915,21,27,2158,4,NULL,NULL,1,5.74,9,20910,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1916,21,27,2160,11,NULL,NULL,6,2.43,9,33460,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1917,21,27,2162,39,NULL,NULL,1,2.76,9,271527,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1918,21,27,2163,3,NULL,NULL,1,25.61,9,181920,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1919,21,27,2164,6,NULL,NULL,1,26.72,9,794,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1920,21,27,2166,59,NULL,NULL,1,893.33,9,284,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1921,21,27,2167,4,NULL,NULL,1,37.59,9,26593,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1922,21,27,2168,6,NULL,NULL,1,62.04,9,8545,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1923,21,27,2169,4,NULL,NULL,1,20.16,9,11831,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1924,21,27,2170,60,NULL,NULL,1,30.95,9,4170,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1925,21,27,2171,13,NULL,NULL,1,25.51,9,4549,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1926,21,27,2173,16,NULL,NULL,1,298.26,9,21628,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1927,21,27,2174,61,NULL,NULL,6,11.53,9,1539,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1928,21,27,2175,45,NULL,NULL,1,1039.23,9,1582,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1929,21,27,2176,2,NULL,NULL,1,3.64,9,171500,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1930,21,27,2177,4,NULL,NULL,1,16.06,9,33603,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1931,21,27,2181,62,NULL,NULL,1,133.1,9,16004,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1932,21,27,2182,20,NULL,NULL,1,16.05,9,4884,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1933,21,27,2183,39,NULL,NULL,1,1.06,9,750679,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1934,21,27,2184,37,NULL,NULL,1,66.45,9,2062,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1935,21,27,2185,4,NULL,NULL,1,123.02,9,6847,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1936,21,27,2186,18,NULL,NULL,1,13.1,9,9342,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1937,21,27,2187,49,NULL,NULL,1,9.38,9,75739,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1938,21,27,2189,63,NULL,NULL,6,89.45,9,2272,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1939,21,27,2190,43,NULL,NULL,6,15.17,9,9517,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1940,21,27,2191,4,NULL,NULL,1,39.93,9,2127,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1941,21,27,2192,23,NULL,NULL,1,1.39,9,30371,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1942,21,27,2193,13,NULL,NULL,1,92.34,9,510256,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(1943,21,3,2245,14,NULL,NULL,5,9.68,4,282474,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1944,21,3,2246,7,NULL,NULL,5,3.2,4,400127,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1945,21,3,2247,29,NULL,NULL,5,6.7602,4,413026,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1946,21,3,2249,30,NULL,NULL,5,2.99,4,2086513,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1947,21,3,2250,4,NULL,NULL,5,28.69,4,113334,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1948,21,3,2252,2,NULL,NULL,5,237.44,4,21630,'','2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1949,21,3,2253,24,NULL,NULL,5,6.47,4,42756,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1950,21,3,2254,4,NULL,NULL,5,19.88,4,2939,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1951,21,3,2255,2,NULL,NULL,5,2.69,4,1503252,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1952,21,3,2256,32,NULL,NULL,5,8.16,4,62111,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1953,21,3,2258,6,NULL,NULL,5,28.29,4,39559,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1954,21,3,2259,28,NULL,NULL,5,13.14,4,20395,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1955,21,3,2260,11,NULL,NULL,5,3.74,4,846505,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1956,21,3,2262,38,NULL,NULL,5,1.8468,4,2296359,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1957,21,3,2263,18,NULL,NULL,5,5.7,4,20011,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1958,21,3,2264,4,NULL,NULL,5,5.7,4,4824,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1959,21,3,2265,25,NULL,NULL,5,2.68,4,201265,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1960,21,3,2267,8,NULL,NULL,5,18.8,4,11,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1961,21,3,2269,4,NULL,NULL,5,6.9,4,22964,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1962,21,3,2270,46,NULL,NULL,5,28.75,4,305877,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1963,21,3,2272,8,NULL,NULL,5,18.82,4,11,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1964,21,3,2273,16,NULL,NULL,5,319.07,4,617000,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1965,21,3,2274,17,NULL,NULL,5,1.473,4,1781889,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1966,21,3,2275,45,NULL,NULL,5,34.06,4,1205430,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1967,21,3,2276,2,NULL,NULL,5,5.5974,4,10762998,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1968,21,3,2277,3,NULL,NULL,5,29.36,4,451489,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1969,21,3,2278,35,NULL,NULL,5,18.8784,4,134388,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1970,21,3,2030,22,NULL,NULL,5,10.49,4,1211325,'','2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1971,21,3,2281,19,NULL,NULL,5,31.6031,4,256707,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1972,21,3,2282,20,NULL,NULL,5,4.15,4,3122583,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1973,21,3,2283,40,NULL,NULL,5,8.3914,4,101399,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1974,21,3,2284,2,NULL,NULL,5,7.56,4,1674479,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1975,21,3,2285,24,NULL,NULL,5,30.78,4,388115,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1976,21,3,2286,18,NULL,NULL,5,13.09,4,20002,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1977,21,3,2287,49,NULL,NULL,5,12.5,4,1260494,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1978,21,3,2288,18,NULL,NULL,5,6.14,4,1459208,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1979,21,3,2289,50,NULL,NULL,5,102.17,4,238516,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1980,21,3,2291,35,NULL,NULL,5,215.46,4,5551,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1981,21,3,2293,13,NULL,NULL,5,91.7928,4,20000,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1982,21,3,2297,18,NULL,NULL,5,2.65,4,2401324,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1983,21,3,2299,39,NULL,NULL,5,3.39,4,3339980,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1984,21,3,2300,22,NULL,NULL,5,8.69,4,200010,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1985,21,3,2304,3,NULL,NULL,5,82.61,4,47611,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1986,21,3,2308,22,NULL,NULL,5,1.28,4,1810279,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1987,21,3,2309,4,NULL,NULL,5,40.08,4,46555,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1988,21,3,2312,39,NULL,NULL,5,2.85,4,2596111,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1989,21,3,2313,6,NULL,NULL,5,110.24,4,90352,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1990,21,3,2314,3,NULL,NULL,5,15.47,4,21111,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1991,21,3,2317,4,NULL,NULL,5,41.49,4,152460,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1992,21,3,2319,3,NULL,NULL,5,20.65,4,58280,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1993,21,3,2327,29,NULL,NULL,5,6.68,4,1111019,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1994,21,3,2328,18,NULL,NULL,5,2.38,4,315008,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1995,21,3,2333,39,NULL,NULL,5,1.9348,4,3529425,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1996,21,3,2335,29,NULL,NULL,5,39.9,4,1866849,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1997,21,3,2336,29,NULL,NULL,5,39.1,4,31752,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1998,21,3,2337,41,NULL,NULL,5,18.183,4,6418042,'','2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(1999,21,3,2341,22,NULL,NULL,5,23.37,4,87049,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2000,21,3,2350,31,NULL,NULL,5,4.44,4,12516980,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2001,21,3,2354,29,NULL,NULL,5,15.5382,4,1285941,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2002,21,3,2358,11,NULL,NULL,5,1.01,4,5169886,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2003,21,3,2363,34,NULL,NULL,5,5.59,4,191172,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2004,21,3,2367,32,NULL,NULL,5,8.69,4,5269966,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2005,21,3,2369,29,NULL,NULL,5,3.31,4,628305,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2006,21,3,2377,24,NULL,NULL,5,4.64,4,2449521,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2007,21,3,2378,25,NULL,NULL,5,1.99,4,2034930,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2008,21,3,2383,38,NULL,NULL,5,1.1878,4,13024158,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2009,21,3,2386,24,NULL,NULL,5,26.05,4,217264,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2010,21,3,2404,24,NULL,NULL,5,9.16,4,1534479,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2011,21,3,2413,4,NULL,NULL,5,14.76,4,610035,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2012,21,3,2419,24,NULL,NULL,5,2.7018,4,2078097,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2013,21,3,2454,22,NULL,NULL,5,19.11,4,1540695,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2014,21,3,2463,24,NULL,NULL,5,5.749,4,4543453,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2015,21,3,2469,18,NULL,NULL,5,1.4,4,3269545,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2016,21,3,2513,32,NULL,NULL,5,2.416,4,9653909,NULL,'2009-01-01','2011-12-31');
INSERT INTO registrations_procurement VALUES(2017,21,28,2550,3,NULL,NULL,7,68.45,13,1500,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2018,21,28,2552,39,NULL,NULL,7,4.96,13,185000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2019,21,28,2556,13,NULL,NULL,7,24.55,13,29500,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2020,21,28,2557,6,NULL,NULL,7,237.78,13,1960,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2021,21,28,2561,6,NULL,NULL,7,66.8,13,1850,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2022,21,28,2563,4,NULL,NULL,7,74.47,13,2100,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2023,21,28,2564,44,NULL,NULL,7,10.63,13,3600,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2024,21,28,2565,39,NULL,NULL,7,3.73,13,185000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2025,21,28,2566,3,NULL,NULL,7,33.3,13,20000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2026,21,28,2568,6,NULL,NULL,7,283.28,13,350,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2027,21,28,2569,45,NULL,NULL,7,93.0,13,72000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2028,21,28,2570,6,NULL,NULL,7,499.98,13,10000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2029,21,28,2571,6,NULL,NULL,7,223.44,13,7000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2030,21,28,2572,6,NULL,NULL,7,52.17,13,2150,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2031,21,28,2573,46,NULL,NULL,7,46.0,13,15000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2032,21,28,2574,22,NULL,NULL,7,63.55,13,1350,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2033,21,28,2576,16,NULL,NULL,7,360.0,13,3550,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2034,21,28,2577,55,NULL,NULL,7,115.3,13,400,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2035,21,28,2578,45,NULL,NULL,7,22.0,13,36000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2036,21,28,2580,3,NULL,NULL,7,45.5,13,8250,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2037,21,28,2581,6,NULL,NULL,7,49.41,13,3800,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2038,21,28,2030,18,NULL,NULL,7,46.55,13,1200,'','2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2039,21,28,2584,62,NULL,NULL,7,1197.0,13,1500,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2040,21,28,2586,66,NULL,NULL,7,31.25,13,15300,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2041,21,28,2587,2,NULL,NULL,7,3.95,13,12500,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2042,21,28,2588,13,NULL,NULL,7,45.28,13,25000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2043,21,28,2589,29,NULL,NULL,7,38.73,13,1500,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2044,21,28,2590,49,NULL,NULL,7,19.13,13,25000,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2045,21,28,2595,12,NULL,NULL,7,1.95,13,3550,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2046,21,28,2597,4,NULL,NULL,7,24.68,13,325,NULL,'2009-12-01','2010-06-30');
INSERT INTO registrations_procurement VALUES(2047,21,29,2245,3,NULL,NULL,9,18.0,1,1161,'','2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2048,21,29,2602,67,NULL,NULL,8,7.16,1,780000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2049,21,29,2606,4,NULL,NULL,9,1.69,1,12000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2050,21,29,2607,3,NULL,NULL,9,3.15,2,3000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2051,21,29,2608,68,NULL,NULL,9,22.0,1,17060,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2052,21,29,2610,6,NULL,NULL,8,13.68,1,26000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2053,21,29,2611,6,NULL,NULL,8,0.671,1,18000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2054,21,29,2613,4,NULL,NULL,8,1.76,1,40000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2055,21,29,2614,44,NULL,NULL,9,0.18,1,82000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2056,21,29,2618,4,NULL,NULL,8,11000.0,7,100,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2057,21,29,2620,6,NULL,NULL,8,17.37,1,80940,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2058,21,29,2630,4,NULL,NULL,9,1.22,1,8700,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2059,21,29,2631,6,NULL,NULL,8,6.3,1,88,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2060,21,29,2633,4,NULL,NULL,9,0.61,2,4800,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2061,21,29,2638,6,NULL,NULL,9,22.47,1,1000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2062,21,29,2640,49,NULL,NULL,8,1.23,1,17600,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2063,21,29,2641,4,NULL,NULL,9,2.1,1,2800,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2064,21,29,2643,69,NULL,NULL,8,3895.0,7,42000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2065,21,29,2644,4,NULL,NULL,9,1.5,1,3000,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2066,21,29,2645,12,NULL,NULL,9,0.14,1,56250,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2067,21,29,2646,13,NULL,NULL,9,8.57,1,172837,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2068,21,29,2647,4,NULL,NULL,8,2.5,1,1200,NULL,'2008-07-01','2009-06-30');
INSERT INTO registrations_procurement VALUES(2069,21,30,2245,4,NULL,NULL,5,16396.0,8,35603,'','2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2070,21,30,2649,6,NULL,NULL,5,660000.0,8,2,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2071,21,30,2650,6,NULL,NULL,5,57018.0,8,2495,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2072,21,30,2652,39,NULL,NULL,5,1842.75,8,566931,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2073,21,30,2653,6,NULL,NULL,5,151760.068741388,8,55879,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2074,21,30,2654,43,NULL,NULL,5,3679.13875064533,8,1452750,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2075,21,30,2655,37,NULL,NULL,5,267508.0,8,109,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2076,21,30,2657,6,NULL,NULL,5,52313.0,8,10,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2077,21,30,2658,70,NULL,NULL,5,46500.0,8,1604,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2078,21,30,2660,6,NULL,NULL,5,51320.0,8,9077,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2079,21,30,2661,6,NULL,NULL,5,7615.68112729576,8,18948,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2080,21,30,2663,6,NULL,NULL,5,75396.5,8,10000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2081,21,30,2665,39,NULL,NULL,5,2798.0,8,605341,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2082,21,30,2666,6,NULL,NULL,5,52967.25,8,69736,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2083,21,30,2667,6,NULL,NULL,5,12722.1296681562,8,13651,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2084,21,30,2670,6,NULL,NULL,5,119283.738171688,8,31767,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2085,21,30,2671,6,NULL,NULL,5,8250.0,8,1000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2086,21,30,2672,6,NULL,NULL,5,16595.6965570901,8,10282,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2087,21,30,2673,46,NULL,NULL,5,276455.555555556,8,5040,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2088,21,30,2674,13,NULL,NULL,5,11512.2021956926,8,16669,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2089,21,30,2675,8,NULL,NULL,5,1181.25,8,20000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2090,21,30,2676,16,NULL,NULL,5,185456.958261273,8,79679,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2091,21,30,2679,71,NULL,NULL,5,3737.25,8,35968,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2092,21,30,2681,6,NULL,NULL,5,16395.75,8,32995,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2093,21,30,2684,72,NULL,NULL,5,10750.0,8,35988,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2094,21,30,2685,55,NULL,NULL,5,66300.0,8,2956,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2095,21,30,2687,68,NULL,NULL,5,46800.0,8,12060,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2096,21,30,2688,73,NULL,NULL,5,105991.635693445,8,25705,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2097,21,30,2689,74,NULL,NULL,5,11222.0,8,14495,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2098,21,30,2693,6,NULL,NULL,5,95000.0,8,5145,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2099,21,30,2694,22,NULL,NULL,5,1162489.20863309,8,417,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2100,21,30,2696,13,NULL,NULL,5,44401.7228714483,8,738777,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2101,21,30,2697,4,NULL,NULL,5,9727.16,8,2000,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2102,21,16,2245,14,NULL,NULL,5,1.03,1,154,'','2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2103,21,16,2699,4,NULL,NULL,5,1.9,1,5689,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2104,21,16,2700,6,NULL,NULL,5,2.2,1,1176,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2105,21,16,2703,6,NULL,NULL,5,33.48,1,73656,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2106,21,16,2704,43,NULL,NULL,5,15.59,1,891,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2107,21,16,2706,4,NULL,NULL,5,1.03,1,5725,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2108,21,16,2707,4,NULL,NULL,5,1.93,1,2084,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2109,21,16,2710,6,NULL,NULL,5,11.74,1,7278,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2110,21,16,2712,6,NULL,NULL,5,5.64,1,67228,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2111,21,16,2714,44,NULL,NULL,5,1.78,1,10975,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2112,21,16,2715,39,NULL,NULL,5,0.24,1,137724,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2113,21,16,2716,3,NULL,NULL,5,3.1,1,386745,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2114,21,16,2722,6,NULL,NULL,5,2.67,1,40998,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2115,21,16,2723,46,NULL,NULL,5,4.64,1,10170,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2116,21,16,2724,13,NULL,NULL,5,2.54,1,342901,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2117,21,16,2730,3,NULL,NULL,5,3.14,1,3758,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2118,21,16,2731,6,NULL,NULL,5,4.3,1,203759,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2119,21,16,2735,20,NULL,NULL,5,0.12,1,33111,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2120,21,16,2736,75,NULL,NULL,5,0.84,1,64080,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2121,21,16,2738,6,NULL,NULL,5,5.68,1,30651,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2122,21,16,2740,49,NULL,NULL,5,2.09,1,63111,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2123,21,16,2745,23,NULL,NULL,5,0.15,1,110003,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2124,21,16,2746,13,NULL,NULL,5,9.25,1,616853,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2125,21,11,2749,7,1,NULL,8,0.13,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2126,21,11,2750,7,1,NULL,8,0.0075,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2127,21,11,2752,39,1,NULL,8,2.185,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2128,21,11,2757,7,1,NULL,8,0.036,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2129,21,11,2758,2,1,NULL,8,4.76,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2130,21,11,2759,7,1,NULL,8,0.062,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2131,21,11,2761,7,1,NULL,8,0.007,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2132,21,11,2762,7,1,NULL,8,0.0075,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2133,21,11,2764,44,1,NULL,8,0.091,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2134,21,11,2765,39,1,NULL,8,0.651,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2135,21,11,2766,7,1,NULL,8,0.014,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2136,21,11,2767,7,1,NULL,8,0.007,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2137,21,11,2768,7,1,NULL,8,0.024,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2138,21,11,2769,45,1,NULL,8,3.9,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2139,21,11,2770,7,1,NULL,8,0.029,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2140,21,11,2771,7,1,NULL,8,0.003,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2141,21,11,2778,47,1,NULL,8,2.5,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2142,21,11,2780,7,1,NULL,8,0.013,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2143,21,11,2781,7,1,NULL,8,0.01,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2144,21,11,2783,7,1,NULL,8,0.25,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2145,21,11,2784,48,1,NULL,8,0.14,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2146,21,11,2785,20,1,NULL,8,0.54,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2147,21,11,2786,39,1,NULL,8,0.69,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2148,21,11,2787,2,1,NULL,8,0.67,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2149,21,11,2790,49,1,NULL,8,2.01,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2150,21,11,2792,76,1,NULL,8,3.19,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2151,21,11,2793,7,1,NULL,8,0.06,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2152,21,11,2794,7,1,NULL,8,0.05,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2153,21,11,2795,23,1,NULL,8,1.01,1,1,NULL,'2009-01-01','2009-12-31');
INSERT INTO registrations_procurement VALUES(2154,1,11,24,39,1,29,1,3.27,1,300,'','2012-02-07','2012-02-07');
INSERT INTO registrations_procurement VALUES(2155,1,11,2798,39,1,29,1,0.35,1,5000,'','2012-02-23','2012-02-23');
INSERT INTO registrations_procurement VALUES(2156,25,3,93,3,1,89,4,34.2,4,20000,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2157,25,3,2800,3,1,109,4,14.76,4,18900,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2158,25,3,2801,31,1,74,4,3.2,4,1711000,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2159,25,3,2801,96,1,74,4,4.2,4,569800,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2160,25,3,2801,29,1,74,4,5.5,4,642500,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2161,25,3,74,11,1,110,4,7.71,4,100000,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2162,25,3,74,4,1,110,3,17.8,4,10000,'domestic tender','2012-12-03','2014-07-31');
INSERT INTO registrations_procurement VALUES(2163,32,3,2802,38,1,104,4,2.0862,4,1200000,'domestic tender','2012-10-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(2164,32,3,2803,38,1,89,4,2.34,4,300000,'domestic tender','2012-10-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(2165,32,3,2802,39,1,104,4,3.0552,4,2000000,'domestic tender','2012-10-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(2166,32,3,2804,39,1,91,4,3.6366,4,500000,'domestic tender','2012-10-01','2013-07-31');
INSERT INTO registrations_procurement VALUES(2167,38,23,2833,6,1,NULL,3,10.78,1,5400,'Tender','2012-01-01','2012-12-31');
INSERT INTO registrations_procurement VALUES(2168,38,23,2806,3,1,NULL,3,4.08,1,3327,'Tender','2012-01-01','2012-12-31');
INSERT INTO registrations_procurement VALUES(2169,38,23,2807,6,1,NULL,3,11.88,1,4101,'Tender','2012-01-01','2012-12-31');
INSERT INTO registrations_procurement VALUES(2170,38,23,2808,3,1,111,3,6.28,1,2500,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2171,38,23,2809,111,1,114,3,2.61,1,37800,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2172,38,23,2810,94,1,111,3,16.39,1,8550,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2173,38,23,2811,6,1,115,3,25.99,1,7200,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2174,38,23,2812,6,1,113,3,2.3,1,27135,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2175,38,23,2813,6,1,111,3,3.93,1,25200,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2176,38,23,2814,80,1,113,3,3.67,1,4770,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2177,38,23,2816,48,1,111,3,0.06,1,1770000,'Tender','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2178,38,23,2817,4,NULL,117,3,12.1,1,186,'Tender','2013-03-01','2013-03-01');
INSERT INTO registrations_procurement VALUES(2179,38,23,2817,4,NULL,117,3,16.6,1,144,'Tender','2013-03-01','2013-03-01');
INSERT INTO registrations_procurement VALUES(2180,38,23,2819,4,NULL,113,3,5.4,1,1290,'Tender','2013-03-01','2013-03-01');
INSERT INTO registrations_procurement VALUES(2181,38,23,2821,3,1,113,3,2.57,1,4674,'Tender','2013-03-01','2013-03-01');
INSERT INTO registrations_procurement VALUES(2182,38,23,2822,6,1,113,3,2.3,1,27135,'Tender','2013-03-01','2013-03-01');
INSERT INTO registrations_procurement VALUES(2183,38,23,2823,6,1,118,3,1.15,1,15519,'Tender','2013-03-01','2013-03-01');
INSERT INTO registrations_procurement VALUES(2184,39,29,2897,3,1,146,3,10.0,2,1514,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2185,39,29,2898,93,24,147,3,0.3,1,1514,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2186,39,29,2899,94,1,148,3,12.37,1,43435,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2187,39,29,30,26,1,146,3,2.6,2,11953,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2188,39,29,31,3,1,146,3,12.0,2,2562,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2189,39,29,2901,81,20,149,3,0.27,1,35177,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2190,41,30,2883,20,100,142,3,900.0,8,2500,'Unknown','2012-04-23','2012-04-23');
INSERT INTO registrations_procurement VALUES(2191,41,30,2883,20,100,140,3,4975.5,8,4000,'Unknown','2012-06-27','2012-06-27');
INSERT INTO registrations_procurement VALUES(2192,41,30,2883,20,100,140,3,491.04,8,4000,'Unknown','2013-01-08','2013-01-08');
INSERT INTO registrations_procurement VALUES(2193,41,30,2883,20,100,140,3,491.04,8,4000,'Unknown','2013-01-10','2013-01-10');
INSERT INTO registrations_procurement VALUES(2197,41,30,2876,98,200,141,5,809909.75,8,1658,'Unknown','2012-07-06','2012-07-06');
INSERT INTO registrations_procurement VALUES(2198,41,30,2876,98,200,141,5,809909.75,8,1902,'Unknown','2012-07-06','2012-07-06');
INSERT INTO registrations_procurement VALUES(2199,41,30,2876,98,200,141,5,762223.475,8,1196,'Unknown','2012-08-29','2012-08-29');
INSERT INTO registrations_procurement VALUES(2200,41,30,2876,93,200,141,5,762223.475,8,1804,'Unknown','2012-08-29','2012-08-29');
INSERT INTO registrations_procurement VALUES(2201,41,30,2876,98,200,141,5,762223.475,8,876,'Unknown','2012-11-19','2012-11-19');
INSERT INTO registrations_procurement VALUES(2202,41,30,2877,98,25,151,5,78912.5,8,11792,'Unknown','2012-05-29','2012-05-29');
INSERT INTO registrations_procurement VALUES(2203,42,29,2903,46,25,152,3,1.412,1,3000,'ICB','2011-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2204,43,30,2903,17,1,33,5,0.89,1,1,'','2013-06-28','2013-06-28');
INSERT INTO registrations_procurement VALUES(2205,44,27,2679,2,1,33,3,0.8078,1,1,'','2012-01-01','2012-12-31');
INSERT INTO registrations_procurement VALUES(2206,44,27,1974,99,10,33,3,0.1912,1,1,'','2012-01-01','2012-12-31');
INSERT INTO registrations_procurement VALUES(2207,45,22,2904,6,1,153,5,1.3,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2209,45,22,2905,37,1,155,5,1.12,1,1,'','2013-01-01','2013-01-01');
INSERT INTO registrations_procurement VALUES(2210,45,22,2907,2,1,155,5,0.2,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2211,45,22,2908,2,1,155,5,1.1,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2212,45,22,2909,4,1,157,5,3.5,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2213,45,22,2910,4,1,158,5,0.6,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2214,45,22,2911,4,1,25,5,1.37,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2215,45,22,1902,22,1,33,5,12.21,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2216,45,22,2912,2,1,158,5,0.38,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2217,45,22,2914,2,1,155,5,0.06,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2218,45,22,2915,4,1,155,5,1.84,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2219,45,22,2916,6,1,155,5,13.04,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2220,45,22,2917,97,1,158,5,0.73,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2221,45,22,2918,4,1,158,5,4.97,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2222,45,22,2919,6,1,180,5,24.18,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2223,45,22,2921,6,1,155,5,2.52,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2224,45,22,2922,4,1,155,5,0.62,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2225,45,22,2923,6,1,157,5,142.25,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2226,45,22,2924,6,1,157,5,2.29,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2227,45,22,2925,6,1,155,5,4.4,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2228,45,22,2926,4,1,155,5,5.39,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2229,45,22,2927,48,1,155,5,0.18,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2230,45,22,2928,39,1,177,5,0.49,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2231,45,22,2930,6,1,158,5,22.38,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2232,45,22,2931,23,1,NULL,5,0.57,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2233,45,22,2932,4,1,158,5,2.72,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2234,45,22,2933,81,1,155,5,0.72,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2235,45,22,2934,39,1,157,5,0.66,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2236,45,22,2935,51,1,155,5,0.77,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2237,45,22,1943,13,1,33,5,11.13,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2238,45,22,2936,6,1,177,5,1.39,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2239,45,22,2938,37,1,158,5,9.65,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2240,45,22,2939,13,1,33,5,39.2,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2241,45,22,2940,4,1,158,5,2.18,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2242,45,22,64,73,1,181,5,8.88,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2243,45,22,62,73,1,181,5,33.17,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2244,45,22,2941,39,1,153,5,3.5,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2245,45,22,2942,6,1,157,5,9.24,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2246,45,22,2943,39,1,177,5,0.61,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2247,45,22,2944,6,1,153,5,31.56,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2248,45,22,2945,4,1,153,5,1.94,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2249,45,22,2946,4,1,158,5,0.78,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2250,45,22,2947,4,1,157,5,0.88,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2251,45,22,2948,2,1,157,5,0.4,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2252,45,22,2949,6,1,161,5,1.0,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2253,45,22,2950,6,1,157,5,4.4,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2254,45,22,2951,4,1,155,5,1.37,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2255,45,22,2952,6,1,157,5,13.04,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2256,45,22,2953,73,1,181,5,23.89,1,1,'','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2257,42,29,2956,100,1,182,3,27.95,1,64307,'Restricted Bidding','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2258,42,29,2956,101,1,182,3,15.48,1,138784,'Restricted Bidding','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2259,42,29,2958,103,1,106,3,7.98,1,406260,'ICB','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2260,41,30,1902,105,30,141,5,165.0,8,12270,NULL,'2013-01-16','2013-01-16');
INSERT INTO registrations_procurement VALUES(2261,41,30,1902,105,30,141,5,221.187666666667,8,1440,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2262,41,30,1902,105,30,141,5,4963.2,8,7200,NULL,'2013-02-01','2013-02-01');
INSERT INTO registrations_procurement VALUES(2263,41,30,1902,105,30,141,5,976.8,8,15,NULL,'2013-02-22','2013-02-22');
INSERT INTO registrations_procurement VALUES(2264,41,30,1902,105,30,141,5,976.8,8,690,NULL,'2013-02-22','2013-02-22');
INSERT INTO registrations_procurement VALUES(2265,41,30,1902,105,30,141,5,4928.0,8,7201,NULL,'2013-03-04','2013-03-04');
INSERT INTO registrations_procurement VALUES(2266,41,30,1902,105,30,141,5,4928.0,8,2192,NULL,'2013-03-26','2013-03-26');
INSERT INTO registrations_procurement VALUES(2267,41,30,1902,105,30,140,5,4451.04,8,2333,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2268,41,30,1902,105,1,140,5,4503.84,8,10,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2269,41,30,1902,106,30,141,5,255.786666666667,8,2816,NULL,'2013-01-16','2013-01-16');
INSERT INTO registrations_procurement VALUES(2270,41,30,1902,106,30,141,5,7180.8,8,13860,NULL,'2013-02-04','2013-02-04');
INSERT INTO registrations_procurement VALUES(2271,41,30,1902,106,30,127,5,6600.0,8,485,NULL,'2013-02-13','2013-02-13');
INSERT INTO registrations_procurement VALUES(2272,41,30,1902,106,30,127,5,6600.0,8,22,NULL,'2013-02-19','2013-02-19');
INSERT INTO registrations_procurement VALUES(2273,41,30,1902,106,30,150,5,6652.8,8,26460,NULL,'2013-04-04','2013-04-04');
INSERT INTO registrations_procurement VALUES(2274,41,30,1902,106,30,140,5,6425.76,8,2333,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2275,41,30,1902,106,30,150,5,6652.8,8,208,NULL,'2013-05-02','2013-05-02');
INSERT INTO registrations_procurement VALUES(2276,41,30,1902,106,1,140,5,6425.76,8,10,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2277,41,30,1902,107,30,141,5,9292.8,8,10009,NULL,'2013-04-15','2013-04-15');
INSERT INTO registrations_procurement VALUES(2278,41,30,1902,107,30,150,5,7392.0,8,28013,NULL,'2013-05-10','2013-05-10');
INSERT INTO registrations_procurement VALUES(2279,41,30,1902,107,30,150,5,7539.0,8,10909,NULL,'2013-05-22','2013-05-22');
INSERT INTO registrations_procurement VALUES(2280,41,30,1902,107,30,150,5,7539.0,8,8034,NULL,'2013-05-31','2013-05-31');
INSERT INTO registrations_procurement VALUES(2281,41,30,1902,108,30,141,5,81.4,8,10440,NULL,'2013-01-16','2013-01-16');
INSERT INTO registrations_procurement VALUES(2282,41,30,1902,108,30,141,5,54.5596666666667,8,720,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2283,41,30,1902,108,30,141,5,2481.6,8,10451,NULL,'2013-02-01','2013-02-01');
INSERT INTO registrations_procurement VALUES(2284,41,30,1902,108,30,141,5,2481.6,8,720,NULL,'2013-02-25','2013-02-25');
INSERT INTO registrations_procurement VALUES(2285,41,30,1902,108,30,141,5,2217.6,8,10435,NULL,'2013-02-25','2013-02-25');
INSERT INTO registrations_procurement VALUES(2286,41,30,1902,108,30,141,5,2464.0,8,11171,NULL,'2013-03-04','2013-03-04');
INSERT INTO registrations_procurement VALUES(2287,41,30,1902,108,30,141,5,1953.6,8,4830,NULL,'2013-03-14','2013-03-14');
INSERT INTO registrations_procurement VALUES(2288,41,30,1902,108,30,141,5,1953.6,8,6105,NULL,'2013-03-14','2013-03-14');
INSERT INTO registrations_procurement VALUES(2289,41,30,1902,108,30,150,5,2112.0,8,32415,NULL,'2013-04-04','2013-04-04');
INSERT INTO registrations_procurement VALUES(2290,41,30,1902,108,30,141,5,2217.6,8,285,NULL,'2013-04-18','2013-04-18');
INSERT INTO registrations_procurement VALUES(2291,41,30,1902,108,30,141,5,2217.6,8,45,NULL,'2013-04-26','2013-04-26');
INSERT INTO registrations_procurement VALUES(2292,41,30,1902,108,30,150,5,2217.6,8,210,NULL,'2013-04-26','2013-04-26');
INSERT INTO registrations_procurement VALUES(2293,41,30,1902,108,30,141,5,2530.95,8,14535,NULL,'2013-05-29','2013-05-29');
INSERT INTO registrations_procurement VALUES(2294,41,30,1934,2,10,123,5,1480.0,8,4000,NULL,'2013-05-28','2013-05-28');
INSERT INTO registrations_procurement VALUES(2295,41,30,1934,2,25,140,5,1848.0,8,1576,NULL,'2013-01-22','2013-01-22');
INSERT INTO registrations_procurement VALUES(2296,41,30,1905,6,1,140,5,66580.8,8,8000,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2297,41,30,1902,105,30,141,5,165.0,8,12270,NULL,'2013-01-16','2013-01-16');
INSERT INTO registrations_procurement VALUES(2298,41,30,1902,105,30,141,5,221.187666666667,8,1440,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2299,41,30,1902,105,30,141,5,4963.2,8,7200,NULL,'2013-02-01','2013-02-01');
INSERT INTO registrations_procurement VALUES(2300,41,30,1902,105,30,141,5,976.8,8,15,NULL,'2013-02-22','2013-02-22');
INSERT INTO registrations_procurement VALUES(2301,41,30,1902,105,30,141,5,976.8,8,690,NULL,'2013-02-22','2013-02-22');
INSERT INTO registrations_procurement VALUES(2302,41,30,1902,105,30,141,5,4928.0,8,7201,NULL,'2013-03-04','2013-03-04');
INSERT INTO registrations_procurement VALUES(2303,41,30,1902,105,30,141,5,4928.0,8,2192,NULL,'2013-03-26','2013-03-26');
INSERT INTO registrations_procurement VALUES(2304,41,30,1902,105,30,140,5,4451.04,8,2333,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2305,41,30,1902,105,1,140,5,4503.84,8,10,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2306,41,30,1902,106,30,141,5,255.786666666667,8,2816,NULL,'2013-01-16','2013-01-16');
INSERT INTO registrations_procurement VALUES(2307,41,30,1902,106,30,141,5,7180.8,8,13860,NULL,'2013-02-04','2013-02-04');
INSERT INTO registrations_procurement VALUES(2308,41,30,1902,106,30,127,5,6600.0,8,485,NULL,'2013-02-13','2013-02-13');
INSERT INTO registrations_procurement VALUES(2309,41,30,1902,106,30,127,5,6600.0,8,22,NULL,'2013-02-19','2013-02-19');
INSERT INTO registrations_procurement VALUES(2310,41,30,1902,106,30,150,5,6652.8,8,26460,NULL,'2013-04-04','2013-04-04');
INSERT INTO registrations_procurement VALUES(2311,41,30,1902,106,30,140,5,6425.76,8,2333,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2312,41,30,1902,106,30,150,5,6652.8,8,208,NULL,'2013-05-02','2013-05-02');
INSERT INTO registrations_procurement VALUES(2313,41,30,1902,106,1,140,5,6425.76,8,10,NULL,'2013-04-13','2013-04-13');
INSERT INTO registrations_procurement VALUES(2314,41,30,1902,107,30,141,5,9292.8,8,10009,NULL,'2013-04-15','2013-04-15');
INSERT INTO registrations_procurement VALUES(2315,41,30,1902,107,30,150,5,7392.0,8,28013,NULL,'2013-05-10','2013-05-10');
INSERT INTO registrations_procurement VALUES(2316,41,30,1902,107,30,150,5,7539.0,8,10909,NULL,'2013-05-22','2013-05-22');
INSERT INTO registrations_procurement VALUES(2317,41,30,1902,107,30,150,5,7539.0,8,8034,NULL,'2013-05-31','2013-05-31');
INSERT INTO registrations_procurement VALUES(2318,41,30,1902,108,30,141,5,81.4,8,10440,NULL,'2013-01-16','2013-01-16');
INSERT INTO registrations_procurement VALUES(2319,41,30,1902,108,30,141,5,54.5596666666667,8,720,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2320,41,30,1902,108,30,141,5,2481.6,8,10451,NULL,'2013-02-01','2013-02-01');
INSERT INTO registrations_procurement VALUES(2321,41,30,1902,108,30,141,5,2481.6,8,720,NULL,'2013-02-25','2013-02-25');
INSERT INTO registrations_procurement VALUES(2322,41,30,1902,108,30,141,5,2217.6,8,10435,NULL,'2013-02-25','2013-02-25');
INSERT INTO registrations_procurement VALUES(2323,41,30,1902,108,30,141,5,2464.0,8,11171,NULL,'2013-03-04','2013-03-04');
INSERT INTO registrations_procurement VALUES(2324,41,30,1902,108,30,141,5,1953.6,8,4830,NULL,'2013-03-14','2013-03-14');
INSERT INTO registrations_procurement VALUES(2325,41,30,1902,108,30,141,5,1953.6,8,6105,NULL,'2013-03-14','2013-03-14');
INSERT INTO registrations_procurement VALUES(2326,41,30,1902,108,30,150,5,2112.0,8,32415,NULL,'2013-04-04','2013-04-04');
INSERT INTO registrations_procurement VALUES(2327,41,30,1902,108,30,141,5,2217.6,8,285,NULL,'2013-04-18','2013-04-18');
INSERT INTO registrations_procurement VALUES(2328,41,30,1902,108,30,141,5,2217.6,8,45,NULL,'2013-04-26','2013-04-26');
INSERT INTO registrations_procurement VALUES(2329,41,30,1902,108,30,150,5,2217.6,8,210,NULL,'2013-04-26','2013-04-26');
INSERT INTO registrations_procurement VALUES(2330,41,30,1902,108,30,141,5,2530.95,8,14535,NULL,'2013-05-29','2013-05-29');
INSERT INTO registrations_procurement VALUES(2331,41,30,1934,2,10,123,5,1480.0,8,4000,NULL,'2013-05-28','2013-05-28');
INSERT INTO registrations_procurement VALUES(2332,41,30,1934,2,25,140,5,1848.0,8,1576,NULL,'2013-01-22','2013-01-22');
INSERT INTO registrations_procurement VALUES(2333,41,30,1905,6,1,140,5,66580.8,8,8000,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2334,41,30,1908,6,1,140,5,94406.4,8,5000,NULL,'2013-01-29','2013-01-29');
INSERT INTO registrations_procurement VALUES(2335,41,30,1958,6,1,140,5,8817.6,8,20000,NULL,'2013-01-07','2013-01-07');
INSERT INTO registrations_procurement VALUES(2336,41,30,2861,4,1,140,5,12566.4,8,40000,NULL,'2013-01-24','2013-01-24');
INSERT INTO registrations_procurement VALUES(2337,41,30,2861,4,1,124,5,20250.0,8,2500,NULL,'2013-02-15','2013-02-15');
INSERT INTO registrations_procurement VALUES(2338,41,30,2861,4,1,140,5,13327.87,8,50000,NULL,'2013-05-23','2013-05-23');
INSERT INTO registrations_procurement VALUES(2339,41,30,2861,4,1,141,5,5385.0,8,60000,NULL,'2013-06-04','2013-06-04');
INSERT INTO registrations_procurement VALUES(2340,41,30,1962,39,1,151,5,3115.2,8,50000,NULL,'2013-02-05','2013-02-05');
INSERT INTO registrations_procurement VALUES(2341,41,30,1962,109,1,140,5,211.2,8,103680,'','2013-02-12','2013-02-12');
INSERT INTO registrations_procurement VALUES(2342,41,30,1962,109,1,140,5,211.2,8,103680,'','2013-02-15','2013-02-15');
INSERT INTO registrations_procurement VALUES(2343,41,30,1962,109,1,140,5,2112.0,8,92640,NULL,'2013-03-07','2013-03-07');
INSERT INTO registrations_procurement VALUES(2344,41,30,79,6,1,132,5,43612.8,8,20000,NULL,'2013-01-15','2013-01-15');
INSERT INTO registrations_procurement VALUES(2345,41,30,79,6,1,132,5,43612.8,8,25020,NULL,'2013-03-06','2013-03-06');
INSERT INTO registrations_procurement VALUES(2346,41,30,79,6,1,132,5,43612.8,8,25000,NULL,'2013-03-06','2013-03-06');
INSERT INTO registrations_procurement VALUES(2347,41,30,1918,6,1,140,5,202736.16,8,8000,NULL,'2013-05-10','2013-05-10');
INSERT INTO registrations_procurement VALUES(2348,41,30,1918,6,1,141,5,165937.16,8,30000,NULL,'2013-06-03','2013-06-03');
INSERT INTO registrations_procurement VALUES(2349,41,30,1920,6,1,140,5,17793.6,8,3000,NULL,'2013-01-24','2013-01-24');
INSERT INTO registrations_procurement VALUES(2350,41,30,1920,6,1,124,5,20250.0,8,2000,NULL,'2013-02-15','2013-02-15');
INSERT INTO registrations_procurement VALUES(2351,41,30,1920,6,1,140,5,18874.43,8,10000,NULL,'2013-05-23','2013-05-23');
INSERT INTO registrations_procurement VALUES(2352,41,30,1943,13,1,184,5,36907.2,8,80160,NULL,'2013-01-24','2013-01-24');
INSERT INTO registrations_procurement VALUES(2353,41,30,1943,13,1,184,5,36907.2,8,45650,NULL,'2013-01-24','2013-01-24');
INSERT INTO registrations_procurement VALUES(2354,41,30,1943,13,1,184,5,36907.2,8,45065,NULL,'2013-01-24','2013-01-24');
INSERT INTO registrations_procurement VALUES(2355,41,30,1943,13,1,184,5,31680.0,8,34570,NULL,'2013-02-28','2013-02-28');
INSERT INTO registrations_procurement VALUES(2356,41,30,1943,13,1,184,5,36907.2,8,99371,NULL,'2013-02-28','2013-02-28');
INSERT INTO registrations_procurement VALUES(2357,41,30,165,13,1,132,5,11721.6,8,60375,NULL,'2013-01-11','2013-01-11');
INSERT INTO registrations_procurement VALUES(2358,41,30,165,13,1,132,5,11721.6,8,10272,NULL,'2013-01-11','2013-01-11');
INSERT INTO registrations_procurement VALUES(2359,41,30,165,13,1,132,5,11404.8,8,876,NULL,'2013-01-17','2013-01-17');
INSERT INTO registrations_procurement VALUES(2360,41,30,165,13,1,132,5,11404.8,8,15393,NULL,'2013-01-17','2013-01-17');
INSERT INTO registrations_procurement VALUES(2361,41,30,165,13,1,184,5,10137.6,8,25000,NULL,'2013-03-04','2013-03-04');
INSERT INTO registrations_procurement VALUES(2362,41,30,165,13,1,184,5,10137.6,8,161812,NULL,'2013-04-03','2013-04-03');
INSERT INTO registrations_procurement VALUES(2363,41,30,165,13,1,184,5,10137.6,8,12720,NULL,'2013-04-17','2013-04-17');
INSERT INTO registrations_procurement VALUES(2364,41,30,169,16,1,184,5,111200.25,8,20616,NULL,'2013-05-16','2013-05-16');
INSERT INTO registrations_procurement VALUES(2365,41,30,169,16,1,184,5,111200.25,8,44024,NULL,'2013-05-17','2013-05-17');
INSERT INTO registrations_procurement VALUES(2366,41,30,169,16,1,184,5,111200.25,8,56490,NULL,'2013-05-17','2013-05-17');
INSERT INTO registrations_procurement VALUES(2367,41,30,1929,6,1,140,5,29462.4,8,30000,NULL,'2013-02-04','2013-02-04');
INSERT INTO registrations_procurement VALUES(2368,41,30,174,13,1,132,5,12777.6,8,43676,NULL,'2013-01-18','2013-01-18');
INSERT INTO registrations_procurement VALUES(2369,41,30,174,13,1,132,5,11932.8,8,25991,NULL,'2013-03-15','2013-03-15');
INSERT INTO registrations_procurement VALUES(2370,41,30,174,13,1,132,5,12196.8,8,40000,NULL,'2013-03-25','2013-03-25');
INSERT INTO registrations_procurement VALUES(2371,41,30,174,13,1,184,5,11880.0,8,28208,NULL,'2013-04-11','2013-04-11');
INSERT INTO registrations_procurement VALUES(2372,41,30,174,13,1,184,5,11880.0,8,24060,NULL,'2013-04-11','2013-04-11');
INSERT INTO registrations_procurement VALUES(2373,41,30,174,13,1,184,5,11880.0,8,90,NULL,'2013-04-15','2013-04-15');
INSERT INTO registrations_procurement VALUES(2374,41,30,174,13,1,184,5,11880.0,8,11520,NULL,'2013-04-15','2013-04-15');
INSERT INTO registrations_procurement VALUES(2375,41,30,174,13,1,141,5,11932.8,8,38929,NULL,'2013-04-19','2013-04-19');
INSERT INTO registrations_procurement VALUES(2376,41,30,174,13,1,184,5,11880.0,8,10272,NULL,'2013-04-19','2013-04-19');
INSERT INTO registrations_procurement VALUES(2377,41,30,174,13,1,184,5,12116.25,8,19315,NULL,'2013-05-16','2013-05-16');
INSERT INTO registrations_procurement VALUES(2378,41,30,174,13,1,184,5,12116.25,8,19488,NULL,'2013-05-16','2013-05-16');
INSERT INTO registrations_procurement VALUES(2379,41,30,174,13,1,184,5,12116.25,8,96030,NULL,'2013-05-17','2013-05-17');
INSERT INTO registrations_procurement VALUES(2380,41,30,174,13,1,132,5,12439.35,8,96800,NULL,'2013-05-29','2013-05-29');
INSERT INTO registrations_procurement VALUES(2381,41,30,1931,19,1,140,5,47520.0,8,2400,NULL,'2013-03-07','2013-03-07');
INSERT INTO registrations_procurement VALUES(2382,41,30,1931,19,1,140,5,47520.0,8,7200,NULL,'2013-03-19','2013-03-19');
INSERT INTO registrations_procurement VALUES(2383,41,30,1931,19,1,140,5,47520.0,8,7200,NULL,'2013-03-19','2013-03-19');
INSERT INTO registrations_procurement VALUES(2384,41,30,1931,19,1,140,5,47520.0,8,7200,NULL,'2013-03-27','2013-03-27');
INSERT INTO registrations_procurement VALUES(2385,41,30,1931,62,1,84,5,34848.0,8,480,NULL,'2013-01-22','2013-01-22');
INSERT INTO registrations_procurement VALUES(2386,41,30,1931,62,1,84,5,40170.24,8,314,NULL,'2013-04-12','2013-04-12');
INSERT INTO registrations_procurement VALUES(2387,41,30,1931,62,1,131,5,64000.0,8,500,NULL,'2013-05-17','2013-05-17');
INSERT INTO registrations_procurement VALUES(2388,41,30,1931,62,1,131,5,64000.0,8,500,NULL,'2013-05-22','2013-05-22');
INSERT INTO registrations_procurement VALUES(2389,41,30,181,66,1,124,5,35100.0,8,900,NULL,'2013-02-05','2013-02-05');
INSERT INTO registrations_procurement VALUES(2390,41,30,181,66,1,124,5,35100.0,8,1000,NULL,'2013-02-19','2013-02-19');
INSERT INTO registrations_procurement VALUES(2391,41,30,181,66,1,124,5,35100.0,8,1200,NULL,'2013-02-25','2013-02-25');
INSERT INTO registrations_procurement VALUES(2392,41,30,181,66,1,124,5,35100.0,8,1200,NULL,'2013-02-28','2013-02-28');
INSERT INTO registrations_procurement VALUES(2393,41,30,181,66,1,124,5,35100.0,8,1200,NULL,'2013-03-15','2013-03-15');
INSERT INTO registrations_procurement VALUES(2394,41,30,181,66,1,124,5,35100.0,8,816,NULL,'2013-03-26','2013-03-26');
INSERT INTO registrations_procurement VALUES(2395,41,30,181,66,1,124,5,35100.0,8,1200,NULL,'2013-06-01','2013-06-01');
INSERT INTO registrations_procurement VALUES(2396,41,30,183,49,1,140,5,13200.0,8,27600,NULL,'2013-02-25','2013-02-25');
INSERT INTO registrations_procurement VALUES(2397,41,30,1990,6,1,120,5,149500.0,8,2067,NULL,'2013-01-30','2013-01-30');
INSERT INTO registrations_procurement VALUES(2398,41,30,1990,6,1,84,5,127353.6,8,314,NULL,'2013-04-12','2013-04-12');
INSERT INTO registrations_procurement VALUES(2399,41,30,2041,22,1,140,5,144967.68,8,2000,NULL,'2013-05-10','2013-05-10');
INSERT INTO registrations_procurement VALUES(2400,41,30,2041,32,1,125,5,528.0,8,7,NULL,'2013-04-11','2013-04-11');
INSERT INTO registrations_procurement VALUES(2401,41,30,1994,4,1,84,5,7654.42,8,314,NULL,'2013-04-12','2013-04-12');
INSERT INTO registrations_procurement VALUES(2402,46,26,84,35,1,33,3,12.09,4,540,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2403,46,26,2030,113,1,86,3,9.18,4,1080,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2404,46,26,2707,6,1,185,3,13.0,1,1800,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2405,46,26,2160,11,1,185,3,0.3,1,29895,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2406,46,26,1967,6,1,185,3,24.0,1,4540,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2407,46,26,1961,44,1,185,3,0.58,1,10275,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2408,46,26,2062,39,1,185,3,0.33,1,16800,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2409,46,26,2033,39,1,185,3,0.33,1,105270,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2410,46,26,2181,62,1,185,3,8.2,1,1780,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2411,46,26,2112,39,1,185,3,0.33,1,22725,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2412,46,26,2060,4,1,185,3,2.6,1,3198,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2413,46,26,1961,44,1,185,3,0.2,1,11318,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2414,46,26,2074,17,10,61,3,1.44,4,1200,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2415,46,26,2961,94,1,25,3,14.01,1,6000,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2416,46,26,2860,6,1,25,3,1.53,1,6000,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2417,46,26,1982,20,10,25,3,2.024,1,230,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2418,46,26,2042,12,50,25,3,0.234,1,1925,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2419,46,26,2152,81,1,25,3,17.24,1,2515,'Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2420,46,26,2030,114,1,186,3,1.75,1,1010,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2421,46,26,2089,39,1,187,3,29.2,4,4800,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2422,46,26,2967,3,1,188,3,1.75,1,2520,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2423,46,26,2119,6,1,188,3,2.25,1,3000,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2424,46,26,2027,6,1,188,3,5.8,1,5580,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2425,46,26,1949,39,1,189,3,0.47,1,31260,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2426,46,26,2245,14,1,18,3,39.84,4,2690,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2427,46,26,2092,12,1,190,3,0.34,1,4125,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2428,46,26,2003,13,1,191,3,5.85,4,39040,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2429,46,26,2961,80,1,91,3,78.89,4,5040,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2430,46,26,1963,6,1,91,3,1500.0,4,1500,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2431,46,26,2968,3,1,91,3,236.0,4,3900,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2432,46,26,2077,3,1,91,3,41.95,4,4800,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2433,46,26,2608,37,1,91,3,2.8,4,20000,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2434,46,26,1900,39,1,91,3,4.3,4,13395,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2435,46,26,2183,39,1,91,3,3.4,4,45110,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2436,46,26,2005,37,1,91,3,2.8,4,7994,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2437,46,26,1929,6,1,192,3,4.51,1,1260,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2438,46,26,1963,6,1,192,3,10.3,1,3490,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2439,46,26,1987,49,1,54,3,14.5,4,25320,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2440,46,26,1997,3,1,89,3,32.0,4,1620,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2441,46,26,1962,39,1,89,3,3.2,4,7200,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2442,46,26,1983,66,1,89,3,55.0,4,3300,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2443,46,26,2245,4,1,51,3,2.0,1,6280,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2444,46,26,1904,13,1,74,3,9.31,4,16720,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2445,46,26,2967,3,1,74,3,24.19,4,1080,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2446,46,26,2969,6,1,74,3,15.2,4,2200,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2447,46,26,1947,6,1,46,3,7.54,2,720,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2448,46,26,2064,6,1,46,3,15.69,2,1140,'Restricted Tender','2013-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2449,46,26,2867,6,1,25,3,26.79,2,2490,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2450,46,26,2282,116,1,25,3,14.87,2,556,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2451,46,26,2092,12,50,25,3,0.1726,2,20800,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2452,46,26,2970,13,1,106,3,9.45,1,31050,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2453,46,26,1943,13,1,106,3,7.39,1,63805,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2454,46,26,2971,13,1,106,3,5.73,1,28430,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2455,46,26,1943,13,1,193,3,7.69,1,27345,'Restricted Tender','2012-03-01','2013-03-31');
INSERT INTO registrations_procurement VALUES(2456,46,26,2972,22,1,193,3,5.29,1,15285,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2457,46,26,2973,117,1,193,3,3.05,1,6200,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2458,46,26,1924,16,1,193,3,27.7,1,3600,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2459,46,26,2972,22,1,194,3,5.24,1,35665,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2460,46,26,2974,22,1,58,3,13.99,1,282310,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2461,47,26,2975,22,1,58,3,1.99,1,11760,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2462,47,26,2976,13,1,58,3,12.99,1,2340,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2463,47,26,2977,13,1,58,3,4.6,1,2000,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2464,47,26,2978,22,1,5,3,15.29,4,600,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2465,47,26,2979,118,1,1,3,1.4,1,73790,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2466,47,26,2980,13,1,60,3,55.93,4,1500,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2467,47,26,2981,109,5,60,3,44.78,4,9000,'Restricted Tender','2012-03-01','2012-03-31');
INSERT INTO registrations_procurement VALUES(2499,50,11,2995,7,1,205,1,0.04,1,10000,'Request for Quotations','2013-01-01','2013-01-01');
INSERT INTO registrations_procurement VALUES(2500,50,11,2996,7,1,22,1,0.01,3,28000,'Request for Quotations','2013-05-14','2013-05-14');
INSERT INTO registrations_procurement VALUES(2501,50,11,2997,39,1,25,1,0.39,2,4000,'Request for Quotations','2013-03-13','2013-03-13');
INSERT INTO registrations_procurement VALUES(2502,50,11,2998,94,1,22,2,20.0,2,150,'Request for Quotations','2013-06-25','2013-06-25');
INSERT INTO registrations_procurement VALUES(2503,50,11,2999,120,1,22,1,0.0178,1,240000,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2504,50,11,3000,121,1,25,1,26.1,2,65,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2505,50,11,1,81,1,23,1,15.0,1,15,'Request for Quotations','2013-08-23','2013-08-23');
INSERT INTO registrations_procurement VALUES(2506,50,11,3001,7,1,22,2,0.0219,2,90000,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2507,50,11,3002,81,1,6,5,3.45,2,200,'Request for Quotations','2013-04-16','2013-04-16');
INSERT INTO registrations_procurement VALUES(2508,1,11,3003,81,1,8,2,16.26,4,5500,'Request for Quotations','2013-08-23','2013-08-23');
INSERT INTO registrations_procurement VALUES(2509,50,11,3004,6,1,22,1,1.3,2,120,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2510,50,11,3005,7,1,22,1,0.025,3,50000,'Request for Quotations','2013-05-14','2013-05-14');
INSERT INTO registrations_procurement VALUES(2511,50,11,3006,51,1,22,1,0.11,1,15000,'Request for Quotations','2013-03-13','2013-03-13');
INSERT INTO registrations_procurement VALUES(2512,50,11,3007,39,1,25,1,0.39,2,1200,'Request for Quotations','2013-04-09','2013-04-09');
INSERT INTO registrations_procurement VALUES(2513,50,11,3008,7,1,22,1,0.015,2,35000,'Request for Quotations','2013-06-25','2013-06-25');
INSERT INTO registrations_procurement VALUES(2514,50,11,3009,6,1,25,1,4.65,2,60,'Request for Quotations','2013-07-12','2013-07-12');
INSERT INTO registrations_procurement VALUES(2515,50,11,7,45,1,9,2,4.25,1,300,'Request for Quotations','2013-08-12','2013-08-12');
INSERT INTO registrations_procurement VALUES(2516,50,11,3010,7,1,22,1,0.035,3,45024,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2517,50,11,8,6,1,25,1,2.4,2,260,'Request for Quotations','2013-03-13','2013-03-13');
INSERT INTO registrations_procurement VALUES(2518,50,11,3011,81,1,22,2,55.4,2,450,'Request for Quotations','2013-03-13','2013-03-13');
INSERT INTO registrations_procurement VALUES(2519,50,11,3012,89,1,3,2,24.98,4,233,'Request for Quotations','2013-02-28','2013-02-28');
INSERT INTO registrations_procurement VALUES(2520,50,11,23,89,1,3,2,70.8,4,667,'Request for Quotations','2013-02-28','2013-02-28');
INSERT INTO registrations_procurement VALUES(2521,50,11,3013,16,1,8,1,30.82,1,667,'Request for Quotations','2013-05-14','2013-05-14');
INSERT INTO registrations_procurement VALUES(2522,50,11,10,4,1,10,2,1.51,1,9000,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2523,50,11,2813,6,1,25,1,5.3,2,208,'Request for Quotations','2013-06-25','2013-06-25');
INSERT INTO registrations_procurement VALUES(2524,50,11,13,79,1,10,2,2.7,1,1200,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2525,50,11,53,62,1,25,1,6.65,2,180,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2526,50,11,16,116,1,25,1,10.65,2,24,'Request for Quotations','2013-02-26','2013-02-26');
INSERT INTO registrations_procurement VALUES(2527,50,11,3014,39,1,43,2,0.56,1,40000,'Request for Quotations','2013-03-13','2013-03-13');
INSERT INTO registrations_procurement VALUES(2528,50,11,66,49,1,15,2,19.28,4,8000,'Request for Quotations','2013-07-12','2013-07-12');
INSERT INTO registrations_procurement VALUES(2529,50,11,3015,50,1,22,2,6.0,3,700,'Request for Quotations','2013-07-12','2013-07-12');
INSERT INTO registrations_procurement VALUES(2530,50,11,20,4,1,23,2,5.0,1,150,'Request for Quotations','2013-05-28','2013-05-28');
INSERT INTO registrations_procurement VALUES(2531,50,11,70,122,1,25,2,9.1,2,4,'Request for Quotations','2013-03-22','2013-03-22');
INSERT INTO registrations_procurement VALUES(2532,51,9,3016,11,1,26,4,6.579,16,5500,'ICB','2013-03-26','2013-03-26');
INSERT INTO registrations_procurement VALUES(2533,51,9,3017,4,1,26,4,72.0,16,1200,'ICB','2013-03-18','2013-03-18');
INSERT INTO registrations_procurement VALUES(2534,51,9,3018,11,1,208,4,0.7,16,185000,'ICB','2013-03-31','2013-03-31');
INSERT INTO registrations_procurement VALUES(2535,51,9,3019,11,1,208,4,1.7,16,130000,'ICB','2013-04-01','2013-04-01');
INSERT INTO registrations_procurement VALUES(2536,51,9,3020,39,1,209,2,0.26,1,140000,'CIF','2012-07-11','2012-07-11');
INSERT INTO registrations_procurement VALUES(2537,51,9,3021,123,1,209,2,0.125,1,900000,'ICB','2012-07-05','2012-07-05');
INSERT INTO registrations_procurement VALUES(2538,51,9,155,11,1,212,2,8.2,16,250000,'ICB','2013-03-22','2013-03-22');
INSERT INTO registrations_procurement VALUES(2539,51,9,3022,11,1,210,4,27.5,16,200,'ICB','2013-02-18','2013-02-18');
INSERT INTO registrations_procurement VALUES(2541,51,9,3024,11,1,208,4,2.7,16,300000,'','2013-01-31','2013-01-31');
INSERT INTO registrations_procurement VALUES(2542,51,9,3025,6,1,211,2,16.53,1,2500,'ICB','2013-06-11','2013-06-11');
INSERT INTO registrations_procurement VALUES(2543,51,9,3026,6,1,213,4,560.0,16,125,'ICB','2013-10-09','2013-10-09');
INSERT INTO registrations_procurement VALUES(2544,51,9,3027,97,1,211,2,0.25,1,100000,'ICB','2013-03-22','2013-03-22');
INSERT INTO registrations_procurement VALUES(2545,51,9,3028,11,1,212,4,2.7,16,75000,'ICB','2013-03-22','2013-03-22');
INSERT INTO registrations_procurement VALUES(2546,51,9,3029,44,1,211,2,0.2,1,25000,'ICB','2013-04-05','2013-04-05');
INSERT INTO registrations_procurement VALUES(2547,51,9,3030,109,1,213,4,14.5,16,35000,'ICB','2013-03-18','2013-03-18');
INSERT INTO registrations_procurement VALUES(2548,51,9,3031,11,1,213,4,4.5,16,60000,'ICB','2013-03-18','2013-03-18');
INSERT INTO registrations_procurement VALUES(2549,51,9,3032,11,1,208,4,0.18,16,33000,'ICB','2013-01-31','2013-01-31');
INSERT INTO registrations_procurement VALUES(2550,51,9,3034,11,1,211,2,0.02,1,400000,'ICB','2012-03-19','2012-03-19');
INSERT INTO registrations_procurement VALUES(2551,51,9,3035,11,1,214,2,0.03,1,1800000,'ICB','2012-03-19','2012-03-19');
INSERT INTO registrations_procurement VALUES(2552,51,9,3036,45,1,215,2,29.9,2,3000,'ICB','2012-01-12','2012-01-12');
INSERT INTO registrations_procurement VALUES(2553,51,9,3037,11,1,209,2,0.278,1,90000,'ICB','2012-07-11','2012-07-11');
INSERT INTO registrations_procurement VALUES(2554,51,9,3011,81,1,213,2,5375.0,16,800,'ICB','2013-04-22','2013-04-22');
INSERT INTO registrations_procurement VALUES(2555,51,9,3038,11,1,216,2,0.003,1,500000,'ICB','2013-06-12','2013-06-12');
INSERT INTO registrations_procurement VALUES(2556,52,25,3039,39,10,217,4,0.4,1,20000,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2557,52,25,3040,94,24,218,4,20.0,1,1030,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2558,52,25,3041,6,30,25,2,28.63,1,4500,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2559,52,25,3043,111,10,25,2,5.6,1,10880,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2560,52,25,3045,94,20,25,2,3.2,1,20,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2561,52,25,3046,4,200,183,2,2.2,2,200,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2562,52,25,3047,39,10,219,4,0.5,1,6500,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2563,52,25,3048,6,24,218,4,10.0,1,1660,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2564,52,25,3049,6,30,219,4,1.2,1,685,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2565,52,25,3050,6,30,219,4,1.5,1,797,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2566,52,25,3051,6,80,25,2,3.2,1,133,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2567,52,25,3052,6,30,25,2,5.87,1,4879,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2568,52,25,3053,62,6,51,2,9.3847,1,2302,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2569,52,25,3054,6,1,218,4,25.0,1,480,'International Competitive Bidding','2013-01-01','2013-12-31');
INSERT INTO registrations_procurement VALUES(2570,53,28,2976,13,1,58,5,103.11,4,22553,'Domestic Tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2571,53,28,2977,13,1,1,5,79.9,4,1000,'Domestic Tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2572,53,28,75,14,1,220,5,17.9,4,0,'Domestic Tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2573,53,28,2246,6,1,79,5,148.0,4,0,'Domestic Tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2574,53,28,92,3,1,220,5,59.26,4,0,'Domestic Tender','2013-01-01','2014-12-31');
INSERT INTO registrations_procurement VALUES(2575,53,28,3055,39,1,221,5,6.32,4,0,'Domestic Tender','2013-01-01','2014-12-31');
CREATE TABLE "registrations_product" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(64) NOT NULL,
    "medicine_id" integer NOT NULL REFERENCES "registrations_medicine" ("id"),
    "manufacturer_id" integer REFERENCES "registrations_manufacturer" ("id"),
    "site_id" integer REFERENCES "registrations_site" ("id")
);
INSERT INTO registrations_product VALUES(1,'',62,11,53);
INSERT INTO registrations_product VALUES(2,'',2,1,43);
INSERT INTO registrations_product VALUES(3,'',12,7,49);
INSERT INTO registrations_product VALUES(4,'',72,21,63);
INSERT INTO registrations_product VALUES(5,'',162,22,64);
INSERT INTO registrations_product VALUES(6,'',22,23,65);
INSERT INTO registrations_product VALUES(7,'',75,9,51);
INSERT INTO registrations_product VALUES(8,'',26,65,103);
INSERT INTO registrations_product VALUES(9,'',81,27,102);
INSERT INTO registrations_product VALUES(10,'',147,10,52);
INSERT INTO registrations_product VALUES(11,'',29,28,67);
INSERT INTO registrations_product VALUES(12,'',29,22,64);
INSERT INTO registrations_product VALUES(13,'',30,10,52);
INSERT INTO registrations_product VALUES(14,'',30,29,68);
INSERT INTO registrations_product VALUES(16,'',91,30,69);
INSERT INTO registrations_product VALUES(17,'Paramox',152,31,70);
INSERT INTO registrations_product VALUES(18,'Ventolin',37,15,57);
INSERT INTO registrations_product VALUES(19,'Ventolin',37,5,104);
INSERT INTO registrations_product VALUES(20,'Gynatam',100,11,53);
INSERT INTO registrations_product VALUES(21,'',40,24,66);
INSERT INTO registrations_product VALUES(22,'',62,1,43);
INSERT INTO registrations_product VALUES(23,'Combivir',102,3,45);
INSERT INTO registrations_product VALUES(24,'Panadol',152,31,70);
INSERT INTO registrations_product VALUES(25,'Herpex-Acyclovir 200mg',2,32,71);
INSERT INTO registrations_product VALUES(26,'Amirol-Amitriptyline 25mg',4,33,72);
INSERT INTO registrations_product VALUES(27,'Amoxen-Amoxycilin 25mg/ml',163,71,110);
INSERT INTO registrations_product VALUES(28,'Amoxicap-Amoxycillin 250mg Capsules',164,35,74);
INSERT INTO registrations_product VALUES(29,'Tumocin-15',62,36,75);
INSERT INTO registrations_product VALUES(30,'Epsitron',11,33,72);
INSERT INTO registrations_product VALUES(31,'Storilat',12,33,72);
INSERT INTO registrations_product VALUES(32,'Karna',13,37,76);
INSERT INTO registrations_product VALUES(33,'Remedica',131,33,72);
INSERT INTO registrations_product VALUES(34,'Ciploxx',165,38,77);
INSERT INTO registrations_product VALUES(35,'',133,39,66);
INSERT INTO registrations_product VALUES(36,'Remedium',22,33,72);
INSERT INTO registrations_product VALUES(37,'Diclomax',166,32,71);
INSERT INTO registrations_product VALUES(38,'Ermycin',25,33,72);
INSERT INTO registrations_product VALUES(39,'Glaxo-Ferrous salts',167,3,45);
INSERT INTO registrations_product VALUES(40,'Glibex5',28,40,78);
INSERT INTO registrations_product VALUES(41,' Myl-Lopinavir+Ritonav(200+50)mg Tab',143,41,79);
INSERT INTO registrations_product VALUES(42,'Aluvia',143,42,109);
INSERT INTO registrations_product VALUES(43,'Sabax-Magnesium Sulphate',83,43,81);
INSERT INTO registrations_product VALUES(44,'Martin Magnesium Sulphate 500mg/ml inj. 2ml',83,44,82);
INSERT INTO registrations_product VALUES(45,'',146,45,83);
INSERT INTO registrations_product VALUES(46,'',146,46,84);
INSERT INTO registrations_product VALUES(47,'',147,47,85);
INSERT INTO registrations_product VALUES(48,'',147,33,72);
INSERT INTO registrations_product VALUES(49,'',29,34,73);
INSERT INTO registrations_product VALUES(50,'',30,49,87);
INSERT INTO registrations_product VALUES(51,'',30,33,72);
INSERT INTO registrations_product VALUES(52,'',31,50,88);
INSERT INTO registrations_product VALUES(53,'',31,51,89);
INSERT INTO registrations_product VALUES(54,'',31,52,90);
INSERT INTO registrations_product VALUES(55,'',91,53,91);
INSERT INTO registrations_product VALUES(56,'',152,5,47);
INSERT INTO registrations_product VALUES(57,'',10,54,92);
INSERT INTO registrations_product VALUES(58,'',170,54,92);
INSERT INTO registrations_product VALUES(59,'',9,54,92);
INSERT INTO registrations_product VALUES(60,'',9,55,93);
INSERT INTO registrations_product VALUES(61,'',154,56,94);
INSERT INTO registrations_product VALUES(62,'',154,21,63);
INSERT INTO registrations_product VALUES(63,'',153,56,94);
INSERT INTO registrations_product VALUES(64,'',153,21,63);
INSERT INTO registrations_product VALUES(65,'',37,38,77);
INSERT INTO registrations_product VALUES(66,'',37,3,202);
INSERT INTO registrations_product VALUES(67,'',157,63,101);
INSERT INTO registrations_product VALUES(68,'',157,57,95);
INSERT INTO registrations_product VALUES(69,'',100,33,72);
INSERT INTO registrations_product VALUES(70,'',40,58,96);
INSERT INTO registrations_product VALUES(71,'',102,60,98);
INSERT INTO registrations_product VALUES(72,'',102,59,97);
INSERT INTO registrations_product VALUES(73,'',42,61,99);
INSERT INTO registrations_product VALUES(74,'',42,62,100);
INSERT INTO registrations_product VALUES(75,'Lovire',2,64,117);
INSERT INTO registrations_product VALUES(76,'Cifran',165,64,117);
INSERT INTO registrations_product VALUES(77,'Biotech Ciprofloxacin',17,75,115);
INSERT INTO registrations_product VALUES(78,'Ciploxx 500',17,1,118);
INSERT INTO registrations_product VALUES(79,'Nucotrim',162,24,66);
INSERT INTO registrations_product VALUES(80,'Ilvitrim tablets  ',162,24,66);
INSERT INTO registrations_product VALUES(81,'Trixazole Tablets',162,86,132);
INSERT INTO registrations_product VALUES(82,'Anaerobyl 200',29,72,111);
INSERT INTO registrations_product VALUES(83,'Bio-Metronidazole 200',29,75,115);
INSERT INTO registrations_product VALUES(84,'Adco-Metronidazole',29,5,104);
INSERT INTO registrations_product VALUES(85,'Bio-Metronidazole 400',173,24,66);
INSERT INTO registrations_product VALUES(86,'Anaerobyl 400',173,24,66);
INSERT INTO registrations_product VALUES(87,'Adco-Metronidazole 400',173,24,66);
INSERT INTO registrations_product VALUES(88,'Wormadole',3,71,110);
INSERT INTO registrations_product VALUES(89,'Bendex',3,1,114);
INSERT INTO registrations_product VALUES(90,'Trepiline 10mg',174,24,66);
INSERT INTO registrations_product VALUES(91,'Trepiline 25mg',4,15,57);
INSERT INTO registrations_product VALUES(92,'Sandoz Amitriptyline HCl',4,68,106);
INSERT INTO registrations_product VALUES(93,'Gulf Amitriptyline',4,54,120);
INSERT INTO registrations_product VALUES(94,'Mylan Captopril 25',11,80,123);
INSERT INTO registrations_product VALUES(95,'Degranol 200mg',12,15,57);
INSERT INTO registrations_product VALUES(96,'Tegretol 200mg',12,84,130);
INSERT INTO registrations_product VALUES(97,'Tegretol 400mg',175,24,66);
INSERT INTO registrations_product VALUES(98,'Nivaquine 200mg',131,24,66);
INSERT INTO registrations_product VALUES(99,'Allergex',130,5,104);
INSERT INTO registrations_product VALUES(100,'Adco-Diclophenac 25',166,24,66);
INSERT INTO registrations_product VALUES(101,'Adco-Diclophenac 50',23,68,106);
INSERT INTO registrations_product VALUES(102,'Indo Metformin 500',147,78,121);
INSERT INTO registrations_product VALUES(103,'Austell - Metformin 500mg',147,73,112);
INSERT INTO registrations_product VALUES(141,'Mylan Metformin 500mg',147,38,124);
INSERT INTO registrations_product VALUES(142,'Omez 10',180,24,66);
INSERT INTO registrations_product VALUES(143,'Adco Omeprazole 20mg',30,67,105);
INSERT INTO registrations_product VALUES(144,'Austell - Simvastatin 10mg',181,24,66);
INSERT INTO registrations_product VALUES(145,'Simvotin 10mg',181,24,66);
INSERT INTO registrations_product VALUES(146,'Simvotin 20mg',156,64,117);
INSERT INTO registrations_product VALUES(147,'Austell Simvastatin 20mg',156,73,112);
INSERT INTO registrations_product VALUES(148,'AMYN S 125',163,24,66);
INSERT INTO registrations_product VALUES(149,'MOXYMAX S 125',163,71,110);
INSERT INTO registrations_product VALUES(150,'MOXYMAX 250',164,24,66);
INSERT INTO registrations_product VALUES(151,'AMYN 250',164,24,66);
INSERT INTO registrations_product VALUES(152,'Indo Amoxycillin 250',164,24,66);
INSERT INTO registrations_product VALUES(153,'MOXYMAX 500',172,71,110);
INSERT INTO registrations_product VALUES(154,'AMYN 500',172,71,110);
INSERT INTO registrations_product VALUES(155,'Indo Amoxycillin 500',172,71,110);
INSERT INTO registrations_product VALUES(156,'Dezzo Trading 392',65,24,66);
INSERT INTO registrations_product VALUES(157,'Triaphin 250',65,85,131);
INSERT INTO registrations_product VALUES(158,'Ranceph 250',14,64,127);
INSERT INTO registrations_product VALUES(159,'Eryko 250',25,71,110);
INSERT INTO registrations_product VALUES(160,'Betamycin 250',25,71,110);
INSERT INTO registrations_product VALUES(161,'Bleolem',62,76,116);
INSERT INTO registrations_product VALUES(162,'Tamoplex 20mg',100,83,129);
INSERT INTO registrations_product VALUES(163,'Protaphane (HM) GE Flexpen',140,24,66);
INSERT INTO registrations_product VALUES(164,'Insuman Basal 10ml',140,79,122);
INSERT INTO registrations_product VALUES(165,'Adco-Lamivudine',182,24,66);
INSERT INTO registrations_product VALUES(166,'Cipla - Lamivudine 150',182,24,66);
INSERT INTO registrations_product VALUES(167,'Sonke Lamivudine 150mg',182,24,66);
INSERT INTO registrations_product VALUES(168,'Aspen Lamivudine 150mg',182,24,66);
INSERT INTO registrations_product VALUES(169,'Aluvia 200/50mg',143,24,66);
INSERT INTO registrations_product VALUES(170,'Aspen Stavudine',183,24,66);
INSERT INTO registrations_product VALUES(171,'Adco - Lamivudine and Zidovudine 150/300',102,5,104);
INSERT INTO registrations_product VALUES(172,'Colamziv',102,34,73);
INSERT INTO registrations_product VALUES(173,'Divuwin',102,60,119);
INSERT INTO registrations_product VALUES(174,'Acriptaz',184,24,66);
INSERT INTO registrations_product VALUES(175,'Adco-Nevirapine',184,24,66);
INSERT INTO registrations_product VALUES(176,'Aspen Nevirapine 200mg',184,24,66);
INSERT INTO registrations_product VALUES(177,'Depo Provera',146,24,66);
INSERT INTO registrations_product VALUES(178,'Petogen Fresenius',146,46,126);
INSERT INTO registrations_product VALUES(179,'Norlevo',81,81,125);
INSERT INTO registrations_product VALUES(180,'Barrs Paracetamol Syrup',152,74,113);
INSERT INTO registrations_product VALUES(181,'Triotemp',152,24,66);
INSERT INTO registrations_product VALUES(182,'Rifanah FC 200/150',179,82,128);
INSERT INTO registrations_product VALUES(183,'Asthavent MDI 200',37,24,66);
INSERT INTO registrations_product VALUES(184,'Asthavent MDI 300 + Zerostat Spacer',37,24,66);
INSERT INTO registrations_product VALUES(185,'Asthavent MDI 300',37,24,66);
INSERT INTO registrations_product VALUES(186,'Albusol 20%',185,70,108);
INSERT INTO registrations_product VALUES(187,'Rhesugam IM',186,70,108);
INSERT INTO registrations_product VALUES(188,'Haemosolvate Factor VIII 300 IU',187,70,108);
INSERT INTO registrations_product VALUES(190,'Vitaforce Ferovite 200mg',26,24,66);
INSERT INTO registrations_product VALUES(1898,'',4,24,66);
INSERT INTO registrations_product VALUES(1900,'',163,24,66);
INSERT INTO registrations_product VALUES(1902,'',7,24,66);
INSERT INTO registrations_product VALUES(1903,'',62,24,66);
INSERT INTO registrations_product VALUES(1904,'',11,24,66);
INSERT INTO registrations_product VALUES(1905,'',12,24,66);
INSERT INTO registrations_product VALUES(1906,'',65,24,66);
INSERT INTO registrations_product VALUES(1908,'',16,24,66);
INSERT INTO registrations_product VALUES(1910,'',131,24,66);
INSERT INTO registrations_product VALUES(1912,'',133,24,66);
INSERT INTO registrations_product VALUES(1915,'',22,24,66);
INSERT INTO registrations_product VALUES(1917,'',75,24,66);
INSERT INTO registrations_product VALUES(1918,'',25,24,66);
INSERT INTO registrations_product VALUES(1920,'',28,24,66);
INSERT INTO registrations_product VALUES(1921,'',140,24,66);
INSERT INTO registrations_product VALUES(1924,'',143,24,66);
INSERT INTO registrations_product VALUES(1925,'',83,24,66);
INSERT INTO registrations_product VALUES(1926,'',145,24,66);
INSERT INTO registrations_product VALUES(1927,'',146,24,66);
INSERT INTO registrations_product VALUES(1928,'',147,24,66);
INSERT INTO registrations_product VALUES(1929,'',29,24,66);
INSERT INTO registrations_product VALUES(1931,'',31,24,66);
INSERT INTO registrations_product VALUES(1932,'',91,24,66);
INSERT INTO registrations_product VALUES(1933,'',152,24,66);
INSERT INTO registrations_product VALUES(1934,'',9,24,66);
INSERT INTO registrations_product VALUES(1937,'',37,24,66);
INSERT INTO registrations_product VALUES(1939,'',157,24,66);
INSERT INTO registrations_product VALUES(1942,'',40,24,66);
INSERT INTO registrations_product VALUES(1943,'',102,24,66);
INSERT INTO registrations_product VALUES(1946,'',3,24,66);
INSERT INTO registrations_product VALUES(1947,'',4,24,66);
INSERT INTO registrations_product VALUES(1949,'',163,24,66);
INSERT INTO registrations_product VALUES(1950,'',172,24,66);
INSERT INTO registrations_product VALUES(1954,'',12,24,66);
INSERT INTO registrations_product VALUES(1955,'',65,24,66);
INSERT INTO registrations_product VALUES(1957,'',16,24,66);
INSERT INTO registrations_product VALUES(1958,'',130,24,66);
INSERT INTO registrations_product VALUES(1960,'',17,24,66);
INSERT INTO registrations_product VALUES(1961,'',133,24,66);
INSERT INTO registrations_product VALUES(1962,'',72,24,66);
INSERT INTO registrations_product VALUES(1963,'',162,24,66);
INSERT INTO registrations_product VALUES(1964,'',22,24,66);
INSERT INTO registrations_product VALUES(1965,'',23,24,66);
INSERT INTO registrations_product VALUES(1967,'',25,24,66);
INSERT INTO registrations_product VALUES(1968,'',26,24,66);
INSERT INTO registrations_product VALUES(1969,'',28,24,66);
INSERT INTO registrations_product VALUES(1970,'',140,24,66);
INSERT INTO registrations_product VALUES(1974,'',83,24,66);
INSERT INTO registrations_product VALUES(1976,'',146,24,66);
INSERT INTO registrations_product VALUES(1978,'',29,24,66);
INSERT INTO registrations_product VALUES(1979,'',88,24,66);
INSERT INTO registrations_product VALUES(1981,'',31,24,66);
INSERT INTO registrations_product VALUES(1982,'',91,24,66);
INSERT INTO registrations_product VALUES(1983,'',152,24,66);
INSERT INTO registrations_product VALUES(1984,'',9,24,66);
INSERT INTO registrations_product VALUES(1987,'',37,24,66);
INSERT INTO registrations_product VALUES(1990,'',39,24,66);
INSERT INTO registrations_product VALUES(1992,'',40,24,66);
INSERT INTO registrations_product VALUES(1994,'',42,24,66);
INSERT INTO registrations_product VALUES(1997,'',4,24,66);
INSERT INTO registrations_product VALUES(1999,'',163,24,66);
INSERT INTO registrations_product VALUES(2000,'',172,24,66);
INSERT INTO registrations_product VALUES(2003,'',11,24,66);
INSERT INTO registrations_product VALUES(2004,'',12,24,66);
INSERT INTO registrations_product VALUES(2005,'',65,24,66);
INSERT INTO registrations_product VALUES(2010,'',17,24,66);
INSERT INTO registrations_product VALUES(2011,'',133,24,66);
INSERT INTO registrations_product VALUES(2013,'',162,24,66);
INSERT INTO registrations_product VALUES(2014,'',22,24,66);
INSERT INTO registrations_product VALUES(2015,'',23,24,66);
INSERT INTO registrations_product VALUES(2017,'',25,24,66);
INSERT INTO registrations_product VALUES(2019,'',28,24,66);
INSERT INTO registrations_product VALUES(2020,'',140,24,66);
INSERT INTO registrations_product VALUES(2023,'',143,24,66);
INSERT INTO registrations_product VALUES(2024,'',83,24,66);
INSERT INTO registrations_product VALUES(2025,'',145,24,66);
INSERT INTO registrations_product VALUES(2026,'',146,24,66);
INSERT INTO registrations_product VALUES(2027,'',147,24,66);
INSERT INTO registrations_product VALUES(2028,'',29,24,66);
INSERT INTO registrations_product VALUES(2030,'',30,24,66);
INSERT INTO registrations_product VALUES(2032,'',91,24,66);
INSERT INTO registrations_product VALUES(2033,'',152,24,66);
INSERT INTO registrations_product VALUES(2034,'',9,24,66);
INSERT INTO registrations_product VALUES(2037,'',37,24,66);
INSERT INTO registrations_product VALUES(2039,'',157,24,66);
INSERT INTO registrations_product VALUES(2041,'',100,24,66);
INSERT INTO registrations_product VALUES(2042,'',40,24,66);
INSERT INTO registrations_product VALUES(2043,'',102,24,66);
INSERT INTO registrations_product VALUES(2049,'',163,24,66);
INSERT INTO registrations_product VALUES(2054,'',12,24,66);
INSERT INTO registrations_product VALUES(2056,'',14,24,66);
INSERT INTO registrations_product VALUES(2057,'',16,24,66);
INSERT INTO registrations_product VALUES(2058,'',130,24,66);
INSERT INTO registrations_product VALUES(2060,'',17,24,66);
INSERT INTO registrations_product VALUES(2062,'',72,24,66);
INSERT INTO registrations_product VALUES(2064,'',22,24,66);
INSERT INTO registrations_product VALUES(2069,'',28,24,66);
INSERT INTO registrations_product VALUES(2070,'',140,24,66);
INSERT INTO registrations_product VALUES(2074,'',83,24,66);
INSERT INTO registrations_product VALUES(2077,'',147,24,66);
INSERT INTO registrations_product VALUES(2080,'',30,24,66);
INSERT INTO registrations_product VALUES(2081,'',31,24,66);
INSERT INTO registrations_product VALUES(2083,'',152,24,66);
INSERT INTO registrations_product VALUES(2084,'',9,24,66);
INSERT INTO registrations_product VALUES(2087,'',37,24,66);
INSERT INTO registrations_product VALUES(2089,'',157,24,66);
INSERT INTO registrations_product VALUES(2090,'',39,24,66);
INSERT INTO registrations_product VALUES(2092,'',40,24,66);
INSERT INTO registrations_product VALUES(2096,'',3,24,66);
INSERT INTO registrations_product VALUES(2097,'',4,24,66);
INSERT INTO registrations_product VALUES(2100,'',172,24,66);
INSERT INTO registrations_product VALUES(2104,'',12,24,66);
INSERT INTO registrations_product VALUES(2107,'',16,24,66);
INSERT INTO registrations_product VALUES(2112,'',72,24,66);
INSERT INTO registrations_product VALUES(2113,'',162,24,66);
INSERT INTO registrations_product VALUES(2119,'',28,24,66);
INSERT INTO registrations_product VALUES(2120,'',140,24,66);
INSERT INTO registrations_product VALUES(2134,'',9,24,66);
INSERT INTO registrations_product VALUES(2138,'',156,24,66);
INSERT INTO registrations_product VALUES(2142,'',40,24,66);
INSERT INTO registrations_product VALUES(2147,'',4,24,66);
INSERT INTO registrations_product VALUES(2149,'',163,24,66);
INSERT INTO registrations_product VALUES(2151,'',7,24,66);
INSERT INTO registrations_product VALUES(2152,'',62,24,66);
INSERT INTO registrations_product VALUES(2154,'',12,24,66);
INSERT INTO registrations_product VALUES(2155,'',65,24,66);
INSERT INTO registrations_product VALUES(2157,'',16,24,66);
INSERT INTO registrations_product VALUES(2158,'',130,24,66);
INSERT INTO registrations_product VALUES(2160,'',17,24,66);
INSERT INTO registrations_product VALUES(2162,'',72,24,66);
INSERT INTO registrations_product VALUES(2163,'',162,24,66);
INSERT INTO registrations_product VALUES(2164,'',22,24,66);
INSERT INTO registrations_product VALUES(2166,'',75,24,66);
INSERT INTO registrations_product VALUES(2167,'',25,24,66);
INSERT INTO registrations_product VALUES(2168,'',26,24,66);
INSERT INTO registrations_product VALUES(2169,'',28,24,66);
INSERT INTO registrations_product VALUES(2170,'',140,24,66);
INSERT INTO registrations_product VALUES(2171,'',141,24,66);
INSERT INTO registrations_product VALUES(2173,'',143,24,66);
INSERT INTO registrations_product VALUES(2174,'',83,24,66);
INSERT INTO registrations_product VALUES(2175,'',145,24,66);
INSERT INTO registrations_product VALUES(2176,'',146,24,66);
INSERT INTO registrations_product VALUES(2177,'',147,24,66);
INSERT INTO registrations_product VALUES(2181,'',31,24,66);
INSERT INTO registrations_product VALUES(2182,'',91,24,66);
INSERT INTO registrations_product VALUES(2183,'',152,24,66);
INSERT INTO registrations_product VALUES(2184,'',9,24,66);
INSERT INTO registrations_product VALUES(2185,'',179,24,66);
INSERT INTO registrations_product VALUES(2186,'',154,24,66);
INSERT INTO registrations_product VALUES(2187,'',37,24,66);
INSERT INTO registrations_product VALUES(2189,'',157,24,66);
INSERT INTO registrations_product VALUES(2190,'',39,24,66);
INSERT INTO registrations_product VALUES(2191,'',100,24,66);
INSERT INTO registrations_product VALUES(2192,'',40,24,66);
INSERT INTO registrations_product VALUES(2193,'',102,24,66);
INSERT INTO registrations_product VALUES(2245,'',2,24,66);
INSERT INTO registrations_product VALUES(2246,'',3,24,66);
INSERT INTO registrations_product VALUES(2247,'',4,24,66);
INSERT INTO registrations_product VALUES(2249,'',163,24,66);
INSERT INTO registrations_product VALUES(2250,'',172,24,66);
INSERT INTO registrations_product VALUES(2252,'',62,24,66);
INSERT INTO registrations_product VALUES(2253,'',11,24,66);
INSERT INTO registrations_product VALUES(2254,'',12,24,66);
INSERT INTO registrations_product VALUES(2255,'',65,24,66);
INSERT INTO registrations_product VALUES(2256,'',14,24,66);
INSERT INTO registrations_product VALUES(2258,'',130,24,66);
INSERT INTO registrations_product VALUES(2259,'',131,24,66);
INSERT INTO registrations_product VALUES(2260,'',17,24,66);
INSERT INTO registrations_product VALUES(2262,'',72,24,66);
INSERT INTO registrations_product VALUES(2263,'',162,24,66);
INSERT INTO registrations_product VALUES(2264,'',22,24,66);
INSERT INTO registrations_product VALUES(2265,'',23,24,66);
INSERT INTO registrations_product VALUES(2267,'',25,24,66);
INSERT INTO registrations_product VALUES(2269,'',28,24,66);
INSERT INTO registrations_product VALUES(2270,'',140,24,66);
INSERT INTO registrations_product VALUES(2272,'',81,24,66);
INSERT INTO registrations_product VALUES(2273,'',143,24,66);
INSERT INTO registrations_product VALUES(2274,'',83,24,66);
INSERT INTO registrations_product VALUES(2275,'',145,24,66);
INSERT INTO registrations_product VALUES(2276,'',146,24,66);
INSERT INTO registrations_product VALUES(2277,'',147,24,66);
INSERT INTO registrations_product VALUES(2278,'',29,24,66);
INSERT INTO registrations_product VALUES(2281,'',31,24,66);
INSERT INTO registrations_product VALUES(2282,'',91,24,66);
INSERT INTO registrations_product VALUES(2283,'',152,24,66);
INSERT INTO registrations_product VALUES(2284,'',9,24,66);
INSERT INTO registrations_product VALUES(2285,'',179,24,66);
INSERT INTO registrations_product VALUES(2286,'',154,24,66);
INSERT INTO registrations_product VALUES(2287,'',37,24,66);
INSERT INTO registrations_product VALUES(2288,'',156,24,66);
INSERT INTO registrations_product VALUES(2289,'',157,24,66);
INSERT INTO registrations_product VALUES(2291,'',100,24,66);
INSERT INTO registrations_product VALUES(2293,'',102,24,66);
INSERT INTO registrations_product VALUES(2297,'',4,24,66);
INSERT INTO registrations_product VALUES(2299,'',163,24,66);
INSERT INTO registrations_product VALUES(2300,'',172,24,66);
INSERT INTO registrations_product VALUES(2304,'',12,24,66);
INSERT INTO registrations_product VALUES(2308,'',130,24,66);
INSERT INTO registrations_product VALUES(2309,'',131,24,66);
INSERT INTO registrations_product VALUES(2312,'',72,24,66);
INSERT INTO registrations_product VALUES(2313,'',162,24,66);
INSERT INTO registrations_product VALUES(2314,'',22,24,66);
INSERT INTO registrations_product VALUES(2317,'',25,24,66);
INSERT INTO registrations_product VALUES(2319,'',28,24,66);
INSERT INTO registrations_product VALUES(2327,'',147,24,66);
INSERT INTO registrations_product VALUES(2328,'',29,24,66);
INSERT INTO registrations_product VALUES(2333,'',152,24,66);
INSERT INTO registrations_product VALUES(2335,'',179,24,66);
INSERT INTO registrations_product VALUES(2336,'',154,24,66);
INSERT INTO registrations_product VALUES(2337,'',37,24,66);
INSERT INTO registrations_product VALUES(2341,'',100,24,66);
INSERT INTO registrations_product VALUES(2350,'',172,24,66);
INSERT INTO registrations_product VALUES(2354,'',12,24,66);
INSERT INTO registrations_product VALUES(2358,'',130,24,66);
INSERT INTO registrations_product VALUES(2363,'',162,24,66);
INSERT INTO registrations_product VALUES(2367,'',25,24,66);
INSERT INTO registrations_product VALUES(2369,'',28,24,66);
INSERT INTO registrations_product VALUES(2377,'',147,24,66);
INSERT INTO registrations_product VALUES(2378,'',29,24,66);
INSERT INTO registrations_product VALUES(2383,'',152,24,66);
INSERT INTO registrations_product VALUES(2386,'',154,24,66);
INSERT INTO registrations_product VALUES(2404,'',12,24,66);
INSERT INTO registrations_product VALUES(2413,'',162,24,66);
INSERT INTO registrations_product VALUES(2419,'',28,24,66);
INSERT INTO registrations_product VALUES(2454,'',12,24,66);
INSERT INTO registrations_product VALUES(2463,'',162,24,66);
INSERT INTO registrations_product VALUES(2469,'',28,24,66);
INSERT INTO registrations_product VALUES(2513,'',162,24,66);
INSERT INTO registrations_product VALUES(2550,'',4,24,66);
INSERT INTO registrations_product VALUES(2552,'',163,24,66);
INSERT INTO registrations_product VALUES(2556,'',11,24,66);
INSERT INTO registrations_product VALUES(2557,'',12,24,66);
INSERT INTO registrations_product VALUES(2561,'',130,24,66);
INSERT INTO registrations_product VALUES(2563,'',17,24,66);
INSERT INTO registrations_product VALUES(2564,'',133,24,66);
INSERT INTO registrations_product VALUES(2565,'',72,24,66);
INSERT INTO registrations_product VALUES(2566,'',162,24,66);
INSERT INTO registrations_product VALUES(2568,'',23,24,66);
INSERT INTO registrations_product VALUES(2569,'',75,24,66);
INSERT INTO registrations_product VALUES(2570,'',25,24,66);
INSERT INTO registrations_product VALUES(2571,'',26,24,66);
INSERT INTO registrations_product VALUES(2572,'',28,24,66);
INSERT INTO registrations_product VALUES(2573,'',140,24,66);
INSERT INTO registrations_product VALUES(2574,'',141,24,66);
INSERT INTO registrations_product VALUES(2576,'',143,24,66);
INSERT INTO registrations_product VALUES(2577,'',83,24,66);
INSERT INTO registrations_product VALUES(2578,'',145,24,66);
INSERT INTO registrations_product VALUES(2580,'',147,24,66);
INSERT INTO registrations_product VALUES(2581,'',29,24,66);
INSERT INTO registrations_product VALUES(2584,'',31,24,66);
INSERT INTO registrations_product VALUES(2586,'',152,24,66);
INSERT INTO registrations_product VALUES(2587,'',9,24,66);
INSERT INTO registrations_product VALUES(2588,'',179,24,66);
INSERT INTO registrations_product VALUES(2589,'',154,24,66);
INSERT INTO registrations_product VALUES(2590,'',37,24,66);
INSERT INTO registrations_product VALUES(2595,'',40,24,66);
INSERT INTO registrations_product VALUES(2597,'',42,24,66);
INSERT INTO registrations_product VALUES(2602,'',163,24,66);
INSERT INTO registrations_product VALUES(2606,'',11,24,66);
INSERT INTO registrations_product VALUES(2607,'',12,24,66);
INSERT INTO registrations_product VALUES(2608,'',65,24,66);
INSERT INTO registrations_product VALUES(2610,'',16,24,66);
INSERT INTO registrations_product VALUES(2611,'',130,24,66);
INSERT INTO registrations_product VALUES(2613,'',17,24,66);
INSERT INTO registrations_product VALUES(2614,'',133,24,66);
INSERT INTO registrations_product VALUES(2618,'',23,24,66);
INSERT INTO registrations_product VALUES(2620,'',25,24,66);
INSERT INTO registrations_product VALUES(2630,'',147,24,66);
INSERT INTO registrations_product VALUES(2631,'',29,24,66);
INSERT INTO registrations_product VALUES(2633,'',30,24,66);
INSERT INTO registrations_product VALUES(2638,'',179,24,66);
INSERT INTO registrations_product VALUES(2640,'',37,24,66);
INSERT INTO registrations_product VALUES(2641,'',156,24,66);
INSERT INTO registrations_product VALUES(2643,'',39,24,66);
INSERT INTO registrations_product VALUES(2644,'',100,24,66);
INSERT INTO registrations_product VALUES(2645,'',40,24,66);
INSERT INTO registrations_product VALUES(2646,'',102,24,66);
INSERT INTO registrations_product VALUES(2647,'',42,24,66);
INSERT INTO registrations_product VALUES(2649,'',3,24,66);
INSERT INTO registrations_product VALUES(2650,'',4,24,66);
INSERT INTO registrations_product VALUES(2652,'',163,24,66);
INSERT INTO registrations_product VALUES(2653,'',172,24,66);
INSERT INTO registrations_product VALUES(2654,'',7,24,66);
INSERT INTO registrations_product VALUES(2655,'',62,24,66);
INSERT INTO registrations_product VALUES(2657,'',12,24,66);
INSERT INTO registrations_product VALUES(2658,'',65,24,66);
INSERT INTO registrations_product VALUES(2660,'',16,24,66);
INSERT INTO registrations_product VALUES(2661,'',130,24,66);
INSERT INTO registrations_product VALUES(2663,'',17,24,66);
INSERT INTO registrations_product VALUES(2665,'',72,24,66);
INSERT INTO registrations_product VALUES(2666,'',162,24,66);
INSERT INTO registrations_product VALUES(2667,'',22,24,66);
INSERT INTO registrations_product VALUES(2670,'',25,24,66);
INSERT INTO registrations_product VALUES(2671,'',26,24,66);
INSERT INTO registrations_product VALUES(2672,'',28,24,66);
INSERT INTO registrations_product VALUES(2673,'',140,24,66);
INSERT INTO registrations_product VALUES(2674,'',141,24,66);
INSERT INTO registrations_product VALUES(2675,'',81,24,66);
INSERT INTO registrations_product VALUES(2676,'',143,24,66);
INSERT INTO registrations_product VALUES(2679,'',146,24,66);
INSERT INTO registrations_product VALUES(2681,'',29,24,66);
INSERT INTO registrations_product VALUES(2684,'',31,24,66);
INSERT INTO registrations_product VALUES(2685,'',91,24,66);
INSERT INTO registrations_product VALUES(2687,'',9,24,66);
INSERT INTO registrations_product VALUES(2688,'',179,24,66);
INSERT INTO registrations_product VALUES(2689,'',154,24,66);
INSERT INTO registrations_product VALUES(2693,'',39,24,66);
INSERT INTO registrations_product VALUES(2694,'',100,24,66);
INSERT INTO registrations_product VALUES(2696,'',102,24,66);
INSERT INTO registrations_product VALUES(2697,'',42,24,66);
INSERT INTO registrations_product VALUES(2699,'',3,24,66);
INSERT INTO registrations_product VALUES(2700,'',4,24,66);
INSERT INTO registrations_product VALUES(2703,'',172,24,66);
INSERT INTO registrations_product VALUES(2704,'',7,24,66);
INSERT INTO registrations_product VALUES(2706,'',11,24,66);
INSERT INTO registrations_product VALUES(2707,'',12,24,66);
INSERT INTO registrations_product VALUES(2710,'',16,24,66);
INSERT INTO registrations_product VALUES(2712,'',131,24,66);
INSERT INTO registrations_product VALUES(2714,'',133,24,66);
INSERT INTO registrations_product VALUES(2715,'',72,24,66);
INSERT INTO registrations_product VALUES(2716,'',162,24,66);
INSERT INTO registrations_product VALUES(2722,'',28,24,66);
INSERT INTO registrations_product VALUES(2723,'',140,24,66);
INSERT INTO registrations_product VALUES(2724,'',141,24,66);
INSERT INTO registrations_product VALUES(2730,'',147,24,66);
INSERT INTO registrations_product VALUES(2731,'',29,24,66);
INSERT INTO registrations_product VALUES(2735,'',91,24,66);
INSERT INTO registrations_product VALUES(2736,'',152,24,66);
INSERT INTO registrations_product VALUES(2738,'',179,24,66);
INSERT INTO registrations_product VALUES(2740,'',37,24,66);
INSERT INTO registrations_product VALUES(2745,'',40,24,66);
INSERT INTO registrations_product VALUES(2746,'',102,24,66);
INSERT INTO registrations_product VALUES(2749,'',3,24,66);
INSERT INTO registrations_product VALUES(2750,'',4,24,66);
INSERT INTO registrations_product VALUES(2752,'',163,24,66);
INSERT INTO registrations_product VALUES(2757,'',12,24,66);
INSERT INTO registrations_product VALUES(2758,'',65,24,66);
INSERT INTO registrations_product VALUES(2759,'',14,24,66);
INSERT INTO registrations_product VALUES(2761,'',130,24,66);
INSERT INTO registrations_product VALUES(2762,'',131,24,66);
INSERT INTO registrations_product VALUES(2764,'',133,24,66);
INSERT INTO registrations_product VALUES(2765,'',72,24,66);
INSERT INTO registrations_product VALUES(2766,'',162,24,66);
INSERT INTO registrations_product VALUES(2767,'',22,24,66);
INSERT INTO registrations_product VALUES(2768,'',23,24,66);
INSERT INTO registrations_product VALUES(2769,'',75,24,66);
INSERT INTO registrations_product VALUES(2770,'',25,24,66);
INSERT INTO registrations_product VALUES(2771,'',26,24,66);
INSERT INTO registrations_product VALUES(2778,'',145,24,66);
INSERT INTO registrations_product VALUES(2780,'',147,24,66);
INSERT INTO registrations_product VALUES(2781,'',29,24,66);
INSERT INTO registrations_product VALUES(2783,'',30,24,66);
INSERT INTO registrations_product VALUES(2784,'',31,24,66);
INSERT INTO registrations_product VALUES(2785,'',91,24,66);
INSERT INTO registrations_product VALUES(2786,'',152,24,66);
INSERT INTO registrations_product VALUES(2787,'',9,24,66);
INSERT INTO registrations_product VALUES(2790,'',37,24,66);
INSERT INTO registrations_product VALUES(2792,'',157,24,66);
INSERT INTO registrations_product VALUES(2793,'',39,24,66);
INSERT INTO registrations_product VALUES(2794,'',100,24,66);
INSERT INTO registrations_product VALUES(2795,'',40,24,66);
INSERT INTO registrations_product VALUES(2798,'Ranoxyl',163,64,66);
INSERT INTO registrations_product VALUES(2799,'Adco-Metronidazole',29,69,107);
INSERT INTO registrations_product VALUES(2800,'Betapam',22,24,66);
INSERT INTO registrations_product VALUES(2801,'Diclofenac 25 Biotech',23,24,66);
INSERT INTO registrations_product VALUES(2802,'Resmed Cotrimoxazole Oral Suspension',72,24,66);
INSERT INTO registrations_product VALUES(2803,'Doctrim',72,24,66);
INSERT INTO registrations_product VALUES(2804,'Ilvitrim Suspension',72,24,66);
INSERT INTO registrations_product VALUES(2806,'',4,88,66);
INSERT INTO registrations_product VALUES(2807,'',12,90,134);
INSERT INTO registrations_product VALUES(2808,'',2,87,66);
INSERT INTO registrations_product VALUES(2809,'',13,24,66);
INSERT INTO registrations_product VALUES(2810,'',16,87,66);
INSERT INTO registrations_product VALUES(2811,'',17,91,66);
INSERT INTO registrations_product VALUES(2812,'',17,71,66);
INSERT INTO registrations_product VALUES(2813,'',29,87,66);
INSERT INTO registrations_product VALUES(2814,'',30,71,66);
INSERT INTO registrations_product VALUES(2815,'',37,92,66);
INSERT INTO registrations_product VALUES(2816,'',31,93,66);
INSERT INTO registrations_product VALUES(2817,'',100,24,66);
INSERT INTO registrations_product VALUES(2818,'',157,24,66);
INSERT INTO registrations_product VALUES(2819,'',156,94,66);
INSERT INTO registrations_product VALUES(2820,'',152,95,66);
INSERT INTO registrations_product VALUES(2821,'',147,96,135);
INSERT INTO registrations_product VALUES(2822,'',23,71,136);
INSERT INTO registrations_product VALUES(2823,'',130,24,66);
INSERT INTO registrations_product VALUES(2824,'Kayvir 200',2,97,137);
INSERT INTO registrations_product VALUES(2825,'Acyclovir - Denk 200',2,98,138);
INSERT INTO registrations_product VALUES(2826,'Acivir - 200',2,1,43);
INSERT INTO registrations_product VALUES(2827,'Cicloviral 200',2,99,139);
INSERT INTO registrations_product VALUES(2828,'Ciclovax - 200',2,33,72);
INSERT INTO registrations_product VALUES(2829,'Virucid 200',2,100,140);
INSERT INTO registrations_product VALUES(2830,'Acytal - 200',2,94,141);
INSERT INTO registrations_product VALUES(2831,'Aclo 200',2,93,142);
INSERT INTO registrations_product VALUES(2832,'Genvir - 200',2,101,143);
INSERT INTO registrations_product VALUES(2833,'Benkil 400',3,87,133);
INSERT INTO registrations_product VALUES(2834,'Wormfree',3,102,145);
INSERT INTO registrations_product VALUES(2835,'Albensha',3,103,146);
INSERT INTO registrations_product VALUES(2836,'Abz',3,78,147);
INSERT INTO registrations_product VALUES(2837,'Xipizole',3,104,148);
INSERT INTO registrations_product VALUES(2838,'Vormifred 400',3,105,149);
INSERT INTO registrations_product VALUES(2839,'Sanoxal',3,106,150);
INSERT INTO registrations_product VALUES(2840,'Bendaz - 400',3,97,137);
INSERT INTO registrations_product VALUES(2841,'Neo Amitriptilin',4,107,151);
INSERT INTO registrations_product VALUES(2843,'Amoxycillin (Trihydrate)',164,24,66);
INSERT INTO registrations_product VALUES(2844,'Amoxycillin (Trihydrate), Dry Pwd For Suspension',163,24,66);
INSERT INTO registrations_product VALUES(2845,'Artemether + Lumefantrine',7,24,66);
INSERT INTO registrations_product VALUES(2846,'Artemether + Lumefantrine',7,24,66);
INSERT INTO registrations_product VALUES(2847,'Artemether + Lumefantrine',7,24,66);
INSERT INTO registrations_product VALUES(2848,'Artemether + Lumefantrine',7,24,66);
INSERT INTO registrations_product VALUES(2849,'Artemether + Lumefantrine',7,24,65);
INSERT INTO registrations_product VALUES(2850,'Artemether + Lumefantrine',7,24,66);
INSERT INTO registrations_product VALUES(2851,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ',9,24,66);
INSERT INTO registrations_product VALUES(2852,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ',9,24,66);
INSERT INTO registrations_product VALUES(2853,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ',9,24,66);
INSERT INTO registrations_product VALUES(2854,'Benzathine Benzy Penicillin 2.4 MU, PWD FOR INJ',9,24,66);
INSERT INTO registrations_product VALUES(2855,'BENZYL PENICILLIN SODIUM, 5MU, PWD FOR INJ',170,24,66);
INSERT INTO registrations_product VALUES(2856,'BENZYL PENICILLIN SODIUM, 5MU, PWD FOR INJ',170,24,66);
INSERT INTO registrations_product VALUES(2857,'CARBAMAZEPINE, TAB 200MG',12,24,66);
INSERT INTO registrations_product VALUES(2858,'CEPHALEXIN, TAB/CAP 250MG',14,24,66);
INSERT INTO registrations_product VALUES(2859,'CEPHALEXIN, TAB/CAP 250MG',16,24,66);
INSERT INTO registrations_product VALUES(2860,'CHLORPHENIRAMINE MALEATE, TAB 4MG',130,24,66);
INSERT INTO registrations_product VALUES(2861,'CIPROFLOXACIN, TAB 250MG',165,24,66);
INSERT INTO registrations_product VALUES(2862,'CO-TRIMOXAZOLE, PWD FOR SUSP, 240MG/5ML, 100ML BTL',72,24,66);
INSERT INTO registrations_product VALUES(2863,'CO-TRIMOXAZOLE, PWD FOR SUSP, 240MG/5ML, 60ML BTL',72,24,66);
INSERT INTO registrations_product VALUES(2866,'CO-TRIMOXAZOLE, TAB 480MG',162,24,66);
INSERT INTO registrations_product VALUES(2867,'ERYTHROMYCIN STEARATE, TAB 250MG',25,24,66);
INSERT INTO registrations_product VALUES(2868,'GLIBENCLAMIDE, TAB 5MG',28,24,66);
INSERT INTO registrations_product VALUES(2869,'LAMIVUDINE / STAVUDINE / NEVIRAPINE, TAB 150/30/20',190,24,66);
INSERT INTO registrations_product VALUES(2870,'LAMIVUDINE / STAVUDINE / NEVIRAPINE, TAB 60/12/100',191,24,66);
INSERT INTO registrations_product VALUES(2871,'LAMIVUDINE / ZIDOVUDINE, TAB 150/300MG',102,24,66);
INSERT INTO registrations_product VALUES(2872,'LAMIVUDINE / ZIDOVUDINE, TAB 150/300MG',102,24,66);
INSERT INTO registrations_product VALUES(2873,'LAMIVUDINE, TAB 150MG',182,24,66);
INSERT INTO registrations_product VALUES(2875,'LOPINAVIR / RITONAVIR (KALETRA), CAP 200/50MG',143,24,66);
INSERT INTO registrations_product VALUES(2876,'MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG',146,24,66);
INSERT INTO registrations_product VALUES(2877,'MEDROXYPROGESTERONE ACETATE, PWD FOR IM INJ, 150MG',146,24,66);
INSERT INTO registrations_product VALUES(2878,'METFORMIN TABLET B.P 250MG',193,24,66);
INSERT INTO registrations_product VALUES(2879,'METRONIDAZOLE HCL, TAB 200MG',29,24,66);
INSERT INTO registrations_product VALUES(2880,'NEVIRAPINE, TAB 200MG',184,24,66);
INSERT INTO registrations_product VALUES(2881,'ORAL REHYDRATION SALTS, WHO FORMULA, SACHET TO MAK',31,24,66);
INSERT INTO registrations_product VALUES(2882,'ORAL REHYDRATION SALTS, WHO FORMULA, SACHET TO MAK',31,24,66);
INSERT INTO registrations_product VALUES(2883,'OXYTOCIN IV INJ, 10IU/ML 1ML AMP',91,24,66);
INSERT INTO registrations_product VALUES(2884,'PARACETAMOL, SYRUP 120MG/5ML, 100ML BTL ',152,24,66);
INSERT INTO registrations_product VALUES(2885,'PARACETAMOL, SYRUP 120MG/5ML, 2.5L',152,24,66);
INSERT INTO registrations_product VALUES(2887,'RIFAMPICIN /ISONIAZID 60/30MG (RIMACTAZID PAED)',153,24,66);
INSERT INTO registrations_product VALUES(2888,'RIFAMPICIN + ISONIAZID, TAB 150/75MG',179,24,66);
INSERT INTO registrations_product VALUES(2889,'RIFAMPICIN + ISONIAZID, TAB 60/30MG',153,24,66);
INSERT INTO registrations_product VALUES(2890,'RIFAMPICIN/ISONIAZID/PYRAZINAMIDE 60/30/150MG (RIM',154,24,66);
INSERT INTO registrations_product VALUES(2891,'RIFAMPICIN+ISONIAZID+PYRAZINAMIDE,TAB 60/30/150MG',154,24,66);
INSERT INTO registrations_product VALUES(2892,'SALBUTAMOL, INHALER 0.1MG DOSE, 200 DOSES',37,24,66);
INSERT INTO registrations_product VALUES(2893,'SULPHADOXINE / PYRIMETHAMINE, TAB 500/25MG',39,24,66);
INSERT INTO registrations_product VALUES(2894,'TAMOXIFEN 20MG, TABLET',100,24,66);
INSERT INTO registrations_product VALUES(2895,'TAMOXIFEN 20MG, TABLET',100,24,66);
INSERT INTO registrations_product VALUES(2896,'ZINC,TAB 20MG',42,24,66);
INSERT INTO registrations_product VALUES(2897,'Amitryptiline Tabs',4,33,72);
INSERT INTO registrations_product VALUES(2898,'Amoxicillin 125mg/5ml suspension',163,109,153);
INSERT INTO registrations_product VALUES(2899,'amoxicillin 500mg capsule',172,110,154);
INSERT INTO registrations_product VALUES(2900,'Captopril 25mg',11,110,154);
INSERT INTO registrations_product VALUES(2901,'Ceftriaxone 250mg pdr for injection',65,71,155);
INSERT INTO registrations_product VALUES(2902,'Unknown',83,24,66);
INSERT INTO registrations_product VALUES(2903,'Magnesium sulphate 500mg/ml injection',83,111,66);
INSERT INTO registrations_product VALUES(2904,'',26,112,156);
INSERT INTO registrations_product VALUES(2905,'',83,113,157);
INSERT INTO registrations_product VALUES(2906,'',83,113,157);
INSERT INTO registrations_product VALUES(2907,'',91,113,157);
INSERT INTO registrations_product VALUES(2908,'',146,113,157);
INSERT INTO registrations_product VALUES(2909,'',2,134,66);
INSERT INTO registrations_product VALUES(2910,'',3,125,66);
INSERT INTO registrations_product VALUES(2911,'',4,22,66);
INSERT INTO registrations_product VALUES(2912,'',9,125,66);
INSERT INTO registrations_product VALUES(2913,'',10,125,66);
INSERT INTO registrations_product VALUES(2914,'',10,113,66);
INSERT INTO registrations_product VALUES(2915,'',11,113,66);
INSERT INTO registrations_product VALUES(2916,'',12,113,66);
INSERT INTO registrations_product VALUES(2917,'',13,113,66);
INSERT INTO registrations_product VALUES(2918,'',14,129,158);
INSERT INTO registrations_product VALUES(2919,'',16,125,159);
INSERT INTO registrations_product VALUES(2920,'',17,127,153);
INSERT INTO registrations_product VALUES(2921,'',22,129,160);
INSERT INTO registrations_product VALUES(2922,'',23,125,161);
INSERT INTO registrations_product VALUES(2923,'',25,132,162);
INSERT INTO registrations_product VALUES(2924,'',28,133,163);
INSERT INTO registrations_product VALUES(2925,'',29,132,164);
INSERT INTO registrations_product VALUES(2926,'',30,132,165);
INSERT INTO registrations_product VALUES(2927,'',31,113,157);
INSERT INTO registrations_product VALUES(2928,'',152,126,166);
INSERT INTO registrations_product VALUES(2929,'',37,135,66);
INSERT INTO registrations_product VALUES(2930,'',39,128,168);
INSERT INTO registrations_product VALUES(2931,'',40,134,169);
INSERT INTO registrations_product VALUES(2932,'',42,134,170);
INSERT INTO registrations_product VALUES(2933,'',65,125,171);
INSERT INTO registrations_product VALUES(2934,'',72,133,172);
INSERT INTO registrations_product VALUES(2935,'',88,127,153);
INSERT INTO registrations_product VALUES(2936,'',130,60,98);
INSERT INTO registrations_product VALUES(2937,'',131,136,66);
INSERT INTO registrations_product VALUES(2938,'',140,137,66);
INSERT INTO registrations_product VALUES(2939,'',141,24,66);
INSERT INTO registrations_product VALUES(2940,'',147,136,173);
INSERT INTO registrations_product VALUES(2941,'',157,131,174);
INSERT INTO registrations_product VALUES(2942,'',162,133,163);
INSERT INTO registrations_product VALUES(2943,'',163,126,166);
INSERT INTO registrations_product VALUES(2944,'',164,131,174);
INSERT INTO registrations_product VALUES(2945,'',165,134,169);
INSERT INTO registrations_product VALUES(2946,'',166,125,159);
INSERT INTO registrations_product VALUES(2947,'',167,134,169);
INSERT INTO registrations_product VALUES(2948,'',170,134,169);
INSERT INTO registrations_product VALUES(2949,'',172,126,166);
INSERT INTO registrations_product VALUES(2950,'',173,133,163);
INSERT INTO registrations_product VALUES(2951,'',174,101,175);
INSERT INTO registrations_product VALUES(2952,'',175,134,169);
INSERT INTO registrations_product VALUES(2953,'',179,21,63);
INSERT INTO registrations_product VALUES(2954,'',180,132,162);
INSERT INTO registrations_product VALUES(2955,'',184,24,66);
INSERT INTO registrations_product VALUES(2956,'Artementer Lumefantrine',7,138,176);
INSERT INTO registrations_product VALUES(2957,'',7,139,177);
INSERT INTO registrations_product VALUES(2958,'Duovir',102,64,178);
INSERT INTO registrations_product VALUES(2959,'Depoprovera',146,140,179);
INSERT INTO registrations_product VALUES(2961,'',164,24,66);
INSERT INTO registrations_product VALUES(2962,'',170,24,66);
INSERT INTO registrations_product VALUES(2963,'',194,24,66);
INSERT INTO registrations_product VALUES(2964,'',165,24,66);
INSERT INTO registrations_product VALUES(2965,'',23,24,66);
INSERT INTO registrations_product VALUES(2966,'',167,24,66);
INSERT INTO registrations_product VALUES(2967,'',166,24,66);
INSERT INTO registrations_product VALUES(2968,'Erythromycin Stearate 250mg',25,24,66);
INSERT INTO registrations_product VALUES(2969,'',173,24,66);
INSERT INTO registrations_product VALUES(2970,'',196,24,66);
INSERT INTO registrations_product VALUES(2971,'',197,24,66);
INSERT INTO registrations_product VALUES(2972,'',198,24,66);
INSERT INTO registrations_product VALUES(2973,'',199,24,66);
INSERT INTO registrations_product VALUES(2974,'',200,24,66);
INSERT INTO registrations_product VALUES(2975,'',201,24,66);
INSERT INTO registrations_product VALUES(2976,'',202,24,66);
INSERT INTO registrations_product VALUES(2977,'',203,24,66);
INSERT INTO registrations_product VALUES(2978,'',204,24,66);
INSERT INTO registrations_product VALUES(2979,'',205,24,66);
INSERT INTO registrations_product VALUES(2980,'',206,24,66);
INSERT INTO registrations_product VALUES(2981,'',207,24,66);
INSERT INTO registrations_product VALUES(2982,'',164,24,66);
INSERT INTO registrations_product VALUES(2983,'',164,141,180);
INSERT INTO registrations_product VALUES(2984,'',172,141,180);
INSERT INTO registrations_product VALUES(2985,'',9,125,159);
INSERT INTO registrations_product VALUES(2986,'',12,142,181);
INSERT INTO registrations_product VALUES(2987,'',17,141,180);
INSERT INTO registrations_product VALUES(2988,'',72,141,180);
INSERT INTO registrations_product VALUES(2989,'',22,143,182);
INSERT INTO registrations_product VALUES(2990,'',23,141,180);
INSERT INTO registrations_product VALUES(2991,'',28,144,183);
INSERT INTO registrations_product VALUES(2992,'',146,145,NULL);
INSERT INTO registrations_product VALUES(2993,'',147,146,185);
INSERT INTO registrations_product VALUES(2994,'',30,141,180);
INSERT INTO registrations_product VALUES(2995,'',3,64,186);
INSERT INTO registrations_product VALUES(2996,'',4,147,187);
INSERT INTO registrations_product VALUES(2997,'',163,22,188);
INSERT INTO registrations_product VALUES(2998,'',164,148,189);
INSERT INTO registrations_product VALUES(2999,'',172,5,190);
INSERT INTO registrations_product VALUES(3000,'',10,149,191);
INSERT INTO registrations_product VALUES(3001,'',12,150,192);
INSERT INTO registrations_product VALUES(3002,'',65,6,193);
INSERT INTO registrations_product VALUES(3003,'',13,18,194);
INSERT INTO registrations_product VALUES(3004,'',130,87,144);
INSERT INTO registrations_product VALUES(3005,'',17,151,195);
INSERT INTO registrations_product VALUES(3006,'',133,1,196);
INSERT INTO registrations_product VALUES(3007,'',72,1,197);
INSERT INTO registrations_product VALUES(3008,'',162,28,144);
INSERT INTO registrations_product VALUES(3009,'',22,1,198);
INSERT INTO registrations_product VALUES(3010,'',25,152,199);
INSERT INTO registrations_product VALUES(3011,'',185,153,201);
INSERT INTO registrations_product VALUES(3012,'',182,3,202);
INSERT INTO registrations_product VALUES(3013,'',143,154,203);
INSERT INTO registrations_product VALUES(3014,'',152,155,204);
INSERT INTO registrations_product VALUES(3015,'',157,10,205);
INSERT INTO registrations_product VALUES(3016,'',2,156,206);
INSERT INTO registrations_product VALUES(3017,'',3,158,207);
INSERT INTO registrations_product VALUES(3018,'',174,159,208);
INSERT INTO registrations_product VALUES(3019,'',4,159,208);
INSERT INTO registrations_product VALUES(3020,'',163,160,209);
INSERT INTO registrations_product VALUES(3021,'',164,160,209);
INSERT INTO registrations_product VALUES(3022,'',7,1,43);
INSERT INTO registrations_product VALUES(3023,'',170,161,210);
INSERT INTO registrations_product VALUES(3024,'',12,159,208);
INSERT INTO registrations_product VALUES(3025,'',130,90,134);
INSERT INTO registrations_product VALUES(3026,'',131,150,211);
INSERT INTO registrations_product VALUES(3027,'',13,90,134);
INSERT INTO registrations_product VALUES(3028,'',17,162,212);
INSERT INTO registrations_product VALUES(3029,'',133,90,134);
INSERT INTO registrations_product VALUES(3030,'',72,163,213);
INSERT INTO registrations_product VALUES(3031,'',162,90,134);
INSERT INTO registrations_product VALUES(3032,'',22,159,208);
INSERT INTO registrations_product VALUES(3033,'',166,164,214);
INSERT INTO registrations_product VALUES(3034,'',166,90,134);
INSERT INTO registrations_product VALUES(3035,'',23,164,214);
INSERT INTO registrations_product VALUES(3036,'',75,165,215);
INSERT INTO registrations_product VALUES(3037,'',25,160,209);
INSERT INTO registrations_product VALUES(3038,'',26,167,216);
INSERT INTO registrations_product VALUES(3039,'',163,168,217);
INSERT INTO registrations_product VALUES(3040,'',164,169,218);
INSERT INTO registrations_product VALUES(3041,'',172,22,188);
INSERT INTO registrations_product VALUES(3042,'',9,170,221);
INSERT INTO registrations_product VALUES(3043,'',13,171,222);
INSERT INTO registrations_product VALUES(3044,'',16,22,220);
INSERT INTO registrations_product VALUES(3045,'',130,87,223);
INSERT INTO registrations_product VALUES(3046,'',17,139,224);
INSERT INTO registrations_product VALUES(3047,'',72,172,225);
INSERT INTO registrations_product VALUES(3048,'',162,169,218);
INSERT INTO registrations_product VALUES(3049,'',22,172,225);
INSERT INTO registrations_product VALUES(3050,'',166,172,225);
INSERT INTO registrations_product VALUES(3051,'',28,22,220);
INSERT INTO registrations_product VALUES(3052,'',29,22,220);
INSERT INTO registrations_product VALUES(3053,'',31,158,226);
INSERT INTO registrations_product VALUES(3054,'',39,169,218);
INSERT INTO registrations_product VALUES(3055,'Amoxicillin',163,43,228);
CREATE TABLE "registrations_registration" (
    "id" integer NOT NULL PRIMARY KEY,
    "source_id" integer NOT NULL REFERENCES "registrations_source" ("id"),
    "country_id" integer NOT NULL REFERENCES "registrations_country" ("id"),
    "number" varchar(32) NOT NULL,
    "product_id" integer NOT NULL REFERENCES "registrations_product" ("id"),
    "manufacturer_id" integer REFERENCES "registrations_site" ("id"),
    "supplier_id" integer REFERENCES "registrations_supplier" ("id"),
    "status" bool NOT NULL,
    "application" date,
    "registered" date,
    "expiry" date
);
CREATE TABLE "registrations_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "manufacturer_id" integer NOT NULL REFERENCES "registrations_manufacturer" ("id"),
    "name" varchar(64) NOT NULL,
    "address" text,
    "country_id" integer REFERENCES "registrations_country" ("id"),
    "website" varchar(200),
    "contact" varchar(64),
    "phone" varchar(16),
    "altphone" varchar(16),
    "fax" varchar(16),
    "email" varchar(75),
    "altemail" varchar(75)
);
INSERT INTO registrations_site VALUES(43,1,'Cipla Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(44,2,'ICON/IPPF - United Kingdom','United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(45,3,'Glaxo Smithkline, South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(46,4,'Novo Nordisk (Pty) Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(47,5,'Adcock Ingram Healthcare Pty Ltd - South Africa','Wadeville
Germiston
RSA
',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(48,6,'F. Hoffmann- La Roche - Switzerland','Switzerland',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(49,7,'Medochemie Ltd - Cyprus','Cyprus',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(50,8,'International Healthcare Distributer - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(51,9,'Hadapsar, India','Hadapsar
India
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(52,10,'Wockhardt Ltd - India','Bandra Karla India
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(53,11,'Kishanpuna, India','Kishanpuna
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(54,12,'Quayle Dental Ltd - United Kingdom','United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(55,13,'Neon Lab Ltd - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(56,14,'Bayer Healthcare-Middle Africa - Keyna','Keyna',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(57,15,'Korsten, Port Elizabeth','Korsten
Port Elizabeth
South Africa',3,'','','','','','','');
INSERT INTO registrations_site VALUES(58,16,'Genpharma - Morocco','Morocco',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(59,17,'Boehringer Ingelheim - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(60,18,'Sandoz Pty LTD - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(61,19,'ARI HEALTHCARE PVT LTD - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(62,20,'Franco India Phar PVT LTD - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(63,21,'Macleods Pharmaceuticals Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(64,22,'MicroLabs - Unknown','Unknown',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(65,23,'Meditab - Unknown','Unknown',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(66,24,'Unknown - Unknown','Unknown',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(67,28,'Amstelfarma - Netherlands','Netherlands',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(68,29,'Bristol-Myers Squibb - USA','USA',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(69,30,'Dundigal, India','Dundigal,
Hyderbad
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(70,31,'GlaxoSmithKline - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(71,32,'Torrent Pharmaceuticals Ltd - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(72,33,'Remedica Ltd - Cyprus','Cyprus',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(73,34,'Varichem Pharmaceuticals Pty Ltd - Harare, Zimbabwe','Harare
Zimbabwe',16,'','','','','','','');
INSERT INTO registrations_site VALUES(74,35,'Premier Pharma Trade Pty Ltd - Malaysia','Malaysia',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(75,36,'Medix Care (Pty) Ltd - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(76,37,'Karnakata Antibiotics and Pharmaceuticals Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(77,38,'Cipla Medpro (Pty) Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(78,40,'Apotex - Canada','Canada',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(79,41,'Mylan Laboratories Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(80,42,'Abbott GmbH & Co - Germany','Germany',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(81,43,'Adcock Ingram Criticalcare Pty Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(82,44,'Martindale Pharmaceuticals - United Kingdom','United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(83,45,'Pfeizer Laboratories Pty Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(84,46,'Bodene Pty Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(85,47,'Hovid Bhd - Malaysia','Malaysia',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(86,48,'Mark Biosciences - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(87,49,'Astrazeneca Pharmaceuticals Pty Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(88,50,'Mirren (Pty) Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(89,51,'Waluj, India','Waluj District
Aurangabad
India
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(90,52,'Morningside Pharmaceuticals - United Kingdom','United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(91,53,'Novartis South Africa (Pty) Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(92,54,'Alembic Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(93,55,'Biotech Laboratories (Pty) Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(94,56,'Lupin Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(95,57,'Sanofi-Aventis Pty Ltd - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(96,58,'Galentic Pharma (India) Pvt. Ltd - India','Karaswada
Mapsusa
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(97,59,'Matrix Laboratories Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(98,60,'Hetero Drugs Limited - India','India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(99,61,'Nutrition (Pty) Ltd - France','France',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(100,62,'Zinplex - South Africa','South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(101,63,'Sanofi Synthe Lab - France','France',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(102,27,'Gedeon Richter - Unknown','Unknown',12,'','','','','','','');
INSERT INTO registrations_site VALUES(103,65,'India - New Delhi','New Delhi',1,'','','','','','','');
INSERT INTO registrations_site VALUES(104,66,'Wadeville, Germiston, South Africa','Wadeville, Germiston
South Africa',3,'','','','','','','');
INSERT INTO registrations_site VALUES(105,67,'Azuqueca de Heares, Guadalajara, Spain','Av. Miralcampo 7
Polígono Ind. de Miralcampo
19200 Azuqueca de Henares
Guadalajara
Spain',31,'http://www.romikin.com/EN/our-companies/index0109.html?sub=5','',+34949349700,'',+34949266837,'liconsa@chemogroup.com','');
INSERT INTO registrations_site VALUES(106,68,'Industria West, Johannesburg, South Africa','50 Commando Road
Industria West
2093
Johannesburg',3,'http://www.pharmaq.co.za/','',+27112471600,'',+27114747420,'info@pharmaq.co.za','');
INSERT INTO registrations_site VALUES(107,69,'Anekal Taluk, Bangalore, India','Anekal Taluk
Bangalore
India',1,'','','','','','','');
INSERT INTO registrations_site VALUES(108,70,'Pinetown, Kwazulu Natal, South Africa','10 Eden Road
Pinetown
3610
',3,'http://www.nbi-kzn.org.za/','',+27317146700,'',+27317085614,'info@nbisa.org.za','');
INSERT INTO registrations_site VALUES(109,42,'Ludwigshafen, Germany','',20,'http://www.abbott.com/global/url/content/en_US/10.40.155:155/general_content/Global_Location_Profile_0032.htm','','','','','','');
INSERT INTO registrations_site VALUES(110,71,'Khalapur, Raigad, India','Village Savroli, 
Taluka: Khalapur, Khopoli, 
District: Raigad, 
Maharashtra (India).

',1,'http://www.kopran.com/','',+912192274500,'',+912192274025,'serao@kopran.com','lalit@kopran.com');
INSERT INTO registrations_site VALUES(111,72,'Harare, Zimbabwe','',NULL,'','','','','','','');
INSERT INTO registrations_site VALUES(112,73,'Silvassa, Dadra & Nagar Haveli, India','Silvassa, Dadra & Nagar Haveli
India',1,'http://www.ipcalabs.com/','','','','','','');
INSERT INTO registrations_site VALUES(113,74,'Ndabeni, Cape Town, South Africa','',3,'','','','','','','');
INSERT INTO registrations_site VALUES(114,1,'Patalganga, Raigad, India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(115,75,'Panoli, Gujarat, India','',NULL,'','','','','','','');
INSERT INTO registrations_site VALUES(116,76,'De CV, Huichapan, Xoch, Mexico','',32,'','','','','','','');
INSERT INTO registrations_site VALUES(117,64,'Paonta Sahib, Sirmour, Himachal Pradesh, India','Paonta Sahib
Sirmour
Himachal Pradesh
India',1,'','','','','','','');
INSERT INTO registrations_site VALUES(118,1,'Kurkumbh, Pune, Mahrashtra, India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(119,60,'Jeedimetla, Hyderabad, India','Jeedimetla
Hyderabad
India',1,'','','','','','','');
INSERT INTO registrations_site VALUES(120,54,'Tal-Halol, Panch Mahals, Gujarat, India','',NULL,'','','','','','','');
INSERT INTO registrations_site VALUES(121,78,'Verna, Goa, India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(122,79,'Frankfurt, Germany','',20,'','','','','','','');
INSERT INTO registrations_site VALUES(123,80,'Etobicoke, Ontario, Canada','',19,'','','','','','','');
INSERT INTO registrations_site VALUES(124,38,'Mobeni, Durban, South Africa','',3,'','','','','','','');
INSERT INTO registrations_site VALUES(125,81,'Osny, France','',21,'','','','','','','');
INSERT INTO registrations_site VALUES(126,46,'Korsten, Port Elizabeth, South Africa','',3,'','','','','','','');
INSERT INTO registrations_site VALUES(127,64,'Dewas, Madhya, India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(128,82,'Waltloo, Pretoria, South Africa','',3,'','','','','','','');
INSERT INTO registrations_site VALUES(129,83,'Pallini, Attikis, Greece','',33,'','','','','','','');
INSERT INTO registrations_site VALUES(130,84,'Torre Annunziata, Italy','',8,'','','','','','','');
INSERT INTO registrations_site VALUES(131,85,'Taloja Navi, Mumbai, India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(132,86,'Bhosari, Pune, India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(133,7,'India','',1,'','','','','','','');
INSERT INTO registrations_site VALUES(134,90,'India','',NULL,'','','','','','','');
INSERT INTO registrations_site VALUES(135,96,'Unknown','',NULL,'','','','','','','');
INSERT INTO registrations_site VALUES(136,71,'Unknown','',NULL,'','','','','','','');
INSERT INTO registrations_site VALUES(137,97,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(138,98,'Alemanha','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(139,99,'Portugal','',36,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(140,100,'Cyprus','',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(141,94,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(142,93,'India, Ahmedabad','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(143,101,'Gujarat, Índia','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(144,87,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(145,102,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(146,103,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(147,78,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(148,104,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(149,105,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(150,106,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(151,107,'Brazil','',37,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(152,108,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(153,109,'Nairobi','P.O.Box 40411 G.PO 00100, 
Nairobi,
Kenya',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(154,110,'Dar es Salaam','P.O. Box 40164, 
Dar es Salaam,
Tanzania',29,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(155,71,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(156,112,'Boisar, India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(157,113,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(158,129,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(159,125,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(160,129,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(161,125,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(162,132,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(163,133,'Malawi','',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(164,132,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(165,132,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(166,126,'Kenya','',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(167,135,'Spain','',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(168,128,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(169,134,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(170,134,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(171,125,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(172,133,'Malawi','',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(173,136,'Kenya','',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(174,131,'China','',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(175,101,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(176,138,'USA','',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(177,139,'Ajanta House','Ajanta Pharma (India) Ltd
Ajanta  House
Charkop, Kadvil (w)
Mumbai-400 067
India.
Tel: +91 22 28683625
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(178,64,'Devika Towere, New Delhi','Ranbaxy Laboratories LTD
Devika Towere,
10th Floor, New Delhi,
110 019,
India

Tel +91-124-4135000
Fax +91-124-4135001
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(179,140,'Mumbai, India','3rd Floor, Brady House,
12/14, Veer Nariman Road,
Fort, Mumbai – 400 001,
India.
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(180,141,'Coimbra','',36,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(181,142,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(182,143,'Cuba','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(183,144,'Brazil','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(184,145,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(185,146,'Hissar, Haryana, India','Hissar, Haryana, India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(186,64,'Upside Industrial Area (Dehradum)','Upside Industrial Area (Dehradum)
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(187,147,'Eastbourne UK','Eastbourne
United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(188,22,'Veerasandra','16, Veerasandra Industrial Area, Anekal Taluk
Bangalore Karnataka 560100
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(189,148,'Athlone Lab','Athlone Lab Ltd 
Ireland',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(190,5,'Bryanston','Bryanston
South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(191,149,'Kundl - Austria','Kundl
Austria',42,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(192,150,'Limassol','Limassol
Cyprus',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(193,6,'Kaiseraugst, Switzerland','Kaiseraugst
Switzerland',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(194,18,'Kempton Park, South Africa','Kempton Park, South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(195,151,'UK','',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(196,1,'Sirinagar','Sirinagar
Vijayawada
India
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(197,1,'Bhosari Pune, India','Bhosari Pune
India
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(198,1,'Samnath, Dabhel, India','Samnath, Dabhel, India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(199,152,'South Ruislip, UK','South Ruislip
United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(200,65,'Okhia, India','Okhia
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(201,153,'Barga (Luccal), Italy','Barga (Luccal)
Italy',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(202,3,'Bryanston','Bryanston
South Africa',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(203,154,'Adcock','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(204,155,'Avalahalli','Avalahalli
Bangalore
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(205,10,'Wrexham','Wrexham
United Kingdom',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(206,156,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(207,158,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(208,159,'Mauritius','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(209,160,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(210,161,'United Kingdom','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(211,150,'Belgium','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(212,162,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(213,163,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(214,164,'India','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(215,165,'France','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(216,167,'India','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(217,168,'Kinshasa','66,67,88,Av.Kabalo
Q /Croix-Rouge
C /Kinshasa
Kinshasa-RDC',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(218,169,'Kinshasa','03,Av.des Entrepôts
Q /Kingabwa
C /Limeté
Kin-RDC
',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(219,22,'Bommasandra','Plot No. 113 - 116, 4th Phase, 
KIADB, Bommasandra Industrial Area
Anekal Taluk
Bangalore Karnataka 560099
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(220,22,'Goa','Plot No. S-155 to S-159
Verna Industrial Estate, Phase III
Verna Goa 403722
India',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(221,170,'Workshop 101','Workshop 101
n°188 Gongnong Road
Shijiazhuang',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(222,171,'Bhiwandi','CIPLA LTD
BLDG - E4 - GALA NO 1 TO 10
SHREE ARIHANT COMPOUND
KALHER VILLAGE
BHIWANDI DIST : THANE - MAHARASHTRA PIN - 421 302.
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(223,87,'Malur Factory','No.50
Kayarambedu Village
Guduvancherry - 603 202',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(224,139,'Aurangabad','B-4/5/6 MIDC : Paithan-431
128,Distr. Aurangabad
Maharashtra State
India
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(225,172,'Kinshasa','7155,Av.Général BOBOZO
Q /Kingabwa
C /Limeté
Kinshasa-RDC
',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(226,158,'Bhiwandi','Bhiwadi
SP 1192, A & B Phase-IV Bhiwadi Industrial area
District Alwar Rajastan
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(227,58,'Rabale','Rabale
R-673, MIDC TTC Rabale
Thane Belapur Road, Navi
Mumbai- 400701
',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO registrations_site VALUES(228,43,'JHB','No1 Sabax Road Aeroton, Johannesburg South Africa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
CREATE TABLE "registrations_source" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(64) NOT NULL,
    "date" datetime NOT NULL,
    "url" varchar(200)
);
INSERT INTO registrations_source VALUES(1,'Seychelles Monitoring Report - Nov 2012','2012-11-29 11:51:27','');
INSERT INTO registrations_source VALUES(2,'Botswana Oracle Dump - Nov 2012','2012-12-05 07:47:42','');
INSERT INTO registrations_source VALUES(4,'RSA Tender - HP02-2011AI/03','2012-12-12 07:12:04','http://www.doh.gov.za/docs/contracts/2012/hp02-2011ai03.pdf');
INSERT INTO registrations_source VALUES(5,'RSA Tender - HP-09-2012SD','2012-12-12 08:01:47','http://www.doh.gov.za/docs/contracts/2012/HP09-2012SD.pdf');
INSERT INTO registrations_source VALUES(6,'RSA MoH Manual Annotation','2012-12-12 08:02:55','');
INSERT INTO registrations_source VALUES(10,'RSA Tender - HP-2011AI','2012-12-13 07:46:44','http://www.doh.gov.za/docs/contracts/2011/hp02_2011al.pdf');
INSERT INTO registrations_source VALUES(11,'RSA Tender - HP04-2012ONC','2012-12-13 09:16:29','http://www.doh.gov.za/docs/contracts/2012/hp04-2012onc1.pdf');
INSERT INTO registrations_source VALUES(12,'RSA Tender - HP06_2012SVP','2012-12-13 09:25:50','http://www.doh.gov.za/docs/contracts/2012/hp06_2012svp.pdf');
INSERT INTO registrations_source VALUES(13,'RSA Tender - HP13-2013ARV','2012-12-14 07:16:59','http://www.doh.gov.za/docs/contracts/2012/hp13_2o13arv.pdf');
INSERT INTO registrations_source VALUES(14,'RSA Tender - HP03-2011FP','2012-12-14 07:42:40','http://www.doh.gov.za/docs/contracts/2011/hp03-2011fp.pdf');
INSERT INTO registrations_source VALUES(15,'RSA Tender - HP12-2012LIQ','2012-12-14 07:59:21','http://www.doh.gov.za/docs/contracts/2012/hp12_2012liq.pdf');
INSERT INTO registrations_source VALUES(16,'RSA Tender - HP01-2011TB','2012-12-14 08:09:50','http://www.doh.gov.za/docs/contracts/2011/hp01-2011tb.pdf');
INSERT INTO registrations_source VALUES(17,'RSA Tender - HP07-2012DAI','2012-12-14 08:13:47','http://www.doh.gov.za/docs/contracts/2012/HP07-2012.pdf');
INSERT INTO registrations_source VALUES(18,'RSA Tender - HP10-2012BIO','2012-12-14 08:21:36','http://www.doh.gov.za/docs/contracts/2012/hp010_2012bio.pdf');
INSERT INTO registrations_source VALUES(21,'PMA - 2009','2013-01-10 10:50:09',NULL);
INSERT INTO registrations_source VALUES(22,'HP12-2012LQ/01','2013-03-04 08:21:31','http://www.doh.gov.za/docs/contracts/2013/hp12_2012lq_01.pdf');
INSERT INTO registrations_source VALUES(23,'HP11-2012LVP','2013-03-04 08:23:03','http://www.doh.gov.za/docs/contracts/2012/hp11_2012lvp.pdf');
INSERT INTO registrations_source VALUES(24,'HP09-2012SD/01','2013-03-04 08:23:54','http://www.doh.gov.za/docs/contracts/2012/hp09-2012SD-01.pdf');
INSERT INTO registrations_source VALUES(25,'HP092012SD/01','2013-03-04 08:29:39','http://www.doh.gov.za/docs/contracts/2012/hp09-2012SD-01.pdf');
INSERT INTO registrations_source VALUES(26,'HP082012SSP/01','2013-03-04 08:51:44','http://www.doh.gov.za/docs/contracts/2012/HP08-0112122012_SCC.pdf');
INSERT INTO registrations_source VALUES(27,'HP07-2012DAI/01','2013-03-04 08:52:31','http://www.doh.gov.za/docs/contracts/2012/hp07-2012dal1.pdf');
INSERT INTO registrations_source VALUES(28,'HP06-2012SVP/01','2013-03-04 08:53:17','http://www.doh.gov.za/docs/contracts/2012/ho06_2012svp01.pdf');
INSERT INTO registrations_source VALUES(29,'HP05-2012DI/1','2013-03-04 08:53:53','http://www.doh.gov.za/docs/contracts/2013/hp05_2012di_01.pdf');
INSERT INTO registrations_source VALUES(30,'HP05-2012DI','2013-03-04 08:54:13','http://www.doh.gov.za/docs/contracts/2012/HP05-2012DI_Web.pdf');
INSERT INTO registrations_source VALUES(31,'HP04-2012ONC/01','2013-03-04 08:55:00','http://www.doh.gov.za/docs/contracts/2012/hp04-2012onc01.pdf');
INSERT INTO registrations_source VALUES(32,'HP02/2011Al/04','2013-03-04 08:55:41','http://www.doh.gov.za/docs/contracts/2012/HP2-2011AI_04.pdf');
INSERT INTO registrations_source VALUES(33,'HP-02-2011AI/02','2013-03-04 09:42:58','http://www.doh.gov.za/docs/contracts/2012/hp022012ai02.pdf');
INSERT INTO registrations_source VALUES(34,'HP02-2011AI/01','2013-03-04 09:44:37','http://www.doh.gov.za/docs/contracts/2012/HP02-2011AI.pdf');
INSERT INTO registrations_source VALUES(35,'HP02-2011AI','2013-03-04 09:45:30','http://www.doh.gov.za/docs/contracts/2011/hp02_2011al.pdf');
INSERT INTO registrations_source VALUES(36,'HP01-2011TB/01','2013-03-04 09:48:17','http://www.doh.gov.za/docs/contracts/2012/hp01-2011tb_.pdf');
INSERT INTO registrations_source VALUES(37,'HM01-2012CNDM','2013-03-04 09:50:01','http://www.doh.gov.za/docs/contracts/2012/HM01-2012.pdf');
INSERT INTO registrations_source VALUES(38,'Concurso Publico No 15/OE -MED/012/No_','2013-05-15 20:44:36','https://www.box.com/s/x9cjxivu40n5nrzgamvc');
INSERT INTO registrations_source VALUES(39,'MSD - June 2013','2013-06-07 09:39:06','');
INSERT INTO registrations_source VALUES(40,'Essential Medicine List - May 2013','2013-06-08 06:26:04','');
INSERT INTO registrations_source VALUES(41,' RECEIPTS 2012 2013.xlsx (CMST)','2013-06-18 03:02:46','');
INSERT INTO registrations_source VALUES(42,'Tanzanian Visit - 6 June 2013','2013-06-18 04:07:49','');
INSERT INTO registrations_source VALUES(43,'Email exchange with Annie Zulu','2013-06-28 05:00:38','https://mail.google.com/mail/u/1/?shva=1#search/from%3Aannie.zulu%40medstore.co.zm/13f56f85a582c371');
INSERT INTO registrations_source VALUES(44,'MSH 2012','2013-07-03 05:21:02','http://erc.msh.org/dmpguide/index.cfm?search_cat=yes&display=yes&module=dmp&language=english&year=2012');
INSERT INTO registrations_source VALUES(45,'Malawi Submission - July 2013','2013-07-09 07:43:48','');
INSERT INTO registrations_source VALUES(46,'Lesotho Awards - 2013','2013-09-08 16:52:10','');
INSERT INTO registrations_source VALUES(47,'Lesotho ARV Awards - 2012','2013-09-12 20:49:47','');
INSERT INTO registrations_source VALUES(50,'Seychelles Report - 16092013','2013-09-19 02:06:23','');
INSERT INTO registrations_source VALUES(51,'October Mission','2013-10-23 04:24:21','');
INSERT INTO registrations_source VALUES(52,'DRC January 2014 Mission','2014-01-14 05:40:45','');
INSERT INTO registrations_source VALUES(53,'Swaziland February Submission','2014-02-21 10:45:31','');
CREATE TABLE "registrations_supplier" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(64) NOT NULL,
    "address" text,
    "country_id" integer REFERENCES "registrations_country" ("id"),
    "manufacturer_id" integer REFERENCES "registrations_manufacturer" ("id"),
    "website" varchar(200),
    "contact" varchar(64),
    "phone" varchar(16),
    "altphone" varchar(16),
    "fax" varchar(16),
    "email" varchar(75),
    "altemail" varchar(75),
    "authorized" bool NOT NULL
);
INSERT INTO registrations_supplier VALUES(1,'Cipla Limited','MUMBAI CENTRAL
400008
',1,1,'','Sandeep Somani/Urvashi Joshi','','','','','',1);
INSERT INTO registrations_supplier VALUES(2,'ICON/IPPF','',2,2,'','Robert Afanou','','',+442079398,'','',1);
INSERT INTO registrations_supplier VALUES(3,'Glaxo Smithkline South Africa Pty Ltd','Flushing Meadows Building
The Campus
57 Sloane Street
Bryanston 2021
South Africa',3,3,'http://www.gsk.com/worldwide/south-africa.html','Vanessa Naick/Rika Geustyn',+27117456000,'',+27117457000,'','',1);
INSERT INTO registrations_supplier VALUES(4,'Novo Nordisk (Pty) Ltd','',3,4,'','Gillian Docherty/Lynda Coppin','','','+27 113722155','','',1);
INSERT INTO registrations_supplier VALUES(5,'Adcock Ingram','1 New Road, (c/o New Road & 7th Street), 
Midrand, 
South Africa',3,5,'http://www.adcock.co.za/','Faadhila Choonara','+27117099300 ','',+27865530607,'','',1);
INSERT INTO registrations_supplier VALUES(6,'F. Hoffmann- La Roche','',4,6,'','Youdish Sookram','','',+2304677586,'','',1);
INSERT INTO registrations_supplier VALUES(7,'Medochemie Ltd','',5,7,'','Georgina Ioannou/Phaedon Ellinas','','',+35725560863,'','',1);
INSERT INTO registrations_supplier VALUES(8,'International Healthcare Distributer','',3,8,'','Christel Lupton/Lynda Coppin','','',+27113722155,'','',1);
INSERT INTO registrations_supplier VALUES(9,'Serum Institute','',1,9,'','Sandeep Mulay','',+912026993444,'','','',1);
INSERT INTO registrations_supplier VALUES(10,'Wockhardt Ltd','',1,10,'','Saffala Belsare/Akshay Desai','','',+91226527853,'','',1);
INSERT INTO registrations_supplier VALUES(11,'Fresenius Kabi','',1,11,'','Sk.Lohia/Manoj Dube','','',+912226135406,'','',1);
INSERT INTO registrations_supplier VALUES(12,'Quayle Dental Ltd','',2,12,'','Jennie Aspey/Toni Fruen','','',+441903205676,'','',1);
INSERT INTO registrations_supplier VALUES(13,'Neon Lab Ltd','',1,13,'','Ismet Sahebally','','',+912226873502,'','',1);
INSERT INTO registrations_supplier VALUES(14,'Bayer Healthcare-Middle Africa','',6,14,'','Bernard Matheka','','',+254208560935,'','',1);
INSERT INTO registrations_supplier VALUES(15,'Aspen Pharmacare','Healthcare Office Park
Woodlands Drive
Woodmead',3,15,'http://www.aspenpharma.com/default.aspx?pid=9&stepid=1&oid=129','Vanessa Kab/Mmakai Motaung','',+27315808624,+27112396001,'rverster@aspenpharma.com','',1);
INSERT INTO registrations_supplier VALUES(16,'Genpharma','',7,16,'','Jayant Y. Palnikar','','','','','',1);
INSERT INTO registrations_supplier VALUES(17,'Boehringer Ingelheim','',3,17,'','Steven Honeyborne','','',+2786504858,'','',1);
INSERT INTO registrations_supplier VALUES(18,'Sandoz (Pty) Ltd','PO Box 154
Isando
1600',3,18,'http://www.sandoz.com/','Itumeleng Mathe',+27119299002,'',+27113945935,'itumeleng.mathe@sandoz.com','',0);
INSERT INTO registrations_supplier VALUES(19,'ARI HEALTHCARE PVT LTD','',1,19,'','Devendra Jaroliya','','',+912046747481,'','',0);
INSERT INTO registrations_supplier VALUES(20,'Franco India Phar PVT LTD','',1,20,'','N.K.Banerjee','',+912224973628,'','','',1);
INSERT INTO registrations_supplier VALUES(22,'WorldMedTrade Ltd','',8,NULL,'','Dr Anna Renzetti','','',+39058496051,'','',0);
INSERT INTO registrations_supplier VALUES(23,'Medical Trading Int Ltd','',9,NULL,'','Annette Vikash','','',+2302106364,'','',0);
INSERT INTO registrations_supplier VALUES(24,'N. Chimanlal Enterprises','',1,NULL,'','Ashish','','',+912222050220,'','',0);
INSERT INTO registrations_supplier VALUES(25,'IDA Foundation','PO BOX 37348,
1030 AH AMSTERDAM
',10,NULL,'','Roberta Heig/Joanna Van Vilet',+31204037178,'',+31204037179,'info@idahivaidsgroup.org','',0);
INSERT INTO registrations_supplier VALUES(26,'Pharmacie Nouvelle Ltd','',9,NULL,'','Dominique Parfait','','',+2302064501,'','',0);
INSERT INTO registrations_supplier VALUES(27,'Satelite Pharm','',1,NULL,'','H.S.Nanda','','','','','',0);
INSERT INTO registrations_supplier VALUES(28,'Heterodrugs H/C','H.NR.8-3-166/7/1 ERRAGADDA
HYDERABAD-500018
INDIA
',1,NULL,'','Prashant','','','','','',0);
INSERT INTO registrations_supplier VALUES(29,'MTC','',12,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(30,'Macleods Pharmaceuticals Limited','Atlanta Arcade, Marol Church Road, 
Andheri (East), Mumbai - 400059, INDIA.',1,21,'http://www.macleodspharma.com/','',+912266762800,'',+912229256599,'exports@macleodspharma.com','',1);
INSERT INTO registrations_supplier VALUES(31,'MicroLab','',12,22,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(32,'Meditab','',12,23,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(33,'Unknown','',12,24,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(36,'Gedeon Richter','',13,27,'','',+3614314000,+3612606650,'','','',0);
INSERT INTO registrations_supplier VALUES(39,'Amstelfarma','P.O. Box 38
2100 AA Heemstede
The Netherlands',10,28,'http://www.amstelfarma.nl/','',+31235484040,'',+31235472522,'info@amstelfarma.nl','',1);
INSERT INTO registrations_supplier VALUES(41,'Bristol-Myers Squibb','Corporate Headquarters
345 Park Avenue
New York, New York
10154',NULL,29,'http://www.bms.com/','','','','','','',0);
INSERT INTO registrations_supplier VALUES(42,'Gland Pharma Limited','6-3-865/1/2, Flat No 201,
Green Land Apartments,
Ameerpet, Hyderabad - 500 016',1,30,'http://www.glandpharma.com/','',+914066621010,'',+914023402229,'gland@glandpharma.com','',1);
INSERT INTO registrations_supplier VALUES(43,'GlaxoSmithKline','',1,31,'','','','','','','',1);
INSERT INTO registrations_supplier VALUES(44,'Delta Pharmaceuticals Pty Ltd','Plot 68,
Unit 8, 
Gaborone International Commerce Park,
Gaborone, 
Botswana',15,NULL,'','',+2673919433,+2673905211,+2673922740,'deltpharm@it.bw','',0);
INSERT INTO registrations_supplier VALUES(45,'Torrent Pharmaceuticals Ltd','Torrent House Off
Ashram Road
Ahmedabad
380 009',1,32,'http://torrent-pharma.com/','Mr. M.S Kurtkoti',+91796585090,'',+91796589269,'int.ops@torrent-pharma.com','',0);
INSERT INTO registrations_supplier VALUES(46,'Remedica Ltd','',5,33,'','Antonis Pattchis',+35725553000,'',+35725390192,'remedica@cytanet.com.cy','',1);
INSERT INTO registrations_supplier VALUES(47,'Varichem Pharmaceuticals Pty Ltd','194 Gleneagles Road                                                                                                                                                                                      P O Box ST 611
',16,34,'','Mr A T Chimuka',' +26346201816','',+2634620180,'varichem@mweb.co.zw','varichem@ecoweb.co.zw',1);
INSERT INTO registrations_supplier VALUES(48,'Premier Pharma Trade Pty Ltd','Company address
Plot 22053 Unit6, Kgomokasitwa Rd
Gaborone West I/Est, P.O.Box 401777
Gaborone',15,35,'','Mr.Charles Lee',+2673900603,+2673900606,+2673900614,'','',1);
INSERT INTO registrations_supplier VALUES(49,'Medix Care (Pty) Ltd','Dhami,
Samaj Industrial complex, 
Andheri East',1,36,'','',+912226875366,'',+912226875369,'export@neogroup.com','',1);
INSERT INTO registrations_supplier VALUES(50,'Karnakata Antibiotics and Pharmaceuticals Limited','Dr Rajkumar Road
1st Block
Rajajinagar',1,37,'','M V Pathak','+91(080) 3322123','+91(080) 3322868','+91(080)3321350','Kaplim@vsnl.net','Kaimal@Kaplinndia.com',1);
INSERT INTO registrations_supplier VALUES(51,'MissionPharma','Vassingeroegvej 6
DK-3540
Lynge',18,NULL,'http://www.missionpharma.com/','',+4548163200,'','','bb@missionpharma.com','',0);
INSERT INTO registrations_supplier VALUES(52,'Fine Pharmaceuticals Pty Ltd','Plot 17979 
Ramogononwane Rd 
Gaborone 
Botswana',15,NULL,'','',+2673922673,'',+2673164889,'','',0);
INSERT INTO registrations_supplier VALUES(53,'Pharma Futura  Pty Ltd','Plot 22053
Unit 3
Gaborone West Industrial
Gaborone',15,NULL,'','',+2673934125,'','','','',0);
INSERT INTO registrations_supplier VALUES(54,'Cipla Medpro (Pty) Ltd','P.O. Box 1096
Durbanville
7551
South Africa',3,38,'http://www.ciplamedpro.co.za/','Christaan Aukamp',+27219140520,+27219175620,+27219154038,'nahum@ciplamedpro.co.za','',1);
INSERT INTO registrations_supplier VALUES(55,'Medswana Pty Ltd','Plot 50360 Machel Drive
Showground
Gaborone',15,NULL,'http://www.medswana.co.bw/','',+2673959930,+2673957911,'','','',0);
INSERT INTO registrations_supplier VALUES(56,'Glenmark Pharmaceuticals','Chakala, Off Western Express Highway
Andheri (E),
Mumbai 
400099',1,39,'http://www.glenmarkpharma.com/','',+912240189999,'',+912240189990,'africa@glenmarkpharma.com','',0);
INSERT INTO registrations_supplier VALUES(57,'Apotex','Apotex Inc.
150 Signet Drive
Toronto, Ontario
M9L 1T9
Canada',NULL,40,'http://www.apotex.com/','',+18002684623,'',+18006099444,'','',1);
INSERT INTO registrations_supplier VALUES(58,'Mylan Laboratories Limited','Plot No 564/A/22, 
Road No 92, 
Jubilee Hills, 
Hyderabad — 500034',1,41,'http://mylanlabs.in/','',+914030866666,+914023550543,+914030866699,'mylan.india@mylan.in','',1);
INSERT INTO registrations_supplier VALUES(59,'Abbott GmbH & Co','AbbVie Deutschland GmbH & Co. KG

Max-Planck-Ring 2a

65205 Wiesbaden, Germany',NULL,42,'http://www.abbott.com/','',+496122580,'',+496122581244,'','',1);
INSERT INTO registrations_supplier VALUES(60,'Abbott Laboratories (Pty) Ltd','149 Samuel Ens. Road, 
2013 
Aeroton

PO Box 1616, 
2000 
Johannesburg',3,NULL,'','',+27114947000,'','+2711494 7474','','',0);
INSERT INTO registrations_supplier VALUES(61,'Adcock Ingram Criticalcare Pty Ltd','No.1 Sabax Road, 
Aeroton 
South Africa',3,43,'http://www.adcock.co.za/','',+27114948000,'',+27114941911,'','',1);
INSERT INTO registrations_supplier VALUES(62,'Martindale Pharmaceuticals','Martindale Pharma
Hubert Road
Brentwood
Essex CM14 4JY
United Kingdom',2,44,'http://www.martindalepharma.co.uk/','',+441277266600,+441277848976,'','connect@martindalepharma.co.uk','',1);
INSERT INTO registrations_supplier VALUES(64,'Pfeizer Laboratories Pty Ltd','85 Bute Lane 
Sandton 
2146',3,45,'http://www.pfizer.co.za/','','','','','','',1);
INSERT INTO registrations_supplier VALUES(65,'Bodene Pty Ltd','6 Gibaud Road
Korsten
Port Elizabeth 6020
',3,46,'','Avril Nolte',+27414031600,'',+27414536628,'avril.nolte@fresenius-kabi.com','',1);
INSERT INTO registrations_supplier VALUES(66,'Hovid Bhd','121, Jalan Tunku Abdul Rahman (Jalan Kuala Kangsar)
30010
Ipoh, Perak
Malaysia
',17,47,'','Mr.Charles Lee','+60 (5) 5060919 ','','+60 (5) 5061215 ','info@hovid.com.','',1);
INSERT INTO registrations_supplier VALUES(67,'Mark Biosciences','Hariyala
Kheda
387411
India
',1,48,'','','','','','','',1);
INSERT INTO registrations_supplier VALUES(68,'Astrazeneca Pharmaceuticals Pty Ltd ','',3,49,'','','','','','','',1);
INSERT INTO registrations_supplier VALUES(69,'Mirren (Pty) Ltd','18 Golden Drive
MOREHILL 1501
South Africa',3,50,'http://www.mirren.co.za/','P.J. Stals',+27114254026,'','+27114254009 ','labs@mirren.co.za','',1);
INSERT INTO registrations_supplier VALUES(70,'FDC Ltd','',1,51,'','','','','','','',1);
INSERT INTO registrations_supplier VALUES(71,'Morningside Pharmaceuticals','Imperial House
St. Nicholas Circle
Leicester
LEI 4LF
UK
',2,52,'http://www.morningsidepharm.com/','Dr Nik Kotecha','+441509217705 ','',+441509217706,'info@morningsidepharm.com','',1);
INSERT INTO registrations_supplier VALUES(72,'Novartis South Africa (Pty) Ltd','72-74 Steel Road
Spartan
Kempton Park
Gauteng
1619',3,53,'http://www.novartis.co.za/','Mrs A.M. van der Merwe',+27119292231,+27119292424,+27119292264,'mark.fourie@pharma.novartis.com','',1);
INSERT INTO registrations_supplier VALUES(73,'Alembic Limited','Alembic Road
Vadodara
390 003
Gujarat
INDIA',1,54,'http://www.alembic-india.com/','',+91265228,'+91265228 ','+91265228 ','infoal@alembic.co.in','',1);
INSERT INTO registrations_supplier VALUES(74,'Biotech Laboratories (Pty) Ltd','Building 17 MIFA Business Park 
399 George Road 
Randjespark 
Midrand 
1685
South Africa',3,55,'http://www.biotech.co.za/','S K Maptela',+27118483050,'',+27118433065,'duduzile@biotechlabs.co.za','info@biotech.co.za',1);
INSERT INTO registrations_supplier VALUES(75,'Lupin Limited','159 CST Road, Kalina, Santacruz (E)
Mumbai 400 098. India',1,56,'http://www.lupinworld.com/','',+912266402323,'',+912266402051,'corporateoffice@lupinworld.com','',1);
INSERT INTO registrations_supplier VALUES(76,'Sanofi-Aventis Pty Ltd','sanofi-aventis House, 
2 Bond Street, 
Grand Central Ext. 1, 
Midrand 1685',3,57,'http://www.sanofi-aventis.co.za/','',+27112563700,'',+27118475099,'','',1);
INSERT INTO registrations_supplier VALUES(77,'Galentic Pharma (India) Pvt. Ltd ','Samruddhi Venture Park,
4th Floor, MIDC Central Road,
Andheri ( East ), Mumbai - 400 093.',1,58,'http://www.galentic.com/','',+912242212400,'',+912228382238,'galentic@vsnl.com','',1);
INSERT INTO registrations_supplier VALUES(78,'Matrix Laboratories Limited','Mylan Laboratories Limited 
Plot No 564/A/22, 
Road No 92, 
Jubilee Hills, 
Hyderabad — 500034
',1,59,'http://mylanlabs.in/','Rajiv Malik (Managing Director) ','+914030866666 ',+914030866699,'','prashanth.deshpande@matrixlabsindia.com','mylan.india@mylan.in',1);
INSERT INTO registrations_supplier VALUES(79,'Hetero Drugs Limited','HETERO DRUGS LIMITED
7-2-A2, HETERO CORPORATE
INDUSTRIAL ESTATES. SANATH NAGAR
HYDERABAD – 500 018. A.P. INDIA
',1,60,'http://www.heterodrugs.com/','',+914023704923,+914023707171,+914023714250,'bhavesh@heterodrugs.com','contact@heterodrugs.com',1);
INSERT INTO registrations_supplier VALUES(80,'Nutrition (Pty) Ltd','',21,61,'','','','','','','',1);
INSERT INTO registrations_supplier VALUES(81,'Zinplex','501 Mendelssohn Street
Constantia Park
0181
South Africa
',3,62,'http://www.zinplex.co.za/','',+27129981280,'',+27129933916,'info@zinplex.co.za','',1);
INSERT INTO registrations_supplier VALUES(82,'Mediland Healthcare Distributors (Pty) Ltd','Gaborone International Commerce Park, 
Gaborone, Botswana. ',15,NULL,'http://www.medilandhealthcare.com/','',+2673902786,+2673902813,+2673902772,'info@medilandhealthcare.com','',0);
INSERT INTO registrations_supplier VALUES(83,'David Pharmaceuticals (Pty) Ltd','Plot 4890 Tlokweng
Selokwana Industrial Site
Gaborone',15,NULL,'','',+2673936892,'','','','',0);
INSERT INTO registrations_supplier VALUES(84,'UNICEF','Pakhus 48 - Sundkaj 9, 1.
2100 København Ø',18,NULL,'http://www.unicef.dk/','','+35273800 ','',+35273810,'unicefdk@unicef.dk','',0);
INSERT INTO registrations_supplier VALUES(85,'Sanofi Synthe Lab','54, rue La Boétie 
75008 Paris 
France
',21,63,'http://en.sanofi.com/','',+33153774000,'','','','',1);
INSERT INTO registrations_supplier VALUES(86,'Adock Ingram Healthcare (Pty) Ltd','Private Bag X69
Bryanston
2012',3,NULL,'http://www.adcock.com/','Louis Fourie',+27116350671,+27113153139,+27865530671,'louis.fourie@adcock.com','',0);
INSERT INTO registrations_supplier VALUES(87,'Ranbaxy SA (Pty) Ltd','PO Box 10458
Centurion
0046',3,NULL,'http://www.ranbaxy.com/','Alta Joynt',+27126432000,'',+27866627031,'alta.joynt@ranbaxy.com','',0);
INSERT INTO registrations_supplier VALUES(89,'Gulf Drug Company (Pty) Ltd','PO Box 1523
Durban
4000',3,NULL,'http://www.gulfdrug.co.za/','Kevin Moonsamy',+27315388700,'',+27315022379,'kevinm@gulfdrug.co.za','',0);
INSERT INTO registrations_supplier VALUES(90,'Dezzo Trading 392','PO Box 725
Lawley
1824',3,NULL,'http://www.dezzopharma.co.za/','Chetan Hira',+27118572090,+27118572091,+27118572092,'chetan@dezzopharma.co.za','',0);
INSERT INTO registrations_supplier VALUES(91,'Pharmachem Pharmaceuticals (Pty) Ltd','Private Bag X12
Pretoria West
0017',3,NULL,'http://www.pharmachem.co.za/','Omar Matthews',+27123277754,'',+27866747333,'omar@pharmchem.co.za','',0);
INSERT INTO registrations_supplier VALUES(92,'Pharmacare Limited','PO Box 4002
Port Elizabeth
6014',3,NULL,'http://www.aspenpharma.com/','Ronny Boschmans',+27414072260,'',+27114093223,'ronnyb@aspenpharma.com','',0);
INSERT INTO registrations_supplier VALUES(93,'Medivision (Pty) Ltd','PO Box 777
Kelvin
2054',3,NULL,'','Sathvir Singh',+27113949134,'',+27866113319,'sathvir@avakash.net','',0);
INSERT INTO registrations_supplier VALUES(94,'Winthrop Pharmaceuticals (Pty) Ltd','Private Bag X207
Midrand 1683',3,NULL,'','Mary Termets',+27112563700,'',+27112563917,'mary.termets@sanofi.com','',0);
INSERT INTO registrations_supplier VALUES(95,'Austell Laboratories (Pty) Ltd','PO Box 1110
Johannesburg
2025',3,NULL,'http://www.ahcare.com/','Naeema Khan',+27116111400,'',+27866085740,'sgani@ahcare.com','',0);
INSERT INTO registrations_supplier VALUES(96,'Dr Reddy''s Lab (Pty) Ltd','PO Box 784746
Sandton City
Sandton
2146',3,NULL,'http://www.drreddys.co.za/','Shirley Holmes',+27113242100,+27113242144,+27113881262,'shirley@drreddys.co.za','',0);
INSERT INTO registrations_supplier VALUES(97,'Pharmadyne Healthcare (Pty) Ltd','PO Box 97514
Wespark
0146',3,NULL,'http://www.pharmachem.co.za/','Omar Matthews',+27123277915,'',+27866856529,'omar@pharmachem.co.za','',0);
INSERT INTO registrations_supplier VALUES(98,'Pharmachemie (Pty) Ltd','PO Box 1590
Ruimsig
1732',3,NULL,'http://www.pharmachemie.co.za/','MR V Maharj',+27119582168,'',+27865623400,'vikash.maharaj@pharmachemie.co.za','',0);
INSERT INTO registrations_supplier VALUES(99,'Sonke Pharmaceuticals (Pty) Ltd','PO Box 8927
Centurion
0046',3,NULL,'http://www.sonkepharmaceuticals.co.za/','Sotse Segoneco',+27216432070,+27216432071,+27126432079,'sotses@sonkepharmaceuticals.co.za','',0);
INSERT INTO registrations_supplier VALUES(100,'Specpharm Holdings (Pty) Ltd','PO Box 651
Halfway House
1685',3,NULL,'http://www.specpharm.co.za/','Jaidev Maharaj',+27116520405,'',+27862113266,'jmaharaj@specpharm.co.za','',0);
INSERT INTO registrations_supplier VALUES(101,'Fresenius Kabi South Africa (Pty) Ltd','PO Box 4156
Halfway House
1685',3,NULL,'http://www.fresenius-kabi.com/','Albertha Nel',+27115450000,'','','albertha.nel@fresenius-kabi.com','',0);
INSERT INTO registrations_supplier VALUES(102,'Actor Pharma (Pty) Ltd','PO Box 7408
Halfway House
1685',3,NULL,'http://www.actorpharma.co.za/','Mr Malcolm Blane',+27113123812,'',+27113127814,'malcolmb@actorpharma.co.za','',0);
INSERT INTO registrations_supplier VALUES(103,'Barrs Pharmaceutical Industries (Pty) Ltd','PO Box 7348
Roggebaai
8012',3,NULL,'http://www.barrs.co.za/','Graham G. F. Michael',+27215316601,'',+27215316729,'graham@barrs.co.za','',0);
INSERT INTO registrations_supplier VALUES(104,'Resmed Healthcare cc','PO Box 65409
Durban
4090',3,NULL,'http://www.resmed.co.za/','Quinton Suash Singh',+27315777258,'',+27315777182,'quinton@resmed.co.za','',0);
INSERT INTO registrations_supplier VALUES(105,'National Bioproducts Institute','Private Bag X9043
Pinetown
3600',3,NULL,'http://www.nbisa.org.za/','Andrea Muller',+27317146700,'',+27317085614,'andrea.muller@nbisa.org.za','',0);
INSERT INTO registrations_supplier VALUES(106,'Ranbaxy','',NULL,64,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(107,'Bio Nova Pharma','C-66/1, Okhla Industrial Area, Phase - II
New Delhi
110020
India',1,65,'http://bionovapharma.net/','Mr Girish Shahi',+911126389540,+911126387473,+911126387473,'gshahi@bionovapharma.net','',1);
INSERT INTO registrations_supplier VALUES(109,'BE-TABS Pharmaceuticals (Pty) Ltd','P O Box 43486
Industria
2042',3,NULL,'http://www.biotechlabs.co.za/','Duduzile Mofolo',+27118483050,'',+27118483065,'duduzile@biotechlabs.co.za','',0);
INSERT INTO registrations_supplier VALUES(110,'Zinplex Marketing CC','P O Box 678
Garsfontein
Pretoria
0042',3,NULL,'','Herman Fourie',+27129981280,'',+27129933916,'zinplex@yahoo.com','',0);
INSERT INTO registrations_supplier VALUES(111,'Generics','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(112,'Sismed','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(113,'Afri Farmácia','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(114,'Medimport','',23,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(115,'Mediafri','',23,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(117,'Pharmanova','',23,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(118,'Medis','',23,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(119,'Alliance Pharmaceutical LTD','1ST FLOOR ELECTRA HOUSE,
CAIRO ROAD,
LUSAKA',30,NULL,'','',+260211225667,'',+260211225621,'alliancepharma@zamnet.zm','',0);
INSERT INTO registrations_supplier VALUES(120,'Baxy Pharmaceuticals LTD','PLOT 7251
NJOLWE ROAD
INDUSTRIAL AREA
P O BOX 36326
LUSAKA
10101
',NULL,NULL,'','',287733,'',222655,'','',0);
INSERT INTO registrations_supplier VALUES(121,'CLINTON FOUNDATION HIV/AIDS IN','225 WATER STREET
MA
O2169 
QUINCY
USA
',14,NULL,'','TOBY DOUTHWRIGHT','','','','','',0);
INSERT INTO registrations_supplier VALUES(122,'BAXY PHARMACEUTICALS MANF.CO','PLOT 5152/5153
ZAMBIA ROAD
NDOLA
',NULL,NULL,'','',650690,'','','enquirie@baxypharmaceuticals.com','',0);
INSERT INTO registrations_supplier VALUES(123,'Division Pharmaceuticals LTD','P O BOX 39189
PLOT 13950, LUMUMBA ROAD
LUSAKA, ZAMBIA
',30,NULL,'','',+26095751616,'','','','',0);
INSERT INTO registrations_supplier VALUES(124,'International Drug Company','P O BOX 31343
FREEDOMWAY SOUTHEND
LUSAKA
10101

ZAMBIA
',30,NULL,'','',+260211234487,'',+260211232422,'','',0);
INSERT INTO registrations_supplier VALUES(125,'M/S. Naprod Life Sciences PVT.','304 TOWN CENTRE
ANDHERI - KURLA ROAD,
ANDHERI (EAST) MUMBAI-400 059.
',1,NULL,'','',+912240939000,'',+912240939060,'','',0);
INSERT INTO registrations_supplier VALUES(126,'Pharmanova (Zambia) LTD','MOOOLA ROAD
P O BOX 35722
LUSAKA
ZAMBIA
10101
',30,NULL,'','',+260211286926,'',+260211287923,'phnanova@zamnet.zm','',0);
INSERT INTO registrations_supplier VALUES(127,'John Snow Inc','LUSAKA, ZAMBIA
',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(128,'Melcome Pharmaceuticals LTD','PLOT # 7207, KACHIDZA RD
LUSAKA
10101
',30,NULL,'','',+260211286162,'',+260211286159,'melcomep@zamnet.zm','',0);
INSERT INTO registrations_supplier VALUES(129,'Pharma Plus LTD','P O BOX 32315
LUSAKA
',30,NULL,'','',+260211222637,'',+260211221819,'','',0);
INSERT INTO registrations_supplier VALUES(130,'Phillips Pharmaceutical (Z) LTD','P.O.BOX 36017
PLOT 7236, NJOLWE ROAD
LUSAKA
',30,NULL,'','',+260211286037,+260211286283,'','phillipszambi@iconnect.zm','',0);
INSERT INTO registrations_supplier VALUES(131,'Prime Pharmaceuticals LTD','1 FLOOR CUSA HOUSE
STAND 628 CAIRO ROAD
LUSAKA
10101
',30,NULL,'','',+26011222070,+2601226852,'','','',0);
INSERT INTO registrations_supplier VALUES(132,'Partners for Supply Chain Management','1616 NFT MYER DRIVE
12 TH FLOOR
ARLINGTON,VIRGINIA
UNITED STATES OF AMERICA
',14,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(133,'Savers Pharmaceuticals LTD','PLOT NO 10549
OFF LUMUMBA ROAD
LIGHT INDUSTRIAL AREA
LUSAKA
',30,NULL,'','',+260211225978,'',+260211226375,'','',0);
INSERT INTO registrations_supplier VALUES(134,'Sterlin Medical Diagnostics','P O BOX 30713
PLOT 695 CHA CHA CHA ROAD
LUSAKA
ZAMBIA
10101
',30,NULL,'','',+260211238182,'',+26021224020,'mdsoffice@sterelin.co.zm','',0);
INSERT INTO registrations_supplier VALUES(135,'UNDP/Global Funds Project/GFR8','ALICK NHKATA ROAD
LUSAKA
10101
',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(136,'UNDP/Global Fund Project R4','ALICK NKHATA ROAD
LUSAKA
10101
',30,NULL,'','','+ 260211250800','','','','',0);
INSERT INTO registrations_supplier VALUES(137,'UNDP/Global Funds Project/GFR7','ALICK NKHATA ROAD
LUSAKA
10101
',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(138,'UNDP/Global Fund Project/GF R4','ALICK NKHATA ROAD
LUSAKA
10101
',30,NULL,'','',+260211250800,'','','','',0);
INSERT INTO registrations_supplier VALUES(139,'United Nations Child Education Fund','X49802
Unicef Plads
Freeport
DK 2100 Copenhagen
',18,NULL,'','',3017749006,3017749006,'','ijshorr@shorrproductions.com','',0);
INSERT INTO registrations_supplier VALUES(140,'Unimed International Limited','13 POMEROY DRIVE,
OADBY INDUSTRIAL ESTATE,
LEICESTER LE2 5NE
UNITED KINGDOM
',2,NULL,'','',+441162729955,'',+441162729956,'mail@unimed.eu.com','',0);
INSERT INTO registrations_supplier VALUES(141,'USAID/Deliver Project','1616 N.FORT MYMER DRIVE
ARLINGTON, VA 22209
USA
',14,NULL,'','',+260112261481,'',+260112266700,'','',0);
INSERT INTO registrations_supplier VALUES(142,'V.L Pharmaceutical Healthnet','PLOT NO. 58/1,CHA CHA CHA ROAD
P.O.BOX FW 99,
LUSAKA,
',30,NULL,'','',+2601220870,'','','','',0);
INSERT INTO registrations_supplier VALUES(143,'World Health Organisation','OFFICE OF THE WHO REP.
U.N. ANNEX BUILDING
PLOT 4609 CNR OF BEIT/ANDREW R
LUSAKA, ZAMBIA
',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(144,'Yash Pharmaceuticals LTD','P O BOX 34562
LUSAKA
',30,NULL,'','',+260211220876,'',+260211220256,'','',0);
INSERT INTO registrations_supplier VALUES(145,'Zamjam International LTD','P O BOX 30209, LUSAKA
ZAMBIA
',30,NULL,'','',+260211250540,+260096742285,'','zamjam@zamnet.zm','',0);
INSERT INTO registrations_supplier VALUES(146,'Stanley Tanzania LTD','P .O. Box 40385, 
Dar es Salaam',29,NULL,'','',+255222183175,'',+255222180311,'Stanley@bol.co.tz','',0);
INSERT INTO registrations_supplier VALUES(147,'Elys Chemicals Industries Ltd,','P.O.Box 40411 G.PO 00100, 
Nairobi,
Kenya',6,NULL,'','',+25420650503,'',+25420533452,'','',0);
INSERT INTO registrations_supplier VALUES(148,'Keko Pharmaceutical Industries Ltd,','P.O. Box 40164, 
Dar es Salaam,
Tanzania',29,NULL,'','',+255222866237,+255222866790,+255222115238,'','',0);
INSERT INTO registrations_supplier VALUES(149,'Astra Pharma (T) Ltd','P.O. Box 38388, 
Dar es Salaam,
Tanzania',29,NULL,'','',+255222182604,'',+255222181658,'','',0);
INSERT INTO registrations_supplier VALUES(150,'UNDP/Global Fund Project 7','ALICK NKHATA ROAD
LUSAKA
10101',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(151,'UNDP','ALICK NHKATA ROAD
LUSAKA
10101',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(152,'Vital Supplies Limited','P.O. Box 786,
Dar es Salaam,
Tanzania
',29,NULL,'','',+255222121487,+255222115239,+255222131188,'','',0);
INSERT INTO registrations_supplier VALUES(153,'Premiumway International','111 High street
Edgeware, MIDDX HA8 7DB,
United Kingdom',2,NULL,'','',+442082049966,'','','','',0);
INSERT INTO registrations_supplier VALUES(154,'UNFPA','',14,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(155,'World Wide Pharmaceuticals','P.O. Box 250,
Lilongwe,
Malawi
',22,NULL,'','',+2651725109,'','','','',0);
INSERT INTO registrations_supplier VALUES(156,'Unicef - Lilongwe','P.O. Box 30375, Martino Complex, Lilongwe 3, Area 40/31, Malawi
',22,NULL,'','',+2651770788,'',+2651773163,'','',0);
INSERT INTO registrations_supplier VALUES(157,'SADM  Pharmaceutical Ltd','P.O. Box 30804
Lilongwe 3,
Plot 29/188,Kanengo.
Malawi
',22,133,'http://www.sadm.mw/','','','','','','',0);
INSERT INTO registrations_supplier VALUES(158,'Intermed Pharmaceuticals','Box 956, Lilongwe',22,NULL,'http://www.intermed.com/','','','','','','',0);
INSERT INTO registrations_supplier VALUES(159,'Tata - Zambia','',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(161,'Pharmanova Ltd - Malawi','P.O Box 30073
Blantyre 3
Malawi.',22,NULL,'','',+26501878638,'',+26501878638,'kpanchal@globemw.net','',0);
INSERT INTO registrations_supplier VALUES(162,'Malawi Pharmacies','Limbe',22,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(163,'Medi World','',22,NULL,'http://www.mediworldin.com/','','','','','','',0);
INSERT INTO registrations_supplier VALUES(164,'Nirma - India','Nirma House
Ashram Road
Ahmedabad
Gujarat
380009
',1,NULL,'','',+792754656574,'','','','',0);
INSERT INTO registrations_supplier VALUES(165,'Astra Pharma - Malawi','P.O Box 30073
Limbe
Malawi
',NULL,NULL,'','',2651878896,'',2651878898,'','',0);
INSERT INTO registrations_supplier VALUES(166,'Pharmavet Ltd','P.O. Box 2037, 
Lilongwe,
Malawi',22,NULL,'','',+2651753386,'','','','',0);
INSERT INTO registrations_supplier VALUES(167,'Alkem Laboratories LTD','',1,114,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(168,'Sonali Pharmaceuticals','Plot 4/091 Area 4
Downs Road
Lilongwe',22,NULL,'','',+2651757284,'','','','',0);
INSERT INTO registrations_supplier VALUES(169,'Zedpharma Ltd','Plot Bc 1099

P.O. Box 1553,
Blantyre,
Malawi',22,NULL,'','',+2651879914,'','','','',0);
INSERT INTO registrations_supplier VALUES(170,'Famycare Ltd','',20,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(171,'Vital Healthcare Ltd','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(172,'Arubindo Pharmaceuticals','Plot # 2, Maitri Vihar,
Ameerpet,
Hyderabad - 500 038,
Andhra Pradesh, India.',1,NULL,'http://www.aurobindo.com/','',+9140667250,'',+9140237410,'info@aurobindo.com','',0);
INSERT INTO registrations_supplier VALUES(173,'Osaka Pharmaceuticals  Pvt Ltd','',22,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(174,'Narula Exports','NARULAS TOWER - 1, 25
CENTRAL MARKET
PUNJABI BAGH (WEST)
NEW DELHI 110026
INDIA',1,NULL,'http://www.narulaexports.com/','',+911145459999,'','','marketing@narulaexports.com','',0);
INSERT INTO registrations_supplier VALUES(175,'Sunrise Pharmaceuticals','',22,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(176,'Kentam Pharmaceuticals Ltd','',22,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(177,'Dawa Pharmaceticals Ltd','Box 16633-00620
Nairobi
',6,NULL,'','',+254208561554,'','','','',0);
INSERT INTO registrations_supplier VALUES(178,'Unichem - Malawi','Plot No Cc934 Limbe
Chichiri
Blantyre',22,NULL,'','',+2651675345,'','','','',0);
INSERT INTO registrations_supplier VALUES(179,'City Pharmacy Ltd','Masauko Chipembere Highway
Limbe',22,NULL,'','',+2651673333,'','','','',0);
INSERT INTO registrations_supplier VALUES(180,'Emles','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(181,'Global Fund','',12,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(182,'Novartis Pharma AG','Basel, Switzerland',4,NULL,'','Rachel Hinder',+41613248708,+41613248708,+41613242146,'rachel.hinder@novartis.com','',0);
INSERT INTO registrations_supplier VALUES(183,'Ajanta Pharma (India) Ltd','Ajanta Pharma (India) Ltd
Ajanta  House
Charkop, Kadvil (w)
Mumbai-400 067',1,NULL,'','N.H.Agrawal',+912228683625,+912228683625,+912228682848,'info@ajantapharma.com','',0);
INSERT INTO registrations_supplier VALUES(184,'UNDP/GFR10','',30,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(185,'Universal Corporation','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(186,'Trinity Pharma','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(187,'Pharma Marketing International','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(188,'Coral Laboratories','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(189,'Medicare Lesotho','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(190,'Troge Pharmaceutical','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(191,'Supre Latex','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(192,'Imres BP','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(193,'Aurobindo Pharma Ltd','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(194,'Hetero Labs Ltd','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(195,'Grumaann Royton De Angola Lda','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(196,'Gefarma','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(197,'Omnifar','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(198,'Medtrónica','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(199,'Concentra','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(200,'Prest-Saúde','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(201,'Neofarma','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(202,'Paberna, LDA','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(203,'DFID','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(204,'European Union','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(205,'Nchimanlal Export Ltd','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(206,'Rhydburg Pharmaceuticals','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(207,'Medicamen Biotech','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(208,'Mascareignes','',9,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(209,'Radicura','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(210,'Scott','',NULL,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(211,'Umedica','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(212,'Unicorn','',9,NULL,'','Mr Vauda',+2302108100,'','','','',0);
INSERT INTO registrations_supplier VALUES(213,'Ducray/Lenoir','',9,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(214,'Milan','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(215,'Sanofi Pasteur','',21,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(216,'BDH','',1,NULL,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(217,'Phatkin  Labo SPRL','66,67,88,Av.Kabalo
Q /Croix-Rouge
C /Kinshasa
Kinshasa-RDC
',25,168,'','Donat Kambale',+243999924145,+243812445959,'','labdonatka@yahoo.fr','kuliyod@yahoo.fr',1);
INSERT INTO registrations_supplier VALUES(218,'Zenufa Labo SPRL','03,Av.des Entrepôts
Q /Kingabwa
C /Limeté
Kin-RDC
',25,169,'http://www.zenufa.com/','Naren Visani',+243818843190,+243819922153,'','naren@zenufa.com','gkodjo2012@gmail.com',0);
INSERT INTO registrations_supplier VALUES(219,'New Cesamex Labo SPRL','7155,Av.Général BOBOZO
Q /Kingabwa
C /Limeté
Kinshasa-RDC
',25,172,'http://www.newcesamex.com/','Salim Dareida',+2438103876,+2438150270,'','newcesamex@yahoo.com','',1);
INSERT INTO registrations_supplier VALUES(220,'Swazipharm','',28,64,'','','','','','','',0);
INSERT INTO registrations_supplier VALUES(221,'ASD Medical','',28,43,'','','','','','','',0);
CREATE TABLE "south_migrationhistory" (
    "id" integer NOT NULL PRIMARY KEY,
    "app_name" varchar(255) NOT NULL,
    "migration" varchar(255) NOT NULL,
    "applied" datetime NOT NULL
);
INSERT INTO south_migrationhistory VALUES(1,'registrations','0001_initial','2013-06-12 13:16:03.466201');
CREATE INDEX "auth_group_permissions_1e014c8f" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_group_permissions_425ae3c4" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_permission_1bb8f392" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_user_groups_403f60f" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_425ae3c4" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_user_user_permissions_1e014c8f" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "auth_user_user_permissions_403f60f" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "currency_exchangerate_41f657b3" ON "currency_exchangerate" ("currency_id");
CREATE INDEX "django_admin_log_1bb8f392" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_403f60f" ON "django_admin_log" ("user_id");
CREATE INDEX "django_session_3da3d3d8" ON "django_session" ("expire_date");
CREATE INDEX "registrations_context_534dd89" ON "registrations_context" ("country_id");
CREATE INDEX "registrations_context_7607617b" ON "registrations_context" ("source_id");
CREATE INDEX "registrations_countrymappingcode_44bdf3ee" ON "registrations_countrymappingcode" ("product_id");
CREATE INDEX "registrations_countrymappingcode_534dd89" ON "registrations_countrymappingcode" ("country_id");
CREATE INDEX "registrations_ingredient_1327a3cc" ON "registrations_ingredient" ("medicine_id");
CREATE INDEX "registrations_ingredient_2d7abd12" ON "registrations_ingredient" ("inn_id");
CREATE INDEX "registrations_manufacturer_534dd89" ON "registrations_manufacturer" ("country_id");
CREATE INDEX "registrations_medicine_56fdd035" ON "registrations_medicine" ("dosageform_id");
CREATE INDEX "registrations_packsize_2c9f476f" ON "registrations_packsize" ("pack_id");
CREATE INDEX "registrations_procurement_39d8212c" ON "registrations_procurement" ("container_id");
CREATE INDEX "registrations_procurement_41f657b3" ON "registrations_procurement" ("currency_id");
CREATE INDEX "registrations_procurement_44bdf3ee" ON "registrations_procurement" ("product_id");
CREATE INDEX "registrations_procurement_534dd89" ON "registrations_procurement" ("country_id");
CREATE INDEX "registrations_procurement_6ad0ca34" ON "registrations_procurement" ("supplier_id");
CREATE INDEX "registrations_procurement_7607617b" ON "registrations_procurement" ("source_id");
CREATE INDEX "registrations_procurement_ed8c95d" ON "registrations_procurement" ("incoterm_id");
CREATE INDEX "registrations_product_1327a3cc" ON "registrations_product" ("medicine_id");
CREATE INDEX "registrations_product_4ac7f441" ON "registrations_product" ("manufacturer_id");
CREATE INDEX "registrations_product_6223029" ON "registrations_product" ("site_id");
CREATE INDEX "registrations_registration_44bdf3ee" ON "registrations_registration" ("product_id");
CREATE INDEX "registrations_registration_4ac7f441" ON "registrations_registration" ("manufacturer_id");
CREATE INDEX "registrations_registration_534dd89" ON "registrations_registration" ("country_id");
CREATE INDEX "registrations_registration_6ad0ca34" ON "registrations_registration" ("supplier_id");
CREATE INDEX "registrations_registration_7607617b" ON "registrations_registration" ("source_id");
CREATE INDEX "registrations_site_4ac7f441" ON "registrations_site" ("manufacturer_id");
CREATE INDEX "registrations_site_534dd89" ON "registrations_site" ("country_id");
CREATE INDEX "registrations_supplier_4ac7f441" ON "registrations_supplier" ("manufacturer_id");
CREATE INDEX "registrations_supplier_534dd89" ON "registrations_supplier" ("country_id");
COMMIT;
