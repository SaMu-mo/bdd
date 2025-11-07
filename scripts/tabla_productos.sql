create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (50),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
	)

	insert into productos (codigo, nombre, descripcion, precio, stock)
	values (1.1,'arroz','rico',5,10);
	insert into productos (codigo, nombre, descripcion, precio, stock)
	values (2,'lentejas','libra',4,9);
	insert into productos (codigo, nombre, descripcion, precio, stock)
	values (3,'frijol','kilo',10,2);
	insert into productos (codigo, nombre, descripcion, precio, stock)
	values (4,'carne','chancho',1.5,5);
	insert into productos (codigo, nombre, descripcion, precio, stock)
	values (5,'pollo','filete',9.5,7);
--solo campos obligatorios
	insert into productos (codigo, nombre, precio, stock)
	values (6,'azucar',0.6,20);
	insert into productos (codigo, nombre, precio, stock)
	values (7,'sal',0.8,10);
	insert into productos (codigo, nombre, precio, stock)
	values (8,'aceite',1,15);
	
	select * from productos