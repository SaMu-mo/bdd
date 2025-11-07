create table cuentas(
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
	)

	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('12345','54321','7/11/2025',100);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('12255','57821','7/11/2025',120);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('11345','45321','7/11/2025',140);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('13345','53421','7/11/2025',160);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('12445','54231','7/11/2025',80);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('12355','54312','7/11/2025',100);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('52345','54398','7/11/2025',110);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('14345','54871','7/11/2025',90);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('12145','56521','7/11/2025',190);
	insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
	values ('12395','82321','7/11/2025',200);
	