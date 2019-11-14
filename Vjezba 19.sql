/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Ime]
      ,[Prezime]
      ,[Naziv]
      ,[Ocjena]
  FROM [Praksa_Nov_2019].[dbo].[Vjezba 19 - ocjene studenata]
  WHERE [Ocjena] <> 0


  
  SELECT [Naziv], [Opis]
    FROM [Praksa_Nov_2019].[dbo].[Vjezba 19 - ocjene studenata] 
	WHERE LEFT(Opis, 10) = 'zimski2008'
	
	
