SELECT c.numero_cuenta, u.nombre
FROM cuentas c
JOIN usuario u ON c.cedula_propietario = u.cedula
WHERE c.saldo::numeric BETWEEN 100 AND 1000;
