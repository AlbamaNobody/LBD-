CREATE TABLE  siase.bitacora 
	(ID INTEGER NOT NULL AUTO_INCREMENT, 
	DESCRIPCION VARCHAR(100) NOT NULL,
    FECHA DATE NOT NULL,
	 CONSTRAINT DIA_PK PRIMARY KEY (ID));
     
DELIMITER //
CREATE TRIGGER DB_SECURITY BEFORE
DELETE ON alumno
FOR EACH ROW
BEGIN
	INSERT INTO siase.bitacora(ID, DESCRIPCION, FECHA)
    VALUES('NO SE PUEDEN ELIMINAR REGISTROS', NOW());
END;//
DELIMITER ;

 DELIMITER //
 CREATE PROCEDURE materias_semestre()
   BEGIN
	SELECT COUNT(MATERIA), Semestre
	FROM siase.materias
	group by Semestre;
   END //
 DELIMITER ;

 DELIMITER //
 CREATE PROCEDURE maestros_estatus()
   BEGIN
	SELECT COUNT(NOMBRE), ID_ESTATUS
	FROM siase.profesor
	group by ID_ESTATUS;
   END //
 DELIMITER ;

DELIMITER //
 CREATE PROCEDURE maestros_disponibles()
   BEGIN
	SELECT NOMBRE AS MAESTRO_DISPONIBLE FROM siase.profesor
	WHERE ID_ESTATUS = 1
	GROUP BY NOMBRE;
   END //
DELIMITER ;

DELIMITER //
 CREATE PROCEDURE alumnos_materia()
   BEGIN
	SELECT COUNT(ID_ALUMNO) AS ALUMNOS_MATERIA, materias.MATERIA 
	FROM siase.materias_horario_alumno
	INNER JOIN(siase.materias) WHERE (SELECT ID_MATERIA FROM siase.materias_horario LIMIT 1) = siase.materias.ID
	GROUP BY materias.MATERIA;
   END //
DELIMITER ;

DELIMITER //
 CREATE PROCEDURE horario_aula()
   BEGIN
	SELECT horario.ID, aula.DESCRIPCION
	FROM siase.horario
	INNER JOIN(siase.aula) 
	ON siase.horario.ID_AULA = siase.aula.ID;
   END //
DELIMITER ;

DELIMITER //
 CREATE PROCEDURE horario_hora ()
   BEGIN
	SELECT horario.ID, hora.DESCRIPCION
	FROM siase.horario
	INNER JOIN(siase.hora)
	WHERE siase.horario.ID_HORA = siase.hora.ID;
   END //
DELIMITER ;


DELIMITER //
 CREATE PROCEDURE horario_dia()
   BEGIN
	SELECT horario.ID,dia.DESCRIPCION
	FROM siase.horario
	INNER JOIN(siase.dia) 
	ON siase.horario.ID_DIA = siase.dia.ID;
   END //
DELIMITER ;

DELIMITER //
 CREATE PROCEDURE horario_profesor()
   BEGIN
	SELECT horario.ID, profesor.NOMBRE
	FROM siase.horario
	INNER JOIN(siase.profesor) 
	ON siase.horario.ID_PROFESOR = siase.profesor.ID;
   END //
DELIMITER ;

DELIMITER //
 CREATE PROCEDURE profesor_estatus()
   BEGIN
	SELECT profesor.ID, NOMBRE, estatus.DESCRIPCION
	FROM siase.profesor
	INNER JOIN(siase.estatus)
	ON siase.profesor.ID_ESTATUS = siase.estatus.ID;
   END //
DELIMITER ;

DELIMITER //
 CREATE PROCEDURE facultad_cantidad_carreras()
   BEGIN
	SELECT siase.facultad.NOMBRE, COUNT(siase.carrera.ID_FACULTAD)
	FROM siase.facultad
	INNER JOIN(siase.carrera) 
	ON siase.facultad.ID = siase.carrera.ID_FACULTAD
	GROUP BY facultad.NOMBRE;
   END //
DELIMITER ;