SELECT p.cantidad_ahorrada, pr.monto, pr.garante
FROM persona p
JOIN prestamo pr ON pr.cedula = p.cedula
WHERE pr.monto::numeric BETWEEN 100 AND 1000;


SELECT *
FROM persona
WHERE cedula = (
  SELECT cedula
  FROM persona
  WHERE nombre = 'Sean'
  LIMIT 1
);
