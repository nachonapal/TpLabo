--1)Cantidades de alumnos  por edades, estado civil, situación habitacional y laboral, etc.
--CREATE PROCEDURE spCantidadAlumnosFiltrados
--@edad int,
--@estadoCivil int,
--@situacionHab int,
--@situacionLab int
--AS
--	declare @cantidad int;
--	BEGIN
--		set @cantidad = (select count(*)  as 'Cantidad de Alumnos'
--			from ALUMNOS
--			where (@edad is null or (DATEDIFF(YEAR,fecha_nac,GETDATE())) = @edad)
--			and (@estadoCivil is null or id_estado_civil = @estadoCivil)
--			and (@situacionHab is null or id_situacion_habitacional = @situacionHab)
--			and (@situacionLab is null or id_situacion_laboral = @situacionLab))
		
--		if(@cantidad > 0)
--			select @cantidad
--		else
--			raiserror('No se encontraron resultados',10,1)
		
--	END

--exec dbo.spCantidadAlumnosFiltrados
--@edad = 50,
--@estadoCivil = 2,
--@situacionHab = 2,
--@situacionLab = 77

--2)Alumnos inscriptos en cada materia filtrando materia y año
CREATE PROCEDURE spConsultarAlumnosMateria
@idMateria int,
@anio int
AS
	BEGIN
		select a.legajo as Legajo,a.apellido + ', ' + a.nombre 'Alumno',m.nombre as Materia, anio_inscripcion as 'AñoInscripcion'
		from alumnos a 
		join MATERIAS_ALUMNOS ma on a.legajo = ma.legajo 
		join MATERIAS m on ma.id_materia = m.id_materia 
		where (@idMateria is null or (ma.id_materia = @idMateria))
		and (@anio is null or (ma.anio_inscripcion = @anio))
		order by 1
	END
exec spConsultarAlumnosMateria 1,2021

--3)Alumnos que no han cursado materias en el año anterior
--select mAl.legajo as Legajo,al.apellido +', '+al.nombre 'Nombre'
--from ALUMNOS al
--join MATERIAS_ALUMNOS  mAl on mAl.legajo = al.legajo
--where YEAR(GETDATE()) - 1 not in(select anio_inscripcion
--								from MATERIAS_ALUMNOS m
--								where m.legajo = mAl.legajo
--									)
--group by mAl.legajo,al.apellido,al.nombre 

--4)Promedio de notas por alumnos y/o materia.
--create function fPromedioAlumno(@legajo int, @materia varchar(50))
--returns int
--as
--	begin
--	if(@legajo is null)
--		set @legajo = 100013;
--	declare @promedio int
--		select @promedio = sum(dEx.nota)/count(dEx.nota) 
--		from ALUMNOS al
--		join DETALLES_EXAMEN dEx on dEx.legajo = al.legajo
--		join EXAMENES ex on dEx.id_examen = ex.id_examen
--		join MATERIAS mat on ex.id_materia = mat.id_materia
--		group by dEx.legajo,mat.nombre
--		having (@materia is null or mat.nombre = @materia)
--		and dEx.legajo = @legajo
--	return @promedio
--	end
--select dbo.fPromedioAlumno(100015,'Fisica') as 'Promedio de Notas'

--5)Vista que muestra todos los alumnos, las materias en las que estan inscriptos, el estado academico de las mismas, el curso y la carrera, que se hayan inscripto en el ultimo año
CREATE VIEW vEstadisticas
AS
	select al.legajo as Legajo,mat.nombre as Materia, eAc.estado_academico as 'Estado Academico', cur.curso as Curso, car.nombre as Carrera
	from MATERIAS_ALUMNOS mAl
	inner join ALUMNOS al on mAl.legajo = al.legajo
	inner join DETALLES_EXAMEN det on det.legajo = al.legajo
	inner join CURSOS cur on cur.id_curso = mAl.id_curso
	inner join MATERIAS mat on mat.id_materia = mAl.id_materia
	inner join CARRERAS car on car.id_carrera = mat.id_carrera
	inner join TIPOS_ESTADO_ACADEMICO eAc on eAc.id_estado_academico = mAl.id_estado_academico 
	group by al.legajo,mat.nombre,eAc.estado_academico,cur.curso,car.nombre,mAl.anio_inscripcion
	having mAl.anio_inscripcion <= YEAR(DATEADD(YEAR,-1,GETDATE()))

--6)Trigger que al insertar una nota cambie el estado academico del alumno en la materia. Promociona con dos 8 o mas. Aprueba con dos 6 o mas.
--alter TRIGGER triggerExamenRendido
--on DETALLES_EXAMEN
--for insert
--as
--	begin
--		declare @nota int;
--		declare @legajo int;
--		declare @idMateria int;
--			select @nota = i.nota,@legajo = i.legajo,@idMateria = ex.id_materia
--			from DETALLES_EXAMEN det
--			join inserted i on i.id_examen = det.id_examen
--			join EXAMENES ex on ex.id_examen = det.id_examen


--			if((@nota > 7) and (select count(*) from DETALLES_EXAMEN det join inserted i on i.legajo = det.legajo join EXAMENES ex on ex.id_examen = det.id_examen where (det.nota > 7) and (det.legajo = i.legajo) and (ex.id_materia = @idMateria)) >= 2)
--			begin
--				update MATERIAS_ALUMNOS
--				set id_estado_academico  = 3
--				where legajo =  @legajo
--				and id_materia = @idMateria
--			end
--			else if((@nota > 6) and (select count(*) from DETALLES_EXAMEN det join inserted i on i.legajo = det.legajo join EXAMENES ex on ex.id_examen = det.id_examen where (det.nota > 6) and (det.legajo = i.legajo) and (ex.id_materia = @idMateria)) >= 2)
--			begin
--				update MATERIAS_ALUMNOS
--				set id_estado_academico  = 1
--				where legajo =  @legajo
--				and id_materia = @idMateria
--			end
--	end
--	select * from TIPOS_ESTADO_ACADEMICO

--	update MATERIAS_ALUMNOS set id_estado_academico =2  where legajo = 100014 and id_materia = 1
--	delete from DETALLES_EXAMEN  where legajo = 100014 

--select * from DETALLES_EXAMEN  where legajo = 100014
--select * from MATERIAS_ALUMNOS where legajo = 100014
--select * from EXAMENES where id_materia = 100014

--insert into DETALLES_EXAMEN values(26,100014,1,8)
--insert into DETALLES_EXAMEN values(1,100014,1,8)

--7)Cantidad de alumnos  filtrados por estado academico y materia, ingresados por parametro.
CREATE PROCEDURE spConsultaEstadosAcademicos
@estadoAcademico varchar(40),
@nombreMateria varchar(40)
as 
begin
declare @idEstadoAcademico int;
	set @idEstadoAcademico = case
								when @estadoAcademico = 'Regular' then 1
								when @estadoAcademico = 'Libre' then 2
								when @estadoAcademico = 'Promocional' then 3
								else 2	
							end
	select   mat.nombre as Nombre,count(legajo) as 'Cantidad de Alumnos', est.estado_academico as Condicion
	from MATERIAS_ALUMNOS mAl
	join MATERIAS mat on mat.id_materia = mAl.id_materia
	join TIPOS_ESTADO_ACADEMICO est on est.id_estado_academico = mAl.id_estado_academico
	where mAl.id_estado_academico = @idEstadoAcademico
	and (@nombreMateria is null or mat.nombre = @nombreMateria)
	group by mAl.id_materia, mat.nombre,est.estado_academico

end
	exec spConsultaEstadosAcademicos null,null
	

----8)Alumnos que no han rendido o no han aprobado materias en los años anteriores al pasado por parametro.
CREATE PROCEDURE spConsultaExamenesNoAprobOAusentes
	@anio int
as
begin
	
select al.legajo,al.apellido +', '+ al.nombre as Alumno
	from ALUMNOS al
	where al.legajo not  in (select dEx.legajo 
						from DETALLES_EXAMEN dEx
						join EXAMENES ex on dEx.id_examen = ex.id_examen
						where dEx.legajo = al.legajo
						and (@anio is null or YEAR(ex.fecha) < @anio)
						and 6 < all(select nota from DETALLES_EXAMEN det
									where det.legajo = al.legajo))
	group by al.legajo,al.apellido,al.nombre
	order by 1
	
end
--exec spConsultaExamenesNoAprobOAusentes 202
CREATE PROCEDURE OBTENER_MATERIAS
as
begin
	select id_materia as 'idMateria',nombre as 'Materia' from MATERIAS
end