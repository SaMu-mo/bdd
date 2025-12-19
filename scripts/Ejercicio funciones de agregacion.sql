/* =====================================================
   1. CUENTAS – USUARIO
   ===================================================== */

/* Saldo promedio de las cuentas de un usuario específico */
SELECT AVG(c.saldo::numeric) AS saldo_promedio
FROM cuentas c
WHERE c.cedula_propietario = '1234567890';

/* Número total de cuentas por tipo de cuenta */
SELECT u.tipo_cuenta, COUNT(*) AS total_cuentas
FROM cuentas c
JOIN usuario u ON c.cedula_propietario = u.cedula
GROUP BY u.tipo_cuenta;


/* =====================================================
   2. CLIENTES – COMPRAS
   ===================================================== */

/* Monto total de compras realizadas por cada cliente */
SELECT c.cedula, SUM(co.monto) AS total_compras
FROM clientes c
JOIN compras co ON c.cedula = co.cedula
GROUP BY c.cedula;

/* Cantidad total de compras en una fecha específica */
SELECT COUNT(*) AS total_compras
FROM compras
WHERE fecha_compra = '2023-09-21';


/* =====================================================
   3. ESTUDIANTES – PROFESORES
   ===================================================== */

/* Cantidad total de estudiantes asignados a cada profesor */
SELECT codigo_profesor, COUNT(*) AS total_estudiantes
FROM estudiantes
GROUP BY codigo_profesor;

/* Edad promedio de los estudiantes (redondeada) */
SELECT ROUND(
  AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))
) AS edad_promedio
FROM estudiantes;


/* =====================================================
   4. PERSONA – PRÉSTAMO
   ===================================================== */

/* Suma total de los montos de préstamos por persona */
SELECT p.cedula, SUM(pr.monto::numeric) AS total_prestamos
FROM persona p
JOIN prestamo pr ON p.cedula = pr.cedula
GROUP BY p.cedula;

/* Cantidad total de personas con más de un hijo */
SELECT COUNT(*) AS total_personas
FROM persona
WHERE numero_hijos > 1;


/* =====================================================
   5. PRODUCTOS – VENTAS
   ===================================================== */

/* Precio máximo de todos los productos */
SELECT MAX(precio::numeric) AS precio_maximo
FROM productos;

/* Suma total de la cantidad de productos vendidos */
SELECT SUM(cantidad) AS total_productos_vendidos
FROM ventas;


/* =====================================================
   6. TRANSACCIONES – BANCO
   ===================================================== */

/* Cantidad total de transacciones de tipo 'C' */
SELECT COUNT(*) AS total_transacciones_credito
FROM transacciones
WHERE tipo = 'C';

/* Promedio de montos de transacciones por número de cuenta */
SELECT numero_cuenta,
       ROUND(AVG(CAST(monto AS decimal)), 2) AS monto_promedio
FROM transacciones
GROUP BY numero_cuenta;


/* =====================================================
   7. VIDEOJUEGOS – PLATAFORMAS
   ===================================================== */

/* Cantidad total de plataformas disponibles para cada videojuego */
SELECT codigo_videojuego, COUNT(*) AS total_plataformas
FROM plataformas
GROUP BY codigo_videojuego;

/* Valoración promedio de todos los videojuegos */
SELECT ROUND(AVG(valoracion), 2) AS valoracion_promedio
FROM videojuegos;


/* =====================================================
   8. REGISTROS_ENTRADA – EMPLEADO
   ===================================================== */

/* Cantidad total de registros de entrada por empleado */
SELECT codigo_empleado, COUNT(*) AS total_registros_entrada
FROM registros_entrada
GROUP BY codigo_empleado;

/* Fecha mínima y máxima de los registros de entrada */
SELECT MIN(fecha) AS fecha_minima,
       MAX(fecha) AS fecha_maxima
FROM registros_entrada;
