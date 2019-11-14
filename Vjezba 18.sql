/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Ime]
      ,[Prezime]
      ,DATEDIFF(YYYY, Datum_rodjenja, GETDATE()) AS BrojGodina
  FROM [Praksa_Nov_2019].[dbo].[Student_Pelka]



SELECT [Opis]
  FROM [Praksa_Nov_2019].[dbo].[Semestar_Pelka]
  WHERE RIGHT(Opis, 4) = '2008'

  SELECT [Opis]
  FROM [Praksa_Nov_2019].[dbo].[Semestar_Pelka]
  WHERE LEFT(Opis, 6) = 'ljetni'


 SELECT 
       [Ime]
      ,[Prezime]
      ,[Adresa]
	  ,[Grad]

  FROM [Praksa_Nov_2019].[dbo].[Profesor_Pelka] 
  WHERE LEFT (Grad, 10) = 'Banja Luka'


   SELECT 
       [Ime]
      ,[Prezime]
      ,[Adresa]
	  ,[Grad]
      ,DATEDIFF(YYYY, Datum_rodjenja, GETDATE()) AS BrojGodina
  FROM [Praksa_Nov_2019].[dbo].[Profesor_Pelka] 
  WHERE LEFT (Grad, 10) = 'Banja Luka' AND DATEDIFF(YYYY, Datum_rodjenja, GETDATE()) > 25
  