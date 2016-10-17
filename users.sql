
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `username` VARCHAR(64),
  `password` VARCHAR(128),
  `last_login` DATETIME
);

-- Sample Seed data
INSERT INTO `user` (`username`) VALUES 
('camerican'),
('flash'),
('dev.4');