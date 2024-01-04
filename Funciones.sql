
--FUNCIONES ESCALARES

select dbo.obtenerPais (3)

ALTER FUNCTION obtenerPais(
				@idpaciente paciente
				)
RETURNS varchar(50)

AS
BEGIN
	declare @pais varchar(50)
	SET @pais = (SELECT pais From paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente=@idpaciente)
	RETURN @pais
END


--FUNCIONES DE TIPO TABLA

select * from dbo.listaPaises()


CREATE FUNCTION listaPaises()
RETURNS @paises TABLE(idpais char(3), pais varchar(50))
AS
BEGIN
	
	INSERT INTO @paises values('ESP','España')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Perú')
	INSERT INTO @paises values('ARG','Argentina')

	RETURN

END




