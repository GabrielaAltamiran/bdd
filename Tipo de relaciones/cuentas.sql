select * from cuentas
--Delete from, elimina informacion
delete from cuentas
delete from usuario

--Creacion de tabala de cuentas 
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propetario char(5)not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
	
)
--****************************Reto 23******************************


create table usuario(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint cedula_pk primary key (cedula)
)
select * from usuario

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propetario)
references usuario(cedula)

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17558','Gabriela','Altamirano','Ahorros',1200)



---------------RETO 2---------------
--#1
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(22015,17558,'05/08/2022','100')
--#2
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(49852,17558,'15/09/2022','1000')
--#3
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(10025,17558,'09/11/2022','985')
--#4
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(95201,17558,'25/12/2022','807.20')
--#5
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(27384,17558,'10/02/2023','996')
--#6
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(44524,17558,'17/03/2023','999')
--#7
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(95487,17558,'2/05/2023','1000')
--#8
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(78954,17558,'28/05/2023','1000')
--#9
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(12545,17558,'06/07/2023','250')
--#10
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(25015,17558,'17/07/2023','500')
--#11
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo)
values(20321,17558,'21/09/2023','125')
--***************************Terminacion del reto 23*************************************
------------------------RETO 3----------------------
--#1 Crear un selct que traiga el numero de cuenta y el saldo de todas las cuentas
select numero_cuenta,cedula_propetario, * from cuentas
--#2 Crear un select que traiga los registros entre el dia de hoy hasta 2 meses antes
select * from cuentas where fecha_creacion between '10/01/2024' and '10/03/2024'
select  numero_cuenta,saldo, * from cuentas  where  fecha_creacion between '1/1/2024' and '1/3/2024'




