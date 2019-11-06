--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `a2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `a3` char(3) COLLATE utf8_unicode_ci NOT NULL,
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
