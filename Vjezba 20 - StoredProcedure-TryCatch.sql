
CREATE OR ALTER PROCEDURE [dbo].[TryCatchPelka]
		
		@IDPredmeta int,
		@IDProfesora int,
		@Zaduzenje nvarchar(100)
AS
BEGIN TRY
	BEGIN TRANSACTION
	DECLARE @Poruka nvarchar(100)
	IF EXISTS  (SELECT * FROM ZaduzenjeProfesora_Pelka WHERE ID_profesora = @IDProfesora AND ID_predmeta = @IDPredmeta)
	BEGIN

		SET @Poruka = 'Profesor je vec zaduzen za predmet'
		SELECT @Poruka
	END
	ELSE
	BEGIN

		SELECT  dbo.ZaduzenjeProfesora_Pelka.ID_predmeta, dbo.Predmet_Pelka.Naziv, dbo.Profesor_Pelka.Ime, dbo.Profesor_Pelka.Prezime
		FROM            dbo.ZaduzenjeProfesora_Pelka INNER JOIN
                         dbo.Profesor_Pelka ON dbo.ZaduzenjeProfesora_Pelka.ID_profesora = dbo.Profesor_Pelka.ID INNER JOIN
                         dbo.Predmet_Pelka ON dbo.ZaduzenjeProfesora_Pelka.ID_predmeta = dbo.Predmet_Pelka.ID
		WHERE ID_predmeta = @IDPredmeta
	END
	COMMIT
END TRY
BEGIN CATCH 
	ROLLBACK
END CATCH

exec [dbo].[TryCatchPelka] 1,14, 'ddd'


