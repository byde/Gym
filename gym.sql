-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-08-2011 a las 09:44:14
-- Versión del servidor: 5.1.54
-- Versión de PHP: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idcliente` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `apellidos` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `edocivil` int(1) NOT NULL DEFAULT '1',
  `medgen` varchar(128) DEFAULT NULL,
  `ocupacion` varchar(128) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `cp` varchar(11) DEFAULT NULL,
  `colonia` varchar(128) DEFAULT NULL,
  `ciudad` varchar(128) DEFAULT NULL,
  `estado` varchar(128) DEFAULT NULL,
  `telefono1` varchar(128) DEFAULT NULL,
  `telefono2` varchar(128) DEFAULT NULL,
  `fecnac` date DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `nota` text,
  `sexo` int(1) DEFAULT NULL,
  `vence` date DEFAULT NULL,
  `fecreg` date DEFAULT NULL,
  `avisar` varchar(128) DEFAULT NULL,
  `aviparen` varchar(128) DEFAULT NULL,
  `avitel` varchar(128) DEFAULT NULL,
  `avidom` varchar(255) DEFAULT NULL,
  `enfermedad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

--
-- Volcar la base de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcliente`, `nombre`, `apellidos`, `edocivil`, `medgen`, `ocupacion`, `direccion`, `cp`, `colonia`, `ciudad`, `estado`, `telefono1`, `telefono2`, `fecnac`, `email`, `nota`, `sexo`, `vence`, `fecreg`, `avisar`, `aviparen`, `avitel`, `avidom`, `enfermedad`) VALUES
(1, 'Visitante', '.', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, NULL, '2011-07-19', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Ulises', 'Medrano', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', 'hola nota2', NULL, '2011-09-17', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'herctor', 'ramos alvares', 1, '.', 'abogado', 'de la concordia 118', NULL, 'la paz', 'Rincón de Romos', 'Aguascalientes', '4491650563 cel', '', '0000-00-00', 'ramos-hector-08@hotmail.com', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'maria', 'herrera', 2, '', 'ogar', 'ejido fresnillo', NULL, 'rincon', 'Rincón de Romos', 'Aguascalientes', '4658516376', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'marta', 'herrera ramos', 1, '', 'comerasiante', 'lopes mateo 504', NULL, 'ejido fresnillo', 'Rincón de Romos', 'Aguascalientes', '4658516028', '', '0000-00-00', '', NULL, 1, '2013-07-19', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'noprma', 'ramos luevano', 1, '.', 'maestra', 'serrada armoria 107', NULL, 'la paz', 'Rincón de Romos', 'Aguascalientes', '4651058562', '', '0000-00-00', 'momaramos@hotmail.com', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'graciela', 'herrera ramos', 1, '', 'trabajadora', 'adolfo lopes mateo 506', NULL, 'ejido fresnillo', 'Rincón de Romos', 'Aguascalientes', '4658516028', '', '0000-00-00', '', NULL, 1, '2012-07-18', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ma. jesus', 'sedillo peres', 2, '', 'trabajadora', 'aldama 201', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4658514293', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ma leticia', 'fuentes ramos', 2, '', 'ogar', 'heroico colegio militar 600', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651020066', '', '0000-00-00', '', NULL, 1, '2012-07-19', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'tania', 'puentes cardona', 2, '', 'ama de casa', 'circuito rolas michael 203', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651063593', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'francisco javier', 'lucio castañeda', 2, '', 'maestro', 'bartolome de las casas 404', NULL, 'magisterial 2', 'Rincón de Romos', 'Aguascalientes', '4659511836', '', '0000-00-00', 'lucas_2478@hotmail.com', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'gabriela leticia', 'ramos puentes', 1, '', 'estudiante', 'H. colegio militar 600', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 1, '2012-07-19', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'luis manuel', 'luevano rodriguez', 2, '', 'servidor publico', 'chapultepec 114', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651063557', '', '0000-00-00', 'luisilloo0@hotmail.com', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'evelyn', 'calzada', 1, '', 'maestra', 'colegio militar 502', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', 'evelyncalzada@hotmail.com', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ofelia', 'puentes caldillo', 2, '', 'hogar', 'colegio militar 502', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651054879', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'paola', 'velazquez guerrero', 2, '', 'maestra', 'refugio gimenes 119', NULL, 'solidaridad', 'Rincón de Romos', 'Aguascalientes', '4651040791', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'maria rosario', 'alvarez carmona', 2, 'jose carlos alvarez garcia', 'hogar', 'emiliano zapata 204', NULL, 'santa anita', 'Rincón de Romos', 'Aguascalientes', '4659510586', '', '0000-00-00', 'chayito@hotmail.com', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'marisol', 'gonzalez alvarez', 1, 'jose carlos alvarez', 'maestra', 'emiliano zapata 204', NULL, 'santa anita', 'Rincón de Romos', 'Aguascalientes', '4651041361', '', '0000-00-00', 'marisol_mga@hotmail.com', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'rodrigo', 'escobedo serbantes', 2, '', 'trabajador', 'octli 210', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'daniel', 'calzada puentes', 1, '', 'estudiante', 'h colegio militar 502', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4492143888', '', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'jovani', 'correa gallegos', 1, '', 'estudiante', 'sircuito gaetan lavertu 442', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651027759', '', '0000-00-00', 'jovanni_cena@hotmail.com', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'anavel', 'martinez gonsales', 1, '', 'hogar', 'emiliano zapata 704', NULL, 'magisterial', 'Rincón de Romos', 'Aguascalientes', '4659558922', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'claudia lorena', 'gonzalez puentes', 2, '', 'hogar', 'sircuito gaitan lavertusu 328', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4659558619', '', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'cristian ivan', 'esqivel gutierres', 2, '', 'camillero', 'masatl 116', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651051623', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'ricardo', 'castillo suares', 1, '', 'trabajador', 'oroico cologio militar 606', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651049307', '', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'eduardo', 'castillo suares', 1, '', 'trabajador', 'eroico colegio militar 606', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651082075', '', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'juan manuel', 'santillan esqivel', 1, '', '', 'ivan olivera 137', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'jose carlos', 'ramos alvarez', 1, 'robanal arrollo', 'servidor publico', 'heroico colegio militar 207', NULL, 'jose luis macias', 'Rincón de Romos', 'Aguascalientes', '4658515191', '', '0000-00-00', 'lic_carlos_ramos@hotmail.com', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'MA DEL CARMEN', 'GONZALEZ LOMELI', 2, '', 'MAESTRA', 'MANUEL DE VELASCO 506', NULL, 'SOLIDARIDAD', 'Rincón de Romos', 'Aguascalientes', '8515765 CASA', '4491290847 cel', '0000-00-00', '', NULL, 1, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'JESUS RICARDO', 'RIVAS GARCIA', 1, '', 'MAESTRO', 'MORELOS SUR 115', NULL, 'MAGISTERIAL', 'Rincón de Romos', 'Aguascalientes', '4659552489 CEL', 'JESUS-RIVAS2011@HOTMAIL.COM', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'MARTIN ANTONIO', 'REYES MORALES', 1, '', 'COMERCIANTE', 'CIRCUITOI IVAN OLIVEIRA', NULL, 'EMBAJADORES', 'Rincón de Romos', 'Aguascalientes', '4651132253 CEL', '', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'OSCAR ', 'RODRIGUES PUENTES', 2, '', 'COMERCIANTE', 'ALDAMA 207', NULL, 'CENTRO', 'Rincón de Romos', 'Aguascalientes', '4651048996 CEL', '', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'jose luis', 'rodrigues reyes', 1, '', 'estudiante', 'fco gel jimenes 203', NULL, 'centro', 'Rincón de Romos', 'Aguascalientes', '4651077380 cel', '9511659', '0000-00-00', '', NULL, 0, '2011-08-18', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'RUBEN', 'CASTILLO', 2, '', 'OBRERO', 'HEROICO COLEGIO MILITAR 606', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '4659558423 CEL', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'SARA', 'OVALLE', 1, '', 'MAESTRA', 'OCTLI 104', NULL, 'LA PAZ', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'JORGE HUMBERTO', 'BADILLO DIOSDADO', 1, '', 'OBRERO', 'RUTA DE LA PLATA 316', NULL, 'POTRERO', 'Rincón de Romos', 'Aguascalientes', '4581020470 CEL', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'JULIO CESAR', 'CHAVEZ CARLOS', 1, '', 'MECANICO', 'MIXTON 111', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651025176 CEL', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'JAIRO CESAR', 'DAVILA', 2, '', 'OBRERO', 'MAZATI 130', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '8514743 CASA', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'ITZEL EDHALI', 'RODRIGUEZ   HERNANDEZ', 1, '', 'ESTUDIANTE', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'GUILLERMO ', 'SALAZAR LUCIO', 1, '', '', 'TEXCATL 109', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651056985', '8515786', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'JAVIER DE JESUS', 'VERDIN PEREZ', 1, '', '', 'COPALLI 240', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651056948', '8515556', '0000-00-00', '', NULL, 0, '2011-09-19', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'MIGUEL ANGEL', 'ALVAREZ LOERA', 1, '', '', 'MOTOLINIA 407', NULL, 'BARRIO DE GUADALUPE', 'Rincón de Romos', 'Aguascalientes', '9510355', '4651026153', '0000-00-00', 'MIGUE_02057@HOT MEIL.COM', NULL, NULL, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'MIGUEL', 'ALVAREZ CARMONA', 2, '', 'OBRERO', 'MOTOLINIA 407', NULL, 'CHABEÑO', 'Rincón de Romos', 'Aguascalientes', '9510355', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'LUCINA', 'PUENTES ZAPATA', 1, '', 'COMERCIANTE', 'MIXTON 102', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651048996', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'ERIK RUBEN', 'NORATO', 1, '', 'ESTUDIANTE', 'OCTLI 906', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651079206 CEL', '', '0000-00-00', 'NORATO_ER@HOTMAIL.COM', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'EVENORA', 'MENDEZ RAMIREZ', 1, '', 'MAESTRA', 'COLIMA 206', NULL, 'POPULAR', 'Rincón de Romos', 'Aguascalientes', '4651035256 CEL', '8514843', '0000-00-00', 'evenora79@hotmail.com', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'MA. CONCEPCION', 'GUUTIERREZ MENDEZ', 1, '', '', 'FCO. VILLA 113', NULL, 'SANTA ANITA', 'Rincón de Romos', 'Aguascalientes', '4659511445 CASA', '4651048585', '0000-00-00', 'zonagrafica_7@hotmail.com', NULL, NULL, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'MARCO ANTONIO', 'GONZALEZ LOMELI', 1, '', 'ESTILISTA', 'OBREGON 318', NULL, 'CENTRO', 'Rincón de Romos', 'Aguascalientes', '9510457', '4651080607', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'ANA ISABEL', 'PALASIOS GAITAN', 2, '', 'HOGAR', 'MOTOLINEA 1123', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '8514540', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'MARIA ASUSENA', 'LASARIN CASTORENA', 2, '', 'EMPLEADA', 'TLATOANI 133', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651078843', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'cristina', 'lopez guardado', 2, 'luis tafolla', 'hogar', 'copalli 216', NULL, 'estanciaa de chora', 'Rincón de Romos', 'Aguascalientes', '4651032408', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Ulises', 'Hernandez', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', '', NULL, NULL, NULL, '', '', '', '', ''),
(60, 'JOEL', 'GARCIA CATORENA', 1, '', 'ESTUDIANTE', 'ALDAMA 302', NULL, 'SANTA ELENA', 'Rincón de Romos', 'Aguascalientes', '4651099249', '', '0000-00-00', 'joel_04_garcia@hotmail.com', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Sandy Ibeth', 'Santillan Serrano', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '4651052529', '', '1990-06-04', '', '', 1, '2011-08-13', NULL, '', '', '', '', ''),
(63, 'JOSEFINA', 'CASTORENA LASARIN', 2, '', 'MAESTRA', 'MOTOLINEA 207', NULL, 'SENTRO', 'Rincón de Romos', 'Aguascalientes', '4651131656 CEL', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'jaime', 'rodriguez pineda', 2, '', 'operario', 'octli 804', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651043411', '', '0000-00-00', '', '', 0, '2011-08-28', NULL, '4659552988', 'esposa', '', 'octli 804', 'ninguna'),
(66, 'esther', 'castillo flores', 1, '', 'empleada', 'mixton 211', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651000542 cel', '', '0000-00-00', '', NULL, 1, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'efrain ', 'de la cruz delgadillo', 1, 'rodolfo delgadillo', 'administrativo', 'mixton 211', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651000317', '', '0000-00-00', '', NULL, 0, '2011-08-19', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'jefte', 'esquivel gutierrez', 1, '', 'estudiante', 'h colegio militar 213', NULL, 'santa elena', 'Rincón de Romos', 'Aguascalientes', '4492220868', '', '0000-00-00', 'jefteneitor@hot mail.com', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'maria eva', 'medina ruis', 1, '', '', 'mazatl 205', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '8515807', '', '0000-00-00', '', NULL, NULL, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'jafet esquivel', 'esquivel gutierrez', 1, '', '', 'heroico colegio militar213', NULL, 'santa elena', 'Rincón de Romos', 'Aguascalientes', '4492220868', '', '0000-00-00', '', NULL, NULL, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'evelin', 'davila marin', 1, '', '', 'heroico colegio militar 402', NULL, 'jose luis macias', 'Rincón de Romos', 'Aguascalientes', '4651088330', '', '0000-00-00', '', NULL, NULL, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'veronica', 'baltazar murillo', 1, '', '', 'rolando michel113', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651014982', '', '0000-00-00', '', NULL, 1, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'jim', 'chauregi gutierrez', 1, '', '', 'ejercito nacional 121', NULL, 'santa elena', 'Rincón de Romos', 'Aguascalientes', '4651034061', '', '0000-00-00', '', NULL, 0, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'carlos fabian', 'perez muños', 1, '', '', 'dolores hidalgo 112', NULL, 'centro', 'Rincón de Romos', 'Aguascalientes', '4651004274', '', '0000-00-00', '', NULL, 0, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'carlos ', 'saucedo macias', 1, '', '', 'av. ruta de la plata 608', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651098940', '', '0000-00-00', '', NULL, 0, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'zabdiel', 'adame contreras', 1, '', '', 'feliciano luevano 114', NULL, 'solidaridad', 'Rincón de Romos', 'Aguascalientes', '4651040591', '', '0000-00-00', '', NULL, 0, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'claudia anahy', 'lopez tiscareño', 1, '', '', 'circuito ivan oliveira 205', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651057906', '', '0000-00-00', '', NULL, 1, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'lorenzo ', 'gonzales torres', 1, '', '', 'circuito ivan oliveira', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651056516', '', '0000-00-00', '', NULL, 0, '2011-08-20', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'DIANA ', 'GUTIERREZ AGUILAR', 1, '', 'SERVIDORA PUBLICA', 'MOTOLINIA 213 ORIENTE ', NULL, 'FRACCIONAMIENTO JOSE LUIS MACIAS', 'Rincón de Romos', 'Aguascalientes', '4651097152', '', '0000-00-00', 'mariagnavega@hotmail.com', NULL, 1, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'LUIS ANTONIO', 'GARCIA CEBILLO', 1, '', '', 'ALDAMA 201', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '4651077730', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'ADRIANA', 'SALASAR DE LA TORRE', 2, 'PORFIRIO RODRIGEZ', 'HOGAR', 'TLATUANI 216', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651085583', '', '0000-00-00', '', NULL, 1, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'RUBEN', 'ROBLES HERRERA', 2, '', 'GANADERO', 'AV. CASCAN 233', NULL, 'ESTANCIA DE CHORA', 'Rincón de Romos', 'Aguascalientes', '4651031357', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'FERNANDO', 'CASTAÑEDA', 1, '', 'ENFERMERO', 'ARMONIA 110', NULL, 'LA PAZ', 'Rincón de Romos', 'Aguascalientes', '4492049298', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'raul', 'castillo suares', 1, '', '', 'heroico colegio militar606', NULL, 'barrio de chora', 'Rincón de Romos', 'Aguascalientes', '4498910444', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'hilda ', 'padilla luevano', 1, '', 'estudiante', 'libertad707', NULL, 'santa elena', 'Rincón de Romos', 'Aguascalientes', '4658514947', '', '0000-00-00', '', NULL, 1, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'veronica', 'ovalle valensiarro', 2, 'jorge luis tafolla servantes', 'hogar', 'tlatuani 121', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651058973', '', '0000-00-00', '', NULL, 1, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'NAYELY DEL CARMEN', 'GARCIA CEDILLO', 1, '', '', 'ALDAMA 201\r\n\r\n', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '8514293', '', '0000-00-00', '', NULL, 1, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'FRANCISCO', 'FLORES LOPEZ', 1, '', '', 'MIXTON 134', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '4491971816', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'ADRIANA ', 'MERCADO JUAREZ', 1, '', '', 'OCTLI 309', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '4651080828', '', '0000-00-00', '', NULL, 1, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'JOSE ANGEL', 'MERCADO JUAREZ', 1, '', '', 'OCTLI 309', NULL, 'CHORA', 'Rincón de Romos', 'Aguascalientes', '8514749', '', '0000-00-00', '', NULL, 0, '2011-08-22', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'LORENA ', 'PUENTES ', 2, 'GILCQARDO HIPOLITO', 'AUSILIAR DE ENFERMERIA', 'h colegio militar 502a', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '4651098081', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'alan octavio', 'alvarez loera', 1, 'jose carlos alvarez', 'estudiante', 'motolinia 407', NULL, 'barrio de guadalupe', 'Rincón de Romos', 'Aguascalientes', '4492317601', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'mauro misael', 'alvarez soledad', 1, 'jose carlos alvarez', 'estudiante', 'chiapas 208', NULL, 'popular', 'Rincón de Romos', 'Aguascalientes', '4651056369', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'oscar eduardo', 'contreras', 2, '', 'maistro', 'circuito roland michael 360', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651025300', '', '0000-00-00', '', '', 0, '2011-08-28', NULL, '4651025300', 'esposa', '4651025300', 'circuito roland michael 360', 'ninguna'),
(98, 'angel antonio', 'gonzalez ', 1, '', '', 'emiliano zapata 204', NULL, 'santa anita', 'Rincón de Romos', 'Aguascalientes', '9510586', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'nestor jair', 'garcua', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'nestor jair', 'carrasco garcua', 1, '', 'operario', 'circuito oscar galie 226', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651093222', '', '0000-00-00', '', NULL, NULL, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'jonatan', 'lomeli mendez', 1, '', 'albañil', 'oclin 704', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651021402', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'maria lourdes', 'flores rubalcaba', 2, '', 'mestra', 'allende 208 oriente', NULL, 'centro', 'Rincón de Romos', 'Aguascalientes', '9510004', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'juan roberto ', 'marin flores', 1, '', 'estudiante', 'allende 208 oriente', NULL, 'centro', 'Rincón de Romos', 'Aguascalientes', '951000', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(137, '', '', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', '', NULL, NULL, NULL, '', '', '', '', ''),
(106, 'brenda carolina', 'garcia carranza', 1, '', 'estudiante', 'plutarco elias 232', NULL, 'san jose', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'marisela', 'mares castorena', 2, 'internista', 'hogar', 'eroico colegio militar 507', NULL, 'chora', 'Rincón de Romos', 'Aguascalientes', '8515045', '', '0000-00-00', '', NULL, 1, '2011-08-25', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'daniel de jesus', 'becerra urrutia', 1, '', 'empleado', '5 de mayo 125', NULL, 'barrio de guadalupe', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'juan enrique', 'garcia santana', 1, '', 'estudiante', 'circuito rolan michael 110 ', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651074485 cel', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'miguel angel ', 'perez torres', 1, '', 'abogado', 'fresno 9 ', NULL, 'santa cruz', 'Rincón de Romos', 'Aguascalientes', '4651004266', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'fernando', 'flores', 1, '', 'estudiante', 'motolinia 802', NULL, 'chabeño', 'Rincón de Romos', 'Aguascalientes', '10280', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'jose manuel', 'rubalcaba hdz.', 1, '', 'estudiante', 'coahula110', NULL, 'popular', 'Rincón de Romos', 'Aguascalientes', '4491291419', '', '0000-00-00', '', NULL, NULL, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'luis antoniol', 'flores mata', 1, '', 'estudiante', 'motolinia 802', NULL, 'guadalupe', 'Rincón de Romos', 'Aguascalientes', '9510280', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Nanci Lizbeth Hernandez', '30 julio81', 1, '', 'comerciante', 'coyootl 211', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '9511053', '', '0000-00-00', '', NULL, NULL, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'adriana', 'contreras palacios', 2, '', 'enfermera', 'av. tenochtli 232', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4659552106', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'monserrat', 'castillo suares', 2, '', 'hogar', 'copalli 160', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651024707', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'fabian', 'rosales garcia', 1, '', 'obrero', 'copalli252', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651082154', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'maria del carmen', 'de luna rubalcaba', 1, '', 'hogar', 'circuito gaitan labertu 436', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651031988', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'maria del rosario ', 'hernandez gonsalez', 2, '', 'hogar', 'masatl 109', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651082558', '', '0000-00-00', '', NULL, 1, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'josue', 'torres calvillo', 1, '', 'trabajador', 'lopez mateo 14', NULL, 'el bajio', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 0, '2011-08-26', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'francisco javier', 'rivera borroel', 1, '', 'estudiante', 'octlli 508', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'daniel alberto', 'padron perez', 1, '', 'estudiante', 'circuito ivan oliveira 248', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651048158', '', '0000-00-00', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'katia zuleima', 'gurrola garcia', 2, '', 'hogar', 'tuitlan105', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651047930', '', '0000-00-00', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'norma ', 'castorena puentes', 2, '', 'hogar', 'aldama 302', NULL, 'santa elena', 'Rincón de Romos', 'Aguascalientes', '4651024841', '', '0000-00-00', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'francisco javier', 'garcia castorena', 1, '', 'estudiante', 'aldama 302', NULL, 'santa elena', 'Rincón de Romos', 'Aguascalientes', '4651063473', '', '0000-00-00', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'jose antonio', 'rivera borroel', 1, '', 'estudiante', 'octli 508', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '8515655', '', '0000-00-00', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'daniel', 'rojas', 1, '', 'estudiante', 'circuito ivan oliveira 125', NULL, 'embajadores', 'Rincón de Romos', 'Aguascalientes', '4651092297', '', '0000-00-00', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'cecilia', 'lozano', 2, '', 'hogar', 'insurgente 115', NULL, 'centro', 'Rincón de Romos', 'Aguascalientes', '9510451', '', '0000-00-00', '', '', 1, '2011-08-28', NULL, '4651015153', 'esposo', '4651015153', 'insurgente 115', 'sesarias'),
(130, 'ruth alejandrina', 'gutierrez mendez', 1, '', 'enfermera', 'mixtli218', NULL, 'estancia de chora', 'Rincón de Romos', 'Aguascalientes', '4651003359', '', '0000-00-00', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'raudel', 'contreras palacios', 1, '', '', 'motolinia 804', NULL, 'barrio de guadalupe', 'Rincón de Romos', 'Aguascalientes', '4651021534', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '', '', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', '', NULL, NULL, NULL, '', '', '', '', ''),
(134, '', '', 1, '', '', '', NULL, '', 'Rincón de Romos', 'Aguascalientes', '', '', '0000-00-00', '', '', NULL, NULL, NULL, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edocivil`
--

CREATE TABLE IF NOT EXISTS `edocivil` (
  `idedocivil` int(2) NOT NULL AUTO_INCREMENT,
  `edocivil` varchar(60) NOT NULL,
  PRIMARY KEY (`idedocivil`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `edocivil`
--

INSERT INTO `edocivil` (`idedocivil`, `edocivil`) VALUES
(1, 'Soltero'),
(2, 'Casado'),
(3, 'Union Libre'),
(4, 'Divorciado'),
(5, 'Viudo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE IF NOT EXISTS `entradas` (
  `identrada` int(9) NOT NULL AUTO_INCREMENT,
  `idcliente` int(9) NOT NULL,
  `tiempo` datetime NOT NULL,
  PRIMARY KEY (`identrada`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`identrada`, `idcliente`, `tiempo`) VALUES
(1, 2, '2011-07-17 15:27:44'),
(2, 1, '2011-07-18 09:44:16'),
(3, 1, '2011-07-18 09:51:52'),
(4, 26, '2011-07-18 12:08:47'),
(5, 1, '2011-07-18 22:38:39'),
(6, 32, '2011-07-19 13:49:20'),
(7, 107, '2011-07-25 07:24:36'),
(8, 118, '2011-07-26 10:13:51'),
(9, 118, '2011-07-26 10:13:56'),
(10, 118, '2011-07-26 10:15:05'),
(11, 118, '2011-07-26 10:15:07'),
(12, 118, '2011-07-26 10:15:08'),
(13, 118, '2011-07-26 10:15:08'),
(14, 118, '2011-07-26 10:15:08'),
(15, 100, '2011-07-26 18:59:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `idmenu` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(64) NOT NULL,
  `ruta` varchar(128) NOT NULL,
  `rel` varchar(128) NOT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `menus`
--

INSERT INTO `menus` (`idmenu`, `menu`, `ruta`, `rel`) VALUES
(1, 'Buscar', 'index.php/clientes/buscar', 'buscar'),
(2, 'Registrar', 'index.php/clientes/registrar', 'registrar'),
(3, 'Identificar', 'index.php/clientes/identificar', 'identi'),
(4, 'Corte', 'index.php/clientes/corte', 'corte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus_perfiles`
--

CREATE TABLE IF NOT EXISTS `menus_perfiles` (
  `idmenus_perfiles` int(3) NOT NULL AUTO_INCREMENT,
  `idmenu` int(3) NOT NULL,
  `idperfil` int(1) NOT NULL,
  PRIMARY KEY (`idmenus_perfiles`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `menus_perfiles`
--

INSERT INTO `menus_perfiles` (`idmenus_perfiles`, `idmenu`, `idperfil`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 1, 1),
(5, 2, 1),
(6, 3, 1),
(7, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `idpago` int(99) NOT NULL AUTO_INCREMENT,
  `idcliente` int(9) NOT NULL,
  `idtarifa` int(4) NOT NULL,
  `fecha` datetime NOT NULL,
  `idusuario` int(9) NOT NULL,
  `veces` int(5) NOT NULL,
  PRIMARY KEY (`idpago`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Volcar la base de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`idpago`, `idcliente`, `idtarifa`, `fecha`, `idusuario`, `veces`) VALUES
(1, 1, 5, '2011-07-17 15:10:24', 1, 2),
(2, 2, 1, '2011-07-17 15:26:49', 5, 1),
(3, 2, 2, '2011-07-17 15:26:49', 5, 1),
(4, 3, 1, '2011-07-18 06:07:20', 3, 1),
(5, 4, 1, '2011-07-18 06:11:12', 3, 1),
(6, 6, 1, '2011-07-18 06:17:28', 3, 1),
(7, 7, 1, '2011-07-18 06:20:12', 3, 1),
(8, 8, 1, '2011-07-18 06:23:38', 3, 1),
(9, 10, 1, '2011-07-18 06:50:54', 3, 1),
(10, 13, 1, '2011-07-18 07:13:09', 3, 1),
(11, 14, 1, '2011-07-18 07:50:06', 3, 1),
(12, 15, 1, '2011-07-18 07:54:04', 3, 1),
(13, 16, 1, '2011-07-18 08:52:51', 3, 1),
(14, 17, 1, '2011-07-18 09:28:51', 3, 1),
(15, 18, 1, '2011-07-18 09:32:13', 3, 1),
(16, 25, 1, '2011-07-18 10:45:35', 3, 1),
(17, 26, 1, '2011-07-18 10:49:42', 3, 1),
(18, 27, 1, '2011-07-18 11:36:33', 3, 1),
(19, 28, 1, '2011-07-18 11:42:23', 3, 1),
(20, 30, 1, '2011-07-18 12:37:48', 3, 1),
(21, 31, 1, '2011-07-18 12:41:49', 3, 1),
(22, 32, 1, '2011-07-18 13:04:44', 3, 1),
(23, 33, 1, '2011-07-18 13:33:56', 3, 1),
(24, 34, 1, '2011-07-18 15:07:45', 3, 1),
(25, 35, 1, '2011-07-18 15:55:23', 3, 1),
(26, 36, 1, '2011-07-18 17:32:44', 3, 1),
(27, 37, 1, '2011-07-18 17:39:11', 3, 1),
(28, 38, 1, '2011-07-18 18:42:11', 3, 1),
(29, 39, 1, '2011-07-18 19:26:26', 3, 1),
(30, 40, 1, '2011-07-18 19:34:47', 3, 1),
(31, 41, 1, '2011-07-18 19:57:08', 3, 1),
(32, 42, 1, '2011-07-18 20:04:18', 3, 1),
(33, 43, 1, '2011-07-18 20:17:25', 3, 1),
(34, 44, 1, '2011-07-18 20:24:43', 3, 1),
(35, 45, 1, '2011-07-18 20:31:12', 3, 1),
(36, 46, 1, '2011-07-18 20:35:50', 3, 1),
(37, 46, 1, '2011-07-18 20:36:03', 3, 1),
(38, 48, 1, '2011-07-18 20:42:49', 3, 1),
(39, 49, 1, '2011-07-18 20:46:54', 3, 1),
(40, 50, 1, '2011-07-18 20:51:33', 3, 1),
(41, 51, 1, '2011-07-18 21:30:57', 3, 1),
(42, 52, 1, '2011-07-18 22:12:59', 3, 1),
(43, 53, 1, '2011-07-18 22:20:09', 3, 1),
(44, 54, 1, '2011-07-18 22:23:16', 3, 1),
(45, 5, 1, '2011-07-19 06:38:54', 3, 12),
(46, 5, 1, '2011-07-19 06:39:10', 3, 12),
(47, 9, 1, '2011-07-19 06:40:54', 3, 12),
(48, 12, 1, '2011-07-19 06:41:35', 3, 12),
(49, 7, 1, '2011-07-19 06:42:59', 3, 11),
(50, 55, 1, '2011-07-19 06:48:50', 3, 1),
(51, 56, 1, '2011-07-19 06:58:40', 3, 1),
(52, 57, 1, '2011-07-19 07:32:55', 3, 1),
(53, 60, 1, '2011-07-19 08:37:44', 3, 1),
(54, 29, 1, '2011-07-19 10:30:39', 3, 1),
(55, 63, 1, '2011-07-19 13:23:26', 3, 1),
(56, 66, 1, '2011-07-19 14:59:42', 3, 1),
(57, 67, 1, '2011-07-19 15:03:34', 3, 1),
(58, 69, 1, '2011-07-19 21:29:40', 5, 1),
(59, 70, 1, '2011-07-19 21:35:30', 5, 1),
(60, 71, 1, '2011-07-19 21:39:36', 5, 1),
(61, 72, 1, '2011-07-19 21:42:27', 5, 1),
(62, 73, 1, '2011-07-19 21:44:47', 5, 1),
(63, 74, 1, '2011-07-19 21:47:29', 5, 1),
(64, 75, 1, '2011-07-19 21:50:54', 5, 1),
(65, 76, 1, '2011-07-19 21:53:36', 5, 1),
(66, 77, 1, '2011-07-19 21:56:39', 5, 1),
(67, 78, 1, '2011-07-19 22:01:06', 5, 1),
(68, 82, 1, '2011-07-22 05:54:36', 3, 1),
(69, 88, 1, '2011-07-22 06:17:37', 3, 1),
(70, 11, 1, '2011-07-22 06:28:37', 3, 1),
(71, 24, 1, '2011-07-22 06:29:40', 3, 1),
(72, 47, 1, '2011-07-22 06:36:04', 3, 1),
(73, 68, 1, '2011-07-22 06:38:22', 3, 1),
(74, 81, 1, '2011-07-22 06:40:23', 3, 1),
(75, 83, 1, '2011-07-22 06:40:53', 3, 1),
(76, 84, 1, '2011-07-22 06:41:12', 3, 1),
(77, 85, 1, '2011-07-22 06:41:51', 3, 1),
(78, 86, 1, '2011-07-22 06:42:18', 3, 1),
(79, 87, 1, '2011-07-22 06:42:44', 3, 1),
(80, 89, 1, '2011-07-22 06:45:55', 3, 1),
(81, 90, 1, '2011-07-22 06:48:45', 3, 1),
(82, 91, 1, '2011-07-22 06:51:21', 3, 1),
(83, 92, 1, '2011-07-22 06:53:26', 3, 1),
(84, 107, 1, '2011-07-25 06:34:59', 3, 1),
(85, 119, 1, '2011-07-26 06:41:58', 3, 1),
(86, 120, 1, '2011-07-26 07:18:12', 3, 1),
(87, 118, 1, '2011-07-26 09:02:16', 3, 1),
(88, 117, 1, '2011-07-26 09:02:42', 3, 1),
(89, 116, 1, '2011-07-26 09:03:07', 3, 1),
(90, 115, 1, '2011-07-26 09:03:30', 3, 1),
(91, 114, 1, '2011-07-26 09:03:59', 3, 1),
(92, 113, 1, '2011-07-26 09:06:02', 3, 1),
(93, 112, 1, '2011-07-26 09:06:33', 3, 1),
(94, 111, 1, '2011-07-26 09:07:02', 3, 1),
(95, 110, 1, '2011-07-26 09:07:31', 3, 1),
(96, 109, 1, '2011-07-26 09:08:56', 3, 1),
(97, 108, 1, '2011-07-26 09:09:38', 3, 1),
(98, 106, 1, '2011-07-26 09:10:10', 3, 1),
(99, 103, 1, '2011-07-26 09:10:33', 3, 1),
(100, 102, 1, '2011-07-26 09:11:41', 3, 1),
(101, 101, 1, '2011-07-26 09:12:14', 3, 1),
(102, 100, 1, '2011-07-26 09:12:52', 3, 1),
(103, 98, 1, '2011-07-26 09:13:33', 3, 1),
(104, 96, 1, '2011-07-26 09:13:58', 3, 1),
(105, 95, 1, '2011-07-26 09:14:24', 3, 1),
(106, 94, 1, '2011-07-26 09:14:51', 3, 1),
(107, 136, 1, '2011-07-28 06:59:31', 3, 1),
(108, 139, 1, '2011-07-28 12:09:02', 3, 1),
(109, 138, 1, '2011-07-28 13:53:15', 3, 1),
(110, 140, 9, '2011-07-28 21:58:21', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE IF NOT EXISTS `tarifas` (
  `idtarifa` int(3) NOT NULL AUTO_INCREMENT,
  `tarifa` varchar(255) NOT NULL,
  `tiempo` int(9) NOT NULL,
  `tipo` int(1) NOT NULL DEFAULT '0',
  `precio` double NOT NULL,
  PRIMARY KEY (`idtarifa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`idtarifa`, `tarifa`, `tiempo`, `tipo`, `precio`) VALUES
(1, 'Primer Mes', 1, 0, 150),
(2, 'Segundo Mes', 1, 0, 150),
(3, 'Inscripción', 0, 0, 30),
(4, 'Mensualidad', 1, 0, 170),
(5, 'Un dia', 1, 1, 20),
(6, 'Agua 1LT', 0, 0, 8),
(7, 'Agua 1.5LT', 0, 0, 10),
(8, 'Semana', 7, 1, 60),
(9, 'Quincena', 15, 1, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int(3) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `activo` int(1) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `idperfil` int(2) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `user`, `pass`, `activo`, `nombre`, `apellidos`, `idperfil`) VALUES
(1, 'ulises', 'cebdd715d4ecaafee8f147c2e85e0754', 1, 'Fernando', 'Medrano', 1),
(3, 'maria', 'ac2ec38840c83f954dafaf46c8265a7d', 1, 'maria del socorro', 'flores dominguez', 2),
(4, 'juana', '43cca4b3de2097b9558efefd0ecc3588', 1, 'juana maria ', 'perez mediNA', 2),
(5, 'j', '9ce872bc26b6d051252d70618649a33f', 1, '', '', 1);
