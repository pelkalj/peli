/****** Script for SelectTopNRows command from SSMS  ******/
SELECT	Naziv, COUNT (*) AS BrojStudentaUpisanihNaPredmete
  FROM [Praksa_Nov_2019].[dbo].[OcjeneIspitnihObavezaStudenata_Pelka]
  GROUP BY Naziv


  SELECT [Naziv], COUNT (*) AS BrojPredavanja
	  , SUM(Predavanja_trajanje) AS UkupnoVrijemeTrajanja
      , AVG(Predavanja_trajanje) AS ProsjecnoVrijemeTrajanja
	 
  FROM [Praksa_Nov_2019].[dbo].[Vjezba17_Pelka] 
  GROUP BY Naziv



  SELECT [Naziv], COUNT (*) AS BrojPredavanja
	  , SUM(Predavanja_trajanje) AS UkupnoVrijemeTrajanja
      , AVG(Predavanja_trajanje) AS ProsjecnoVrijemeTrajanja
	 
  FROM [Praksa_Nov_2019].[dbo].[Vjezba17_Pelka] 
  GROUP BY Naziv
  ORDER BY UkupnoVrijemeTrajanja



  SELECT [Naziv], COUNT (*) AS BrojPredavanja
	  , SUM(Predavanja_trajanje) AS UkupnoVrijemeTrajanja
	  , AVG(Predavanja_trajanje) AS ProsjecnoVrijemeTrajanja
	 
  FROM [Praksa_Nov_2019].[dbo].[Vjezba17_Pelka] 
  GROUP BY Naziv
  HAVING SUM(Predavanja_trajanje) <= 180