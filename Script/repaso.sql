select * from personas where nombre like '%a'
--where para mayor,menor e igual
--between para rangos
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('1548752624','Jefferson','Farfan','10/06/1995')

insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('1548752104','Jefferson','Farfan','11/06/1996')
--Para diferentes como javaScript != o para este lenguaje <>
select * from personas where hora_nacimiento is not null