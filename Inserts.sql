
	--Paises
INSERT INTO PAISES(id_pais,nombre_pais)
				 VALUES(1,'Argentina');
INSERT INTO PAISES(id_pais,nombre_pais)
				 VALUES(2,'Uruguay');
INSERT INTO PAISES(id_pais,nombre_pais)
				 VALUES(3,'Chile');

--Provincias 
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(1,'Cordoba',1);
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(2,'Buenos Aires',1);
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(3,'Mendoza',1);
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(4,'Montevideo',2);
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(5,'Canelones',2);
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(6,'Santiago',3);
INSERT INTO PROVINCIAS(id_provincia,nombre_provincia,id_pais)
				 VALUES(7,'Valparaiso',3);

--Localidades
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(1,'Rio Cuarto',1);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(2,'Capital',1);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(3,'Alta Gracia',1);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(4,'CABA',2)
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(5,'La Plata',2)
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(6,'Mendoza',3)
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(7,'San Rafael',3);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(8,'Montevideo',4);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(9,'Aguayuba',4);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(10,'Canelones',5);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(11,'Aguas Corrientes',5);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(12,'Santiago',6);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(13,'Maipu',6);
INSERT INTO LOCALIDADES(id_localidad,nombre_localidad,id_provincia)
					VALUES(14,'Valparaiso',7);
				
--Barrios
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(1,'Valparaiso',1);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(2,'25 de Mayo',1);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(3,'San Martin',2);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(4,'Belgrano',2);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(5,'Moreno',3);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(6,'Lanus',4);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(7,'La Boca',5);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(8,'Villa Cabrera',6);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(9,'Poeta Lugones',7);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(10,'General Paz',8);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(11,'Cerro',9);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(12,'Velez Sarsfield',10);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(13,'Centro',11);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(14,'Pueyrredon',12);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(15,'Barracas',13);
INSERT INTO BARRIOS(id_barrio,nombre_barrio,id_localidad)
					VALUES(16,'Almagro',14);

INSERT INTO SITUACIONES_HABITACIONALES
           ([id_situacion_habitacional]
           ,[situacion_habitacional])
     VALUES
           (1,'Propietario'),
		   (2,'Inquilino'),
		   (3,'Prestamo')

INSERT INTO SITUACIONES_LABORALES
           ([id_situacion_laboral]
           ,[situacion_laboral])
     VALUES
           (1,'Relacion de Dependencia'),
		   (2,'Autonomo'),
		   (3,'Desocupado'),
		   (4,'Estudiante')

INSERT INTO TIPOS_ESTADO_ACADEMICO
           ([id_estado_academico]
           ,[estado_academico])
     VALUES
           (1,'Regular'),
		   (2,'Libre'),
		   (3,'Promocional')

INSERT INTO TIPOS_ESTADO_CIVIL
           ([id_estado_civil]
           ,[estado_civil])
     VALUES
           (1,'Soltero'),
           (2,'Divorciado'),
		   (3,'Viudo'),
		   (4,'Casado')

INSERT INTO TIPOS_EXAMEN
           ([id_tipo_examen]
           ,[tipo_examen])
     VALUES
           (1,'Parcial'),
		   (2,'Final')


INSERT INTO ANIOS_CURSADO
           (id_anio
           ,anio)
     VALUES
           (1,1),
		   (2,2)

INSERT INTO CARRERAS
           ([id_carrera]
           ,[nombre])
     VALUES
           (1,'TUP'),
           (2,'Ingenieria en Sistemas'),
		   (3,'Ingenieria Industrial'),
		   (4,'Ingenieria Mecanica')

INSERT INTO MATERIAS
           ([id_materia]
           ,[id_carrera]
           ,[nombre]
           ,[id_anio])
     VALUES
           (1,1,'Programacion I',1),
		   (2,1,'Ingles I',1),
		   (3,1,'Matematica',1),
		   (4,1,'Laboratorio de Computacion I',1),
		   (5,1,'Programacion II',1),
		   (6,1,'Estadistica',1),
		   (7,1,'Laboratorio de Computacion II',1),
		   (8,1,'Organizacion Empresarial',2),
		   (9,1,'Legislacion',2),
		   (10,2,'Algebra',1),
		   (11,2,'Fisica',1),
		   (12,2,'Quimica',2),
		   (13,2,'Sistemas Operativos',2),
		   (14,3,'Pensamiento Sistemico',1),
		   (15,3,'Igenieria y Sociedad',1),
		   (16,3,'Administracion General',2),
		   (17,3,'Informatica II',2),
		   (18,4,'Sistemas de Representacion',1),
		   (19,4,'Materiales Metalicos',2),
		   (20,4,'Estabilidad I',2)

INSERT INTO TURNOS(id_turno,turno)
		values
		(1,'Mañana'),
		(2,'Tarde')

INSERT INTO CURSOS
           ([id_curso]
           ,[curso]
		   ,id_carrera
		   ,id_turno)
     VALUES
           (1,'1W1',1,1),
		   (2,'1W3',1,2),
		   (3,'2W1',1,1),
		   (4,'2W3',1,2),
		   (5,'1X1',2,1),
		   (6,'1X3',2,2),
		   (7,'2X1',2,1),
		   (8,'2X3',2,2),
		   (9,'1Z1',3,1),
		   (10,'1Z3',3,2),
		   (11,'2Z1',3,1),
		   (12,'2Z3',3,2),
		   (13,'1Y1',4,1),
		   (14,'1Y3',4,2),
		   (15,'2Y1',4,1),
		   (16,'2Y3',4,2)
		
INSERT INTO DOCENTES
           ([id_docente]
           ,[nombre]
           ,[apellido]
           ,[fecha_nac]
           ,[calle]
           ,[altura]
           ,[id_barrio]
           ,[id_situacion_habitacional]
           ,[id_estado_civil]
           ,[fecha_ingreso])
     VALUES 
           (1,'Martin','Palermo','1973-12-22','Madrid',200,1,2,1,'2015-03-5'),
		   (2,'Juan','Bianchi','1980-10-3','Barcelona',420,2,3,4,'2019-01-4'),
		   (3,'Pedro','Rodriguez','1973-08-5','Paris',630,3,2,4,'2016-02-9'),
		   (4,'Leonel','Messi','1976-06-7','Salta',1200,4,2,4,'2015-06-2'),
		   (5,'Agustin','Cresti','1979-12-6','Tucuman',2200,5,2,1,'2014-08-20'),
		   (6,'Marta','Gallegos','1970-11-10','Moron',450,6,2,4,'2013-10-30'),
		   (7,'Beatriz','Iriarte','1983-09-12','Velez Zarfield',700,7,2,1,'2010-12-22'),
		   (8,'Clara','Alvarez','1982-01-23','Poeta Lugones',740,8,2,1,'2009-05-30'),
		   (9,'Christian','Heinze','1981-02-26','Lugano',732,9,2,2,'2011-07-27'),
		   (10,'Ezequiel','Aimar','1975-03-30','Jujuy',402,10,1,3,'2011-09-21'),
		   (11,'Juan','Ortega','1974-04-30','Colon',531,11,1,2,'2011-11-11'),
		   (12,'Ricardo','Fort','1969-05-2','Fiumicino',2720,12,2,3,'2013-08-13'),
		   (13,'Claudia','Aguero','1968-06-1','Londres',4020,13,1,1,'2013-04-15'),
		   (14,'Mercedes','Sosa','1967-07-17','Mexico',587,14,1,2,'2017-06-17'),
		   (15,'Graciela','Moreno','1980-08-13','Parana',923,3,2,4,'2017-07-19'),
		   (16,'Carla','Cruz','1971-04-18','Rosario',1050,6,2,4,'2010-02-23'),
		   (17,'Marcela','Munioz','1977-03-20','Teros',1350,9,2,1,'2012-04-15')

  INSERT INTO TIPOS_CONTACTO
           ([id_tipo_contacto]
           ,[tipo_contacto])
     VALUES
           (1,'Telefono'),
		   (2,'Mail')

INSERT INTO CONTACTOS_DOCENTES
           ([id_docente]
           ,[id_tipo_contacto]
           ,[contacto])
     VALUES
           (1,1,'3512025121'),
		   (2,2,'juancito@gmail.com'),
		   (3,2,'pedrou@gmail.com'),
		   (4,2,'leo10@gmail.com'),
		   (5,2,'aguscresti@gmail.com'),
		   (5,1,'3519064173'),
		   (6,1,'3515462129'),
		   (7,2,'beatrizir@gmail.com'),
		   (8,2,'claralvarez@gmail.com'),
		   (8,1,'3519089653'),
		   (9,2,'juancito@gmail.com'),
		   (10,2,'crisheinze@gmail.com'),
		   (10,1,'3512178438'),
		   (11,2,'jortega@hotmail.com'),
		   (12,2,'rikcyfort@hotmail.com'),
		   (13,2,'caguero@hotmail.com'),
		   (14,2,'mersosa@hotmail.com'),
		   (15,2,'gramoreno@hotmail.com'),
		   (16,2,'ccruz@hotmail.com'),
		   (17,2,'munioz@yahoo.com')

INSERT INTO DOCENTES_MATERIAS
           ([id_docente]
           ,[id_materia],
		   anio)
     VALUES
           (1,20,2021),
		   (2,19,2021),
		   (3,18,2021),
		   (4,17,2021),
		   (5,16,2021),
		   (6,15,2021),
		   (7,14,2021),
		   (8,13,2021),
		   (9,12,2021),
		   (10,11,2021),
		   (11,10,2021),
		   (12,9,2021),
		   (13,8,2021),
		   (14,7,2021),
		   (15,6,2021),
		   (16,5,2021),
		   (17,4,2021),
		   (1,3,2021),
		   (12,2,2021),
		   (4,1,2021)

INSERT INTO ALUMNOS (legajo,nombre,apellido,fecha_nac,calle,altura,id_barrio,id_situacion_laboral,id_situacion_habitacional,id_estado_civil)
VALUES
  (200000,'Uriah','Maxwell','1973-12-22 23:45:35','Velez Zarfield',381,2,1,3,1),
  (200001,'Indira','Hopper','1979-05-01 16:18:28','Colon',243,6,3,1,2),
  (200002,'Gray','Rowe','1966-01-12 17:15:14','Poeta Lugones',1286,5,1,2,2),
  (200003,'Eve','Roman','1989-06-11 09:12:13','Varela Berro',879,10,4,3,4),
  (200004,'Kuame','Oliver','1978-10-30 10:31:56','Tucuman',777,2,2,1,1),
  (200005,'Alvin','Short','1976-11-22 18:55:49','Salta',545,8,4,3,4),
  (200006,'Margaret','Parker','1973-05-10 23:19:14','Bolivia',850,10,2,2,1),
  (200007,'Edward','Price','1976-12-06 22:15:28','Paraguay',631,1,4,2,1),
  (200008,'Lenore','Munoz','1986-07-20 00:55:17','Tierra del Fuego',1982,2,2,1,2),
  (200009,'Armand','Delgado','1978-04-28 08:00:00','Lusta',1754,3,4,1,2),
  (200010,'Hadassah','Beach','1966-11-12 08:09:19','Lisboa',175,8,2,2,1),
  (200011,'Sybil','Cook','1974-03-04 20:26:37','Madrid',849,4,4,2,1),
  (200012,'Wyatt','Barnes','1984-10-20 13:13:15','Barcelona',1581,8,3,3,2),
  (100013,'Fatima','Holder','1983-07-23 17:31:31','Cordoba',1586,3,4,1,2),
  (100014,'Lacy','Harding','1963-07-10 03:04:34','Castro Barros',464,3,3,3,2),
  (100015,'Morgan','Holmes','1971-12-31 15:37:52','Caraffa',1468,3,3,2,3),
  (100016,'Phoebe','Gates','1986-11-01 09:39:05','Nuniez',575,8,2,2,3),
  (100017,'Boris','Garrett','1987-09-26 13:51:35','Tejeda',1208,10,2,1,2),
  (100018,'Jonah','Rose','1970-11-27 06:21:09','Martinolli',747,7,3,1,3),
  (100019,'Glenna','Crane','1986-10-20 10:03:18','Olmos',868,3,2,3,2),
  (100020,'Bertha','Velazquez','1978-03-22 17:18:08','Peru',1087,9,3,3,1),
  (100021,'Troy','Cote','1971-09-30 08:19:23','Perasto',165,9,3,2,2),
  (100022,'Nomlanga','Buckner','1961-11-05 01:53:02','Juncales',1007,9,2,2,4),
  (100023,'Mark','Campos','1977-12-20 23:12:33','Giardino',1575,3,2,1,2),
  (100024,'Geraldine','Chaney','1989-03-28 15:02:44','Sunchales',327,5,1,2,2);

  INSERT INTO CARRERAS_ALUMNOS
           ([id_carrera]
           ,[legajo]
		   ,fecha_ingreso)
     VALUES
           (1,200012,'2020-03-01 12:20:00'),
		   (2,200012,'2021-03-01 12:20:00'),
		   (1,200011,'2020-03-01 12:20:00'),
		   (2,200010,'2020-03-01 12:20:00'),
		   (3,200009,'2020-03-01 12:20:00'),
		   (3,200008,'2020-03-01 12:20:00'),
		   (4,200007,'2020-03-01 12:20:00'),
		   (4,200006,'2020-03-01 12:20:00'),
		   (1,200005,'2020-03-01 12:20:00'),
		   (1,200004,'2020-03-01 12:20:00'),
		   (4,200003,'2020-03-01 12:20:00'),
		   (4,200002,'2020-03-01 12:20:00'),
		   (2,200001,'2020-03-01 12:20:00'),
		   (2,200000,'2020-03-01 12:20:00'),
		   (1,100013,'2021-03-01 12:20:00'),
		   (1,100014,'2021-03-01 12:20:00'),
		   (2,100015,'2021-03-01 12:20:00'),
		   (2,100016,'2021-03-01 12:20:00'),
		   (3,100017,'2021-03-01 12:20:00'),
		   (3,100018,'2021-03-01 12:20:00'),
		   (4,100017,'2021-03-01 12:20:00'),
		   (4,100019,'2021-03-01 12:20:00'),
		   (1,100020,'2021-03-01 12:20:00'),
		   (3,100021,'2021-03-01 12:20:00'),
		   (4,100022,'2021-03-01 12:20:00'),
		   (4,100023,'2021-03-01 12:20:00'),
		   (1,100024,'2021-03-01 12:20:00')

  INSERT INTO MATERIAS_ALUMNOS
           ([legajo]
           ,[id_materia]
           ,[id_estado_academico]
		   ,id_curso,
		   anio_inscripcion)
     VALUES
           (200012,8,3,4,2020),(200012,9,3,4,2020),	(200012,10,3,5,2020),(200012,11,3,5,2020),
		   (200011,9,3,4,2020),(200011,8,3,4,2020),
		   (200010,13,3,7,2020),(200010,12,3,7,2020),
		   (200009,16,3,11,2020),(200009,17,3,11,2020),
		   (200008,17,3,11,2020),(200008,16,3,11,2020),
		   (200007,19,3,15,2020),(200007,20,3,15,2020),
		   (200006,20,3,16,2020),(200006,19,3,16,2020),
		   (200005,8,3,3,2020),(200005,9,3,3,2020),
		   (200004,9,3,3,2021),(200004,8,3,3,2021),
		   (200003,20,3,16,2021),(200003,19,3,16,2021),
		   (200002,19,3,16,2021),(200002,20,3,16,2021),
		   (200001,13,3,8,2021),(200001,12,3,8,2021),
		   (200000,13,3,8,2021),(200000,12,3,8,2021),
		   (100013,1,3,2,2021),(100013,2,3,2,2021),(100013,3,3,2,2021),(100013,4,3,2,2021),(100013,5,3,2,2021),(100013,6,3,2,2021),(100013,7,3,2,2021),
		   (100014,1,3,2,2021),(100014,2,3,2,2021),(100014,3,3,2,2021),(100014,4,3,2,2021),(100014,5,3,2,2021),(100014,6,3,2,2021),
		   (100015,10,3,6,2019),(100015,11,3,6,2019),
		   (100016,10,3,6,2021),(100016,11,3,6,2021),
		   (100017,14,3,9,2021),(100017,15,3,9,2021),		(100017,18,3,14,2021),
		   (100018,14,3,9,2021),(100018,15,3,9,2021),
		   (100019,18,3,14,2021),
		   (100020,1,3,1,2021),(100020,2,3,1,2021),(100020,3,3,1,2021),(100020,4,3,1,2021),(100020,5,3,1,2021),(100020,7,3,1,2021),
		   (100021,14,3,10,2021),(100021,15,3,10,2021),
		   (100022,18,3,14,2021),
		   (100023,18,3,14,2021),
		   (100024,1,3,2,2021),(100024,2,3,2,2021),(100024,3,3,2,2021)

		   update MATERIAS_ALUMNOS
		   set id_estado_academico = 2

INSERT INTO CONTACTOS_ALUMNOS
           ([legajo]
           ,[id_tipo_contacto]
           ,[contacto])
     VALUES
           (200012,2,'wbarnes@gmail.com'),
		   (200011,1,'3516678543'),
		   (200010,2,'hbeach@gmail.com'),
		   (200009,2,'adelgado@gmail.com'),
		   (200008,2,'lmunoz@gmail.com'),
		   (200007,2,'eprice@gmail.com'),
		   (200006,2,'mparker@gmail.com'),
		   (200005,2,'ashort@gmail.com'),
		   (200004,2,'koliver@hotmail.com'),
		   (200003,2,'eroman@gmail.com'),
		   (200002,2,'grow@gmail.com'),
		   (200001,2,'ihopp@gmail.com'),
		   (200000,2,'umax@hotmail.com'),
		   (100013,2,'fholder@gmail.com'),
		   (100014,2,'larding@gmail.com'),
		   (100015,2,'mholmes@gmail.com'),
		   (100016,2,'pgates@gmail.com'),
		   (100017,2,'bgarett@gmail.com'),
		   (100018,2,'jrose@gmail.com'),
		   (100019,2,'grane@outlook.com'),
		   (100020,2,'belazquez@gmail.com'),
		   (100021,2,'tcote@gmail.com'),
		   (100021,1,'3512365194'),
		   (100022,2,'nombuck@outlook.com'),
		   (100023,2,'markc@gmail.com'),
		   (100024,2,'gerch@gmail.com')


		  
INSERT INTO EXAMENES
           ([id_examen]
           ,[id_materia]
           ,[id_tipo_examen]
           ,[fecha])
     VALUES
           (1,1,1,'2021-10-13'),
		   (2,2,1,'2021-10-20'),
		   (3,3,1,'2021-10-27'),
		   (4,4,1,'2021-10-14'),
		   (5,5,1,'2021-10-25'),
		   (6,6,1,'2021-10-28'),
		   (7,7,1,'2021-10-15'),
		   (8,8,1,'2021-10-21'),
		   (9,9,1,'2021-10-29'),
		   (10,10,1,'2021-11-01'),
		   (11,11,1,'2021-11-02'),
		   (12,12,1,'2021-11-03'),
		   (13,13,1,'2021-11-04'),
		   (14,14,1,'2021-11-05'),
		   (15,15,1,'2021-11-06'),
		   (16,16,1,'2021-11-07'),
		   (17,17,1,'2021-11-08'),
		   (18,18,1,'2021-11-09'),
		   (19,19,1,'2021-11-13'),
		   (20,20,1,'2021-11-14'),
		   (21,20,1,'2021-11-15'),
		   (22,1,1,'2021-11-16'),
		   (23,2,1,'2021-11-17'),
		   (24,3,1,'2021-11-18'),
		   (25,4,1,'2021-11-19'),
		   (26,5,1,'2021-11-20'),
		   (27,6,1,'2021-11-27'),
		   (28,7,1,'2021-11-25'),
		   (29,8,1,'2021-11-26'),
		   (30,9,1,'2021-11-28'),
		   (31,1,2,'2021-12-01'),
		   (32,2,2,'2021-12-02'),
		   (33,3,2,'2021-12-03'),
		   (34,4,2,'2021-12-04'),
		   (35,5,2,'2021-12-05'),
		   (36,6,2,'2021-12-08'),
		   (37,7,2,'2021-12-06'),
		   (38,8,2,'2021-12-07'),
		   (39,9,2,'2021-12-09'),
		   (40,10,2,'2021-12-10'),
		   (41,11,2,'2021-12-12'),
		   (42,12,2,'2021-12-13'),
		   (43,13,2,'2021-12-14'),
		   (44,14,2,'2021-12-15'),
		   (45,15,2,'2021-12-16'),
		   (46,16,2,'2021-12-17'),
		   (47,17,2,'2021-12-18'),
		   (48,18,2,'2021-12-19'),
		   (49,19,2,'2021-12-20'),
		   (50,20,2,'2021-12-21')

		   
INSERT INTO DETALLES_EXAMEN
           ([id_examen]
           ,[legajo]
           ,[presente]
           ,[nota])
     VALUES
           (1,100013,1,6),
		   (2,100013,1,6),
		   (3,100013,1,6),
		   (4,100013,1,7),
		   (5,100013,1,7),
		   (6,100013,1,8),
		   (7,100013,1,9),
		   (8,200004,1,8),
		   (9,200004,1,6),
		   (10,100015,1,8),
		   (11,100015,1,4),
		   (12,200000,1,6),
		   (13,200000,1,5),
		   (14,100021,1,7),
		   (15,100021,1,8),
		   (16,200008,1,9),
		   (17,200008,1,3),
		   (18,100022,1,7),
		   (19,200002,1,5),
		   (20,200002,1,10),
		   (21,200003,1,6),
		   (22,100013,1,7),
		   (23,100013,1,6),
		   (24,100013,1,8),
		   (25,100013,1,8),
		   (26,100013,1,9),
		   (27,100013,1,5),
		   (28,100013,1,4),
		   (29,200005,1,5),
		   (30,200005,1,7),
		   (31,100020,1,8),
		   (32,100020,1,8),
		   (33,100020,1,6),
		   (34,100020,1,7),
		   (35,100020,1,10),
		   (36,100020,1,6),
		   (37,100020,1,4),
		   (38,200011,1,6),
		   (39,200011,1,6),
		   (40,100016,1,10),
		   (41,100016,1,9),
		   (42,200001,1,8),
		   (43,200001,1,4),
		   (44,100021,1,6),
		   (45,100021,1,7),
		   (46,200008,1,6),
		   (47,200008,1,7),
		   (48,100023,1,7),
		   (49,200007,1,6),
		   (50,200007,1,9)