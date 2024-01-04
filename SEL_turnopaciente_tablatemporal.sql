--SCRIPT

declare @turnos TABLE (id int IDENTITY(1,1),idturno turno,idpaciente paciente)

declare @idpaciente paciente
set @idpaciente = 1

insert into @turnos (idturno,idpaciente)
select TP.idturno,P.idpaciente from Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente

declare @i int,@total int
set @i =1
set @total = (select count (*) from @turnos)

WHILE @i <= @total
	BEGIN
		IF (select idpaciente from @turnos where id = @i) <> @idpaciente
		DELETE from @turnos where id = @i
		SET @i = @i +1
	END

SELECT * FROM Paciente P
INNER JOIN @turnos T
ON T.idpaciente = P.idPaciente
WHERE P.idPaciente = 1


/* Este Script se pudiera haber realizado con el siguiente comando

	SELECT * FROM Paciente P
	INNER JOIN TurnoPaciente T
	ON T.idpaciente = P.idPaciente
	WHERE P.idPaciente = 1

*/