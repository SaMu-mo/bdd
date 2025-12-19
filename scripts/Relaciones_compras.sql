

CREATE TABLE compras (
  id_compra INT PRIMARY KEY,
  cedula CHAR(10) NOT NULL,
  fecha_compra DATE NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (cedula) REFERENCES clientes(cedula)
);
