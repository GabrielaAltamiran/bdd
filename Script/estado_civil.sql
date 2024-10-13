create table estado_civil(
	codigo char (1),
	descripcion varchar(50),
	constraint estado_civil_pk primary key (codigo)
)
drop table estado_civil
INSERT INTO estado_civil (codigo, descripcion) VALUES ('U', 'Union Libre');
INSERT INTO estado_civil (codigo, descripcion) VALUES ('S', 'Soltero');
INSERT INTO estado_civil (codigo, descripcion) VALUES ('C', 'Casado');
