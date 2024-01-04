

--exec SEL_turnospaciente 1

ALTER PROC SEL_TurnosPaciente(
				@idpaciente paciente
				)

AS
set nocount on

IF EXISTS (SELECT * from Paciente P
				INNER JOIN TurnoPaciente TP
				ON TP.idPaciente = P.idPaciente
				INNER JOIN Turno T
				ON T.idTurno = TP.idTurno
				INNER JOIN MedicoEspecialidad M
				ON M.idMedico = TP.idMedico
				WHERE P.idpaciente = @idpaciente
				)

(SELECT * from Paciente P
				INNER JOIN TurnoPaciente TP
				ON TP.idPaciente = P.idPaciente
				INNER JOIN Turno T
				ON T.idTurno = TP.idTurno
				INNER JOIN MedicoEspecialidad M
				ON M.idMedico = TP.idMedico
				WHERE P.idpaciente = @idpaciente
				)

else (SELECT 'No hay resultados')





