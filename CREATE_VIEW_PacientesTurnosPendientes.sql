-- SELECT * FROM PacientesTurnosPendientes

CREATE VIEW PacientesTurnosPendientes AS

SELECT P.idpaciente, P.nombre,P.apellido,T.idTurno,T.estado FROM Paciente P
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno

WHERE ISNULL(t.estado,0) = 0