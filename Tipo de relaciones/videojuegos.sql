--Creacion de funcion videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
	
)
---------------------------RETO 2------------------------------------------
---------------------------TODOS LOS COMPONENTES---------------------------
--#1
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(20157,'Gabriela','No me eligue pero tampoco me suelta',5)
--#2
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(20158,'Gabriel','No me eligue pero tampoco me suelta y por eso me alegue de esa persona',6)
--#3
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(12496,'Alexandra','Debo ser feliz aunque no este a su lado',7)
--#4
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(002044,'Alex','Solo quiero ser feliz, es mucho pedir',10)
--#5
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(20064,'Dani','Te amo aunque tu no lo hagas',15)
---------------------------RETO 2-------------------------------------------------------
---------------------------TODOS LOS COMPONENTES OBLIGATORIOS---------------------------
--#1
insert into videojuegos(codigo,nombre,valoracion)
values(00001,'Kevin',25)
--#2
insert into videojuegos(codigo,nombre,valoracion)
values(00002,'Josue',30)
--#3
insert into videojuegos(codigo,nombre,valoracion)
values(00003,'Gisel',40)
--#4
insert into videojuegos(codigo,nombre,valoracion)
values(00004,'Color match',40)

insert into videojuegos(codigo,nombre,valoracion)
values(00014,'Color match',2)
---------------------------RETO 3-------------------------------------------------------
--Selecionar todos los videojuegos con un nomre que empice con "C"
select * from videojuegos where  nombre like 'C%'
--Selecionar videojuegos con yna validacion entre 9 y 10
select * from videojuegos where valoracion between '9' and '10'
--Seleccionar videojuegos con una descripcion null
select * from videojuegos where descripcion is null
------------------------------Reto 6-------------------------------
delete  from videojuegos 
where valoracion < 7

select * from videojuegos
--------------------------Reto 7-----------------------------------
select * from videojuegos 
where nombre like '%c%' or valoracion = 7

select * from videojuegos 
where codigo between 3 and 7 or valoracion = 7

select * from videojuegos 
where valoracion > 7 and nombre like 'C%' or valoracion > 8 and nombre like 'D%' 
--*******************Reto 23****************************
----------------------Borrar la informacion de la tabla vedeojuegos--------------------------
delete from videojuegos
 -----------------CREAR LA TABLA PLATAFORRMA------------
 create table plataforma (
 	id_plataforma INT,
	 nombre_plataforma varchar(50) not null,
	 codigo_Videojuegos Int,
	 constraint id_plataforma_pk primary key (id_plataforma)
 )
 -------------------------Ver la tabla de videojuegos------------------------------
 select * from videojuegos 
 ------------------------Ver la tabla de plataform-------------------------------
 ----------------------Alterar la tabla-----------------
 alter table plataforma
 add constraint videojuegos_plataforma_pk
 foreign key (codigo_Videojuegos)
 references videojuegos(codigo)
 --------------------------Insert--------------------
 INSERT INTO videojuegos (codigo, nombre, descripcion,valoracion) VALUES
 (1,'Colorfy','Difruta tu tiempo libre',12),
 (2,'Good of war','Conoce la guerra entre Kratos y los dioses',100),
 (3,'Free Fire','Sobrevive con tus amigo en el campo de batalla',95),
 (4,'Dragon Ball Legens','Vive una experiencia diferente de tu infancia',62),
 (5,'Tom','Cria un gato virtual',98)
----------------------------------------------------
INSERT INTO plataforma (id_plataforma, nombre_plataforma,codigo_Videojuegos) VALUES
(125,'Play Store',1),
(126,'Play Store',2),
(127,'Play Store',3),
(128,'Play Store',4),
(129,'Play Store',5)
 --*****************************************Fin de reto 23****************************
 
 
 