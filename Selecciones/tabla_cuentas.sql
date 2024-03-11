--Creacion de tabala de cuentas 
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propetario char(5)not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
	
)
---------------RETO 2---------------
--#1
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(22015,20014,'20/12/2001','12.20')
--#2
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(49852,30154,'23/12/2000','1200.20')
--#3
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(10025,00047,'20/09/2020','3000.000')
--#4
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(95201,22843,'28/12/2011','807.20')
--#5
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(27384,32948,'27/07/2006','825.20')
--#6
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(44524,43867,'25/02/2014','650.20')
--#7
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(95487,24963,'02/11/2001','5.20')
--#8
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(78954,54698,'20/05/2011','910.20')
--#9
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(12545,87544,'05/12/2003','800.20')
--#10
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(25015,20074,'21/12/2001','102.20')
--#11
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(20321,12102,'10/01/2024','125.25')
--#12
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(20329,17102,'10/01/2024','40.25')
------------------------RETO 4----------------------
--#1 Crear un selct que traiga el numero de cuenta y el saldo de todas las cuentas
select numero_cuenta,cedula_propetario, * from cuentas
--#2 Crear un select que traiga los registros entre el dia de hoy hasta 2 meses antes
select * from cuentas where fecha_creacion between '10/01/2024' and '10/03/2024'
select  numero_cuenta,saldo, * from cuentas  where  fecha_creacion between '1/1/2024' and '1/3/2024'
------------------------RETO 5----------------------
--Actualizar el saldo a 10 de las cuentas cuya cedula:propietario empiece por 17
select * from cuentas where  cedula_propetario like '17%'
update cuentas set saldo = 10
where cedula_propetario like '17%' 


