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
values ('1714616123','Santiago','Mosquera',2,1.67,3244.7,'21/09/2024','12:32','C')
----------------------------------------------------
delete from personas where cedula='1755841002'
select * from estado_civil 
select * from personas
drop table personas
----------------------------------------------------

insert into personas(cedula, nombre, apellido, codigo_estado_civil)
values ('1755841002','Gabriela','Altamirano','C');
insert into personas(cedula, nombre, apellido, codigo_estado_civil)
values ('023548716','Luis','Mora','S');
insert into personas(cedula, nombre, apellido, codigo_estado_civil)
values ('074659846','Martin','Torres','U');
insert into personas(cedula, nombre, apellido, codigo_estado_civil)
values ('036547978','Carla','Pico','S');

