--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `money_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8_unicode_ci NULL,
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
