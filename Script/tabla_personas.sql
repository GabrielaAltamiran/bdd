--Crear tabla personas 
create table personas (
	cedula char(10)not null,
	nombre varchar(50)not null,
	apellido varchar(50)not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	codigo_estado_civil char(1) not null,
	constraint personas_pk primary key (cedula),
	constraint codigo_estado_civil_fk foreign key (codigo_estado_civil) references estado_civil(codigo)
)
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,cantidad_ahorrada,fecha_nacimiento,hora_nacimiento,codigo_estado_civil)
values ('1714616123','Santiago','Mosquera')
----------------------------------------------------
delete from personas where cedula='1231540912'
select * from estado_civil 
select * from personas
drop table personas
----------------------------------------------------


