--tabla alumno
create table alumno(
	id_alumno serial primary key,
	ap_paterno varchar(150) not null,
	ap_materno varchar(150) not null,
	nombre varchar(150) not null,
	email varchar(150) not null,
	contrasena varchar(8) not null
);

--tabla profesor
create table profesor(
	id_profesor serial primary key,
	ap_paterno varchar(150) not null,
	ap_materno varchar(150) not null,
	nombre varchar(150) not null,
	email varchar(150) not null,
	contrasena varchar(8) not null
);

drop database "plataformaUnam";

