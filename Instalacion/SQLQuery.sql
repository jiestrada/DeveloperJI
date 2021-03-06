/****** Object:  Table [dbo].[JICatalogoGeneral]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JICatalogoGeneral](
	[CatalogoID] [int] IDENTITY(1,1) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Etiqueta] [varchar](250) NOT NULL,
	[Tipo] [int] NOT NULL,
 CONSTRAINT [PK_CatalogoGeneral] PRIMARY KEY CLUSTERED 
(
	[Clave] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JICatalogoGeneral] ON
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (4, CONVERT(TEXT, N'Audio'), CONVERT(TEXT, N'Audio'), 1)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (7, CONVERT(TEXT, N'blog'), CONVERT(TEXT, N'Blog'), 2)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (5, CONVERT(TEXT, N'Codigo'), CONVERT(TEXT, N'Ejemplo Codigo'), 1)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (2, CONVERT(TEXT, N'Imagen'), CONVERT(TEXT, N'Imagenes'), 1)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (8, CONVERT(TEXT, N'pagina'), CONVERT(TEXT, N'Pagina'), 2)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (3, CONVERT(TEXT, N'Post'), CONVERT(TEXT, N'Posts'), 1)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (6, CONVERT(TEXT, N'Recurso'), CONVERT(TEXT, N'Recurso'), 1)
INSERT [dbo].[JICatalogoGeneral] ([CatalogoID], [Clave], [Etiqueta], [Tipo]) VALUES (1, CONVERT(TEXT, N'video'), CONVERT(TEXT, N'Video'), 1)
SET IDENTITY_INSERT [dbo].[JICatalogoGeneral] OFF
/****** Object:  Table [dbo].[JIUser]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JIUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[NicName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Url] [varchar](250) NOT NULL,
	[Registred] [datetime] NOT NULL,
	[ActivadoKey] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[DisplayName] [varchar](250) NOT NULL,
 CONSTRAINT [PK_JIUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JIUser] ON
INSERT [dbo].[JIUser] ([UserID], [Login], [Pass], [NicName], [Email], [Url], [Registred], [ActivadoKey], [Status], [DisplayName]) VALUES (1, CONVERT(TEXT, N'admin'), CONVERT(TEXT, N'admin'), CONVERT(TEXT, N'Administrador'), CONVERT(TEXT, N'info@developerji.com'), CONVERT(TEXT, N'developerji.com'), CAST(0x0000A1C700000000 AS DateTime), CONVERT(TEXT, N'askjdaskdjalsd'), 1, CONVERT(TEXT, N'José I. Estrada Hdz.'))
SET IDENTITY_INSERT [dbo].[JIUser] OFF
/****** Object:  Table [dbo].[JIOptions]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JIOptions](
	[OptionID] [int] IDENTITY(1,1) NOT NULL,
	[OptionName] [varchar](150) NOT NULL,
	[OptionValue] [text] NOT NULL,
 CONSTRAINT [PK_JIOptions] PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JIOptions] ON
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (1, CONVERT(TEXT, N'Logo'), CONVERT(TEXT, N'/App_Themes/Principal/Images/logo.png'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (2, CONVERT(TEXT, N'Twitter'), CONVERT(TEXT, N'jiestradah'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (3, CONVERT(TEXT, N'Facebook'), CONVERT(TEXT, N'jose.estradah'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (4, CONVERT(TEXT, N'LinKedin'), CONVERT(TEXT, N'78359068'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (5, CONVERT(TEXT, N'Direccion'), CONVERT(TEXT, N'Plutarco Elias Calles 243 Int. A 13, Granjas México, Iztacalco, DF.'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (6, CONVERT(TEXT, N'Telefono'), CONVERT(TEXT, N'55-2712-3820'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (7, CONVERT(TEXT, N'Email'), CONVERT(TEXT, N'info@developerji.com'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (8, CONVERT(TEXT, N'MailServer'), CONVERT(TEXT, N''))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (9, CONVERT(TEXT, N'MailServerLoginEnabled'), CONVERT(TEXT, N'1'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (10, CONVERT(TEXT, N'MailServerLogin'), CONVERT(TEXT, N''))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (11, CONVERT(TEXT, N'MailServerPassword'), CONVERT(TEXT, N''))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (12, CONVERT(TEXT, N'MailServerPort'), CONVERT(TEXT, N'25'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (13, CONVERT(TEXT, N'MailUseSSL'), CONVERT(TEXT, N'0'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (14, CONVERT(TEXT, N'TwitterConsumerKey'), CONVERT(TEXT, N''))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (15, CONVERT(TEXT, N'TwitterConsumerSecret'), CONVERT(TEXT, N' '))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (16, CONVERT(TEXT, N'FacebookAppID'), CONVERT(TEXT, N' '))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (17, CONVERT(TEXT, N'FacebookAppSecret'), CONVERT(TEXT, N' '))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (18, CONVERT(TEXT, N'GoogleRigth'), CONVERT(TEXT, N'<script type="text/javascript"><!--
google_ad_client = "ca-pub-5309442032626010";
/* derecha CodigoWeb */
google_ad_slot = "5709496675";
google_ad_width = 300;
google_ad_height = 250;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (20, CONVERT(TEXT, N'MensajeFooter'), CONVERT(TEXT, N'Descarga la última versión del software del Blog DeveloperJI ahora.'))
INSERT [dbo].[JIOptions] ([OptionID], [OptionName], [OptionValue]) VALUES (21, CONVERT(TEXT, N'TituloBlog'), CONVERT(TEXT, N'Developer JI'))
SET IDENTITY_INSERT [dbo].[JIOptions] OFF
/****** Object:  Table [dbo].[JIMenu]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JIMenu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MenuParent] [int] NULL,
	[MenuStatus] [bit] NOT NULL,
	[Orden] [int] NULL,
	[Clave] [varchar](50) NULL,
	[Tipo] [varchar](50) NULL,
	[Imagen] [varchar](250) NULL,
	[PostID] [int] NULL,
	[Contacto] [bit] NOT NULL,
 CONSTRAINT [PK_JIMenu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JIMenu] ON
INSERT [dbo].[JIMenu] ([MenuID], [Name], [MenuParent], [MenuStatus], [Orden], [Clave], [Tipo], [Imagen], [PostID], [Contacto]) VALUES (1, CONVERT(TEXT, N'Inicio'), 0, 1, 1, CONVERT(TEXT, N'inicio'), CONVERT(TEXT, N'blog'), NULL, NULL, 0)
INSERT [dbo].[JIMenu] ([MenuID], [Name], [MenuParent], [MenuStatus], [Orden], [Clave], [Tipo], [Imagen], [PostID], [Contacto]) VALUES (2, CONVERT(TEXT, N'About'), 0, 1, 2, CONVERT(TEXT, N'about'), CONVERT(TEXT, N'pagina'), CONVERT(TEXT, N'About.png'), NULL, 0)
INSERT [dbo].[JIMenu] ([MenuID], [Name], [MenuParent], [MenuStatus], [Orden], [Clave], [Tipo], [Imagen], [PostID], [Contacto]) VALUES (3, CONVERT(TEXT, N'Portafolio'), 0, 1, 3, CONVERT(TEXT, N'portafolio'), CONVERT(TEXT, N'blog'), CONVERT(TEXT, N'Portafolio.png'), NULL, 0)
INSERT [dbo].[JIMenu] ([MenuID], [Name], [MenuParent], [MenuStatus], [Orden], [Clave], [Tipo], [Imagen], [PostID], [Contacto]) VALUES (4, CONVERT(TEXT, N'Recursos'), 0, 1, 4, CONVERT(TEXT, N'recursos'), CONVERT(TEXT, N'blog'), CONVERT(TEXT, N'recursos.png'), NULL, 0)
INSERT [dbo].[JIMenu] ([MenuID], [Name], [MenuParent], [MenuStatus], [Orden], [Clave], [Tipo], [Imagen], [PostID], [Contacto]) VALUES (5, CONVERT(TEXT, N'Contacto'), 0, 1, 5, CONVERT(TEXT, N'contacto'), CONVERT(TEXT, N'contacto'), CONVERT(TEXT, N'Contacto.png'), 8, 1)
SET IDENTITY_INSERT [dbo].[JIMenu] OFF
/****** Object:  Table [dbo].[JICategorias]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JICategorias](
	[CategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Descripcion] [varchar](2500) NOT NULL,
	[MenuID] [int] NOT NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_JICategorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JICategorias] ON
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (1, CONVERT(TEXT, N'Javascript'), CONVERT(TEXT, N'jQuery, Mootols, Scripts'), 1, 1)
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (2, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'Programación y ejemplos de asp.net'), 1, 1)
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (3, CONVERT(TEXT, N'Videos'), CONVERT(TEXT, N'Videos de programación'), 1, 1)
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (4, CONVERT(TEXT, N'Pagina'), CONVERT(TEXT, N'About'), 2, 0)
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (5, CONVERT(TEXT, N'Portafolio'), CONVERT(TEXT, N'Descarga nuestras aplicaciones'), 3, 1)
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (6, CONVERT(TEXT, N'Recursos'), CONVERT(TEXT, N'Ejemplos, descargas, herramientas y más'), 4, 1)
INSERT [dbo].[JICategorias] ([CategoriaID], [Name], [Descripcion], [MenuID], [Visible]) VALUES (7, CONVERT(TEXT, N'Contacto'), CONVERT(TEXT, N'Contacto'), 5, 0)
SET IDENTITY_INSERT [dbo].[JICategorias] OFF
/****** Object:  Table [dbo].[JIPost]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JIPost](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PostDate] [datetime] NOT NULL,
	[PostDateModificado] [datetime] NOT NULL,
	[PostContent] [text] NOT NULL,
	[PostTitle] [varchar](250) NOT NULL,
	[PostStatus] [bit] NOT NULL,
	[PostCommentCount] [int] NOT NULL,
	[PostImage] [varchar](250) NOT NULL,
	[PostParent] [int] NOT NULL,
	[CategoriaPrincipal] [varchar](250) NOT NULL,
	[Clave] [varchar](50) NULL,
 CONSTRAINT [PK_JIPost] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JIPost] ON
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (1, 1, CAST(0x0000A1C700000000 AS DateTime), CAST(0x0000A1C400000000 AS DateTime), CONVERT(TEXT, N'A date and time format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'WALLE Juan José Escutia'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/walle.jpg'), 0, CONVERT(TEXT, N'Videos'), CONVERT(TEXT, N'Video'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (2, 1, CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A1C700000000 AS DateTime), CONVERT(TEXT, N'A date and time<br/><br/><br/><br/><br/><br/><br/><br/> format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'UP Juan José Escutia'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/up.jpg'), 0, CONVERT(TEXT, N'Videos'), CONVERT(TEXT, N'Video'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (3, 1, CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A1C500000000 AS DateTime), CONVERT(TEXT, N'A date and time<br/><br/><br/><br/><br/><br/><br/><br/> format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'Con la compra'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/toystory.jpg'), 0, CONVERT(TEXT, N'Javascript'), CONVERT(TEXT, N'Post'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (4, 1, CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A1C900000000 AS DateTime), CONVERT(TEXT, N'A date and time<br/><br/><br/><br/><br/><br/><br/><br/> format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'Con la venta'), 1, 2, CONVERT(TEXT, N'/ImagesUpload/nemo.jpg'), 0, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'Post'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (5, 1, CAST(0x0000A1C700000000 AS DateTime), CAST(0x0000A1CC00000000 AS DateTime), CONVERT(TEXT, N'A date and time format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'WALLE Juan José Escutia'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/walle.jpg'), 0, CONVERT(TEXT, N'Videos'), CONVERT(TEXT, N'Audio'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (6, 1, CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A1CB00000000 AS DateTime), CONVERT(TEXT, N'A date and time<br/><br/><br/><br/><br/><br/><br/><br/> format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'UP Juan José Escutia'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/up.jpg'), 0, CONVERT(TEXT, N'Videos'), CONVERT(TEXT, N'Audio'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (7, 1, CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A1BD00000000 AS DateTime), CONVERT(TEXT, N'A date and time<br/><br/><br/><br/><br/><br/><br/><br/> format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'Con la compra'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/toystory.jpg'), 0, CONVERT(TEXT, N'Javascript'), CONVERT(TEXT, N'Recurso'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (8, 1, CAST(0x0000A1C800000000 AS DateTime), CAST(0x0000A1C200000000 AS DateTime), CONVERT(TEXT, N'A date and time<br/><br/><br/><br/><br/><br/><br/><br/> format string defines the text representation of a DateTime or DateTimeOffset value that results from a formatting operation . It can also define the representation of a date and time value that is required in a parsing operation in order to successfully convert the string to a date and time. A custom format string consists of one or more custom date and time format specifiers. Any string that is not a standard date and time format string is interpreted as a custom date and time format <br/><br/><br/><br/><br/><br/><br/><br/> string. '), CONVERT(TEXT, N'Con la venta'), 1, 27, CONVERT(TEXT, N'/ImagesUpload/nemo.jpg'), 0, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'Recurso'))
INSERT [dbo].[JIPost] ([PostID], [UserID], [PostDate], [PostDateModificado], [PostContent], [PostTitle], [PostStatus], [PostCommentCount], [PostImage], [PostParent], [CategoriaPrincipal], [Clave]) VALUES (15, 1, CAST(0x0000A1DC00D53639 AS DateTime), CAST(0x0000A1DC00D53639 AS DateTime), CONVERT(TEXT, N'
<p>&nbsp;<img alt="" src="/ImagesUpload/walle.jpg" style="height:246px; width:618px"></p>
<div style="background:#eee; border:1px solid #ccc; padding:5px 10px">// The toolbar groups arrangement, optimized for two toolbar rows.<br>
&nbsp;&nbsp; &nbsp;config.toolbarGroups = [<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''clipboard'',&nbsp;&nbsp; groups: [ ''clipboard'', ''undo'' ] },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''editing'',&nbsp;&nbsp;&nbsp;&nbsp; groups: [ ''find'', ''selection'', ''spellchecker'' ] },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''links'' },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''insert'' },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''forms'' },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''tools'' },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''document'',&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; groups: [ ''mode'', ''document'', ''doctools'' ] },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''others'' },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;''/'',<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''basicstyles'', groups: [ ''basicstyles'', ''cleanup'' ] },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''paragraph'',&nbsp;&nbsp; groups: [ ''list'', ''indent'', ''blocks'', ''align'', ''bidi'' ] },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''styles'' },<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{ name: ''colors'' }<br>
&nbsp;&nbsp; &nbsp;];</div>
<p>&nbsp;</p>
'), CONVERT(TEXT, N'Capturando el codigo web'), 1, 0, CONVERT(TEXT, N'/ImagesUpload/default.png'), 0, CONVERT(TEXT, N'Javascript'), CONVERT(TEXT, N'Audio'))
SET IDENTITY_INSERT [dbo].[JIPost] OFF
/****** Object:  Table [dbo].[JIPostMeta]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JIPostMeta](
	[MetaID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[MetaKey] [varchar](250) NOT NULL,
	[Value] [text] NOT NULL,
 CONSTRAINT [PK_JIPostMeta] PRIMARY KEY CLUSTERED 
(
	[MetaID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JIPostMeta] ON
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (1, 1, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'ASP.NET'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (2, 2, CONVERT(TEXT, N'Programación'), CONVERT(TEXT, N'Programar en .NET'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (3, 1, CONVERT(TEXT, N'Ajax'), CONVERT(TEXT, N'Envio de datos'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (6, 1, CONVERT(TEXT, N'Linq'), CONVERT(TEXT, N'Acceso a datos'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (7, 2, CONVERT(TEXT, N'Windows Phone'), CONVERT(TEXT, N'WPF'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (8, 2, CONVERT(TEXT, N'JQuery'), CONVERT(TEXT, N'Menu'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (9, 1, CONVERT(TEXT, N'Forms'), CONVERT(TEXT, N'Formularios'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (10, 1, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'Login'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (11, 2, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'Repeater'))
INSERT [dbo].[JIPostMeta] ([MetaID], [PostID], [MetaKey], [Value]) VALUES (12, 3, CONVERT(TEXT, N'ASPNET'), CONVERT(TEXT, N'GridView'))
SET IDENTITY_INSERT [dbo].[JIPostMeta] OFF
/****** Object:  Table [dbo].[JIComment]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JIComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Author] [varchar](200) NOT NULL,
	[AuthorEmail] [varchar](100) NOT NULL,
	[AuthorUrl] [varchar](250) NOT NULL,
	[AuthorIP] [varchar](80) NOT NULL,
	[CommentDate] [datetime] NOT NULL,
	[CommentContent] [text] NOT NULL,
	[CommentParent] [int] NOT NULL,
 CONSTRAINT [PK_JIComment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JIComment] ON
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (2, 2, 0, CONVERT(TEXT, N'Jiestrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CAST(0x0000A1CE0130A046 AS DateTime), CONVERT(TEXT, N'comentario'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (3, 2, 0, CONVERT(TEXT, N'Jiestrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CAST(0x0000A1CE0130A046 AS DateTime), CONVERT(TEXT, N'uno'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (4, 2, 0, CONVERT(TEXT, N'Jiestrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CAST(0x0000A1CE0130A046 AS DateTime), CONVERT(TEXT, N'hola'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (5, 2, 0, CONVERT(TEXT, N'Jiestrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CAST(0x0000A1CE0130A046 AS DateTime), CONVERT(TEXT, N'unodos'), 3)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (6, 2, 0, CONVERT(TEXT, N'Jiestrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CAST(0x0000A1CE0130A046 AS DateTime), CONVERT(TEXT, N'unotres'), 5)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (7, 2, 0, CONVERT(TEXT, N'Jiestrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CAST(0x0000A1CE0130A046 AS DateTime), CONVERT(TEXT, N'unotresuno'), 3)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (13, 2, 0, CONVERT(TEXT, N'José'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N'0.0.0.0'), CAST(0x0000A1CF01269E27 AS DateTime), CONVERT(TEXT, N'Jose No se pueden ejecutar operaciones Create, Update o Delete en ''Table(JIComment)'' porque no tiene una clave principal.'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (14, 4, 0, CONVERT(TEXT, N'José'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N'0.0.0.0'), CAST(0x0000A1CF01273D04 AS DateTime), CONVERT(TEXT, N'

I need to insert records into a table that has no primary key using LINQ to SQL. The table is poorly designed; I have NO control over the table structure. The table is comprised of a few varchar fields, a text field, and a timestamp. It is used as an audit trail for other entities.

What is the best way to accomplish the inserts? Could I extend the Linq partial class for this table and add a "fake" key? I''m open to any hack, however kludgey.
'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (15, 4, 0, CONVERT(TEXT, N'Carlos'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N'0.0.0.0'), CAST(0x0000A1CF012771A0 AS DateTime), CONVERT(TEXT, N'No es cierto eso
'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (16, 8, 0, CONVERT(TEXT, N'José'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N'0.0.0.0'), CAST(0x0000A1D4012BE006 AS DateTime), CONVERT(TEXT, N'Prueba envío de correo'), 0)
INSERT [dbo].[JIComment] ([CommentID], [PostID], [UserID], [Author], [AuthorEmail], [AuthorUrl], [AuthorIP], [CommentDate], [CommentContent], [CommentParent]) VALUES (42, 8, 0, CONVERT(TEXT, N'José I. Estrada'), CONVERT(TEXT, N'jiestrada@live.com.mx'), CONVERT(TEXT, N''), CONVERT(TEXT, N'0.0.0.0'), CAST(0x0000A1D901504F0E AS DateTime), CONVERT(TEXT, N'prueba de envio'), 39)
SET IDENTITY_INSERT [dbo].[JIComment] OFF
/****** Object:  Table [dbo].[JICategoriaPost]    Script Date: 06/14/2013 17:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JICategoriaPost](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
 CONSTRAINT [PK_JICategoriaPost] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[JICategoriaPost] ON
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (1, 1, 1)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (2, 1, 2)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (3, 2, 2)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (4, 3, 6)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (5, 4, 1)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (6, 5, 6)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (7, 5, 1)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (8, 5, 4)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (9, 6, 6)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (10, 7, 3)
INSERT [dbo].[JICategoriaPost] ([ID], [PostID], [CategoriaID]) VALUES (11, 8, 6)
SET IDENTITY_INSERT [dbo].[JICategoriaPost] OFF
/****** Object:  View [dbo].[vPost]    Script Date: 06/14/2013 17:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPost]
AS
SELECT     dbo.JIPost.PostID, dbo.JIPost.PostTitle, dbo.JIPost.PostCommentCount, dbo.JIUser.NicName, dbo.JIPost.PostDateModificado, dbo.JIPost.CategoriaPrincipal, 
                      dbo.JIPost.PostContent
FROM         dbo.JIPost INNER JOIN
                      dbo.JIUser ON dbo.JIPost.UserID = dbo.JIUser.UserID
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "JIPost"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 267
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JIUser"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 249
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPost'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPost'
GO
/****** Object:  View [dbo].[vPostMeta]    Script Date: 06/14/2013 17:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPostMeta]
AS
SELECT     dbo.JIPostMeta.MetaKey, dbo.JIPost.PostID, dbo.JIPost.UserID, dbo.JIPost.PostDate, dbo.JIPost.PostDateModificado, dbo.JIPost.PostContent, dbo.JIPost.PostTitle, 
                      dbo.JIPost.PostStatus, dbo.JIPost.PostCommentCount, dbo.JIPost.PostImage, dbo.JIPost.PostParent, dbo.JIPost.CategoriaPrincipal, dbo.JIPost.Clave
FROM         dbo.JIPost INNER JOIN
                      dbo.JIPostMeta ON dbo.JIPost.PostID = dbo.JIPostMeta.PostID
WHERE     (dbo.JIPost.PostStatus = 1)
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "JIPost"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 261
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JIPostMeta"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 190
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPostMeta'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPostMeta'
GO
/****** Object:  View [dbo].[vPostMenu]    Script Date: 06/14/2013 17:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPostMenu]
AS
SELECT     dbo.JIMenu.MenuID, dbo.JIMenu.Name, dbo.JICategorias.CategoriaID, dbo.JICategorias.Name AS CategoriaName, dbo.JICategorias.Descripcion, dbo.JIPost.PostID, 
                      dbo.JIPost.UserID, dbo.JIPost.PostDate, dbo.JIPost.PostDateModificado, dbo.JIPost.PostContent, dbo.JIPost.PostTitle, dbo.JIPost.PostStatus, 
                      dbo.JIPost.PostCommentCount, dbo.JIPost.PostImage, dbo.JIPost.PostParent, dbo.JIPost.CategoriaPrincipal, dbo.JIPost.Clave, dbo.JIMenu.MenuStatus, 
                      dbo.JIMenu.Tipo
FROM         dbo.JIMenu INNER JOIN
                      dbo.JICategorias ON dbo.JIMenu.MenuID = dbo.JICategorias.MenuID INNER JOIN
                      dbo.JICategoriaPost ON dbo.JICategorias.CategoriaID = dbo.JICategoriaPost.CategoriaID INNER JOIN
                      dbo.JIPost ON dbo.JICategoriaPost.PostID = dbo.JIPost.PostID
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "JIMenu"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 264
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JICategorias"
            Begin Extent = 
               Top = 4
               Left = 256
               Bottom = 225
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JICategoriaPost"
            Begin Extent = 
               Top = 3
               Left = 503
               Bottom = 249
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JIPost"
            Begin Extent = 
               Top = 6
               Left = 701
               Bottom = 125
               Right = 885
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 20
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         ' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPostMenu'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPostMenu'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'USER',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vPostMenu'
GO
/****** Object:  Default [DF_Table_1_UserRegistred]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIUser] ADD  CONSTRAINT [DF_Table_1_UserRegistred]  DEFAULT (getdate()) FOR [Registred]
GO
/****** Object:  Default [DF_Table_1_UserStatus]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIUser] ADD  CONSTRAINT [DF_Table_1_UserStatus]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_JIMenu_MenuStatus]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIMenu] ADD  CONSTRAINT [DF_JIMenu_MenuStatus]  DEFAULT ((1)) FOR [MenuStatus]
GO
/****** Object:  Default [DF_JIMenu_Contacto]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIMenu] ADD  CONSTRAINT [DF_JIMenu_Contacto]  DEFAULT ((0)) FOR [Contacto]
GO
/****** Object:  Default [DF_JICategorias_Visible]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JICategorias] ADD  CONSTRAINT [DF_JICategorias_Visible]  DEFAULT ((1)) FOR [Visible]
GO
/****** Object:  Default [DF_JIPost_PostDate]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost] ADD  CONSTRAINT [DF_JIPost_PostDate]  DEFAULT (getdate()) FOR [PostDate]
GO
/****** Object:  Default [DF_JIPost_PostDateModificado]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost] ADD  CONSTRAINT [DF_JIPost_PostDateModificado]  DEFAULT (getdate()) FOR [PostDateModificado]
GO
/****** Object:  Default [DF_JIPost_PostStatus]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost] ADD  CONSTRAINT [DF_JIPost_PostStatus]  DEFAULT ((1)) FOR [PostStatus]
GO
/****** Object:  Default [DF_JIPost_PostCommentCount]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost] ADD  CONSTRAINT [DF_JIPost_PostCommentCount]  DEFAULT ((0)) FOR [PostCommentCount]
GO
/****** Object:  Default [DF_JIPost_PostParent]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost] ADD  CONSTRAINT [DF_JIPost_PostParent]  DEFAULT ((0)) FOR [PostParent]
GO
/****** Object:  Default [DF_Comment_CommentDate]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIComment] ADD  CONSTRAINT [DF_Comment_CommentDate]  DEFAULT (getdate()) FOR [CommentDate]
GO
/****** Object:  ForeignKey [FK_JICategorias_JIMenu]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JICategorias]  WITH CHECK ADD  CONSTRAINT [FK_JICategorias_JIMenu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[JIMenu] ([MenuID])
GO
ALTER TABLE [dbo].[JICategorias] CHECK CONSTRAINT [FK_JICategorias_JIMenu]
GO
/****** Object:  ForeignKey [FK_JIPost_JICatalogoGeneral]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost]  WITH CHECK ADD  CONSTRAINT [FK_JIPost_JICatalogoGeneral] FOREIGN KEY([Clave])
REFERENCES [dbo].[JICatalogoGeneral] ([Clave])
GO
ALTER TABLE [dbo].[JIPost] CHECK CONSTRAINT [FK_JIPost_JICatalogoGeneral]
GO
/****** Object:  ForeignKey [FK_JIPost_JIUser]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPost]  WITH CHECK ADD  CONSTRAINT [FK_JIPost_JIUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[JIUser] ([UserID])
GO
ALTER TABLE [dbo].[JIPost] CHECK CONSTRAINT [FK_JIPost_JIUser]
GO
/****** Object:  ForeignKey [FK_JIPostMeta_JIPost]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIPostMeta]  WITH CHECK ADD  CONSTRAINT [FK_JIPostMeta_JIPost] FOREIGN KEY([PostID])
REFERENCES [dbo].[JIPost] ([PostID])
GO
ALTER TABLE [dbo].[JIPostMeta] CHECK CONSTRAINT [FK_JIPostMeta_JIPost]
GO
/****** Object:  ForeignKey [FK_JIComment_JIPost]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JIComment]  WITH CHECK ADD  CONSTRAINT [FK_JIComment_JIPost] FOREIGN KEY([PostID])
REFERENCES [dbo].[JIPost] ([PostID])
GO
ALTER TABLE [dbo].[JIComment] CHECK CONSTRAINT [FK_JIComment_JIPost]
GO
/****** Object:  ForeignKey [FK_JICategoriaPost_JICategorias]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JICategoriaPost]  WITH CHECK ADD  CONSTRAINT [FK_JICategoriaPost_JICategorias] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[JICategorias] ([CategoriaID])
GO
ALTER TABLE [dbo].[JICategoriaPost] CHECK CONSTRAINT [FK_JICategoriaPost_JICategorias]
GO
/****** Object:  ForeignKey [FK_JICategoriaPost_JIPost]    Script Date: 06/14/2013 17:33:14 ******/
ALTER TABLE [dbo].[JICategoriaPost]  WITH CHECK ADD  CONSTRAINT [FK_JICategoriaPost_JIPost] FOREIGN KEY([PostID])
REFERENCES [dbo].[JIPost] ([PostID])
GO
ALTER TABLE [dbo].[JICategoriaPost] CHECK CONSTRAINT [FK_JICategoriaPost_JIPost]
GO


/****** Object:  Table [dbo].[JISuscripcion]    Script Date: 06/27/2013 19:18:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JISuscripcion](
	[SuscripcionID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](650) NOT NULL,
	[status] [bit] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_JISuscripcion] PRIMARY KEY CLUSTERED 
(
	[SuscripcionID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_JISuscripcion_status]    Script Date: 06/27/2013 19:18:00 ******/
ALTER TABLE [dbo].[JISuscripcion] ADD  CONSTRAINT [DF_JISuscripcion_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_JISuscripcion_fecha]    Script Date: 06/27/2013 19:18:00 ******/
ALTER TABLE [dbo].[JISuscripcion] ADD  CONSTRAINT [DF_JISuscripcion_fecha]  DEFAULT (getdate()) FOR [fecha]
GO