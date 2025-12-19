/* =====================================================
   REINICIO (OPCIONAL)
   Si ya existen tablas, esto las borra en orden seguro
   ===================================================== */
DROP TABLE IF EXISTS proyecto_municipio;
DROP TABLE IF EXISTS proyecto;
DROP TABLE IF EXISTS municipio;
DROP TABLE IF EXISTS ciudad;

DROP TABLE IF EXISTS reservas;
DROP TABLE IF EXISTS huespedes;
DROP TABLE IF EXISTS habitaciones;

DROP TABLE IF EXISTS usuario_grupo;
DROP TABLE IF EXISTS grupo;
DROP TABLE IF EXISTS usuarios;


/* =====================================================
   1) MUCHOS A MUCHOS: USUARIOS – GRUPO
   ===================================================== */

/* TABLAS */
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(25) NOT NULL,
  apellido VARCHAR(25) NOT NULL,
  fecha_nacimiento DATE
);

CREATE TABLE grupo (
  id INT PRIMARY KEY,
  nombre VARCHAR(25) NOT NULL,
  descripcion VARCHAR(75),
  fecha_creacion DATE
);

CREATE TABLE usuario_grupo (
  us_id INT NOT NULL,
  gr_id INT NOT NULL,
  PRIMARY KEY (us_id, gr_id),
  FOREIGN KEY (us_id) REFERENCES usuarios(id),
  FOREIGN KEY (gr_id) REFERENCES grupo(id)
);

/* INSERTS */
INSERT INTO usuarios (id,nombre,apellido,fecha_nacimiento) VALUES
(1,'Marilyn','Sagñay','2023-11-05'),
(2,'Romel','Chamba','2023-11-06'),
(3,'Mario','Guzñay','2023-11-05'),
(4,'Johann','Domo','2023-11-07'),
(5,'Monserrate','Vera','2023-11-05'),
(6,'Lucio','Vargas','2023-11-05'),
(7,'Martín','Arizaga','2023-11-05'),
(8,'Fricson','Erazo','2023-11-05'),
(9,'Jairo','Obando','2023-11-05'),
(10,'Berni','Tomalá','2023-11-05');

INSERT INTO grupo (id,nombre,descripcion,fecha_creacion) VALUES
(1,'Maternal 1','Grupo de maternal matutino','2020-03-08'),
(2,'Maternal 2','Grupo de maternal vepertino','2020-03-08'),
(3,'Maternal 3','Grupo de maternal nocturno','2020-03-08'),
(4,'Incial 1','Grupo de inicial matutino','2021-03-15'),
(5,'Incial 2','Grupo de inicial vespertino','2021-03-15'),
(6,'Incial 3','Grupo de inicial nocturno','2021-03-15'),
(7,'Incial intensivo','Grupo de inicial días sabados','2021-03-15'),
(8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','2022-03-15'),
(9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','2022-03-15'),
(10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','2022-03-15');

INSERT INTO usuario_grupo (us_id,gr_id) VALUES
(1,8),(2,3),(3,8),(4,9),(5,1),(6,2),(7,8),(8,8),(9,10),(10,1);

/* QUERYS (Consulta / Subconsulta / Agregación) */
-- Consulta 1
SELECT u.nombre AS usuario, g.nombre AS grupo
FROM usuarios u
JOIN usuario_grupo ug ON u.id = ug.us_id
JOIN grupo g ON g.id = ug.gr_id;

-- Subconsulta 1 (grupo 1)
SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 1);

-- Agregación 1
SELECT g.nombre, COUNT(ug.us_id) AS total_usuarios
FROM grupo g
JOIN usuario_grupo ug ON g.id = ug.gr_id
GROUP BY g.nombre;


/* =====================================================
   2) MUCHOS A MUCHOS: HABITACIONES – HUÉSPEDES
   ===================================================== */

/* TABLAS */
CREATE TABLE habitaciones (
  habitacion_numero INT PRIMARY KEY,
  precio_por_noche DECIMAL NOT NULL,
  piso INT NOT NULL,
  max_personas INT
);

CREATE TABLE huespedes (
  id INT PRIMARY KEY,
  nombres VARCHAR(45) NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  telefono CHAR(10),
  correo VARCHAR(45),
  direccion VARCHAR(45),
  ciudad VARCHAR(45),
  pais VARCHAR(45)
);

CREATE TABLE reservas (
  habitacion INT NOT NULL,
  huesped_id INT NOT NULL,
  inicio_fecha DATE,
  fin_fecha DATE,
  PRIMARY KEY (habitacion, huesped_id),
  FOREIGN KEY (habitacion) REFERENCES habitaciones(habitacion_numero),
  FOREIGN KEY (huesped_id) REFERENCES huespedes(id)
);

/* INSERTS */
INSERT INTO habitaciones (habitacion_numero,precio_por_noche,piso,max_personas) VALUES
(1,40.0,4,4),(2,20.0,4,2),(3,40.0,4,4),
(4,40.0,3,4),(5,20.0,3,2),(6,20.0,3,2),
(7,20.0,2,2),(8,20.0,2,2),(9,20.0,2,2),
(10,15.0,1,1),(11,15.0,1,1),(12,15.0,1,1);

-- teléfonos ajustados a 10 dígitos para CHAR(10)
INSERT INTO huespedes (id,nombres,apellidos,telefono,correo,direccion,ciudad,pais) VALUES
(1,'Ricardo','Montero','0980658774','Ricmontero@gmail.com',NULL,NULL,NULL),
(2,'Sofía','Martinez','0988756320','Sofimar@gmail.com',NULL,NULL,NULL),
(3,'Yamilteh','Guami','0998763298','YAMGUAM@gmail.com',NULL,NULL,NULL),
(4,'Esther','Contreras','0995783602','Esthcontro@gmail.com',NULL,NULL,NULL),
(5,'Wiliam','Mantilla','0985879632','wmANTILLA@gmail.com',NULL,NULL,NULL),
(6,'Carmen','Noguera','0995876321','Cnoguera@gmail.com',NULL,NULL,NULL),
(7,'Anika','Jimenez','0978965432','AniJimenez@gmail.com',NULL,NULL,NULL),
(8,'Belen','Orejuela','0996365748','BOrejuela@gmail.com',NULL,NULL,NULL),
(9,'Diana','Monroy','0987963214','DianaMroy@gmail.com',NULL,NULL,NULL),
(10,'Bryan','Moncada','0986325741','BrMoncada@gmail.com',NULL,NULL,NULL);

INSERT INTO reservas (inicio_fecha,fin_fecha,habitacion,huesped_id) VALUES
('2023-05-11','2023-05-12',2,10),
('2023-05-11','2023-05-12',2,9),
('2023-06-22','2023-06-23',1,1),
('2023-06-22','2023-06-23',1,2),
('2023-06-22','2023-06-23',1,3),
('2023-06-22','2023-06-23',1,4),
('2023-01-01','2023-01-02',12,5),
('2023-08-11','2023-08-12',11,6),
('2023-05-11','2023-05-12',10,7),
('2023-05-11','2023-05-12',9,8);

/* QUERYS (Consulta / Subconsulta / Agregación) */
-- Consulta 1
SELECT h.habitacion_numero, hu.nombres, hu.apellidos
FROM habitaciones h
JOIN reservas r ON h.habitacion_numero = r.habitacion
JOIN huespedes hu ON hu.id = r.huesped_id;

-- Subconsulta 1 (habitación 2)
SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 2);

-- Agregación 1
SELECT h.habitacion_numero, COUNT(r.huesped_id) AS total_huespedes
FROM habitaciones h
JOIN reservas r ON h.habitacion_numero = r.habitacion
GROUP BY h.habitacion_numero;


/* =====================================================
   3) MUCHOS A MUCHOS: MUNICIPIO – PROYECTO
   ===================================================== */

/* TABLAS */
CREATE TABLE ciudad (
  id INT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL
);

CREATE TABLE municipio (
  id INT PRIMARY KEY,
  nombre VARCHAR(45),
  ciudad_id INT,
  FOREIGN KEY (ciudad_id) REFERENCES ciudad(id)
);

CREATE TABLE proyecto (
  id INT PRIMARY KEY,
  proyecto VARCHAR(50) NOT NULL,
  monto MONEY NOT NULL,
  fecha_inicio DATE,
  fecha_entrega DATE
);

CREATE TABLE proyecto_municipio (
  municipio_id INT NOT NULL,
  proyecto_id INT NOT NULL,
  PRIMARY KEY (municipio_id, proyecto_id),
  FOREIGN KEY (municipio_id) REFERENCES municipio(id),
  FOREIGN KEY (proyecto_id) REFERENCES proyecto(id)
);

/* INSERTS */
INSERT INTO ciudad (id,nombre) VALUES
(1,'Quito'),(2,'Ambato'),(3,'Guayaquil'),(4,'Machala'),(5,'Manta'),
(6,'Loja'),(7,'Otavalo'),(8,'Cuenca'),(9,'Latacunga'),(10,'Tena');

INSERT INTO municipio (id,nombre,ciudad_id) VALUES
(1,'GAD MUNICIPAL QUITO',1),
(2,'GAD MUNICIPAL DE CUENCA',8),
(3,'GAD MUNICIPALIDAD DE AMBATO',2),
(4,'MUNICIPALIDAD DE MACHALA',4),
(5,'MUNICIPIO DE GUAYAQUIL',3),
(6,'MUNICIPIO DE OTAVALO',7),
(7,'MUNICIPIO DE LOJA',6),
(8,'MUNICIPIO DE MANTA',5),
(9,'MUNICIPIO DE LATACUNGA',9),
(10,'MUNICIPIO DE TENA',10);

INSERT INTO proyecto (id,proyecto,monto,fecha_inicio,fecha_entrega) VALUES
(1,'Proyectos de Gestión Ambiental', '9543.327'::money,'2022-02-10','2023-02-10'),
(2,'Proyectos en Fomento y Desarrollo Productivo', '26553.264'::money,'2022-06-25','2022-08-10'),
(3,'Proyectos en Cambio Climático', '1292.194'::money,'2021-02-01','2023-12-10');

-- SOLO proyecto_id válidos: 1,2,3
INSERT INTO proyecto_municipio (municipio_id,proyecto_id) VALUES
(1,1),
(3,1),
(1,2),
(2,1),
(1,3),
(2,2),
(10,1),
(6,3),
(9,2),
(5,3);

/* QUERYS (Consulta / Subconsulta / Agregación) */
-- Consulta 1
SELECT m.nombre AS municipio, p.proyecto
FROM municipio m
JOIN proyecto_municipio pm ON m.id = pm.municipio_id
JOIN proyecto p ON p.id = pm.proyecto_id;

-- Subconsulta 1 (municipio 1)
SELECT proyecto
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 1);

-- Agregación 1
SELECT m.nombre, COUNT(pm.proyecto_id) AS total_proyectos
FROM municipio m
JOIN proyecto_municipio pm ON m.id = pm.municipio_id
GROUP BY m.nombre;
