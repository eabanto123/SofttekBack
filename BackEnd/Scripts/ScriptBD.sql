USE [SofttekBD]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 3/03/2023 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[DescProducto] [varchar](150) NULL,
	[Stock] [int] NULL,
	[Precio] [decimal](6, 2) NULL,
	[Activo] [int] NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__Producto__09889210C4170B13] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/03/2023 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [varchar](10) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[Nombres] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Contrasena] [varchar](50) NULL,
	[Activo] [int] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasDiarias]    Script Date: 3/03/2023 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasDiarias](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[FechaVenta] [datetime] NULL,
	[IdUsuarioVenta] [int] NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__VentasDi__BC1240BD0E0D6EB5] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IdProducto], [DescProducto], [Stock], [Precio], [Activo], [FechaRegistro]) VALUES (1, N'Teclado Inalambrico', 50, CAST(59.00 AS Decimal(6, 2)), 1, CAST(N'2023-03-02T02:29:42.380' AS DateTime))
INSERT [dbo].[Producto] ([IdProducto], [DescProducto], [Stock], [Precio], [Activo], [FechaRegistro]) VALUES (2, N'Mouse Inalambrico', 50, CAST(30.00 AS Decimal(6, 2)), 1, CAST(N'2023-03-02T02:29:42.380' AS DateTime))
INSERT [dbo].[Producto] ([IdProducto], [DescProducto], [Stock], [Precio], [Activo], [FechaRegistro]) VALUES (3, N'Monitor 27 pulgadas', 50, CAST(450.00 AS Decimal(6, 2)), 1, CAST(N'2023-03-02T02:29:42.380' AS DateTime))
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Dni], [ApellidoPaterno], [ApellidoMaterno], [Nombres], [Correo], [Contrasena], [Activo], [FechaRegistro]) VALUES (1, N'46080521', N'Abanto', N'Ramirez', N'Erik Raymand', N'erik.abanto@gmail.com', N'WuOQ1DLHFs/C+ji+sJRhIw==', 1, CAST(N'2023-03-02T00:18:31.943' AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[VentasDiarias] ON 

INSERT [dbo].[VentasDiarias] ([IdVenta], [IdProducto], [Cantidad], [FechaVenta], [IdUsuarioVenta], [FechaRegistro]) VALUES (1, 1, 2, CAST(N'2023-03-02T02:33:32.257' AS DateTime), 1, CAST(N'2023-03-02T02:33:32.257' AS DateTime))
INSERT [dbo].[VentasDiarias] ([IdVenta], [IdProducto], [Cantidad], [FechaVenta], [IdUsuarioVenta], [FechaRegistro]) VALUES (2, 2, 4, CAST(N'2023-03-02T02:33:32.260' AS DateTime), 1, CAST(N'2023-03-02T02:33:32.260' AS DateTime))
INSERT [dbo].[VentasDiarias] ([IdVenta], [IdProducto], [Cantidad], [FechaVenta], [IdUsuarioVenta], [FechaRegistro]) VALUES (3, 3, 1, CAST(N'2023-03-02T02:33:32.260' AS DateTime), 1, CAST(N'2023-03-02T02:33:32.260' AS DateTime))
INSERT [dbo].[VentasDiarias] ([IdVenta], [IdProducto], [Cantidad], [FechaVenta], [IdUsuarioVenta], [FechaRegistro]) VALUES (4, 2, 2, CAST(N'2023-03-02T22:31:35.963' AS DateTime), 1, CAST(N'2023-03-02T22:31:35.963' AS DateTime))
SET IDENTITY_INSERT [dbo].[VentasDiarias] OFF
GO
ALTER TABLE [dbo].[VentasDiarias]  WITH CHECK ADD  CONSTRAINT [FK__VentasDia__IdPro__2E1BDC42] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
GO
ALTER TABLE [dbo].[VentasDiarias] CHECK CONSTRAINT [FK__VentasDia__IdPro__2E1BDC42]
GO
ALTER TABLE [dbo].[VentasDiarias]  WITH CHECK ADD  CONSTRAINT [FK__VentasDia__IdUsu__2F10007B] FOREIGN KEY([IdUsuarioVenta])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[VentasDiarias] CHECK CONSTRAINT [FK__VentasDia__IdUsu__2F10007B]
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarVentasTotal]    Script Date: 3/03/2023 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ListarVentasTotal]
as begin

select IdVenta, vd.IdProducto,p.DescProducto as[DescripcionProducto],vd.Cantidad, 
(vd.Cantidad * p.Precio) as [MontoTotal], vd.FechaVenta, vd.IdUsuarioVenta, 
(u.ApellidoPaterno+' '+u.ApellidoMaterno+' '+u.Nombres) as [NombreUsuario]
from VentasDiarias vd left join Producto p on vd.IdProducto=p.IdProducto
left join Usuario u on vd.IdUsuarioVenta=u.IdUsuario

end
GO
