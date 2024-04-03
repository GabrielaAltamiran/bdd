select * from cuentas
--Delete from, elimina informacion
drop table cuentas
drop table usuario
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

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito) values
('17558','Gabriela','Altamirano','Ahorros',999),
('17559','Kevin','Teran','Ahorros',120),
('17560','Daniela','Calle','Ahorros',20),
('17561','Maria Jose','Guzman','Ahorros',1000),
('17545','Mario','Ruiz','Ahorros',10)
-----------------------------------------------------
insert into cuentas(numero_cuenta,cedula_propetario,fecha_creacion,saldo) values
(22015,17558,'05/08/2022','100'),
(49852,17558,'15/09/2022','1000'),
(10025,17558,'09/11/2022','985'),
(95201,17558,'25/12/2022','807.20'),
(27384,17558,'10/02/2023','996')

--***************************Terminacion del reto 23*************************************
--***************************Reto 24*****************************************************
----------------------------Consultar---------------------------------------------------
select cu.numero_cuenta, usu.nombre from 
cuentas cu, usuario usu
where  saldo between '100' and '1000' 
----------------------------Subconsultar------------------------------------------------
select * from 
cuentas cu, usuario usu
where fecha_creacion between '21/09/2022' and '21/09/2023'
--***************************Terminacion del reto 24*************************************




