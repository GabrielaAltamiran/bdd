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
	constraint personas_pk primary key (cedula)
)
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,cantidad_ahorrada,fecha_nacimiento,hora_nacimiento)
values ('1714616123','Santiago','Mosquera')

delete from personas where cedula='1714616123'
select * from personas 

insert into personas(cedula,nombre,apellido,estatura)
values ('1755841002','Gabriela','Altamirano',1.45)

insert into personas(cedula,nombre,apellido,numero_hijos)
values ('1714616115','Santi','Davila',2)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1714612016','Jose','Anzules',1,1.45,'28/05/2006','22:12',1000.25)

select cedula,nombre,numero_hijos,estatura from personas
select * from personas