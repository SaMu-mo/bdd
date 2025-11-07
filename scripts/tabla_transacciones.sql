create table transacciones(
	codigo int not null,
	numero_cuenta char (5) not null,
	monto money not null,
	tipo char (1),
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
	)

	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (1,'12345',100,'D','9/10/2022','09:50');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (2,'12354',110,'C','9/10/2022','09:40');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (3,'12435',120,'D','9/10/2022','09:20');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (4,'13254',80,'C','9/10/2022','09:35');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (5,'21345',90,'D','9/10/2022','09:48');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (6,'02354',10,'C','9/10/2022','20:40');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (7,'10345',150,'D','9/10/2022','19:50');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (8,'12054',50,'C','9/10/2022','21:40');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (9,'12305',70,'D','9/10/2022','08:50');
	insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
	values (10,'12350',97,'C','9/10/2022','07:30');