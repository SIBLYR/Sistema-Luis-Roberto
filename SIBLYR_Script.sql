USE [SIBLYR_BD]
GO
/****** Object:  Table [dbo].[SIBLYR_Categoria]    Script Date: 15/07/2015 08:51:35 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Categoria](
	[PK_IdCategoria] [int] NOT NULL,
	[Nombre_Categoria] [varchar](70) NOT NULL,
 CONSTRAINT [PK_SIBLYR_Categoria] PRIMARY KEY CLUSTERED 
(
	[PK_IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Detalle_Factura]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_Detalle_Factura](
	[PK_IdDetalle_Factura] [int] NOT NULL,
	[FK_IdFactura] [int] NOT NULL,
	[FK_IdProducto] [int] NOT NULL,
	[Cantidad_Detalle_Factura] [int] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Detalle_Factura] PRIMARY KEY CLUSTERED 
(
	[PK_IdDetalle_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_Detalle_Receta]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_Detalle_Receta](
	[PK_IdReceta] [int] NOT NULL,
	[Cantidad_Receta] [float] NOT NULL,
	[FK_IdInsumo] [int] NOT NULL,
	[FK_IdReceta] [int] NOT NULL,
	[FK_IdProducto] [int] NULL,
 CONSTRAINT [PK_SIBLYR_Detalle_Receta] PRIMARY KEY CLUSTERED 
(
	[PK_IdReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_Empleado]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Empleado](
	[PK_IdEmpleado] [int] NOT NULL,
	[Nombre_Empleado] [varchar](50) NOT NULL,
	[Apellido_Empleado] [varchar](50) NOT NULL,
	[FK_IdPuesto] [int] NOT NULL,
	[Activo_Empleado] [bit] NOT NULL,
	[Cedula_Empleado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SIBLYR_Empleado] PRIMARY KEY CLUSTERED 
(
	[PK_IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Empresa]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Empresa](
	[PK_IdEmpresa] [int] NOT NULL,
	[Nombre_Empresa] [varchar](100) NOT NULL,
	[Direccion_Empresa] [varchar](500) NOT NULL,
	[Cedula_Empresa] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SIBLYR_Empresa] PRIMARY KEY CLUSTERED 
(
	[PK_IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Factura]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_Factura](
	[PK_IdFactura] [int] NOT NULL,
	[FK_IdUsuario] [int] NOT NULL,
	[Fecha_Factura] [datetime] NOT NULL,
	[FK_IdEmpresa] [int] NOT NULL,
	[Activo_Factura] [bit] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Factura] PRIMARY KEY CLUSTERED 
(
	[PK_IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_Insumo]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Insumo](
	[PK_IdInsumo] [int] NOT NULL,
	[Nombre_Insumo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SIBLYR_Insumo] PRIMARY KEY CLUSTERED 
(
	[PK_IdInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_InvBarParcial]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_InvBarParcial](
	[PK_IdInvBarParcial] [int] NOT NULL,
	[FK_IdProducto] [int] NOT NULL,
	[Cantidad_InvBarParcial] [float] NOT NULL,
	[FK_IdInvBarTotal] [int] NOT NULL,
 CONSTRAINT [PK_SIBLYR_InvBarParcial] PRIMARY KEY CLUSTERED 
(
	[PK_IdInvBarParcial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_InvBarTotal]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_InvBarTotal](
	[PK_IdInvBarTotal] [int] NOT NULL,
	[FK_IdProducto] [int] NOT NULL,
	[Cantidad_InvBarTotal] [float] NOT NULL,
	[FK_IdEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_SIBLYR_InvBarTotal] PRIMARY KEY CLUSTERED 
(
	[PK_IdInvBarTotal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_InvCocina]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_InvCocina](
	[PK_IdInvCocina] [int] NOT NULL,
	[Cantidad_InvCocina] [float] NOT NULL,
	[FK_IdProveedor] [int] NOT NULL,
	[FK_IdInsumo] [int] NOT NULL,
 CONSTRAINT [PK_SIBLYR_InvCocina] PRIMARY KEY CLUSTERED 
(
	[PK_IdInvCocina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_Modulo]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Modulo](
	[PK_IdModulo] [int] NOT NULL,
	[Nombre_Modulo] [varchar](20) NOT NULL,
	[Activo_Modulo] [bit] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Modulo] PRIMARY KEY CLUSTERED 
(
	[PK_IdModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Permiso]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Permiso](
	[PK_IdPermiso] [int] NOT NULL,
	[Nombre_Permiso] [varchar](15) NOT NULL,
	[Activo_Permiso] [bit] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Permiso] PRIMARY KEY CLUSTERED 
(
	[PK_IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_PermisoXModulo]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_PermisoXModulo](
	[FK_IdPermiso] [int] NOT NULL,
	[FK_IdModulo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_Producto]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Producto](
	[PK_IdProducto] [int] NOT NULL,
	[Nombre_Producto] [varchar](150) NOT NULL,
	[Tamanno_Producto] [varchar](30) NULL,
	[Capacidad_Producto] [float] NULL,
	[FK_IdSubCategoria] [int] NOT NULL,
	[Preparado_Producto] [bit] NOT NULL,
	[FK_IdReceta] [int] NULL,
 CONSTRAINT [PK_SIBLYR_Producto] PRIMARY KEY CLUSTERED 
(
	[PK_IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Proveedor]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Proveedor](
	[PK_IdProveedor] [int] NOT NULL,
	[Cedula_Proveedor] [varchar](30) NOT NULL,
	[Nombre_Proveedor] [varchar](60) NOT NULL,
 CONSTRAINT [PK_SIBLYR_Proveedor] PRIMARY KEY CLUSTERED 
(
	[PK_IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Puesto]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Puesto](
	[PK_IdPuesto] [int] NOT NULL,
	[Nombre_Puesto] [varchar](30) NOT NULL,
	[Activo_Puesto] [bit] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Puesto] PRIMARY KEY CLUSTERED 
(
	[PK_IdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Receta]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_Receta](
	[PK_IdReceta] [int] NOT NULL,
	[FK_IdProducto] [int] NOT NULL,
	[Activo_Receta] [bit] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Receta_1] PRIMARY KEY CLUSTERED 
(
	[PK_IdReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_Rol]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Rol](
	[PK_IdRol] [int] NOT NULL,
	[Nombre_Rol] [varchar](15) NOT NULL,
	[Activo_Rol] [bit] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Rol] PRIMARY KEY CLUSTERED 
(
	[PK_IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_RolXPermiso]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_RolXPermiso](
	[FK_IdRol] [int] NOT NULL,
	[FK_IdPermiso] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIBLYR_SubCategoria]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_SubCategoria](
	[PK_IdSubCategoria] [int] NOT NULL,
	[Nombre_SubCategoria] [varchar](70) NOT NULL,
	[FK_IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_SIBLYR_SubCategoria] PRIMARY KEY CLUSTERED 
(
	[PK_IdSubCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_Usuario]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIBLYR_Usuario](
	[PK_IdUsuario] [int] NOT NULL,
	[Nombre_Usuario] [varchar](20) NOT NULL,
	[Activo_Usuario] [bit] NOT NULL,
	[Clave_Usuario] [varchar](15) NOT NULL,
	[FK_IdEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_SIBLYR_Usuario] PRIMARY KEY CLUSTERED 
(
	[PK_IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIBLYR_UsuarioXRol]    Script Date: 15/07/2015 08:51:36 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIBLYR_UsuarioXRol](
	[FK_IdUsuario] [int] NOT NULL,
	[FK_IdRol] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Detalle_Factura_SIBLYR_Factura] FOREIGN KEY([FK_IdFactura])
REFERENCES [dbo].[SIBLYR_Factura] ([PK_IdFactura])
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Factura] CHECK CONSTRAINT [FK_SIBLYR_Detalle_Factura_SIBLYR_Factura]
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Detalle_Factura_SIBLYR_Producto] FOREIGN KEY([FK_IdProducto])
REFERENCES [dbo].[SIBLYR_Producto] ([PK_IdProducto])
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Factura] CHECK CONSTRAINT [FK_SIBLYR_Detalle_Factura_SIBLYR_Producto]
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Receta]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Detalle_Receta_SIBLYR_Insumo] FOREIGN KEY([FK_IdInsumo])
REFERENCES [dbo].[SIBLYR_Insumo] ([PK_IdInsumo])
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Receta] CHECK CONSTRAINT [FK_SIBLYR_Detalle_Receta_SIBLYR_Insumo]
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Receta]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Detalle_Receta_SIBLYR_Producto1] FOREIGN KEY([FK_IdProducto])
REFERENCES [dbo].[SIBLYR_Producto] ([PK_IdProducto])
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Receta] CHECK CONSTRAINT [FK_SIBLYR_Detalle_Receta_SIBLYR_Producto1]
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Receta]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Detalle_Receta_SIBLYR_Receta] FOREIGN KEY([FK_IdReceta])
REFERENCES [dbo].[SIBLYR_Receta] ([PK_IdReceta])
GO
ALTER TABLE [dbo].[SIBLYR_Detalle_Receta] CHECK CONSTRAINT [FK_SIBLYR_Detalle_Receta_SIBLYR_Receta]
GO
ALTER TABLE [dbo].[SIBLYR_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Empleado_SIBLYR_Puesto] FOREIGN KEY([FK_IdPuesto])
REFERENCES [dbo].[SIBLYR_Puesto] ([PK_IdPuesto])
GO
ALTER TABLE [dbo].[SIBLYR_Empleado] CHECK CONSTRAINT [FK_SIBLYR_Empleado_SIBLYR_Puesto]
GO
ALTER TABLE [dbo].[SIBLYR_Factura]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Factura_SIBLYR_Empresa] FOREIGN KEY([FK_IdEmpresa])
REFERENCES [dbo].[SIBLYR_Empresa] ([PK_IdEmpresa])
GO
ALTER TABLE [dbo].[SIBLYR_Factura] CHECK CONSTRAINT [FK_SIBLYR_Factura_SIBLYR_Empresa]
GO
ALTER TABLE [dbo].[SIBLYR_Factura]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Factura_SIBLYR_Usuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[SIBLYR_Usuario] ([PK_IdUsuario])
GO
ALTER TABLE [dbo].[SIBLYR_Factura] CHECK CONSTRAINT [FK_SIBLYR_Factura_SIBLYR_Usuario]
GO
ALTER TABLE [dbo].[SIBLYR_InvBarParcial]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_InvBarParcial_SIBLYR_InvBarTotal] FOREIGN KEY([FK_IdInvBarTotal])
REFERENCES [dbo].[SIBLYR_InvBarTotal] ([PK_IdInvBarTotal])
GO
ALTER TABLE [dbo].[SIBLYR_InvBarParcial] CHECK CONSTRAINT [FK_SIBLYR_InvBarParcial_SIBLYR_InvBarTotal]
GO
ALTER TABLE [dbo].[SIBLYR_InvBarParcial]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_InvBarParcial_SIBLYR_Producto] FOREIGN KEY([FK_IdProducto])
REFERENCES [dbo].[SIBLYR_Producto] ([PK_IdProducto])
GO
ALTER TABLE [dbo].[SIBLYR_InvBarParcial] CHECK CONSTRAINT [FK_SIBLYR_InvBarParcial_SIBLYR_Producto]
GO
ALTER TABLE [dbo].[SIBLYR_InvBarTotal]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_InvBarTotal_SIBLYR_Empresa] FOREIGN KEY([FK_IdEmpresa])
REFERENCES [dbo].[SIBLYR_Empresa] ([PK_IdEmpresa])
GO
ALTER TABLE [dbo].[SIBLYR_InvBarTotal] CHECK CONSTRAINT [FK_SIBLYR_InvBarTotal_SIBLYR_Empresa]
GO
ALTER TABLE [dbo].[SIBLYR_InvBarTotal]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_InvBarTotal_SIBLYR_Producto] FOREIGN KEY([FK_IdProducto])
REFERENCES [dbo].[SIBLYR_Producto] ([PK_IdProducto])
GO
ALTER TABLE [dbo].[SIBLYR_InvBarTotal] CHECK CONSTRAINT [FK_SIBLYR_InvBarTotal_SIBLYR_Producto]
GO
ALTER TABLE [dbo].[SIBLYR_InvCocina]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_InvCocina_SIBLYR_Insumo] FOREIGN KEY([FK_IdInsumo])
REFERENCES [dbo].[SIBLYR_Insumo] ([PK_IdInsumo])
GO
ALTER TABLE [dbo].[SIBLYR_InvCocina] CHECK CONSTRAINT [FK_SIBLYR_InvCocina_SIBLYR_Insumo]
GO
ALTER TABLE [dbo].[SIBLYR_InvCocina]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_InvCocina_SIBLYR_Proveedor] FOREIGN KEY([FK_IdProveedor])
REFERENCES [dbo].[SIBLYR_Proveedor] ([PK_IdProveedor])
GO
ALTER TABLE [dbo].[SIBLYR_InvCocina] CHECK CONSTRAINT [FK_SIBLYR_InvCocina_SIBLYR_Proveedor]
GO
ALTER TABLE [dbo].[SIBLYR_PermisoXModulo]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_PermisoXModulo_SIBLYR_Modulo] FOREIGN KEY([FK_IdModulo])
REFERENCES [dbo].[SIBLYR_Modulo] ([PK_IdModulo])
GO
ALTER TABLE [dbo].[SIBLYR_PermisoXModulo] CHECK CONSTRAINT [FK_SIBLYR_PermisoXModulo_SIBLYR_Modulo]
GO
ALTER TABLE [dbo].[SIBLYR_PermisoXModulo]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_PermisoXModulo_SIBLYR_Permiso] FOREIGN KEY([FK_IdPermiso])
REFERENCES [dbo].[SIBLYR_Permiso] ([PK_IdPermiso])
GO
ALTER TABLE [dbo].[SIBLYR_PermisoXModulo] CHECK CONSTRAINT [FK_SIBLYR_PermisoXModulo_SIBLYR_Permiso]
GO
ALTER TABLE [dbo].[SIBLYR_Producto]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Producto_SIBLYR_Receta] FOREIGN KEY([FK_IdReceta])
REFERENCES [dbo].[SIBLYR_Receta] ([PK_IdReceta])
GO
ALTER TABLE [dbo].[SIBLYR_Producto] CHECK CONSTRAINT [FK_SIBLYR_Producto_SIBLYR_Receta]
GO
ALTER TABLE [dbo].[SIBLYR_Producto]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Producto_SIBLYR_SubCategoria] FOREIGN KEY([FK_IdSubCategoria])
REFERENCES [dbo].[SIBLYR_SubCategoria] ([PK_IdSubCategoria])
GO
ALTER TABLE [dbo].[SIBLYR_Producto] CHECK CONSTRAINT [FK_SIBLYR_Producto_SIBLYR_SubCategoria]
GO
ALTER TABLE [dbo].[SIBLYR_RolXPermiso]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_RolXPermiso_SIBLYR_Permiso] FOREIGN KEY([FK_IdPermiso])
REFERENCES [dbo].[SIBLYR_Permiso] ([PK_IdPermiso])
GO
ALTER TABLE [dbo].[SIBLYR_RolXPermiso] CHECK CONSTRAINT [FK_SIBLYR_RolXPermiso_SIBLYR_Permiso]
GO
ALTER TABLE [dbo].[SIBLYR_RolXPermiso]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_RolXPermiso_SIBLYR_Rol] FOREIGN KEY([FK_IdRol])
REFERENCES [dbo].[SIBLYR_Rol] ([PK_IdRol])
GO
ALTER TABLE [dbo].[SIBLYR_RolXPermiso] CHECK CONSTRAINT [FK_SIBLYR_RolXPermiso_SIBLYR_Rol]
GO
ALTER TABLE [dbo].[SIBLYR_SubCategoria]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_SubCategoria_SIBLYR_Categoria] FOREIGN KEY([FK_IdCategoria])
REFERENCES [dbo].[SIBLYR_Categoria] ([PK_IdCategoria])
GO
ALTER TABLE [dbo].[SIBLYR_SubCategoria] CHECK CONSTRAINT [FK_SIBLYR_SubCategoria_SIBLYR_Categoria]
GO
ALTER TABLE [dbo].[SIBLYR_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_Usuario_SIBLYR_Empleado] FOREIGN KEY([FK_IdEmpleado])
REFERENCES [dbo].[SIBLYR_Empleado] ([PK_IdEmpleado])
GO
ALTER TABLE [dbo].[SIBLYR_Usuario] CHECK CONSTRAINT [FK_SIBLYR_Usuario_SIBLYR_Empleado]
GO
ALTER TABLE [dbo].[SIBLYR_UsuarioXRol]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_UsuarioXRol_SIBLYR_Rol] FOREIGN KEY([FK_IdRol])
REFERENCES [dbo].[SIBLYR_Rol] ([PK_IdRol])
GO
ALTER TABLE [dbo].[SIBLYR_UsuarioXRol] CHECK CONSTRAINT [FK_SIBLYR_UsuarioXRol_SIBLYR_Rol]
GO
ALTER TABLE [dbo].[SIBLYR_UsuarioXRol]  WITH CHECK ADD  CONSTRAINT [FK_SIBLYR_UsuarioXRol_SIBLYR_Usuario] FOREIGN KEY([FK_IdUsuario])
REFERENCES [dbo].[SIBLYR_Usuario] ([PK_IdUsuario])
GO
ALTER TABLE [dbo].[SIBLYR_UsuarioXRol] CHECK CONSTRAINT [FK_SIBLYR_UsuarioXRol_SIBLYR_Usuario]
GO
