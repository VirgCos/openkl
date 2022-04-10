USE [BD_OpenKL]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Batiment]    Script Date: 10/04/2022 16:50:07 ******/
CREATE TABLE [dbo].[Batiment](
	[Id_Batiment] [int] IDENTITY(1,1) NOT NULL,
	[Adresse] [nvarchar](50) NOT NULL,
	[CP] [nvarchar](50) NOT NULL,
	[Ville] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Batiment] PRIMARY KEY CLUSTERED 
(
	[Id_Batiment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Utilisateur]    Script Date: 10/04/2022 16:58:42 ******/
CREATE TABLE [dbo].[Utilisateur](
	[Id_Utilisateur] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](50) NOT NULL,
	[Prenom] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Telephone] [nchar](10) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Niveau_etudes] [int] NULL,
 CONSTRAINT [PK_Utilisateur] PRIMARY KEY CLUSTERED 
(
	[Id_Utilisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Apprenant]    Script Date: 10/04/2022 16:50:00 ******/
CREATE TABLE [dbo].[Apprenant](
	[Id_Utilisateur] [int] NOT NULL,
 CONSTRAINT [PK_Apprenant] PRIMARY KEY CLUSTERED 
(
	[Id_Utilisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Apprenant]  WITH CHECK ADD  CONSTRAINT [FK_Apprenant_Utilisateur] FOREIGN KEY([Id_Utilisateur])
REFERENCES [dbo].[Utilisateur] ([Id_Utilisateur])
GO

ALTER TABLE [dbo].[Apprenant] CHECK CONSTRAINT [FK_Apprenant_Utilisateur]
GO

/****** Object:  Table [dbo].[Formation]    Script Date: 10/04/2022 16:58:01 ******/
CREATE TABLE [dbo].[Formation](
	[Id_Formation] [int] IDENTITY(1,1) NOT NULL,
	[Denomination] [nvarchar](50) NOT NULL,
	[Certif_ou_Diplome] [nvarchar](50) NULL,
 CONSTRAINT [PK_Formation] PRIMARY KEY CLUSTERED 
(
	[Id_Formation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Promotion]    Script Date: 10/04/2022 16:58:26 ******/
CREATE TABLE [dbo].[Promotion](
	[Id_Promotion] [int] IDENTITY(1,1) NOT NULL,
	[dateDeb] [datetime] NULL,
	[dateFin] [datetime] NULL,
	[Id_Formation] [int] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[Id_Promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Formation] FOREIGN KEY([Id_Formation])
REFERENCES [dbo].[Formation] ([Id_Formation])
GO

ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Formation]
GO

/****** Object:  Table [dbo].[Appartenance]    Script Date: 10/04/2022 16:49:51 ******/
CREATE TABLE [dbo].[Appartenance](
	[Id_Promotion] [int] NOT NULL,
	[Id_Apprenant] [int] NOT NULL,
 CONSTRAINT [PK_Appartenance] PRIMARY KEY CLUSTERED 
(
	[Id_Promotion] ASC,
	[Id_Apprenant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Appartenance]  WITH CHECK ADD  CONSTRAINT [FK_Appartenance_Apprenant] FOREIGN KEY([Id_Apprenant])
REFERENCES [dbo].[Apprenant] ([Id_Utilisateur])
GO

ALTER TABLE [dbo].[Appartenance] CHECK CONSTRAINT [FK_Appartenance_Apprenant]
GO

ALTER TABLE [dbo].[Appartenance]  WITH CHECK ADD  CONSTRAINT [FK_Appartenance_Promo] FOREIGN KEY([Id_Promotion])
REFERENCES [dbo].[Promotion] ([Id_Promotion])
GO

ALTER TABLE [dbo].[Appartenance] CHECK CONSTRAINT [FK_Appartenance_Promo]
GO

/****** Object:  Table [dbo].[Formateur]    Script Date: 10/04/2022 16:52:09 ******/
CREATE TABLE [dbo].[Formateur](
	[Id_Utilisateur] [int] NOT NULL,
 CONSTRAINT [PK_Formateur] PRIMARY KEY CLUSTERED 
(
	[Id_Utilisateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Formateur]  WITH CHECK ADD  CONSTRAINT [FK_Formateur_Utilisateur] FOREIGN KEY([Id_Utilisateur])
REFERENCES [dbo].[Utilisateur] ([Id_Utilisateur])
GO

ALTER TABLE [dbo].[Formateur] CHECK CONSTRAINT [FK_Formateur_Utilisateur]
GO

/****** Object:  Table [dbo].[Matiere]    Script Date: 10/04/2022 16:58:20 ******/
CREATE TABLE [dbo].[Matiere](
	[Id_Matiere] [int] IDENTITY(1,1) NOT NULL,
	[Denomination] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Matiere] PRIMARY KEY CLUSTERED 
(
	[Id_Matiere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Enseignement]    Script Date: 10/04/2022 16:52:02 ******/
CREATE TABLE [dbo].[Enseignement](
	[Id_Formateur] [int] NOT NULL,
	[Id_Matiere] [int] NOT NULL,
 CONSTRAINT [PK_Enseignement] PRIMARY KEY CLUSTERED 
(
	[Id_Formateur] ASC,
	[Id_Matiere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Enseignement]  WITH CHECK ADD  CONSTRAINT [FK_Enseignement_Formateur1] FOREIGN KEY([Id_Formateur])
REFERENCES [dbo].[Formateur] ([Id_Utilisateur])
GO

ALTER TABLE [dbo].[Enseignement] CHECK CONSTRAINT [FK_Enseignement_Formateur1]
GO

ALTER TABLE [dbo].[Enseignement]  WITH CHECK ADD  CONSTRAINT [FK_Enseignement_Matiere1] FOREIGN KEY([Id_Matiere])
REFERENCES [dbo].[Matiere] ([Id_Matiere])
GO

ALTER TABLE [dbo].[Enseignement] CHECK CONSTRAINT [FK_Enseignement_Matiere1]
GO

/****** Object:  Table [dbo].[Compo_Formation]    Script Date: 10/04/2022 16:50:13 ******/
CREATE TABLE [dbo].[Compo_Formation](
	[Id_Formation] [int] NOT NULL,
	[Id_Matiere] [int] NOT NULL,
 CONSTRAINT [PK_Compo_Formation] PRIMARY KEY CLUSTERED 
(
	[Id_Formation] ASC,
	[Id_Matiere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Compo_Formation]  WITH CHECK ADD  CONSTRAINT [FK_Compo_Formation] FOREIGN KEY([Id_Formation])
REFERENCES [dbo].[Formation] ([Id_Formation])
GO

ALTER TABLE [dbo].[Compo_Formation] CHECK CONSTRAINT [FK_Compo_Formation]
GO

ALTER TABLE [dbo].[Compo_Formation]  WITH CHECK ADD  CONSTRAINT [FK_Compo_Formation_Mat] FOREIGN KEY([Id_Matiere])
REFERENCES [dbo].[Matiere] ([Id_Matiere])
GO

ALTER TABLE [dbo].[Compo_Formation] CHECK CONSTRAINT [FK_Compo_Formation_Mat]
GO

/****** Object:  Table [dbo].[Cours]    Script Date: 10/04/2022 16:51:57 ******/
CREATE TABLE [dbo].[Cours](
	[Id_Cours] [int] IDENTITY(1,1) NOT NULL,
	[dateDeb] [datetime] NULL,
	[dateFin] [datetime] NULL,
	[Id_Matiere] [int] NOT NULL,
	[Id_Promotion] [int] NOT NULL,
	[Id_Formateur] [int] NULL,
 CONSTRAINT [PK_Cours] PRIMARY KEY CLUSTERED 
(
	[Id_Cours] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cours]  WITH CHECK ADD  CONSTRAINT [FK_Cours_Formateur] FOREIGN KEY([Id_Formateur])
REFERENCES [dbo].[Formateur] ([Id_Utilisateur])
GO

ALTER TABLE [dbo].[Cours] CHECK CONSTRAINT [FK_Cours_Formateur]
GO

ALTER TABLE [dbo].[Cours]  WITH CHECK ADD  CONSTRAINT [FK_Cours_Matiere] FOREIGN KEY([Id_Matiere])
REFERENCES [dbo].[Matiere] ([Id_Matiere])
GO

ALTER TABLE [dbo].[Cours] CHECK CONSTRAINT [FK_Cours_Matiere]
GO

ALTER TABLE [dbo].[Cours]  WITH CHECK ADD  CONSTRAINT [FK_Cours_Promo] FOREIGN KEY([Id_Promotion])
REFERENCES [dbo].[Promotion] ([Id_Promotion])
GO

ALTER TABLE [dbo].[Cours] CHECK CONSTRAINT [FK_Cours_Promo]
GO

/****** Object:  Table [dbo].[Salle]    Script Date: 10/04/2022 16:58:32 ******/
CREATE TABLE [dbo].[Salle](
	[Id_Salle] [int] IDENTITY(1,1) NOT NULL,
	[Batiment] [int] NOT NULL,
	[Denomination] [nvarchar](50) NOT NULL,
	[EquipementVirtuel] [nvarchar](50) NULL,
	[NbPlaces] [int] NOT NULL,
 CONSTRAINT [PK_Salle] PRIMARY KEY CLUSTERED 
(
	[Id_Salle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Salle]  WITH CHECK ADD  CONSTRAINT [FK_Salle_Batiment] FOREIGN KEY([Batiment])
REFERENCES [dbo].[Batiment] ([Id_Batiment])
GO

ALTER TABLE [dbo].[Salle] CHECK CONSTRAINT [FK_Salle_Batiment]
GO

ALTER TABLE [dbo].[Salle]  WITH CHECK ADD  CONSTRAINT [FK_Salle_Salle] FOREIGN KEY([Id_Salle])
REFERENCES [dbo].[Salle] ([Id_Salle])
GO

ALTER TABLE [dbo].[Salle] CHECK CONSTRAINT [FK_Salle_Salle]
GO

/****** Object:  Table [dbo].[Seance]    Script Date: 10/04/2022 16:58:37 ******/
CREATE TABLE [dbo].[Seance](
	[dateDeb_Seance] [datetime] NULL,
	[dateFin_Seance] [datetime] NULL,
	[Id_Cours] [int] NOT NULL,
	[Id_Salle] [int] NOT NULL,
 CONSTRAINT [PK_Seance] PRIMARY KEY CLUSTERED 
(
	[Id_Cours] ASC,
	[Id_Salle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Seance]  WITH CHECK ADD  CONSTRAINT [FK_Seance_Cours] FOREIGN KEY([Id_Cours])
REFERENCES [dbo].[Cours] ([Id_Cours])
GO

ALTER TABLE [dbo].[Seance] CHECK CONSTRAINT [FK_Seance_Cours]
GO

ALTER TABLE [dbo].[Seance]  WITH CHECK ADD  CONSTRAINT [FK_Seance_Salle] FOREIGN KEY([Id_Salle])
REFERENCES [dbo].[Salle] ([Id_Salle])
GO

ALTER TABLE [dbo].[Seance] CHECK CONSTRAINT [FK_Seance_Salle]
GO
