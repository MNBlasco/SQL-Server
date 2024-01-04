
/* JOINS */

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

SELECT * FROM Paciente P
LEFT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente


---------------------------------------

/* UNIONS */

SELECT * FROM Turno WHERE estado = 0
UNION
SELECT * FROM Turno WHERE estado = 1



SELECT * FROM Turno 
UNION ALL
SELECT * FROM Turno 

SELECT * FROM Turno 
UNION 
SELECT * FROM Turno


SELECT estado AS Estado, COUNT (estado) as 'Cantidad de registros'
from Turno 
group by estado


SELECT COUNT(estado) AS 'Cantidad de registros' FROM Turno WHERE estado = 0
