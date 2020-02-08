/*Table structure for table `language` */

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `iso_639_1` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_639_2` char(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `language` ADD INDEX `name_idx` (`name`), ADD INDEX `iso_1_idx` (`iso_639_1`), ADD INDEX `iso_2_idx` (`iso_639_2`); 
