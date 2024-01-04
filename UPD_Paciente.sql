-- select * from paciente

--EXEC UPD_Paciente 5,'20655447','Roberto','Gomez','19991025','Pio Gana 2255 '


alter PROC UPD_Paciente(
			@idpaciente int,
			@dni varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fNacimiento date,
			@domicilio varchar(50)
			)

AS
set nocount on

if exists(SELECT * from Paciente
			WHERE @idpaciente = idpaciente)

BEGIN

UPDATE Paciente SET dni = @dni,
					nombre = @nombre,
					apellido = @apellido,
					fNacimiento = @fNacimiento,
					domicilio = @domicilio

WHERE @idpaciente = idpaciente

END

ELSE

PRINT 'No existe el paciente a modificar'