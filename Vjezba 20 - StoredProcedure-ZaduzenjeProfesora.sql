USE [Praksa_Nov_2019]
GO
/****** Object:  StoredProcedure [dbo].[ZaduzenjeProfesoraProcedura]    Script Date: 15/11/2019 13:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ZaduzenjeProfesoraProcedura]
	@IDPredmeta int,
	@IDProfesora int,
	@Asistenta int

AS
BEGIN
	INSERT INTO dbo.ZaduzenjeProfesora_Pelka
	VALUES(@IDPredmeta, @IDProfesora, 'Profesor'),
		  (@IDPredmeta, @Asistenta, 'Asistent')
END
