/*
select * from Especialidad
select * from Medico
select * from MedicoEspecialidad
*/

--EXEC SEL_EspecialidadMedico 2

ALTER PROC SEL_EspecialidadMedico(
				@idEspecialidad int)

AS
set nocount on

IF exists(SELECT * FROM Medico M
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = M.idMedico
INNER JOIN Especialidad E
ON E.idEspecialidad = ME.idEspecialidad
WHERE ME.idEspecialidad = @idEspecialidad)

SELECT * FROM Medico M
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = M.idMedico
INNER JOIN Especialidad E
ON E.idEspecialidad = ME.idEspecialidad
WHERE ME.idEspecialidad = @idEspecialidad


ELSE

	print 'No existen medicos con dicha especialidad'