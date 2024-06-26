
/*Nombre: Sawir Castro Ramírez | Matrícula: 22-SIIT-1-005 | Sección: 0541 |*/



USE [master]
GO


/****** Object:  Database [ProyectoFinalDb]    Script Date: 6/4/2024 11:07:40 a. m. ******/
CREATE DATABASE [ProyectoFinalDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoFinalDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoFinalDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoFinalDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoFinalDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProyectoFinalDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoFinalDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoFinalDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoFinalDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoFinalDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoFinalDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoFinalDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoFinalDb] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoFinalDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoFinalDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoFinalDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoFinalDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoFinalDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoFinalDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoFinalDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProyectoFinalDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProyectoFinalDb]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 6/4/2024 11:07:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Cédula] [varchar](50) NULL,
	[Dirección] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesOrdenes]    Script Date: 6/4/2024 11:07:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesOrdenes](
	[DetallesOrdenesId] [int] NULL,
	[OrdenesId] [int] NULL,
	[ProductosId] [int] NULL,
	[Cantidad] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 6/4/2024 11:07:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](15) NULL,
	[Edad] [varchar](10) NULL,
	[Sexo] [char](1) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Activo] [varchar](50) NULL,
	[Teléfono] [varchar](50) NULL,
	[Salario] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Cédula] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 6/4/2024 11:07:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[NombreEmpresa] [varchar](50) NULL,
	[Ubicación] [varchar](50) NULL,
	[Teléfono] [nvarchar](50) NULL,
	[Horario] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 6/4/2024 11:07:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordenes](
	[OrdenesId] [int] NULL,
	[ClientesId] [int] NULL,
	[EmpleadosId] [int] NULL,
	[FechaOrden] [varchar](50) NULL,
	[CódigoOrden] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 6/4/2024 11:07:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductosId] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Categoría] [varchar](50) NULL,
	[PrecioUnitario] [varchar](50) NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (1, N'María', N'042-3283343-6', N'San Cristobal')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (2, N'Gael', N'042-0937373-6', N'Peravia')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (3, N'Marcos', N'082-0023153-4', N'Santiago')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (4, N'Alonso', N'042-6736363-6', N'Santo Domingo Este')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (5, N'Ana', N'082-0011253-4', N'San Pedro')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (6, N'Hipolito', N'082-0036373-5', N'Samaná')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (7, N'Alan', N'042-3734532-4', N'La Vega')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (8, N'Marta', N'042-3673664-4', N'Monte Plata')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (9, N'Eliot', N'082-7766363-4', N'San Cristobal')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Cédula], [Dirección]) VALUES (10, N'Ramón', N'042-3443444-6', N'Azua')
GO
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (1, 1, 12132, N'2         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (2, 4, 12332, N'3         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (3, 3, 33232, N'2         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (4, 5, 12233, N'1         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (5, 2, 32323, N'4         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (6, 6, 45332, N'2         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (7, 3, 24354, N'1         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (8, 8, 44534, N'3         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (9, 7, 17263, N'1         ')
INSERT [dbo].[DetallesOrdenes] ([DetallesOrdenesId], [OrdenesId], [ProductosId], [Cantidad]) VALUES (10, 10, 33343, N'2         ')
GO
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (1, N'LeBron', N'James', N'39', N'M', CAST(N'1984-12-30T00:00:00.000' AS DateTime), N'True', N'809-345-6645', N'1,000,000', N'lebronj23@gamail.com', N'082-0012345-4', N'Akron')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (2, N'Juan', N'Soto', N'25', N'M', CAST(N'1998-10-25T00:00:00.000' AS DateTime), N'True', N'829-786-4563', N'700,000', N'juans22@gmail.com', N'042-0987673-5', N'Santo Domingo')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (3, N'Serena ', N'Williams', N'42', N'F', CAST(N'1981-10-26T00:00:00.000' AS DateTime), N'False', N'809-678-9456', N'400,000', N'serenaw4@gmail.com', N'082-0012456-4', N'Michigan')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (4, N'Fidel', N'Castro', N'25', N'M', CAST(N'1998-09-16T00:00:00.000' AS DateTime), N'True', N'849-987-4567', N'100,000', N'fidelc19@gmail.com', N'042-0012345-5', N'San Cristobal')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (6, N'Stephen', N'Curry', N'36', N'M', CAST(N'1988-03-14T00:00:00.000' AS DateTime), N'True', N'809-987-3456', N'800,000', N'stephenc30@gmail.com', N'082-0062635-3', N'Akron')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (7, N'Usain', N'Bolt', N'37', N'M', CAST(N'1986-08-21T00:00:00.000' AS DateTime), N'False', N'829-564-8790', N'720,000', N'usainb2@gmail.com', N'082-0025756-4', N'Sherwood')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (8, N'Ana', N'Cabreja', N'19', N'F', CAST(N'2004-04-10T00:00:00.000' AS DateTime), N'True', N'809-634-3767', N'600,00', N'anac4@gmail.com', N'042-3232323-6', N'San Cristobal')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (9, N'Vladimir', N'Guerrero', N'25', N'M', CAST(N'1998-06-25T00:00:00.000' AS DateTime), N'True', N'829-365-4774', N'700,000', N'vladimir27@gmail.com', N'042-0037574-5', N'Don Gregorio')
INSERT [dbo].[Empleados] ([EmpleadosID], [Nombre], [Apellido], [Edad], [Sexo], [FechaNacimiento], [Activo], [Teléfono], [Salario], [Correo], [Cédula], [Ciudad]) VALUES (10, N'Fernando', N'Tatís jr.', N'25', N'M', CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'True', N'849-098-4567', N'820,000', N'fernandot23@gmail.com', N'042-9348335-6', N'San Pedro')
GO
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'1', N'Santo Domingo', N'809-234-5624', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'2', N'Santiago', N'809-856-4343', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'3', N'Peravia', N'829-434-2312', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'4', N'San Cristobal', N'849-123-5865', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'5', N'Azua ', N'829-457-7864', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'6', N'San Pedro', N'809-234-5624', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'7', N'Barahona', N'829-564-8627', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'8', N'Monte Plata', N'849-236-5724', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'9', N'La Vega', N'829-456-3355', N'9:00am-4:00pm')
INSERT [dbo].[Empresa] ([NombreEmpresa], [Ubicación], [Teléfono], [Horario]) VALUES (N'10', N'Samaná', N'829-323-5433', NULL)
GO
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (1, 1, 2, N'1/4/2024', N'001424')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (2, 2, 8, N'1/4/2024', N'001424')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (3, 3, 1, N'2/4/24', N'001224')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (4, 4, 10, N'3/4/24', N'001324')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (5, 5, 4, N'5/4/24', N'001524')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (6, 6, 6, N'5/4/24', N'001524')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (7, 7, 5, N'6/4/25', N'001624')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (8, 8, 3, N'7/4/24', N'001724')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (9, 9, 7, N'9/4/24', N'001924')
INSERT [dbo].[Ordenes] ([OrdenesId], [ClientesId], [EmpleadosId], [FechaOrden], [CódigoOrden]) VALUES (10, 10, 9, N'10/4/24', N'001024')
GO
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (1, N'DBT', N'1', N'$1,000', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (2, N'DBE', N'1', N'$900', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (3, N'DBH', N'2', N'$700', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (3, N'DBZ', N'1', N'$500', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (4, N'DBN', N'1', N'$1,000', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (5, N'DBL', N'1', N'$2,000', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (6, N'DBP', N'2', N'$500', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (7, N'DBG', N'1', N'$700', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (8, N'DBF', N'3', N'$900', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (9, N'DBJ', N'1', N'$1,000', 1)
INSERT [dbo].[Productos] ([ProductosId], [Nombre], [Categoría], [PrecioUnitario], [Cantidad]) VALUES (10, N'DB', N'2', N'$990', 1)
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinalDb] SET  READ_WRITE 
GO
