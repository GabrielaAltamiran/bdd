create table productos(
	codigo int not null,
	nombre varchar(50),
	stock int not null,
	constraint productos_pk primary key (codigo)
)
create table proveedores(
	codigo int not null,
	nombre varchar(50),
	telefono char(10) not null,
	constraint proveedores_pk primary key (codigo)
)

create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	pp_precio money not null,
	constraint producto_fk foreign key(pp_codigo_producto) references productos(codigo),
	constraint proveedores_fk foreign key(pp_codigo_proveedor) references proveedores(codigo),
	--clave compuesta--
	constraint productos_por_proveedor_pk primary key (pp_codigo_producto,pp_codigo_proveedor ) --Primary key sera la clave compuesta las dos columnas de codigo dentro del parentesis--
)
------------Insert tabla productos-------
insert into productos(codigo,nombre,stock)
values(0001,'Papas',100);
insert into productos(codigo,nombre,stock)
values(0002,'Dorito',900);
insert into productos(codigo,nombre,stock)
values(0003,'Chifles',50);
insert into productos(codigo,nombre,stock)
values(0004,'Chetos',345);

select * from productos
------------------------------------------
-----------Insert tabla proveedores-------
insert into proveedores(codigo, nombre, telefono)
values(1111,'Santa Maria', 0975432172);
insert into proveedores(codigo, nombre, telefono)
values(1112,'Nestle', 0975310923);

select * from proveedores
------------------------------------------
-----------Insert tabla productos_por_proveedor-------
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor,pp_precio )
values(0001, 1111,0.60);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor,pp_precio )
values(0001, 1112,0.65);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor,pp_precio )
values(0002, 1112,0.80);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor,pp_precio )
values(0003, 1112,0.23);
insert into productos_por_proveedor(pp_codigo_producto, pp_codigo_proveedor,pp_precio )
values(0004, 1111,0.95);

Select * from productos_por_proveedor
----------------------------RELACIONES-----------------------
select prod.codigo, prod.nombre,prov.nombre,pp.pp_precio from productos prod, proveedores prov, productos_por_proveedor  pp
--colocar las condiciones
where pp.pp_codigo_producto = prod.codigo 
and pp.pp_codigo_proveedor = prov.codigo
and prod.codigo = 0001








