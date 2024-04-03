--Crear un tabla registros_entrada 
create table registros_entrada (
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)
------------------------RETO 2------------------------
--#1
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2,2015489348,'20/08/2005','16:05')
--#2
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(3,2011549348,'22/08/2005','14:05')
--#3
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(4,1715489348,'18/08/2005','13:05')
--#4
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(5,2015489245,'25/10/2005','08:05')
--#5
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(6,2033389348,'12/08/2005','10:05')
--#6
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(7,3515489348,'20/09/2005','11:05')
--#7
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(8,1249289348,'20/12/2005','16:30')
--#8
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(9,1745489348,'20/01/2005','19:05')
--#9
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(10,1743289348,'22/08/2009','15:15')
--#10
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(11,1754961308,'29/07/2012','20:05')
-----------------------------RETO 3-------------------------------------
--Seleccionar todas las cedulas de empleado y fecha y hora de los registros de entrada
select cedula_empleado,fecha,hora, * from registros_entrada
--Selecionar los registros de entrada que esten entre 7:00 y 14:00
select hora, * from registros_entrada where  hora between '7:00' and '14:00'
--Selecionar los registros que tengan horas superioes a 8:00
select hora, * from registros_entrada where  hora > '8:00'
---------------------------------Reto 7-------------------------
select * from registros_entrada
where fecha between '1/09/2023' and '30/09/2023' or  cedula_empleado like '17%'

select *  from registros_entrada
where fecha between '1/08/2023' and '30/08/2023' or  hora between '08:00' and '12:00'

select *  from registros_entrada
where  fecha between '1/08/2023' and '30/08/2023' and cedula_empleado like '17%' and hora 
between '08:00' and '12:00' or fecha 
between '1/09/2023' and '30/09/2023' and cedula_empleado like '08%' and hora 
between '09:00' and '13:00'
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
(1,1755841002,'08/08/2023','08:30',2201)
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





