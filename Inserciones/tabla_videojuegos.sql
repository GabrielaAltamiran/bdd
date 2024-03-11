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
values(00006,'Alex','Soo quiero ser feliz, es mucho pedir',10)
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