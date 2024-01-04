USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[ALTA_Especialidad]    Script Date: 9/8/2022 21:28:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



EXEC ALTA_Especialidad 'Ginecologo'


ALTER proc [dbo].[ALTA_Especialidad](
			@especialidad varchar(30)
			)

as
set nocount on

IF NOT EXISTS(SELECT TOP 1 especialidad from Especialidad WHERE especialidad= @especialidad)
BEGIN
	
	INSERT INTO Especialidad (especialidad)
	VALUES (@especialidad)

	print 'La especialidad se agregó correctamente.'
	return

	
END
ELSE
BEGIN
	print 'La especialidad ya existe.'
	return
END

