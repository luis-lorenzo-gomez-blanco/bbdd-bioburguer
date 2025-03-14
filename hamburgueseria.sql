DROP TABLE IF EXISTS hamburgueseria;
CREATE TABLE IF NOT EXISTS hamburgueseria (
  id VARCHAR (10) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR (150) NOT NULL,
  pais_origen VARCHAR (100) DEFAULT NULL,
  CONSTRAINT pk_hamburgueseria PRIMARY KEY (id)
);

INSERT INTO hamburgueseria ('id', 'nombre', 'pais_origen') VALUES 
  (1, 'Burguer King', 'EEUU'),
  (2, 'McDonald\'s', 'EEUU'),
  (3, 'TGB', 'España'),
  (4, 'Goiko Grill', 'España'),
  (5, 'Carl\'s Jr.', 'EEUU');
