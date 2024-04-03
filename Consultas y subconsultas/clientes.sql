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
--******************Insert cliente***********
insert into clientes(cedula_cliente,nombre,apellido)
values('1755841003','Gabriela','Altamirano')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('1745124589','Daniela','Calle')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('1745124587','Monica','Salazar')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('1745124588','Kevin','Teran')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('1745128790','Josue','Delgado')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('1731024975','Gisel','Pailla')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('1234689710','Wilson','Reyes')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('0215478364','Josue','Rojos')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('02154789642','Alexandra','Beltran')
---------------------------------------------
insert into clientes(cedula_cliente,nombre,apellido)
values('2015478963','Sophia','Davila')
--*******************Insert compras**********
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1,'1755841003','21/03/2024',30)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(2,'1745124587','22/03/2024',20)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(3,'1745124589','20/05/2022',100)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(4,'1745124588','28/12/2023',500)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(5,'1745128790','20/05/2020',10)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(6,'1731024975','03/08/2019',120)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(7,'1234689710','02/05/2021',29)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(8,'0215478364','25/12/2023',1000)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(9,'02154789642','20/08/2022',25)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(10,'2015478963','05/11/2003',80)
---------------------------------------------
insert into compras(id_compra,cedula,fecha_compra,monto)
values(11,'0215478364','25/12/2007',2000)
--*********************Terminado reto 23******************
----------------------------------------------------------
--*********************Reto 24******************
------------------Consulta--------------------
 select cli.nombre,cli.apellido from 
 clientes cli, compras com
 where cli.cedula_cliente = com.cedula
------------------Subconsulta--------------------
 select com.cedula,cli.nombre,cli.apellido from 
 clientes cli, compras com
 where cli.cedula_cliente = com.cedula
 and nombre = 'Monica'
