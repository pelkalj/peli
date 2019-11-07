USE [Praksa_Nov_2019]
GO

/****** Object:  Table [dbo].[ProizvodjacSatova_Pelka]    Script Date: 06/11/2019 12:19:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProizvodjacSatova_Pelka](
	[ID_proizvodjaca] [int] NOT NULL,
	[Naziv] [nchar](50) NOT NULL,
	[Maticna_drzava] [nchar](50) NOT NULL,
 CONSTRAINT [PK_ProizvodjacSatova_Pelka] PRIMARY KEY CLUSTERED 
(
	[ID_proizvodjaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


