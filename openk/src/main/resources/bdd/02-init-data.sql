USE [BD_OpenKL]
GO

INSERT INTO [dbo].[Batiment] ([Adresse],[CP],[Ville]) VALUES ('25 rue Emile Combes', 35000, 'RENNES');
INSERT INTO [dbo].[Batiment] ([Adresse],[CP],[Ville]) VALUES ('41 boulevard du Colombier', 35000, 'RENNES');
INSERT INTO [dbo].[Batiment] ([Adresse],[CP],[Ville]) VALUES ('52 avenue AndrÃ© Bonnin', 35135, 'CHANTEPIE');
INSERT INTO [dbo].[Batiment] ([Adresse],[CP],[Ville]) VALUES ('84 avenue de Caradeuc', 35510, 'CESSON SEVIGNE');
GO

INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BALLUT', 'Gael', 'g.ballut@yopmail.com', '0652867409', 'Administratif', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CHAMET', 'Valerie', 'v.chamet@yopmail.com', '0784302591', 'Administratif', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('FRAME', 'Benjamin', 'b.frame@yopmail.com', '0741360179', 'Administratif', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BALLANT', 'Amanda', 'a.ballant@yopmail.com', '0673520096', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('MALLARD', 'Emma', 'e.mallard@yopmail.com', '0632165097', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('MIGES', 'Morgane', 'm.miges@yopmail.com', '0627968143', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LEMOINE', 'Damien', 'd.lemoine@yopmail.com', '0679851063', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LE BARS', 'Didier', 'd.lebars@yopmail.com', '0769810466', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('FICHU', 'Theodore', 't.fichu@yopmail.com', '0703654419', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('DIALLO', 'Sandro', 's.diallo@yopmail.com', '0788429511', 'Formateur', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('VERGEZ', 'Anita', 'a.vergez@yopmail.com', '0610327763', 'Formateur', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('GARANDO', 'Zacharie', 'z.garando@yopmail.com', '0669834126', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LE BIHAN', 'Quentin', 'q.lebihan@yopmail.com', '0632047813', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('NILLOT', 'Jeanne', 'j.nillot@yopmail.com', '0679146303', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BAHUT', 'Nathalie', 'n.bahut@yopmail.com', '0710336520', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CASSON', 'Laurie', 'l.casson@yopmail.com', '0771469585', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('NEVRE', 'Laurent', 'l.nevre@yopmail.com', '0612467985', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CALOQ', 'Baptiste', 'b.caloq@yopmail.com', '0603639561', 'Formateur', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CRUAUD', 'Helene', 'h.cruaud@yopmail.com', '0644543697', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CLEMENT', 'Cecile', 'c.clement@yopmail.com', '0679871236', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BRUE', 'David', 'd.brue@yopmail.com', '0699894520', 'Formateur', 4);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CAMENT', 'Anne', 'a.cament@yopmail.com', '0607235596', 'Formateur', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('GRIVE', 'Matthieu', 'm.grive@yopmail.com', '0687912304', 'Formateur', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('SARTIN', 'Carole', 'c.sartin@yopmail.com', '0666145430', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('ROLLAND', 'Roger', 'r.rolland@yopmail.com', '0655031104', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('PORA', 'Saad', 's.pora@yopmail.com', '0710641985', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('ADRIA', 'Beatrice', 'b.adria@yopmail.com', '0636441203', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BLANC', 'Fabien', 'f.blanc@yopmail.com', '0677890320', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('DJOKOVIC', 'Garan', 'g.djokovic@yopmail.com', '0799652141', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('ARTANT', 'Pierre', 'p.artant@yopmail.com', '0630651477', 'Apprenant', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('ALICE', 'Clement', 'c.alice@yopmail.com', '0688631203', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('DURAND', 'Stephanie', 's.durand@yopmail.com', '0612206988', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LISARD', 'Joachim', 'j.lisard@yopmail.com', '0695156344', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BREHAND', 'Lara', 'l.brehand@yopmail.com', '0731458529', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('DIALLO', 'Amhad', 'a.diallo@yopmail.com', '0754298763', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('CHAMET', 'Timothee', 't.chamet@yopmail.com', '0736351248', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('QUATU', 'Maxime', 'm.quatu@yopmail.com', '0645789103', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('GENETON', 'Aurelie', 'a.geneton@yopmail.com', '0689561023', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('OLIVE', 'Thibault', 't.olive@yopmail.com', '0632717246', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LE GADEC', 'Yael', 'y.legadec@yopmail.com', '0622488756', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('KERVADEC', 'Jeremy', 'j.kervadec@yopmail.com', '0611236354', 'Apprenant', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LEROY', 'Anna-Lee', 'al.leroy@yopmail.com', '0645639588', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LAMINA', 'Annick', 'a.lamina@yopmail.com', '0621441236', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('POTAT', 'Baptiste', 'b.potat@yopmail.com', '0632521203', 'Apprenant', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('PORTER', 'David', 'd.porter@yopmail.com', '0611203697', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('NULLIE', 'Ayma', 'a.nullie@yopmail.com', '0733241469', 'Apprenant', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('JURA', 'Clement', 'c.jura@yopmail.com', '0787854417', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('HURTAT', 'Tabata', 't.hurtat@yopmail.com', '0733635214', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('ORFIE', 'Julien', 'j.orfie@yopmail.com', '0602984523', 'Apprenant', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LARIVIERE', 'Charlotte', 'c.lariviere@yopmail.com', '0785630211', 'Apprenant', 1);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('GARREC', 'Sylvain', 's.garrec@yopmail.com', '0666327491', 'Apprenant', 3);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LE GOURIOU', 'Aymeric', 'a.legouriou@yopmail.com', '0633121214', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('AMBRY', 'Laura', 'l.ambry@yopmail.com', '0699142580', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('BRIAC', 'Damien', 'd.briac@yopmail.com', '0608469122', 'Apprenant', 2);
INSERT INTO [dbo].[Utilisateur] ([Nom],[Prenom],[Email],[Telephone],[Type],[Niveau_etudes]) VALUES ('LELOUET', 'Claude', 'c.lelouet@yopmail.com', '0608469125', 'Apprenant', 3);
GO

INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (25);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (26);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (27);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (28);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (29);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (30);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (31);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (32);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (33);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (34);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (35);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (36);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (37);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (38);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (39);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (40);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (41);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (42);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (43);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (44);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (45);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (46);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (47);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (48);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (49);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (50);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (51);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (52);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (53);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (54);
INSERT INTO [dbo].[Apprenant]([Id_Utilisateur]) VALUES (55);
GO

INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Communication', 'Diplome');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Comptabilité', 'Diplome');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Informatique', 'Diplome');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Informatique débutant', 'Certification');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Chinois', 'Certification');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Italien', 'Certification');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Secrétariat', 'Diplome');
INSERT INTO [dbo].[Formation] ([Denomination],[Certif_ou_Diplome]) VALUES ('Marketing', 'Certification');
GO

INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 1);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 2);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 3);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 4);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 5);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 6);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 7);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2020-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), 8);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 1);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-09-01 09:00:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 2);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 3);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 4);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 5);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 6);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 7);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2021-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), 8);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 1);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 2);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 3);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 4);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 5);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 6);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 7);
INSERT INTO [dbo].[Promotion] ([dateDeb],[dateFin],[Id_Formation]) VALUES (CONVERT(DATETIME, '2022-06-30 16:30:00.000', 102), CONVERT(DATETIME, '2023-06-30 16:30:00.000', 102), 8);
GO

INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (1,25);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (1,26);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (1,27);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (1,28);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (1,29);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (2,30);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (2,31);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (2,32);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (2,33);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (2,34);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (3,35);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (3,36);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (3,37);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (3,38);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (3,39);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (3,40);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (4,41);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (4,42);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (4,43);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (5,44);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (5,45);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (6,46);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (6,47);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (8,48);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (8,49);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (8,50);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (8,51);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (10,52);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (10,53);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (10,54);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (11,25);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (11,26);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (11,27);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (11,28);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (11,29);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (12,30);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (12,31);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (12,32);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (12,33);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (12,34);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (13,35);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (13,36);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (13,37);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (13,38);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (13,39);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (13,40);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (17,48);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (17,49);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (17,50);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (17,51);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (18,52);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (18,53);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (18,54);
INSERT INTO [dbo].[Appartenance] ([Id_Promotion],[Id_Apprenant]) VALUES (18,55);
GO

INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (4);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (5);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (6);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (7);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (8);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (9);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (10);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (11);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (12);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (13);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (15);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (16);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (17);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (18);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (19);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (20);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (21);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (22);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (23);
INSERT INTO [dbo].[Formateur] ([Id_Utilisateur]) VALUES (24);
GO

INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Mathématiques');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Français');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Anglais');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Histoire');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Management');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Economie entreprise');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Droit général');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Economie générale');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Droit informatique');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Gestion comptable');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Communication');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('SISR');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Algorithmie');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Projet professionnel');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Mathématiques appliquées');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Allemand');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Espagnol');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Italien');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Chinois');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('SLAM');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Informatique débutant');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Cybersécurité');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Gestion administrative');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Marketing');
INSERT INTO [dbo].[Matiere] ([Denomination]) VALUES ('Web');
GO

INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (4, 1);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (4, 15);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (5, 2);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (6, 3);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (7, 4);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (8, 5);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (9, 6);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (9, 8);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (10, 7);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (10, 9);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (11, 10);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (12, 11);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (13, 12);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (13, 22);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (15, 13);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (15, 20);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (16, 16);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (17, 21);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (17, 25);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (18, 17);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (19, 18);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (20, 19);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (21, 23);
INSERT INTO [dbo].[Enseignement] ([Id_Formateur],[Id_Matiere]) VALUES (21, 24);
GO

INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 2);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 3);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 4);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 11);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 14);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 16);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(1, 17);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 1);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 2);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 3);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 6);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 7);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 10);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(2, 14);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 1);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 2);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 3);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 5);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 8);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 9);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 12);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 13);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 14);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 20);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(3, 22);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(4, 21);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(4, 25);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(5, 19);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(6, 18);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 2);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 3);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 5);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 6);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 7);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 14);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(7, 23);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(8, 5);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(8, 8);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(8, 11);
INSERT INTO [dbo].[Compo_Formation] ([Id_Formation], [Id_Matiere]) VALUES(8, 24);
GO

INSERT INTO [dbo].[Cours] ([dateDeb],[dateFin],[Id_Matiere],[Id_Promotion],[Id_Formateur]) VALUES ('2021-10-04 10:00:00.000','2021-10-04 12:00:00.000',2,1,5);
GO

INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (1, 'Brehat', 'Oui', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (1, 'Glenan', 'Oui', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (1, 'Groix', 'Oui', 20);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (1, 'Belle-Ile', 'Non', 16);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (1, 'Ouessant', 'Oui', 10);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (2, 'Jaune', 'Oui', 20);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (2, 'Vert', 'Non', 20);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (2, 'Bleu', 'Non', 10);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (2, 'Orange', 'Oui', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (2, 'Violet', 'Oui', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (3, '101', 'Oui', 26);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (3, '102', 'Oui', 26);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (3, '103', 'Non', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (3, '104', 'Non', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (3, '105', 'Oui', 12);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (4, '2011', 'Oui', 24);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (4, '2022', 'Oui', 24);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (4, '2033', 'Oui', 24);
INSERT INTO [dbo].[Salle] ([Batiment],[Denomination],[EquipementVirtuel],[NbPlaces]) VALUES (4, '2044', 'Non', 10);
GO

insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 1, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-18 11:00:00', 102), CONVERT(DATETIME, '2022-04-18 12:30:00', 102), 2, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-18 13:30:00', 102), CONVERT(DATETIME, '2022-04-18 15:00:00', 102), 3, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-18 15:10:00', 102), CONVERT(DATETIME, '2022-04-18 17:30:00', 102), 4, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-19 09:30:00', 102), CONVERT(DATETIME, '2022-04-19 11:00:00', 102), 2, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-19 11:00:00', 102), CONVERT(DATETIME, '2022-04-19 12:30:00', 102), 20, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-19 13:30:00', 102), CONVERT(DATETIME, '2022-04-19 15:00:00', 102), 4, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-19 15:10:00', 102), CONVERT(DATETIME, '2022-04-19 17:30:00', 102), 13, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-20 09:30:00', 102), CONVERT(DATETIME, '2022-04-20 11:00:00', 102), 7, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-20 11:00:00', 102), CONVERT(DATETIME, '2022-04-20 12:30:00', 102), 1, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-20 13:30:00', 102), CONVERT(DATETIME, '2022-04-20 15:00:00', 102), 12, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-20 15:10:00', 102), CONVERT(DATETIME, '2022-04-20 17:30:00', 102), 12, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-21 09:30:00', 102), CONVERT(DATETIME, '2022-04-21 11:00:00', 102), 7, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-21 11:00:00', 102), CONVERT(DATETIME, '2022-04-21 12:30:00', 102), 15, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-21 13:30:00', 102), CONVERT(DATETIME, '2022-04-21 15:00:00', 102), 20, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-21 15:10:00', 102), CONVERT(DATETIME, '2022-04-21 17:30:00', 102), 11, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-22 09:30:00', 102), CONVERT(DATETIME, '2022-04-22 11:00:00', 102), 3, 2);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-22 11:00:00', 102), CONVERT(DATETIME, '2022-04-22 12:30:00', 102), 15, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-22 13:30:00', 102), CONVERT(DATETIME, '2022-04-22 15:00:00', 102), 13, 1);
insert into dbo.seance (dateDeb_Seance, dateFin_Seance, Id_Cours, Id_Salle) values (CONVERT(DATETIME, '2022-04-22 15:10:00', 102), CONVERT(DATETIME, '2022-04-22 17:30:00', 102), 11, 1);
GO

insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 2, 1, 4); -- Francais
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 3, 1, 4); -- Anglais
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 5, 1, 5); -- Management
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 1, 1, 5); -- Mathématiques
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 4, 1, 4); -- Histoire
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 6, 1, 5); -- Economie entreprise
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 7, 1, 4); -- Droit général
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 8, 1, 5); -- Economie générale
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 9, 1, 4); -- Droit informatique
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 10, 1, 5); -- Gestion comptable
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 11, 1, 4); -- Communication
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 12, 1, 5); -- SISR
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 13, 1, 4); -- Algorithmie
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 14, 1, 4); -- Projet professionnel
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 15, 1, 4); -- Mathématiques appliquées
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 16, 1, 4); -- Allemand
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 17, 1, 4); -- Espagnol
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 18, 1, 4); -- Italien
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 19, 1, 4); -- Chinois
insert into dbo.cours (dateDeb, dateFin, Id_Matiere, Id_Promotion, Id_Formateur) values (CONVERT(DATETIME, '2022-04-18 09:30:00', 102), CONVERT(DATETIME, '2022-04-18 11:00:00', 102), 20, 1, 4); -- SLAM
GO
