--EXEC ALTA_Historia 1,1,'20230306 09:15','Control y chequeo correctos.'

create proc ALTA_Historia(
            @idpaciente paciente,
			@idmedico medico,
			@fecha_historia char(14), --20190215 12:00
			@observacion observacion=''
			)

as

set nocount on


BEGIN
	INSERT INTO Historia(fechaHistoria,observacion)
	VALUES (@fecha_historia,@observacion)

	declare @auxIdhistoria int
	set @auxIdhistoria = @@IDENTITY

	INSERT INTO HistoriaPaciente (idHistoria,idpaciente,idmedico)
	VALUES (@auxIdhistoria,@idpaciente,@idmedico)

	print 'La historia se agregó correctamente'
	return

	END