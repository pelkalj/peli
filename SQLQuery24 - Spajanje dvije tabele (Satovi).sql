/****** Script for SelectTopNRows command from SSMS  ******/
SELECT ProizvodjacSatova_Pelka.ID_proizvodjaca, ProizvodjacSatova_Pelka.Naziv, ProizvodjacSatova_Pelka.Maticna_drzava, 
		ModeliSatova_Pelka.Naziv_modela, ModeliSatova_Pelka.Sifra_modela, ModeliSatova_Pelka.Veleprodajna_cijena, ModeliSatova_Pelka.Maloprodajna_cijena
  
  FROM ProizvodjacSatova_Pelka INNER JOIN ModeliSatova_Pelka 
  ON ProizvodjacSatova_Pelka.ID_proizvodjaca = ModeliSatova_Pelka.ID_proizvodjaca