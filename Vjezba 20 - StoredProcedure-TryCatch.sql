USE [Praksa_Nov_2019]
GO
/****** Object:  StoredProcedure [dbo].[TryCatchPelka]    Script Date: 14/11/2019 15:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TryCatchPelka]
		
		@IDPredmeta int,
		@IDProfesora int,
		@Zaduzenje nvarchar(50)

AS
BEGIN TRY
	BEGIN TRANSACTION

	DECLARE @Poruka nvarchar(100)
	IF EXISTS  (SELECT * FROM ZaduzenjeProfesora_Pelka WHERE ID_profesora = @IDProfesora AND ID_predmeta = @IDPredmeta)
	BEGIN

		SELECT @Poruka = 'Profesor je vec zaduzen za predmet'
	END
	ELSE
	BEGIN

		SELECT  dbo.ZaduzenjeProfesora_Pelka.ID_predmeta, dbo.Predmet_Pelka.Naziv, dbo.Profesor_Pelka.Ime, dbo.Profesor_Pelka.Prezime
		FROM            dbo.ZaduzenjeProfesora_Pelka INNER JOIN
                         dbo.Profesor_Pelka ON dbo.ZaduzenjeProfesora_Pelka.ID_profesora = dbo.Profesor_Pelka.ID INNER JOIN
                         dbo.Predmet_Pelka ON dbo.ZaduzenjeProfesora_Pelka.ID_predmeta = dbo.Predmet_Pelka.ID
		WHERE ID_predmeta = @IDPredmeta
	END

	--INSERT INTO dbo.ZaduzenjeProfesora_Pelka(ID_predmeta, ID_profesora, Zaduzenje)
	--VALUES(@IDPredmeta, @IDProfesora, @Zaduzenje)
	


	COMMIT
END TRY
BEGIN CATCH 
	select ';;-;'
	ROLLBACK
END CATCH


