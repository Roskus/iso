--
-- Table structure for table `currency`
--
CREATE TABLE `currency` (
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `money_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`code`) USING BTREE,
  ADD KEY `idx_money_name` (`money_name`);
