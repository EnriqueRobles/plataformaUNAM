--tabla alumno
create table alumno(
	id_alumno serial primary key,
	ap_paterno varchar(150) not null,
	ap_materno varchar(150) not null,
	nombre varchar(150) not null,
	email varchar(150) not null,
	contrasena varchar(255) not null,
	rol varchar(200) not null
);

--tabla profesor
create table profesor(
	id_profesor serial primary key,
	ap_paterno varchar(150) not null,
	ap_materno varchar(150) not null,
	nombre varchar(150) not null,
	email varchar(150) not null,
	contrasena varchar(255) not null,
	rol varchar(200) not null
);

drop database "plataforma";

--tabla roles
create table roles(
   usuario varchar(50) NOT NULL,
   pass varchar(50) NOT NULL,
   rol varchar(200) NOT NULL
);

INSERT INTO roles (usuario,pass,rol) VALUES
('enriquerobles85@aragon.unam.mx', '1234', 'Profesor'),
('roblessalazarjorgeenrique@gmail.com', 'asdf', 'Alumno');
