CREATE TABLE IF NOT EXISTS `continent` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `a2` char(2) COLLATE utf8_unicode_ci NULL,
  `a3` char(3) COLLATE utf8_unicode_ci NULL,
  `tld` char(3) COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;