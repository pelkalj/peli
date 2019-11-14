USE [Praksa_Nov_2019]
GO
/****** Object:  StoredProcedure [dbo].[ZaduzenjeProfesoraProcedura]    Script Date: 13/11/2019 12:53:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ZaduzenjeProfesoraProcedure]
	@IDPredmeta int,
	@IDProfesora int,
	@Zaduzenje varchar(50)

AS
BEGIN
	INSERT INTO dbo.ZaduzenjeProfesora_Pelka(ID_predmeta, ID_profesora, Zaduzenje)
	VALUES(@IDPredmeta, @IDProfesora, @Zaduzenje)
END
