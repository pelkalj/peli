USE [Praksa_Nov_2019]
GO
/****** Object:  Trigger [dbo].[BrisanjeSemestraPelka]    Script Date: 14/11/2019 09:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[BrisanjeSemestraPelka]
   ON  [Praksa_Nov_2019].[dbo].[Semestar_Pelka]
   AFTER DELETe
AS 
BEGIN
	DECLARE @ID INT
	DECLARE @Aktivan BIT

	SET @Aktivan = (SELECT Aktivan FROM deleted)

        UPDATE Semestar_Pelka
        SET Aktivan='False'
		WHERE Aktivan = @Aktivan AND ID = @ID


END
