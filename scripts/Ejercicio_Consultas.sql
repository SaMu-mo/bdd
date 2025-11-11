--Seleccionar productos que empiecen con "Q"
SELECT * FROM productos
WHERE nombre LIKE 'Q%';

--Seleccionar productos con una descripción NULL 
SELECT * FROM productos
WHERE descripcion IS NULL;



--Seleccionar productos con un precio entre 2 y 3
SELECT * FROM productos
WHERE precio::numeric BETWEEN 2 AND 3;

--Seleccionar el número de cuenta y el saldo de todas las cuentas
SELECT numero_cuenta, saldo FROM cuentas;

--Seleccionar las cuentas con transacciones entre hoy y dos meses atrás
SELECT * FROM cuentas
WHERE fecha_creacion BETWEEN '2025-09-11' AND '2025-11-11';
--año mes dia

--Seleccionar el número de cuenta y el saldo de las cuentas desde hoy hasta dos meses atrás
SELECT numero_cuenta, saldo  FROM cuentas
WHERE fecha_creacion BETWEEN '2025-09-11' AND '2025-11-11';

--Seleccionar el nombre y la cédula de todos los estudiantes
SELECT nombre, cedula FROM estudiantes;


--Seleccionar los estudiantes cuya cédula empiece con "17"
SELECT * FROM estudiantes
WHERE cedula LIKE '17%';

--Seleccionar los nombres completos de todos los estudiantes cuyo nombre empiece con "A"
SELECT * FROM estudiantes
WHERE nombre LIKE 'A%';

--Seleccionar todas las cédulas de empleado y la fecha y hora de los registros de entrada
SELECT cedula_empleado, fecha, hora FROM registros;


--Seleccionar los registros de entrada que estén entre las 7:00 y las 14:00
SELECT * FROM registros
WHERE hora BETWEEN '07:00' AND '14:00';


--Seleccionar los registros de entrada que tengan horas superiores a las 8:00
SELECT * FROM registros
WHERE hora > '08:00';


--Seleccionar todos los videojuegos con un nombre que comience con "C"
SELECT * FROM videojuegos
WHERE nombre LIKE 'C%';

--Seleccionar videojuegos con una valoración entre 9 y 10
SELECT * FROM videojuegos
WHERE valoracion BETWEEN 9 AND 10;

--Seleccionar videojuegos con una descripción NULL
SELECT * FROM videojuegos
WHERE descripcion IS NULL;


--Seleccionar todas las transacciones realizadas con un tipo "D"
SELECT * FROM transacciones
WHERE tipo = 'D';


--Seleccionar las transacciones con montos entre 200 y 2000
SELECT * FROM transacciones
WHERE monto BETWEEN 200 AND 2000;


--Seleccionar el código, monto, tipo y fecha de las transacciones que tengan una fecha diferente a NULL
SELECT codigo, monto, tipo, fecha FROM transacciones
WHERE fecha IS NOT NULL;






















