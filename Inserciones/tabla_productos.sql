--Crear script 1 
create table productos(
	codigo int not null,
	nombre varchar(50)not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
--------------------------Reto 2--------------------------

---------------Con todos los campos-----------------------

--#1.1
insert into productos(codigo, nombre,precio,stock,descripcion)
values(200655,'Gaby','300',25,'La vida es demasiado buena para llorar por tu ex')
--#1.2
insert into productos(codigo, nombre,precio,stock,descripcion)
values(200023,'Wendy','350',200,'La vida es hermosa cuando la compartes con persona espectaculares')
--#1.3
insert into productos(codigo, nombre,precio,stock,descripcion)
values(200178,'Kevin','125',505,'Amar en esta epoca solo es para valientes')
--#1.4
insert into productos(codigo, nombre,precio,stock,descripcion)
values(200458,'Gisel','50',485,'Llorare por mi madre cuando muera, pero no por ti')
--#1.5
insert into productos(codigo, nombre,precio,stock,descripcion)
values(102548,'Josue','700',205,'Un dia mas un dia menos pero ninguno no vivido y gosado')

---------------------Con los campos obligatorios---------------------------
--#2.1
insert into productos(codigo, nombre,precio,stock)
values(200234,'Gaby','370',75)
--#2.2
insert into productos(codigo, nombre,precio,stock)
values(541236,'Kevin','52',80)
--#2.3
insert into productos(codigo, nombre,precio,stock)
values(541736,'Wendy','125',30)
