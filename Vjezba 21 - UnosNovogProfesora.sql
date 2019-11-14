USE [Praksa_Nov_2019]
GO
/****** Object:  Trigger [dbo].[UnosNovogProfesoraPelka]    Script Date: 12/11/2019 12:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[UnosNovogProfesoraPelka]
   ON [Praksa_Nov_2019].[dbo].[Profesor_Pelka]
   AFTER INSERT
AS 
BEGIN
	
	DECLARE @ID_lokacije int

	SET @ID_lokacije = (SELECT ID_lokacije FROM inserted)

	UPDATE Profesor_Pelka

	SET ID_lokacije = 1

	WHERE ID_lokacije = @ID_lokacije


END
