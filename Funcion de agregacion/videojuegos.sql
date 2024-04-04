--Creacion de funcion videojuegos
drop table videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
	
)
--*******************Reto 23****************************
----------------------Borrar la informacion de la tabla vedeojuegos--------------------------
drop table plataforma
 -----------------CREAR LA TABLA PLATAFORRMA------------
 create table plataforma (
 	id_plataforma INT,
	 nombre_plataforma varchar(50) not null,
	 codigo_Videojuegos Int,
	 constraint id_plataforma_pk primary key (id_plataforma)
 )
 -------------------------Ver la tabla de videojuegos------------------------------
 select * from videojuegos 
 ------------------------Ver la tabla de plataform-------------------------------
 ----------------------Alterar la tabla-----------------
 alter table plataforma
 add constraint videojuegos_plataforma_pk
 foreign key (codigo_Videojuegos)
 references videojuegos(codigo)
 --------------------------Insert--------------------
 INSERT INTO videojuegos (codigo, nombre, descripcion,valoracion) VALUES
 (1,'Colorfy','Difruta tu tiempo libre',12),
 (2,'Good of war','Conoce la guerra entre Kratos y los dioses',100),
 (3,'Free Fire','Sobrevive con tus amigo en el campo de batalla',95),
 (4,'Dragon Ball Legens','Vive una experiencia diferente de tu infancia',62),
 (5,'Tom','Cria un gato virtual',98)
----------------------------------------------------
INSERT INTO plataforma (id_plataforma, nombre_plataforma,codigo_Videojuegos) VALUES
(125,'Play Store',1),
(126,'Play Store',2),
(127,'Play Store',3),
(128,'Play Store',4),
(129,'Play Store',5)
--*****************************************Fin de reto 23****************************
------------------------------------------Reto 24------------------------
------------------------------------------Consulta ---------------
select video.nombre,video.descripcion,video.valoracion,plata.id_plataforma,
plata.nombre_plataforma,plata.codigo_Videojuegos from 
----------------
videojuegos video, plataforma plata
----------------
where plata.codigo_Videojuegos = video.codigo 
and descripcion like '%guerra%' and valoracion >7
or nombre like 'C%' and valoracion >8 
or nombre like 'D%'
 ---------------------------------------Subconsulta ---------------
select plata.id_plataforma, plata.nombre_plataforma,plata.codigo_Videojuegos from 
videojuegos video, plataforma plata
where plata.codigo_Videojuegos = video.codigo  and codigo = '2'
------------------------------------------fin Reto 24------------------------
------------------------------------------Reto 25------------------------
select codigo_Videojuegos,COUNT(nombre_plataforma) as total_plataformas from plataforma
group by codigo_Videojuegos
------------------------------------------------------------------------
select ROUND(AVG(valoracion),2) as valoracion_promedio from videojuegos
------------------------------------------Fin reto 25-------------------
