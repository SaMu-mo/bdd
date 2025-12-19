CREATE TABLE persona (
  cedula CHAR(10) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  estatura DECIMAL(10,2),
  fecha_nacimiento DATE NOT NULL,
  hora_nacimiento TIME,
  cantidad_ahorrada MONEY,
  numero_hijos INT
);
CREATE TABLE prestamo (
  cedula CHAR(10),
  monto MONEY,
  fecha_prestamo DATE,
  hora_prestamo TIME,
  garante VARCHAR(40),
  FOREIGN KEY (cedula) REFERENCES persona(cedula)
);
