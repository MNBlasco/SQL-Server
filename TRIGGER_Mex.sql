
CREATE TRIGGER NuevosPacientesMex on Paciente
AFTER INSERT
AS

IF (SELECT idpais from inserted) = 'MEX'
	INSERT INTO PacientesMexLog (idpaciente,idpais,fechaAlta)
		SELECT i.idpaciente,i.idpais,getdate() FROM inserted i
