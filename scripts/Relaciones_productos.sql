CREATE TABLE productos (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(200),
  precio MONEY NOT NULL,
  stock INT NOT NULL
);
