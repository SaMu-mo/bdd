-- 1. Seleccionar todos los productos con stock igual a 10 y precio menor a 10
SELECT * FROM productos
WHERE stock = 10 AND precio::numeric < 10;


-- 2. Seleccionar los nombre y stocks de todos los productos que tengan un "m" en su nombre o tengan un espacio en blanco en su descripción
SELECT nombre, stock FROM productos
WHERE nombre LIKE '%m%' OR descripcion LIKE '% %';

-- 3. Seleccionar el nombre de todos los productos que tengan NULL el campo de descripción o tengan un stock de 0
SELECT nombre FROM productos
WHERE descripcion IS NULL OR stock = 0;

--Cuentas

-- 1. Seleccionar el número de cuenta y saldo de todas las cuentas con saldo mayor a 100 y menor a 1000
SELECT numero_cuenta, saldo FROM cuentas
WHERE saldo::numeric > 100 AND saldo::numeric < 1000;

-- 2. Seleccionar las cuentas entre el día de hoy hasta hace 1 año
SELECT * FROM cuentas
WHERE fecha_creacion BETWEEN '11/11/2024' AND '11/11/2025'

-- 3. Seleccionar las cuentas con saldo 0 o con una cédula de propietario que termine con 2
SELECT * FROM cuentas
WHERE saldo::numeric = 0 OR cedula_propietario LIKE '%2';

-- ESTUDIANTES

-- 1. Seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen con M o si su apellido termine en Z
SELECT nombre, apellido FROM estudiantes
WHERE nombre LIKE 'M%' OR apellido LIKE '%Z';

-- 2. Crear un select que traiga los nombres de todos los estudiantes que tenga un número 32 y empiece con 18 en alguna parte de su cédula
SELECT nombre FROM estudiantes
WHERE cedula LIKE '%32%' AND cedula LIKE '18%';

-- 3. Crear un select que traiga los nombres completos de todos los estudiantes cuya cédula termine en 06 o empiece con 17
SELECT nombre FROM estudiantes
WHERE cedula LIKE '%06' OR cedula LIKE '17%';

-- REGISTROS DE ENTRADA

-- 1. Seleccionar los registros del mes de septiembre, o realizados por las cédulas de Pichincha (que inician con 17)
SELECT * FROM registros
WHERE (fecha >= '2025-09-01 00:00:00' AND fecha < '2025-10-01 00:00:00')
   OR cedula_empleado LIKE '17%';

-- 2. Seleccionar los registros del mes de agosto, realizados por las cédulas de Pichincha (que inician con 17) y realizados entre las 08:00 a 12:00
SELECT * FROM registros
WHERE (fecha >= '2025-08-01 08:00:00' AND fecha < '2025-08-01 12:00:00')
   AND cedula_empleado LIKE '17%';

-- 3. Seleccionar los registros del mes de agosto, realizados por las cédulas de Pichincha (que inician con 17) y realizados entre las 08:00 a 12:00   
-- o los registros del mes de septiembre, realizados por las cédulas de Esmeraldas (que inician con 08) y realizados entre las 09:00 a 13:00
SELECT * FROM registros
WHERE (fecha >= '2025-08-01 08:00:00' AND fecha < '2025-08-01 12:00:00' 
       AND cedula_empleado LIKE '17%')
   OR (fecha >= '2025-09-01 09:00:00' AND fecha < '2025-09-01 13:00:00'
       AND cedula_empleado LIKE '08%');

-- **VIDEOJUEGOS**

-- 1. Listar los registros de videojuegos con un nombre que contengan la letra "C” o una valoración de 7
SELECT * FROM videojuegos
WHERE nombre LIKE '%C%' OR valoracion = 7;

-- 2. Seleccionar videojuegos con un código entre 3 y 7 o una valoración de 7
SELECT * FROM videojuegos
WHERE codigo BETWEEN 3 AND 7 OR valoracion = 7;

-- 3. Seleccionar videojuegos de guerra, con una valoración mayor a 7 y que en su nombre empiecen con C o los videojuegos con una valoración mayor a 8 y que en su nombre empiecen con D
SELECT * FROM videojuegos
WHERE (descripcion = 'guerra' AND valoracion > 7 AND nombre LIKE 'C%')
   OR (valoracion > 8 AND nombre LIKE 'D%');

-- **TRANSACCIONES**

-- 1. Seleccionar transacciones de tipo C realizadas por los clientes con número de cuentas entre 222001 y 22004
SELECT * FROM transacciones
WHERE tipo = 'C' AND numero_cuenta::numeric BETWEEN 222001 AND 22004;

-- 2. Seleccionar transacciones de tipo D que fueron realizadas el 25 de mayo y con el rango de cuenta entre 22007 y 22010
SELECT * FROM transacciones
WHERE tipo = 'D' AND fecha = '2025-05-25' AND numero_cuenta::numeric BETWEEN 22007 AND 22010;

-- 3. Seleccionar todas las transacciones en donde el código sea entre 1 y 5, número de cuenta entre 22002 o 22004 que se hayan realizado los días 26 y 29 de mayo
SELECT * FROM transacciones
WHERE (codigo::numeric BETWEEN 1 AND 5)
  AND (numero_cuenta::numeric BETWEEN 22002 AND 22004)
  AND fecha BETWEEN '2025-05-26' AND '2025-05-29';

