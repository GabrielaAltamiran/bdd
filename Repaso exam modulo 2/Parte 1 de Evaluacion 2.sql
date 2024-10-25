----------------------------INICIO PARTE 1--------------------------
----------------------------------SETENCIAS DE CONDICION------------
-----------------------------------SERVIRAN PARA BORRAR LAS TABLAS SI ESTAN CREADAS-----------
drop table if exists historial_movimientos ;
drop table if exists productos;
drop table if exists categoria;
--*****************************************************************
create table productos(
	id int not null,
	nombre varchar not null,
	precio_venta money not null,
	precio_compra money not null,
	id_categoria int not null,
	constraint productos_pk primary key (id),
	constraint id_categoria_fk foreign key (id_categoria) references categoria(id)
	
)
--*****************************************************************
create table  categoria(
	id int not null,
	nombre varchar not null,
	constraint categoria_pk primary key (id)
)
--*****************************************************************
create table historial_movimientos (
	id int not null,
	id_producto int not null,
	cantidad int not null,
	fecha_movimineto timestamp not null,
	constraint historial_movimientos_pk primary key (id),
	constraint id_categoria_fk foreign key (id_producto) references productos(id)
)
--------------------SELECT DE LAS TABLAS----------------
select * from productos;
select * from categoria;
select * from historial_movimientos;
--*****************************************************************
---------------------------INSERTS CATEGORIAS-----------------
insert into categoria values(00001,'Bebidas'),
							(00002,'Snacks'),
							(00003,'Golosinas');
--delete  from categoria		
--*****************************************************************
--------------------------INSERT PRODUCTOS--------------------
--------------------------RELACION DE UNO A MUCHOS------------
insert into productos values(11110,'Coca Cola 300ml',0.60,0.40,00001),
							(11119,'Avena de Naranjilla',1.10,0.95,00001),
							(12982,'Doritos 500g',0.60,0.45,00002),
							(76234,'Chetos flamy Hot 500g',0.45,0.50,00002),
							(64092,'Gomitas de Sandia 300g',0.50,0.65,00003),
							(32491,'Chupetes bon bon',0.10,0.20,00003);
							
--delete  from productos
--*****************************************************************
----------------------------INSERTS DE HISTORIA_MOVIMIENTO-------------
--------------------------RELACION DE UNO A MUCHOS------------
insert into historial_movimientos values(23984,11110,87,'2023/12/12 12:08'),
										(23198,11119,208,'2024/08/29 06:19'),
										(20008,12982,12,'2024/10/22 21:09'),
										(23890,76234,5,'2024/05/28 16:56'),
										(29974,64092,987,'2024/07/07 20:43'),
										(20098,32491,76,'2024/02/29 17:56');
--delete  from historial_movimientos
----------------------------FINAL PARTE 1--------------------------

