CREATE VIEW 
materias_semestre AS
SELECT COUNT(MATERIA), Semestre
FROM siase.materias
group by Semestre;

CREATE VIEW 
maestros_estatus AS
SELECT COUNT(NOMBRE), ID_ESTATUS
FROM siase.profesor
group by ID_ESTATUS;

CREATE VIEW 
maestros_disponibles AS
SELECT NOMBRE AS MAESTRO_DISPONIBLE FROM siase.profesor
WHERE ID_ESTATUS = 1
GROUP BY NOMBRE;

CREATE VIEW 
alumnos_materia AS
SELECT COUNT(ID_ALUMNO) AS ALUMNOS_MATERIA, materias.MATERIA 
FROM siase.materias_horario_alumno
INNER JOIN(siase.materias) WHERE (SELECT ID_MATERIA FROM siase.materias_horario LIMIT 1) = siase.materias.ID
GROUP BY materias.MATERIA;

CREATE VIEW 
horario_aula AS
SELECT horario.ID, aula.DESCRIPCION
FROM siase.horario
INNER JOIN(siase.aula) 
ON siase.horario.ID_AULA = siase.aula.ID;

CREATE VIEW 
horario_hora AS
SELECT horario.ID, hora.DESCRIPCION
FROM siase.horario
INNER JOIN(siase.hora)
WHERE siase.horario.ID_HORA = siase.hora.ID;

CREATE VIEW 
horario_dia AS
SELECT horario.ID,dia.DESCRIPCION
FROM siase.horario
INNER JOIN(siase.dia) 
ON siase.horario.ID_DIA = siase.dia.ID;

CREATE VIEW 
horario_profesor AS
SELECT horario.ID, profesor.NOMBRE
FROM siase.horario
INNER JOIN(siase.profesor) 
ON siase.horario.ID_PROFESOR = siase.profesor.ID;

CREATE VIEW 
profesor_estatus AS
SELECT profesor.ID, NOMBRE, estatus.DESCRIPCION
FROM siase.profesor
INNER JOIN(siase.estatus)
ON siase.profesor.ID_ESTATUS = siase.estatus.ID;

CREATE VIEW 
facultad_cantidad_carreras AS
SELECT siase.facultad.NOMBRE, COUNT(siase.carrera.ID_FACULTAD)
FROM siase.facultad
INNER JOIN(siase.carrera) 
ON siase.facultad.ID = siase.carrera.ID_FACULTAD
GROUP BY facultad.NOMBRE;
