create table registros(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_pk primary key (codigo_registro)
	)

	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (1,'9876543210','7/11/2025','20:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (2,'8976543210','7/11/2025','19:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (3,'9876523210','7/11/2025','18:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (4,'9566543210','7/11/2025','17:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (5,'9876547810','7/11/2025','16:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (6,'4576543210','7/11/2025','15:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (7,'9876596210','7/11/2025','14:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (8,'9876531210','7/11/2025','13:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (9,'9876003210','7/11/2025','12:05');
	insert into registros (codigo_registro,cedula_empleado,fecha,hora)
	values (10,'9076543210','7/11/2025','11:05');