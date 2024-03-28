--**************Mostrar tabla************
select * from clientes
--************Eliminar tabla*************
drop table clientes
--Crea la tabla clientes 
create table clientes(
	cedula_cliente char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula_cliente)
)
--****************Reto 23*********************
create table compras(
	id_compra INT,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2),
	constraint id_compra_pk primary key (id_compra)
)
----------------------------------------------
select * from compras
----------------------------------------------
alter table compras
add constraint clientes_compras_fk
foreign key (cedula)
references clientes(cedula_cliente)
--******************Inset---------------------
insert



