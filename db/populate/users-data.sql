/*
 * $Id: users-data.sql 1 2007-09-12 17:47:33Z nicb $
 */ 

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nicb','Nicola Bernardini','77da8956bcb0afb00c50a9fd7b6d87cc814ae5a9','admin','nicb@sme-ccppd.org');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
