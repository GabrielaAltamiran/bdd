 --Crear script 1 
create table productos(
	codigo int not null,
	nombre varchar(50)not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
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
(5, 'Mango', 'Mangos tropicales', 1.20, 75)

-- Inserción de datos en la tabla ventas
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES
(1, 1, '2024-02-20', 10),
(2, 2, '2024-02-21', 15),
(3, 3, '2024-02-22', 20),
(4, 4, '2024-02-23', 5),
(5, 5, '2024-02-24', 8)
--*********************Reto 24*****************
------------------------Consultar--------------
select produ.nombre, produ.stock, ven.cantidad from 
productos produ, ventas ven
where produ.codigo = ven.codigo_producto and nombre like 'M%' 
or descripcion = null
-----------------------Subconsulta------------
select produ.nombre, produ.stock from 
productos produ, ventas ven
where produ.codigo = ven.codigo_producto and cantidad = '5'





















