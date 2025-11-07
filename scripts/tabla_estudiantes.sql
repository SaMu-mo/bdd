create table estudiantes(
	cedula char(10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
	)

	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567896','Samuel','Meneses','pepito@gmail.com','19/12/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567891','Juan','Juarez','juan@gmail.com','18/11/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567892','Dilan','Salcedo','dilan@gmail.com','17/10/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567893','Armando','Paredes','pared@gmail.com','16/5/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567894','Aquiles','Brinco','saltar@gmail.com','15/4/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567895','Elsa','Pito','pelsa@gmail.com','14/3/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567897','Luis','Jaramillo','lucho@gmail.com','13/1/2005');
	insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
	values ('1234567898','Mario','Neta','neta@gmail.com','12/2/2005');