USE [Praksa_Nov_2019]
GO

/****** Object:  Table [dbo].[ModeliSatova_Pelka]    Script Date: 06/11/2019 12:17:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ModeliSatova_Pelka](
	[Naziv_modela] [nchar](30) NOT NULL,
	[Sifra_modela] [nchar](20) NOT NULL,
	[Opis_modela] [nchar](100) NULL,
	[Veleprodajna_cijena] [decimal](18, 0) NOT NULL,
	[Maloprodajna_cijena] [decimal](18, 0) NOT NULL,
	[ID_proizvodjaca] [int] NOT NULL,
 CONSTRAINT [PK_ModeliSatova_Pelka] PRIMARY KEY CLUSTERED 
(
	[Naziv_modela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ModeliSatova_Pelka]  WITH CHECK ADD  CONSTRAINT [FK_ModeliSatova_Pelka_ProizvodjacSatova_Pelka] FOREIGN KEY([ID_proizvodjaca])
REFERENCES [dbo].[ProizvodjacSatova_Pelka] ([ID_proizvodjaca])
GO

ALTER TABLE [dbo].[ModeliSatova_Pelka] CHECK CONSTRAINT [FK_ModeliSatova_Pelka_ProizvodjacSatova_Pelka]
GO


