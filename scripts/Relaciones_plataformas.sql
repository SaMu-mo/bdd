CREATE TABLE plataformas (
  id_plataforma INT PRIMARY KEY,
  nombre_plataforma VARCHAR(50) NOT NULL,
  codigo_videojuego INT,
  FOREIGN KEY (codigo_videojuego) REFERENCES videojuegos(codigo)
);
