CREATE TABLE Paciente1(
		idpaciente int NOT NULL,
		nombre varchar(50) NOT NULL,
		apellido varchar(50) NULL,
		fnacimiento date NULL,
		domicilio varchar(50) NULL,
		idpais varchar(3) NULL,
		telefono varchar(50) NULL,
		email varchar(50) NULL,
		observacion varchar(1000) NULL,
		fechaAlta datetime NOT NULL,
		constraint PK_idpaciente PRIMARY KEY (idpaciente)
)