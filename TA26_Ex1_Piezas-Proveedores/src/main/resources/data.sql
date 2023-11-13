DROP TABLE IF EXISTS piezas;
DROP table IF EXISTS proveedores;
DROP TABLE IF EXISTS suministra;


CREATE TABLE piezas (
  codigo int NOT NULL AUTO_INCREMENT,
  nombre varchar(250) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE proveedores (
  id varchar(4) NOT NULL,
  nombre varchar(250) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE suministra (
id int NOT NULL AUTO_INCREMENT,
precio int NOT NULL,
codigo_pieza int NOT NULL,
id_proveedor varchar(4) NOT NULL,
FOREIGN KEY (codigo_pieza) REFERENCES piezas (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_proveedor) REFERENCES proveedores (id) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (id)
);

insert into piezas (nombre)values('Tacos');
insert into piezas (nombre)values('Tornillos');
insert into piezas (nombre)values('Tuercas');
insert into piezas (nombre)values('Muelles');
insert into piezas (nombre)values('Bisagras');

insert into proveedores (id, nombre) values ('jhfk','Piezas.sl');
insert into proveedores (id, nombre) values ('asdf','A trozos');
insert into proveedores (id, nombre) values ('qwer','Piezas sin fronteras');
insert into proveedores (id, nombre) values ('zxcv','Tornillos anonimos');
insert into proveedores (id, nombre) values ('mnbv','Tuercas para puertas');

insert into suministra (precio, codigo_pieza, id_proveedor)values(11,1,'jhfk');
insert into suministra (precio, codigo_pieza, id_proveedor)values(2,2,'asdf');
insert into suministra (precio, codigo_pieza, id_proveedor)values(13,3,'qwer');
insert into suministra (precio, codigo_pieza, id_proveedor)values(6,4,'zxcv');
insert into suministra (precio, codigo_pieza, id_proveedor)values(9,5,'mnbv');