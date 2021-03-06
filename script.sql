USE [master]
GO
/****** Object:  Database [Biblioteca]    Script Date: 11/15/2018 3:49:21 PM ******/
CREATE DATABASE [Biblioteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'modificar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\modificar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'modificar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\modificar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Biblioteca] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblioteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblioteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblioteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblioteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblioteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblioteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblioteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblioteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblioteca] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Biblioteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblioteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblioteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblioteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblioteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblioteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblioteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblioteca] SET RECOVERY FULL 
GO
ALTER DATABASE [Biblioteca] SET  MULTI_USER 
GO
ALTER DATABASE [Biblioteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblioteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblioteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblioteca] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Biblioteca] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Biblioteca', N'ON'
GO
ALTER DATABASE [Biblioteca] SET QUERY_STORE = OFF
GO
USE [Biblioteca]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Biblioteca]
GO
/****** Object:  Table [dbo].[AUTOR]    Script Date: 11/15/2018 3:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTOR](
	[IDAUTOR] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](1024) NULL,
 CONSTRAINT [PK_AUTOR] PRIMARY KEY CLUSTERED 
(
	[IDAUTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATERGORIA]    Script Date: 11/15/2018 3:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATERGORIA](
	[IDCATEGORIA] [int] IDENTITY(1,1) NOT NULL,
	[CAT_IDCATEGORIA] [int] NULL,
	[NOMCAT] [varchar](1024) NULL,
 CONSTRAINT [PK_CATERGORIA] PRIMARY KEY CLUSTERED 
(
	[IDCATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTAMENTO]    Script Date: 11/15/2018 3:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTO](
	[IDDEP] [int] NOT NULL,
	[IDMUNICIPIO] [int] NOT NULL,
	[NOMDEP] [varchar](1024) NULL,
 CONSTRAINT [PK_DEPARTAMENTO] PRIMARY KEY CLUSTERED 
(
	[IDDEP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLEDEPERSONA]    Script Date: 11/15/2018 3:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLEDEPERSONA](
	[IDDETALLE] [int] NOT NULL,
	[LUGARDEESTUDIOS] [varchar](255) NULL,
	[TRABAJA] [bit] NULL,
	[ESTUDIA] [bit] NULL,
	[NOMBREMADRE] [varchar](255) NULL,
	[NOMBREPADRE] [varchar](255) NULL,
 CONSTRAINT [PK_DETALLEDEPERSONA] PRIMARY KEY CLUSTERED 
(
	[IDDETALLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCUMENTOLOCALIDAD]    Script Date: 11/15/2018 3:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENTOLOCALIDAD](
	[IDLOCALIDAD] [int] IDENTITY(1,1) NOT NULL,
	[LOCALIDADFISICOODIGITAL] [bit] NULL,
	[LOCACIONOURL] [varchar](1024) NULL,
 CONSTRAINT [PK_DOCUMENTOLOCALIDAD] PRIMARY KEY CLUSTERED 
(
	[IDLOCALIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIALBIBLIOGRAFICO]    Script Date: 11/15/2018 3:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIALBIBLIOGRAFICO](
	[IDMATBIBLIO] [int] IDENTITY(1,1) NOT NULL,
	[IDUSUARIO] [varchar](255) NULL,
	[IDTIPO] [int] NULL,
	[IDLOCALIDAD] [int] NULL,
	[IDCATEGORIA] [int] NULL,
	[IDPRESTAMO] [int] NULL,
	[NOMBRE] [varchar](1024) NULL,
	[DESCRIPCION] [varchar](1024) NULL,
	[SINOPSIS] [varchar](1024) NULL,
	[FECHA] [datetime] NULL,
	[VOLUMEN] [int] NULL,
	[UNIDADES] [varchar](1024) NULL,
	[EDITORIAL] [varchar](1024) NULL,
	[LENGUAJE] [varchar](1024) NULL,
	[FOTO] [varchar](1024) NULL,
	[IDAUTOR] [int] NULL,
 CONSTRAINT [PK_MATERIALBIBLIOGRAFICO] PRIMARY KEY CLUSTERED 
(
	[IDMATBIBLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 11/15/2018 3:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[IDMENU] [int] NOT NULL,
	[IDROL] [int] NULL,
	[MEN_IDMENU] [int] NULL,
	[NOMBRE] [varchar](1024) NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[IDMENU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUNICIPIO]    Script Date: 11/15/2018 3:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUNICIPIO](
	[IDMUNICIPIO] [int] NOT NULL,
	[DUI] [varchar](255) NULL,
	[NOMMUN] [varchar](1024) NULL,
 CONSTRAINT [PK_MUNICIPIO] PRIMARY KEY CLUSTERED 
(
	[IDMUNICIPIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PENALIZACION]    Script Date: 11/15/2018 3:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PENALIZACION](
	[IDPE] [int] NOT NULL,
	[IDUSUARIO] [varchar](255) NOT NULL,
	[FECHAINI] [datetime] NULL,
	[FECHAFIN] [datetime] NULL,
 CONSTRAINT [PK_PENALIZACION] PRIMARY KEY CLUSTERED 
(
	[IDPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 11/15/2018 3:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA](
	[IDPERSONA] [varchar](255) NOT NULL,
	[IDDETALLE] [int] NULL,
	[NOMBRE] [varchar](255) NOT NULL,
	[APELLIDO] [varchar](255) NOT NULL,
	[FECHANACIMIENTO] [datetime] NULL,
	[GENERO] [varchar](255) NOT NULL,
	[DIRECCION] [varchar](255) NOT NULL,
	[TELEFONO] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PERSONA] PRIMARY KEY CLUSTERED 
(
	[IDPERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRESTAMO]    Script Date: 11/15/2018 3:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRESTAMO](
	[IDPRESTAMO] [int] NOT NULL,
	[IDUSUARIO] [varchar](255) NULL,
	[IDMATBIBLIO] [int] NULL,
	[FECHADEPRESTAMO] [varchar](1024) NULL,
	[FECHADEENTREGA] [varchar](1024) NULL,
 CONSTRAINT [PK_PRESTAMO] PRIMARY KEY CLUSTERED 
(
	[IDPRESTAMO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RELATIONSHIP_15]    Script Date: 11/15/2018 3:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RELATIONSHIP_15](
	[IDMATBIBLIO] [int] NOT NULL,
	[IDAUTOR] [int] NOT NULL,
 CONSTRAINT [PK_RELATIONSHIP_15] PRIMARY KEY CLUSTERED 
(
	[IDMATBIBLIO] ASC,
	[IDAUTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROL]    Script Date: 11/15/2018 3:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROL](
	[IDROL] [int] IDENTITY(1,1) NOT NULL,
	[NOMROL] [varchar](255) NULL,
 CONSTRAINT [PK_ROL] PRIMARY KEY CLUSTERED 
(
	[IDROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPODOCUMENTO]    Script Date: 11/15/2018 3:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPODOCUMENTO](
	[IDTIPO] [int] IDENTITY(1,1) NOT NULL,
	[TIPODOCUMENTO] [varchar](1024) NULL,
 CONSTRAINT [PK_TIPODOCUMENTO] PRIMARY KEY CLUSTERED 
(
	[IDTIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 11/15/2018 3:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IDUSUARIO] [varchar](255) NOT NULL,
	[IDPRESTAMO] [int] NULL,
	[IDROL] [int] NOT NULL,
	[IDPERSONA] [varchar](255) NOT NULL,
	[IDCATEGORIA] [int] NULL,
	[IDMATBIBLIO] [int] NULL,
	[CONTRASENA] [varchar](255) NOT NULL,
	[ESTADO] [int] NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[IDUSUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_5_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_5_FK] ON [dbo].[CATERGORIA]
(
	[CAT_IDCATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_14_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_14_FK] ON [dbo].[DEPARTAMENTO]
(
	[IDMUNICIPIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_15_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_15_FK] ON [dbo].[MATERIALBIBLIOGRAFICO]
(
	[IDUSUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_22_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_22_FK] ON [dbo].[MATERIALBIBLIOGRAFICO]
(
	[IDPRESTAMO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_23_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_23_FK] ON [dbo].[MATERIALBIBLIOGRAFICO]
(
	[IDTIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_24_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_24_FK] ON [dbo].[MATERIALBIBLIOGRAFICO]
(
	[IDLOCALIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_7_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_7_FK] ON [dbo].[MATERIALBIBLIOGRAFICO]
(
	[IDCATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_2_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_2_FK] ON [dbo].[MENU]
(
	[MEN_IDMENU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [SEMUESTRAPOR_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [SEMUESTRAPOR_FK] ON [dbo].[MENU]
(
	[IDROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_13_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_13_FK] ON [dbo].[MUNICIPIO]
(
	[DUI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_4_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_4_FK] ON [dbo].[PENALIZACION]
(
	[IDUSUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_11_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_11_FK] ON [dbo].[PERSONA]
(
	[IDDETALLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_19_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_19_FK] ON [dbo].[PRESTAMO]
(
	[IDUSUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_21_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_21_FK] ON [dbo].[PRESTAMO]
(
	[IDMATBIBLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_16_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_16_FK] ON [dbo].[RELATIONSHIP_15]
(
	[IDMATBIBLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_17_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_17_FK] ON [dbo].[RELATIONSHIP_15]
(
	[IDAUTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_10_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_10_FK] ON [dbo].[USUARIO]
(
	[IDCATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_18_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_18_FK] ON [dbo].[USUARIO]
(
	[IDMATBIBLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_20_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_20_FK] ON [dbo].[USUARIO]
(
	[IDPRESTAMO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_3_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_3_FK] ON [dbo].[USUARIO]
(
	[IDPERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_9_FK]    Script Date: 11/15/2018 3:49:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_9_FK] ON [dbo].[USUARIO]
(
	[IDROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CATERGORIA]  WITH CHECK ADD  CONSTRAINT [FK_CATERGOR_RELATIONS_CATERGOR] FOREIGN KEY([CAT_IDCATEGORIA])
REFERENCES [dbo].[CATERGORIA] ([IDCATEGORIA])
GO
ALTER TABLE [dbo].[CATERGORIA] CHECK CONSTRAINT [FK_CATERGOR_RELATIONS_CATERGOR]
GO
ALTER TABLE [dbo].[DEPARTAMENTO]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAM_RELATIONS_MUNICIPI] FOREIGN KEY([IDMUNICIPIO])
REFERENCES [dbo].[MUNICIPIO] ([IDMUNICIPIO])
GO
ALTER TABLE [dbo].[DEPARTAMENTO] CHECK CONSTRAINT [FK_DEPARTAM_RELATIONS_MUNICIPI]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_RELATIONS_CATERGOR] FOREIGN KEY([IDCATEGORIA])
REFERENCES [dbo].[CATERGORIA] ([IDCATEGORIA])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_RELATIONS_CATERGOR]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_RELATIONS_DOCUMENT] FOREIGN KEY([IDLOCALIDAD])
REFERENCES [dbo].[DOCUMENTOLOCALIDAD] ([IDLOCALIDAD])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_RELATIONS_DOCUMENT]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_RELATIONS_PRESTAMO] FOREIGN KEY([IDPRESTAMO])
REFERENCES [dbo].[PRESTAMO] ([IDPRESTAMO])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_RELATIONS_PRESTAMO]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_RELATIONS_TIPODOCU] FOREIGN KEY([IDTIPO])
REFERENCES [dbo].[TIPODOCUMENTO] ([IDTIPO])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_RELATIONS_TIPODOCU]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_RELATIONS_USUARIO] FOREIGN KEY([IDUSUARIO])
REFERENCES [dbo].[USUARIO] ([IDUSUARIO])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_RELATIONS_USUARIO]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [FK_MENU_RELATIONS_MENU] FOREIGN KEY([MEN_IDMENU])
REFERENCES [dbo].[MENU] ([IDMENU])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [FK_MENU_RELATIONS_MENU]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [FK_MENU_SEMUESTRA_ROL] FOREIGN KEY([IDROL])
REFERENCES [dbo].[ROL] ([IDROL])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [FK_MENU_SEMUESTRA_ROL]
GO
ALTER TABLE [dbo].[MUNICIPIO]  WITH CHECK ADD  CONSTRAINT [FK_MUNICIPI_RELATIONS_PERSONA] FOREIGN KEY([DUI])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[MUNICIPIO] CHECK CONSTRAINT [FK_MUNICIPI_RELATIONS_PERSONA]
GO
ALTER TABLE [dbo].[PENALIZACION]  WITH CHECK ADD  CONSTRAINT [FK_PENALIZA_RELATIONS_USUARIO] FOREIGN KEY([IDUSUARIO])
REFERENCES [dbo].[USUARIO] ([IDUSUARIO])
GO
ALTER TABLE [dbo].[PENALIZACION] CHECK CONSTRAINT [FK_PENALIZA_RELATIONS_USUARIO]
GO
ALTER TABLE [dbo].[PERSONA]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_RELATIONS_DETALLED] FOREIGN KEY([IDDETALLE])
REFERENCES [dbo].[DETALLEDEPERSONA] ([IDDETALLE])
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [FK_PERSONA_RELATIONS_DETALLED]
GO
ALTER TABLE [dbo].[PRESTAMO]  WITH CHECK ADD  CONSTRAINT [FK_PRESTAMO_RELATIONS_MATERIAL] FOREIGN KEY([IDMATBIBLIO])
REFERENCES [dbo].[MATERIALBIBLIOGRAFICO] ([IDMATBIBLIO])
GO
ALTER TABLE [dbo].[PRESTAMO] CHECK CONSTRAINT [FK_PRESTAMO_RELATIONS_MATERIAL]
GO
ALTER TABLE [dbo].[PRESTAMO]  WITH CHECK ADD  CONSTRAINT [FK_PRESTAMO_RELATIONS_USUARIO] FOREIGN KEY([IDUSUARIO])
REFERENCES [dbo].[USUARIO] ([IDUSUARIO])
GO
ALTER TABLE [dbo].[PRESTAMO] CHECK CONSTRAINT [FK_PRESTAMO_RELATIONS_USUARIO]
GO
ALTER TABLE [dbo].[RELATIONSHIP_15]  WITH CHECK ADD  CONSTRAINT [FK_RELATION_RELATIONS_AUTOR] FOREIGN KEY([IDAUTOR])
REFERENCES [dbo].[AUTOR] ([IDAUTOR])
GO
ALTER TABLE [dbo].[RELATIONSHIP_15] CHECK CONSTRAINT [FK_RELATION_RELATIONS_AUTOR]
GO
ALTER TABLE [dbo].[RELATIONSHIP_15]  WITH CHECK ADD  CONSTRAINT [FK_RELATION_RELATIONS_MATERIAL] FOREIGN KEY([IDMATBIBLIO])
REFERENCES [dbo].[MATERIALBIBLIOGRAFICO] ([IDMATBIBLIO])
GO
ALTER TABLE [dbo].[RELATIONSHIP_15] CHECK CONSTRAINT [FK_RELATION_RELATIONS_MATERIAL]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_RELATIONS_CATERGOR] FOREIGN KEY([IDCATEGORIA])
REFERENCES [dbo].[CATERGORIA] ([IDCATEGORIA])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_RELATIONS_CATERGOR]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_RELATIONS_MATERIAL] FOREIGN KEY([IDMATBIBLIO])
REFERENCES [dbo].[MATERIALBIBLIOGRAFICO] ([IDMATBIBLIO])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_RELATIONS_MATERIAL]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_RELATIONS_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_RELATIONS_PERSONA]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_RELATIONS_PRESTAMO] FOREIGN KEY([IDPRESTAMO])
REFERENCES [dbo].[PRESTAMO] ([IDPRESTAMO])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_RELATIONS_PRESTAMO]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_RELATIONS_ROL] FOREIGN KEY([IDROL])
REFERENCES [dbo].[ROL] ([IDROL])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_RELATIONS_ROL]
GO
USE [master]
GO
ALTER DATABASE [Biblioteca] SET  READ_WRITE 
GO
