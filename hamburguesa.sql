DROP TABLE IF EXISTS hamburguesa;
CREATE TABLE IF NOT EXISTS hamburguesa (
  id INT (3) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR (50) NOT NULL,
  valor_calorico DECIMAL(6,2) DEFAULT NULL,
  precio DECIMAL (4,2) DEFAULT NULL,
  id_hamburgueseria int(10) NOT NULL,
  CONSTRAINT pk_hamburguesa PRIMARY KEY (`id`),
  KEY `fk_ham_id_ham_hamburgueseria` (`id_hamburgueseria`),
  CONSTRAINT `fk_ham_id_ham_hamburgueseria` FOREIGN KEY (`id_hamburgueseria`) REFERENCES `hamburgueseria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO hamburguesa (id, nombre, valor_calorico, precio, id_hamburgueseria) VALUES
	(1, 'Whopper', 255, 5.95, 1),
	(2, 'Whopper Vegetal', 255, 5.95, 1),
	(3, 'Whopper Jr.', 165, 3.95, 1),
	(4, 'Big King', 225, 5.95, 1),
	(5, 'Crispy Chicken', 230, 5.95, 1),
	(6, 'Bic Mac', 503, 4.75, 2),
	(7, 'Cuarto de Libra', 521, 4.75, 2),
	(8, 'McPollo', 427, 4.75, 2),
	(9, 'CBO', 619, 5.7, 2),
	(10, 'McFish', 331, 3.95, 2),
	(11, 'TGB Burguer', 762, 8.9, 3),
	(12, 'BBQ Burguer', 901, 8.9, 3),
	(13, 'Pollo Crunchy', 603, 8.9, 3),
	(14, '50 Shades', 592, 9.8, 3),
	(15, 'BLT Burguer', 635, 9.8, 3),
	(16, 'Smash', 215, 15.4, 4),
	(17, 'Kevin Costner', 415, 17.4, 4),
	(18, 'M-30', 240, 12.4, 4),
	(19, 'Yankee', 375, 17.9, 4),
	(20, 'Edami', 285, 14.4, 4),
	(21, 'Famous Star', 265, 8.95, 5),
	(22, 'Super Star', 265, 8.95, 5),
	(23, 'The Big Carl', 205, 8.95, 5),
	(24, 'Moving Mountains Famous Stars', 315, 10.95, 5),
	(25, 'Bacon & Cheese Crispy Chicken', 310, 10.45, 5);
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
