
/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)

*/

--EXEC ALTA_turno '20190218 09:15',1,1,'El paciente debe estar en ayunas.'

ALTER proc ALTA_Turno(
			@fecha char(14), --20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)

as

set nocount on

IF NOT EXISTS(SELECT TOP 1 idturno from Turno WHERE fechaturno=@fecha)
BEGIN
	INSERT INTO Turno (fechaturno,estado,observacion)
	VALUES (@fecha,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)

	print 'El turno se agreg� correctamente'
	return

	
END
ELSE
BEGIN
	print 'El turno ya existe.'
	return
END