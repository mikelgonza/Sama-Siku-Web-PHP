-- phpMyAdmin SQL Dump
-- version 2.8.1
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 06-11-2006 a las 11:56:26
-- Versión del servidor: 5.0.22
-- Versión de PHP: 5.1.4
-- 
-- Base de datos: `samasiku_db`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `accesos`
-- 

CREATE TABLE `accesos` (
  `Id_accesos` int(11) NOT NULL auto_increment,
  `IdUsuario` int(11) default NULL,
  `Fecha` date default NULL,
  `Hora` time default NULL,
  `IP` varchar(50) default NULL,
  PRIMARY KEY  (`Id_accesos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=986 ;

-- 
-- Volcar la base de datos para la tabla `accesos`
-- 

INSERT INTO `accesos` VALUES (970, 1, '2005-02-21', '15:17:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (971, 1, '2005-02-21', '15:32:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (972, 1, '2005-03-01', '21:42:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (973, 1, '2005-03-01', '21:43:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (974, 1, '2005-03-01', '21:44:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (975, 1, '2005-03-01', '21:45:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (976, 1, '2005-03-01', '23:41:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (977, 1, '2005-03-02', '00:08:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (978, 1, '2005-03-02', '00:09:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (979, 1, '2005-03-02', '00:18:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (980, 1, '2005-03-02', '00:18:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (981, 1, '2005-03-02', '00:18:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (982, 1, '2005-03-02', '00:20:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (983, 1, '2005-03-03', '00:08:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (984, 1, '2005-03-03', '00:10:00', '192.168.0.10');
INSERT INTO `accesos` VALUES (985, 1, '2005-03-10', '00:25:00', '192.168.0.10');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `calendario`
-- 

CREATE TABLE `calendario` (
  `Id_calendario` int(11) NOT NULL auto_increment,
  `a1` varchar(5) collate latin1_spanish_ci default NULL,
  `a2` varchar(5) collate latin1_spanish_ci default NULL,
  `a3` varchar(5) collate latin1_spanish_ci default NULL,
  `Dia1` tinyint(2) default NULL,
  `Dia2` tinyint(2) default NULL,
  `Dia3` tinyint(2) default NULL,
  `Mes` varchar(50) collate latin1_spanish_ci default NULL,
  `Ano` year(4) default NULL,
  `Hora` time default NULL,
  `Lugar` varchar(50) character set latin1 default NULL,
  PRIMARY KEY  (`Id_calendario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `calendario`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `clasemenu`
-- 

CREATE TABLE `clasemenu` (
  `Id_clasemenu` int(11) NOT NULL auto_increment,
  `Menu` varchar(50) default NULL,
  `Foto` varchar(50) default NULL,
  `Enlace` varchar(50) default NULL,
  `Id_clase` int(11) default NULL,
  `Orden` int(11) default NULL,
  PRIMARY KEY  (`Id_clasemenu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `clasemenu`
-- 

INSERT INTO `clasemenu` VALUES (1, 'Control', 'control2.gif', 'listado_menu.asp?menu=control', 3, 10);
INSERT INTO `clasemenu` VALUES (2, 'Fanfarre', 'fanfarre2.gif', 'listado_menu.asp?menu=fanfarre', 3, 20);
INSERT INTO `clasemenu` VALUES (3, 'Tecnica', 'tecnica2.gif', 'listado_menu.asp?menu=tecnica', 3, 30);
INSERT INTO `clasemenu` VALUES (4, 'Instrumentos', 'instrumentos2.gif', 'listado_menu.asp?menu=instrumentos', 3, 40);
INSERT INTO `clasemenu` VALUES (5, 'Descargas', 'descargas2.gif', 'listado_menu.asp?menu=descargas', 3, 50);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `clases`
-- 

CREATE TABLE `clases` (
  `Id_clase` int(11) NOT NULL auto_increment,
  `Nombre` varchar(50) default NULL,
  `Clase` varchar(50) default NULL,
  PRIMARY KEY  (`Id_clase`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `clases`
-- 

INSERT INTO `clases` VALUES (1, 'Aniversario', 'NV3');
INSERT INTO `clases` VALUES (2, 'Menu', 'pag');
INSERT INTO `clases` VALUES (3, 'Submenu', 'NV2');
INSERT INTO `clases` VALUES (4, 'Menu Superior 1', 'menu');
INSERT INTO `clases` VALUES (5, 'Menu Superior 2', 'menu2');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `controlaccesos`
-- 

CREATE TABLE `controlaccesos` (
  `Id_accesos` int(11) NOT NULL auto_increment,
  `IdUsuario` int(11) default NULL,
  `Fecha` date default NULL,
  `Hora` time default NULL,
  `IP` varchar(50) default NULL,
  PRIMARY KEY  (`Id_accesos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1006 ;

-- 
-- Volcar la base de datos para la tabla `controlaccesos`
-- 

INSERT INTO `controlaccesos` VALUES (851, 1, '2004-01-08', '03:08:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (852, 1, '2004-01-08', '15:51:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (853, 1, '2004-01-08', '15:54:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (854, 1, '2004-01-09', '00:28:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (855, 1, '2004-01-10', '19:26:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (856, 1, '2004-01-10', '19:26:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (857, 1, '2004-01-10', '19:41:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (858, 1, '2004-01-11', '07:28:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (859, 1, '2004-01-11', '16:52:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (860, 1, '2004-01-11', '22:33:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (861, 1, '2004-01-12', '00:02:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (862, 1, '2004-01-12', '01:18:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (863, 1, '2004-01-12', '02:43:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (864, 1, '2004-01-12', '03:14:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (865, 1, '2004-01-12', '03:20:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (866, 1, '2004-01-12', '23:25:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (867, 1, '2004-01-12', '23:50:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (868, 1, '2004-01-13', '01:28:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (869, 1, '2004-01-13', '02:42:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (870, 1, '2004-01-13', '03:06:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (871, 1, '2004-01-14', '03:36:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (872, 1, '2004-01-14', '15:31:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (873, 1, '2004-01-14', '15:33:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (874, 1, '2004-01-15', '22:04:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (875, 1, '2004-01-15', '23:02:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (876, 1, '2004-01-20', '01:42:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (877, 1, '2004-01-20', '02:26:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (878, 1, '2004-01-21', '00:01:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (879, 1, '2004-01-24', '16:59:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (880, 1, '2004-02-27', '00:12:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (881, 1, '2004-02-27', '02:13:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (882, 1, '2004-03-01', '15:41:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (883, 1, '2004-03-02', '00:13:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (884, 1, '2004-03-02', '01:46:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (885, 1, '2004-03-07', '22:35:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (886, 1, '2004-03-07', '23:05:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (887, 1, '2004-03-08', '01:30:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (888, 1, '2004-03-15', '15:44:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (889, 1, '2004-03-16', '01:51:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (890, 1, '2004-03-16', '01:54:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (891, 1, '2004-03-16', '23:49:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (892, 1, '2004-03-17', '02:44:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (893, 1, '2004-03-18', '01:17:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (894, 1, '2004-03-18', '02:09:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (895, 1, '2004-03-18', '15:39:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (896, 1, '2004-03-19', '14:25:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (897, 1, '2004-03-21', '19:49:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (898, 1, '2004-03-21', '21:00:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (899, 1, '2005-03-26', '13:35:00', '172.26.0.15');
INSERT INTO `controlaccesos` VALUES (900, 1, '2005-03-26', '13:45:00', '172.26.0.15');
INSERT INTO `controlaccesos` VALUES (901, 1, '2004-04-30', '13:42:00', '172.26.0.15');
INSERT INTO `controlaccesos` VALUES (902, 1, '2004-04-30', '06:52:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (903, 1, '2004-04-30', '11:07:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (904, 1, '2004-04-30', '11:22:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (905, 1, '2004-09-29', '00:47:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (906, 1, '2004-09-29', '01:03:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (907, 1, '2004-09-29', '01:04:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (908, 1, '2004-09-29', '01:07:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (909, 1, '2004-09-29', '01:49:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (910, 1, '2004-09-29', '03:06:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (911, 1, '2004-10-01', '01:32:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (912, 1, '2004-10-20', '00:16:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (913, 1, '2004-10-20', '00:35:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (914, 1, '2004-10-22', '15:46:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (915, 1, '2004-10-23', '17:21:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (916, 1, '2004-10-23', '17:49:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (917, 1, '2004-10-23', '18:04:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (918, 1, '2004-10-25', '00:51:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (919, 1, '2004-10-25', '01:42:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (920, 1, '2004-10-25', '03:22:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (921, 1, '2004-11-16', '23:58:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (922, 1, '2004-11-17', '00:54:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (923, 1, '2004-11-22', '01:50:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (924, 1, '2004-11-23', '00:49:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (925, 1, '2004-11-23', '01:23:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (926, 1, '2004-12-16', '01:15:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (927, 1, '2004-12-16', '02:22:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (928, 1, '2004-12-24', '03:00:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (929, 1, '2004-12-24', '03:08:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (930, 1, '2005-01-11', '00:29:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (931, 1, '2005-02-01', '01:20:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (932, 1, '2005-02-02', '01:39:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (933, 1, '2005-02-03', '11:50:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (934, 1, '2005-02-03', '13:08:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (935, 1, '2005-02-03', '13:35:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (936, 1, '2005-02-03', '17:22:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (937, 1, '2005-02-03', '18:32:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (938, 1, '2005-02-04', '00:04:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (939, 1, '2005-02-04', '01:20:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (940, 1, '2005-02-04', '11:02:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (941, 1, '2005-02-04', '11:53:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (942, 1, '2005-02-04', '12:10:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (943, 1, '2005-02-04', '12:27:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (944, 1, '2005-02-04', '12:28:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (945, 1, '2005-02-08', '03:07:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (946, 1, '2005-02-09', '15:44:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (947, 1, '2005-02-09', '15:45:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (948, 1, '2005-02-09', '15:58:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (949, 1, '2005-02-10', '01:10:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (950, 1, '2005-02-10', '02:29:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (951, 1, '2005-02-10', '15:28:00', '192.168.0.2');
INSERT INTO `controlaccesos` VALUES (952, 1, '2005-02-10', '16:51:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (953, 1, '2005-02-10', '19:30:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (954, 1, '2005-02-10', '19:33:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (955, 1, '2005-02-11', '00:34:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (956, 1, '2005-02-11', '01:01:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (957, 1, '2005-02-11', '03:19:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (958, 1, '2005-02-17', '02:09:00', '127.0.0.1');
INSERT INTO `controlaccesos` VALUES (959, 1, '2005-02-18', '01:33:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (960, 1, '2005-02-18', '02:05:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (961, 1, '2005-02-18', '15:06:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (962, 1, '2005-02-18', '15:15:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (963, 1, '2005-02-18', '15:24:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (964, 1, '2005-02-18', '15:24:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (965, 1, '2005-02-18', '15:28:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (966, 1, '2005-02-18', '15:28:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (967, 1, '2005-02-18', '15:29:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (968, 1, '2005-02-21', '03:34:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (969, 1, '2005-02-21', '03:46:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (970, 1, '2005-03-03', '01:19:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (971, 1, '2005-03-10', '00:17:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (972, 1, '2005-03-10', '02:58:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (973, 1, '2005-03-13', '05:52:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (974, 1, '2005-03-13', '20:22:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (975, 1, '2005-03-13', '20:23:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (976, 1, '2005-03-13', '21:00:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (977, 1, '2005-03-13', '21:05:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (978, 1, '2005-03-13', '23:30:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (979, 1, '2005-03-14', '00:08:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (980, 1, '2005-03-14', '01:54:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (981, 1, '2005-03-14', '02:53:00', '192.168.0.10');
INSERT INTO `controlaccesos` VALUES (982, 1, '2005-04-04', '04:57:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (983, 1, '2005-04-06', '06:56:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (984, 1, '2005-04-07', '16:29:00', '80.58.41.236');
INSERT INTO `controlaccesos` VALUES (985, 1, '2005-04-14', '04:01:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (986, 1, '2005-04-27', '13:08:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (987, 1, '2005-04-27', '17:43:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (988, 1, '2005-04-27', '19:34:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (989, 1, '2005-04-27', '19:58:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (990, 1, '2005-04-28', '10:39:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (991, 1, '2005-04-28', '11:21:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (992, 1, '2005-04-28', '11:49:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (993, 1, '2005-04-28', '12:20:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (994, 1, '2005-04-28', '18:39:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (995, 1, '2005-04-28', '11:51:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (996, 1, '2005-04-28', '13:00:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (997, 1, '2005-04-29', '12:35:00', '80.58.42.44');
INSERT INTO `controlaccesos` VALUES (998, 1, '2005-06-14', '11:08:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (999, 1, '2005-06-14', '12:37:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (1000, 1, '2005-06-14', '17:07:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (1001, 1, '2005-06-14', '18:43:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (1002, 1, '2005-06-14', '19:41:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (1003, 1, '2005-06-21', '13:10:00', '172.26.0.14');
INSERT INTO `controlaccesos` VALUES (1004, 1, '2005-11-18', '06:28:00', '85.84.5.161');
INSERT INTO `controlaccesos` VALUES (1005, 1, '2005-12-13', '12:26:00', '85.84.5.161');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `controlusuarios`
-- 

CREATE TABLE `controlusuarios` (
  `IdUsuario` int(11) NOT NULL auto_increment,
  `Nombre` varchar(50) default NULL,
  `DNI` varchar(50) default NULL,
  `Usuario` varchar(50) default NULL,
  `Pasword` varchar(50) default NULL,
  PRIMARY KEY  (`IdUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `controlusuarios`
-- 

INSERT INTO `controlusuarios` VALUES (1, 'Moro', NULL, 'admin', '150913126f58bf6f1ccfd2c6a6c27ce2');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `enlaces`
-- 

CREATE TABLE `enlaces` (
  `Id_enlaces` int(11) NOT NULL auto_increment,
  `Titulo` varchar(50) default NULL,
  `Comentario` varchar(50) default NULL,
  `Web` varchar(50) default NULL,
  `Foto` varchar(50) default NULL,
  `Grupo` int(11) default NULL,
  PRIMARY KEY  (`Id_enlaces`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- 
-- Volcar la base de datos para la tabla `enlaces`
-- 

INSERT INTO `enlaces` VALUES (1, 'ABC MUSICOS', 'Web sobre m&uacute;sica y partituras', 'http://www.abcmusicos.com', 'abcmusicos.gif', 4);
INSERT INTO `enlaces` VALUES (2, 'BANDA LA CLAU', 'Francia', 'http://banda.laclau.free.fr', 'laclau.gif', 3);
INSERT INTO `enlaces` VALUES (4, 'FESTIVAL INTERNACIONAL DE BANDAS DE DALHEM', 'B&eacute;lgica', 'http://bandasdalhem.ibelgique.com', 'dalhem.gif', 1);
INSERT INTO `enlaces` VALUES (7, 'FANFARRE USTEKABE', 'Eibar - Guipuzcoa', 'http://www.ustekabe.com', 'ustekabe.jpg', 2);
INSERT INTO `enlaces` VALUES (9, 'BANDA DE SAINT-JUNIEN', 'Francia', 'http://perso.wanadoo.fr/bandasaintjunien', 'stjunien.gif', 3);
INSERT INTO `enlaces` VALUES (10, 'DMA BAND', 'B&eacute;lgica', 'http://users.skynet.be/dmaband', 'dma.gif', 3);
INSERT INTO `enlaces` VALUES (12, 'BANDA LOUS MAYOUNS', 'Francia', 'http://lamouette1.free.fr', 'mayouns.gif', 3);
INSERT INTO `enlaces` VALUES (13, 'FANFARRE TURUTARRA', 'Zorrotza', 'http://www.turutarra.com', 'turutarra.jpg', 2);
INSERT INTO `enlaces` VALUES (14, 'MARMARA MARCHING BAND', 'Vizcaya', 'http://www.marmaramusik.com', 'marmara.jpg', 2);
INSERT INTO `enlaces` VALUES (16, 'FANFARRE SUGARRI', 'Durango', 'http://www.sugarri.com', 'sugarri.jpg', 2);
INSERT INTO `enlaces` VALUES (17, 'CHARANGA MEKANICA', 'Galicia', 'http://www.charangamekanika.com', 'mekanica.gif', 2);
INSERT INTO `enlaces` VALUES (18, 'TXARANGA TXORONGO', '', 'http://www.txorongo.com', 'txorongo.gif', 2);
INSERT INTO `enlaces` VALUES (19, 'FESTIVAL DE BANDAS DE CONDON', 'Francia', 'http://www.festival-de-bandas.com', 'condon.gif', 1);
INSERT INTO `enlaces` VALUES (20, 'CHARANGA LOS BES', 'Guadalajara', 'http://www.charangalosbes.es.mn', 'losbes.gif', 2);
INSERT INTO `enlaces` VALUES (21, 'CHARANGA TROPYCANA', 'Valladolid', 'http://charangatropycana.tk', 'tropicana.gif', 2);
INSERT INTO `enlaces` VALUES (22, 'TXARANGA PE&ntilde;ALEN', 'Funes - Navarra', 'http://www.txarangapenalen.com', 'penalen.gif', 2);
INSERT INTO `enlaces` VALUES (24, 'FANFARRE IRULITXA', 'Ermua - Guipuzcoa', 'http://www.irulitxa.com', 'irulitxa.jpg', 2);
INSERT INTO `enlaces` VALUES (25, 'TXARANGA AKELARRE', 'Vitoria', 'http://www.akelarretxaranga.com', 'akelarre.jpg', 2);
INSERT INTO `enlaces` VALUES (26, 'TXARANGA ABURRECALLES', 'Lodosa - Navarra', 'http://www.aburrecalles.com', 'aburre.jpg', 2);
INSERT INTO `enlaces` VALUES (28, 'FANFARRE GURETZAT', 'Portugalete - Vizcaya', 'http://www.fanfarre-guretzat.com', 'guretzat.jpg', 2);
INSERT INTO `enlaces` VALUES (29, 'FESTIVAL DE BANDAS DE ROCHECHOUART', 'Francia', 'http://www.ville-rochechouart.fr/festiband/', 'roche.jpg', 1);
INSERT INTO `enlaces` VALUES (30, 'BANDAFOLIES', 'Bessines - Francia', 'http://bandafolies.armorik.net/', 'folies.gif', 1);
INSERT INTO `enlaces` VALUES (31, 'CARNAVAL DE ALBI', 'Albi - Francia', 'http://www.81en1.info/carnaval-albi', 'albi.jpg', 1);
INSERT INTO `enlaces` VALUES (32, 'FIESTAS DE LA MADELEINE', 'Mont de Marsan - Francia', 'http://www.fetesmadeleine.com', 'marsan.jpg', 1);
INSERT INTO `enlaces` VALUES (33, 'PAQUITO BANDA', 'Francia', 'http://paquito.chez.tiscali.fr', 'paquito.jpg', 3);
INSERT INTO `enlaces` VALUES (34, 'BODEGA BANDA', 'Francia', 'http://www.bodegabanda.com', 'bodega.jpg', 3);
INSERT INTO `enlaces` VALUES (35, 'BANDA DE BESSINES', 'Bessines - Francia', 'http://perso.wanadoo.fr/sitebdb03', 'bandabessines.jpg', 3);
INSERT INTO `enlaces` VALUES (36, 'COMUSICA', 'Web sobre m&uacute;sica y tiendas de m&uacute;sica', 'http://www.comusica.com', 'comusica.gif', 4);
INSERT INTO `enlaces` VALUES (37, 'GUIA DEL MERCADO', 'Instrumentos, iluminaci&oacute;n y transporte', 'http://www.guiademercado.es', 'guiamercado.gif', 4);
INSERT INTO `enlaces` VALUES (38, 'BANDA LES PHACOCHERÈS', 'Montreal', 'http://www.lesphacocheres.com/', 'phacocheres.gif', 3);
INSERT INTO `enlaces` VALUES (39, 'TIRRI TARRA', 'Pasajes San Pedro - Guipuzcoa', 'http://www.tirritarra.com', 'tirritarra.jpg', 2);
INSERT INTO `enlaces` VALUES (40, 'EUROMUSICA GARIJO', 'Noticias, venta y manuales de instrumentos', 'http://www.euromusicagarijo.com', 'eurogarijo.gif', 4);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `fotos`
-- 

CREATE TABLE `fotos` (
  `Id_foto` int(11) NOT NULL auto_increment,
  `Foto` varchar(50) default NULL,
  `Titulo` varchar(50) default NULL,
  `Titulo_ventana` varchar(50) default NULL,
  `Carpeta` varchar(50) default NULL,
  `Orden_grupo` int(11) default NULL,
  `Suborden` int(11) default NULL,
  `Foto_grupo` varchar(50) default NULL,
  PRIMARY KEY  (`Id_foto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=353 ;

-- 
-- Volcar la base de datos para la tabla `fotos`
-- 

INSERT INTO `fotos` VALUES (1, '01', '', '10 ANIVERSARIO', '10a', 1, NULL, '');
INSERT INTO `fotos` VALUES (2, '02', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (3, '03', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (4, '04', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (5, '05', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (6, '06', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (7, '07', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (8, '08', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (9, '09', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (10, '10', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (11, '11', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (12, '12', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (13, '13', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (14, '14', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (15, '15', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (16, '16', NULL, '10 ANIVERSARIO', '10a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (17, 'bilbao1', 'Fiestas Bilbao', 'TEMPORADA 00-01', '00_01', 3, NULL, 'fotosvarias.gif');
INSERT INTO `fotos` VALUES (18, 'bilbao2', 'Fiestas Bilbao', 'TEMPORADA 00-01', '00_01', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (19, 'carnabilbo', 'Carnavales Bilbao', 'TEMPORADA 00-01', '00_01', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (20, 'castro', 'Castro', 'TEMPORADA 00-01', '00_01', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (21, 'huesca2', 'Huesca', 'TEMPORADA 00-01', '00_01', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (22, 'montdemarsan1', NULL, 'TEMPORADA 00-01', '00_01', 2, NULL, 'montdemarsan.gif');
INSERT INTO `fotos` VALUES (23, 'montdemarsan2', NULL, 'TEMPORADA 00-01', '00_01', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (24, 'rochechouart1', NULL, 'TEMPORADA 00-01', '00_01', 1, NULL, 'rochechouart.gif');
INSERT INTO `fotos` VALUES (25, 'rochechouart2', NULL, 'TEMPORADA 00-01', '00_01', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (26, 'rochechouart3', NULL, 'TEMPORADA 00-01', '00_01', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (27, 'rochechouart4', NULL, 'TEMPORADA 00-01', '00_01', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (28, 'rochechouart5', NULL, 'TEMPORADA 00-01', '00_01', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (29, 'rochechouart6', NULL, 'TEMPORADA 00-01', '00_01', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (30, 'ussel', 'Ussel', 'TEMPORADA 00-01', '00_01', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (31, 'valreas2', 'Valreas', 'TEMPORADA 00-01', '00_01', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (33, '0004', NULL, '25 ANIVERSARIO', '25a', 5, NULL, 'cena.gif');
INSERT INTO `fotos` VALUES (34, '0008', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (35, '0010', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (36, '0011', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (37, '0016', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (38, '0018', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (39, '0028', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (40, '0031', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (41, '0032', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (42, '0035', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (43, '0037', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (44, '0042', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (45, '0044', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (46, '0051', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (47, '0052', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (48, '0053', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (49, '0055', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (50, '0056', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (51, '0057', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (52, '0062', NULL, '25 ANIVERSARIO', '25a', 5, NULL, NULL);
INSERT INTO `fotos` VALUES (55, '0794', '', '25 ANIVERSARIO', '25a', 1, NULL, 'alarde.gif');
INSERT INTO `fotos` VALUES (56, '0798', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (57, '0800', 'Ustekabe', '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (58, '0801', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (59, '0802', 'Turutarra', '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (60, '0806', 'Dunbots', '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (61, '0808', 'Sama Siku', '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (62, '0813', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (63, '0820', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (64, '0821', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (65, '0824', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (66, '0845', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (67, '0848', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (68, '0857', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (69, '0865', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (70, '0875', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (71, '0876', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (72, '0877', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (73, '0878', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (74, '0879', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (75, '0888', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (76, '0898', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (77, '0914', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (78, '0918', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (79, '0925', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (80, '0926', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (81, '0931', NULL, '25 ANIVERSARIO', '25a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (82, '0940', NULL, '25 ANIVERSARIO', '25a', 2, NULL, 'lunch.gif');
INSERT INTO `fotos` VALUES (83, '0942', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (84, '0944', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (85, '0945', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (86, '0946', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (87, '0947', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (88, '0948', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (89, '0949', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (90, '0951', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (91, '0952', NULL, '25 ANIVERSARIO', '25a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (92, '0955', NULL, '25 ANIVERSARIO', '25a', 3, NULL, 'gaztedi.gif');
INSERT INTO `fotos` VALUES (93, '0957', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (94, '0958', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (95, '0959', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (96, '0961', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (97, '0962', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (98, '0963', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (99, '0964', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (100, '0965', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (101, '0968', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (102, '0969', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (103, '0971', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (104, '0972', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (105, '0973', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (106, '0981', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (107, '0983', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (108, '0989', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (109, '0990', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (110, '0991', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (111, '0992', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (112, '0993', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (113, '0994', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (114, '0997', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (115, '0999', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (116, '1000', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (117, '1004', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (118, '1006', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (119, '1007', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (120, '1008', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (121, '1009', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (122, '1010', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (123, '1013', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (124, '1014', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (125, '1015', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (126, '1016', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (127, '1017', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (128, '1018', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (129, '1019', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (130, '1020', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (131, '1021', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (132, '1022', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (133, '1028', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (134, '1033', NULL, '25 ANIVERSARIO', '25a', 3, NULL, NULL);
INSERT INTO `fotos` VALUES (135, '1082', NULL, '25 ANIVERSARIO', '25a', 4, NULL, 'coros.gif');
INSERT INTO `fotos` VALUES (136, '1083', NULL, '25 ANIVERSARIO', '25a', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (137, '1084', NULL, '25 ANIVERSARIO', '25a', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (138, '1098', NULL, '25 ANIVERSARIO', '25a', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (139, '1099', NULL, '25 ANIVERSARIO', '25a', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (140, '1213', '', '25 ANIVERSARIO', '25a', 6, NULL, 'inner.gif');
INSERT INTO `fotos` VALUES (141, '1214', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (142, '1215', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (143, '1216', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (144, '1217', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (145, '1230', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (146, '1235', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (147, '1245', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (148, '1247', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (149, '1248', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (150, '1252', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (151, '1254', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (152, '1263', NULL, '25 ANIVERSARIO', '25a', 6, NULL, NULL);
INSERT INTO `fotos` VALUES (153, '1264', '', '25 ANIVERSARIO', '25a', 7, NULL, 'fin.gif');
INSERT INTO `fotos` VALUES (154, '1283', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (155, '1284', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (156, '1285', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (157, '1286', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (158, '1287', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (159, '1290', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (160, '1292', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (161, '1294', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (162, '1295', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (163, '1297', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (164, '1300', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (165, '1302', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (166, '1304', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (167, '1308', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (168, '1309', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (169, '1310', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (170, '1311', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (171, '1312', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (172, '1314', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (175, '1318', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (176, '1319', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (177, '1320', NULL, '25 ANIVERSARIO', '25a', 7, NULL, NULL);
INSERT INTO `fotos` VALUES (178, 'rochechouart1', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, 'rochechouart.gif');
INSERT INTO `fotos` VALUES (179, 'rochechouart2', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (180, 'rochechouart3', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (181, 'rochechouart4', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (182, 'rochechouart5', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (183, 'rochechouart6', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (184, 'rochechouart7', NULL, 'TEMPORADA 99-00', '99_00', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (185, 'bessines1', 'Bessines', 'TEMPORADA 99-00', '99_00', 2, NULL, 'fotosvarias.gif');
INSERT INTO `fotos` VALUES (186, 'bessines2', 'Bessines', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (187, 'boda', 'Boda Roberto y Susana', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (188, 'caserio', 'En el Caserio', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (189, 'castro', 'Castro', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (190, 'cena1', 'Cena Fin Temporada', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (191, 'cena2', 'Cana Fin Temporada', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (192, 'huesca1', 'Huesca', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (193, 'huesca2', 'Huesca', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (194, 'limoges', 'Limoges', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (195, 'montdemarsan1', 'Mont de Marsan', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (196, 'montdemarsan2', 'Mont de Marsan', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (197, 'montdemarsan3', 'Mont de Marsan', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (198, 'oviedo1', 'Oviedo', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (199, 'oviedo2', 'Oviedo', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (200, 'pagasarri', 'En el Pagasarri', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (201, 'santacecilia', 'Santa Cecilia', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (202, 'stettiene', 'St. Ettiene', 'TEMPORADA 99-00', '99_00', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (204, '01', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (205, '02', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (206, '03', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (207, '04', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (208, '05', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (209, '06', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (210, '07', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (211, '08', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (212, '09', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (213, '10', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (214, '11', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (215, '12', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (216, '13', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (217, '14', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (218, '15', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (219, '16', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (220, '17', NULL, '20 ANIVERSARIO', '20a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (221, '01', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (222, '02', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (223, '03', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (224, '04', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (225, '05', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (226, '06', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (227, '07', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (228, '08', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (229, '09', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (230, '10', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (231, '11', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (232, '12', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (233, '13', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (234, '14', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (235, '15', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (236, '16', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (237, '17', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (238, '18', NULL, '15 ANIVERSARIO', '15a', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (240, '20', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (241, '21', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (242, '22', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (244, '24', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (245, '25', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (246, '26', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (247, '27', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (248, '28', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (249, '29', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (250, '30', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (251, '31', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (252, '32', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (253, '33', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (254, '34', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (255, '35', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (256, '36', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (257, '37', NULL, '15 ANIVERSARIO', '15a', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (276, '01', 'Huesca', 'HUESCA 2002', '01_02', 10, 1, 'fotosvarias.gif');
INSERT INTO `fotos` VALUES (277, '02', 'Huesca', 'HUESCA 2002', '01_02', 10, 1, NULL);
INSERT INTO `fotos` VALUES (278, '03', 'Francia', 'FRANCIA 2002', '01_02', 10, 2, NULL);
INSERT INTO `fotos` VALUES (279, '04', 'Francia', 'FRANCIA 2002', '01_02', 10, 2, NULL);
INSERT INTO `fotos` VALUES (280, '05', 'Francia', 'FRANCIA 2002', '01_02', 10, 2, NULL);
INSERT INTO `fotos` VALUES (281, '06', 'Francia', 'FRANCIA 2002', '01_02', 10, 2, NULL);
INSERT INTO `fotos` VALUES (282, '07', 'Francia', 'FRANCIA 2002', '01_02', 10, 2, NULL);
INSERT INTO `fotos` VALUES (299, '51', '', 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, 'car_santutxu.gif');
INSERT INTO `fotos` VALUES (300, '52', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (301, '53', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (302, '54', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (303, '55', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (304, '56', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (305, '57', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (306, '58', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (307, '59', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (308, '60', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (309, '63', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (310, '64', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (311, '65', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (312, '66', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (313, '67', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (314, '68', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (315, '69', NULL, 'CARNAVALES SANTUTXU 2002', '01_02', 1, NULL, NULL);
INSERT INTO `fotos` VALUES (316, '70', 'Castro', 'CARNAVALES CASTRO 2002', '01_02', 10, 3, 'car_castro.gif');
INSERT INTO `fotos` VALUES (317, '71', 'Castro', 'CARNAVALES CASTRO 2002', '01_02', 10, 3, NULL);
INSERT INTO `fotos` VALUES (318, '72', 'Castro', 'CARNAVALES CASTRO 2002', '01_02', 10, 3, NULL);
INSERT INTO `fotos` VALUES (319, '80', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, 'pagasarri.gif');
INSERT INTO `fotos` VALUES (320, '82', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (321, '83', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (322, '84', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (323, '85', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (324, '87', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (325, '89', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (326, '90', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (327, '93', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (328, '94', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (329, '96', NULL, 'PAGASARRI 2001', '01_02', 2, NULL, NULL);
INSERT INTO `fotos` VALUES (330, '145', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, 'montdemarsan.gif');
INSERT INTO `fotos` VALUES (331, '146', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (332, '147', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (333, '148', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (334, '149', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (335, '150', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (336, '152', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (337, '153', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (338, '154', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (339, '155', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (340, '159', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (341, '160', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (342, '162', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (343, '163', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (344, '164', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (345, '165', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (346, '166', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (347, '167', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (348, '169', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (349, '170', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (350, '171', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (351, '173', NULL, 'MONT DE MARSAN 2002', '01_02', 4, NULL, NULL);
INSERT INTO `fotos` VALUES (352, '40', 'Con Iribar', 'PE&ntilde;AS DEL ATHLETIC', '01_02', 10, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `grupoenlaces`
-- 

CREATE TABLE `grupoenlaces` (
  `Id_grupo` int(11) NOT NULL auto_increment,
  `Grupo` varchar(50) default NULL,
  `Orden` int(11) default NULL,
  PRIMARY KEY  (`Id_grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `grupoenlaces`
-- 

INSERT INTO `grupoenlaces` VALUES (1, 'Festivales y Fiestas Populares', 3);
INSERT INTO `grupoenlaces` VALUES (2, 'Grupos Nacionales', 1);
INSERT INTO `grupoenlaces` VALUES (3, 'Grupos Extranjeros', 2);
INSERT INTO `grupoenlaces` VALUES (4, 'Webs sobre M&uacute;sica', 4);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `grupofotos`
-- 

CREATE TABLE `grupofotos` (
  `Id_grupofotos` tinyint(4) NOT NULL auto_increment,
  `Carpeta` varchar(50) NOT NULL default '',
  `Orden_grupo` int(11) NOT NULL default '0',
  `Titulogrupo` varchar(50) NOT NULL default '',
  `Enlace` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`Id_grupofotos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `grupofotos`
-- 

INSERT INTO `grupofotos` VALUES (1, '01_02', 1, 'Fotos de Carnavales de Santutxu', '/fanfarre/fotos/?env=si&amp;ord=1&amp;car=01_02');
INSERT INTO `grupofotos` VALUES (2, '01_02', 2, 'Fotos de la subida al Pagasarri', '/fanfarre/fotos/?env=si&amp;ord=2&amp;car=01_02');
INSERT INTO `grupofotos` VALUES (3, '01_02', 4, 'Fotos de Mont de Marsan', '/fanfarre/fotos/?env=si&amp;ord=4&amp;car=01_02');
INSERT INTO `grupofotos` VALUES (4, '01_02', 10, 'Fotos varias', '/fanfarre/fotos/?env=si&amp;ord=10&amp;car=01_02');
INSERT INTO `grupofotos` VALUES (5, '25a', 1, 'Fotos del Alarde de Fanfarres', '/fanfarre/fotos/?env=si&amp;ord=1&amp;car=25a');
INSERT INTO `grupofotos` VALUES (6, '25a', 2, 'Fotos del Lunch', '/fanfarre/fotos/?env=si&amp;ord=2&amp;car=25a');
INSERT INTO `grupofotos` VALUES (7, '25a', 3, 'Fotos del Alarde del Gaztedi', '/fanfarre/fotos/?env=si&amp;ord=3&amp;car=25a');
INSERT INTO `grupofotos` VALUES (8, '25a', 4, 'Fotos de los Coros', '/fanfarre/fotos/?env=si&amp;ord=4&amp;car=25a');
INSERT INTO `grupofotos` VALUES (9, '25a', 5, 'Fotos de la Cena', '/fanfarre/fotos/?env=si&amp;ord=5&amp;car=25a');
INSERT INTO `grupofotos` VALUES (10, '25a', 6, 'Fotos del concierto de Inner Duo', '/fanfarre/fotos/?env=si&amp;ord=6&amp;car=25a');
INSERT INTO `grupofotos` VALUES (11, '25a', 7, 'Fotos del Fin de Fiesta', '/fanfarre/fotos/?env=si&amp;ord=7&amp;car=25a');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `instrumentos`
-- 

CREATE TABLE `instrumentos` (
  `Id_instrumento` int(11) NOT NULL auto_increment,
  `Instrumento` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`Id_instrumento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- 
-- Volcar la base de datos para la tabla `instrumentos`
-- 

INSERT INTO `instrumentos` VALUES (1, 'Bombo');
INSERT INTO `instrumentos` VALUES (2, 'Caja');
INSERT INTO `instrumentos` VALUES (3, 'Platos');
INSERT INTO `instrumentos` VALUES (4, 'Requinto');
INSERT INTO `instrumentos` VALUES (5, 'Clarinete');
INSERT INTO `instrumentos` VALUES (6, 'Saxo Soprano');
INSERT INTO `instrumentos` VALUES (7, 'Saxo Alto');
INSERT INTO `instrumentos` VALUES (8, 'Saxo Tenor');
INSERT INTO `instrumentos` VALUES (9, 'Saxo Barítono');
INSERT INTO `instrumentos` VALUES (10, 'Trompeta');
INSERT INTO `instrumentos` VALUES (11, 'Fliscorno');
INSERT INTO `instrumentos` VALUES (12, 'Trombón');
INSERT INTO `instrumentos` VALUES (13, 'Bombardino');
INSERT INTO `instrumentos` VALUES (14, 'Tuba');
INSERT INTO `instrumentos` VALUES (15, 'Helicón');
INSERT INTO `instrumentos` VALUES (16, 'Bandera');
INSERT INTO `instrumentos` VALUES (17, 'Director');
INSERT INTO `instrumentos` VALUES (18, 'Botijo');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `menu`
-- 

CREATE TABLE `menu` (
  `Id_menu` int(11) NOT NULL auto_increment,
  `Clase` varchar(50) default NULL,
  `Idioma` varchar(50) default NULL,
  `Menu` varchar(50) default NULL,
  `Enlace` varchar(100) default NULL,
  `Enlace_submenu` varchar(50) default NULL,
  `Id_clase` int(11) default NULL,
  `Orden` int(11) default NULL,
  PRIMARY KEY  (`Id_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- 
-- Volcar la base de datos para la tabla `menu`
-- 

INSERT INTO `menu` VALUES (1, 'control', 'castellano', 'ACTUACIONES', 'listado_calendario.php', NULL, 2, 10);
INSERT INTO `menu` VALUES (2, 'control', 'castellano', 'COMPONENTES', 'listado_componentes.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (3, 'control', 'castellano', 'PALMARES', 'listado_palmares.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (4, 'control', 'castellano', 'FOTOS', 'listado_fotos.php', 'listado_subfotos.asp', 2, 40);
INSERT INTO `menu` VALUES (6, 'control', 'castellano', 'ENLACES', 'listado_enlaces.php', NULL, 2, 50);
INSERT INTO `menu` VALUES (7, 'control', 'castellano', 'MIDIS', 'listado_midis.php', NULL, 2, 60);
INSERT INTO `menu` VALUES (8, 'fanfarre', 'castellano', 'INICIO', '/fanfarre/castellano/index.php', NULL, 1, 10);
INSERT INTO `menu` VALUES (9, 'fanfarre', 'castellano', 'INTRODUCCION', '/fanfarre/castellano/introduccion.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (10, 'fanfarre', 'castellano', 'HISTORIA', '/catellano/fanfarre/historia.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (11, 'fanfarre', 'castellano', 'PALMARES', '/castellano/fanfarre/palmares.php', NULL, 2, 40);
INSERT INTO `menu` VALUES (12, 'fanfarre', 'castellano', 'COMPONENTES', '/castellano/fanfarre/componentes.php', NULL, 2, 50);
INSERT INTO `menu` VALUES (13, 'fanfarre', 'castellano', 'FOTOS', NULL, NULL, 2, 60);
INSERT INTO `menu` VALUES (15, 'tecnica', 'castellano', 'MANDIBULA', '/castellano/tecnica/mandibula.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (16, 'tecnica', 'castellano', 'RESPIRACION', '/catellanor/tecnica/espiracion.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (17, 'instrumentos', 'castellano', 'CLARINETE', '/castellano/instrumentos/clarinete.php', NULL, 2, 10);
INSERT INTO `menu` VALUES (18, 'instrumentos', 'castellano', 'TROMPETA', '/castellano/instrumentos/trompeta.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (19, 'instrumentos', 'castellano', 'TROMBON', '/castellano/instrumentos/trombon.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (20, 'descargas', 'castellano', '25 ANIVERSARIO', 'descargas.php', NULL, 1, 10);
INSERT INTO `menu` VALUES (25, 'tecnica', 'castellano', 'EMBOCADURA', '/castellano/tecnica/embocadura.php', NULL, 2, 10);
INSERT INTO `menu` VALUES (26, 'control', 'castellano', 'NOVEDADES', 'listado_novedades.php', NULL, 2, 70);
INSERT INTO `menu` VALUES (27, 'fija', 'castellano', 'SUGERENCIAS', '/castellano/sugerencias.php', NULL, 2, 10);
INSERT INTO `menu` VALUES (28, 'fija', 'castellano', 'LIBRO VISITAS', '/castellano/libro/index.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (29, 'fija', 'castellano', 'ENLACES', '/castellano/enlaces.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (31, 'fanfarre', 'euskera', 'SARRERA', '/euskera/fanfarre/sarrera.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (32, 'fanfarre', 'euskera', 'SARIAK', '/euskera/fanfarre/sariak.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (33, 'fanfarre', 'euskera', 'ARGAZKIAK', NULL, NULL, 2, 40);
INSERT INTO `menu` VALUES (34, 'fija', 'euskera', 'LOTURAK', '/euskera/loturak.php', NULL, 2, 10);
INSERT INTO `menu` VALUES (36, 'fanfarre', 'frances', 'INTRODUCTION', '/frances/fanfarre/introduction.php', NULL, 2, 20);
INSERT INTO `menu` VALUES (37, 'fanfarre', 'frances', 'PALMARES', '/frances/fanfarre/palmares.php', NULL, 2, 30);
INSERT INTO `menu` VALUES (38, 'fanfarre', 'frances', 'PHOTOS', '', NULL, 2, 40);
INSERT INTO `menu` VALUES (39, 'fija', 'frances', 'LIENS', '/frances/fanfarre/liens.php', NULL, 2, 10);
INSERT INTO `menu` VALUES (40, 'fija', 'euskera', 'VISITA LIBURUA', '/castellano/libro/index.php', NULL, 2, 20);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `menusuperior`
-- 

CREATE TABLE `menusuperior` (
  `Id_menusuperior` tinyint(4) NOT NULL auto_increment,
  `Menu` varchar(50) default NULL,
  `Enlace` varchar(100) default NULL,
  `Idioma` varchar(50) default NULL,
  `Id_clase` tinyint(4) default NULL,
  `Orden` tinyint(4) default NULL,
  `Posicion` varchar(50) default NULL,
  PRIMARY KEY  (`Id_menusuperior`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `menusuperior`
-- 

INSERT INTO `menusuperior` VALUES (1, 'IDIOMA', '/', 'castellano', 5, 10, 'iz');
INSERT INTO `menusuperior` VALUES (2, 'FANFARRE', '/castellano/fanfarre/index.php', 'castellano', 4, 20, 'iz');
INSERT INTO `menusuperior` VALUES (3, 'TECNICA', '/castellano/tecnica/embocadura.php?menu=tecnica', 'castellano', 4, 30, 'iz');
INSERT INTO `menusuperior` VALUES (4, 'INSTRUMENTOS', '/castellano/instrumentos/clarinete.php?menu=instrumentos', 'castellano', 4, 40, 'iz');
INSERT INTO `menusuperior` VALUES (5, 'HIZKUNTZA', '/', 'euskera', 5, 10, 'iz');
INSERT INTO `menusuperior` VALUES (6, 'FANFARRE', '/euskera/fanfarre/sarrera.php?idio=euskera', 'euskera', 4, 20, 'iz');
INSERT INTO `menusuperior` VALUES (7, 'TEKNIKA', '/castellano/tecnica/embocadura.php?idio=euskera&amp;menu=tecnica', 'euskera', 4, 30, 'iz');
INSERT INTO `menusuperior` VALUES (8, 'INSTRUMENTOAK', '/castellano/instrumentos/clarinete.php?idio=euskera&amp;menu=instrumentos', 'euskera', 4, 40, 'iz');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `meses`
-- 

CREATE TABLE `meses` (
  `Id` int(11) NOT NULL auto_increment,
  `Id_mes` int(11) default NULL,
  `Mes` varchar(50) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `meses`
-- 

INSERT INTO `meses` VALUES (1, 1, 'ENERO');
INSERT INTO `meses` VALUES (2, 2, 'FEBRERO');
INSERT INTO `meses` VALUES (3, 3, 'MARZO');
INSERT INTO `meses` VALUES (4, 4, 'ABRIL');
INSERT INTO `meses` VALUES (5, 5, 'MAYO');
INSERT INTO `meses` VALUES (6, 6, 'JUNIO');
INSERT INTO `meses` VALUES (7, 7, 'JULIO');
INSERT INTO `meses` VALUES (8, 8, 'AGOSTO');
INSERT INTO `meses` VALUES (9, 9, 'SEPTIEMBRE');
INSERT INTO `meses` VALUES (10, 10, 'OCTUBRE');
INSERT INTO `meses` VALUES (11, 11, 'NOVIEMBRE');
INSERT INTO `meses` VALUES (12, 12, 'DICIEMBRE');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `midi`
-- 

CREATE TABLE `midi` (
  `Id_midi` int(11) NOT NULL auto_increment,
  `Midi` varchar(50) default NULL,
  PRIMARY KEY  (`Id_midi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `midi`
-- 

INSERT INTO `midi` VALUES (1, 'noche_de_paz.mid');
INSERT INTO `midi` VALUES (2, 'last_christmas.mid');
INSERT INTO `midi` VALUES (3, 'waris.mid');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `noticias`
-- 

CREATE TABLE `noticias` (
  `Id_noticia` int(11) NOT NULL auto_increment,
  `Noticia` mediumtext,
  `Enlace` varchar(50) default NULL,
  PRIMARY KEY  (`Id_noticia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `noticias`
-- 

INSERT INTO `noticias` VALUES (1, 'Mi barba tiene 3 pelos, cuantos pelos tiene mi barba?', NULL);
INSERT INTO `noticias` VALUES (2, 'Las vakas del pueblo ya se han escapado, riau, riau', '/index.html');
INSERT INTO `noticias` VALUES (3, 'Pablito klavo un klavito, que klavito klavo Pablito?', NULL);
INSERT INTO `noticias` VALUES (6, 'Mi carro me lo robaron, anoche cuando dormia', '');
INSERT INTO `noticias` VALUES (10, 'Hola\r\ncara pan de mierda\r\neres tonto', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `palmares`
-- 

CREATE TABLE `palmares` (
  `Id_palmares` int(11) NOT NULL auto_increment,
  `Ano` varchar(50) collate latin1_spanish_ci default NULL,
  `Premio` mediumtext collate latin1_spanish_ci,
  `Foto` varchar(50) collate latin1_spanish_ci default NULL,
  `Comentario1` varchar(50) collate latin1_spanish_ci default NULL,
  `Comentario2` varchar(50) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`Id_palmares`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=32 ;

-- 
-- Volcar la base de datos para la tabla `palmares`
-- 

INSERT INTO `palmares` VALUES (1, '1.978', 'Primer Premio en Fiestas de Bilbao', 'bilbao78.jpg', 'Primer Premio', 'Fiestas de Bilbao');
INSERT INTO `palmares` VALUES (2, '1.979', 'Primer Premio en Fiestas de Bilbao', 'bilbao79.jpg', 'Primer Premio', 'Fiestas de Bilbao');
INSERT INTO `palmares` VALUES (3, '1.980', 'Premio de Animaci&oacute;n en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'condomanimacion.jpg', 'Premio Animaci&oacute;n', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (4, '1.981', 'Premio de Animaci&oacute;n en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'condomanimacion.jpg', 'Premio Animaci&oacute;n', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (5, '1.982', 'Palma de Plata en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'palmaplata82.jpg', 'Palma de Plata', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (6, '1.982', 'Premio de Humor en el Festival Internacional de Fanfarres de San Sebasti&aacute;n', 'donosti_humor.jpg', 'Premio de Humor', 'Festival de San Sebasti&aacute;n');
INSERT INTO `palmares` VALUES (7, '1.983', 'Palma de Oro en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'palmaoro.jpg', 'Palma de Oro', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (8, '1.984', 'Premio Especial de la Ciudad de Mont de Marsan', 'montdemarsan84.jpg', 'Premio Especial de la Ciudad', 'Mont de Marsan');
INSERT INTO `palmares` VALUES (9, '1.985', 'Premio Especial de la Ciudad de Mont de Marsan', 'montdemarsan85.jpg', 'Premio Especial de la Ciudad', 'Mont de Marsan');
INSERT INTO `palmares` VALUES (10, '1.986', 'Palma de Oro en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'palmaoro.jpg', 'Palma de Oro', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (11, '1.988', 'Palma de Plata en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'palmaplata82.jpg', 'Palma de Plata', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (12, '1.988', 'Castillo de Oro en el Festival Internacional de Bandas de Dalhem (B&eacute;lgica)', 'dalhem88.jpg', 'Castillo de Oro', 'Festival de Dalhem');
INSERT INTO `palmares` VALUES (13, '1.989', 'Palma de Bronce en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (14, '1.989', 'Castillo de Bronce en el Festival Internacional de Bandas de Dalhem (B&eacute;lgica)', 'dalhem89.jpg', 'Castillo de Bronce', 'Festival de Dalhem');
INSERT INTO `palmares` VALUES (15, '1.991', 'Palma de Bronce en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (16, '1.992', 'Palma de Plata en el Festival Internacional de Bandas y Pe&ntilde;as de Condom D''Armagnac', 'palmaplata82.jpg', 'Palma de Plata', 'Festival de Condom D''Armagnac');
INSERT INTO `palmares` VALUES (17, '1.993', 'Segundo Premio de Disfraces de los Carnavales de Bilbao', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (18, '1.994', 'Primer Premio de Disfraces de los Carnavales de Bilbao', 'bilbao94disfraz.jpg', 'Primer Premio de Disfraces', 'Carnavales de Bilbao');
INSERT INTO `palmares` VALUES (19, '1.994', 'Primer Premio de Musicalidad de los Carnavales de Bilbao', 'bilbao94musica.jpg', 'Primer Premio de Musicalidad', 'Carnavales de Bilbao');
INSERT INTO `palmares` VALUES (20, '1.994', 'Castillo de Bronce en el Festival Internacional de Bandas de Dalhem (B&eacute;lgica)', 'dalhem94.jpg', 'Castillo de Bronce', 'Festival de Dalhem');
INSERT INTO `palmares` VALUES (21, '1.995', 'Castillo de Bronce en el Festival Internacional de Bandas de Dalhem (B&eacute;lgica)', 'dalhem95.jpg', 'Castillo de Bronce', 'Festival de Dalhem');
INSERT INTO `palmares` VALUES (22, '1.995', 'Segundo Premio de Musicalidad de los Carnavales de Bilbao', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (23, '1.996', 'Primer Premio de Musicalidad de los Carnavales de Bilbao', 'bilbao96musica.jpg', 'Primer Premio de Musicalidad', 'Carnavales de Bilbao');
INSERT INTO `palmares` VALUES (24, '1.999', 'Le&oacute;n de Plata en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (25, '2.000', 'Le&oacute;n de Bronce en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (26, '2.000', 'Premio de Pasacalles en el Festival Internacional de Bandas de Rochechouart (Francia)', 'rochechouart_pasacalles_2k.jpg', 'Premio de Pasacalles', 'Festival de Rochechouart');
INSERT INTO `palmares` VALUES (27, '2.000', 'Tercer Premio de Animaci&oacute;n en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (28, '2.001', 'Le&oacute;n de Bronce en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (29, '2.001', 'Tercer Premio de Animaci&oacute;n en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (30, '2.001', 'Tercer Premio de Musicalidad en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);
INSERT INTO `palmares` VALUES (31, '2.001', 'Premio de Turismo en el Festival Internacional de Bandas de Rochechouart (Francia)', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `socios`
-- 

CREATE TABLE `socios` (
  `Id` int(11) NOT NULL auto_increment,
  `Nombre` varchar(50) NOT NULL default '',
  `Apellidos` varchar(50) default NULL,
  `Instrumento1` varchar(50) default NULL,
  `Instrumento2` varchar(50) default NULL,
  `Instrumento3` varchar(50) default NULL,
  `Fecha_ingreso1` date default NULL,
  `Fecha_baja1` date default NULL,
  `Fecha_ingreso2` date default NULL,
  `Fecha_baja2` date default NULL,
  `Actual` tinyint(1) default NULL,
  `Foto` varchar(50) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

-- 
-- Volcar la base de datos para la tabla `socios`
-- 

INSERT INTO `socios` VALUES (1, 'Angel', 'Manzanas Antonio', 'Director', '', '', NULL, '1989-09-01', NULL, NULL, 0, '');
INSERT INTO `socios` VALUES (2, 'I&ntilde;aki', 'Herrera Barturen', 'Tesorero', '', '', '1978-07-01', '1990-10-20', NULL, NULL, 0, '');
INSERT INTO `socios` VALUES (3, 'Luis Mariano', 'Redondo Mesenguer', 'Botijo', '', '', '1980-05-01', NULL, NULL, NULL, 1, '');
INSERT INTO `socios` VALUES (4, 'Cristina', 'Escribano Herrera', 'Bandera', NULL, NULL, '1987-05-01', '1989-08-10', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (5, 'Kepa', 'De Diego Bandeira', 'Bombo', '', '', '1979-03-15', '1991-03-03', NULL, NULL, 0, '');
INSERT INTO `socios` VALUES (6, 'Roberto', 'Garc&iacute;a Alonso', 'Bombo', 'Platos', NULL, '1984-05-10', NULL, '1989-03-02', '1998-09-27', 0, '6_roberto');
INSERT INTO `socios` VALUES (7, 'Ibon', 'Meabe Vivar', 'Caja', NULL, NULL, '1987-05-10', '1995-11-25', NULL, NULL, 0, '7_ibon');
INSERT INTO `socios` VALUES (8, 'Raimundo', 'Flores', 'Atabal', NULL, NULL, '1987-06-01', '1987-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (9, 'I&ntilde;aki', 'Goikoetxea Gomez', 'Trombón', NULL, NULL, '1985-01-15', NULL, NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (10, 'Izko', 'Cadenal', 'Trombón', NULL, NULL, '1986-11-20', '1989-12-12', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (11, 'Garikoitz', 'Badiola Urquiza', 'Trombón', NULL, NULL, '1986-11-20', '1991-09-28', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (12, 'Alberto', 'Ruiz Hernandez', 'Helicón', NULL, NULL, '1986-11-20', '1989-12-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (13, 'Susana', 'Cabrera Gago', 'Helicón', 'Bombardino', NULL, '1987-04-20', '1991-06-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (14, 'Rafael', 'Rodriguez Mart&iacute;n', 'Helicón', NULL, NULL, '1986-11-01', '1988-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (15, 'Andres', 'Casas Santamar&iacute;a', 'Helicón', 'Tuba', NULL, '1981-01-16', '1990-10-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (16, 'I&ntilde;aki', 'Angulo Redondo', 'Trompeta', NULL, NULL, '1979-01-01', '1990-10-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (17, 'Eneko', 'Pelles Redondo', 'Trompeta', NULL, NULL, NULL, '1987-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (18, 'Victor', 'Salgado Piquelo', 'Trompeta', NULL, NULL, '1983-10-01', '1989-10-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (19, 'Aitor', 'Arpirez Navascues', 'Trompeta', NULL, NULL, '1986-11-01', '1992-10-03', NULL, NULL, 0, '19_aitor');
INSERT INTO `socios` VALUES (20, 'Alejandro', 'del Arenal Huerta', 'Trompeta', NULL, NULL, '1986-11-01', NULL, NULL, NULL, 0, '20_alejandro');
INSERT INTO `socios` VALUES (21, 'Aitor', 'Campillo Posada', 'Trompeta', NULL, NULL, '1986-11-01', '1992-10-01', NULL, NULL, 0, '21_aitor');
INSERT INTO `socios` VALUES (22, 'Xabier', 'Arroyo Robles', 'Fliscorno', NULL, NULL, '1982-09-15', '1995-11-25', NULL, NULL, 0, '22_xabier');
INSERT INTO `socios` VALUES (23, 'Carlos', 'de Miguel Alfaro', 'Fliscorno', NULL, NULL, '1982-09-20', '1989-12-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (24, 'I&ntilde;aki', 'Iriarte Minguez', 'Trompeta', 'Fliscorno', NULL, '1984-04-01', '1994-10-01', NULL, NULL, 0, '24_i&ntilde;aki');
INSERT INTO `socios` VALUES (25, 'Esperanza', 'Manzanas Antonio', 'Requinto', NULL, NULL, '1984-09-01', '1990-10-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (26, 'Alaitz', 'Badiola Urquiza', 'Requinto', NULL, NULL, '1986-11-01', '1992-10-03', NULL, NULL, 0, '26_alaitz');
INSERT INTO `socios` VALUES (27, 'Estrella', 'Villanueva Fernandez', 'Clarinete', NULL, NULL, '1979-01-01', '1987-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (28, 'Marcos', 'Salgado Piquelo', 'Clarinete', NULL, NULL, '1983-10-01', '1988-11-10', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (29, 'Richard', 'Lorenzo Ryan', 'Clarinete', NULL, NULL, '1985-10-01', '1988-11-10', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (30, 'Oscar', 'Rodriguez Sanchez', 'Clarinete', NULL, NULL, '1986-11-01', '1990-07-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (31, 'Diego', 'Garretas Gonzalo', 'Clarinete', NULL, NULL, '1986-11-01', NULL, NULL, NULL, 1, '31_diego');
INSERT INTO `socios` VALUES (32, 'Julia', 'Arpirez Navascues', 'Clarinete', NULL, NULL, '1986-11-01', '1992-10-01', NULL, NULL, 0, '32_julia');
INSERT INTO `socios` VALUES (33, 'Ziortza', 'Etxaburu Lersundi', 'Clarinete', NULL, NULL, '1986-11-01', '1990-09-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (34, 'Karlota', 'Rojo Plaza', 'Saxo Soprano', NULL, NULL, '1986-11-01', '1988-11-21', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (35, 'Oscar', 'Redondo Etxebarria', 'Saxo Soprano', NULL, NULL, '1986-11-01', '1989-09-20', NULL, NULL, 0, '35_oscar');
INSERT INTO `socios` VALUES (36, 'Alberto', 'Blanco Mart&iacute;nez', 'Saxo Alto', NULL, NULL, '1986-11-01', '1991-09-28', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (37, 'Txema', 'Bola&ntilde;os Redondo', 'Saxo Alto', NULL, NULL, '1986-11-01', '1989-03-31', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (38, 'Ana Rosa', 'de la Fuente Lara', 'Saxo Alto', NULL, NULL, '1986-11-01', '1987-09-28', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (39, 'Pamen', 'Roman Martinez', 'Saxo Alto', NULL, NULL, '1986-11-01', '1994-10-01', NULL, NULL, 0, '39_carmen');
INSERT INTO `socios` VALUES (40, 'Aitor', 'Mart&iacute;n Garc&iacute;a', 'Saxo Alto', NULL, NULL, '1985-10-01', '1992-10-03', NULL, NULL, 0, '40_aitor');
INSERT INTO `socios` VALUES (41, 'Imanol', 'Goenaga Garc&iacute;a', 'Saxo Tenor', NULL, NULL, '1982-02-01', '1989-12-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (42, 'Elena', 'Roman Lebrato', 'Saxo Tenor', NULL, NULL, '1986-11-01', NULL, NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (43, 'I&ntilde;aki', 'Perez Martelo', 'Saxo Tenor', NULL, NULL, '1985-10-01', '1989-12-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (44, 'Marcos', 'Zat&oacute;n Lopez', 'Saxo Barítono', NULL, NULL, '1986-11-01', '1987-03-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (45, 'Maite', 'Perez Martelo', 'Bandera', NULL, NULL, '1987-10-03', NULL, NULL, NULL, 0, '45_maite');
INSERT INTO `socios` VALUES (46, 'Alex', 'Etxaburu Lersundi', 'Bombardino', NULL, NULL, '1987-10-03', '1989-12-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (47, 'Jose Mº', 'Martin Sanchez', 'Caja', NULL, NULL, '1988-10-17', '1989-06-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (48, 'Roberto', 'Gonzalez Perez', 'Trombón', NULL, NULL, '1988-10-15', '1992-10-03', NULL, NULL, 0, '48_roberto');
INSERT INTO `socios` VALUES (49, 'Sergio', 'Martin Ruiz', 'Bombardino', NULL, NULL, '1988-10-15', NULL, NULL, NULL, 0, '49_sergio');
INSERT INTO `socios` VALUES (50, 'Naia', 'Arana Olano', 'Saxo Alto', NULL, NULL, '1989-06-01', '1989-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (51, 'Sandra', 'Miguel', 'Clarinete', NULL, NULL, '1988-10-01', '1989-06-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (52, 'Luis Miguel', 'Sangrador Montero', 'Saxo Alto', NULL, NULL, '1987-10-01', '1988-02-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (53, 'Maite', 'Tobar de Mena', 'Saxo Tenor', NULL, NULL, '1988-10-01', '1990-10-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (54, 'Elena', 'Blanco Martinez', 'Saxo Soprano', NULL, NULL, '1988-11-01', NULL, NULL, NULL, 0, '54_elena');
INSERT INTO `socios` VALUES (55, 'Asier', 'Torrijos Crespo', 'Clarinete', NULL, NULL, '1987-10-01', '1995-11-25', NULL, NULL, 0, '55_asier');
INSERT INTO `socios` VALUES (56, 'David', 'Cabrera Gago', 'Clarinete', NULL, NULL, '1987-10-03', '1992-07-17', '1998-09-27', '1999-08-15', 0, '56_david');
INSERT INTO `socios` VALUES (57, 'Rafael', 'Rodriguez Sanchez', 'Trompeta', NULL, NULL, '1988-09-01', '1990-07-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (58, 'Manin', 'Tobar de Mena', 'Helicón', 'Trompeta', 'Caja', '1988-10-01', '1995-11-25', NULL, NULL, 0, '58_manin');
INSERT INTO `socios` VALUES (59, 'Iratxe', 'Garc&iacute;a Perez', 'Trombón', 'Bandera', NULL, '1990-05-05', '1995-11-25', NULL, NULL, 0, '59_iratxe');
INSERT INTO `socios` VALUES (60, 'Monica', 'Garcia Fernandez', 'Bombardino', NULL, NULL, '1990-11-01', '1995-04-29', NULL, NULL, 0, '60_monica');
INSERT INTO `socios` VALUES (61, 'Juan Marcos', 'Sanjuanes', 'Trompeta', NULL, NULL, '1989-10-01', '1996-01-13', NULL, NULL, 0, '61_juan');
INSERT INTO `socios` VALUES (62, 'Ainhoa', 'Santamar&iacute;a Umaran', 'Clarinete', 'Requinto', NULL, '1989-11-01', '1996-09-15', NULL, NULL, 0, '62_ainhoa');
INSERT INTO `socios` VALUES (63, 'Amaia', 'Mara&ntilde;on Lizundia', 'Clarinete', NULL, NULL, '1989-11-01', '1995-11-25', NULL, NULL, 0, '63_amaia');
INSERT INTO `socios` VALUES (64, 'Goizalde', 'Ruiz Santos', 'Clarinete', NULL, NULL, '1990-01-01', NULL, NULL, NULL, 0, '64_goizalde');
INSERT INTO `socios` VALUES (65, 'Itsasne', 'Larruzea Zuloaga', 'Saxo Soprano', NULL, NULL, '1990-02-01', NULL, NULL, NULL, 0, '65_itzasne');
INSERT INTO `socios` VALUES (66, 'Gorka', 'Bilbao Acha', 'Saxo Alto', NULL, NULL, '1989-10-01', NULL, NULL, NULL, 0, '66_gorka');
INSERT INTO `socios` VALUES (67, 'Borja', 'Del Amo Mat&eacute;', 'Trompeta', NULL, NULL, '1990-10-01', NULL, NULL, NULL, 0, '67_borja');
INSERT INTO `socios` VALUES (68, 'Yolanda', 'Esteban Manso', 'Saxo Alto', NULL, NULL, '1990-01-02', NULL, NULL, NULL, 0, '68_yolanda');
INSERT INTO `socios` VALUES (69, 'Juan', 'Moreno Cebadero', 'Saxo Alto', NULL, NULL, '1990-10-01', '1992-06-18', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (70, 'Oscar', 'Redondo Etxebarria', 'Saxo Tenor', NULL, NULL, '1990-10-01', '1991-12-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (71, 'Sandra', 'Barrio Albes', NULL, NULL, NULL, '1990-12-01', '1991-05-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (72, 'Estefania', 'Jimenez Iglesias', 'Clarinete', NULL, NULL, '1991-01-01', '1996-09-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (73, 'Sergio', 'Garcia', 'Clarinete', NULL, NULL, '1990-11-01', NULL, NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (74, 'Naiara', 'Diez Garmendia', 'Trombón', NULL, NULL, '1990-11-01', '1998-02-05', NULL, NULL, 0, '74_naiara');
INSERT INTO `socios` VALUES (75, 'Aratz', 'Diez Garmendia', 'Trombón', NULL, NULL, '1990-11-01', '1995-11-25', NULL, NULL, 0, '75_aratz');
INSERT INTO `socios` VALUES (76, 'Ander', 'Galdeano Mondragon', 'Platos', NULL, NULL, '1990-12-01', '1991-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (77, 'Leire', 'Belmonte Fernandez', 'Saxo Tenor', 'Bandera', NULL, '1991-04-01', '1992-09-01', '1999-09-12', NULL, 1, '77_leire');
INSERT INTO `socios` VALUES (78, 'Miguel', 'Arbelaiz San Roman', 'Trombón', NULL, NULL, '1991-05-01', '1991-06-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (79, 'Mikel', 'Torrijos Crespo', 'Saxo Alto', NULL, NULL, '1991-09-28', '1996-01-13', NULL, NULL, 0, '79_mikel');
INSERT INTO `socios` VALUES (80, 'Leire', 'Lopez Intxaurbe', 'Bombardino', NULL, NULL, '1991-09-28', '1992-10-10', NULL, NULL, 0, '80_leire');
INSERT INTO `socios` VALUES (81, 'Unai', 'Santamar&iacute;a Umaran', 'Trompeta', NULL, NULL, '1991-09-28', '1995-11-25', '1996-10-10', '1999-09-24', 0, '81_unai');
INSERT INTO `socios` VALUES (82, 'Ivan', 'Perez Pison', 'Helicón', NULL, NULL, '1991-09-28', '1992-09-03', NULL, NULL, 0, '82_ivan');
INSERT INTO `socios` VALUES (83, 'Aida', 'Diez Garmendia', 'Trompeta', NULL, NULL, '1991-09-28', '1999-01-06', NULL, NULL, 0, '83_aida');
INSERT INTO `socios` VALUES (84, 'Javier', 'Angulo Romero', 'Platos', NULL, NULL, '1992-01-05', '1994-09-01', NULL, NULL, 0, '84_javier');
INSERT INTO `socios` VALUES (85, 'Ugaitz', 'Rodriguez Delgado', 'Trompeta', NULL, NULL, '1991-09-01', '1996-09-15', NULL, NULL, 0, '85_ugaitz');
INSERT INTO `socios` VALUES (86, 'Jose Manuel', 'Garela Cadahia', 'Clarinete', NULL, NULL, '1991-09-01', '1993-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (87, 'Sonia', 'Galan Garcia', 'Bandera', NULL, NULL, '1992-10-31', '1993-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (88, 'Aitor', 'Blanco Garc&iacute;a', 'Platos', NULL, NULL, '1992-10-31', '1993-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (89, 'Jonatan', 'Nu&ntilde;ez Vizcaino', NULL, NULL, NULL, '1992-10-31', '1993-03-01', NULL, NULL, 0, '89_jonathan');
INSERT INTO `socios` VALUES (90, 'Joseba', 'Bacorro Martinez', 'Bombardino', NULL, NULL, '1992-10-31', '1993-06-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (91, 'Fernando', 'Jimenez Iglesias', 'Saxo Alto', NULL, NULL, '1992-10-31', '1996-09-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (92, 'Sara', 'Velez Lopez', 'Clarinete', NULL, NULL, '1992-11-14', '1995-11-25', '1996-12-11', '1999-06-20', 0, NULL);
INSERT INTO `socios` VALUES (93, 'Xabier', 'Tamayo Perez', 'Saxo Alto', NULL, NULL, '1993-02-01', '1996-01-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (94, 'Patricia', 'Pe&ntilde;a Suero', 'Bandera', NULL, NULL, '1993-10-01', '1995-07-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (95, 'Imanol', 'Pajaritabal Puente', 'Helicón', 'Platos', NULL, '1994-05-01', '1996-01-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (96, 'Jon', 'Urbizu Vidal', 'Bombo', NULL, NULL, '1993-11-01', '1995-11-25', '1997-12-13', '1998-06-13', 0, NULL);
INSERT INTO `socios` VALUES (97, 'Estibaliz', 'Olasagasti Alonso', 'Requinto', NULL, NULL, '1993-01-08', '1996-04-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (98, 'Aitor', 'Olasagasti Alonso', 'Fliscorno', NULL, NULL, '1993-01-01', '1997-01-23', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (99, 'Almudena', 'Castillo Gabiria', 'Bombardino', NULL, NULL, '1993-01-23', '1997-03-01', '1997-10-04', '1998-06-13', 0, NULL);
INSERT INTO `socios` VALUES (100, 'Arantza', 'La&ntilde;a Aramburu', 'Clarinete', NULL, NULL, '1993-02-01', '1995-03-11', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (101, 'Marta', 'Vallejo Gonzalez', 'Saxo Alto', NULL, NULL, '1993-02-01', '1996-09-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (102, 'Arturo', 'Ajanguiz Sanchez', 'Saxo Alto', 'Saxo Tenor', NULL, '1993-01-01', '1996-06-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (103, 'Mikel', 'Elorriaga Zubiaur', 'Clarinete', NULL, NULL, '1994-03-01', '1995-05-05', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (104, 'Unai', 'Elorriaga Zubiaur', 'Saxo Tenor', NULL, NULL, '1994-03-01', '1995-05-05', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (105, 'Gustavo Adolfo', 'Moreno Rodriguez', 'Saxo Soprano', NULL, NULL, '1993-03-01', '1995-11-25', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (106, 'Aitor', 'Ruiz de Azua Menica', 'Saxo Tenor', NULL, NULL, '1993-11-01', '1998-09-27', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (107, 'Urko', 'Lizarralde Suarez', 'Caja', 'Platos', NULL, '1994-10-01', '1998-06-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (108, 'Ander', 'de Diego Cortazar', 'Helicón', NULL, NULL, '1994-10-01', '1995-11-25', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (109, 'Alberto', 'Herranz Merino', 'Fliscorno', NULL, NULL, '1994-11-01', '1996-08-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (110, 'Daniel', 'Tamayo Perez', 'Trompeta', NULL, NULL, '1994-11-01', '1996-09-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (111, 'Maria', 'Garcia Fernandez', 'Saxo Alto', 'Saxo Soprano', NULL, '1994-11-01', NULL, NULL, NULL, 1, '111_maria');
INSERT INTO `socios` VALUES (112, 'Mikel', 'Ibarlucea Barruetabe&ntilde;a', 'Saxo Alto', NULL, NULL, '1994-11-01', '1998-01-24', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (113, 'Aketza', 'Iglesias Mota', 'Saxo Alto', NULL, NULL, '1994-11-01', NULL, NULL, NULL, 1, '113_aketza');
INSERT INTO `socios` VALUES (114, 'Sergio', 'Martin Gonzalez', 'Saxo Tenor', NULL, NULL, '1994-11-01', '1996-01-18', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (115, 'Gorka', 'Ceballos Gregorio', 'Bombardino', NULL, NULL, '1995-03-01', '1996-04-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (116, 'Mikel', 'Gonzalez Ibarrondo', 'Helicón', 'Platos', '', '1995-10-01', NULL, NULL, NULL, 1, '116_mikel');
INSERT INTO `socios` VALUES (117, 'Dani', 'Fernandez Amez', 'Trombón', NULL, NULL, '1995-10-01', NULL, NULL, NULL, 1, '117_dani');
INSERT INTO `socios` VALUES (118, 'Vanessa', 'Dubos Nutini', 'Trompeta', 'Bandera', NULL, '1996-02-01', '1998-03-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (119, 'Alexander', 'Vazquez Carreira', 'Trombón', NULL, NULL, '1996-01-01', '2000-08-16', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (120, 'Jonathan', 'Vazquez Carreira', 'Clarinete', NULL, NULL, '1996-01-01', '2000-08-16', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (121, 'Sheila', 'Vazquez Carreira', 'Requinto', NULL, NULL, '1996-01-01', '1996-08-16', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (122, 'Endika', 'Zubero', 'Saxo Alto', NULL, NULL, '1996-03-01', '1998-09-27', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (123, 'Esther', 'Marinero', 'Clarinete', NULL, NULL, '1996-04-27', '1996-10-06', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (124, 'Rosa Mº', 'Sanchez', 'Trompeta', NULL, NULL, '1996-04-24', '1996-10-06', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (125, 'Jessica', 'Benitez Rodriguez', 'Clarinete', NULL, NULL, '1996-04-27', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (126, 'Aitor', 'San Juan Sanchez', 'Helicón', NULL, NULL, '1996-04-24', '1997-01-27', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (127, 'Alicia', 'Herranz Merino', 'Trombón', NULL, NULL, '1996-04-30', '2000-03-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (128, 'Gonzalo', 'Palomino Labrador', 'Saxo Tenor', NULL, NULL, '1996-05-25', '1996-12-12', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (129, 'Jose', 'Fernando Cano', 'Clarinete', NULL, NULL, '1996-10-06', '1997-01-11', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (130, 'Jose David', 'Martin', 'Saxo Tenor', NULL, NULL, '1996-10-06', '1997-02-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (131, 'Ruben', 'Ruiz', 'Caja', NULL, NULL, '1996-10-06', '1999-04-02', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (132, 'Itsaso', 'Arrien Murillo', 'Clarinete', NULL, NULL, '1996-10-06', '1998-03-28', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (133, 'Amaia', 'Acha Casal', 'Trombón', 'Saxo Alto', NULL, '1996-10-06', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (134, 'Unai', 'Sacona', 'Trompeta', NULL, NULL, '1996-10-06', '1997-02-07', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (135, 'I&ntilde;aki', 'Solinis', 'Bombardino', NULL, NULL, '1996-10-06', '1997-01-11', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (136, 'Iratxe', 'Perez Carballo', 'Saxo Alto', '', '', '1996-10-06', NULL, NULL, NULL, 0, '136_iratxe');
INSERT INTO `socios` VALUES (137, 'Miguel Angel', 'Berezo', 'Saxo Alto', NULL, NULL, '1996-10-06', '1997-02-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (138, 'Beronica', 'Barrera Alonso', 'Bombardino', NULL, NULL, '1997-01-09', '1997-10-05', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (139, 'Asier', 'Basabe', 'Bombo', NULL, NULL, '1996-12-11', '1997-10-04', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (140, 'Egoitz', 'Trebolazabala Garaigordobil', 'Caja', 'Platos', NULL, '1996-12-11', NULL, NULL, NULL, 1, '140_egoitz');
INSERT INTO `socios` VALUES (141, 'Carlos', 'Lopez Gomez', 'Trombón', NULL, NULL, '1996-12-11', '1997-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (142, 'Elena', 'Fernandez Lezama', 'Bombardino', '', '', '1996-12-11', NULL, NULL, NULL, 0, '142_elena');
INSERT INTO `socios` VALUES (143, 'Monica', 'Rollon Carral', 'Helicón', NULL, NULL, '1996-12-11', '1998-06-26', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (144, 'Mikel', 'Regidor Serrano', 'Helicón', NULL, NULL, '1996-12-11', '1998-01-10', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (145, 'Carlos', 'Soguero', 'Trompeta', NULL, NULL, '1996-12-11', '1999-03-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (146, 'Ruben', 'Gonzalez Lopez', 'Trompeta', NULL, NULL, '1996-12-11', '1998-09-27', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (147, 'Jon', 'Borga&ntilde;a Embeita', 'Fliscorno', NULL, NULL, '1996-12-11', '1997-02-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (148, 'Urko', 'Fresnedo Sarasketa', 'Fliscorno', NULL, NULL, '1996-12-11', '1997-02-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (149, 'Julen', 'Regidor Serrano', 'Requinto', NULL, NULL, '1996-12-11', '1978-02-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (150, 'Gorka', 'Regidor Serrano', 'Clarinete', NULL, NULL, '1996-12-11', '1999-06-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (151, 'Jagoba', 'Goikoetxea Castillo', 'Trompeta', 'Clarinete', NULL, '1996-12-11', '2000-08-03', '2002-10-06', NULL, 1, '151_jagoba');
INSERT INTO `socios` VALUES (152, 'Itziar', 'Goikoetxea Castillo', 'Clarinete', NULL, NULL, '1996-12-11', '1998-04-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (153, 'Aitziber', 'Otaola Martinez', 'Clarinete', NULL, NULL, '1996-12-11', '2000-03-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (154, 'Ainara', 'Trebolazabala Garaigordobil', 'Saxo Tenor', 'Saxo Alto', 'Saxo Soprano', '1996-12-11', NULL, NULL, NULL, 1, '154_ainara');
INSERT INTO `socios` VALUES (155, 'Lander', 'Escala', 'Saxo Alto', NULL, NULL, '1996-12-11', '1997-05-07', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (156, 'Ainhoa', 'Gokoetxea Castillo', 'Saxo Tenor', NULL, NULL, '1996-12-11', '1999-03-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (157, 'David', 'Calleja Azpeitia', 'Trompeta', NULL, NULL, '1997-02-25', '1997-05-07', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (158, 'Saray', 'Marcos Cayero', 'Bombardino', 'Bandera', '', '1997-04-15', NULL, NULL, NULL, 0, '158_saray');
INSERT INTO `socios` VALUES (159, 'Miriam', 'Orobio Amador', 'Saxo Tenor', NULL, NULL, '1997-04-15', '1999-05-26', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (160, 'Javier', 'Melendez Rojo', 'Saxo Tenor', NULL, NULL, '1997-07-01', '1998-06-06', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (161, 'Marta', 'Lopez Da&ntilde;obeitia', 'Saxo Alto', NULL, NULL, '1997-07-01', '1998-06-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (162, 'Olga', 'Iba&ntilde;ez Ribas', 'Saxo Alto', NULL, NULL, '1997-10-04', '1999-03-15', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (163, 'Eukeni', 'Eibar Delgado', 'Trombón', NULL, NULL, '1997-10-04', '1999-09-12', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (164, 'Amaia', 'Lopez Da&ntilde;obaitia', 'Trombón', NULL, NULL, '1997-10-04', '1998-06-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (165, 'Zuri&ntilde;e', 'Benitez Rodriguez', 'Bombardino', '', '', '1997-10-04', NULL, NULL, NULL, 0, '165_zuri&ntilde;e');
INSERT INTO `socios` VALUES (166, 'Amagoia', 'Etxebarria Delgado', 'Trompeta', NULL, NULL, '1997-10-04', '2000-09-20', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (167, 'Alex', 'Marcos Cayero', 'Trompeta', NULL, NULL, '1997-10-04', NULL, NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (168, 'Eluska', 'Pascual Corral', 'Clarinete', NULL, NULL, '1997-10-04', '1997-11-21', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (169, 'Lorea', 'Rino Fernandez', 'Fliscorno', NULL, NULL, '1997-10-04', '1998-02-13', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (170, 'Olga', 'Rollon Carral', 'Clarinete', NULL, NULL, '1997-10-09', '1998-09-27', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (171, 'Alberto', 'Acha Casal', 'Trompeta', NULL, NULL, '1997-10-04', NULL, NULL, NULL, 1, '171_alberto');
INSERT INTO `socios` VALUES (172, 'Ibon', 'Txarterina Fuentes', 'Trompeta', NULL, NULL, '1997-10-04', '1998-09-27', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (173, 'Lourdes', 'Santamaria Dominguez', 'Bandera', NULL, NULL, '1998-06-13', '1999-04-09', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (174, 'Gorka', 'Basterretxea Caceres', 'Saxo Alto', NULL, NULL, '1998-09-30', '2000-12-17', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (175, 'Ibon', 'Gonzalez Goikuria', 'Bombo', NULL, NULL, '1998-10-31', '1999-02-12', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (176, 'Aritz', 'Calvo Pe&ntilde;a', 'Saxo Soprano', NULL, NULL, '1999-09-12', '2002-10-06', NULL, NULL, 0, '176_aritz');
INSERT INTO `socios` VALUES (177, 'Eider', 'Miguel Arroyo', 'Clarinete', '', '', '1999-09-12', NULL, NULL, NULL, 0, '');
INSERT INTO `socios` VALUES (178, 'Angela', 'Paisan Gutierrez', 'Clarinete', NULL, NULL, '1999-09-12', '2001-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (179, 'Unai', 'Barrenetxea Ripodas', 'Trompeta', NULL, NULL, '1999-09-12', '2002-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (180, 'Andoni', 'Garcia Fernandez', 'Bombo', NULL, NULL, '1999-09-12', NULL, NULL, NULL, 1, '180_andoni');
INSERT INTO `socios` VALUES (181, 'Patricia', 'Ruiz Fernandez', 'Saxo Tenor', NULL, NULL, '1999-09-12', '2001-03-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (182, 'Bea', 'Ruiz Fernandez', 'Saxo Soprano', NULL, NULL, '1999-09-12', '2001-03-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (183, 'Iker', 'Mu&ntilde;oz Pareja', 'Platos', NULL, NULL, '1999-04-12', '2001-02-03', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (184, 'Enrique', 'Arbelaiz Cabrera', 'Trompeta', NULL, NULL, '1999-09-12', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (185, 'Susana', 'Benitez Rodriguez', 'Trombón', 'Bandera', NULL, '2000-05-09', NULL, NULL, NULL, 1, '185_susana');
INSERT INTO `socios` VALUES (186, 'Joseba Andoni', 'Garcia Delgado', 'Clarinete', NULL, NULL, '2000-05-20', NULL, NULL, NULL, 1, '186_joseba');
INSERT INTO `socios` VALUES (187, 'Nerea', 'Zufiria Santos', 'Clarinete', NULL, NULL, '2000-10-28', '2002-10-06', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (188, 'Isaak', 'Santos Perez', 'Trompeta', NULL, NULL, '2000-10-28', '2001-06-06', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (189, 'Eric', 'Tharaud', 'Trombón', NULL, NULL, '2000-10-28', '2001-01-15', NULL, NULL, 0, '189_eric');
INSERT INTO `socios` VALUES (190, 'Marta', 'Franco Caballero', 'Bandera', NULL, NULL, '2001-07-13', '2002-05-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (191, 'Mikel', 'Martinez Lopez', 'Platos', '', '', '2001-07-23', NULL, NULL, NULL, 0, '191_mikel');
INSERT INTO `socios` VALUES (192, 'David', 'Saiz Rodriguez', 'Saxo Alto', NULL, NULL, '2001-11-10', '2002-09-01', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (193, 'Natan', 'Garcia Helguera', 'Trompeta', NULL, NULL, '2001-11-10', NULL, NULL, NULL, 0, '193_natan');
INSERT INTO `socios` VALUES (194, 'Zuri&ntilde;e', 'Sagarduy Ramirez', 'Clarinete', NULL, NULL, '2001-11-10', '2002-10-06', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (195, 'Rafa', 'Romero Cortes', 'Trompeta', NULL, NULL, '2002-03-25', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (196, 'David', 'Garc&iacute;a Estevez', 'Clarinete', NULL, NULL, '2001-02-10', '2002-10-14', NULL, NULL, 0, NULL);
INSERT INTO `socios` VALUES (197, 'Ixone', 'Salinas Marijuan', 'Trompeta', 'Bandera', NULL, '2002-10-06', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (198, 'Alazne', 'Garc&iacute;a Est&eacute;vez', 'Bandera', '', '', '2002-12-05', NULL, NULL, NULL, 0, '');
INSERT INTO `socios` VALUES (199, 'Elixabet', 'Trujillo Ramirez', 'Clarinete', NULL, NULL, '2002-12-05', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (200, 'Aritz', 'Morales Blanco', 'Caja', NULL, NULL, '2002-10-06', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (201, 'Guillermo', 'Lafuente Garc&iacute;a', 'Trombón', NULL, NULL, '2002-10-06', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (202, 'Imanol', 'Sanchez Regidor', 'Clarinete', NULL, NULL, '2002-10-06', NULL, NULL, NULL, 1, NULL);
INSERT INTO `socios` VALUES (203, 'Jokin', 'Herrero', 'Saxo Alto', NULL, NULL, '2002-10-06', NULL, NULL, NULL, 1, '203_jokin');
INSERT INTO `socios` VALUES (204, 'Itziar', 'Albeniz Diaz', 'Saxo Alto', '', '', '2002-12-27', NULL, NULL, NULL, 0, '');
INSERT INTO `socios` VALUES (205, 'Hector', 'Martin Tio', 'Helicón', NULL, NULL, '2003-01-14', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `submenu`
-- 

CREATE TABLE `submenu` (
  `Id_submenu` int(11) NOT NULL auto_increment,
  `Menu` varchar(50) default NULL,
  `Submenu` varchar(50) default NULL,
  `Enlace_control` varchar(50) default NULL,
  `Enlace` varchar(50) default NULL,
  `Id_clase` int(11) default NULL,
  `Orden` int(11) default NULL,
  PRIMARY KEY  (`Id_submenu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- 
-- Volcar la base de datos para la tabla `submenu`
-- 

INSERT INTO `submenu` VALUES (1, 'FOTOS', 'Temporada 00-01', 'listado_fotos.php?car=00_01', 'fotos.php?car=00_01', 3, 10);
INSERT INTO `submenu` VALUES (2, 'FOTOS', 'Temporada 99-00', 'listado_fotos.php?car=99_00', 'fotos.php?car=99_00', 3, 20);
INSERT INTO `submenu` VALUES (3, 'FOTOS', '25 Aniversario', 'listado_fotos.php?car=25a', 'fotos.php?car=25a', 1, 30);
INSERT INTO `submenu` VALUES (4, 'FOTOS', '20 Aniversario', 'listado_fotos.php?car=20a', 'fotos.php?car=20a', 1, 40);
INSERT INTO `submenu` VALUES (5, 'FOTOS', '15 Aniversario', 'listado_fotos.php?car=15a', 'fotos.php?car=15a', 1, 50);
INSERT INTO `submenu` VALUES (6, 'FOTOS', '10 Aniversario', 'listado_fotos.php?car=10a', 'fotos.php?car=10a', 1, 60);
INSERT INTO `submenu` VALUES (13, 'FOTOS', 'Temporada 01-02', 'listado_fotos.php?car=01_02', 'fotos.php?car=01_02', 3, 9);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL auto_increment,
  `Nombre` varchar(50) default NULL,
  `DNI` varchar(50) default NULL,
  `Usuario` varchar(50) default NULL,
  `Pasword` varchar(50) default NULL,
  PRIMARY KEY  (`IdUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 'Moro', NULL, 'admin', 'mqqf00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `visitas`
-- 

CREATE TABLE `visitas` (
  `Id_visitas` int(11) NOT NULL auto_increment,
  `Nombre` varchar(50) default NULL,
  `Mail` varchar(50) default NULL,
  `Web` varchar(50) default NULL,
  `Ip` varchar(50) default NULL,
  `Host` varchar(50) default NULL,
  `Navegador` mediumtext,
  `Fecha` date default NULL,
  `Hora` time default NULL,
  `Mensaje` mediumtext,
  PRIMARY KEY  (`Id_visitas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=414 ;

-- 
-- Volcar la base de datos para la tabla `visitas`
-- 

INSERT INTO `visitas` VALUES (11, 'Mikel', 'fanfarre@samasiku.com', 'http://www.samasiku.com', '213.97.176.59', '213.97.176.59', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2001-08-29', '08:56:00', 'Hola, estrenamos libro de visitas. Espero que os guste y colaboreis escribiendo vuestros saludos a la Fanfarre, o cualquier otro comentario.<br>Un saludo.');
INSERT INTO `visitas` VALUES (13, 'ELENA E IRATXE', 'KHIARA1717171717@yahoo.es', NULL, '213.97.176.35', '213.97.176.35', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-08-29', '18:23:00', 'Gora Sama-Siku! Como podeis ver ya hemos entrado a la web. Saludos y unas palabritas para la fanfa:<br>EEEEEEE...... ¡VAMOS A GANAR!');
INSERT INTO `visitas` VALUES (14, 'AINARA', 'EN_ANA_13@HOTMAIL.COM', NULL, '212.170.197.225', '212-170-197-225.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-09-01', '17:45:00', 'AUPA SAMA-SIKU!!!!!!!!<br>Esta web cada vez esta mejor.<br>Saludos a la mejor fanfarre del mundo.');
INSERT INTO `visitas` VALUES (24, 'Jorge', 'jorgellama50@hotmail.com', NULL, '193.152.164.105', '193-152-164-105.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-02', '20:02:00', 'AUPA SAMASIKU!!!<br>Como veis en Eibar todavia nos acordamos de vosotros un beso y haber si nos vemos pronto vale??<br>AUPA SAMA ETA AUPA USTEKABE!!!');
INSERT INTO `visitas` VALUES (25, 'Saray', NULL, NULL, '193.152.162.35', '193-152-162-35.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-09-07', '16:20:00', 'entrar en la fanfarre sama-siku ha sido una de las mejores experiencias que he tenido en la vida.<br>¡¡¡¡¡¡¡somos los mejores!!!!!!<br>¡¡¡¡¡¡¡¡arriba txitxarro!!!!!!!<br>¿ALGUIEN HA VISTO MI TOALLA?');
INSERT INTO `visitas` VALUES (26, 'Andoni (Dunbots)', 'landroval@euskalnet.net', NULL, '62.99.88.3', '62.99.88.3', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; KITL25)', '2001-09-08', '12:37:00', 'Felicitaciones al moro y cia. por esta pedazo de web y sobre todo por el libro de visitas. Quiero aprovechar para saludar a mi prima Encarni y a los dos que m&aacute;s soplan en Sama, l&eacute;ase el moro y Diego, que son a los que m&aacute;s conozco pero pronto me llevar&eacute;is al local y conocer&eacute; al resto de la pe&ntilde;a joooo-jo.');
INSERT INTO `visitas` VALUES (27, 'erikito', NULL, NULL, '193.248.150.105', 'mix-limoges-102-4-105.abo.wanadoo.fr', 'Mozilla/4.5 [fr] (Macintosh; I; PPC)', '2001-09-10', '14:37:00', 'vaya pedazo de pagina.manda felicitaciones y admiracion porque es la mejor (del tema de las fanfarre) que nunca he visto.pero eso si,todo es relativo porque SAMASIKU es la mejor fanfarre!!!saludos a todos y nos vemos prontissimo');
INSERT INTO `visitas` VALUES (28, 'Xaime (gaiteiro jeje)', 'askatunaiz@mixmail.com', NULL, '213.98.50.28', '213.98.50.28', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-17', '14:22:00', 'Wenassss!! ayer nos fuimos casi sin despedirnos de Leioa, pero<br>ten&iacute;amos prisa. Estoy encantado de haber tocado con vosotros en<br>los pueblos de alrededor de Bilbo, y de compartir autocar y comidas&#133;<br>jaja, ale, se despide Xaime......el gaiteiro incombustible JAJAJA');
INSERT INTO `visitas` VALUES (29, 'USTEKABE (Eibar)', 'ustekabe@hotmail.com', NULL, '213.4.33.254', '213-4-33-254.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-17', '16:41:00', 'AUPA SAMA! Gracias por darnos la oportunidad de pasar estos momentos tan buenos junto a vosotros. Tocando sereis buenos pero como personas no teneis precio. Seguir asi y no cambieis nunca!!!!!!!!! Nos vemos en el caserio.<br>Un beso a tod@s');
INSERT INTO `visitas` VALUES (30, 'EIBARKO Ustekabe', 'ustekabe@hotmail.com', NULL, '193.152.164.164', '193-152-164-164.uc.nombres.ttd.es', 'Mozilla/4.7 [en] (Win98; I)', '2001-09-17', '16:56:00', 'Aupa Samasikudunak:<br>espero que el udaletxe no sea tan ruin y os page un bus para kontemplar eibar, y depaso ense&ntilde;ar a algunos eibarreses lo que es la calidad que teneis. espero que esa no sea la ultima vez que vengais a EIBAR.<br>AUPA USTEKABE ETA AUPA SAMASIKU.');
INSERT INTO `visitas` VALUES (31, 'SELMER', 'AITOR_MARTIN_GARCIA@HOTMAIL.COM', NULL, '217.127.133.59', '217.127.133.59', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-17', '19:53:00', 'YO HECHE A CAMPILLO DE SAMA.SELMER PUTO CABRON. DESDE AQUELLO, CAMPILLO NO ME HABLA.Y TARDARE MUCHO EN HACERLO, ESKIROL. FUERA CO&ntilde;AS, LA PAGINA ESTA DE PUTA MADRE, PERO HAY QUE INCLUIR FOTOS EN LAS QUE SALGAMOS NOSOTROS DOS, VALE?HA QUEDADO CLARO.SELMER ERES UN PUTO PELOTA DE MIERDA.');
INSERT INTO `visitas` VALUES (32, 'Jokin (Mac Jeara''s Band)', 'macjeara@mail.com', 'http://www.macjeara.com', '193.153.225.1', '193-153-225-1.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-17', '20:07:00', 'Saludos desde Donosti. A pesar de no haber podido relacionarnos mucho con vosotros, nos lo pasamos muy bien todos juntos. Esperamos vlover a veros por esos lugares de Dios.<BR><BR>Ondo segi eta zorte on!');
INSERT INTO `visitas` VALUES (33, 'PP', NULL, NULL, '212.170.192.193', '212-170-192-193.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-19', '12:42:00', 'HOLA MIKEL LA PAGINA TE ESTA QUEDQNDO MUY TXULA ( YA TE ESTA COSTANDO) BUENO COMO NO SE ME OCURRE NADA QUE PONER DIRE LO DE SIEMPRE AUPA SAMASIKU!!!! A VER SI NOS VEMOS PRONTO ¿VAS A IR AL CASERIO? SALUDOS PARA TODOS LOS QUE ENTRAN EN LA PAGINA Y A VER SI NOS VEMOS PRONTO.');
INSERT INTO `visitas` VALUES (34, 'El primo de zumosol (vamos,el de Aketza)', 'nirehelbidea@nirehosta.com', 'http://www.esoquees.com', '195.55.237.145', '195.55.237.145', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)', '2001-09-27', '12:58:00', 'Os ha quedado una p&aacute;gina fant&aacute;stica. Pocas veces encuentras p&aacute;ginas de grupos como el vuestro hecha con tanto gusto. El flash del principio lo tengo guardado ;-)<br><br>Venga, &aacute;nimo y a seguir tocando');
INSERT INTO `visitas` VALUES (35, 'TXUTXANA', 'txubero@mixmail.com', NULL, '193.152.160.254', '193-152-160-254.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-09-28', '11:07:00', 'Muy bien por la pagina, Moro, no eres tan torpe como pareces, esto tambien te salva de ser guipuchi.<BR>Por cierto, espero que haya aparecido la toalla de Saray.<br>Y como diria Diego:<br>SOMOS LOS MEJORES Y VAMOS A GANAR!!!!!!!!!!!!!!!<br>Un bechito para todos........');
INSERT INTO `visitas` VALUES (36, 'zuri', NULL, NULL, '195.55.222.58', '195.55.222.58', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-10-02', '18:31:00', 'quiero que sepa todo el mundo que esta fanfarre es la mejor que existe y que todo el que insulta es por envidia.Esta pagina no se ha hecho para insultar.que sepais que ¡¡¡¡¡¡¡viva sama-siku!!!!!!!!.');
INSERT INTO `visitas` VALUES (37, 'Leire', NULL, NULL, '212.8.65.11', '212.8.65.11', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2001-10-03', '23:06:00', 'Solo he entrado a ver las paranoias q aqui se ponen pero me he encontrado una sorpresita..... MOROOOOOOOOO quita a la voz de ya esas fotos en las q salgooooooo<br>Q sepais q llevo desde las 11 buscando paginas relacionadas con la musica y con las fanfarres y no he encontrado ninguna tan bonita y tan bien hecha como esta (solo le fallan esas fotos) je je<br>Un besazo muuu grande pa toos.');
INSERT INTO `visitas` VALUES (38, 'El Puto Pijo de Portu', NULL, NULL, '193.153.228.110', '193-153-228-110.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-03', '23:38:00', 'Ese moro,veo que te has currado la pagina, y que te has enterado de una vez de que bienvenido no se escribe las dos con "B".<BR><BR>P.D. Ake,no me has pasado la cuota de este mes, a ver si te acuerdas.<BR>y para tod@s esos que se preguntan que por que esta pagina es la mejor,simplemente es porque esta a nuestra altura,ya que como diria Ake "...eh...VAMOS A GANAR"<BR>Ah! Y para el tal DK.DESEO,decirle que a nosotros no nos va a barrer nadie,que lo que hay es mucha envidia,y que lo de moko lo seras tu.');
INSERT INTO `visitas` VALUES (39, 'Webmaster', 'fanfarre@samasiku.com', 'http://www.samasiku.com', '213.97.176.59', '213.97.176.59', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2001-10-08', '08:47:00', 'Esto es un LIBRO DE VISITAS que por si alguien no lo sabe es para dejar un saludo amistoso, sin insultar ni ofender a nadie, asi que todos los mensajes ofensivos ser&aacute;n borrados inmediatamente.');
INSERT INTO `visitas` VALUES (40, 'txema', 'txema_rodriguez@hotmail.com', NULL, '212.166.140.194', '212.166.140.194', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-08', '17:46:00', 'Que pasa chicos.Que tal andais?El sabado os fuisteis a los autos de choque y no se os vio mas el pelo.Espero que lo pasarais bien,yo acabe un poco malito.Hay q repetir la cena antes,cada a&ntilde;o es poco.Bueno q sepais que me teneis a vuestra disposicion.Un saludo vuestro amigo de la turu.<BR>PD- Felicidades por la pagina.');
INSERT INTO `visitas` VALUES (41, 'Silvestre', 'xabier.arroyo@wanadoo.es', NULL, '212.8.85.170', 'eu85-170.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows 98; EKT-V3.0RRC)', '2001-10-13', '21:07:00', 'Holaaaa,<br>me alegro de que esteis en la red, eso significa que mejorais todos los a&ntilde;os y que estais a la ultima. Tienen razon Selmer y Campillo teneis que poner fotos de la vieja guardia.<br>Un beso para todas, para vosotros ya veremos,<br>aguuuuuuur.');
INSERT INTO `visitas` VALUES (42, 'aninimo', NULL, NULL, '212.170.192.37', '212-170-192-37.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2001-10-17', '16:18:00', 'Hola');
INSERT INTO `visitas` VALUES (43, 'El amigo de Ake', 'www.amigodeake@cuotas.com', 'http://www.amigo_de_ake.soy', '213.99.199.81', '213-99-199-81.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-17', '18:26:00', 'Moro,a ver si pones las fotos del leon de rochechouart de este a&ntilde;o,el que parece un puzzle,k es mu txulo.<br><br>¡Ah! y un saludo pa to nosotros,por ke?simplemente porque,eeeeeehhh.......somos los mejores,y vamos a ganaaaaar!!!!<br>(y porque si,ke pasa)<br>');
INSERT INTO `visitas` VALUES (44, 'anonimo', NULL, NULL, '213.4.32.95', '213-4-32-95.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-18', '16:31:00', 'aupa a tod@s l@s de sama. Me alegro de que hayais hecho esta pagina para poder deciros q sois los mejores aunque se ve que la gente envidiosa no entiende q es para eso. Os mando muchos saludos y besitos a tod@s.bueno pues q sepais q teneis q pasar de l@s envidis@s y seguir asi q sois los mejores.');
INSERT INTO `visitas` VALUES (45, 'maria', NULL, NULL, '212.106.244.73', 'bcnjfppp.jazztel.es', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows 98)', '2001-10-20', '20:09:00', 'EN TODOS LOS SITIOS HAY MOMENTOS BUENOS Y MALOS, AUNQUE MUCHAS VECES SON LOS MALOS LOS QUE GANAN, EN LA FANFARRE SAMA-SIKU NO ES ASI.<br>AUNQUE LA GENTE DIGA LO CONTRARIO ES VERDAD, EN ESTE MUNDO HAY MUCHA GENTE ENVIDIOSA-<br>EN FIN, ES UNA PAGINA DE P. MADRE. MUCHAS FELICITACIONES AL MORO, QUE IGUAL MUCHA GENTE LO TIENE POR LELO Y COMO VEIS EL SOLITO HA HECHO ESTA PAGINA QUE COMO TODO EL MUNDO ES DE P. MADRE.<br>¡AUPA SAMA-SIKU!<br>TRANQUILOS CHICOS QUE ALGUN A&ntilde;O EN LOS CONCURSOS DE FRANCIA SE DARAN CUENTA TODOS LOS PREMIOS QUE NOS HAN ROBADO ESA OTRAS SIMPLES FANFARRES.<br>AGUR.');
INSERT INTO `visitas` VALUES (46, 'EL JEFE', NULL, NULL, '193.152.160.197', '193-152-160-197.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-21', '20:45:00', 'Somos los mejores y vamos a ganar.');
INSERT INTO `visitas` VALUES (47, 'LA ORGANIZACI&oacute;N', NULL, NULL, '193.153.235.151', '193-153-235-151.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-22', '21:33:00', 'Que pasa, ¿la gente ya no pone txorradas?');
INSERT INTO `visitas` VALUES (48, '¡¡¡MORO!!!', NULL, NULL, '193.153.235.151', '193-153-235-151.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-22', '21:35:00', 'No me sale el vaso.');
INSERT INTO `visitas` VALUES (49, 'SAMA SIKU', NULL, NULL, '193.153.235.151', '193-153-235-151.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-22', '21:36:00', 'Gracias a todos por visitar nuestra pagina.');
INSERT INTO `visitas` VALUES (50, 'El de la fanfa osea Manin', NULL, NULL, '195.55.222.58', '195-55-222-58.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-10-24', '12:27:00', '¿Que pasa tios, que tal?. Haber si Aketza trae los videos de Rochechuart que estoy ansioso de ver esa obra maestra. por cierto me podeis dar la direccion del camara que lo grabo, jejejejejeje.<BR>Un saludo a tod@s.<BR>');
INSERT INTO `visitas` VALUES (51, '¿Que tal?', NULL, NULL, '212.170.197.221', '212-170-197-221.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-10-25', '21:20:00', 'Muy buenas las contestaciones.');
INSERT INTO `visitas` VALUES (52, 'silver', 'xabier.arroyo@wanadoo.es', NULL, '217.127.178.155', '217-127-178-155.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2001-10-29', '20:15:00', 'Hoooolaaaaaaa, estoy en el jamaica borracho perdido con algunos<br>que saben algo de la historia del grupo y todos coinciden en lo mismo.<br>Co&ntilde;o, haber si poneis fotos de la pe&ntilde;ita de aquel entonces. Aguuuur.<br>Hola. Soy una untigua compononte superguai de la fanfa. ahora estoy un poco tocada por escribo tan mal. Pero los que estan conmigo no estan mucho mejor que yo. Os echamos mucho de menos aunque unos m&aacute;s que otros. Somos muy viejos y por eso nos despedimos con "el carrito". AGUR');
INSERT INTO `visitas` VALUES (53, 'Eswtuve en el Jamaika en Halloween', NULL, NULL, '62.99.4.29', 'eu99-4-29.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; KITL25)', '2001-11-03', '10:44:00', 'Diego existe');
INSERT INTO `visitas` VALUES (54, 'La toalla de Saray', NULL, NULL, '213.98.210.28', '213-98-210-28.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-05', '23:28:00', 'S.O.S. ¡¡¡No se donde estoyyyyyy!!!!!!!!!!!! Recuerdos del cepillo de leire tambien jejeje');
INSERT INTO `visitas` VALUES (55, 'Ese que tan mal toca las chapas', 'Uga4estrellas@mixmail.com', NULL, '158.227.52.6', 'netcache.lg.ehu.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-11-06', '15:47:00', 'Aupa gentuza de los barrios de Bilbo! Vaya pagina güe q te has currado morete! Aritz dice que salgo en un par de fotos,pero...¡No las encuentro! Bueno,que os vaya bien,que no voy a esa cena aunque me hayais invitado y para ti Moro: no tires los gallunbos por las campas cuando vas a acampar a la Arboleda,¿vale?<BR>Bueno gente,que fumeis,bebais,os drogeis y todo esas cosas que hace un grupo de gentuza como vosotros.Je,je,je...y decirle al "Botijo" que en vez de agua os de un poco de kalimotxo que es mas de estos lares.<BR>P.D: PUTO ARIIIIIITZZZZZZZZ!!!! SERAAAAAAAASSS MARIKITAAA!!!');
INSERT INTO `visitas` VALUES (56, 'Ese que tan mal toca las chapas', 'uga4estrellas@mixmail.com', NULL, '158.227.52.6', 'netcache.lg.ehu.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-11-06', '15:49:00', 'Upss!! Si os he puesto mal e e-mail.Es todo en minusculaz (no con la U grande),usease: uga4estrellas@mixmail.com<BR>Agur.');
INSERT INTO `visitas` VALUES (57, 'LA PIJA DE PORTU', 'nagotromp@hotmail.com', NULL, '193.153.228.84', '193-153-228-84.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-06', '18:17:00', 'Hola wap@s. Nos vemos el s&aacute;bado, pero llegar&eacute; para las copas (¿hay nooooooo?) ...cosa que no me importa. Muy wena la p&aacute;gina Moro.<BR><BR>PD: Empanao (de parte del pijo de Portu)... a ver si nos llavas algo para animarnos... yo me he echo una camiseta con la foto de Francia...jajaja');
INSERT INTO `visitas` VALUES (58, 'LA PIJA DE PORTU', 'nagotromp@hotmail.com', NULL, '193.153.228.84', '193-153-228-84.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje Llavas no llevas... Egoitz...la foto es la tuya...jajaja  \r\n\r\nRegistro 59  Borrar este mensaje  \r\nAutor LA PIJA DE PORTU \r\nE-Mail nagotromp@hotmail.com \r\nFecha / Hora 06/11/2001 18:17 \r\nIP / Host 193.153.228.84 / 193-153-228-84.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje Hola wap@s. Nos vemos el s&aacute;bado, pero llegar&eacute; para las copas (¿hay nooooooo?) ...cosa que no me importa. Muy wena la p&aacute;gina Moro. PD: Empanao (de parte del pijo de Portu)... a ver si nos llavas algo para animarnos... yo me he echo una camiseta con la foto de Francia...jajaja \r\n\r\nRegistro 58  Borrar este mensaje  \r\nAutor Ese que tan mal toca las chapas \r\nE-Mail uga4estrellas@mixmail.com \r\nFecha / Hora 06/11/2001 15:49 \r\nIP / Host 158.227.52.6 / netcache.lg.ehu.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt) \r\nMensaje Upss!! Si os he puesto mal e e-mail.Es todo en minusculaz (no con la U grande),usease: uga4estrellas@mixmail.com Agur.  \r\n\r\nRegistro 57  Borrar este mensaje  \r\nAutor Ese que tan mal toca las chapas \r\nE-Mail Uga4estrellas@mixmail.com \r\nFecha / Hora 06/11/2001 15:47 \r\nIP / Host 158.227.52.6 / netcache.lg.ehu.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt) \r\nMensaje Aupa gentuza de los barrios de Bilbo! Vaya pagina güe q te has currado morete! Aritz dice que salgo en un par de fotos,pero...¡No las encuentro! Bueno,que os vaya bien,que no voy a esa cena aunque me hayais invitado y para ti Moro: no tires los gallunbos por las campas cuando vas a acampar a la Arboleda,¿vale? Bueno gente,que fumeis,bebais,os drogeis y todo esas cosas que hace un grupo de gentuza como vosotros.Je,je,je...y decirle al "Botijo" que en vez de agua os de un poco de kalimotxo que es mas de estos lares. P.D: PUTO ARIIIIIITZZZZZZZZ!!!! SERAAAAAAAASSS MARIKITAAA!!! \r\n\r\nRegistro 56  Borrar este mensaje  \r\nAutor La toalla de Saray \r\nE-Mail  \r\nFecha / Hora 05/11/2001 23:28 \r\nIP / Host 213.98.210.28 / 213-98-210-28.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje S.O.S. ¡¡¡No se donde estoyyyyyy!!!!!!!!!!!! Recuerdos del cepillo de leire tambien jejeje \r\n\r\nRegistro 54  Borrar este mensaje  \r\nAutor Eswtuve en el Jamaika en Halloween \r\nE-Mail  \r\nFecha / Hora 03/11/2001 10:44 \r\nIP / Host 62.99.4.29 / eu99-4-29.clientes.euskaltel.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; KITL25) \r\nMensaje Diego existe  \r\n\r\nRegistro 53  Borrar este mensaje  \r\nAutor silver \r\nE-Mail xabier.arroyo@wanadoo.es \r\nFecha / Hora 29/10/2001 20:15 \r\nIP / Host 217.127.178.155 / 217-127-178-155.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98) \r\nMensaje Hoooolaaaaaaa, estoy en el jamaica borracho perdido con algunos que saben algo de la historia del grupo y todos coinciden en lo mismo. Co&ntilde;o, haber si poneis fotos de la pe&ntilde;ita de aquel entonces. Aguuuur. Hola. Soy una untigua compononte superguai de la fanfa. ahora estoy un poco tocada por eso escribo tan mal. Pero los que estan conmigo no estan mucho mejor que yo. Os echamos mucho de menos aunque unos m&aacute;s que otros. Somos muy viejos y por eso nos despedimos con "el carrito". AGUR \r\n\r\nRegistro 51  Borrar este mensaje  \r\nAutor ¿Que tal? \r\nE-Mail  \r\nFecha / Hora 25/10/2001 21:20 \r\nIP / Host 212.170.197.221 / 212-170-197-221.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje Muy buenas las contestaciones. \r\n\r\nRegistro 48  Borrar este mensaje  \r\nAutor El de la fanfa osea Manin \r\nE-Mail  \r\nFecha / Hora 24/10/2001 12:27 \r\nIP / Host 195.55.222.58 / 195-55-222-58.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt) \r\nMensaje ¿Que pasa tios, que tal?. Haber si Aketza trae los videos de Rochechuart que estoy ansioso de ver esa obra maestra. por cierto me podeis dar la direccion del camara que lo grabo, jejejejejeje. Un saludo a tod@s.  \r\n\r\nRegistro 47  Borrar este mensaje  \r\nAutor SAMA SIKU \r\nE-Mail  \r\nFecha / Hora 22/10/2001 21:36 \r\nIP / Host 193.153.235.151 / 193-153-235-151.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje Gracias a todos por visitar nuestra pagina. \r\n\r\nRegistro 46  Borrar este mensaje  \r\nAutor ¡¡¡MORO!!! \r\nE-Mail  \r\nFecha / Hora 22/10/2001 21:35 \r\nIP / Host 193.153.235.151 / 193-153-235-151.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje No me sale el vaso. \r\n\r\nRegistro 45  Borrar este mensaje  \r\nAutor LA ORGANIZACION \r\nE-Mail  \r\nFecha / Hora 22/10/2001 21:33 \r\nIP / Host 193.153.235.151 / 193-153-235-151.uc.nombres.ttd.es \r\nNavegador Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90) \r\nMensaje Que pasa, ¿la gente ya no pone txorradas? \r\n\r\n \r\nMensajes 241 - 260 de 286  |   1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 ... « 6 7 8 9 10 11 12 [13] 14 15 »', '2001-11-06', '18:19:00', 'Llavas no llevas... Egoitz...la foto es la tuya...jajaja <BR>');
INSERT INTO `visitas` VALUES (59, 'LA PIJA DE PORTU', 'nagotromp@hotmail.com', NULL, '193.153.228.84', '193-153-228-84.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-06', '18:35:00', 'Iratxe... Elenita...preparaos que luego vamos para Portu despu&eacute;s de la cena...os la voy a liaaaaaaaaaaaaar...Por cierto, si alguien sabe donde fueron a parar mis mil duros deee,,,, que mejor que no me lo diga, jajaja<BR><BR>PD: Man&iacute;n me debes un niki.');
INSERT INTO `visitas` VALUES (60, 'LA ORGANIZACI&oacute;N', NULL, NULL, '193.153.237.100', '193-153-237-100.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-07', '21:53:00', 'Tus mil duros deee... los ha confiscado LA ORGANIZACION.');
INSERT INTO `visitas` VALUES (61, 'JOSEBA ANDONI GARCIA DELGADO', NULL, NULL, '193.152.163.136', '193-152-163-136.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 4.01; Windows 98)', '2001-11-20', '16:44:00', 'hola aketza soy pulgui y te pido que me des de una vez los mil duros<BR>si no te vqy ha pegar. VALE');
INSERT INTO `visitas` VALUES (62, 'Ustekabe', 'ustekabe@hotmail.com', NULL, '193.152.164.97', '193-152-164-97.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-11-22', '17:48:00', 'Aupa gente!!!<BR>Bueno lo primero ZORIONAK!!!!!!!!!! que hoy es Santa Cecilia, que nos queda poquito pa vernos ya e? el sabado vamos a ir a Bilbo asi que espero que acordeis de nosotros y que prepareis bien los mofletes porque va a haber una de besos...<br>Bueno yo empiezo desde ahora un besazo a cada uno y hasta el sabado.');
INSERT INTO `visitas` VALUES (63, 'Hola Pulga:', NULL, NULL, '213.98.252.35', '213-98-252-35.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-24', '10:16:00', 'Primero aprende a escribir. Si quieres tus mil duros vete el sabado a la 3:00 al Lokal, si no te quedas sin ellos.');
INSERT INTO `visitas` VALUES (64, 'Holaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, '193.153.228.110', '193-153-228-110.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-24', '12:40:00', 'Holaaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO `visitas` VALUES (65, 'hooolaaaaaaaaaaaaaaaa', NULL, NULL, '213.0.228.189', '213-0-228-189.dialup.nuria.telefonica-data.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-24', '13:14:00', 'hhhhhhhhhhhhhoooooooooooooooooooooooooooolaaaaaaaaaaa sois los mejoresssssssssssssssssssssssssss.<br>No vemos !');
INSERT INTO `visitas` VALUES (66, 'yo', NULL, NULL, '213.250.150.1', '213.250.150.1', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-11-27', '08:02:00', 'hola');
INSERT INTO `visitas` VALUES (67, 'HOLAAAAAAAAAAAAAS', NULL, NULL, '213.98.210.20', '213-98-210-20.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-27', '18:21:00', 'HOOOOOOOOOOOOOOOOOOOOOOLAS A TOOOOOOOOOOOOOOOOOOOOOOOOOOOOOODOOOOOOOOOS');
INSERT INTO `visitas` VALUES (68, 'LA DE PORTU', 'nagotromp@hotmail.com', NULL, '213.98.210.20', '213-98-210-20.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-27', '18:46:00', 'IRATXE....ELENITA......¡QUE ES MI CUMPLE EL VIERNEEEEEEES! LO CELEBRO EL SABADO. ESTAIS INVITADAS. SI QUIERE VENIR ALGUIEN MAS KE ME REGALE ALGO Y LUEGO HABLAMOS,,,JAJAJA BESOS....');
INSERT INTO `visitas` VALUES (69, 'anonimo', NULL, NULL, '213.98.235.72', '213-98-235-72.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-11-30', '18:42:00', 'Aupa ahi,he estado visitando vuestra web y esta muy bien,ya me gusta,felicidades');
INSERT INTO `visitas` VALUES (70, 'un amigo', NULL, NULL, '213.0.198.95', '213-0-198-95.dialup.nuria.telefonica-data.net', ' Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2001-12-08', '14:52:00', '¡¡¡esa pagina !!!<br>esta muy bien ,zorionak por la pagina web y por ser los mejores!!!');
INSERT INTO `visitas` VALUES (71, 'PEGUI', NULL, NULL, '195.55.222.58', '195-55-222-58.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2001-12-08', '17:39:00', 'HOLA ATOD@S, SOLO DECIROS K SOIS LOS MEJORES Y K NO HAY NINGUNA FANFARRE K OS SUPERE.SOIS LOS P... AMOS. BESITOS SEGUIR ASI.<BR><BR>P.D: MAS BESITOS PARA "MUSLI" (NO TE ENFADES)');
INSERT INTO `visitas` VALUES (72, 'nerea', NULL, NULL, '212.142.237.82', '212.142.237.82', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows 98)', '2002-01-02', '16:06:00', 'hola majos soy nerea quiero decir que somos los mejores viva sama siku es el cumple de zuri vivaaaaaaaaaaaaaaaaaaaaaa aupa zuri <BR>');
INSERT INTO `visitas` VALUES (73, 'LOS MONTADITOS', NULL, NULL, '80.32.230.13', '80.32.230.13', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Bilbao Bizkaia Kutxa)', '2002-01-02', '16:42:00', 'MENSAJE PARA DIEGO:<BR><BR>COMO YA VEMOS QUE EXISTES, YA PUEDES EMPEZAR A BUSCAR "NENAS".<BR>AHORA QUE VIENE EL EURO, YA VAMOS A AHORRAR PERO POR FAVOR, 4 PLIEGOS, ¿VALE DIEGUITO?<BR>(ES BROMA, NO TE ENFADES, SI EN EL FONDO.... NOS CAES BIEN)<BR><BR><BR><BR>');
INSERT INTO `visitas` VALUES (74, 'An&oacute;nimo', NULL, NULL, '158.227.72.114', 'bppb58.xa.bp.ehu.es', 'Mozilla/4.5 [es] (Win95; I)', '2002-01-18', '15:57:00', 'Hola a todos,¿que tal os va?<BR>Un beso para todos y en especial para Ego');
INSERT INTO `visitas` VALUES (75, 'michela', NULL, NULL, '158.227.72.50', 'bppbim.bp.ehu.es', 'Mozilla/4.5 [es] (Win95; I)', '2002-01-22', '16:23:00', 'Aupa Micha');
INSERT INTO `visitas` VALUES (77, 'ELENITA', 'KHIARA1717171717@yahoo.es', NULL, '212.142.137.128', '212.142.137.128', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-02-07', '14:55:00', 'EHHH!<BR>SOY LNITA Y TOY N CLASE. OS QUIERO DCIR Q SOMOS LOS MJORS Y X MUXO Q DIGAN O ITNTN HACR, NO VAN A PODR MJORARNS N SU P... VIDA!<BR><BR>MUSUXUS A TOS!');
INSERT INTO `visitas` VALUES (78, 'ANONIMO', NULL, NULL, '195.55.222.58', '195-55-222-58.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-02-22', '18:17:00', 'TRIUNFAMOS DE VIKINGOS EEEEE BUENO Q SOMOS LOS MEJORES Y LOS MAS MAJOS VALE AUPA SAMA SIKU VIVA NOSOTROS Y JAVI CANTERO Y CUANTO MAS ACELEROOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO MUXUS');
INSERT INTO `visitas` VALUES (79, 'LA PE&ntilde;A DEL TINTOOOO', 'kalimotxo@pe&ntilde;adeltinto.com', 'http://www.pe&ntilde;adeltinto.com', '212.106.252.39', 'bcnjfppp.jazztel.es', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows 98)', '2002-03-02', '01:53:00', 'ESA PE&ntilde;ITA!!!!!!!!!<BR>AWUISHIII, JAUAAAA<BR>MORE NAOOOUUUU<BR>A MORE MORE MORRRRRLLLLLL<BR>PROPINA, POMIMOR<BR><BR>NOOOOOOOORRRR<BR><BR>PROPIMOR, PROMPINA<BR><BR>ATALUEGO LUKARRRRLLLLLLL');
INSERT INTO `visitas` VALUES (80, 'NADIA', NULL, NULL, '212.8.65.210', '212.8.65.210', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-03-12', '22:31:00', 'ME GUSTA MUCHO VUESTRA PAGINA Y POR ESO LA VISITO MUY AMENUDO PERO PODRIAIS CAMBIAR DE MENSAJES ALGUNA VEZ Q ESTOS LLEVAN LA OSTIA DE TIEMPO.LO DIGO XQ PARA MI COMO PARA LAS DEMAS PERSONAS Q VISITAN ESTA PAGINA ES MUY ABURRIDO.<BR>ESPERO Q ME HAGAIS CASO.(REPES)');
INSERT INTO `visitas` VALUES (81, 'Oi!', NULL, NULL, '213.98.235.74', '213-98-235-74.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2002-03-13', '17:19:00', 'Ese mikel somos los SKAPAT IA! y queremos con mongi band y osama en el gaztetxe de Artea');
INSERT INTO `visitas` VALUES (82, 'Gus', NULL, NULL, '212.8.106.28', '212.8.106.28', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2002-03-18', '18:03:00', 'Aupa Moro, Dani, Diego, Aketza, Maritxu, Luisillo, y dem&aacute;s conocidos.<br><br>Un saludo.');
INSERT INTO `visitas` VALUES (83, 'Fiesta!!!!!', NULL, NULL, '212.8.80.13', 'eu80-13.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-03-24', '22:24:00', 'Hola !<br>Queria deciros que me gusta mucho vuestra pagina ,en realidad cada dia mas.Y que sois los mejores !!!!<br>Un saludo a todos , en especial para Afrodita , Priscila ,Anakleta y Penef-----.<br>');
INSERT INTO `visitas` VALUES (84, 'ERIKITO', 'patxoko@hotmail.com', NULL, '194.206.67.8', '194.206.67.8', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2002-03-27', '22:16:00', 'Aupa familia<br>como te la cuidas la pagina Moro!!!!!!!! cada vez mejor PERO habra ke ponerla en gabatxo tambien y eso me lo currare cuando venga pa alla .<br>Abrazos a tod@s y hasta prontissimo<br>Muxuuuuuuuuuuuuuuuuusssssssssss<br>El puto gabatxo hincha del patxoko<br>ERIKITO');
INSERT INTO `visitas` VALUES (85, 'Almudena', 'Almu_li@terra.es', NULL, '217.125.147.101', '217-125-147-101.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0b; Windows 98)', '2002-04-21', '20:27:00', 'Aupa chicos! c&oacute;mo no! quiero reiterar que como la Fanfarre Sama-siku no la ha habido ni la habr&aacute; nunca. Los mejores a&ntilde;os de mi vida, y de la de muchos, han pasado en este magn&iacute;fico grupo. Seguid as&iacute;! Eso s&iacute;! Moro! me quiero quejar que no se me ve casi en las fotos! cacho perrooo! haz una revisi&oacute;n de fotos, eh? Muxux para todos!');
INSERT INTO `visitas` VALUES (86, 'El Cluf de los Fanaticos de Shin Chan', NULL, NULL, '217.127.134.201', '217-127-134-201.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-04-26', '20:51:00', 'Aupa Shin Chan.<br><br>Esto va pa la Misae.<br><br>Gua JA JA');
INSERT INTO `visitas` VALUES (87, 'LA ORGANIZACI&oacute;N Presenta...', NULL, NULL, '62.99.7.181', 'eu99-7-181.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-04-28', '12:00:00', '...PATXOKO.<br>Tu nueva bebida isotonica.<br>Pruebala en tu Lokal habitual.<br>');
INSERT INTO `visitas` VALUES (88, 'Patxoko`s Fan', NULL, NULL, '80.35.100.55', '55.red-80-35-100.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2002-05-06', '16:24:00', 'Digo yo que ya podria la organizacion estirarse y invitarnos a una ronda de ese famoso Patxoko, asi podiramos opinar......O no, eh??????');
INSERT INTO `visitas` VALUES (89, 'xavier raventos', 'ravent15@hotmail.com', NULL, '213.0.240.13', 'nscbest1.rs1.nuria.telefonica-data.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-05-10', '14:42:00', 'soy de sant sadurni d''anoia Barcelona os mando muchos recuerdos<br>hace tiempo k veniais aki a hacer el pasacalle i des de akellos tiempos ja no son lo k eran sin vosotros.<br>no se si ah&uacute;n estan todos los miembros del grupo de cuando veniais porque ya hace un tiempo........<br>bueno estoy muy contento de haver podido encontraros por aqui en internet');
INSERT INTO `visitas` VALUES (90, 'Spiderman', 'newyork@yahoo.com', NULL, '212.142.220.130', 'eu220-130.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)', '2002-05-16', '01:08:00', 'Aupa danoi. ikusten dudanez,');
INSERT INTO `visitas` VALUES (91, 'Klandestinos Charanga (Guadalajara)', 'klandestinos@mixmail.com', 'http://usuarios.tripod.es/KLANDESTINOS', '217.125.113.46', '217-125-113-46.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2002-05-20', '14:01:00', 'Hola chicos/as somos una charanga de Guadalajara que llevamos 12 a&ntilde;os dando guerra por toda la zona centro,teneis una pagina muy buena y por lo visto sois bastante buenos,somos 12 musicos que tocamos de todo y hemos ediatado un CD,simplemente queriamos mandaros un saludo y esperamos noticias vuestras.');
INSERT INTO `visitas` VALUES (92, 'Josu', NULL, NULL, '217.125.187.47', '217-125-187-47.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 95; IBEX4.0)', '2002-06-12', '20:48:00', '¡Vaya p&aacute;gina la ostra! Zorionak al que la ha hecho... a ver cuando te pasas por Eibar y te curras una para la fanfarre Ustekabe... (ustekabe@hotmail.com). Jeje. Pues nada, escrib&iacute;a para felicitaros por la p&aacute;gina, que es muy chula. Agur, eta beste bat arte!');
INSERT INTO `visitas` VALUES (93, 'Jorge (Ustekabe)', 'jorgellama50@hotmail.com', NULL, '212.170.208.175', '212-170-208-175.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-06-20', '17:14:00', 'Q pasa tios???? Q tal estais??? El otro dia os vi en el factor humano y lo unico que se me ocurre dedcir es que SEGUIS SIENDO LOS MEJORES!!! Bueno y no vamos a hablar de Andoni, Tio eres la bomba.... Ya que poquito para que nos veamos e??? Tengo unas ganas... pero bueno Egoitz creo que este a&ntilde;o de cementerio nada e?? juas juas juas juas. Ala que sigais tan bien como hasta ahora un un besazo para cada uno!!! Ondo segi!!!!');
INSERT INTO `visitas` VALUES (94, 'Raphaël', 'raftou@halloweencomputers.com', NULL, '217.136.140.12', 'adsl-68620.turboline.skynet.be', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)', '2002-07-04', '20:03:00', 'Bonjour a tous, je voulais vous dire que vous etes tous g&eacute;nial.<br>Un grand bonjour a Manin.<br><br>Raphaël (HOUM PAPA BAND de Vis&eacute;).');
INSERT INTO `visitas` VALUES (95, 'ita', NULL, NULL, '80.34.54.104', '104.red-80-34-54.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-07-08', '22:59:00', 'hola!!!<br>Pasaba por aqui y se me ha ocurrido felicitaros por los kinitos inolvidables que haceis ...jajajajaja<br>No en serio queria deciros que sois los mejores!!!! Aupa sama-siku!!!!!!<br>Recuerdos para copito y paz para el resto!!!<br><br><br>');
INSERT INTO `visitas` VALUES (96, 'Gaizka (Ustekabe)', 'gazketa@hotmail.com', NULL, '217.125.187.80', '217-125-187-80.uc.nombres.ttd.es', 'Mozilla/4.7 [en] (Win98; I)', '2002-07-26', '19:35:00', 'No sabia ke erais tanto, pero despues de Mont de Marsan ya lo beo. A sido la ostia, increible.<br>Supongo ke en Huesca sera igual o mejor. Besos pa todos de parte de ustekabe. y Egoitz, ponte bien.');
INSERT INTO `visitas` VALUES (97, 'ibone (ustekabe)', 'alecaracoles@hotmail.com', NULL, '217.125.187.25', '217-125-187-25.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-07-26', '20:35:00', 'hl waposs!!sabia q estabais jartos, pero pa tanto....jode q locos estais!!!la salida de mont de marxan a sido....la lexe!!!aaa!!! las fotos las teneis q poner tama&ntilde;o XXL, xq casi no se diferencia a la pe&ntilde;a.Bueno 1 besot pa tos pa!');
INSERT INTO `visitas` VALUES (99, 'yo', NULL, NULL, '212.8.64.189', 'eu64-189.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-07-28', '18:34:00', 'hola wapisim@s.slo deciros q sois la mejor fanfarre y que sigais asi que por mucho q digan otros siempre sereis los mejores.besitos para tod@s, no cambieis.');
INSERT INTO `visitas` VALUES (100, 'iontxu biznieto', 'ionrabc@hotmail.com', NULL, '62.82.15.168', '168-barc-x45.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; Hotbar 3.0)', '2002-07-29', '21:45:00', 'k pasa tios!!!<br>pasaba x aki y se me e kdao flipao. el ke aya exo esta pagina gü&eacute;, es una artista. ke sepais k mont de marsan a sido la mejor salida ke e exo nunca. sois los mejores. os kiero ver a todos en fiestas de vitoria,eh?un besazo. Agur');
INSERT INTO `visitas` VALUES (101, 'perdido', NULL, NULL, '62.99.1.107', 'eu99-1-107.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; EKT-V3.0RRC)', '2002-08-02', '18:45:00', 'ei chavales se acabo el partido la ochoa triunfa en el disco bueno nada que nos vemos en huesca y nada que adisfrutar de la vida nada mas un perdido en la tierra de nadie');
INSERT INTO `visitas` VALUES (102, 'Pamen', 'iriarte.i@euskalnet.net', NULL, '62.99.1.26', 'eu99-1-26.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; EKT-V3.0RRC)', '2002-08-07', '14:59:00', 'hola, teneis una p&aacute;gina super txula, me he quedado anonadada. esta claro q sama siku sigue siendo la mejor. pasarlo mu bien en huesca y acordaros d limpiar la boquilla despues d tocar....je, je.. un besote pa todos y en especial para los mejores saxofones y m&aacute;s majos de euskadi¡¡¡ nos vemos en bilbo y acordaros de q tenemos una cena pendiente, no se me ha olvidado.<br>MUUUUUACH!!!!!!!!!!!!!!!!!!!');
INSERT INTO `visitas` VALUES (103, 'ekhi ta ibone (ustkb)', 'pekhines@hotmail.com, alecaracoles@hotmail.com', NULL, '62.82.17.26', '26-barc-x47.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2002-08-15', '16:01:00', 'kaixo politxak!!!! dana euskeraz idaztia pentsau dou aber piskat paraktikatzen dozuen!!! bada ordua ya ikasteko!zein izan da el payaso q a puesto lo de la liposupcion¿¿¿goro fijo. ondo pasatuko garete gaur deban!!!!!!!!gora eibar eta bilbo bere kanpoko aldia da eta!!! blanki x orazio juas juas juas XDXDXDXDXD');
INSERT INTO `visitas` VALUES (104, 'Jorge', 'jorgellama50@hotmail.com', NULL, '217.127.130.226', '217-127-130-226.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2002-09-07', '20:16:00', 'Hola family! Q tal estais??? Q ya se acaba el veranito e??? Q pena!!! Q sepais q este q se acaba ha sido uno de los mejores, y q huesca ya sin comentarios&#133;<br>Gracias por estos momentos!<br>Un besazo y haber si nos pasamos prontiiiiisimo por Santutxu!!!!');
INSERT INTO `visitas` VALUES (105, 'el cuarteto de behekoa', NULL, NULL, '193.152.161.14', '193-152-161-14.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2002-09-21', '11:59:00', 'k patsa?! aki estamos viendo la cacho pagina de sama-siku. k sepais k sois la ka&ntilde;a, seguir asi. ke sepais k alazne tiene muchas ganas de volver a llevar la bandera. muchas felicidades.<br>maria eres la ostia pero estas muy loca. aupa zarrapastri&ntilde;e!<br>muxux el cuarteto');
INSERT INTO `visitas` VALUES (106, 'Mendicute', 'groups@msn.com/riojana', 'http://www.riojanaeibarzale.es.fm', '217.125.187.114', '217-125-187-114.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 95; IBEX4.0)', '2002-09-22', '20:09:00', 'Aupa qtal? ¡Ya tenemos web en ustekabe! ¿La hab&eacute;is visto?<br>El Athletic no se est&aacute; portando muy bien e? (q suerte tiene Egoitz que se hizo del Eibar, jeje!)<br>Jagoba; st finde me qedo solo. Pod&eacute;is venir.<br>Gracias por lo bien que lo hemos pasado en Huesca, y barkatu q no me porte como deb&iacute;a&#133;<br>Recuerdos y un abrazo a todos.<br><br>Zorionak por la p&aacute;gina.<br>(La web es la de la Pe&ntilde;a Riojana Eibarzale (la pe&ntilde;a del eibar de larioja)');
INSERT INTO `visitas` VALUES (107, 'Larra (Ustekabe)', 'm.larra@eukalerria.org', NULL, '193.153.228.178', '193-153-228-178.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-10-08', '20:10:00', '¿Ke pasa tios? ak&iacute; ando escribiendo un mensajito pa la pe&ntilde;a txalada esa de Santutxu. Weno ba, ia noiz ikusten garen afariren batian? ia laster dan?<br>Erreala ondo dabil eh?<br>Egoitz tenemos ke repetir una juerga komo la de Huesca, pero, con Jagobita. Andoni, Mikel, etc. esto es todos juntos.<br>Un saludo desde Eibar eta ikusi arte');
INSERT INTO `visitas` VALUES (108, 'Jon (ustekabe)', 'maixut@hotmail.com', NULL, '158.227.134.83', 'sipb17.gi.ehu.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2002-10-14', '12:13:00', 'aupa pe&ntilde;a!!! ktal?? Espero k bien. Este a&ntilde;o no ha podido ser, espero k tenga la oportunidad algun otro a&ntilde;o. Pasarlo biennnn. Y un abrazo muy grande AGURRRRRRRRR');
INSERT INTO `visitas` VALUES (109, 'una admiradora', NULL, NULL, '212.170.197.154', '212-170-197-154.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2002-10-25', '20:13:00', 'hola este mensaje esta dedicado a egoitz:<br>solo kiero decirte k me gustas mogollon y k me gustaria tener algo contigo ahora solo necesito tu respuesta si me dices k no no se lo k voy a hacer.<br><br>me despido sin mas un fuerte abrazo para todos y en especial para ti EGOITZ');
INSERT INTO `visitas` VALUES (110, 'BEHEKOA', NULL, NULL, '212.142.137.129', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-11-04', '12:02:00', 'HOLA WAPOS.');
INSERT INTO `visitas` VALUES (111, 'pa todos!', NULL, NULL, '80.34.54.104', '104.red-80-34-54.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-11-08', '09:24:00', 'Pero sois idiotas todos o que????<br>Se supone que esto es para hablar sobre la pagina web y no para decir tantas txorradas. Si tanto os odiais deciroslo a la cara!!!!!!!!!!<br>Ainara digan lo que digan eres la mejor!!!!:-P!!!');
INSERT INTO `visitas` VALUES (112, 'PA TODOS', NULL, NULL, '217.127.134.201', '217-127-134-201.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-11-08', '17:41:00', 'A VER SI MADURA&iacute;S QUE ES IMPENSANBLE QUE SE PUEDAN TENER ABSOLUTAMENTE TANTAS TXORRADAS EN UNA SOLA CABEZA, PERO ALGUN@ SE LLEVA LA PALMA EN DECIR TODAS LAS TXORRADAS QUE NO HEMOS SOLTADO LOS DEMAS.<BR><BR>ESTO ES PEOR QUE UN COLEGIO INFANTIL. EL MUNDO ES MAS AMPLIO QUE UNA TXARANGA, ESTA ES SOLO PARA TENER AMIGOS Y DIVERTIRSE NO PARA MONTAR UN ROLLO EN PLAN DINASTIA O FALCON CREST. BESOS A LOS KE SE LOS MEREZCAN.');
INSERT INTO `visitas` VALUES (113, 'Ioseba', NULL, NULL, '212.55.22.167', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-11-10', '21:42:00', 'No tienes huevos de dar la cara?ya vale ya esta pagina trata de musica los comentarios personales al careto de cada uno!!!!!!!!!!!!!!!!!!!!!!!!!!<br>VIVA LA PRESI Y LOS DEMAS!!!!!<br>Ainara que guapa eres!!!!!!!!!!!Muuuuuaaaaaaaaaa!!!:-P<br>');
INSERT INTO `visitas` VALUES (114, 'Para la admiradora de egoitz', NULL, NULL, '212.55.22.167', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-11-10', '21:45:00', 'De parte del interesado se quiere conocer la identidad de la persona que esta detras de egoitz, por favor fijen una fecha para el encuentro.<br>Hasta pronto.');
INSERT INTO `visitas` VALUES (115, 'Ioseba', NULL, NULL, '80.34.54.104', '104.red-80-34-54.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-11-13', '10:04:00', 'Sabeis cual es la diferencia entre cualquier persona y un imbecil???<br>El imbecil se esconde tras las letras ggg. <br>');
INSERT INTO `visitas` VALUES (116, 'Hola', NULL, NULL, '80.103.154.228', 'proxy.ia4.marketscore.com', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-11-14', '17:15:00', 'Yo sigo diciendo que Ainara es la mejor. es una buena amiga y siempre esta dispuesta ayudar a las personas que quiero no le hagas caso a ggg no vale la pena<br><br>Patxotes para todos!');
INSERT INTO `visitas` VALUES (117, 'Lara', 'regadera20@hotmail.com', NULL, '80.103.154.228', 'proxys.or4.marketscore.com', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-11-14', '17:18:00', 'HOLA QUE TAL?<br>TENGO GANAS DE VEROS. ESPERO QUE VENGAIS EL 30 A TOCAR.<br>MUXUX PA TODOS.<br>P.D: Ainara no hagas caso de lo que te dicen tu eres como eres y hay mucha gente que te quiere tal y como eres.');
INSERT INTO `visitas` VALUES (118, 'El Tzitxo', NULL, 'http://www.eltzitxo.galeon.com', '217.127.134.201', '217-127-134-201.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-11-14', '20:57:00', 'Me acabo de meter en la pagina y flipo, komo hay gente asi? ke ostias os teneis ke meter kon nadie y menos kon aina y Ioseba? encima ke ainara es de las ke mas merecen la pena aqui y ioseba es el pu&ntilde;etero amo. y si teneois ke decir algo dar la putha cara, porque aqui mucho a las espaldas como siempre pero a la cara nada, de que os escondeis? Repito otra e infinitas veces, k hay gente ke nunka kambiara, pero tampoko me sorprende ya nada a estas alturas, aupa ainara ta ios y ke se kallen de una pu&ntilde;etera vez tod@s los bokazas, que lo q hay es mucha envidia');
INSERT INTO `visitas` VALUES (119, 'Jean Paul', NULL, NULL, '212.8.66.221', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2002-11-21', '21:19:00', 'Hola soy un amigo de Lous Berretes. un saludo a todos y tambien a manin que es un buen amigo. espero veros pronto por aqu&iacute;');
INSERT INTO `visitas` VALUES (120, 'gatito', 'gatitobc@hotmail.com', NULL, '80.34.62.195', '195.red-80-34-62.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; one2)', '2002-11-28', '00:02:00', 'Ke pasa txones! ! !<br>Soy Eneko de biznietos, ya se ke os da igual pero bueno, esto esta pa komunikarse por lo ke no se ke deciros. Bueno ke sepais ke txaranga txorongo tambien tiene esto de gueb (www.sanfe.com) pa´l ke kiera echar una ojeada, y comunicaros ke en breve (5 o 6 meses) estara la nuestra preparada pa hacer un peazo de link de aki a villamuriel.<br><br>atalegorl.aiooosh');
INSERT INTO `visitas` VALUES (121, 'pekhines', 'pekhines@hotmail.com', NULL, '62.82.33.225', '225-barc-x69.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2002-12-03', '21:44:00', 'ke pasa pe&ntilde;a!!! nos lo pasamos bien el sabado eehh??? eske eibar se sale mas ke bilbo!!!! jajajjaja. AIMAR a dicho ke egoitz y jagoba estan muy txalaus (komo diria el) y ke se lo paso muy bien!! yo tamien me lo pase bien y aber si nos bemos pronto otra bez ok?? ala guap@s besos pa todos!!!! ;-) xDxD');
INSERT INTO `visitas` VALUES (122, 'Komadreja', NULL, NULL, '212.170.199.144', '212-170-199-144.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2002-12-04', '22:13:00', 'Kaixo mis pitxurrines de santutxu, como os va todo???<br>Tengo ganicas ya de veros... pero bueno ya habra tiempo de pasarnos algun buen fin de semana no???<br>Muchos muakis para todos de la chica de la trompeta de Gasteiz... Aioooooo<br>P.D: Mikel me tienes que dar tu tlf que no lo tengo y tu tienes el mio');
INSERT INTO `visitas` VALUES (123, 'Manin', 'Manintuba@hotmail.com', NULL, '213.99.199.75', '213-99-199-75.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2002-12-30', '14:59:00', 'Aupa Fanfa , un saludo a todos/as ZORIONAK ETA URTE BERRI ON!');
INSERT INTO `visitas` VALUES (124, 'LA ORGANIZACI&oacute;N', 'fanfarre@samasiku.com', 'http://www.samasiku.com', '217.127.177.110', '217-127-177-110.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2002-12-30', '15:44:00', 'HOU, HOU, HOU.<br>La Fanfarre Sama Siku os desea a todos y todas, aunque algunos no se lo merezcan, un Feliz y Prospero A&ntilde;o Nuevo 2003.<br>Hasta la proxima.');
INSERT INTO `visitas` VALUES (125, 'Jorge (Ustekabe)', 'jorgellama50@hotmail.com', NULL, '212.170.195.183', '212-170-195-183.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-12-30', '19:30:00', 'Hola familia!! Q tal andamos??? Por aqui todo sigue igual que siempre. Bueno era solo deciros: ZORIONAK ETA URTE BERRI ON!! Haber si ma&ntilde;ana nos lo pasamos bien a la noche e???');
INSERT INTO `visitas` VALUES (126, 'Ibo', 'alecaracoles@hotmail.com', NULL, '213.99.199.222', '213-99-199-222.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2002-12-30', '21:22:00', 'gelowww!!!!q tal???hace mogollon q no se nada de vosotros xq pa variar no tengo saldo, pero ahora q paso x aki...pues se me ha ocurrido desearos URTE BERRI ON!!!. y deciros q algun dia de estos(espero q muy pronto)pasaremos x bilbo xq ya tengo ganas.ondo segi!!!!pa!');
INSERT INTO `visitas` VALUES (127, 'olatz', NULL, NULL, '212.8.73.144', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; EKT-V3.0RRC; Hotbar 4.1.8.0)', '2002-12-30', '22:55:00', 'Soy muy aficionado a la musica y me pregunto ¿De donde habeis sacado el nombre de Sama Siku y porque?');
INSERT INTO `visitas` VALUES (128, 'tuercas', NULL, NULL, '212.8.73.144', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; EKT-V3.0RRC; Hotbar 4.1.8.0)', '2002-12-30', '23:02:00', 'Que era broma');
INSERT INTO `visitas` VALUES (129, 'holita', NULL, NULL, '212.142.190.218', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-01-01', '19:31:00', 'Zorionak eta urte berri on para la mejor fanfarre ;aupa sama-siku!!!!<br>Esperemos que este nuevo a&ntilde;o sea igual o mejor que el pasado!!!<br>Ondo segi!!!!!!!<br>Agur y un besote grande pa tod@s!!!!!');
INSERT INTO `visitas` VALUES (130, 'Klaus el Letxero', NULL, NULL, '192.168.0.53', '213-97-176-43.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-01-02', '10:42:00', 'Peaso de Kotillon en el Lokal de Sama<br>Diego, eres peor que el del Jamaika<br>Urte Barrigon a tod@s.');
INSERT INTO `visitas` VALUES (131, 'el trio del behekoa (se nos fue una)', NULL, NULL, '193.153.238.171', '193-153-238-171.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-01-11', '16:30:00', 'Han pasado cosas dsd la ultima vez, Alazne ta como bandera,la Itxiar se ha apuntao :( (pa mi desgracia) y yo tb, a ver q tal!! Weno,pos eso, q sois la ostia xo eso ya lo sabeis,asi q...Weno,q aupa sama y q no cambieis nunca!!!<br>Esa txuri ahi!!!(zarrapastri&ntilde;e)jaja,Ainara,animo wapetona, Alazne,sigue asi con la bandera q te va al pelo(pero mueve el culo de vez en cuando sosa), hablando de pelo.... hola Tito,jajaja :D. X cierto el cotillon se salio xo,Diego,jubilate,vale??como clarinete vales tu peso en oro, xo como dj.....jajajaja,es broma,a pesar de todo me lo pase d pm.Muchos bsotes xa todos y hasta la proxima,AGURRRRRRRRRRRR!!!!!');
INSERT INTO `visitas` VALUES (132, 'yo', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-16', '16:19:00', 'ola wap@s');
INSERT INTO `visitas` VALUES (133, 'P.F', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-17', '19:47:00', 'POR FIN !!!!!!!! YA PUEDO ESCRIBIR MENSAGES YA ME HA COSTADO SOLO DECIR QUE EL LUNES EN LA TAMBORRADA VAMOS A ARRASAR!!<br>MORO NO PONGAS MI FOTO!!<br>PENELOPO, PRISCYLA, AFRODITA Y ANACLETA LAS MEJORES<br>SALUDOS Y A SEGUIR ASI');
INSERT INTO `visitas` VALUES (134, 'P.F.', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-17', '19:49:00', 'ME HE EQUIVOCADO NO ES PENELOPO, ES PENELOPE<br>LO SIENTO');
INSERT INTO `visitas` VALUES (135, 'b', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-18', '13:56:00', 'eso van asaber lo q es una buena fanfarre.yo os ire a ver. seguir asi de verdad!.besos para tod@s.');
INSERT INTO `visitas` VALUES (136, 'trump', NULL, NULL, '193.152.167.13', '193-152-167-13.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-01-24', '00:08:00', 'No se kien ha hecho un resumen tan breve de la historia, pero una pregunta, Tanto os cuesta poner que esa Fanfarre gipuzkoana gracias a la cual surgio sama, es la que ha sido la mejor de todas? es decir TIRRI-TARRA. que hasta que una fanfarre los supere va a tener uqe llover mucho no, muchiiisimo. Bueno un saludo a todos. Y otra cosilla, hasta que los actuales miembros de sama superen a generaciones anteriores, mucho tiempo tiene que pasar, creezme esos eran buenos tiempos para sama y todas las fanfarres.');
INSERT INTO `visitas` VALUES (137, 'aaaaaaaaahhhhhhhhh', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-24', '11:24:00', 'ni caso a trump o kien sea ese o esa q sois los mejores.<br>BESOS.');
INSERT INTO `visitas` VALUES (138, 'trump', NULL, NULL, '193.153.227.76', '193-153-227-76.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-01-24', '21:44:00', 'El que dude algo de lo que digo , que pregunte a cualquier miembro de cualquer fanfarre de generaciones anteriores,');
INSERT INTO `visitas` VALUES (139, 'hola trump', NULL, NULL, '212.142.190.104', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-01-25', '14:10:00', 'hola trump !y a ti tanto te cuesta decir tu nombre?<br>es q si te conocemos pues un dia vienes o te pasas por el local y charlamos un poco.q esta paguina no es lugar!');
INSERT INTO `visitas` VALUES (140, 'R.P.R.', 'txarangas@hotmail.com', NULL, '193.152.167.209', '193-152-167-209.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-01-25', '20:31:00', 'Hola txabales!!! Buneo primera vez k entro aki, no sabia k teniais web, jejejeje, por cierto k soy PULIDO jajajajaj, k me he enterado k el lunes tocasteis en donosti la tamborrada de Anastasio, k tal? la verdad k os a tocado una de las mas duras, pero bueno ya me direis k tal. por si a caso os parecio duro, pensar k un servidor toco en seis tamborradas, un saludo y espero noticias, os dejo me mail');
INSERT INTO `visitas` VALUES (141, 'cu&ntilde;aoooooooooooooooooooooooo', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-27', '12:31:00', 'moro eres el puto amo');
INSERT INTO `visitas` VALUES (142, 'Moro', NULL, NULL, '217.127.177.110', '170.red-80-58-41.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-27', '18:06:00', 'Gracias Zuri&ntilde;e');
INSERT INTO `visitas` VALUES (143, 'hola', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; (R1 1.3))', '2003-01-28', '13:44:00', 'tu si que eres majo, Pulido<br>Ha sido todo un placer conocerte,guapo');
INSERT INTO `visitas` VALUES (144, 'PARA AKETZA', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; (R1 1.3))', '2003-01-28', '13:45:00', 'MUCHASSSS FELICIDADES !!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
INSERT INTO `visitas` VALUES (145, 'COPITO', NULL, NULL, '62.99.92.89', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-01-28', '14:43:00', 'ZORIONAK AKE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
INSERT INTO `visitas` VALUES (146, 'Para Egoitz Trebolazabala', NULL, NULL, '193.153.125.210', '193-153-125-210.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; yie6-es)', '2003-01-30', '18:30:00', 'Hola Egoitz, soy una chica del instituto Elorrieta. Me dicen muchas veces que me parezco a ti, que soy tu hermana, pero en realidad estoy enamorada de ti. Te quiero mucho, por favor el lunes cuando me veas dime algo. BESOS');
INSERT INTO `visitas` VALUES (147, 'A Trump', NULL, NULL, '217.127.177.110', '170.red-80-58-41.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2003-01-31', '10:17:00', 'Nadie dudamos nada de lo que has dicho, es cierto, la fanafrre guipuzcoana es TirriTarra, si y que, ya sabemos que ha sido la mejor y que siempre ha estado un paso adelante en idear nuevos estilos, no hay ningun problema en poner que es TirriTarra, somos amigos y nos llevamos muy bien con ellos. Esa Historia tan breve esta hecha hace bastantes a&ntilde;os por los primeros miembros de la Fanfarre, y nosotros lo hemos plasmado en esta pagina, pero es la historia de la fundacion de Sama Siku. Esta pagina la hacemos nosotros mismos muy poco a poco cuando tenemos tiempo, y ya se ira ampliando con nuevas secciones y con una historia mucho mas amplia.<br>Un saludo para todos. Agur Yogur');
INSERT INTO `visitas` VALUES (148, 'trump', NULL, NULL, '193.152.167.182', '193-152-167-182.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-02-01', '01:16:00', 'Gracias por la aclaraci&oacute;n, entonces reconozco mi error y perdonar mi brusquedad, no era mi entencion ofender a nadie, un saludo para tod@s.');
INSERT INTO `visitas` VALUES (149, 'Elitxu', NULL, NULL, '193.152.162.105', '193-152-162-105.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-02-02', '23:22:00', 'Bueno,en primer lugar felicitar a Aketza y a Pulgui porque la sema pasada cumplieron un a&ntilde;o mas, asi que....ZORIONAK!!Y bueno ya que estoy, felicitar tambien a Ixone q el martes los cumple, asi que otro ZORIONAK!!Bueno, pues lo dicho, que sigais asi porque sonais al pelo y muchos besotes para todos!!<br>(*_*) AGURRRR (*_*)<br>P.D.: AUPA EL ATHLETIC!!QUE HEMOS GANAO 3-0 A LA REAL!!');
INSERT INTO `visitas` VALUES (150, 'Almu', NULL, NULL, '217.125.147.101', '217-125-147-101.uc.nombres.ttd.es', '04/02/2003Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-02-04', '18:21:00', 'Dani! gracias por lo del bombardino! parece que no era tanto, no? tendr&eacute; que pagarte algo por el trabajito! bueno, bueno, ya se ver&aacute;! Morito! qu&eacute; has hecho que ya puedo entrar en esta p&aacute;gina? cacho.... por cierto creo que fue el cumple de Ake, pues Felicidades guapo! . Seguir as&iacute; que sois, y somos, los mejores! Besos pa todos! sobre todo a mis ni&ntilde;as!');
INSERT INTO `visitas` VALUES (151, 'la mas guay', NULL, NULL, '62.99.92.178', 'eui4ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-02-05', '11:17:00', 'Hola Diego !!! lo primero de todo ZORIONAK!!!!!! Que viejo eres cuantos haces este a&ntilde;o? mejor no lo digas bueno supongo que como es tu cumple te pagaras el cine, no? bueno que lo pases bien y que tengas mutxos regalos.');
INSERT INTO `visitas` VALUES (152, 'Almu', NULL, NULL, '217.125.147.101', '217-125-147-101.uc.nombres.ttd.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-02-05', '18:03:00', 'Diego! zorionakkkk! viejo! que ya te vas pareciendo a una que yo me s&eacute; y no voy a mencionar! qu&eacute; pesadilla! nos hacemos viejos! espero que tu d&iacute;a haya sido mejor que el mio! a ver si te pagas algo el pr&oacute;ximo d&iacute;a que nos veamos! musuz guapet&oacute;n!');
INSERT INTO `visitas` VALUES (153, 'LARA', NULL, NULL, '62.36.169.8', 'proxys.ord.marketscore.com', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-02-07', '14:41:00', 'Muchas gracias por las fotos. Me han hecho mucha ilusion.<br>Muxutxux pa tos<br>AGUR');
INSERT INTO `visitas` VALUES (154, 'jessica', NULL, NULL, '62.99.92.178', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-02-08', '14:08:00', 'De nada, la verdad es que las tenia desde el a&ntilde;o pasado pero nunca me acordaba de mandarlas pero el otro dia estuve ordenando las fotos y me dije "de hoy no pasa" me alegro de que te hayan gustado y gracias por escribir el msm');
INSERT INTO `visitas` VALUES (155, 'CUPIDO', NULL, NULL, '212.142.190.213', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-02-14', '13:49:00', 'HOLITA GENTE!!!<BR>SOLAMENTE DECIROS:<BR>FELIZ DIA DE SAN VALENTIN!!!<BR>DIA DEL AMOR DIA DEL ACRI&ntilde;O!!!<BR>AGUR!!!!<BR>MUCHOS BESOTES PARA TODOS!!!<BR>:o)');
INSERT INTO `visitas` VALUES (156, 'la + borde', NULL, NULL, '62.99.92.178', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-02-18', '16:11:00', 'ay,ay! que poquito te falta eh Maria!!!!! vete ya pensando en la jubilacion y en lo quieres por tu cumple bueno el dia 25 te volvere a escribir agur!!!!!');
INSERT INTO `visitas` VALUES (157, 'Elitxu', NULL, NULL, '62.99.92.178', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-02-21', '14:48:00', 'KAIXO!! Q tal va la cosa?? Yo x aki ando, haciendo el minga un rato. Bueno, que no se que contar asi que........hasta la pr&oacute;xima. Un desote.<BR>AAAAAGGGGUUUURRRR!! (*_*)<BR>MUACKS');
INSERT INTO `visitas` VALUES (164, '"LA SHERI"', NULL, NULL, '62.99.92.178', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-02-25', '13:16:00', 'kaixo maria!!!! que tal en el cole? espero que te hayan tirado de las orejas bueno solo decirte que te regalen l discman y que lo pases muy bien<br><br>ZORIONAK!!!!!!!!!!!!!!<br><br><br>ya eres una vieji, ja ,ja!');
INSERT INTO `visitas` VALUES (165, 'copito', NULL, NULL, '62.99.92.238', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-02-25', '13:54:00', 'aupi maria!<br>zorionak!!! ya e e mirado lo de las residencias si eso ma&ntilde;ana te llamo y te digo ok? Jajajajajajaja<br>muxux. ;o)');
INSERT INTO `visitas` VALUES (166, 'marta', NULL, NULL, '212.142.191.104', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-02-27', '19:09:00', 'hello chic@s!!!<br>que ya llegan los carnavales!!!!este a&ntilde;o de que os disfrazais?seguro que ireis muy guap@,s como siempre,bueno, nos vemos por ahi que seguro que este a&ntilde;o tambien estareis animando las calles y los carnavales!!!!!!!<br>muchos besotes para todos!!!!!!!<br>agur!!!!!');
INSERT INTO `visitas` VALUES (167, 'holita!!!', NULL, NULL, '80.34.54.104', '42.red-80-58-49.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-03-17', '12:08:00', 'Un saludo para todos!!!pero en especial a mis amiguitas,afrodita,priscila,anakleta,y penelope F. (penef_ _ _en ) ;o)!!!<br>besitos pa tod@s!!!!<br>Aupa sama-siku!!!<br>A ver cuando poneis fotos nuevas!!!<br>AGUR!!!!!');
INSERT INTO `visitas` VALUES (168, 'guapisima', 'tiabuena@hotmail.com', 'http://www.lalefa.com', '80.32.91.70', '42.red-80-58-49.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)', '2003-03-20', '15:58:00', 'Hello!!me gustaria daros una peque&ntilde;a opinion,y es que estoy de acuerdo con holita, a ver cuando poneis fotos nuevas!!!!!!<br>y lo mas importante AUPA SAMA-SIKU!!!<br>BESAZOS PARA TODOS!!!!!');
INSERT INTO `visitas` VALUES (169, 'THE BOSS', NULL, NULL, '217.127.177.110', '170.red-80-58-41.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-03-20', '18:38:00', 'Tranquilas BODEGAS!! debido a las miles de peticiones, en breve pondremos muchas mas fotos.<br>Agur yogur');
INSERT INTO `visitas` VALUES (170, 'guapisima', 'tiabuena@hotmail.com', 'http://www.lalefa.com', '62.99.93.172', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-03-24', '12:50:00', 'graciasthe boss!!!');
INSERT INTO `visitas` VALUES (171, 'Ioseba', NULL, NULL, '80.32.91.70', '42.red-80-58-49.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)', '2003-03-28', '16:01:00', 'Aupa gente!!!!<br>Solo queria daros las gracias por venir a Eibar y deciros que siento mucho haber estado medio enfermo o lo que sea. Me gusto mucho que vinierais, gracias!!!!!!<br>Aupa Maria, Diego, Moro y Ainara!!!!!!!!<br>Besos y muerdos!!!!!!! (Cada uno lo que quiera!!!)');
INSERT INTO `visitas` VALUES (172, 'yo', NULL, NULL, '212.142.190.238', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-03-29', '17:34:00', 'muy bien Ioseba a los demas que nos den dos duros. Vale,vale esta te la guardo para la proxima');
INSERT INTO `visitas` VALUES (173, 'Ioseba', NULL, NULL, '80.34.54.104', '42.red-80-58-49.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-03-29', '19:41:00', 'Yo o tu, o como quieras decirlo, si me dices quien eres la proxima vez te doy besos a ti tambien!!!!<br>Pero si te digo la verdad soy lo peor dando besos(por eso no me gusta dar dos besos a menudo).<br>Aupa sama siku!!!!!!!<br>Agur.');
INSERT INTO `visitas` VALUES (174, 'Jorge', 'jorgellama50@hotmail.com', NULL, '81.42.40.225', '80.58.48.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-04-26', '13:14:00', 'Hola pe&ntilde;a!!! Q tal va todo por Santutxu??? Espero que bien!! Tengo ganas de veros ya, e? Asi que haber si nos pasamos de visita pronto! Estareis a tope ya no? Con eso de que llega el veranito... Pues nada, un besazo pa todos!!!!<br>P.D.:Moro, a ver pa cuando estan esas fotos!! Un beso de la family, vale?<br>P.D''.:Ya que empiezo a pedir... QUIERO UNA CAMISETA DE SAMA YA!!!!<br>AGUR......');
INSERT INTO `visitas` VALUES (175, 'Zuri', 'zurizuri22@hotmail.com', NULL, '80.24.208.101', '80.58.42.42.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-04-30', '11:06:00', 'Kaixo a todos!! Que tal estais? Espero que bien.<br><br>Me encontr&eacute; el otro d&iacute;a con Saray y que me he acordado de vosotros. Bueno, supongo que ya todo a punto, verdad? Bueno, he cambiado de movil. Y os doy mi correo por si algun d&iacute;a os apetece escribirme.<br><br>zurizuri22@hotmail.com<br><br>Besos a todos. <br><br><br>');
INSERT INTO `visitas` VALUES (176, 'LA ORGANIZACI&oacute;N', NULL, NULL, '212.142.155.198', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-04-30', '21:10:00', '¿Quieres una camiseta?<br><br><br><br>¡¡¡Pues te la compras!!!');
INSERT INTO `visitas` VALUES (177, 'Priscy', NULL, NULL, '62.99.92.132', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-05-01', '20:26:00', 'Joder, como se nota que la organizacion lleva 15 dias sin dormir');
INSERT INTO `visitas` VALUES (178, 'penefo', NULL, NULL, '62.99.92.132', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-05-03', '12:52:00', 'zorionak moro!!!! aunque sea un dia mas tarde ayer se me olvido escribirlo pero lo esvribo hoy por cierto muy ricos los pasteles<br><br><br>ZORIONAK!!!!!!!');
INSERT INTO `visitas` VALUES (179, 'eneko biznietos', NULL, NULL, '212.142.249.233', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)', '2003-05-09', '09:47:00', 'Buenas majos!!<br>PREGUNTA, va sama a mont de marsan?<br>hay pe&ntilde;a ke dice ke si y otros ke no, a ver si me poneis algo en klaro xk x ahi dicen ke van los aldatz.<br>salutis tu tus.');
INSERT INTO `visitas` VALUES (180, 'THE ORGANIZATION', NULL, NULL, '217.127.177.110', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2003-05-09', '11:07:00', 'Pues de momento sabemos lo mismo que tu, hay muchos rumores, eso si, pero mont de marsan no nos han confirmado nada todabia, en cuanto lo haga ya lo sabremos todos.<br>Bueno un saludo a todos, agur yogur');
INSERT INTO `visitas` VALUES (181, 'Txis-pum-ra-ra', NULL, NULL, '81.42.74.18', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-05-10', '13:42:00', 'Kaixo gente?? Q tal andamos?? Yo keria hacer una pregunta: xq los ensayos generales son los sabados y tan pronto?? Con lo bien que estar&iacute;a en la camita durmiendo hastas las tantas...Asi voy como voy a los ensayos,to sopa!! Weno,un muxutxu y q lo paseis bien en Ortuella. Ainara,acuerdate de mi q estare estudiando!! AGUR YOGUR.');
INSERT INTO `visitas` VALUES (182, 'danielita', NULL, NULL, '62.99.92.132', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-05-12', '10:03:00', 'hay bodegas si no le dieses tanto al kalima no irias asi a los ensayos ...jajajajaja<br>q sepas q nos acordamos de ti ainara y yo e hicimos un brindis.Tenias q haber venido a ortuella, estuvo mu bien.<br>y el diego?,donde esta? Jajajajajaja.<br>bueno besitos para tod@s y a ver si vamos a m.marsan con biznietos.<br>agures yogures.');
INSERT INTO `visitas` VALUES (183, 'anakleta', NULL, NULL, '62.99.93.172', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-05-13', '16:24:00', 'ZORIONAK SARAY!!!!!!!!!!!!!!!!');
INSERT INTO `visitas` VALUES (184, 'txis-pum-ra-ra', NULL, NULL, '81.42.66.194', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-05-14', '18:45:00', 'ZORIONAK SARAY!! Espero que te regalen muchas cosas y que os lo paseis bien en la celebraci&oacute;n, yo estr&eacute; estudiando :( Pero os tomareis algo a mi slaud,no¿?<br>Ainara y Zuri, gracias x acordaros de mi el sabado, soy unos soletes (*_*) MUACKSSSSSSS!!! Un muxutxu para todos (a compartir).jaja.<br>Agur yogur.<br>P.D: Danielita, eres una bodeigas!! Y no es x darle al kalima, es xq hay gente q entre semana madrugamos... :P');
INSERT INTO `visitas` VALUES (185, 'danielita', NULL, NULL, '62.99.60.142', '62.99.60.142', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-05-31', '12:29:00', 'si ya se x kien lo dices, la frase t a kedado unpokito graciosa no? jajajaja.<br><br>bueno muxux pa ti tb eluteria asta la tarde, jijijiji.');
INSERT INTO `visitas` VALUES (186, 'biznietos', NULL, NULL, '62.82.12.235', '235-barc-x34.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; Hotbar 3.0)', '2003-06-04', '13:25:00', 'WENASSSSSSS!!!!<br>BIZNIETOS YA TIENE PAGINA WEB: "BIZNIETOSCELEDON.PORT5.COM", SIN WWW,OK?TARDA UN POCO (MUCHO) EN CARGAR, ESKE SU CREADOR ES UN LIANTE. VENGA NOS VEMOS<br>');
INSERT INTO `visitas` VALUES (187, 'Uno que se murio esperando', NULL, 'http://biznietosceledon.port5.com', '217.127.177.110', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2003-06-04', '16:17:00', 'Que tarda mucho?? A mi me ha cargado enseguida, como no tengo mucho tiempo hoy solo he podido verla 3 horas, ma&ntilde;ana acabare de verla que tengo tol dia, je, je,<br>Aguuuur');
INSERT INTO `visitas` VALUES (188, 'danielita', NULL, NULL, '212.142.190.110', 'eu190-110.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-07-30', '11:42:00', 'ya falta pokito para huesca e chic@s??!!!!!!<br>bueno alli a pasarlo bien y a pasar de malos rollos (ya sabeis xq)<br><br>muxux para todos y un abrazo mu fuerte y un besazo para mi tata.<br><br>');
INSERT INTO `visitas` VALUES (189, 'jacobo', NULL, NULL, '212.55.22.192', 'eu22-192.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90; EKT-V3.0RRC)', '2003-08-01', '01:09:00', 'aupa MILIKIS!!QUEDAN 9 DIAS PA HUESCA A POR TODAS,SOMOS LOS MEJORES.GORASAMA Y VIVA EL MONTE');
INSERT INTO `visitas` VALUES (190, 'Jacinto Benavente', NULL, NULL, '217.127.177.110', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2003-08-01', '08:35:00', 'Joder Jacobo, escribiendo mensajitos a las 3 de la ma&ntilde;ana? que bodegas. Bueno, hasta Carranza y ...<br>VIVA EL MONTE!!!');
INSERT INTO `visitas` VALUES (191, 'Ainara Txiki', 'saltinbanki@hotmail.com', NULL, '80.35.107.100', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2003-08-01', '09:14:00', 'AUPA! Aki una turutarrera. Os estais currando la pagina, zorionak, pero pa cuando mas fotos? Ya se ke os tienen fritos con esta preguntita. Benga animo eta AURRERA FANFARREAK!');
INSERT INTO `visitas` VALUES (192, 'anonimo', NULL, NULL, '212.8.73.207', 'eui3ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; EKT-V3.0RRC)', '2003-08-01', '21:41:00', 'iepa!!que tal este a&ntilde;o sin mi bien verdad por lo menos pa algunas o algunos yo diria ke todos jeje ixone ke el a&ntilde;o k eviene nos vemso en otxar jeje zuri ele aver cuando nos vemso eh ke tais perdidas ajja eso si no ligeis muxo en hueska y ixone no te metas a la fuente y cantes camela ke nos conocemos bueno nada txabales ke os lo paseis de pm en hueska ok !t eso si darles ca&ntilde;a a los gorito jeje en especial alguno ke yo me se venga ke os rallo agur benur aupa narangito !!!!!<br>aiooooooooooooooooooooo');
INSERT INTO `visitas` VALUES (193, 'Anakleta', NULL, NULL, '62.99.93.97', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-08-06', '08:43:00', 'Aupi!!!<br>Alberto,cuantas horas quedan para huesca?jajaja!!!');
INSERT INTO `visitas` VALUES (194, 'danielita', NULL, NULL, '212.142.190.110', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-07', '12:01:00', 'hola chic@s!!!<br>ayer en la blanca bien pero teniamos que haber bailado un poquito mas, total da lo mismo nosotros si estamos juntos nos lo pasamos bien en donde sea.<br>TITO CUANTAS HORAS QUEDAN???ja,ja,ja.<br>bueno chicos que ma&ntilde;ana ya a HUESCA!<br>besitos y abrazos.');
INSERT INTO `visitas` VALUES (195, 'UNO Q ANTES FORMABA EN EL EKIPO', NULL, NULL, '212.142.190.52', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-07', '22:02:00', 'AUPA TXABALES!!!!!! OS LO ESTAREIS PASANDO D PUTA MADRE!!!!! BUENO YA OS VERE EN FIESTAS D BILBO. LO ACEIS D PUTA MADRE. BENGA TXABALES ME DESPIDO. AGURRRRRRRRRRR');
INSERT INTO `visitas` VALUES (196, 'UNO Q ANTES FORMABA EN EL EKIPO', NULL, NULL, '212.142.190.52', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-07', '22:05:00', 'AUPA TXABALES!!!!!!! ICE MAL EN IRME SIN DESPEDIRME CASI PERO BUENO. LO SIENTO A TODOS. MUXUS A TODOS. GRACIS POR LOS MOMENTOS Q ME ABEIS DADO. UNAI');
INSERT INTO `visitas` VALUES (197, 'danielita', NULL, NULL, '212.142.190.110', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-07', '23:04:00', 'q unai eres?');
INSERT INTO `visitas` VALUES (198, 'anakleta', NULL, NULL, '155.210.204.105', '155.210.204.105', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2003-08-13', '19:07:00', 'aupa huesca eta aupa sama-siku!!!!!!');
INSERT INTO `visitas` VALUES (199, 'sin comentarios por ke muy fuerte jejeje', NULL, NULL, '212.8.73.164', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; EKT-V3.0RRC)', '2003-08-13', '21:29:00', 'aupi!!jaja ke fuerte lo de la iratxe ahora la gente le da por fugarse con la ropa y el instrumento de la famfarre eske esta es muy gorda chaval<br>pos nada iratxe ke espra ke me llama la polipa darte un aviso<br>tinton tin por favor se&ntilde;orita iratxe devuelva inmediatamente las perteneccias de la famfarre samasiku o sino su cara se llenara de .........--............. en varios dias gracias nadamas txikilla ke anda devulve la ropa por ke logo pasa lo ke pasa .bueno chavale ske vengaios de puta madre de hueska ok<br>yuy eso<br>la cancion de el verano<br>tu me das cremita yo te doy cremita aprieta bien el tubo ke sale muy freskita aiooooooooooooooooooooooooooooooooooooooooooooooooooooo');
INSERT INTO `visitas` VALUES (200, 'Danielita', NULL, NULL, '212.142.190.110', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-16', '20:01:00', 'kKIERO VOLVER AHUESCAAAAAAAAAAAAA!!!!!!!!!!');
INSERT INTO `visitas` VALUES (201, 'mari jaia', NULL, NULL, '62.99.93.245', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-08-20', '14:59:00', 'un saludo para la mejor fanfarre!!!<br>gora sama siku eta gora aste nagusia!!!!!!');
INSERT INTO `visitas` VALUES (202, 'txis-pum-ra-ra', NULL, NULL, '81.42.75.166', '237.red-80-58-41.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-08-25', '19:36:00', 'Cuanto tiempo,no?? Que pasada Huesca, me lo he pasado como una enana. Danielita, dnd has dejao los zapatos ortopedicos de Ne?? Jajaja, q risas, q no?? Bueno, q un saludo a toda la pe&ntilde;a q sois la ... eso!! AGUR!!!');
INSERT INTO `visitas` VALUES (203, 'anakleta', NULL, NULL, '62.99.89.150', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-08-25', '23:22:00', 'aupi!<br>solo deciros q sois los mejores y q me lo paso bomba!!!por cierto aupa el gran prix!!!q risas eh?<br>esos movimientos mendikute!!!!jejeje!!!yujuuuu!!!!!<br>y como no me canso de decirlo pues eso q somos los mejores!!!<br>y aupa sama siku!!!!!<br>muxus para tod@s!!!!');
INSERT INTO `visitas` VALUES (204, 'lisa', NULL, NULL, '62.99.89.244', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-26', '20:07:00', 'gora SAMA-SIKU y punto, SAMA-SIKU es la mejor y ya esta.');
INSERT INTO `visitas` VALUES (205, 'zuri', NULL, NULL, '62.99.89.244', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-28', '01:18:00', 'zorionak itzi!!!!<br>ya mayor de edad! q tal sientan los 18? ya se kien va a ir ahora a por los ....<br>bueno, muxux para l@s de sama y sobre todo para mi tata.');
INSERT INTO `visitas` VALUES (206, 'dani tamayo', '0101.delegado@nacex.es', NULL, '81.34.224.61', '80.58.46.235.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-28', '15:36:00', 'felicidades acabo de descubriros y me ha gustado la pagina.<br>espero que todo siga adelante. un saludo a quienes seguis y de entre estos un abrazo a los que conozco');
INSERT INTO `visitas` VALUES (207, 'SAN LORENZO', NULL, NULL, '81.42.74.210', '237.red-80-58-41.pooles.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-08-28', '21:34:00', 'GORA HUESCA!!! AUPA EL JEREZANO!! QUE LA BERBENA SEA MUCHO MEJOR EL A&ntilde;O Q VIENE!! ARRIBA SAN LORENZO!! Y VIVA EL MONTE!!!<br>Sama-Siku la mejor.');
INSERT INTO `visitas` VALUES (208, 'SALVADORA AL RESCATE', NULL, NULL, '62.99.89.244', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-08-29', '21:26:00', 'cuanto tiempo hace que no escribia aqui solo decirles a los de palencia que me lo pase muy bien que menuda aventura y a ver cuando lo repetimos sobre todo la charla de la noche<br>Y sobre todo no me hagais desconfiar de vosotros que si no ya sabeis lo que tenemos que hacer<br>MUXUS A TODOS');
INSERT INTO `visitas` VALUES (209, 'eneko biznietos', NULL, NULL, '213.96.140.92', '80.58.46.235.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2003-09-04', '17:29:00', 'Hola majos!!!<br>Solamente invitaros a la gueb de mi grupo www.desajuste.com dnd podeis eskuchar parte de nuestra maketa. Espero ke os guste.<br>P.D. podeis saludar en el foro.<br>aios.');
INSERT INTO `visitas` VALUES (210, 'txis-pum-ra-ra', NULL, NULL, '81.42.74.62', '80.58.41.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2003-09-11', '21:37:00', 'Wenas wapetones!! Q deciros q salimos muy monos por la tele, no se si alguien nos ha visto xo yo si, y salimos todos muy wapos!! Unos mas q otros pero weno... son cosas q pasan!! Un besote wapetones y...ALA!! a JUGAR A PALA!!<br>Hola Tatita ( Ainara )!! gracias x todo y q sepas q te quiero mogollon. Un beso enorme WAPISIMA!! y mejorate!!<br>GORA SAMA-SIKU!!');
INSERT INTO `visitas` VALUES (211, 'delirios de una delirante', NULL, NULL, '62.99.120.135', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-09-17', '16:28:00', 'pasaba yo por aqui (sin levantarme de mi silla) y me apetecia escribir un poquito. El sol ha salido por la ma&ntilde;ana y las flores cantan con fervor, la noche nos cubrira con su manto y las estrellas nos iluminaran en la oscuridad. Decirme una cosa amigos mios, en verdad necesitamos estres con un mundo tan bonito como este? Porque la paz no reina en nuestros corazones los seres peque&ntilde;itos han emigrado a otro planeta,cuando los volveremos a ver? cuando los volveremos a tocar? cuando los volveremos a sentir en nuestro interior?Todo depende de todos y cada uno de (vosotros, nosotros, ellos), hagamos el amor fogosamente hasta que ninguno de nosotros pueda mas y dejemos la guerra o cualquier otro tipo de rencor a un lado. A mi me gusta mirar el sol mientras amanece, me gusta escuchar el ruido de las olas en una relajada ma&ntilde;ana, me gusta vivir. Por eso amigos mios tener muy presente esto: la leche condensada esta buenisima!!!!!!!<br>Hasta otra samasiku!!!!!!!!');
INSERT INTO `visitas` VALUES (212, 'delirios de la misma delirante', NULL, NULL, '62.99.88.2', 'eui1ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-10-02', '18:37:00', 'Otra vez nuestros caminos se cruzaron, y otra vez mas se tendran que separar. Como todos los grandes personajes(aquel de la ultima fila ;) ) todas las personas tenemos que hacer nuestras necesidades, tenemos que comer, tenemos que beber, tenemos que...ejm ejem hacer cosas al fin y al cabo. Pues bien, el buen resultado de todas esas cosas se encuentra nada mas y nada menos que en nuestro culo. Es verdad, no os riais, si nuestro culo esta incomodo encima de una silla todo nosotros estaremos mal y cuando nos levantemos tendremos dolor de culo encima!!! Y si nuestro culo no puede cagar, se nos hincha la tripa mas y mas hasta que lo expulsamos todo de tiron y parece que estamos echando una bomba atomica!! En resumen, que si nuestro culo se siente bien, nosotros tambien, y las cosas que se hacen cuando uno se siente bien salen mejor y son mas satisfactorias.Asik ya saben todos no? A cuidar nuestros culos!!!!(que ademas a todos nos gusta tocar un culo bien cuidado).<br>Bueno ya basta de chapa por hoy, y no quiero decir que likideis a mikel e?? haber si lo tomais al pie de la letra y luego os quedais sin tio bueno!!<br>Hasta la proxima samasiku!!!!!');
INSERT INTO `visitas` VALUES (213, 'Mendicute', NULL, NULL, '62.37.59.170', '62-37-59-170.dialup.uni2.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-10-17', '14:49:00', 'Epa gentuza qtal? tngo un virus y no me da tiempo a escribir muxo, asiq muchos muxus a todos desde Eibar.<br>A, y escribid un mensaje de apoyo a "Rulo" (jugador del eibar sancionado x anti-dopaje): apoyoarulo@hotmail.com<br>Aver cuando stamos!<br>AGUR!!!<br>AUPA SAMASIKU AUPA USTEKABE!!!');
INSERT INTO `visitas` VALUES (214, 'MENDI (USTEKABE)', NULL, NULL, '62.37.59.159', '62-37-59-159.dialup.uni2.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-11-02', '00:45:00', 'EPA!!! Si pod&eacute;is, cambiad en ENLACES nuestra direcci&oacute;n a www.ustekabe.galeon.com , ok? Sq ustekabe.es.fm no funciona. THANK YOU!!!!<br>Qtal xay?Avr si renov&aacute;is las fotos,e?jeje. Weno, ala, avr si ns juntamos pronto...<br>recuerds a tod@s!!!');
INSERT INTO `visitas` VALUES (215, 'KP', NULL, NULL, '10.141.2.221', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-11-05', '15:06:00', 'LA MEJOR POR MUCHO ES LA TIRRI TARRA, PERO A VOSOTROS TAMBIEN OS QUIERO. UN BESAZO');
INSERT INTO `visitas` VALUES (216, 'hola', NULL, NULL, '62.99.92.189', 'eui2ca.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-11-11', '19:20:00', 'la tiri-tarra ya no existe!es una pena pero es un hecho asi que ...<br>muxus para todos!!!');
INSERT INTO `visitas` VALUES (217, 'MENDICUTE', 'supermendikute@hotmail.com', 'http://www.supermendikute.galeon.com', '62.37.59.139', '62-37-59-139.dialup.uni2.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-11-21', '13:57:00', 'wola! qtal? os invito a visitar la nueva web de USTEKABE: www.ustekabe.com , q, para q os qej&eacute;is.... ¡la ten&eacute;is en euskera, castellano y franc&eacute;s! q siempre nos dec&iacute;ais q tenemos q poner en cast., pues ya est&aacute;! un abrazo dsd eibar (el a&ntilde;o q biene contra athletic, en primera, si es que no baj&aacute;is, jeje)');
INSERT INTO `visitas` VALUES (218, 'KP', NULL, 'http://la tirri tarra existe', '10.141.2.206', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-11-28', '08:19:00', 'PIENSO QUE ANDAS UN POCO MAL DE INFORMACION. YA QUE LA TIRRI - TARRA EXISTE Y EXISTIRA TODA LA VIDA. ESO ES LO QUE A MUCHOS LES GUSTAR&iacute;A QUE NO EXISTIERA, PERO TODAV&iacute;A LES QUEDA MUCHA GUERRA QUE DAR. NO COMO A OTRAS.<br>UN BESO PARA SAMA. SAMA COMO SE LLAMABA EL PERRO DE I&ntilde;AKI Y TXEMA. EN FIN QUE TIEMPOS.');
INSERT INTO `visitas` VALUES (219, 'HOLA SOY PITUFINA', NULL, NULL, '10.141.2.206', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-11-28', '08:28:00', 'SIEMPRE FUISTES UNAS HORTERAS, EN VUESTRAS COREOGRAFIAS BARATAS Y VUESTROS TRAJES DEL TODO 100.');
INSERT INTO `visitas` VALUES (220, 'HOLA SOY PITUFINA', NULL, NULL, '10.141.2.206', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-11-28', '08:30:00', 'SOLO OS FALTABAN LAS PANDERETAS Y PONEROS A BAILAR COMO LES CAMELUS DELANTE DEL BOMBO.<br>ANDA QUE VAYA FOTOS ME PONEIS, POR LO MENOS PODIAIS A VER PUESTO UNA FOTO MIA EN EL BAILE QUE ME PEGUE A LO SUELTO DENTRO DEL CIRCULO DE LA FANFARRE.<br>UN BESO PARA ESTI.<br>TE QUIERE TU PITUFINA.');
INSERT INTO `visitas` VALUES (221, 'Gutti', 'ja.angulo@euskalnet.net', NULL, '62.99.21.153', '62.99.21.153', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Creative)', '2003-11-30', '12:31:00', 'Cojonuda esta web,<br><br>seguid as&iacute;.<br><br>Un saludo para todos Gutti');
INSERT INTO `visitas` VALUES (222, 'Javi', NULL, NULL, '62.99.21.153', '62.99.21.153', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Creative)', '2003-11-30', '12:36:00', 'por cierto esa foto mia de ¿donde a salido?<br><br>Joder si era jover y todo<br><br>Gutti');
INSERT INTO `visitas` VALUES (223, 'PITUFINA', NULL, NULL, '10.141.2.206', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-12-03', '11:54:00', 'ALDATZ GORA PERO SI ESOS ERAN LOS QUE IMITABAN A LOS CAMELUS, Y ENCIMA ERAN UNA COPIA BARATA DE SAMA SIKU.<br>LOS PALMARES DE ALDATZ GORA? CUALES LOS QUE GANABA CUANDO NO COMPETIAN MAS QUE FANFARRES GABACHAS O EXTRANJERAS. ANDA SI NO OS COMIAIS NADA CUANDO IBA UNA COMO SAMA O LA TIRRI ETC...<br>PIEJOSILLOS SOIS PEOR QUE LOS KILIKIS.<br>ADEMAS VUESTROS TRAJES TAMBIEN ERAN DEL TODO 100.<br>UN BESO PARA ESTI.');
INSERT INTO `visitas` VALUES (224, 'anakleta', NULL, NULL, '62.99.92.189', '62.99.92.189', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2003-12-05', '13:28:00', 'AUPI A TODOS!!!<br>SOLO DECIR UNA COSITA QUE SOBRA DE DECIRPORQUE YA SE SABE PERO BUENO COMO SUENA MUY BIEN;GORA....SAMA-SIKUUUU!!!!<br>EH ALTZA?JAJAJA!!!');
INSERT INTO `visitas` VALUES (225, 'PEFO', NULL, NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-12-15', '11:51:00', 'Kaixo a todos solo quiero decirle a Altza que no de olvide el champan que no se ponga nerviosa que lo va a hacer muy bien<br>Aprovecho pa deciros que os vayais preparando para el 28 que luego hay agujetas<br><br>FELIZ NAVIDAD A TODOS!!!!<br><br><br>EL LUNES NOS TOCA LA LOTO!!!');
INSERT INTO `visitas` VALUES (226, 'ESTITXU', NULL, NULL, '10.141.2.212', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-12-15', '12:03:00', 'KAIXO SOY ESTI LA QUE OS DISE&ntilde;ABA LOS MODELAZOS PARA IR A COMDON ETC... YO OS COMPRABA LAS TELAS EN LAS REBAJAS DEL MERCADILLO Y CON LA PITUFINA OS HACIAMOS VUESTROS FABULOSOS TRAJES, POR CIERTO LOS CANOTIERS LOS HACIAMOS CON PLASTICOS DE LAS SOBRAS. PERO BUENO HAY ESTA EL GENIAL RESULTADO. SOMOS FANTASTICAS.<br>UN BESO PARA LA PITUFINA.<br>ESTITXU.');
INSERT INTO `visitas` VALUES (227, 'ESTI', NULL, NULL, '10.141.2.212', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-12-15', '12:09:00', 'LO MEJOR ERAN VUESTRAS EXTRAORDINARIAS COREOGRAFIAS EN COMDON, ESOS BAILES ESOS CUERPOS TAN FLEXIBLES, LA VERDAD ES QUE NOS DEJABAIS ANODADADOS, QUE DESFILES, QUE ANIMACION LLEVANDO A DOS GABACHAS BORRACHAS DETRAS, YA QUE EL RESTO LOS LLEVABA OTRA QUE NO VOY A DECIR NOMBRES.<BR>APROVECHO PARA SALUDAR A LA JUEZA BORRACHA QUE BAILABA CONMIGO EL FANDANGO.<BR>UN BESITO PARA MI PITUFINA');
INSERT INTO `visitas` VALUES (228, 'ESTITXU', NULL, NULL, '80.26.138.79', '80.58.55.237.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts)', '2003-12-15', '12:17:00', 'KP YA TE VALE CAPULLO !!!!<br><br>UN BESITO DE ESTITXU Y LA PITU. NOSOTRAS TAMBIEN TE QUEREMOS... VER DEBAJO DE UN TREN.');
INSERT INTO `visitas` VALUES (229, 'ESTITXU', 'sorgintxo_33@hotmail.com', NULL, '80.26.138.79', '80.58.55.237.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts)', '2003-12-15', '12:20:00', 'Hola a todos:<br>Felicidades por esta pagina, esta genial. Me trae muchos y gratos recuerdos... incluida la sana rivalidad entre ambas fanfarres.<br>Aupa La Tirri y Sama. HA SEGUIR DANDO CA&ntilde;A !!!!<br>Un besazo para todos y para Javi (Silvestre) en especial, jejeje ;-)');
INSERT INTO `visitas` VALUES (230, 'ESTITXU', NULL, NULL, '10.141.2.212', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-12-15', '15:03:00', 'ESO ES MENTIRA YO FUI QUIEN ENSE&ntilde;O TODO LO QUE SABE SAMA SIKU Y ALDATZ GORA. YO LA UNICA LA MARIJAIA. LA BORRACHA DE BILBO. LA FUNDADORA DEL HOLL. LA HERMANA GEMELA DE LA BUZONES, BUENO YO Y LAS COREOGRAFIAS ESA GRAN PROFESORA DE BAILE LLAMADA PITUFINA. PERO QUE NO SE OS OLVIDE A NADIE QUE MARIJAIA ESTI FUE LA FUNDADORA AHORA SEGUIRE DANDOLE A LA BOTELLA.<br>UN BESO PARA MI PITUFINA');
INSERT INTO `visitas` VALUES (231, 'KEPA', NULL, NULL, '80.26.138.79', '80.58.55.237.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts)', '2003-12-15', '17:00:00', 'ESTITXU, ESTITXU... ¿QUIEN CO&ntilde;O ES ESTITXU? YO SOY LA REINA, LA MIS SAN PEDRO, LA SISI... LA QUE MAS PLUMAS, ESTILO Y GLAMOUR HA PASEADO Y ENSE&ntilde;ADO DURANTE TANTOS A&ntilde;OS. COMO PARA QUE VENGA AHORA CUALQUIERA Y SE PONGA LOS LAURELES, ¡¡¡ DE ESO NADA !!! YO LA GRAN BORRACHA, LA KEPORRA, LA REINA DEL HALL SE REVELA CONTRA TANTO INSULTO. RECONOCED YA A VUESTRA GRAN MAESTRA QUE TANTO HA ACEITADO VUESTROS INSTRUMENTOS (RECONOZCO QUE PERDIA DEMASIADO, LO SIENTO)<br>BESITOS -- SAMAAAAAAAAAAAAA TXUPA =0P');
INSERT INTO `visitas` VALUES (232, 'ESTITXU', NULL, NULL, '10.141.2.212', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2003-12-15', '17:34:00', 'COMO QUE QUIEN SOY¡ SOY LA MARIJAIA DE LAS FIESTAS, LA QUE ACTUABA EN EL HOLL CON FLOREN EL HACIA DE LA PANTOJA Y YO DE IMPERIO ARGENTINA, ERA POR LA EDAD.<br>YO DISE&ntilde;ABA LOS TRAJES A LOS CAMELUS Y ERA LA ESTRELLA DE COMDON, SOLIA SALIR CON UNAS FALDITAS DE VOLANTES Y UNA PANDERETA. A MI A LA REINA DEL BROCE ( BROCEADOR BIZNIETOS) YO QUE ME LLEVE TODAS LAS TROPETAS DE COMDON, Y SAMA SOLO ME LA CHUPABA A MI Y A LA TXEMOSA QUE ERAMOS COMO HERMANAS GEMELAS. LO DIGO POR EL FISICO POR QUE ERAMOS IGUALES. EN FIN SEGUIRE DANDOLE A LA BOTELLA.<br>UN BESO MUY GORDO EN LA BOCA PARA MI PITUFINA. VIVA EL ROLLO BOLLO¡<br>ESTI LA MARIJAIA.<br>PREGUNTAR EN LA GRANJA CUANDO LLEGABA A CUATRO PATAS DEL PEDO QUE LLEVABA Y LA MONTABA CON MI HERMANA LA BUZONES, LA FLORENCIA, LA LOLI, LA PITU, NEREA HERMO LA PITONISA ETC...<br>QUE QUIEN SOY YO JA¡ LA MAS GRANDE YO SOY ESA.');
INSERT INTO `visitas` VALUES (233, 'Joselu Angulo', 'joselu@gaztedi.net', 'http://www.gaztedi.net', '213.96.153.43', '80.58.41.237.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-12-21', '22:17:00', 'Enhorabuena por la web, no la hab&iacute;a visto, est&aacute; muy, muy bien.<br>Zorionak');
INSERT INTO `visitas` VALUES (234, 'jessica', NULL, NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-12-24', '10:29:00', 'FELIZ NAVIDAD A TODOS!!!!!!');
INSERT INTO `visitas` VALUES (235, 'Manin', 'Manintuba@hotmail.com', NULL, '212.142.190.122', 'eu190-122.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-12-24', '11:43:00', 'EN ESTAS FECHAS TAN SE&ntilde;ALADAS ME LLENA DE ORGULLO Y SATISFACCION DESEAROS UNAS FELICES FIESTAS Y FELIZ FIN DE A&ntilde;O, PARA TODOS.');
INSERT INTO `visitas` VALUES (236, 'chicanas', NULL, NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-12-24', '19:49:00', 'hola!!! felicidades y que lo paseis bien.<br>desde aqui os mandamos saludos.<br>que sepais que os echamos de menos: maria,nony,egoitz,ixone,jagoba,diego,ake ... bueno vosotr@s ya sabeis a quienes.<br>eli acuerdate de lo que te dijo una de nosotras, ok?<br>besitos.<br>chaooooo!!!!!!');
INSERT INTO `visitas` VALUES (237, 'Ustekabe', 'ustekabe@hotmail.com', 'http://www.ustekabe.com', '81.42.34.59', '80.58.48.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2003-12-30', '21:49:00', 'Hola Sama Siku:<br><br>Quetal por Bilbo? Nosotros bien por Eibar. Entro para felicitaros en estas fiestas y desearos un buen a&ntilde;o a todos.<br><br>Agur eta ondo segi');
INSERT INTO `visitas` VALUES (238, 'Charanga + Movida', 'masmovida@hotmail.com', 'http://www.masmovida.com', '62.83.192.30', '30-ovie-x13.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-01-05', '23:21:00', 'boenita web !! Nos somo una charanga de asturias !!<br><br>Visitar nuetra web : www.masmovida.com');
INSERT INTO `visitas` VALUES (239, 'MENDI (eibar)', 'supermendikute@hotmail.com', 'http://www.supermendikute.galeon.com', '62.82.34.29', '29-barc-x68.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-01-07', '16:34:00', 'Wooolaaaaaa! Qtal? URTE BERRI ON!!!! Nosotros en Eibar bien! Aver kuando paso xhay a haceos una visita... Un abrazo a todoooos! HOY EL EIBAR ELIMINA AL MADRID!!!!! GORA EIBAR!<br>GORA USTEKABE! GORA SAMASIKU!');
INSERT INTO `visitas` VALUES (240, 'ESTITXU', NULL, NULL, '10.141.2.212', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2004-01-09', '10:37:00', 'YO ERA LA BAILAORA OFICIAL DE LA FANFARRE, BAILABA FANDANGO Y ARIN ARIN, AUNQUE ME DECIAN QUE MAS QUE FANDANGO Y ARIN ARIN, LA GENTE CREIA QUE BAILABA FLAMENCO PURO Y DURO. OS PODEIS IMAGINAR VERDAD? Y ADEMAS COMO SIEMPRE O NORMALMENTE ESTABA BORRACHA PARECIA LA MARIJAIA. DE HAY VIENE QUE ME LLAMARAN LA MARIJAIA.<br>YA OS SEGUIRE CONTANDO MAS AVENTURAS HAY MILES POR QUE SOY MUY VIEJA. UN MUERDO PARA MI PITUFINA Y PARA TXEMITA Y SAMA.');
INSERT INTO `visitas` VALUES (241, 'JOSEBA', NULL, NULL, '62.99.26.53', '62.99.26.53', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; EKT-V3.0RRC)', '2004-01-22', '20:29:00', 'BUENO JOSEBA K YA M ENTERADO K ANDAS CN UNA TAL HAIZEA K S AMIGA D............<br>BUENO SOLO T AVISO D K TNGAS KUIDADO XK MIRA D KIEN ES EMIGA<br><br>GORA BILBO GORA SAMA-SIKU');
INSERT INTO `visitas` VALUES (242, 'J. Imanol', 'j.imanolgoenaga@terra.es', NULL, '212.142.143.114', '212.142.143.114', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2004-01-26', '14:05:00', 'Saludos de alguien que estuvo en la MEJOR fanfarre del mundo mundial del 81 al 88 (cuando &eacute;ramos j&oacute;venes y esas cosas). Una cosa, ¿por qu&eacute; no poneis poco a poco en la p&aacute;gina todas esas fotos que andaban por ah&iacute; en el local? S&iacute;, las de los viejos tiempos (primera palma de oro de Condom y cosas as&iacute;). Para recordar y soltar alguna lagrimita...');
INSERT INTO `visitas` VALUES (243, 'la "seri"', 'penefo@hotmail.com', NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-01-28', '12:06:00', 'ZORIONAK AKE!!!!!!<br>Ya eres un a&ntilde;o mas viejo a ver q t pagas luego<br><br>oye moro a ver cuando pones fotos nuevas y q no se t olvide poner la d Altza y cuando pones algo del 25 Aniversario');
INSERT INTO `visitas` VALUES (244, 'Mendi (Ustekabe)', 'eibar@euskalerria.org', 'http://www.ustekabe.com', '62.83.26.59', '59-madr-x45.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-01-28', '17:29:00', 'Wolaaaaaaaa!!! Qtal?? Nosotros x aki bien... aver kuando paso x ahi..<br>-Esas fotos nuevas que aveis metidooooo!!! jeje que no pero a ver cuando met&eacute;is alguna...<br><br>Ala, ondo pasa. AGUUURR!!!!<br><br>P.D.: Zorionak Aketza!');
INSERT INTO `visitas` VALUES (245, 'ESTITXU', NULL, NULL, '10.141.2.212', '80.58.4.170.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2004-02-05', '12:51:00', 'ESO QUE PONGAS LAS FOTOS DE CUANDO GANAMOS LA PALMA DE ORO PERO CLARO LA GANAMOS CUANDO NO FUE NI LA TIRRI, NI ALDATZ GORA SOLO ESTABAN LAS GABACHAS. SOLO GANABAMOS CUANDO NO IBAN ESTAS OTRAS, SI NO QUEDABAMOS LOS TERCEROS O COMO MUCHO LOS SEGUNDOS Y CON LA TROMPETA DE PLATA');
INSERT INTO `visitas` VALUES (246, '"SERI"', NULL, NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-02-05', '15:00:00', 'ola diego q viejo ers ya eh?<br>cuantos son ya? 28 uff! q cerk d los 30<br>zorionak!!! y q cumplas mutxos mas a ver a q t invitas');
INSERT INTO `visitas` VALUES (247, 'aupi', NULL, NULL, '62.99.58.181', '62.99.58.181', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2004-02-25', '12:12:00', 'zorionak maria!!!!');
INSERT INTO `visitas` VALUES (248, 'erika', 'erika_cob@hotmail.com', NULL, '62.99.60.118', '62.99.60.118', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98)', '2004-02-29', '20:12:00', 'aupa!<br>me gustaria saber komo podria kontactar kon egoitz, ya ke nunka escribe, komo podria hacerlo?? muxus, agur, eskerrik asko.');
INSERT INTO `visitas` VALUES (249, 'A erika', NULL, NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-03-06', '16:15:00', 'Vete al lokal que fijo que esta toldia');
INSERT INTO `visitas` VALUES (250, 'El Inkao', NULL, NULL, '212.145.206.91', 'pooladsl-a-15-91.ipcom.comunitel.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-03-09', '10:12:00', 'Que pasa gentucilla,cada vez est&aacute; mejor hecha la p&aacute;gina. Morito tu eres el culpable de todo esto. Haber si poco a poco te lo vas currando como hasta hora. Un saludo a toa la pe&ntilde;a,que poco se nota que estoy currando.');
INSERT INTO `visitas` VALUES (251, 'yo misma', NULL, NULL, '212.142.189.205', 'eu189-205.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-03-10', '11:06:00', 'moro mira a ver que le pasa a la pagina q quiero entrar n los componentes y no me sale<br>a ver cuando pones algo del 25 q va siendo hora<br>y fotos nuevas!');
INSERT INTO `visitas` VALUES (252, 'Mendi (Ustekabe)', 'supermendikute@hotmail.com', 'http://www.ustekabe.com', '62.82.20.123', '123-barc-x50.libre.retevision.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-04-16', '23:34:00', 'EPA!!!!! qtal? Nosotros aki bien. Joer si escribo mas q muxos de vosotros!!! jeje. perdonadme, ya sabeis ke soy cabezon, yo sigo a lo mio... AVER SI RENOVAIS LAS FOTOS! jejeje. todo bien verdad? ke ya vais a huesca este a&ntilde;o? jeje apaga luz mariluz apaga luz... pobrecitos los borrachos keestais en el camposanto.... jajaja. Weno, muxos besos besas, a todos y todas. jaja. un abrazo desde eibar!<br>Gora Ustekabe! Gora Sama!');
INSERT INTO `visitas` VALUES (253, 'zuri', NULL, NULL, '82.130.180.55', '82.130.180.55', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-04-29', '13:36:00', 'joder moro como te lo curras!esta mu xula la pagina.<br>bueno espero veros pronto( a ver si me llama ake)<br>bsitos para tod@s.agur!!!!!!');
INSERT INTO `visitas` VALUES (254, 'zuri', NULL, NULL, '82.130.229.12', '82.130.229.12', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-05-03', '13:55:00', 'zorionak atrasadas moro!!!!!');
INSERT INTO `visitas` VALUES (255, 'curioso', NULL, NULL, '80.32.91.70', '80.58.49.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)', '2004-05-18', '12:38:00', 'ainara sabias que estas muy buena? ojala se fijara alguien la mitad de atractiva que tu en mi.Si reuniese el valor suficiente de invitarte a cenar, aceptarias a venir con tu chaqueta de lana blanca?');
INSERT INTO `visitas` VALUES (256, 'Hola:', NULL, NULL, '82.130.132.24', '82.130.132.24', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-05-19', '12:44:00', 'Quien escribe estas chorradas?');
INSERT INTO `visitas` VALUES (257, 'x', NULL, NULL, '212.142.188.107', 'eu188-107.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; (R1 1.3))', '2004-05-30', '13:23:00', 'ola txispita y llamita!<br>sabeis quien soy?<br>q pagina mas txula<br>a ver si no aceis pira el lunes, eh?<br>muxus!!! quien haya hecho esta pagina enhorabuena esta muy bien!');
INSERT INTO `visitas` VALUES (258, 'curiosas', NULL, NULL, '212.142.143.114', '212.142.143.114', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2004-06-04', '12:57:00', 'ola, emos visto en los konponentes un tal joseba, k toka el klarinete, nos gustaria saaber komo kontaktar kon el, xk esta mu ben, o x lo menos de kara!!!!!! x favor decirnos komo poder lokalizarle!!!!!!!!');
INSERT INTO `visitas` VALUES (259, 'uno', NULL, NULL, '83.213.25.48', '83.213.25.48', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-06-05', '16:34:00', 'Si quieres conocerle apuntate al la fanfarre. Si no a beber orina.');
INSERT INTO `visitas` VALUES (260, 'anonimo', NULL, NULL, '80.35.105.43', '80.58.41.237.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-06-05', '19:12:00', 'aupa!!!kien kiere konocer a joseba?¿?¿yo soi un amigo de el si kereis su msn kontactar konmigo por este msn y os digo el suyo xabibaraja939@hotmail.com.esas tias k kieran konocerle pues k m agragen.');
INSERT INTO `visitas` VALUES (261, 'una q si b bien', NULL, NULL, '82.130.181.212', '82.130.181.212', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-06-13', '07:50:00', 'ola curiosas! lo unico q os puedo decir es q os pongais GAFAS');
INSERT INTO `visitas` VALUES (262, 'aupa', NULL, NULL, '82.130.228.128', '82.130.228.128', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.0.1) Gecko/20020823 Netscape/7.0', '2004-06-17', '14:00:00', 'aupi. podriais poner fotos nuevas?¿<br>xfe. Saludos a todos. las fotos del 2003.');
INSERT INTO `visitas` VALUES (263, 'admiradora', NULL, NULL, '81.42.91.35', '80.58.46.235.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2004-07-04', '21:01:00', 'Solo decir que me gusta mucho el chico que toca la caja a ver si puedo conseguir su tel&eacute;fono o algo para contactar con &eacute;l... Un beso para ese chico tan guapo');
INSERT INTO `visitas` VALUES (264, 'M&oacute;nica "ZAMBRA"', NULL, NULL, '80.102.145.234', '80.102.145.234', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-07-05', '08:02:00', 'sois muy buenos os he visto este finde en sanfuentes y estubo muy bien zorionak');
INSERT INTO `visitas` VALUES (265, 'Mendi (Ustekabe)', 'supermendikute@hotmail.com', 'http://www.lamoskagao.galeon.com', '209.204.154.245', 'adsl-209-204-154-245.sonic.net', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/124 (KHTML, like Gecko) Safari/125.1', '2004-07-06', '04:46:00', 'Epa! Aki sigo rallando cn el monotema... aver si poneis fotosss! jejejjj kuando wuelva de USA aver si examos una farra q ya tngo ganas de salir de fiestuki cn vosotrooooossss! un abrazo desde California');
INSERT INTO `visitas` VALUES (266, 'Para M&oacute;nica "ZAMBRA"', NULL, NULL, '83.213.9.103', '83.213.9.103', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-07-10', '12:14:00', 'Tu tambien estas muy buena. Digo... Tu tambien eres muy buena. Agur.');
INSERT INTO `visitas` VALUES (267, 'Alberto(Ustekabe)', 'sinverguenza@correofalso.com', 'http://en construccion', '212.142.226.95', 'eu226-95.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2004-07-12', '17:38:00', 'Aupa sama-siku!!!ejejej soy un pokito cabroncete y me tomado un tiempo en la fontaneria para escribiros este mensaje(como me pille el jefe...xDD)Weno pos ke me lo pase de p.m. ayer y q si alguna vez estais a falta de saxos pos ya sabeis a quien llamar...Ah!Andoni la proxima vez ya echaremos alguno de maruja.Venga gente ondo ibili!Aio!');
INSERT INTO `visitas` VALUES (268, 'Mendi (Ustekabe)', 'supermendikute@hotmail.com', 'http://www.lamoskagao.galeon.com', '209.204.154.245', 'adsl-209-204-154-245.sonic.net', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/124 (KHTML, like Gecko) Safari/125.1', '2004-07-13', '01:51:00', 'eup! kuidadin kon alberto (UStekabe) ke es peligroso.... enserio... 9999999 veces peor k yo!!! jejejejjejeje.... esas fotos avr pa kuando!!! Jejejej<br>gora UsTeKaBe gora SaMa-sIkU!');
INSERT INTO `visitas` VALUES (269, 'AlBerT0(ustekabe)', NULL, NULL, '212.142.226.95', 'eu226-95.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)', '2004-07-13', '07:19:00', 'Wenas de nuevo.Vais a creer a mendi antes q ami¿?pensad en las mamadas de mendi en francia y huesca....sin comentarios...');
INSERT INTO `visitas` VALUES (270, 'naranjito', NULL, NULL, '212.8.80.158', 'eu80-158.clientes.euskaltel.es', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.0.2) Gecko/20021120 Netscape/7.01 (BDP)', '2004-07-14', '22:38:00', 'ola!! mu xulos los carteles de el aniversario ejej!y muy bien la actuacion en santutxu!!aunke las fiesta dejan muxo ke desear la verdad!!mejor las de bilbo o no?jeje bueno yo soy antigua componente aunke alguno no le guste ke lo sea pero..asi es jjaja bueno aixon!!tengo ganas de verte!!y alos demas agures!!!');
INSERT INTO `visitas` VALUES (271, 'iontxu (puto refuerzo)', 'ion_kilkir67@hotmail.com', NULL, '213.96.140.12', '80.58.46.235.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; FunWebProducts; i-NavFourF)', '2004-07-26', '10:13:00', 'k pasa locos!!nada k como ace tiempo k no escribo pos hoy me ha dado por ahi. Un saludo para todos: maria luisa etc etc (jiji) QUE FUERTE JORGE JAVIER<br>PUTOS REFUERZOS NO!!!!');
INSERT INTO `visitas` VALUES (272, 'Mendi', 'supermendikute@hotmail.com', 'http://www.ustekabe.com', '83.32.157.237', '80.58.49.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-08-11', '03:19:00', 'Epa!! Qtal lokos?! Preparaus pa Mari Jaia? jejej. No hab&eacute;is visto el nuevo logo de Ustekabe no? es este: http://www.ustekabe.com/Logotipoak/ustekabeB4.jpg<br>jejej weno gente hasta pronto.<br>gOrA MarI JaIa! GoRa SaMa-sIkU! gOrA UsTeKaBe!');
INSERT INTO `visitas` VALUES (273, 'LA MUJER DEL TXURIBANDURRI...', NULL, NULL, '10.40.34.116', '194_30_63_135_osak0006.lpp_ga_bi.ips.sarenet.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 4.0)', '2004-08-11', '05:17:00', '...TIENE UNA SAYA VAYA, VAYA! QUE PACHA! MEDIO SAMA EN LA BLANCA. POR LO MENOS OS SABREIS ESTA CANCI&oacute;N, NO? ANIMO QUE ESO YA PASO Y AHORA VIENE LO MEJOR: BILBOKO ASTE NAGUSIA!');
INSERT INTO `visitas` VALUES (274, 'una de las k ve bien', NULL, NULL, '212.8.85.48', 'eu85-48.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; EKT-V3.0RRC)', '2004-08-22', '20:22:00', 'a la k le gute el de la kaja, madremia, en sama ai algunos mejores k egoitz, aver si nos fijamos mejor!!!!!!!!');
INSERT INTO `visitas` VALUES (275, 'maryjaia', 'mecaigopuntocom@yahoo.es', NULL, '217.125.211.229', '80.58.4.109.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-08-23', '18:57:00', 'Hola soy Edu feliz navidad. que tal? yo cotilleando la pagina y viendo las fotos.jo, que caritas. un saludito desde VALLEKAS.');
INSERT INTO `visitas` VALUES (276, 'nadia. Vk', 'lluvya2222@hotmail.com', NULL, '217.125.211.229', '80.58.4.109.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-08-23', '19:07:00', 'os envio las foto por correo, a ver si os gustan');
INSERT INTO `visitas` VALUES (277, 'unas k opinan', NULL, NULL, '194.30.88.98', '194.30.88.98', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2004-09-07', '16:30:00', 'kaixo!na, era pa decios k os vimos en bilbo, i bueno k no sois tan buenos komo se abla x aki!!!! no os lo tomeis a mal, solo es x opinar! os vimos en tele bilbao! pero erais mu pokos no?13 o asi!!!!!!! una fanfarre esta compuesta de mas de 20 komponentes!i erais 13! es decir=TXARANGA!!!!');
INSERT INTO `visitas` VALUES (278, 'ANONIMO', NULL, NULL, '194.30.88.98', '194.30.88.98', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2004-09-07', '16:35:00', 'KAIXO XABALES!!! beno ems leid el sms de "unas k opinan" y estams dakuerd kn ellas! tmb os bimos en tele bilbao,y la verdad es k no stubo mu ben...pero alguna vez k os emos visto en la kalle sonavais mucho mejor!! pregunta:entre vosotros ai buen rollo?xk no lo parece! podriais kambiar de kareografias k no son muy buenas! y la kancion de sama-siku es la alegria...sama-siku es buen humor...ES UN POKO REPETITIBA, no kreeis?nosotros solo os lo decimos pa k lo perfeccioneis');
INSERT INTO `visitas` VALUES (279, 'SAMA SIKU', NULL, NULL, '83.213.29.203', '83.213.29.203', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-09-08', '12:27:00', 'El que ha escrito el mensaje de "unas k opinan" es el mismo que ha escrito el de "anonimo". Asi que dejate de txorradas. En telebilbao estabamos 13 por probles de espacio en el plat&oacute;. Si hubieras visto todo el programa te hubieras enterado, memo. Vosotros tampoco sois tan buenos. Tirando a malos, mas bien. Esto es para dejar un saludo, no para poner tu mierda de opinion que a nadie le importa. ¿Por que en una fanfarre tiene que haber mas de 20? ¿De donde te has sacado tu eso?. Define "fanfarre" y luego hablamos, porque me parece que no tienes ni idea de lo que significa "fanfarre". La canci&oacute;n de SAMA SIKU no es muy repetitiva. Jota Kale es muy repetitiva. No sonaba muy bien, eso ya se sabia. No puede sonar igual que en la calle, pero con tu mierda de tele peor todavia. La culpa de que no seamos tan buenos como te han dicho la iene el que te lo ha dicho, no nosotros. Si a ti no te gusta pues mala suerte, vete a escuchar a otros. Nuestros movimientos ser&aacute;n una mierda pero a la gente en general le gusta y son mejores que los vuestros, que no haceis. Y por ultimo algunos se llevan bien y otros se llevan mal, hay de todo, pero eso a ti tres cojones te importa. Mejor o peor aqui seguimos, en nuestro 25 aniversario.');
INSERT INTO `visitas` VALUES (280, 'GORA SAMA', NULL, NULL, '62.99.93.162', '62.99.93.162', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-09-08', '22:23:00', 'IEUP!!!<BR>AUPA SAMA SIKU!!!<BR>ESO ES, MEJOR O PEOR HAY SEGUIMOS ,MUY BIEN DICHO!!!QUE RAPIDO PASA EL TIEMPO... YA ESTAMOS EN EL 25 ANIVERSARIO!!!<BR>ESPERO QUE NOS LO PASEMOS TOD@S DE P... MADRE!!!<BR>UN SALUDITO PARA TODOS!!!<BR>ANIMOOOOOO!!!!!');
INSERT INTO `visitas` VALUES (281, 'mEnDi (Ustekabe)', 'supermendikute@hotmail.com', 'http://www.ustekabe.com', '80.39.169.211', '80.58.49.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-09-10', '21:05:00', 'Epa! No hag&aacute;is ni caso a esa gentuza, no son m&aacute;s que envidiosos, para dar una opini&oacute;n como esa saben que hay otros medios sin tener que hacerlos as&iacute;... que ¡Sama-Siku es alegr&iacute;a! La canci&oacute;n no s&eacute; si es repetitiva ¡pero es super salada y a mi me gusta!<br>¡¡¡Ya os he visto hoy en ETB!!! Joer majos como triunfais... Nos vemos en el 25 aniversario!<br>GORA SAMA-SIKU!!!<br>GORA USTEKABE!!!');
INSERT INTO `visitas` VALUES (282, 'UNA TURUTARRERA', NULL, NULL, '10.40.34.116', 'proxy.osakidetza.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 4.0)', '2004-09-13', '17:19:00', 'AUNQUE ESTOY SEGURA DE QUE LOS QUE HAN ESCRITO ESOS MENSAJES NO HAN SIDO NADIE DE TURUTARRA, ME DARIA VERGUENZA ESTAR EN UNA FANFARRE Y ATACAR A OTRA FANFARRE, POR QUE EL QUE LOS HA DEJADO TIENE QUE SER DE ALG&uacute;N CONOCIDO (SI DIFERENCIAIS TAN BIEN ENTRE TXARANGA Y FANFARRE EN ALGUNA TENEIS QUE ESTAR).<br>AQU&iacute; ESTAMOS PARA PASARLO BIEN Y HACER LAS COSAS LO MEJOR POSIBLE, NO PARA IR AMARGANDO LA VIDA A LOS DEMAS CON TONTERIAS COMO ESAS.<br>Y SI MENDI TIENE RAZON Y ES POR ENVIDIA, QUE TRISTE!<br>GORA BENETAKO FANFARREAK!');
INSERT INTO `visitas` VALUES (283, 'abel (charanga la nota)', NULL, NULL, '81.41.136.238', '80.58.23.42.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-09-16', '16:43:00', 'Ola Soy Abel un xico de una charanga de Valladolid. Solo keria saludaros y deciros ke si kereis podeis visitar nuestra pagina en charangalanota.com y podemos estar en contacto para aber si coincidimos en algun sitio por ahi. Pasadlo bien :-)');
INSERT INTO `visitas` VALUES (284, 'july', NULL, NULL, '80.34.69.36', '80.58.42.42.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90; .NET CLR 1.1.4322)', '2004-09-20', '17:49:00', 'dejaros ya de meter tanto con la fanfarre q lo unico q teneis es envidia primero veros a vosotros y luego me contais.<br>gora sama-siku!!!<br>aunke ya no este en la fanfarre para mi sama-siku siempre va a ser la mejor.<br>un beso.<br>atte: july.');
INSERT INTO `visitas` VALUES (285, 'aitziber', 'aitzi_percu@hotmail.com', 'http://www.turutarra.com', '62.174.71.24', '24-madr-x8.red.retevision.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts; (R1 1.5))', '2004-09-22', '19:03:00', 'holaaaa<br>Soy Aitziber, de la turu...<br>nada, es para saludar... y el fin de semana fiesta en zorroza!<br>ya nos veremos por ah&iacute;<br>Venga, geroarte');
INSERT INTO `visitas` VALUES (286, 'iygsyi', 'zone6699@hotmail.com', NULL, '62.174.71.24', '24-madr-x8.red.retevision.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts; (R1 1.5))', '2004-09-22', '19:04:00', 'aupaaaa no tengo mucho que decir... estoy dejado mi firma por ahi...');
INSERT INTO `visitas` VALUES (287, 'eup', NULL, NULL, '212.142.227.45', 'eu227-45.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; DigExt; FunWebProducts)', '2004-09-22', '19:36:00', 'un mes pa la cenaaaa!!!!!');
INSERT INTO `visitas` VALUES (288, 'CAS', 'casculi@hotmail.com', 'http://usuarios.lycos.es/KLANDESTINOS', '80.35.111.234', '80.58.10.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2004-09-28', '11:33:00', 'HOLA CAMARADAS,PERTENEZCO A LA CHARANGA KLANDESTINOS DE GUADALAJARA Y ME HA SORPRENDIDO VUESTRA PAGINA Y VUESTRO PALMAR&eacute;S,NOSOTROS CUMPLIMOS NUESTRO 15 ANIVERSARIO Y VER QUE GENTE Q CELEBRA LAS BODAS DE PLATA ANIMA BASTANTE.RECIBID UN SALUDO DESDE LA ALCARRIA...X CIERTO NO TENDREIS ALGUN CD EDITADO?<br>CHAO');
INSERT INTO `visitas` VALUES (289, 'mEnDi (UsTeKaBe)', 'ustekabe@hotmail.com', 'http://www.ustekabe.ya.st', '80.39.169.217', '80.58.49.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-10-13', '19:59:00', 'ePaaAAA!!! Que no queda nada pa`este s&aacute;bado!!! Aver si sakais muxas fotos y las colg&aacute;is en la p&aacute;gina!! jejej y escribid aki, vamos a calentar motores un pokillo eh? Jeje<br>ZORIONAK SAMA-SIKU!!! Animo segi aurrera!<br>Gora Ustekabe!<br>Gora Sama-Siku!');
INSERT INTO `visitas` VALUES (290, 'eup!!!', NULL, NULL, '62.99.58.25', '62.99.58.25', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-10-13', '23:40:00', 'que nervios eh????<br>dos semanas para la cena y una para el gran alarde!!!jejeje!!!<br>a ver si nos lo pasamos en grande!!!!<br>que rapido pasan los a&ntilde;os!!!');
INSERT INTO `visitas` VALUES (291, '(anonimo)', NULL, NULL, '217.127.109.217', '80.58.41.173.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)', '2004-10-15', '19:34:00', 'ola soy el botijo regordete y kn pitorro tengo el agua freskita pa ke bebais a morro,<br>ni botella ni porron<br>ni bota ni garrafon<br>nada kmo un buen botijo para darte un refreskon dedikado para el botijo de sama siku');
INSERT INTO `visitas` VALUES (292, 'HAU BEROA TXARANGA', 'hauberoa@hotmail.com', NULL, '212.142.242.175', 'eu242-175.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-10-15', '23:32:00', 'ZORIONAK LAGUNAK<br>25 A&ntilde;OS DANDO CA&ntilde;A ESPEREMOS VERNOS OTROS VEINTICINCO MAS<br>HA SEGIR DANDO LA NOTA');
INSERT INTO `visitas` VALUES (293, 'KASKA', 'Kaskatb@hotmail.com', NULL, '212.142.242.175', 'eu242-175.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-10-15', '23:40:00', 'zorionak samasiku<br>sois una gente que vale mucho no cambieis seguid con este proyecto adelante con esas ganas e ilusion<br>samasiku es la alegria samasiku...<br>espero veros otros tantos a&ntilde;os m&aacute;s.ZORIONAK COMPA&ntilde;EROS');
INSERT INTO `visitas` VALUES (294, 'Santutxutarra', NULL, NULL, '83.213.128.179', '83.213.128.179', 'Mozilla/5.0 (Windows; U; Windows NT 5.0; rv:1.7.3) Gecko/20040913 Firefox/0.10.1', '2004-10-17', '10:44:00', 'Nada. Estaba aqu&iacute; tranquilamente en casa y os he o&iacute;do pasar por la calle, y me he acordado de que cumpliais 25 a&ntilde;os.<br><br>Ahora me bajo a tomarme unos potes por Juan de la Cosa o por La Zona, y os saludo.<br><br>ZORIONAK TA AURRERA!!!');
INSERT INTO `visitas` VALUES (295, 'AIDA', 'aida10g@hotmail.com', NULL, '212.142.143.114', '212.142.143.114', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-10-18', '19:23:00', 'GORA SAMA-SIKU!!!!<br>Aupa! 25 a&ntilde;os, que puta maravilla.<br>Bueno, pues que el d&iacute;a del Alarde me lo pas&eacute; de puta madre.Mucha m&uacute;sica, muchas risas, muchos compa&ntilde;eros y muchos amigos.Fue igual a los 9 a&ntilde;os que compart&iacute; con SAMA-SIKU.<br>Un beso para todos. ZORIONAK!!');
INSERT INTO `visitas` VALUES (296, 'Aida otra vez', 'aida10g@hotmail.com', NULL, '212.142.143.114', '212.142.143.114', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-10-18', '19:30:00', 'Bueno, quer&iacute;a a parte de cagarme en el kabr&oacute;n que ha puesto mi foto en la web, decir que acabo de ver que no estuve 9 a&ntilde;os, sino 7 y medio, que ya me las quer&iacute;a dar yo de guay, jeje.POS ESO KABRONES!!!!!');
INSERT INTO `visitas` VALUES (297, 'Andoni (Dunbots)', NULL, NULL, '158.227.207.232', 'vnpb232.vn.ehu.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2004-10-20', '10:05:00', 'ZORIONAK SAMAESPIKU!<br>he tokao 3 putas veces con vosotros pero de fiesta he estado alguna vez mas... ;) 25 a&ntilde;os estan bien lopake podias estar otros 25 mas no? yo creo q el moro por lo menos aguanta soplando 25 mas sin problemas, el sabado despues del alarde a la noche me dice el tio q tenia mogollon de ganas de tocar por ahi!!!! pero si acababamos de tocar! y al dia siguiente tocabais con gaztedi!!! estais locos...<br>Seguid asi y no seas falsos q no habeis tenido la garganta seca en vuestra puta vida! :)<br>Un saludo de parte de Dunbots, el alarde estuvo muy bien...la musica y eso...pero me quedo con el lunch! Jaja');
INSERT INTO `visitas` VALUES (298, 'Leire ( Los refuerzos de Celed&oacute;n)', 'txihuaka@hotmail.com', NULL, '62.99.64.66', '62.99.64.66', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90)', '2004-10-23', '19:49:00', 'q pasa chavales!!<br>como triunf&oacute; el alarde , nos lo pasamos de puta madre!!<br>Haber cuando coincidimos otra vez , y si no , pos habra que hacer una cena o algo...jejeje.<br> Veeeenga , saludos a todos!!!<br>Aupa sama , zorionak!!!');
INSERT INTO `visitas` VALUES (299, 'Diego, Dieguito para los antiguos.', 'mandamelo328@hotmail.com', NULL, '212.55.18.110', 'eu18-110.clientes.euskaltel.es', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 98)', '2004-10-25', '19:20:00', '¡Gracias! Gracias a todos los que habeis hecho posible que celebremos el 25º aniversario, porque con vuestra ayuda y vuestros animos hemos conseguido evitar momentos de inseguridad en los que a veces nos hemos visto sumergidos, y porque en 18 a&ntilde;os me habeis hecho vivir una experiencia inolvidable y muy gratificante.<br>Desde el fondo de mi coraz&oacute;n de clarinetari os deseo felicidad y prosperidad en vuestros futuros compromisos.');
INSERT INTO `visitas` VALUES (300, 'mEnDi (ustekabe)', 'supermendikute@hotmail.com', 'http://www.ustekabe.com', '81.33.62.117', '80.58.49.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts)', '2004-11-04', '18:10:00', 'epaaaaa! qu&eacute; feliz soy! despu&eacute;s de 2 a&ntilde;os pidiendo que met&aacute;is fotos me encuentro con fotos y adem&aacute;s salgo yo!<br>xD! ZORIONAK en may&uacute;sculas una vez m&aacute;s y animo mutillak a tirar pa`lante! hasta pronto!<br>Gora Sama Siku!<br>Gora Ustekabe!');
INSERT INTO `visitas` VALUES (301, 'Naiara', 'trombona10@hotmail.com', NULL, '212.142.143.114', '212.142.143.114', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2004-11-17', '01:07:00', 'Hola fen&oacute;menos!!<br>que me lo pas&eacute; que te cagas en el aniversario... y que siempre es un placer estar con vosotros!!!Un saludo especial para ORTEEEEGA que es un "fichage" digno de Sama. Vamos se las agarra..!! Que cualquiera diria que nunca ha estado en Mont de Marsan.<br>Nada SAMA seguir haciendolo as&iacute; de bien o mejor y queeeee cuuuuuuuumplas muuuuuuuuuuuuchoooooooos maaaaaaaaaaaaaasssssssssss!!!<br>Besos');
INSERT INTO `visitas` VALUES (302, 'Dani', 'dfernandez@umd.es', 'http://www.samasiku.com', '192.168.0.53', '153.66.ibercom.com', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts-MyWay)', '2004-11-22', '14:28:00', 'ZORIONAK A TOD@OS.<br>Feliz dia de Sta. Cecilia.');
INSERT INTO `visitas` VALUES (303, 'Ainhoa (Dunbots)', NULL, NULL, '83.213.127.250', '83.213.127.250', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-11-24', '21:43:00', 'ZORIONAK SAMA SIKU!!!!!!!! ante todo.<br>Deciros que lo pasamos muy bien en el aniversario y que a ver cuando repetimos aunque sea la fiesta.<br>Ah!! Gracias por la carta.');
INSERT INTO `visitas` VALUES (304, 'Mendi (Ustekabe)', 'supermendikute@hotmail.com', 'http://www.ustekabe.com', '83.37.211.139', '80.58.49.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-12-24', '16:09:00', 'Aupa!<br>¿Qu&eacute; tal? Juer no escrib&iacute;s nada, eh? jejej.<br>Nada que me meto aqu&iacute; pa decir ZORIONAK eta URTE BERRI ON y que el a&ntilde;o que viene nos veamos, por lo menos, tanto como este (o+).<br>Feliz Navidad y hasta pronto!<br>Muxos muxus desde Eibar!');
INSERT INTO `visitas` VALUES (305, 'Manin', 'Manintuba@hotmail.com', NULL, '83.213.106.178', '83.213.106.178', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2004-12-29', '12:06:00', 'OS DESEO UNAS FELICES FIESTAS Y UNA FELIZ ENTRADA EN EL NUEVO A&ntilde;O 2005');
INSERT INTO `visitas` VALUES (306, 'aitziber', 'aitzi_percu@hotmail.com', 'http://www.turutarra.com', '82.41.21.154', '82-41-21-154.cable.ubr03.edin.blueyonder.co.uk', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2004-12-31', '13:37:00', 'aupaaaaaa<br>feliz ano nuevo a todos....<br>pasadlo bien, y a arrasar en el nuevo<br>urte berri on!');
INSERT INTO `visitas` VALUES (307, 'Fanfarre Sugarri', 'fanfarresugarri@sugarri.com', 'http://www.sugarri.com', '80.32.230.250', '80.58.42.42.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; MyIE2; SV1; .NET CLR 1.1.4322)', '2005-01-10', '16:33:00', 'Nueva web de la Fanfarre Sugarri - Durango en www.sugarri.com<br>Un saludo a tod@s<br> --------------------------------------------------------------------<br>Fanfarre Sugarri - Durango web berria www.sugarri.com<br>Agur bero bat denoei');
INSERT INTO `visitas` VALUES (308, 'diego', NULL, 'http://www.charangamekanica.com', '69.51.216.250', 'xdg176239.xunta.es', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2005-02-01', '08:51:00', 'Ola!Somos unos compa&ntilde;eros de Galicia.Vuestra web est&aacute; muy bien.Nosotros tenemos una charanga: www.charangamekanica.com<br>Si podeis pasaros por nuestra web pa opinar sobre ella.Enga un saludo a todos');
INSERT INTO `visitas` VALUES (309, 'knita', NULL, NULL, '83.213.123.149', '83.213.123.149', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-03-01', '15:34:00', 'ola moro!!!<br>a ver cuando stan esas fotos nuevas!!!<br>ya se q stas n ello pero podrias ir metiendo alguna<br>;-p');
INSERT INTO `visitas` VALUES (310, 'charanga tropycana', 'charangatropycana@hotmail.com', 'http://charangatropycana.tk', '80.103.39.62', '80.103.39.62', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2005-03-19', '16:29:00', 'Hola compa&ntilde;eros! Somos de una charanga de la provincia de Valladolid y ahora q es pretemporada de actuaciones nos gustar&iacute;a contactar con otras charangas por si os interesa el cambio de partituras u otros temas. Si os interesa mandarnos un e-mail a charangatropycana@hotmail.com o entrar en nuestra p&aacute;gina web charangatropycana.tk. muchas gracias y saludos desde valladolid!!');
INSERT INTO `visitas` VALUES (311, 'Charanga "Los Bes"', NULL, 'http://www.charangalosbes.es.mn', '80.35.110.41', '80.58.10.107.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2005-03-22', '10:02:00', 'Somos la charanga LOS BES de guadalajara.Espero conoceros porque me pareceis una charanga de la leche.Saludos');
INSERT INTO `visitas` VALUES (312, 'Jony(txaranga pe&ntilde;alen)', 'echebejo@yahoo.es', 'http://www.txarangapenalen.com', '83.44.113.184', '80.58.55.237.proxycache.rima-tde.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322)', '2005-04-16', '13:50:00', 'Hola compa&ntilde;eros!!!Deciros que ya recibi vuestro mail y ya he puesto un link en nuestra web, poco a poco a ver si nos vamos poniendo todos en la de todos. Un saludo');
INSERT INTO `visitas` VALUES (313, 'franklin paradas', 'elpoderosoy@hotmail.com', NULL, '200.84.161.182', '200-84-161-182.genericrev.cantv.net', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2005-05-15', '14:14:00', 'hola papi te quiero');
INSERT INTO `visitas` VALUES (314, 'kikon', 'kikon2mas@yahoo.es', 'http://www.charangalosbes.es.mn', '10.36.195.132', '10.36.195.132', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2005-06-30', '11:27:00', 'hola monstruos:<br>quiero daros las gracias por el enlace de la charanga los bes.nosotros os pondremos cuando nuestro webmaster actualice la pagina (se mueve menos que el portero de un futbolin).<br>creo haberos visto en las fiestas de Huesca tocando en los porches,BUENISIMOS y menuda coreografia,si venis por aqui y se os seca la garganta ,os pago unas birras. un abrazo.');
INSERT INTO `visitas` VALUES (315, 'A la cama!!!!', NULL, NULL, '85.86.245.83', '85.86.245.83', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; DigExt)', '2005-07-31', '15:00:00', 'aupi sabi&ntilde;anigooo!!!jejejeje!!!');
INSERT INTO `visitas` VALUES (351, 'Holaaaa', '', '', '83.42.114.246', '83.42.114.246', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-09-17', '14:59:00', 'Holaa,<BR>Como nadie escribe nada pues voy a mandar yo un mensajito.<BR>Un saludo a todos de mis partes y en especial para mi, que soy el mejor;-D');
INSERT INTO `visitas` VALUES (352, 'Ainhoa', '', '', '83.213.98.2', '83.213.98.2', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-09-18', '20:52:00', 'Ya era hora Moro!!!!!!!! Muchas gracias. M&aacute;s vale tarde que nunca (eso dicen).');
INSERT INTO `visitas` VALUES (353, 'violeta', '', '', '80.58.11.170', '80.58.11.170', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2005-09-26', '20:54:00', 'holaaa xicoss!!!!<BR>   tengo 14 a&ntilde;os y me voy a apuntar a clarinete!!!me encanta....<BR>   muxos bxos pa mi jony!!');
INSERT INTO `visitas` VALUES (354, 'chema', 'chema@klandestinos.com', 'WWW.KLANDESTINOS.COM', '80.58.11.44', '80.58.11.44', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-10-03', '15:31:00', 'Saludos de la charanga los klandestinos. GUADALAJARA.');
INSERT INTO `visitas` VALUES (355, 'Fanfarre Guretzat', 'guretzat@fanfarre-guretzat.com', 'www.fanfarre-guretzat.com', '85.84.12.74', '85.84.12.74', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2005-10-08', '22:50:00', 'Aupa compa&ntilde;eros! Memorable el jolgorio del festival de Santurtzi, el a&ntilde;o que viene hay que repetir. A ver si nos pasais algunas fotos de ese dia, que nosotros hicimos pocas. Saludos!<BR><BR>FANFARRE GURETZAT (Portugalete)');
INSERT INTO `visitas` VALUES (356, 'miryam', 'fulanitadetarso@hotmail.com', '', '201.139.154.11', '201.139.154.11', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90; HbTools 4.7.1)', '2005-10-26', '18:18:00', 'hola que tal, me parc que su pagina esta exellente, yo soy de cuernavaca morelos, es un estado que esta dentro del pais de mexico y bueno yo tengo 16 a&ntilde;itos (jeje)<BR>saludos. =)');
INSERT INTO `visitas` VALUES (357, 'idoia', 'idoiauzkiaga@bilbaomusika.com', '', '83.58.147.96', '83.58.147.96', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-11-02', '11:54:00', '<BR>Saludos ! guapos ,ke me encanta todo lo ke haceis.Una ex.');
INSERT INTO `visitas` VALUES (358, 'Mendi [USTEKABE]', 'ustekabe@hotmail.com', 'www.ustekabe.com', '88.1.69.122', '88.1.69.122', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-11-07', '23:27:00', 'Muy bueeeeeenas! Qtal andamios? Espero que bien. Nosotros ultimando preparativos para el V. Aniversario!!! ...que ya no queda nada!!<BR>Eibar va a reventar! jj<BR>Veenga gente, nos vemos el 26!!<BR>Gora Sama-Siku eta Ustekabe!');
INSERT INTO `visitas` VALUES (359, 'La Organizacion', '', '', '83.213.29.142', '83.213.29.142', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-11-09', '13:52:00', 'Aqui, arreglando la fachada. Y vosotros?');
INSERT INTO `visitas` VALUES (360, 'Elitxuuuuu!!', '', '', '150.214.76.42', '150.214.76.42', 'Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.4) Gecko/20030626', '2005-11-10', '13:55:00', 'Hola waptones! Q tal todo x los Bilbos?Yo os escribo desde la Espa&ntilde;a profunda...q lejos estoy la ostia!Que nada,que sepais que os echo mucho de menos y que tengo un mono de tocar el clarinete que lo flipais! Manos mal que una amiga de mi resi tambien lo toca y me lo va a dejar,IUPI! Bueno,que epais que en Cai saben todos que: SAMA SIKU ES ALEGRIA,SAMA SIKU ES BUEN HUMOR....<BR>Un besazo desde Cai!');
INSERT INTO `visitas` VALUES (361, 'Doraemon', 'doraemon_aure@hotmail.com', '', '88.0.223.148', '88.0.223.148', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-11-12', '14:27:00', 'me ha gustado mucho esta p&aacute;gina web esta muy bien lo del clarinete, y esta pagina tambien esta muy bien para los principiantes');
INSERT INTO `visitas` VALUES (362, 'lucas guirao', 'pepayaso@hotmail.com', '', '201.236.44.63', '201.236.44.63', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; HbTools 4.7.0)', '2005-11-17', '02:41:00', 'hola gente ...soy de argentina toco el trombon y tengo problemas con la lubricacion de mi vara ...esta un poco trabada y quiero saber si se puede usar algun producto de limpieza para quitarle el sarro que forma en la parte interior ...ayudenme quiero destrabar mi vara...gracis');
INSERT INTO `visitas` VALUES (365, 'daniel tamayo', '0101.delegado@nacex.es', '', '80.58.35.44', '80.58.35.44', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '2005-11-21', '10:23:00', 'Buenos d&iacute;as nunca habia entrado y la he estado ojeando de arriba a abajo y est&aacute; de p.m.<BR><BR>Suerte y que todo vaya bi&eacute;n');
INSERT INTO `visitas` VALUES (366, 'Xabi (alegrios)', 'lumberjack33@hotmail.com', '', '83.213.227.2', '83.213.227.2', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98)', '2005-11-27', '23:08:00', 'Pos nada q me he puesto a recordar lo del finde y keria agradeceros el haber dado marcha en Eibar, aunq nosotros no tocabamos nada (como mucho lo huevos)lo pasamos d.p.m<BR>mila ezker!!!<BR>Gora sama-siku!!!<BR>Gora Ustekabe!!!<BR>Gora Alegrios!!!');
INSERT INTO `visitas` VALUES (367, 'Ainara', '', '', '83.213.99.157', '83.213.99.157', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-12-13', '12:51:00', 'aupa los alegris!!!los que mas animasteis!!!jejeje!!!<BR><BR>');
INSERT INTO `visitas` VALUES (368, 'ainara', '', '', '83.213.99.157', '83.213.99.157', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-12-13', '12:55:00', 'la subida al paga fue corta pero intensa no?lo celebramos bien con un par de tragitos...para no  notar el frio...jajajaja!!!!<BR>q mal al dia siguiente!jejeje!!!ni dos pasos seguidos....<BR>agur y a ver cuando se ponen mas fotos!!!jejeje!!!');
INSERT INTO `visitas` VALUES (369, 'Elitxu', '', '', '80.58.13.172', '80.58.13.172', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FunWebProducts; .NET CLR 1.1.4322)', '2005-12-12', '22:56:00', 'Hola guapis&iacute;mos!! Q tal va todo por ahi? Por lo que leo habeis subido al Pagasarri y todo...jo!Ya me hubiera gustado subir,aqui como no suba el Pe&ntilde;on de Gibraltar...porque poco hay para subir,jejeje! Bueno, que nos vemos el lunes,vale? Estoy deseando veros a todos, y cuando digo a todos es a todos!!<BR>Un besazo enorme y que sepais que aki en Cai se os exa muxo de menos!');
INSERT INTO `visitas` VALUES (370, 'chico_edu', 'educhico@portalatino.net', 'http://perso.wanadoo.es/e/chico_edu', '80.58.20.172', '80.58.20.172', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-12-22', '13:32:00', 'Va da buti, para un novato aprendiz que empieza a brillar alg&uacute;n tono con Trombón a vara. Un saludo cordial a la pe&ntilde;a.');
INSERT INTO `visitas` VALUES (371, 'Jessi (Clarinete)', '', '', '83.213.96.100', '83.213.96.100', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)', '2005-12-24', '08:48:00', 'buenos dias a todos!!! cuanto hace que no entraba aqui. Quiero felicitaros las Navidades spero que lo paseis muy bien ojito con el champan aunque con una copita se yoca mejor.bueno pues eso FELICES FIESTAS!!!!!  y esta tarde vamos a arrasr en Santutxu de lo bien que lo vamos a acer. Un besote grande para todos los de la fanfa.');
INSERT INTO `visitas` VALUES (372, 'Edu (Klandestinos)', '', 'www.klandestinos.com', '83.36.241.158', '83.36.241.158', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-12-25', '14:35:00', 'Feliz Navidad y propero a&ntilde;o 2006!!<BR><BR>Saludos desde la Alkarria Rural y Borrachuza');
INSERT INTO `visitas` VALUES (373, 'Ainara', '', '', '83.213.99.157', '83.213.99.157', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-12-26', '11:55:00', 'EGUBERRI ON GUZTONTZAT!!!!');
INSERT INTO `visitas` VALUES (374, 'Ainara', '', '', '83.213.99.157', '83.213.99.157', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '2005-12-26', '11:57:00', 'ais!repito:<BR><BR>EGUBERRI ON GUZTIONTZAT!!!!<BR><BR>ahora mejor, jejeje!!!!<BR>muxux!!!');
INSERT INTO `visitas` VALUES (379, 'Erikito', 'patxoko@hotmail.com', '', '86.203.5.194', '86.203.5.194', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Wanadoo 6.7; .NET CLR 1.1.4322)', '2006-01-02', '19:53:00', 'Aupa!!!<BR>Os deseo un feliz a&ntilde;o nuevo de parte de Gabatxolandia!!! A ver cuando nos vemos? Fijo pasando fiestas jejeje!');
INSERT INTO `visitas` VALUES (380, 'oscar', 'oskiperazzo@hotmail.com', '', '201.255.94.187', '201.255.94.187', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)', '2006-01-13', '15:15:00', 'compre una trompeta y voy a comenzar a tocar, nesecito saber que tipo de aceite debo usar , alguien me puede informar ?');
INSERT INTO `visitas` VALUES (381, 'Angela', '', '', '83.41.14.233', '83.41.14.233', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2006-01-15', '11:01:00', 'Que fue de tirri tarra? fui una gran seguidora en mi juventud de esta Fanfarre pero hace a&ntilde;os que no se nada de ella y su pagina web parece estancada');
INSERT INTO `visitas` VALUES (382, 'klandestinos charanga', NULL, 'www.klandestinos.com', '81.39.232.160', '81.39.232.160', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)', '2006-04-12', '20:55:00', 'Un saludo de la charanga KLANDESTINOS de Guadalajara!!!');
INSERT INTO `visitas` VALUES (386, 'mekaniko', 'victorgb162@yahoo.es', 'www.charangamekanika.com', '195.76.67.14', '', NULL, '2006-04-19', '12:49:00', 'Ola compa&ntilde;eros de curro,espero que tengais muxas contratas.Aprovecho este sms para deciros que ahora nuestra pagina es www.charangamekanika.com Si podeis modificarlo en vuestros enlaces os lo agradeceriamos.Un saludo a todos y muxas gracias');
INSERT INTO `visitas` VALUES (396, 'Para Angela', '', '', '83.213.96.93', '', NULL, '2006-04-26', '19:21:00', 'http://www.indyrock.es/tirritarra.htm<br>\r\n<br>\r\n<br>\r\nAqui encontraras toda la informacion que quieres acerca de los tirris!\r\nUn saludo!\r\n\r\np.p: aupa sama!');
INSERT INTO `visitas` VALUES (397, 'y ke mas da', '', '', '87.216.138.54', '', NULL, '2006-05-17', '13:29:00', 'nueva web TIRRI TARRA esta de la hostia entra ya! www.tirritarra.com');
INSERT INTO `visitas` VALUES (405, 'kaxo', '', 'www.tirritarra.com', '87.216.138.54', '', NULL, '2006-05-19', '14:14:00', 'visitala esta web ');
INSERT INTO `visitas` VALUES (409, 'Josu Mendicute [Ustekabe]', 'jmendicute@ustekabe.com', 'www.blogak.com/josu', '88.15.157.125', '', NULL, '2006-06-08', '14:52:00', 'Hola!<br />\r\n<br />\r\nQue tal todo? Ahora que viene el veranito (primero tenemos que pasar los examenes...) supongo que se os empezara a apretar la agenda...<br />\r\n<br />\r\nEscribo para desearos buena temporada de verano y a ver si nos vemos pronto, eh?<br />\r\nPatxos!');
INSERT INTO `visitas` VALUES (410, 'Xaranga FET A POSTA', 'miguelvaquero@yahoo.es', 'www.fetaposta.tk', '81.203.114.167', '', NULL, '2006-06-19', '14:11:00', 'Hola, somos la xaranga FET A POSTA de Onda (Castellon) y estamos visitando webs de compa&ntilde;eros del "gremio" y hechando firmitas en los libros de visitas para dar un saludo cordial desde aqu&iacute; y &aacute;nimo a todos vosotros para que &eacute;sto no decaiga. Nosotros tambi&eacute;n tenemos web! Las nuevas tecnolog&iacute;as... Os invitamos a entrar en ella: <br />\r\n<br />\r\nwww.fetaposta.tk <br />\r\n<br />\r\nEsperamos que os guste y...FUERZA MUCHACHOS, QUE HAY MUCHA FIESTA QUE ANIMAR!SALUT!!!<br />\r\n<br />\r\n');
INSERT INTO `visitas` VALUES (411, 'k&ntilde;i', '', '', '83.213.96.100', '', NULL, '2006-06-19', '14:58:00', 'ola a todos!! acia muxo q no ntraba x aqui<br />\r\nun saludito pa todos y a br si l moro pone fotos nuevas q no sera xq no ay kmaras!! jaja pos eso bsitos! muaks, muaks');
INSERT INTO `visitas` VALUES (412, 'Txaranga Aburrecalles', 'aburrecalle@wanadoo.es', 'www.aburrecalles.com', '193.202.20.4', '', NULL, '2006-06-20', '15:20:00', 'Hola compa&ntilde;eros.<br />\r\nSomos la Txaranga Aburrecalles y estamos preparando un disco. Esperamos que este a la venta para fiestas de San Fermin de Pamplona. Si os acercais por alli podeis encontrarnos en la pe&ntilde;a Donibane o San Juan. Mientras tanto podeis escuchar un anticipo de algunas canciones en nuestra pagina web www.aburrecalles.com y darnos vuestra opinion. Esperamos que os guste. Un saludo.<br />\r\nTxaranga Aburrecalles');
INSERT INTO `visitas` VALUES (413, 'ei!', '', '', '83.213.96.93', '', NULL, '2006-06-21', '23:44:00', 'ei! aburrekalles que ya os dimos nuestra opinion!<br />\r\njejeje!!!<br />\r\n');
