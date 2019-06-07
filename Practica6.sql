SELECT COUNT(MATERIA), Semestre
FROM siase.materias
group by Semestre;

SELECT COUNT(NOMBRE), ID_ESTATUS
FROM siase.profesor
group by ID_ESTATUS;

SELECT NOMBRE AS MAESTRO_DISPONIBLE FROM siase.profesor
WHERE ID_ESTATUS = 1
GROUP BY NOMBRE;

SELECT COUNT(ID_ALUMNO) AS ALUMNOS_MATERIA, materias.MATERIA 
FROM siase.materias_horario_alumno
INNER JOIN(siase.materias) WHERE (SELECT ID_MATERIA FROM siase.materias_horario LIMIT 1) = siase.materias.ID
GROUP BY materias.MATERIA;

SELECT horario.ID, aula.DESCRIPCION
FROM siase.horario
INNER JOIN(siase.aula) 
ON siase.horario.ID_AULA = siase.aula.ID;

SELECT horario.ID, hora.DESCRIPCION
FROM siase.horario
INNER JOIN(siase.hora)
WHERE siase.horario.ID_HORA = siase.hora.ID;

SELECT horario.ID,dia.DESCRIPCION
FROM siase.horario
INNER JOIN(siase.dia) 
ON siase.horario.ID_DIA = siase.dia.ID;

SELECT horario.ID, profesor.NOMBRE
FROM siase.horario
INNER JOIN(siase.profesor) 
ON siase.horario.ID_PROFESOR = siase.profesor.ID;

SELECT profesor.ID, NOMBRE, estatus.DESCRIPCION
FROM siase.profesor
INNER JOIN(siase.estatus)
ON siase.profesor.ID_ESTATUS = siase.estatus.ID;

SELECT siase.facultad.NOMBRE, COUNT(siase.carrera.ID_FACULTAD)
FROM siase.facultad
INNER JOIN(siase.carrera) 
ON siase.facultad.ID = siase.carrera.ID_FACULTAD
GROUP BY facultad.NOMBRE;
