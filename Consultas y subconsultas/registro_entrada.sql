--Crear un tabla registros_entrada 
create table registros_entrada (
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

---------------------RETO 23--------------------------------------
drop table registros_entrada
drop table empleado
-------------Mostrar la tabla de registro_entrada-----------------
select * from registros_entrada
-------------Mostrar la tabla de empleado-------------------------
select * from empleado
---------------------------------
create table empleado(
	codigo_empleado int not null,
	nombre varchar(25),
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key (codigo_empleado)
)
---------------------------------
alter table registros_entrada
add constraint registros_entrada_empleado_pk
foreign key (codigo_empleado)
references empleado(codigo_empleado)
---------------------------------
--INSERTS--
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)values
(1,1755841002,'08/08/2023','08:30',2201),
(2,1755841003,'09/08/2023','10:30',2202),
(3,1755841004,'10/09/2023','12:30',2203),
(4,1755841005,'18/10/2023','09:30',2204),
(5,1755841006,'28/11/2023','13:00',2205)
---------------------------------------------
insert into empleado(codigo_empleado,nombre,fecha,hora)values
(2201,'Gabriela','08/08/2023','08:10'),
(2202,'Gabriela','08/08/2023','10:10'),
(2203,'Karina','10/09/2023','12:10'),
(2204,'Gabriela','08/08/2023','13:00'),
(2205,'Kevin','28/11/2023','10:20')
----------------------FIN DEL RETO 23----------------------------
----------------------RETO 24------------------------------------
----------------------Consultar----------------------------------
select re.cedula_empleado, re.fecha, em.nombre from 
registros_entrada re, empleado em
where re.codigo_registro=em.codigo_empleado 
and re.fecha between '01/08/2023' and '31/08/2023'
or cedula_empleado like '17%'
and em.hora between '08:00' and '12:00'
or em.fecha between '06/10/2023' and '20/10/2023'
or cedula_empleado like '%08%' and em.hora between '09:00' and '13:00'
----------------------SubConsulta--------------------------------
select re.codigo_registro, em.nombre from 
registros_entrada re, empleado em
where re.codigo_empleado = '2201'


