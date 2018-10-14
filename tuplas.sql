INSERT INTO `deportes` (`deporteid`, `nombre`) VALUES
(1, 'Futbol'),
(2, 'Baby Futbol'),
(3, 'Basquetbol');


INSERT INTO `divisiones` (`divisionid`, `deporteid`, `nombre`) VALUES
(1, 1, 'Primera Division'),
(2, 1, 'Segunda Division'),
(3, 3, 'Serie de Honor'),
(4, 3, 'Segunda Division'),
(5, 3, 'Tercera Division');

INSERT INTO `campeonatos` (`campeonatoid`, `divisionid`, `ano`, `nombre`, `semestre`, `campeon`, `fecha_inicio`, `fecha_termino`, `reglamento`) VALUES
(1, 1, 2018, 'Torneo de Verano', 'Segundo Semestre', NULL, '2018-08-27', '2018-12-15', NULL),
(2, 2, 2018, 'Torneo de Verano Segunda Division', 'Segundo Semestre', NULL, '2018-08-27', '2018-12-15', NULL);


INSERT INTO `equipos` (`equipoid`, `divisionid`, `nombre`, `carrera`, `facultad`) VALUES
(1, 2, 'Informatica', 'Ingenieria civil Informatica', 'Ingenieria'),
(2, 2, 'DIE', 'Ingenieria civil Electrica', 'Ingenieria'),
(3, 2, 'Quimica', 'Ingenieria civil Quimica', 'Ingenieria'),
(4, 2, 'FAUG', 'vacio', 'Arquitectura, Urbanizacion y Geografia'),
(5, 2, 'PMyC', 'Pedagogia en matematica y computacion', 'Educacion'),
(6, 2, 'Biomedica', 'Ingenieria civil Biomedica', 'Ingenieria'),
(7, 2, 'Farmacia', 'Farmacia', 'Farmacia y Nutricion'),
(8, 2, 'Materiales', 'Ingenieria civil Materiales', 'Ingenieria'),
(9, 2, 'Forestal', 'Ciencias Forestales y Agronomia', 'Ciencias Forestales'),
(10, 2, 'Sindicato 3', 'vacio', 'vacio'),
(11, 2, 'Enfermeria', 'Enfermeria y Obstetricia', 'Enfermeria'),
(12, 2, 'Historia', 'Pedagogia en Historia', 'Educacion'),
(13, 2, 'ICM', 'Ingenieria civil Matematica', 'Ciencias fisicas y matematicas'),
(14, 2, 'Geofisica', 'Geofisica', 'Ciencias fisicas y matematicas'),
(15, 2, 'Ballena', 'Oceaonagrafia', 'Ciencias naturales y oceanograficas'),
(16, 2, 'Auditoria', 'Auditoria', 'Ciencias economicas y administrativas'),
(17, 2, 'Ingenieria 85', 'vacio', 'Ingenieria'),
(18, 2, 'Electronica', 'Ingenieria civil Electronica', 'Ingenieria'),
(19, 1, 'DEF', 'Educacion fisica', 'Educacion'),
(20, 1, 'Interlex', 'Derecho', 'Ciencias juridicas y sociales'),
(21, 1, 'Virginio Gomez', 'vacio', 'vacio'),
(22, 1, 'Civil de Minas', 'Ingenieria civil Minas', 'Ingenieria'),
(23, 1, 'Industrial', 'Ingenieria civil Industrial', 'Ingenieria'),
(24, 1, 'Sindicato 1', 'vacio', 'vacio'),
(25, 1, 'Sociales', 'vacio', 'Ciencias sociales'),
(26, 1, 'Educacion', 'vacio', 'Educacion'),
(27, 1, 'Medicina', 'Medicina', 'Medicina'),
(28, 1, 'Derecho', 'Derecho', 'Ciencias juridicas y sociales'),
(29, 1, 'Metalurgica', 'Ingenieria civil Metalurgica', 'Ingenieria'),
(30, 1, 'Ex Alumnos', 'vacio', 'vacio'),
(31, 1, 'Comercial', 'Comercial', 'Ciencias economicas y administrativas'),
(32, 1, 'Geologia', 'Geologia', 'Ciencias quimicas'),
(33, 1, 'CFyM', 'vacio', 'Ciencias fisicas y matematicas'),
(34, 1, 'Mecanica', 'Ingenieria civil Mecanica', 'Ingenieria'),
(35, 1, 'Odontologia', 'Odontologia', 'Odontologia'),
(36, 1, 'Civil', 'Ingenieria Civil', 'Ingenieria'),
(37, 3, 'Medicina', 'Medicina', 'Medicina'),
(38, 3, 'Ingenieria Mecanica', 'Ingenieria civil Mecanica', 'Ingenieria'),
(39, 3, 'Ingenieria Civil', 'Ingenieria Civil', 'Ingenieria'),
(40, 3, 'Ingenieria Ambiental', 'Ingenieria Ambiental', 'Ambiental'),
(41, 3, 'DIE', 'vacio', 'Ingenieria'),
(42, 3, 'Senior A', 'vacio', 'vacio'),
(43, 3, 'IPVG', 'vacio', 'vacio'),
(44, 3, 'Farmacia', 'Farmacia', 'Farmacia y Nutricion'),
(45, 3, 'Ingenieria Civil Quimica', 'Ingenieria civil Quimica', 'Ingenieria'),
(46, 3, 'Lex', 'Derecho', 'Ciencias juridicas y sociales'),
(47, 4, 'Psicologia', 'Psicologia', 'Ciencias sociales'),
(48, 4, 'Ciencias Forestales', 'vacio', 'Ciencias Forestales'),
(49, 4, 'CFM', 'vacio', 'Ciencias fisicas y matematicas'),
(50, 4, 'Educacion', 'vacio', 'Educacion'),
(51, 4, 'Odontologia', 'Odontologia', 'Odontologia'),
(52, 4, 'Veterinaria', 'Veterinaria', 'Veterinaria'),
(53, 4, 'Senior B', 'vacio', 'vacio'),
(54, 4, 'Medicina B', 'Medicina', 'Medicina'),
(55, 5, 'Facultad La Ballena', 'vacio', 'Ciencias naturales y oceanograficas'),
(56, 5, 'Geologia', 'Geologia', 'Ciencias quimicas'),
(57, 5, 'Enfermeria', 'Enfermeria', 'Enfermeria'),
(58, 5, 'DEF', 'Educacion Fisica', 'Educacion'),
(59, 5, 'ICO', 'vacio', 'vacio'),
(60, 5, 'Auditoria', 'Auditoria', 'Ciencias economicas y administrativas'),
(61, 5, 'Agronomia', 'Agronomia', 'Ciencias Forestales'),
(62, 5, 'Kinesiologia B', 'Kinesiologia', 'Medicina'),
(63, 5, 'Teconologia Medica', 'Teconologia Medica', 'Medicina'),
(64, 5, 'Bioingenieria', 'Bioingenieria', 'vacio');


INSERT INTO `jugadores` (`jugadorid`, `equipoid`, `nombre`, `edad`, `ano_ingreso`) VALUES
(1, 1, 'Jeremias Torres', 23, 2013),
(2, 2, 'Juan Ignacio Burgos', 20, 2017),
(3, 1, 'Abelardo Norambuena', 23, 2014),
(4, 1, 'Alan Cotal', 18, 2018),
(5, 1, 'Benjamin Rodriguez', 21, 2015),
(6, 2, 'Diego Pulgar', 18, 2018),
(7, 3, 'Vicente Hernandez', 23, 2014),
(8, 3, 'Gonzalo Gutierrez', 19, 2017),
(9, 4, 'Alejandro Fuentes', 24, 2012),
(10, 4, 'Anibal de la Fuente', 25, 2011),
(11, 5, 'Julio Ibarra', 30, 2008),
(12, 5, 'Rodrigo Salazar', 25, 2011),
(13, 6, 'Nicolas Herrera', 19, 2017),
(14, 6, 'Juan Marin', 19, 2017),
(15, 7, 'Jorge Carcamo', 19, 2017),
(16, 7, 'Francisco Ibañez', 22, 2014),
(17, 8, 'Manuel Astroza', 18, 2018),
(18, 8, 'Andres Elgueda', 23, 2013),
(19, 9, 'Bastian Fernandez', 21, 2015),
(20, 9, 'Luis Gatica', 23, 2014),
(21, 10, 'Luis Barril', 34, 2006),
(22, 10, 'Pedro Nuñez', 58, 2006),
(23, 11, 'Paul Concha', 25, 2012),
(24, 11, 'Rodrigo Inzunza', 21, 2015),
(25, 12, 'Pablo Marin', 22, 2015),
(26, 12, 'Nicolas Verdugo', 20, 2016),
(27, 13, 'Leonardo Uribe', 20, 2016),
(28, 13, 'Gabriel Cires', 20, 2016),
(29, 14, 'Domingos Wissi', 21, 2015),
(30, 14, 'Raul Baier', 20, 2016),
(31, 15, 'Hector Gonzalez', 20, 2016),
(32, 15, 'Juan Pablo Morgado', 20, 2016),
(33, 16, 'Angel Maldonado', 23, 2014),
(34, 16, 'Alejandro Leal', 25, 2011),
(35, 17, 'Walter Victtoriano', 23, 2013),
(36, 17, 'Valentin Betancur', 26, 2011),
(37, 18, 'Mauricio Novoa', 20, 2016),
(38, 18, 'Piero Riva', 20, 2016),
(39, 19, 'Luciano Rojas', 23, 2013),
(40, 19, 'Ignacio Riquelme', 20, 2016),
(41, 21, 'Diego Munita', 20, 2016),
(42, 21, 'Jose Inostroza', 20, 2016),
(43, 20, 'Ricardo Oñate', 20, 2016),
(44, 20, 'Carlos Parra', 20, 2016),
(45, 22, 'Omar Zambrano', 22, 2014),
(46, 22, 'Gustavo Salazar', 23, 2013),
(47, 23, 'Felipe Henriquez', 22, 2014),
(48, 23, 'Pablo Campos', 22, 2014),
(49, 24, 'Eduardo Mella', 25, 2011),
(50, 24, 'Christian Pena', 25, 2011),
(51, 25, 'Mauricio Echeverria', 24, 2012),
(52, 25, 'Abraham Pavez', 20, 2016),
(53, 26, 'Francisco Flores', 20, 2015),
(54, 27, 'Pedro Fuentes', 23, 2013),
(55, 28, 'Gabriel Sanhueza', 24, 2011),
(56, 29, 'Nicolas Bizama', 24, 2012),
(57, 30, 'Matias Cleveland', 28, 2008),
(58, 30, 'Leonardo Abarzua', 32, 2006),
(59, 31, 'Pablo Sanhueza', 20, 2016),
(60, 31, 'Erwyn Riquelme', 20, 2016),
(61, 32, 'Nelson Andreau', 25, 2011),
(62, 32, 'Emilio Vergara', 25, 2011),
(63, 33, 'Matias Cartes', 20, 2016),
(64, 33, 'Bastian Reinoso', 20, 2016),
(65, 34, 'Allan Mora', 20, 2017),
(66, 34, 'Victor Perez', 25, 2012),
(67, 35, 'Pablo Hernandez', 20, 2016),
(68, 35, 'Hernan Fuentes', 20, 2016),
(69, 36, 'Felipe Vidal', 23, 2015),
(70, 36, 'Alberto Romero', 23, 2014);

INSERT INTO `lugares` (`lugarid`, `nombre`, `ubicacion`, `capacidad`) VALUES
(1, 'Cancha sintetica Universidad de Concepcion', NULL, '50000 espectadores'),
(2, 'Cancha de Hockey', 'Al lado del edificio Virginio Gomez', '200000 espectadores'),
(3, 'Jaulas', 'Estadio UdeC', '2 personas');



INSERT INTO `sanciones` (`sancionid`, `jugadorid`, `tiempo`, `comentario`) VALUES
(1, 1, '25 fechas', 'Por buen tipo');

INSERT INTO `partidos` (`partidoid`, `equipo_1`, `equipo_2`, `divisionid`, `lugarid`, `ganador`, `fecha`, `hora`) VALUES
(1, 23, 20, 1, 1, 20, '2018-08-27', '10:30 hrs'),
(2, 13, 5, 2, 1, 5, '2018-08-27', '12:00 hrs'),
(3, 26, 33, 1, 1, 26, '2018-08-27', '13:30 hrs'),
(4, 3, 18, 2, 1, 3, '2018-08-27', '15:00 hrs'),
(5, 28, 21, 1, 1, 21, '2018-08-28', '14:00 hrs'),
(6, 12, 17, 2, 1, 12, '2018-08-28', '15:30 hrs'),
(7, 22, 29, 1, 1, 22, '2018-08-29', '12:00 hrs'),
(8, 1, 6, 2, 1, 6, '2018-08-29', '13:30 hrs'),
(9, 8, 2, 2, 1, 8, '2018-08-29', '15:00 hrs'),
(10, 20, 33, 1, 1, NULL, '2018-08-30', '10:30 hrs'),
(11, 32, 23, 1, 1, 23, '2018-08-30', '12:00 hrs'),
(12, 25, 24, 1, 1, 24, '2018-08-30', '13:30 hrs'),
(13, 3, 16, 2, 1, 3, '2018-08-30', '15:00 hrs'),
(14, 2, 14, 2, 1, 2, '2018-08-31', '10:30 hrs'),
(15, 34, 31, 1, 1, 31, '2018-08-31', '12:00 hrs'),
(16, 10, 17, 2, 1, 10, '2018-08-31', '13:30 hrs'),
(17, 35, 19, 1, 1, 19, '2018-08-31', '19:00 hrs'),
(18, 27, 36, 1, 1, 27, '2018-08-31', '20:30 hrs'),
(19, 11, 7, 2, 1, 11, '2018-09-01', '15:00 hrs'),
(20, 4, 13, 2, 1, 4, '2018-09-01', '16:30 hrs'),
(21, 9, 15, 2, 1, 9, '2018-09-01', '18:00 hrs'),
(22, 30, 32, 1, 1, 30, '2018-09-01', '19:30 hrs'),
(23, 11, 12, 2, 1, 11, '2018-09-03', '10:30 hrs'),
(24, 25, 33, 1, 1, 25, '2018-09-03', '12:00 hrs'),
(25, 10, 9, 2, 1, 10, '2018-09-03', '13:30 hrs'),
(26, 3, 13, 2, 1, 3, '2018-09-03', '15:00 hrs'),
(27, 16, 14, 2, 1, 16, '2018-09-04', '10:30 hrs'),
(28, 26, 22, 1, 1, 26, '2018-09-04', '14:00 hrs'),
(29, 20, 36, 1, 1, 20, '2018-09-04', '15:30 hrs'),
(30, 15, 8, 2, 1, NULL, '2018-09-05', '12:00 hrs'),
(31, 19, 24, 1, 1, 19, '2018-09-05', '13:30 hrs'),
(32, 23, 31, 1, 1, 23, '2018-09-05', '15:00 hrs'),
(33, 5, 1, 2, 1, 5, '2018-09-06', '10:30 hrs'),
(34, 16, 17, 2, 1, NULL, '2018-09-06', '12:00 hrs'),
(35, 4, 18, 2, 1, 4, '2018-09-06', '13:30 hrs'),
(36, 21, 29, 1, 1, 21, '2018-09-06', '15:00 hrs'),
(37, 2, 13, 2, 1, 2, '2018-09-07', '10:30 hrs'),
(38, 7, 14, 2, 1, 7, '2018-09-07', '19:00 hrs'),
(39, 30, 28, 1, 1, 30, '2018-09-07', '20:30 hrs'),
(40, 4, 6, 2, 1, 4, '2018-09-08', '15:00 hrs'),
(41, 19, 34, 1, 1, 19, '2018-09-08', '16:30 hrs'),
(42, 20, 32, 1, 1, 20, '2018-09-08', '18:00 hrs'),
(43, 27, 35, 1, 1, 27, '2018-09-08', '19:30 hrs'),
(44, 9, 11, 2, 1, 11, '2018-09-10', '10:30 hrs'),
(45, 25, 32, 1, 1, 25, '2018-09-10', '12:00 hrs'),
(46, 24, 31, 1, 1, 24, '2018-09-10', '13:30 hrs'),
(47, 8, 16, 2, 1, 8, '2018-09-10', '15:00 hrs'),
(48, 19, 28, 1, 1, 19, '2018-09-11', '10:30 hrs'),
(49, 6, 15, 2, 1, 6, '2018-09-11', '14:00 hrs'),
(50, 21, 36, 1, 1, 21, '2018-09-11', '15:30 hrs'),
(51, 6, 3, 2, 1, 6, '2018-09-12', '12:00 hrs'),
(52, 23, 29, 1, 1, 23, '2018-09-12', '13:30 hrs'),
(53, 22, 31, 1, 1, 22, '2018-09-12', '15:00 hrs'),
(54, 19, 33, 1, 1, 19, '2018-09-13', '10:30 hrs'),
(55, 1, 7, 2, 1, 7, '2018-09-13', '12:00 hrs'),
(56, 10, 12, 2, 1, NULL, '2018-09-13', '13:30 hrs'),
(57, 14, 18, 2, 1, 14, '2018-09-13', '15:00 hrs'),
(58, 22, 23, 1, 1, 22, '2018-09-24', '10:30 hrs'),
(59, 29, 19, 1, 1, NULL, '2018-09-24', '12:00 hrs'),
(60, 24, 33, 1, 1, 24, '2018-09-24', '13:30 hrs'),
(61, 3, 11, 2, 1, 3, '2018-09-24', '15:00 hrs'),
(62, 26, 34, 1, 1, 26, '2018-09-25', '10:30 hrs'),
(63, 28, 31, 1, 1, 28, '2018-09-25', '14:00 hrs'),
(64, 32, 36, 1, 1, 32, '2018-09-25', '15:30 hrs'),
(65, 5, 18, 2, 1, 5, '2018-09-26', '12:00 hrs'),
(66, 13, 15, 2, 1, 13, '2018-09-26', '13:30 hrs'),
(67, 2, 12, 2, 1, 2, '2018-09-26', '15:00 hrs'),
(68, 7, 16, 2, 1, 7, '2018-09-27', '10:30 hrs'),
(69, 20, 28, 1, 1, 20, '2018-09-27', '12:00 hrs'),
(70, 4, 10, 2, 1, 4, '2018-09-27', '13:30 hrs'),
(71, 29, 36, 1, 1, 29, '2018-09-27', '15:00 hrs'),
(72, 14, 13, 2, 1, 13, '2018-09-28', '10:30 hrs'),
(73, 9, 12, 2, 1, 9, '2018-09-28', '12:00 hrs'),
(74, 24, 34, 1, 1, 24, '2018-09-28', '13:30 hrs'),
(75, 8, 1, 2, 1, 8, '2018-09-28', '19:00 hrs'),
(76, 27, 25, 1, 1, 27, '2018-09-28', '20:30 hrs'),
(77, 30, 35, 1, 1, 30, '2018-09-29', '15:00 hrs'),
(78, 17, 7, 2, 1, NULL, '2018-09-29', '16:30 hrs'),
(79, 6, 16, 2, 1, 6, '2018-09-29', '18:00 hrs'),
(80, 21, 33, 1, 1, 21, '2018-09-29', '19:30 hrs'),
(81, 22, 20, 1, 1, 20, '2018-10-01', '10:30 hrs'),
(82, 16, 5, 2, 1, NULL, '2018-10-01', '12:00 hrs'),
(83, 26, 31, 1, 1, 26, '2018-10-01', '13:30 hrs'),
(84, 18, 12, 2, 1, 12, '2018-10-01', '15:00 hrs'),
(85, 34, 28, 1, 1, NULL, '2018-10-02', '10:30 hrs'),
(86, 6, 9, 2, 1, 6, '2018-10-02', '14:00 hrs'),
(87, 21, 23, 1, 1, 21, '2018-10-02', '15:30 hrs'),
(88, 25, 29, 1, 1, 25, '2018-10-03', '12:00 hrs'),
(89, 7, 8, 2, 1, NULL, '2018-10-03', '13:30 hrs'),
(90, 2, 17, 2, 1, 2, '2018-10-03', '15:00 hrs'),
(91, 5, 6, 2, 1, NULL, '2018-10-04', '10:30 hrs'),
(92, 33, 28, 1, 1, 33, '2018-10-04', '12:00 hrs'),
(93, 4, 12, 2, 1, 4, '2018-10-04', '13:30 hrs'),
(94, 15, 2, 2, 1, 2, '2018-10-05', '10:30 hrs'),
(95, 1, 17, 2, 1, 1, '2018-10-05', '12:00 hrs'),
(96, 25, 34, 1, 1, 25, '2018-10-05', '13:30 hrs'),
(97, 4, 7, 2, 1, 4, '2018-10-06', '15:00 hrs'),
(98, 30, 24, 1, 1, 30, '2018-10-06', '16:30 hrs'),
(99, 27, 32, 1, 1, 27, '2018-10-06', '18:00 hrs'),
(100, 35, 36, 1, 1, 35, '2018-10-06', '19:30 hrs');

INSERT INTO `partido_jugadors` (`partidoid`, `jugadorid`, `puntos`, `triples`, `amarilla`, `roja`, `faltas_b`) VALUES
(1, 1, 3, 0, 1, 0, 0);


INSERT INTO `arbitros` (`arbitroid`, `nombre`, `carrera`, `fecha_ingreso`) VALUES
(1, 'Nicolas Pavez', 'Ingenieria civil Industrial', '2018-09-10'),
(2, 'Franco Roca', 'Ingenieria civil Metalurgica', '2018-09-02'),
(3, 'Diego Pino', 'Educacion Fisica', '2018-09-02');

INSERT INTO `arbitrajes` (`partidoid`, `arbitroid`, `tipo`) VALUES
(1, 1, 'Juez Central');

INSERT INTO `usuarios` (`usuarioid`, `nombre`, `correo`, `password`, `admin`) VALUES
(1, 'Daniel Ortega', 'chilotesensual@llamame.cl', 'elcostillaresmio', NULL),
(2, 'Julio Zapata', NULL, '12345678', NULL),
(3, 'Julio Zapata', NULL, '12345678', NULL),
(4, 'fzf Zapata', NULL, 'fexrer42', NULL),
(5, 'asdfasdfasdf Zapata', NULL, 'pass', NULL);

