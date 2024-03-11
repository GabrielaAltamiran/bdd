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
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hota)
values (20003,'50218',207.3,'C','06/08/2023','17:12')
------------------------Reto 6----------------------------
delete from transacciones
where hota between '14:00' and '18:00' and fecha between '1/8/2023' and '30/8/2023'
select * from transacciones
-----------------------Reto 7----------------------------
Select * from transacciones
where tipo = 'C' and numero_cuenta between '222001' and '22004'

Select * from transacciones
where tipo = 'D' and numero_cuenta between '222007' and '22010'

select * from transacciones
where ( numero_cuenta ='22002' or numero_cuenta='22004') and
codigo between '1' and '5'and 
fecha between '26/5/2023' and '29/5/2023'
