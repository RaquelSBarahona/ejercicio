Table structure for table `intermediadetalles`
--

DROP TABLE IF EXISTS `intermediadetalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intermediadetalles` (
  `producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(3,0) NOT NULL,
  `nifcliente` int(11) NOT NULL,
  PRIMARY KEY (`producto`,`nifcliente`),
  KEY `FK_intermediadetalles_clientes_idx` (`nifcliente`),
  CONSTRAINT `FK_intermediadetalles_clientes` FOREIGN KEY (`nifcliente`) REFERENCES `cliente` (`NIF`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_intermediadetalles_producto` FOREIGN KEY (`producto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intermediadetalles`
--

LOCK TABLES `intermediadetalles` WRITE;
/*!40000 ALTER TABLE `intermediadetalles` DISABLE KEYS */;
/*!40000 ALTER TABLE `intermediadetalles` ENABLE KEYS */;
UNLOCK TABLES;