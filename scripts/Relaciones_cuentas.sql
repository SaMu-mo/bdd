CREATE TABLE cuentas (
  numero_cuenta CHAR(5) PRIMARY KEY,
  cedula CHAR(10),
  fecha_creacion DATE NOT NULL,
  saldo MONEY NOT NULL,
  FOREIGN KEY (cedula) REFERENCES usuario(cedula)
);
