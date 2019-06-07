INSERT INTO siase.alumno (ID, CONTRASENA, NOMBRE) 
VALUES (1, 'al12ba34', 'Alonso Barrientos');
INSERT INTO siase.alumno (ID, CONTRASENA, NOMBRE) 
VALUES (2, 'al18ba37', 'Ricardo Martínez');
INSERT INTO siase.alumno (ID, CONTRASENA, NOMBRE) 
VALUES (3, 'al22ba44', 'Anastacio Hernández');
INSERT INTO siase.alumno (ID, CONTRASENA, NOMBRE) 
VALUES (4, 'al02ba54', 'Eduardo Velazquez');
INSERT INTO siase.alumno (ID, CONTRASENA, NOMBRE) 
VALUES (5, 'al12ba34', 'Elías Sánchez');
INSERT INTO siase.alumno (ID, CONTRASENA, NOMBRE) 
VALUES (6, 'al12ba34', 'Alberto Primitivo');


INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (1, 101);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (2, 102);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (3, 103);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (4, 104);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (5, 105);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (6, 106);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (7, 107);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (8, 108);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (9, 109);
INSERT INTO siase.aula (ID, DESCRIPCION)
VALUES (10, 110);

INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (1,  'Lunes');
INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (2, 'Martes');
INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (3, 'Miercoles');
INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (4, 'Jueves');
INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (5, 'Viernes');
INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (6, 'Sábado');
INSERT INTO siase.dia (ID, DESCRIPCION)
VALUES (7, 'Domingo');

INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (1, 'ACTIVO');
INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (2, 'INACTIVO');
INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (3, 'BAJA CON DERECHO');
INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (4, 'REINSCRIPCIÓN');
INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (5, 'SUSPENSIÓN');
INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (6, 'EGRESADO');
INSERT INTO siase.estatus(ID, DESCRIPCION)
VALUES (7, 'EXPIRADO');

INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (1, 'Facultad de Ciencias Físico-Matemáticas');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (2, 'Facultad de Ciencias Químicas');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (3, 'Facultad de Contaduría Pública y Administración');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (4, 'Facultad de Filosofía y Letras');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (5, 'Facultad de Derecho y Criminología');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (6, 'Facultad de Ingeniería Mecánica y Eléctrica');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (7, 'Facultad de Psicología');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (8, 'Facultad de Arquitectura');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (9, 'Facultad de Organización Deportiva');
INSERT INTO siase.facultad(ID, NOMBRE)
VALUES (10, 'Facultad de Medicina');

INSERT INTO siase.oportunidad(ID, DESCRIPCION)
VALUES (1, '1ERA OP');
INSERT INTO siase.oportunidad(ID, DESCRIPCION)
VALUES (2, '2DA OP');
INSERT INTO siase.oportunidad(ID, DESCRIPCION)
VALUES (3, '3ERA OP');
INSERT INTO siase.oportunidad(ID, DESCRIPCION)
VALUES (4, '4TA OP');
INSERT INTO siase.oportunidad(ID, DESCRIPCION)
VALUES (5, '5TA OP');
INSERT INTO siase.oportunidad(ID, DESCRIPCION)
VALUES (6, '6TA OP');

INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES (1, 'Base de Datos', '3');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(2, 'Evidencias Digitales', '2');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(3, 'Programación 1' , '1');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(4, 'Telecomunicaciones 1', '2');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(5, 'Telecomunciaciones 2', '3');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(6, 'Diseño Orientado a Objetos', '2');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(7, 'Laboratorio de Diseño Orientado a Objetos', '2');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(8, 'Cultura Regional', '2');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(9, 'Circuitos Digitales', '2');
INSERT INTO siase.materias(ID, MATERIA, SEMESTRE)
VALUES(10, 'Laboratorio de Circuitos Digitales', '2');

INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(1, '7:00-7:30');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(2, '7:30-8:00');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(3, '8:00-8:30');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(4, '8:30-9:00');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(5, '9:00-9:30');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(6, '9:30-10:00');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(7, '10:00-10:30');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(8, '10:30-11:00');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(9, '11:30-12:00');
INSERT INTO siase.hora(ID, DESCRIPCION)
VALUES(10, '12:30-13:00');

INSERT INTO siase.profesor(ID, NOMBRE, ID_ESTATUS)
VALUES(1, 'Anastacio Hernández',1);
INSERT INTO siase.profesor(ID, NOMBRE, ID_ESTATUS)
VALUES(2, 'Osvaldo Habib',1);
INSERT INTO siase.profesor(ID, NOMBRE, ID_ESTATUS)
VALUES(3, 'Diana R.',1);
INSERT INTO siase.profesor(ID, NOMBRE, ID_ESTATUS)
VALUES(4, 'Dolores Pérez',1);
INSERT INTO siase.profesor(ID, NOMBRE, ID_ESTATUS)
VALUES(5, 'Maria Elena',1);
INSERT INTO siase.profesor(ID, NOMBRE, ID_ESTATUS)
VALUES(6, 'Pablo Torres',1);

INSERT INTO siase.horario(ID, ID_HORA, ID_AULA, ID_DIA, ID_PROFESOR)
VALUES (1, 1, 1, 1, 1);
INSERT INTO siase.horario(ID, ID_HORA, ID_AULA, ID_DIA, ID_PROFESOR)
VALUES (2, 2, 1, 1, 1);
INSERT INTO siase.horario(ID, ID_HORA, ID_AULA, ID_DIA, ID_PROFESOR)
VALUES (3, 3, 2, 1, 1);
INSERT INTO siase.horario(ID, ID_HORA, ID_AULA, ID_DIA, ID_PROFESOR)
VALUES (4, 4, 2, 1, 1);
INSERT INTO siase.horario(ID, ID_HORA, ID_AULA, ID_DIA, ID_PROFESOR)
VALUES (5, 1, 3, 2, 2);
INSERT INTO siase.horario(ID, ID_HORA, ID_AULA, ID_DIA, ID_PROFESOR)
VALUES (6, 1, 4, 2, 2);

INSERT INTO siase.carrera(ID, NOMBRE, ID_FACULTAD)
VALUES (1, ' Lic. en Seguridad en Tecnologías de Información', '1');
INSERT INTO siase.carrera(ID, NOMBRE, ID_FACULTAD)
VALUES (2, ' Lic. en Ciencias Computacionales', '1');
INSERT INTO siase.carrera(ID, NOMBRE, ID_FACULTAD)
VALUES (3, ' Lic. en Mutlimedia y Animación Digital', '1');
INSERT INTO siase.carrera(ID, NOMBRE, ID_FACULTAD)
VALUES (4, ' Lic. en Física', '1');
INSERT INTO siase.carrera(ID, NOMBRE, ID_FACULTAD)
VALUES (5, ' Lic. en Actuaria', '1');

INSERT INTO siase.plan_estudio(ID,FECHA_INICIO, FECHA_FIN, DESCRIPCION)
VALUES (1, '2012-02-01', '2018-02-01',  'PL4N35TUD10');

INSERT INTO siase.carrera_plan_estudio(ID,ID_CARRERA,ID_PLAN_ESTUDIO)
VALUES (1, 1, 1);

INSERT INTO siase.materias_horario(ID, ID_MATERIA, ID_HORARIO, ID_ALUMNO, ID_ESTATUS)
VALUES(1, 1, 1, 1, 1);
INSERT INTO siase.materias_horario(ID, ID_MATERIA, ID_HORARIO, ID_ALUMNO, ID_ESTATUS)
VALUES(2, 1, 2, 1, 1);
INSERT INTO siase.materias_horario(ID, ID_MATERIA, ID_HORARIO, ID_ALUMNO, ID_ESTATUS)
VALUES(3, 1, 3, 1, 1);

INSERT INTO siase.materia_carrera(ID, ID_MATERIAS, ID_CARRERA_PLAN_ESTUDIO)
VALUES(1, 1, 1);

INSERT INTO siase.kardex(ID, FECHA_INICIO, FECHA_FIN, ID_CARRERA)
VALUES(1, '25-02-17', '25-02-19', 1);

INSERT INTO siase.calificaciones_kardex(ID, ID_OPORTUNIDAD, ID_MATERIA_CARRERA, CALIFICACION, id_kardex)
VALUES(1, 1, 1, 100, 1);

INSERT INTO siase.detalle_alumno(ID, ID_KARDEX, ID_ESTATUS, ID_ALUMNO)
VALUES(1, 1, 1, 1);

INSERT INTO siase.materias_horario_alumno(ID, ID_MATERIAS_HORARIO, ID_ALUMNO)
VALUES(1, 1, 1);