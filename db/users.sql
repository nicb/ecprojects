/*
 * $Id: users.sql 1 2007-09-12 17:47:33Z nicb $
 */
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) NOT NULL,
  `name` varchar(256) default NULL,
  `password` varchar(40) NOT NULL,
  `user_type` enum('reader','partner','admin') NOT NULL default 'reader',
  `email` varchar(1024) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
