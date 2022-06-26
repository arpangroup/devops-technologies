CREATE TABLE `test_db.demo_table_root_dir` (
  `id` int(10) NOT NULLL,
  `key` varchar(191) DEFAULT NULL
  `value` varchar(250)  DEFAULT NULL
);

INSERT INTO `test_db.demo_table_root_dir` (`id`, `key`, `value`) VALUES
(1, 'hello', 'world'),
(2, 'pureeats', 'pureeats.in');
