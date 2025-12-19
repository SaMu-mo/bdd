SELECT nombre, apellido
FROM clientes
WHERE cedula LIKE '%7%';


SELECT *
FROM clientes
WHERE cedula = (
  SELECT cedula
  FROM clientes
  WHERE nombre = 'Monica'
);
