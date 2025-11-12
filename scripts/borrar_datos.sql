select * from productos 
delete from productos 
where descripcion is null


select * from cuentas
delete from cuentas 
where cedula_propietario = '10%'


select * from estudiantes 
delete from estudiantes 
where cedula ='%05'


select * from registros 
delete from registros 
where fecha between '2025/05/01' and '2025/06/30'


select * from videojuegos 
delete from videojuegos 
where valoracion < 7


select * from transacciones 
delete from transacciones 
where hora between '14:00' and '18:00'

