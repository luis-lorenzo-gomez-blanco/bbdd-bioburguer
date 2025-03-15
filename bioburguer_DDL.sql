DROP DATABASE IF EXISTS bioburguer;
CREATE DATABASE IF NOT EXISTS bioburguer;
USE bioburguer;

DROP TABLE IF EXISTS hamburgueseria;
CREATE TABLE IF NOT EXISTS hamburgueseria (
  id INT(3),
  nombre VARCHAR(50) NOT NULL,
  pais_origen VARCHAR(50) DEFAULT NULL,
  CONSTRAINT pk_hamburgueseria PRIMARY KEY (id)
);

DROP TABLE IF EXISTS valoracion_hamburgueseria;
CREATE TABLE IF NOT EXISTS valoracion_hamburgueseria (
  posicion INT(3),
  valoracion DECIMAL(4,2) DEFAULT NULL,
  id_hamburgueseria INT(3) NOT NULL,
  CONSTRAINT pk_valoracion_hamburgueseria PRIMARY KEY (posicion),
  CONSTRAINT fk_val_hamburgueseria_idh_ham_id FOREIGN KEY (id_hamburgueseria)
    REFERENCES hamburgueseria (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DROP TABLE IF EXISTS hamburguesa;
CREATE TABLE IF NOT EXISTS hamburguesa (
  id INT(3),
  nombre VARCHAR(50) NOT NULL,
  valor_calorico INT(4) DEFAULT NULL,
  precio DECIMAL(4,2) DEFAULT NULL,
  id_hamburgueseria INT(3) NOT NULL,
  CONSTRAINT pk_hamburguesa PRIMARY KEY (id),
  CONSTRAINT fk_ham_idh_ham_id FOREIGN KEY (id_hamburgueseria)
    REFERENCES hamburgueseria (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DROP TABLE IF EXISTS valoracion_hamburguesa;
CREATE TABLE IF NOT EXISTS valoracion_hamburguesa (
  id int(5) AUTO_INCREMENT,
  nombre_cliente VARCHAR(50) NOT NULL,
  opinion VARCHAR(100) DEFAULT NULL,
  valoracion INT(2) DEFAULT NULL,
  fecha DATE DEFAULT NOW(),
  id_hamburguesa INT(3) NOT NULL,
  CONSTRAINT pk_valoracion_hamburguesa PRIMARY KEY (id),
  CONSTRAINT fk_val_hamburguesa_idh_ham_id FOREIGN KEY (id_hamburguesa)
    REFERENCES hamburguesa (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ingrediente;
CREATE TABLE IF NOT EXISTS ingrediente (
  id INT(3),
  nombre varchar(50) NOT NULL,
  valor_calorico INT(3) DEFAULT NULL,
  CONSTRAINT pk_ingrediente PRIMARY KEY (id)
);

DROP TABLE IF EXISTS hamburguesa_ingrediente;
CREATE TABLE IF NOT EXISTS hamburguesa_ingrediente (
  id_hamburguesa INT(3),
  id_ingrediente INT(3),
  cantidad int(1) NOT NULL,
  CONSTRAINT pk_haming PRIMARY KEY (id_hamburguesa,id_ingrediente),
  CONSTRAINT fk_haming_idh_ham_id FOREIGN KEY (id_hamburguesa)
    REFERENCES hamburguesa (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_haming_idI_ing_id FOREIGN KEY (id_ingrediente)
    REFERENCES ingrediente (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
