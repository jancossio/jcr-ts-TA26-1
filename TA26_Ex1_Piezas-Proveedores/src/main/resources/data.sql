DROP TABLE IF EXISTS piezas;
DROP table IF EXISTS proveedores;
DROP TABLE IF EXISTS suministra;


CREATE TABLE piezas (
  codigo int NOT NULL AUTO_INCREMENT,
  nombre varchar(250) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE proveedores (
  codigo varchar(4) NOT NULL,
  nombre varchar(250) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE suministra (
id int NOT NULL AUTO_INCREMENT,
codigo_pieza int NOT NULL,
id_proveedor varchar(4) NOT NULL,
PRIMARY KEY (id),
CONSTRAINT suministra_FK FOREIGN KEY (id) REFERENCES piezas (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT suministra_FK_1 FOREIGN KEY (id_proveedor) REFERENCES proveedores (codigo) ON DELETE CASCADE ON UPDATE CASCADE
);


insert into piezas (nombre)values('Tacos');
insert into piezas (nombre)values('Tornillos');
insert into piezas (nombre)values('Tuercas');
insert into piezas (nombre)values('Muelles');
insert into piezas (nombre)values('Bisagras');

insert into proveedores (codigo, nombre) values ('jhfk','Piezas.sl');
insert into proveedores (codigo, nombre) values ('asdf','A trozos');
insert into proveedores (codigo, nombre) values ('qwer','Piezas sin fronteras');
insert into proveedores (codigo, nombre) values ('zxcv','Tornillos anonimos');
insert into proveedores (codigo, nombre) values ('mnbv','Tuercas para puertas');

insert into suministra (id, codigo_pieza, id_proveedor)values(1,1,'jhfk');
insert into suministra (id, codigo_pieza, id_proveedor)values(2,2,'asdf');
insert into suministra (id, codigo_pieza, id_proveedor)values(3,3,'qwer');
insert into suministra (id, codigo_pieza, id_proveedor)values(4,4,'zxcv');
insert into suministra (id, codigo_pieza, id_proveedor)values(5,5,'mnbv');
