CREATE TABLE empleado (
  codigo_empleado INT PRIMARY KEY,
  nombre VARCHAR(25) NOT NULL,
  fecha DATE,
  hora TIME
);

CREATE TABLE registros_entrada (
  codigo_registro INT PRIMARY KEY,
  cedula_empleado CHAR(10) NOT NULL,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  codigo_empleado INT NOT NULL,
  FOREIGN KEY (codigo_empleado) REFERENCES empleado(codigo_empleado)
);
