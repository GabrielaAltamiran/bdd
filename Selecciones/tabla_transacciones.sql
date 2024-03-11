--Crear una tabla llamada transacciones
create table transacciones (
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hota time not null,
	constraint transacciones_pk primary key(codigo)
	
)
-----------------RETO 2---------------------------
--#1
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20145,'50213',200.3,'C','25/08/2004','00:12')
--#2
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20146,'50214',201.3,'D','26/08/2004','23:12')
--#3
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20147,'50215',202.3,'C','27/08/2004','22:12')
--#4
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20148,'50216',203.3,'C','28/08/2004','21:12')
--#5
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20149,'50215',204.3,'C','29/08/2004','20:12')
--#6
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20150,'50216',205.3,'D','30/08/2004','19:12')
--#7
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20151,'50217',206.3,'D','05/08/2004','18:12')
--#8
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20152,'50218',207.3,'C','06/08/2004','17:12')
--#9
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20153,'50219',208.3,'D','15/08/2004','12:12')
--#10
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20154,'50220',209.3,'D','10/08/2004','20:12')
--#11
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (201467,'50220',209.3,'D','10/09/2004','20:12')
-----------------RETO 4---------------------------
--Selecionar todas las transaciones realizadas con un tipo D
select * from transacciones where tipo like 'D'
--Seleccionar las transacciones con montos entre 200 y 2000
select * from transacciones where monto between '200' and '2000'
--Seleccionar el codigo, monto,tipo y g¿fecha de las transacciones que tengas una fecha difernte a null
select codigo,monto,tipo,fecha, * from transacciones where fecha != null
-----------------RETO 5---------------------------
select * from transacciones
update transacciones set monto > 100 and monto <500, fecha = '01/09/2004' and '31/09/2004',hota = '14:00' and '20:00'
where tipo 'T'
