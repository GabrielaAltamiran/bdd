--Crear un tabla registros_entrada 
create table registros_entrada (
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
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