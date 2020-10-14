--
-- Table structure for table `countries`
--
DROP TABLE IF EXISTS country;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) unsigned NOT NULL,
  `continent_id` int(1) unsigned NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `a2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `a3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `tld` char(3) COLLATE utf8_unicode_ci NULL COMMENT 'Domain name TLD',
  `dip` char(6) COLLATE utf8_unicode_ci NULL COMMENT 'Dial International Prefix code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Create name index
--
ALTER TABLE `country` ADD INDEX `idx_country_name` (`name`);

--
-- Create a2 index
--
ALTER TABLE `country` ADD UNIQUE `idx_unq_country_a2` (`a2`);

--
-- Create a3 index
--
ALTER TABLE `country` ADD UNIQUE `idx_unq_country_a3` (`a3`);
