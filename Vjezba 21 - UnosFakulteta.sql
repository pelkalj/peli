USE [Praksa_Nov_2019]
GO
/****** Object:  Trigger [dbo].[UnosNovogFakultetaPelka]    Script Date: 12/11/2019 15:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[UnosNovogFakultetaPelka] 
   ON  [dbo].[Fakultet_Pelka]
   AFTER INSERT
AS 
BEGIN
	
	DECLARE @ID INT
	

	SET @ID = (SELECT CONVERT(nvarchar(10), ID) AS IDFakulteta FROM inserted)
 
	UPDATE Fakultet_Pelka

	SET ID = SUBSTRING(Naziv, 1, 2) + SUBSTRING(Naziv, LEN(Naziv), 1)

	WHERE ID = @ID

END



