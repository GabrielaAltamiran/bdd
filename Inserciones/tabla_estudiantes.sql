--Crear un tabla llamada estudiantes 
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key(cedula)
)
---------------------RETO#2-----------------------------------------
--#1
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1755841002','Gaby','Altamirano','gabrielanieto289@gmail.com','28/05/2006')
--#2
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1755841022','Wendy','Tubay','tubaywen2008@gmail.com','08/03/2008')
--#3
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1755844502','Kevin','Teran','teranalfonso135@gmail.com','19/10/2005')
--#4
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0255841002','Gisel','Padilla','padillag201@gmail.com','18/03/2007')
--#5
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1754874310','Josue','Rojas','rojasjosue19@gmail.com','27/10/2006')
--#6
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1754874440','Daniela','Davila','davidani129@gmail.com','08/08/2016')
--#7
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1754830157','Dnna','Calle','calledanna35@gmail.com','21/01/1998')
--#8
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1751794860','Gensis','Mendoza','genomendoza45@gmail.com','03/07/2004')