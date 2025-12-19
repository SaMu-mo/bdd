CREATE TABLE ventas (
  id_venta INT PRIMARY KEY,
  codigo_producto INT NOT NULL,
  fecha_venta DATE NOT NULL,
  cantidad INT,
  FOREIGN KEY (codigo_producto) REFERENCES productos(codigo)
);
