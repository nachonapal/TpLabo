--USAR PARA CREAR LA BASE --CREATE DATABASE SistemaAcademico; 

USE SistemaAcademico;

CREATE TABLE SITUACIONES_HABITACIONALES(
	id_situacion_habitacional int,
	situacion_habitacional varchar(40) not null

	CONSTRAINT pk_situacion_habitacional PRIMARY KEY(id_situacion_habitacional)
)

CREATE TABLE SITUACIONES_LABORALES(
	id_situacion_laboral int,
	situacion_laboral varchar(40) not null

	CONSTRAINT pk_situacion_laboral PRIMARY KEY(id_situacion_laboral)
)

CREATE TABLE TIPOS_ESTADO_CIVIL(
	id_estado_civil int,
	estado_civil varchar(50) not null

	CONSTRAINT pk_estado_civil PRIMARY KEY(id_estado_civil)
)
CREATE TABLE PAISES(
	id_pais int ,
	nombre_pais varchar(40) not null,
	CONSTRAINT pk_paises PRIMARY KEY(id_pais)
);
CREATE TABLE PROVINCIAS(
	id_provincia int ,
	id_pais int not null,
	nombre_provincia varchar(40) not null,
	CONSTRAINT pk_provincias PRIMARY KEY(id_provincia),
	CONSTRAINT fk_provincias_id_pais FOREIGN KEY(id_pais) REFERENCES PAISES(id_pais)
);

CREATE TABLE TURNOS(
	id_turno int,
	turno varchar(20),

	CONSTRAINT pk_turnos PRIMARY KEY(id_turno)
)

CREATE TABLE LOCALIDADES(
	id_localidad int ,
	id_provincia int not null,
	nombre_localidad varchar(40) not null,
	CONSTRAINT pk_localidades PRIMARY KEY(id_localidad),
	CONSTRAINT fk_localidades_id_provincia FOREIGN KEY(id_provincia) REFERENCES PROVINCIAS(id_provincia)
);
CREATE TABLE BARRIOS(
	id_barrio int ,
	id_localidad int not null,
	nombre_barrio varchar(40) not null,
	CONSTRAINT pk_barrios PRIMARY KEY(id_barrio),
	CONSTRAINT fk_barrios_id_localidad FOREIGN KEY(id_localidad) REFERENCES LOCALIDADES(id_localidad)
);


CREATE TABLE ALUMNOS(
	legajo int,
	nombre varchar(40) not null,
	apellido varchar(40) not null,
	fecha_nac date not null,
	calle varchar(40) not null,
	altura int not null,
	id_barrio int,
	id_situacion_laboral int,
	id_situacion_habitacional int,
	id_estado_civil int

	CONSTRAINT pk_alumnos PRIMARY KEY(legajo),
	CONSTRAINT fk_alumnos_id_estado_civil FOREIGN KEY(id_estado_civil) REFERENCES TIPOS_ESTADO_CIVIL(id_estado_civil),
	CONSTRAINT fk_alumnos_id_situacion_laboral FOREIGN KEY(id_situacion_laboral) REFERENCES SITUACIONES_LABORALES(id_situacion_laboral),
	CONSTRAINT fk_alumnos_id_situacion_habitacional FOREIGN KEY(id_situacion_habitacional) REFERENCES SITUACIONES_HABITACIONALES(id_situacion_habitacional),
	CONSTRAINT fk_barrios foreign key (id_barrio) references barrios(id_barrio)
)

CREATE TABLE DOCENTES(
	id_docente int,
	nombre varchar(40) not null,
	apellido varchar(40) not null,
	fecha_nac date,
	calle varchar(40) not null,
	altura int not null,
	id_barrio int,
	id_situacion_habitacional int,
	id_estado_civil int,
	fecha_ingreso date,
	CONSTRAINT pk_docentes PRIMARY KEY(id_docente),
	CONSTRAINT fk_tipos_estado_civil_id_estado_civil_docente FOREIGN KEY(id_estado_civil) REFERENCES TIPOS_ESTADO_CIVIL(id_estado_civil),
	CONSTRAINT fk_situacion_habitacional_id_situacion_habitacional_docente FOREIGN KEY(id_situacion_habitacional) REFERENCES SITUACIONES_HABITACIONALES(id_situacion_habitacional),
	CONSTRAINT fk_barrios_docente foreign key (id_barrio) references barrios(id_barrio)
	)

	CREATE TABLE CARRERAS(
	id_carrera int,
	nombre varchar(40) not null

	CONSTRAINT pk_carreras PRIMARY KEY(id_carrera) 
	)
	CREATE TABLE CURSOS(
		id_curso int,
		curso varchar(10) not null,
		id_carrera int not null,
		id_turno int not null

		CONSTRAINT pk_cursos PRIMARY KEY(id_curso),
		CONSTRAINT fk_cursos_id_carrera FOREIGN KEY(id_carrera)REFERENCES CARRERAS(id_carrera),
		CONSTRAINT fk_cursos_id_turno FOREIGN KEY(id_turno)REFERENCES TURNOS(id_turno) 
	)
	CREATE TABLE CARRERAS_ALUMNOS(
		id_carrera int,
		legajo int,
		fecha_ingreso date  not null

		CONSTRAINT pk_carreras_alumnos PRIMARY KEY(id_carrera,legajo),
		CONSTRAINT fk_carreras_alumnos_id_carrera FOREIGN KEY(id_carrera) REFERENCES CARRERAS(id_carrera),
		CONSTRAINT fk_carreras_alumnos_legajo FOREIGN KEY(legajo) REFERENCES ALUMNOS(legajo)

	)
	
	
	CREATE TABLE ANIOS_CURSADO(
		id_anio int,
		anio int not null

		CONSTRAINT pk_anios_cursado PRIMARY KEY(id_anio)
	)

	CREATE TABLE MATERIAS(
	id_materia int,
	id_carrera int not null,
	nombre varchar(40) not null,
	id_anio int not null
	CONSTRAINT pk_materias primary key (id_materia),
	CONSTRAINT fk_materias_id_carrera foreign key(id_carrera) references CARRERAS(id_carrera),
	CONSTRAINT fk_materias_id_anio foreign key(id_anio) references ANIOS_CURSADO(id_anio)
	)


	CREATE TABLE TIPOS_ESTADO_ACADEMICO(
	id_estado_academico int,
	estado_academico varchar(30) not null

	CONSTRAINT pk_tipo_estado_academico PRIMARY KEY(id_estado_academico)
	)

	CREATE TABLE MATERIAS_ALUMNOS(
	legajo int,
	id_materia int,
	id_estado_academico int not null,
	id_curso int not null,
	anio_inscripcion int not null
	
	CONSTRAINT pk_materias_alumnos PRIMARY KEY(legajo,id_materia),
	CONSTRAINT fk_materias_alumnos_legajo foreign key(legajo) references ALUMNOS(legajo),
	CONSTRAINT fk_materias_alumnos_id_materia foreign key(id_materia) references MATERIAS(id_materia),
	CONSTRAINT fk_materias_alumnos_id_estado_academico foreign key(id_estado_academico) references TIPOS_ESTADO_ACADEMICO(id_estado_academico),
	CONSTRAINT fk_materias_alumnos_id_curso FOREIGN KEY(id_curso) REFERENCES CURSOS(id_curso),
	)

	CREATE TABLE TIPOS_EXAMEN(
		id_tipo_examen int,
		tipo_examen varchar(20) not null

		CONSTRAINT pk_tipos_examen PRIMARY KEY(id_tipo_examen)
	)

	CREATE TABLE EXAMENES(
		id_examen int,
		id_materia int not null,
		id_tipo_examen int not null,
		fecha date not null

		CONSTRAINT pk_examenes_id_examen PRIMARY KEY(id_examen),
		CONSTRAINT fk_examenes_id_materia foreign key(id_materia) references MATERIAS(id_materia),
		CONSTRAINT fk_examenes_id_tipo_examen foreign key(id_tipo_examen) references TIPOS_EXAMEN(id_tipo_examen)
	)
	CREATE TABLE DETALLES_EXAMEN(
		id_examen int,
		legajo int,
		presente bit not null,
		nota int,

		CONSTRAINT pk_detalles_examen PRIMARY KEY(id_examen,legajo),
		CONSTRAINT fk_detalles_examen_id_examen foreign key(id_examen) references EXAMENES(id_examen),
		CONSTRAINT fk_detalles_examen_legajo foreign key(legajo) references ALUMNOS(legajo)
	)

	CREATE TABLE DOCENTES_MATERIAS(
		id_docente int,
		id_materia int,
		anio int,

		CONSTRAINT pk_docentes_materias PRIMARY KEY(id_docente,id_materia), 
		CONSTRAINT fk_docentes_materias_id_docente foreign key(id_docente) references DOCENTES(id_docente),
		CONSTRAINT fk_docentes_materias_id_materia foreign key(id_materia) references MATERIAS(id_materia)

	)



CREATE TABLE TIPOS_CONTACTO(
	id_tipo_contacto int ,
	tipo_contacto varchar(40) not null,
	CONSTRAINT pk_tipos_contacto PRIMARY KEY(id_tipo_contacto)
);

CREATE TABLE CONTACTOS_DOCENTES(
	id_docente int,
	id_tipo_contacto int,
	contacto varchar(50),
	CONSTRAINT pk_contactos_docentes PRIMARY KEY(id_docente,id_tipo_contacto,contacto),
	CONSTRAINT fk_contactos_docentes_id_tipo_contacto FOREIGN KEY(id_tipo_contacto) REFERENCES TIPOS_CONTACTO(id_tipo_contacto),
	CONSTRAINT fk_contactos_id_docente FOREIGN KEY(id_docente) REFERENCES DOCENTES(id_docente)
);

CREATE TABLE CONTACTOS_ALUMNOS(
	legajo int,
	id_tipo_contacto int,
	contacto varchar(50),
	CONSTRAINT pk_contactos_alumnos PRIMARY KEY(legajo,id_tipo_contacto,contacto),
	CONSTRAINT fk_contactos_id_tipo_contacto FOREIGN KEY(id_tipo_contacto) REFERENCES TIPOS_CONTACTO(id_tipo_contacto),
	CONSTRAINT fk_contactos_legajo FOREIGN KEY(legajo) REFERENCES ALUMNOS(legajo)
);


