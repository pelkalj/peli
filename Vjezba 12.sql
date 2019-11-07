INSERT INTO [Praksa_Nov_2019].[dbo].[Student_Pelka] 
([ID_studenta], [Ime], [Prezime], [Adresa], [Telefon], [Datum_rodjenja])

VALUES (8, 'Mladen', 'Simic', 'Adresa 5', '055-458-985', CONVERT(datetime,'1.6.1995'))


INSERT INTO [Praksa_Nov_2019].[dbo].[UpisStudenataNaPredmet_Pelka]
([ID_studenta], [ID_predavanja], [Ocjena])

VALUES (8, 2, 6)


INSERT INTO [Praksa_Nov_2019].[dbo].[Lokacija_Pelka]
([ID], [Zgrada], [Broj_sprata], [Broj_sobe])

VALUES (6, 'Zgrada 5', 9, 15)