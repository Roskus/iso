--
-- Structure `countries_regions`
--

CREATE TABLE IF NOT EXISTS `countries_regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `a2` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(42) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT;

--
-- Restricctions
--

--
-- Filter for table `countries_regions`
--
ALTER TABLE `countries_regions`
  ADD CONSTRAINT `countries_regions_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
