/*
 Navicat Premium Data Transfer

 Source Server         : WorkOrders
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : db_workorders

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 06/07/2024 09:51:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_cliente
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cliente`;
CREATE TABLE `tbl_cliente`  (
  `IdCliente` smallint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Apellido1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Apellido2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`IdCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_cliente
-- ----------------------------
INSERT INTO `tbl_cliente` VALUES (1, 'Dynah', 'Harper', 'Chittleburgh', '9048416679', 'dchittleburgh0@hhs.gov', '2', '2023-06-10 00:00:00', '2024-07-06 16:35:11');
INSERT INTO `tbl_cliente` VALUES (2, 'Mireielle', 'Darch', 'Oki', '6511471479', 'moki1@ucsd.edu', '1', '2023-06-24 00:00:00', '2024-03-14 00:00:00');
INSERT INTO `tbl_cliente` VALUES (3, 'Lillis', 'Woodham', 'Izakov', '9448934288', 'lizakov2@taobao.com', '1', '2024-02-25 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (4, 'Aldrich', 'Cheverton', 'Bawdon', '2371049595', 'abawdon3@vimeo.com', '1', '2023-06-30 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (5, 'Ally', 'McLaren', 'Correa', '2544806402', 'acorrea4@huffingtonpost.com', '1', '2023-06-04 00:00:00', '2023-11-19 00:00:00');
INSERT INTO `tbl_cliente` VALUES (6, 'Sylvan', 'Sonnenschein', 'Brecon', '7866586435', 'sbrecon5@sakura.ne.jp', '1', '2023-07-22 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (7, 'Keelia', 'Khalid', 'Vittet', '6558059451', 'kvittet6@slashdot.org', '2', '2024-05-13 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (8, 'Aura', 'Echallie', 'Verson', '4017225144', 'averson7@vinaora.com', '2', '2023-12-23 00:00:00', '2023-12-23 00:00:00');
INSERT INTO `tbl_cliente` VALUES (9, 'Sabrina', 'Jakobsson', 'Ivory', '2484497985', 'sivory8@java.com', '2', '2024-03-31 00:00:00', '2023-07-30 00:00:00');
INSERT INTO `tbl_cliente` VALUES (10, 'Neron', 'Osbidston', 'Diggar', '5586160351', 'ndiggar9@cyberchimps.com', '2', '2023-08-02 00:00:00', '2024-05-14 00:00:00');
INSERT INTO `tbl_cliente` VALUES (11, 'Guthrey', 'Birtwhistle', 'Millson', '9664079948', '', '2', '2023-11-24 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (12, 'Nat', 'Lahrs', 'Spenclay', '8861349303', 'nspenclayb@washington.edu', '2', '2024-01-08 00:00:00', '2023-09-27 00:00:00');
INSERT INTO `tbl_cliente` VALUES (13, 'Morris', 'Hess', 'Town', '3615801943', 'mtownc@etsy.com', '1', '2023-12-19 00:00:00', '2024-01-01 00:00:00');
INSERT INTO `tbl_cliente` VALUES (14, 'Thom', 'Yaus', 'Dallander', '9298372157', 'tdallanderd@icq.com', '2', '2024-06-17 00:00:00', '2023-07-01 00:00:00');
INSERT INTO `tbl_cliente` VALUES (15, 'Dunn', 'Mougin', 'Gentzsch', '8462439989', 'dgentzsche@hatena.ne.jp', '1', '2024-02-12 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (16, 'Emmanuel', 'Ingledew', 'Beacroft', '9487167161', 'ebeacroftf@histats.com', '2', '2023-07-20 00:00:00', '2024-01-22 00:00:00');
INSERT INTO `tbl_cliente` VALUES (17, 'Myriam', 'Tregian', 'Braunlein', '1124876635', 'mbraunleing@barnesandnoble.com', '2', '2023-12-14 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (18, 'Calida', 'Capp', 'Vaszoly', '2744635577', 'cvaszolyh@cnn.com', '1', '2023-07-17 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (19, 'Ezechiel', 'Markos', 'Brixey', '1591824712', 'ebrixeyi@walmart.com', '1', '2024-05-19 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (20, 'Mable', 'Nerheny', 'Kingsland', '1771877962', 'mkingslandj@ihg.com', '2', '2024-04-26 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (21, 'Maxwell', 'Hulburt', 'Playford', '9265103787', 'mplayfordk@amazon.co.jp', '1', '2023-11-10 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (22, 'Roda', 'Kindley', 'Fonte', '2136732165', 'rfontel@about.com', '2', '2024-02-08 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (23, 'Em', 'MacGinney', 'Dongate', '8978141187', 'edongatem@cbslocal.com', '2', '2023-09-29 00:00:00', '2024-01-26 00:00:00');
INSERT INTO `tbl_cliente` VALUES (24, 'Augustina', 'Handrok', 'Timmis', '2874614011', 'atimmisn@jalbum.net', '1', '2023-11-17 00:00:00', '2024-07-01 00:00:00');
INSERT INTO `tbl_cliente` VALUES (25, 'Prissie', 'Corss', 'Sedworth', '9932397291', 'psedwortho@bloglines.com', '1', '2023-12-03 00:00:00', '2024-01-26 00:00:00');
INSERT INTO `tbl_cliente` VALUES (26, 'Aridatha', 'Garahan', 'Fitzsymonds', '1854932528', 'afitzsymondsp@desdev.cn', '2', '2024-02-16 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (27, 'Malorie', 'Moughton', 'Michin', '2936339454', 'mmichinq@bizjournals.com', '1', '2024-03-13 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (28, 'Bobbi', 'Stanes', 'Wallentin', '8427640268', 'bwallentinr@github.com', '2', '2024-03-02 00:00:00', '2024-03-29 00:00:00');
INSERT INTO `tbl_cliente` VALUES (29, 'Rois', 'Geggus', 'Brien', '4942814824', '', '1', '2023-07-17 00:00:00', '2023-09-18 00:00:00');
INSERT INTO `tbl_cliente` VALUES (30, 'Torin', 'But', 'Rothon', '2876300673', 'trothont@chicagotribune.com', '2', '2024-05-17 00:00:00', '2024-04-28 00:00:00');
INSERT INTO `tbl_cliente` VALUES (31, 'Grant', 'Braun', 'Maysor', '3106892741', 'gmaysoru@statcounter.com', '2', '2024-04-03 00:00:00', '2024-01-14 00:00:00');
INSERT INTO `tbl_cliente` VALUES (32, 'Veronica', 'Yanov', 'Ortet', '6093269450', 'vortetv@odnoklassniki.ru', '1', '2023-12-17 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (33, 'Ambur', 'Sterndale', 'Tait', '5966098724', 'ataitw@yellowbook.com', '1', '2024-03-30 00:00:00', '2024-05-03 00:00:00');
INSERT INTO `tbl_cliente` VALUES (34, 'Georges', 'Avramovitz', 'Gaiter', '6692981067', 'ggaiterx@slashdot.org', '1', '2024-01-31 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (35, 'Barron', 'Coggen', 'Duplan', '6793473689', 'bduplany@networkadvertising.org', '1', '2023-08-03 00:00:00', '2023-11-18 00:00:00');
INSERT INTO `tbl_cliente` VALUES (36, 'Rori', 'Bernuzzi', 'Pettingall', '8237472636', 'rpettingallz@sbwire.com', '1', '2023-08-23 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (37, 'Salaidh', 'Alabastar', 'O\'Reagan', '3695121091', 'soreagan10@latimes.com', '2', '2024-05-01 00:00:00', '2024-01-10 00:00:00');
INSERT INTO `tbl_cliente` VALUES (38, 'Elset', 'Episcopi', 'Soitoux', '1678984145', '', '2', '2024-02-03 00:00:00', '2023-10-15 00:00:00');
INSERT INTO `tbl_cliente` VALUES (39, 'Ethelred', 'Kippie', 'McInnerny', '3347113594', 'emcinnerny12@cbslocal.com', '1', '2024-01-24 00:00:00', '2024-03-26 00:00:00');
INSERT INTO `tbl_cliente` VALUES (40, 'Bentlee', 'Clemencet', 'Moff', '3993059468', 'bmoff13@arstechnica.com', '2', '2024-02-24 00:00:00', '2023-08-17 00:00:00');
INSERT INTO `tbl_cliente` VALUES (41, 'Cathrine', 'Grassick', 'Delhay', '4513010526', 'cdelhay14@webmd.com', '2', '2024-03-14 00:00:00', '2023-07-30 00:00:00');
INSERT INTO `tbl_cliente` VALUES (42, 'Baillie', 'Mangon', 'Kindon', '5562673624', '', '2', '2024-02-29 00:00:00', '2024-01-14 00:00:00');
INSERT INTO `tbl_cliente` VALUES (43, 'Marieann', 'Tilford', 'Molson', '8872365636', 'mmolson16@fotki.com', '2', '2024-02-19 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (44, 'Cristobal', 'Feild', 'Twiggins', '6765013614', 'ctwiggins17@elegantthemes.com', '1', '2024-01-17 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (45, 'Ivor', 'Deniske', 'McKinnon', '6737707627', 'imckinnon18@elpais.com', '2', '2024-06-25 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (46, 'Bernete', 'Braizier', 'Calbaithe', '6695812227', '', '1', '2024-02-17 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (47, 'Zorana', 'McClarence', 'Glazer', '3096064957', 'zglazer1a@gov.uk', '1', '2023-08-19 00:00:00', '2023-09-04 00:00:00');
INSERT INTO `tbl_cliente` VALUES (48, 'Tate', 'Johnigan', 'Bolles', '5163185401', 'tbolles1b@dion.ne.jp', '2', '2023-09-11 00:00:00', NULL);
INSERT INTO `tbl_cliente` VALUES (49, 'Othilie', 'Braysher', 'Drought', '7082963747', 'odrought1c@wikispaces.com', '2', '2023-07-03 00:00:00', '2023-09-30 00:00:00');
INSERT INTO `tbl_cliente` VALUES (50, 'Chelsie', 'Hadden', 'Faunch', '8798170616', '', '1', '2023-09-23 00:00:00', NULL);

-- ----------------------------
-- Table structure for tbl_estatus
-- ----------------------------
DROP TABLE IF EXISTS `tbl_estatus`;
CREATE TABLE `tbl_estatus`  (
  `IdEstatus` smallint NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdEstatus`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_estatus
-- ----------------------------
INSERT INTO `tbl_estatus` VALUES (1, 'Nuevo');
INSERT INTO `tbl_estatus` VALUES (2, 'En proceso');
INSERT INTO `tbl_estatus` VALUES (3, 'Cerrado');

-- ----------------------------
-- Table structure for tbl_servicio
-- ----------------------------
DROP TABLE IF EXISTS `tbl_servicio`;
CREATE TABLE `tbl_servicio`  (
  `IdServicio` smallint NOT NULL AUTO_INCREMENT,
  `TipoServicioId` smallint NULL DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`IdServicio`) USING BTREE,
  INDEX `TipoServicioId`(`TipoServicioId` ASC) USING BTREE,
  CONSTRAINT `tbl_servicio_ibfk_1` FOREIGN KEY (`TipoServicioId`) REFERENCES `tbl_tiposervicio` (`IdTipoServicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_servicio
-- ----------------------------
INSERT INTO `tbl_servicio` VALUES (1, 3, 'rhoncus aliquet pulvinar sed nisl', '2023-12-02 00:00:00', '2023-09-28 00:00:00');
INSERT INTO `tbl_servicio` VALUES (2, 1, 'interdum mauris ullamcorper purus sit amet nulla', '2023-06-30 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (3, 3, 'posuere metus vitae ipsum aliquam non mauris morbi non', '2024-05-16 00:00:00', '2023-12-25 00:00:00');
INSERT INTO `tbl_servicio` VALUES (4, 2, 'non velit', '2023-07-12 00:00:00', '2023-11-25 00:00:00');
INSERT INTO `tbl_servicio` VALUES (5, 3, 'vel augue vestibulum ante ipsum primis in faucibus orci', '2024-02-07 00:00:00', '2024-07-17 00:00:00');
INSERT INTO `tbl_servicio` VALUES (6, 3, 'ac est lacinia nisi venenatis tristique fusce congue diam id', '2024-01-14 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (7, 3, 'sit amet turpis elementum ligula', '2023-08-20 00:00:00', '2024-01-09 00:00:00');
INSERT INTO `tbl_servicio` VALUES (8, 3, 'quam a odio in hac', '2024-01-31 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (9, 1, 'justo aliquam quis turpis eget elit sodales scelerisque', '2023-09-02 00:00:00', '2023-12-20 00:00:00');
INSERT INTO `tbl_servicio` VALUES (10, 2, 'purus sit amet nulla quisque arcu libero rutrum ac lobortis', '2024-03-15 00:00:00', '2023-10-18 00:00:00');
INSERT INTO `tbl_servicio` VALUES (11, 2, 'nibh fusce lacus purus aliquet at', '2024-02-23 00:00:00', '2023-07-14 00:00:00');
INSERT INTO `tbl_servicio` VALUES (12, 3, 'nulla mollis molestie lorem quisque ut erat curabitur', '2023-12-25 00:00:00', '2023-09-15 00:00:00');
INSERT INTO `tbl_servicio` VALUES (13, 2, 'ut massa volutpat convallis morbi odio', '2023-10-02 00:00:00', '2024-05-17 00:00:00');
INSERT INTO `tbl_servicio` VALUES (14, 1, 'id justo sit', '2023-06-11 00:00:00', '2023-09-14 00:00:00');
INSERT INTO `tbl_servicio` VALUES (15, 3, 'pretium quis', '2023-12-14 00:00:00', '2024-03-28 00:00:00');
INSERT INTO `tbl_servicio` VALUES (16, 3, 'ipsum primis in faucibus orci', '2024-06-08 00:00:00', '2023-08-02 00:00:00');
INSERT INTO `tbl_servicio` VALUES (17, 3, 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien', '2023-12-24 00:00:00', '2024-02-02 00:00:00');
INSERT INTO `tbl_servicio` VALUES (18, 3, 'libero convallis', '2024-05-28 00:00:00', '2024-03-28 00:00:00');
INSERT INTO `tbl_servicio` VALUES (19, 2, 'eu sapien cursus vestibulum proin', '2023-08-05 00:00:00', '2023-08-12 00:00:00');
INSERT INTO `tbl_servicio` VALUES (20, 2, 'ipsum primis in faucibus orci luctus', '2023-07-23 00:00:00', '2023-07-27 00:00:00');
INSERT INTO `tbl_servicio` VALUES (21, 2, 'nulla quisque arcu', '2024-01-09 00:00:00', '2024-07-09 00:00:00');
INSERT INTO `tbl_servicio` VALUES (22, 2, 'neque sapien placerat ante nulla', '2024-04-02 00:00:00', '2023-07-13 00:00:00');
INSERT INTO `tbl_servicio` VALUES (23, 2, 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit', '2023-09-10 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (24, 2, 'nunc proin at turpis a pede', '2023-08-03 00:00:00', '2024-03-08 00:00:00');
INSERT INTO `tbl_servicio` VALUES (25, 1, 'lectus aliquam sit amet diam in magna bibendum imperdiet', '2024-02-17 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (26, 2, 'odio elementum eu interdum eu tincidunt in leo', '2024-04-14 00:00:00', '2024-01-10 00:00:00');
INSERT INTO `tbl_servicio` VALUES (27, 3, 'posuere cubilia', '2023-08-10 00:00:00', '2023-12-26 00:00:00');
INSERT INTO `tbl_servicio` VALUES (28, 2, 'maecenas tincidunt lacus at velit vivamus', '2024-01-23 00:00:00', '2024-01-20 00:00:00');
INSERT INTO `tbl_servicio` VALUES (29, 3, 'sem fusce', '2024-04-20 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (30, 1, 'molestie nibh', '2023-07-04 00:00:00', '2024-06-16 00:00:00');
INSERT INTO `tbl_servicio` VALUES (31, 3, 'nisi eu orci mauris lacinia sapien quis libero', '2023-06-24 00:00:00', '2023-08-13 00:00:00');
INSERT INTO `tbl_servicio` VALUES (32, 1, 'neque sapien', '2023-09-03 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (33, 1, 'rutrum neque aenean auctor gravida sem', '2024-02-06 00:00:00', '2024-01-17 00:00:00');
INSERT INTO `tbl_servicio` VALUES (34, 1, 'interdum in', '2023-12-27 00:00:00', '2024-03-05 00:00:00');
INSERT INTO `tbl_servicio` VALUES (35, 1, 'sapien varius ut', '2024-05-31 00:00:00', '2024-03-03 00:00:00');
INSERT INTO `tbl_servicio` VALUES (36, 1, 'mauris sit amet eros', '2024-02-22 00:00:00', '2024-04-29 00:00:00');
INSERT INTO `tbl_servicio` VALUES (37, 1, 'tristique fusce', '2024-02-12 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (38, 3, 'tempus vivamus in felis eu sapien cursus', '2024-04-15 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (39, 1, 'proin leo', '2024-02-21 00:00:00', '2024-07-29 00:00:00');
INSERT INTO `tbl_servicio` VALUES (40, 2, 'sollicitudin mi sit amet lobortis sapien sapien non', '2024-04-24 00:00:00', '2024-06-27 00:00:00');
INSERT INTO `tbl_servicio` VALUES (41, 1, 'lorem ipsum dolor sit amet consectetuer adipiscing', '2024-05-29 00:00:00', '2024-05-10 00:00:00');
INSERT INTO `tbl_servicio` VALUES (42, 1, 'suspendisse accumsan tortor quis turpis sed ante', '2023-07-07 00:00:00', '2023-09-23 00:00:00');
INSERT INTO `tbl_servicio` VALUES (43, 3, 'curae mauris viverra diam vitae quam suspendisse potenti', '2023-06-01 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (44, 3, 'lacus at velit vivamus vel', '2024-06-26 00:00:00', '2024-02-29 00:00:00');
INSERT INTO `tbl_servicio` VALUES (45, 1, 'leo pellentesque ultrices', '2024-05-05 00:00:00', '2024-02-26 00:00:00');
INSERT INTO `tbl_servicio` VALUES (46, 1, 'non mauris morbi non lectus', '2024-06-26 00:00:00', '2023-07-13 00:00:00');
INSERT INTO `tbl_servicio` VALUES (47, 3, 'vel enim sit amet', '2023-10-05 00:00:00', NULL);
INSERT INTO `tbl_servicio` VALUES (48, 3, 'nisl ut volutpat sapien arcu sed augue', '2023-11-03 00:00:00', '2024-05-25 00:00:00');
INSERT INTO `tbl_servicio` VALUES (49, 1, 'tristique est et tempus semper', '2024-04-11 00:00:00', '2023-09-26 00:00:00');
INSERT INTO `tbl_servicio` VALUES (50, 3, 'eros suspendisse', '2024-04-01 00:00:00', '2023-07-04 00:00:00');

-- ----------------------------
-- Table structure for tbl_tecnico
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tecnico`;
CREATE TABLE `tbl_tecnico`  (
  `IdTecnico` smallint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Apellido1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Apellido2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Estatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`IdTecnico`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tecnico
-- ----------------------------
INSERT INTO `tbl_tecnico` VALUES (1, 'Hansiain', 'Rachuig', 'Broadhurst', '4539123912', 'hbroadhurst0@godaddy.com', '2', '2024-05-21 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (2, 'Lilla', 'Byrch', 'Marde', '8012684505', 'lmarde1@miitbeian.gov.cn', '2', '2023-11-05 00:00:00', '2024-07-06 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (3, 'Ronny', 'Herche', 'Spearett', '4871795624', 'rspearett2@liveinternet.ru', '1', '2024-04-29 00:00:00', '2023-12-25 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (4, 'Edlin', 'Kellitt', 'O\'Gormally', '2669680510', 'eogormally3@intel.com', '2', '2024-02-20 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (5, 'Theadora', 'Dobeson', 'Verbrugghen', '7051148753', 'tverbrugghen4@technorati.com', '1', '2023-06-08 00:00:00', '2024-02-14 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (6, 'Stephana', 'Seals', 'Deverock', '6368249376', 'sdeverock5@trellian.com', '2', '2024-04-04 00:00:00', '2024-05-19 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (7, 'Ethel', 'Batt', 'Fitzgerald', '2232881039', 'efitzgerald6@amazon.de', '2', '2024-05-02 00:00:00', '2023-11-03 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (8, 'Ray', 'Akerman', 'Jerschke', '1579177451', 'rjerschke7@icq.com', '1', '2024-06-07 00:00:00', '2024-05-30 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (9, 'Roland', 'Chiverstone', 'Wayman', '1498895848', 'rwayman8@go.com', '2', '2023-11-19 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (10, 'Bernita', 'Hallagan', 'Greener', '6808104078', 'bgreener9@vimeo.com', '1', '2023-08-26 00:00:00', '2024-07-20 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (11, 'Ewart', 'Feldberg', 'Sollas', '4027136499', 'esollasa@free.fr', '1', '2024-02-09 00:00:00', '2023-07-16 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (12, 'Elvira', 'Ewers', 'Steers', '4925474978', 'esteersb@exblog.jp', '1', '2024-05-29 00:00:00', '2023-08-05 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (13, 'Thalia', 'McGlue', 'Jakuszewski', '9527696121', 'tjakuszewskic@reverbnation.com', '1', '2023-06-04 00:00:00', '2024-01-09 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (14, 'Nickolas', 'Messenbird', 'Hooban', '2266238970', 'nhooband@last.fm', '2', '2023-08-18 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (15, 'Doyle', 'Giddings', 'Tilt', '8258499442', 'dtilte@webeden.co.uk', '2', '2023-12-23 00:00:00', '2024-06-15 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (16, 'Lizbeth', 'Gomes', 'Trevains', '6406509250', 'ltrevainsf@cdc.gov', '2', '2024-03-02 00:00:00', '2024-05-29 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (17, 'Rabbi', 'Linscott', 'Hennington', '1547828026', 'rhenningtong@purevolume.com', '1', '2024-05-24 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (18, 'Gale', 'Banville', 'Neesham', '1618333438', 'gneeshamh@cdc.gov', '2', '2024-06-16 00:00:00', '2024-04-20 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (19, 'Ardelis', 'Leve', 'Kealey', '5611917771', 'akealeyi@liveinternet.ru', '1', '2024-03-04 00:00:00', '2024-06-13 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (20, 'Dorree', 'Thamelt', 'Snoden', '6292473121', 'dsnodenj@tamu.edu', '2', '2023-07-09 00:00:00', '2023-09-03 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (21, 'Lishe', 'Ablitt', 'Rewbottom', '8482350328', 'lrewbottomk@histats.com', '2', '2023-11-04 00:00:00', '2023-10-17 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (22, 'Egon', 'Hawket', 'Draxford', '4072032227', 'edraxfordl@slashdot.org', '1', '2024-02-18 00:00:00', '2024-06-29 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (23, 'Brice', 'Shirer', 'Covell', '6474246601', 'bcovellm@symantec.com', '1', '2024-04-27 00:00:00', '2023-11-21 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (24, 'Grace', 'Jarrold', 'Dreigher', '1952097248', 'gdreighern@abc.net.au', '2', '2024-05-10 00:00:00', '2023-12-10 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (25, 'Lyndell', 'Gurr', 'Grimes', '1307948717', 'lgrimeso@lycos.com', '2', '2023-10-11 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (26, 'Jaquelyn', 'O\' Hanvey', 'Renak', '2707756873', 'jrenakp@nbcnews.com', '2', '2024-04-29 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (27, 'Farrell', 'Rowler', 'Causey', '8893642812', 'fcauseyq@taobao.com', '1', '2024-03-06 00:00:00', '2023-12-27 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (28, 'Jamal', 'Attrie', 'Oluwatoyin', '9495748382', 'joluwatoyinr@webnode.com', '1', '2023-10-19 00:00:00', '2024-05-06 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (29, 'Carlen', 'Fairman', 'McNiven', '3519640304', 'cmcnivens@washington.edu', '2', '2024-02-11 00:00:00', '2023-07-05 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (30, 'Lona', 'Caplis', 'Slowey', '2076665099', 'lsloweyt@eepurl.com', '1', '2023-08-31 00:00:00', '2024-03-24 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (31, 'Iggy', 'Kippen', 'Klarzynski', '6159380061', 'iklarzynskiu@sciencedirect.com', '2', '2023-06-22 00:00:00', '2024-01-19 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (32, 'Peder', 'Hadigate', 'O\' Mahony', '4512140780', 'pomahonyv@army.mil', '2', '2023-07-01 00:00:00', '2024-01-23 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (33, 'Evaleen', 'Vitte', 'Kinningley', '1123182517', 'ekinningleyw@statcounter.com', '1', '2023-12-31 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (34, 'Aymer', 'Petschelt', 'Liven', '2804183557', 'alivenx@parallels.com', '2', '2023-12-03 00:00:00', '2023-07-01 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (35, 'Sharl', 'Byatt', 'Hardisty', '9283661887', 'shardistyy@tumblr.com', '2', '2024-05-11 00:00:00', '2023-10-16 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (36, 'Honor', 'Mirams', 'MacRirie', '2512971334', 'hmacririez@stumbleupon.com', '2', '2024-01-07 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (37, 'Bari', 'Okenden', 'Apfelmann', '1268323392', 'bapfelmann10@amazon.co.uk', '2', '2023-07-11 00:00:00', '2023-09-13 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (38, 'Gillian', 'Otley', 'Alecock', '2824691304', 'galecock11@pen.io', '1', '2023-11-06 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (39, 'Maddie', 'Leifer', 'Vernay', '7295144983', 'mvernay12@virginia.edu', '1', '2024-04-04 00:00:00', '2024-03-13 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (40, 'Dorey', 'Sylvester', 'Mulryan', '6199724409', 'dmulryan13@sciencedirect.com', '1', '2023-08-14 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (41, 'Fern', 'Blaik', 'Ivett', '3751615276', 'fivett14@cmu.edu', '2', '2023-11-28 00:00:00', '2023-08-09 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (42, 'Wallas', 'Barrass', 'Harfoot', '8625667260', 'wharfoot15@alibaba.com', '2', '2023-11-13 00:00:00', '2023-10-31 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (43, 'Rowena', 'Hagart', 'Huntingford', '2688030279', 'rhuntingford16@creativecommons.org', '1', '2023-06-10 00:00:00', '2023-12-03 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (44, 'Ray', 'Philippe', 'Guterson', '5152419977', 'rguterson17@drupal.org', '1', '2024-02-21 00:00:00', '2024-05-11 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (45, 'Frankie', 'Owenson', 'Gueny', '6767631445', 'fgueny18@kickstarter.com', '2', '2023-12-18 00:00:00', '2024-05-13 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (46, 'Willy', 'Calafato', 'Pottle', '3037995833', 'wpottle19@cdc.gov', '1', '2024-04-01 00:00:00', '2023-10-16 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (47, 'Ashleigh', 'Segge', 'Jeger', '2709217966', 'ajeger1a@canalblog.com', '1', '2024-06-06 00:00:00', '2024-01-06 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (48, 'Roley', 'Cayzer', 'Ekell', '6667758719', 'rekell1b@wisc.edu', '1', '2024-04-09 00:00:00', NULL);
INSERT INTO `tbl_tecnico` VALUES (49, 'Bernette', 'Von Welden', 'Osgood', '8337854711', 'bosgood1c@livejournal.com', '2', '2024-02-11 00:00:00', '2023-07-15 00:00:00');
INSERT INTO `tbl_tecnico` VALUES (50, 'Gayleen', 'Laffranconi', 'Van Saltsberg', '1487028601', 'gvansaltsberg1d@typepad.com', '2', '2024-05-09 00:00:00', '2023-07-12 00:00:00');

-- ----------------------------
-- Table structure for tbl_tiposervicio
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tiposervicio`;
CREATE TABLE `tbl_tiposervicio`  (
  `IdTipoServicio` smallint NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdTipoServicio`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tiposervicio
-- ----------------------------
INSERT INTO `tbl_tiposervicio` VALUES (1, 'Preventivo');
INSERT INTO `tbl_tiposervicio` VALUES (2, 'Correctivo');
INSERT INTO `tbl_tiposervicio` VALUES (3, 'Predictivo');

-- ----------------------------
-- Table structure for tbl_workorders
-- ----------------------------
DROP TABLE IF EXISTS `tbl_workorders`;
CREATE TABLE `tbl_workorders`  (
  `IdWorkOrder` smallint NOT NULL AUTO_INCREMENT,
  `ServicioId` smallint NULL DEFAULT NULL,
  `ClienteId` smallint NULL DEFAULT NULL,
  `TecnicoId` smallint NULL DEFAULT NULL,
  `Comentario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EstatusId` smallint NULL DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`IdWorkOrder`) USING BTREE,
  INDEX `ServicioId`(`ServicioId` ASC) USING BTREE,
  INDEX `ClienteId`(`ClienteId` ASC) USING BTREE,
  INDEX `TecnicoId`(`TecnicoId` ASC) USING BTREE,
  INDEX `EstatusId`(`EstatusId` ASC) USING BTREE,
  CONSTRAINT `tbl_workorders_ibfk_1` FOREIGN KEY (`ServicioId`) REFERENCES `tbl_servicio` (`IdServicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_workorders_ibfk_2` FOREIGN KEY (`ClienteId`) REFERENCES `tbl_cliente` (`IdCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_workorders_ibfk_3` FOREIGN KEY (`TecnicoId`) REFERENCES `tbl_tecnico` (`IdTecnico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_workorders_ibfk_4` FOREIGN KEY (`EstatusId`) REFERENCES `tbl_estatus` (`IdEstatus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_workorders
-- ----------------------------
INSERT INTO `tbl_workorders` VALUES (1, 48, 17, 45, 'nullam sit amet', 2, '2023-08-25 00:00:00', '2023-10-15 00:00:00');
INSERT INTO `tbl_workorders` VALUES (2, 25, 37, 23, 'nascetur ridiculus mus etiam', 3, '2024-03-17 00:00:00', '2023-09-24 00:00:00');
INSERT INTO `tbl_workorders` VALUES (3, 24, 17, 42, 'nibh in quis justo maecenas rhoncus aliquam lacus morbi', 1, '2024-02-04 00:00:00', '2023-08-11 00:00:00');
INSERT INTO `tbl_workorders` VALUES (4, 24, 22, 32, 'sit amet justo morbi ut odio cras', 2, '2023-10-19 00:00:00', '2024-05-27 00:00:00');
INSERT INTO `tbl_workorders` VALUES (5, 7, 29, 6, 'vestibulum sit amet cursus id turpis integer', 1, '2023-12-15 00:00:00', '2023-07-08 00:00:00');
INSERT INTO `tbl_workorders` VALUES (6, 38, 34, 38, 'donec vitae nisi nam ultrices libero non mattis', 1, '2023-06-09 00:00:00', '2024-02-29 00:00:00');
INSERT INTO `tbl_workorders` VALUES (7, 37, 26, 25, 'id turpis integer aliquet massa id', 2, '2023-08-03 00:00:00', '2023-11-29 00:00:00');
INSERT INTO `tbl_workorders` VALUES (8, 33, 32, 8, 'mauris viverra', 1, '2023-10-17 00:00:00', '2024-04-07 00:00:00');
INSERT INTO `tbl_workorders` VALUES (9, 13, 22, 47, 'velit donec diam', 1, '2023-08-03 00:00:00', '2023-07-27 00:00:00');
INSERT INTO `tbl_workorders` VALUES (10, 4, 25, 25, 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 3, '2023-09-08 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (11, 48, 6, 26, 'ante ipsum primis in faucibus orci luctus', 2, '2024-01-17 00:00:00', '2024-03-25 00:00:00');
INSERT INTO `tbl_workorders` VALUES (12, 12, 3, 34, 'sapien placerat ante', 1, '2023-08-21 00:00:00', '2024-05-26 00:00:00');
INSERT INTO `tbl_workorders` VALUES (13, 6, 19, 25, 'turpis nec', 2, '2023-11-30 00:00:00', '2024-07-05 00:00:00');
INSERT INTO `tbl_workorders` VALUES (14, 3, 49, 22, 'orci eget orci', 1, '2023-08-16 00:00:00', '2024-06-03 00:00:00');
INSERT INTO `tbl_workorders` VALUES (15, 28, 20, 13, 'vulputate ut ultrices vel augue', 2, '2024-06-12 00:00:00', '2023-09-17 00:00:00');
INSERT INTO `tbl_workorders` VALUES (16, 43, 41, 32, 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum', 1, '2023-09-19 00:00:00', '2024-07-10 00:00:00');
INSERT INTO `tbl_workorders` VALUES (17, 19, 46, 16, 'accumsan odio curabitur convallis duis consequat dui nec nisi', 3, '2023-11-02 00:00:00', '2023-09-10 00:00:00');
INSERT INTO `tbl_workorders` VALUES (18, 49, 32, 42, 'vestibulum sed magna at nunc', 3, '2023-08-12 00:00:00', '2024-01-26 00:00:00');
INSERT INTO `tbl_workorders` VALUES (19, 41, 40, 12, 'ante ipsum primis in', 1, '2023-06-21 00:00:00', '2024-03-14 00:00:00');
INSERT INTO `tbl_workorders` VALUES (20, 33, 37, 45, 'tempus vivamus in', 2, '2024-04-10 00:00:00', '2023-09-20 00:00:00');
INSERT INTO `tbl_workorders` VALUES (21, 38, 15, 41, 'odio porttitor id consequat', 3, '2023-08-25 00:00:00', '2023-11-29 00:00:00');
INSERT INTO `tbl_workorders` VALUES (22, 1, 26, 11, 'duis ac nibh fusce lacus purus aliquet at feugiat non', 2, '2023-06-08 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (23, 4, 9, 41, 'sit amet diam', 1, '2023-12-24 00:00:00', '2023-08-15 00:00:00');
INSERT INTO `tbl_workorders` VALUES (24, 10, 38, 2, 'integer non velit donec diam neque vestibulum eget', 3, '2023-06-07 00:00:00', '2023-11-08 00:00:00');
INSERT INTO `tbl_workorders` VALUES (25, 41, 14, 1, 'ante nulla justo aliquam quis turpis', 3, '2024-04-18 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (26, 41, 34, 7, 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 1, '2024-03-18 00:00:00', '2024-01-19 00:00:00');
INSERT INTO `tbl_workorders` VALUES (27, 41, 41, 38, 'dolor sit', 3, '2024-06-27 00:00:00', '2024-07-26 00:00:00');
INSERT INTO `tbl_workorders` VALUES (28, 49, 37, 46, 'mauris viverra diam vitae quam', 3, '2023-10-06 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (29, 15, 50, 38, 'eros elementum pellentesque quisque porta', 3, '2024-03-02 00:00:00', '2023-09-07 00:00:00');
INSERT INTO `tbl_workorders` VALUES (30, 1, 15, 30, 'magnis dis parturient montes nascetur ridiculus', 1, '2024-04-17 00:00:00', '2023-09-14 00:00:00');
INSERT INTO `tbl_workorders` VALUES (31, 49, 3, 2, 'cubilia curae donec pharetra magna vestibulum aliquet ultrices', 1, '2024-04-20 00:00:00', '2024-03-18 00:00:00');
INSERT INTO `tbl_workorders` VALUES (32, 42, 17, 35, 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', 3, '2023-07-18 00:00:00', '2024-04-11 00:00:00');
INSERT INTO `tbl_workorders` VALUES (33, 13, 25, 36, 'in felis eu sapien cursus vestibulum proin eu mi nulla', 1, '2023-09-18 00:00:00', '2024-04-20 00:00:00');
INSERT INTO `tbl_workorders` VALUES (34, 35, 20, 14, 'id turpis integer', 1, '2024-05-04 00:00:00', '2024-06-16 00:00:00');
INSERT INTO `tbl_workorders` VALUES (35, 12, 28, 49, 'nulla dapibus dolor vel', 3, '2023-06-04 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (36, 38, 41, 1, 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 2, '2024-06-19 00:00:00', '2023-08-23 00:00:00');
INSERT INTO `tbl_workorders` VALUES (37, 29, 41, 6, 'sapien sapien non mi', 2, '2024-03-14 00:00:00', '2023-09-20 00:00:00');
INSERT INTO `tbl_workorders` VALUES (38, 23, 50, 37, 'et commodo vulputate justo in blandit ultrices enim', 2, '2023-07-08 00:00:00', '2023-11-17 00:00:00');
INSERT INTO `tbl_workorders` VALUES (39, 12, 5, 40, 'vestibulum eget vulputate ut ultrices vel augue vestibulum', 3, '2023-11-14 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (40, 31, 21, 5, 'sed nisl nunc rhoncus dui vel sem sed sagittis', 1, '2024-02-08 00:00:00', '2024-06-06 00:00:00');
INSERT INTO `tbl_workorders` VALUES (41, 34, 49, 36, 'cras non velit nec nisi vulputate nonummy maecenas tincidunt', 1, '2024-06-16 00:00:00', '2024-04-20 00:00:00');
INSERT INTO `tbl_workorders` VALUES (42, 18, 47, 40, 'nec nisi volutpat eleifend donec', 2, '2024-04-08 00:00:00', '2024-01-03 00:00:00');
INSERT INTO `tbl_workorders` VALUES (43, 26, 41, 9, 'massa quis augue luctus tincidunt nulla mollis', 3, '2024-05-12 00:00:00', '2023-11-03 00:00:00');
INSERT INTO `tbl_workorders` VALUES (44, 40, 17, 24, 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', 1, '2023-06-28 00:00:00', '2023-11-17 00:00:00');
INSERT INTO `tbl_workorders` VALUES (45, 28, 23, 4, 'suspendisse ornare consequat lectus in est risus auctor sed tristique', 2, '2023-10-03 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (46, 28, 26, 28, 'eget orci', 2, '2023-11-16 00:00:00', '2024-02-01 00:00:00');
INSERT INTO `tbl_workorders` VALUES (47, 29, 36, 44, 'nulla nisl nunc', 2, '2024-02-23 00:00:00', '2024-01-13 00:00:00');
INSERT INTO `tbl_workorders` VALUES (48, 3, 10, 37, 'felis donec semper sapien a libero nam', 2, '2024-04-06 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (49, 2, 40, 36, 'turpis enim blandit mi in porttitor pede justo eu', 2, '2024-06-28 00:00:00', NULL);
INSERT INTO `tbl_workorders` VALUES (50, 12, 49, 8, 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', 2, '2024-06-11 00:00:00', NULL);

SET FOREIGN_KEY_CHECKS = 1;
