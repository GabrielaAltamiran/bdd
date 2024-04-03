select * from personas

delete from personas
--Alter table, sirve para modificar la tabla
alter table personas
--Agrega una columna
add column estado_civil_codigo char(1) not null
--*********************************************
create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20)not null,
	--El primary key sirve para que una columna sea obligatoria
	constraint estado_civil_pk primary key(codigo)
)
--*********************************************
alter table personas 
add constraint personas_estado_civil_fk
foreign key(estado_civil_codigo)
references estado_civil(codigo)
--**************************************
insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('1755841002','Gabriela','Altamirano','s')
--**************************************
insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('1755841013','Wendy','Anzules','s')

select * from personas


--*************************************
select * from estado_civil
--UNION LIBRE
insert into estado_civil(codigo,descripcion)
values('u','UNION LIBRE');	
--CASADO
insert into estado_civil(codigo,descripcion)
values('c','CASADO');
--SOLTERO
insert into estado_civil(codigo,descripcion)
values('s','SOLTERO');
---------------------------------

