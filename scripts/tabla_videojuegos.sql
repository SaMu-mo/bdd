create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
	)

	insert into videojuegos (codigo,nombre,descripcion,valoracion)
	values (1,'Fifa','deportes',10);
	insert into videojuegos (codigo,nombre,descripcion,valoracion)
	values (2,'Uncharted','accion',9);
	insert into videojuegos (codigo,nombre,descripcion,valoracion)
	values (3,'ajedrez','estrategia',4);
	insert into videojuegos (codigo,nombre,descripcion,valoracion)
	values (4,'GTA V','aprendizaje',10);
	insert into videojuegos (codigo,nombre,descripcion,valoracion)
	values (5,'God Of War','accion',10);

	--solo campos obligatorios
	insert into videojuegos (codigo,nombre,valoracion)
	values (6,'Avengers',10);
	insert into videojuegos (codigo,nombre,valoracion)
	values (7,'Roblox',3);
	insert into videojuegos (codigo,nombre,valoracion)
	values (8,'Free Fire',8);

	