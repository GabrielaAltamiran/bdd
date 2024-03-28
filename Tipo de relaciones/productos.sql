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
--#1.6
insert into productos(codigo, nombre,precio,stock,descripcion)
values(102558,'Queso','700',205,'Un dia mas un dia menos pero ninguno no vivido y gosado')
--#1.7
insert into productos(codigo, nombre,precio,stock,descripcion)
values(102568,'Quinua','700',205,'Un dia mas un dia menos pero ninguno no vivido y gosado')
--#1.8
insert into productos(codigo, nombre,precio,stock,descripcion)
values(102567,'Quinua','700',205,'')

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
--#2.4
insert into productos(codigo, nombre,precio,stock)
values(541586,'Nelly','2',30)
--#2.3
insert into productos(codigo, nombre,precio,stock)
values(543357,'Diego','3',30)
--#2.4
insert into productos(codigo, nombre,precio,stock)
values(543358,'Diego','3',0)
----------------------------------RETO 3----------------------
--3.1 Crear select que traiga los productos que empiza con Q
select * from productos where nombre like 'Q%'
--3.2 crear un select que traiga los productos con una descripcion de null
select * from productos where descripcion is null
--3.3 crear un select que traiga todos los productos con un precio entre 2 y 3
select * from productos where precio between '2' and '3' 
------------------------------------RETO 6---------------------------
delete from productos 
where descripcion is null
--Lo que se quiere borrar  nombe = '1755841002'

select * from productos 
----------------------ReTO 7---------------------------
select * from productos 
where stock = 10 and precio < money (10)

select nombre,stock, * from productos 
where descripcion like '%m$' or descripcion =' '

select nombre, * from productos
where descripcion is null or stock = 0 
--**********************Reto 23***********************
drop table ventas
create table ventas(
	id_venta Int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (id_venta)
)
----------------------------------------------------
select * from ventas
----------------------------------------------------
alter table ventas
add constraint productos_ventas_pk
foreign key (codigo_producto)
references productos(codigo)

-- Inserción de datos en la tabla productos
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES
(1, 'Manzana', 'Manzanas rojas deliciosas', 0.50, 100),
(2, 'Banana', 'Bananas frescas', 0.30, 200),
(3, 'Naranja', 'Naranjas jugosas', 0.60, 150),
(4, 'Piña', 'Piñas dulces', 1.00, 50),
(5, 'Mango', 'Mangos tropicales', 1.20, 75);

-- Inserción de datos en la tabla ventas
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES
(1, 1, '2024-02-20', 10),
(2, 2, '2024-02-21', 15),
(3, 3, '2024-02-22', 20),
(4, 4, '2024-02-23', 5),
(5, 5, '2024-02-24', 8);























