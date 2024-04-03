--Crear un tabla llamada estudiantes 
create table estudiantes(
	cedula char(10), 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	codigo_profesor int,
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
--#9
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0351794865','Geno','Mendoza','genomendoza45@gmail.com','03/07/2004')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0351732865','Lana','Del rey','lanadelrey@gmail.com','03/07/2004')
----------------------------------RETO 3-----------------------------
--Crear un select que traiga el nombre y la cedula de los estudiantes
select nombre,cedula, * from estudiantes
--Crear un select que traiga los nombres de todos los estudiantes cuya cedula empience con 17
select nombre, * from estudiantes where cedula like '17%'
--Crear un select que traiga los nombres completos de todos los estudaintes cuyo nombre empiece con A
select nombre, * from estudiantes where nombre like 'A%'
------------------RETO 7-------------------
select nombre,apellido, * from estudiantes
where nombre like 'M%' or apellido like '%Z'

select nombre, * from estudiantes
where cedula  like '%32%' and cedula like '18%'

select nombre, apellido, * from estudiantes
where cedula like '%06' or cedula like '17%'
---***********************RETO 23*******************************
----------Eliminar informacion de la tabla estudiantes
delete from estudiantes
drop table profesores
------------------------------
select * from estudiantes
select * from profesores

---------------	Crear tabla de profesores----------------------
create table profesores(
	codigo int,
	nombre varchar(50),
	constraint profesores_pk primary key (codigo)
)

-------------------------Alterar la tabla profesores-------------------------------
alter table estudiantes
add constraint fk_estudiates_profesores
foreign key (codigo_profesor)
references profesores(codigo)
----------------------------------------------------------------------
-- Insertar datos en la tabla Profesores
INSERT INTO Profesores (codigo, nombre) VALUES
(1, 'Profesor García'),
(2, 'Profesora Martínez'),
(3, 'Profesor Francisco'),
(4, 'Profesora Pérez'),
(5, 'Profesor González'),
(6, 'Profesor Teran'),
(7,'Profeso Fabricio')

--Insertar datos en la tabla Estudiantes
insert into Estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) values
('1234567890', 'Juan', 'Nieto', 'juan.lopez@email.com', '2000-01-01', 1),
('2345678901', 'María', 'Gómez', 'maria.gomez@email.com', '2000-02-02', 2),
('3456789012', 'Carlos', 'Morales', 'carlos.morales@email.com', '2000-03-03', 3),
('4567890123', 'Ana', 'Guerrero', 'ana.guerrero@email.com', '2000-04-04', 4),
('5678901234', 'Pedro', 'Castillo', 'pedro.castillo@email.com','2000-05-05',5),
('1755841002', 'Gaby', 'Altamirano', 'nietogabriela2@gmail.com', '2000-05-25',6),
('1755841012', 'Kevin', 'Teran', 'kevinTeran@gmail.com', '2000-05-28',7)
--*************************finalizado reto 23*************************
---------------------------Reto 24------------------------------------
---------------------------Consulta-----------------------------------
select pro.codigo, estu.nombre,estu.apellido from 
estudiantes estu,profesores pro
where apellido like '%n'
---------------------------Subconsulta--------------------------------
select estu.nombre,estu.apellido,estu.email,estu.fecha_nacimiento,estu.codigo_profesor from 
estudiantes estu,profesores pro
where estu.codigo_profesor = pro.codigo
and pro.nombre = 'Profesor Francisco'
--------------------------- Finalizado reto 24------------------------