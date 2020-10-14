--
-- Structure `country_region`
--
CREATE TABLE `country_region` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` int(10) UNSIGNED NOT NULL,
  `a2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(42) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
  
--
-- Index for `country_region`
--
ALTER TABLE `country_region` ADD KEY `pk_country_id` (`country_id`);

--
-- ADD FOREIGN KEY
-- 
ALTER TABLE `country_region` ADD CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `country`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
