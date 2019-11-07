/****** Script for SelectTopNRows command from SSMS  ******/
SELECT ID_studenta, Ime + Prezime AS Ime_i_prezime
  FROM [Praksa_Nov_2019].[dbo].[Student_Pelka]


SELECT *
  FROM [Praksa_Nov_2019].[dbo].[Fakultet_Pelka] ORDER BY Naziv DESC


SELECT TOP (2) Ime + Prezime AS Ime_i_prezime,[Telefon], (Datum_rodjenja)
	FROM [Praksa_Nov_2019].[dbo].[Profesor_Pelka] ORDER BY Datum_rodjenja


 