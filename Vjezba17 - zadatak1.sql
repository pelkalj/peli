/****** Script for SelectTopNRows command from SSMS  ******/
SELECT	Naziv, COUNT (*) AS BrojStudentaUpisanihNaPredmete
  FROM [Praksa_Nov_2019].[dbo].[OcjeneIspitnihObavezaStudenata_Pelka]
  GROUP BY Naziv