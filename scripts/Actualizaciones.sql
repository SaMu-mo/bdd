select * from productos
update productos set stock =0
where stock is null


select * from cuentas
update cuentas set saldo=10
where cedula_propietario ='17%'


select * from estudiantes
update estudiantes set apellido ='Hernandez'
where cedula = '17%'


select * from registros
update registros set cedula_empleado =082345679
where fecha between '2025-08-01' and '2025-08-31';



select * from videojuegos
update videojuegos set descripcion ='Mejor puntuado'
where valoracion > 9


select * from transacciones
UPDATE transacciones
SET tipo = 'T'
WHERE monto::numeric > 100
  AND monto::numeric < 500
  AND fecha BETWEEN '2025-09-01 14:00:00' AND '2025-09-30 20:00:00';




