USE [Platformus]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientSideId] [uniqueidentifier] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Url] [nvarchar](128) NOT NULL,
	[NameId] [int] NOT NULL,
	[DescriptionId] [int] NOT NULL,
	[Position] [int] NULL,
	[TitleId] [int] NOT NULL,
	[MetaDescriptionId] [int] NOT NULL,
	[MetaKeywordsId] [int] NOT NULL,
	[ProductProviderCSharpClassName] [nvarchar](128) NOT NULL,
	[ProductProviderParameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[PluralizedName] [nvarchar](64) NOT NULL,
	[IsAbstract] [bit] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompletedFields]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompletedFields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompletedFormId] [int] NOT NULL,
	[FieldId] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_CompletedFields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompletedForms]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompletedForms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormId] [int] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CompletedForms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Configurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CredentialTypeId] [int] NOT NULL,
	[Identifier] [nvarchar](64) NOT NULL,
	[Secret] [nvarchar](1024) NULL,
	[Extra] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Credentials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CredentialTypes]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CredentialTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_CredentialTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cultures]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cultures](
	[Id] [nvarchar](2) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[IsNeutral] [bit] NOT NULL,
	[IsFrontendDefault] [bit] NOT NULL,
	[IsBackendDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Cultures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataSources]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EndpointId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[DataProviderCSharpClassName] [nvarchar](128) NOT NULL,
	[DataProviderParameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_DataSources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataTypeParameters]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypeParameters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataTypeId] [int] NOT NULL,
	[JavaScriptEditorClassName] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_DataTypeParameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataTypeParameterValues]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypeParameterValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataTypeParameterId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_DataTypeParameterValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataTypes]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StorageDataType] [nvarchar](32) NOT NULL,
	[JavaScriptEditorClassName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_DataTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryMethods]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_DeliveryMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dictionaries]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionaries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Dictionaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EndpointPermissions]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndpointPermissions](
	[EndpointId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_EndpointPermissions] PRIMARY KEY CLUSTERED 
(
	[EndpointId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endpoints]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endpoints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[UrlTemplate] [nvarchar](128) NULL,
	[Position] [int] NULL,
	[DisallowAnonymous] [bit] NOT NULL,
	[SignInUrl] [nvarchar](128) NULL,
	[RequestProcessorCSharpClassName] [nvarchar](128) NOT NULL,
	[RequestProcessorParameters] [nvarchar](1024) NULL,
	[ResponseCacheCSharpClassName] [nvarchar](128) NULL,
	[ResponseCacheParameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Endpoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldOptions]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FieldId] [int] NOT NULL,
	[ValueId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_FieldOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormId] [int] NOT NULL,
	[FieldTypeId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[MaxLength] [int] NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
	[ValidatorCSharpClassName] [nvarchar](128) NULL,
 CONSTRAINT [PK_FieldTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Size] [bigint] NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forms]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[SubmitButtonTitleId] [int] NOT NULL,
	[ProduceCompletedForms] [bit] NOT NULL,
	[FormHandlerCSharpClassName] [nvarchar](128) NOT NULL,
	[FormHandlerParameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Forms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localizations]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DictionaryId] [int] NOT NULL,
	[CultureId] [nvarchar](2) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[TabId] [int] NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
	[PropertyDataTypeId] [int] NULL,
	[IsPropertyLocalizable] [bit] NULL,
	[IsPropertyVisibleInList] [bit] NULL,
	[RelationClassId] [int] NULL,
	[IsRelationSingleParent] [bit] NULL,
	[MinRelatedObjectsNumber] [int] NULL,
	[MaxRelatedObjectsNumber] [int] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItems]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NULL,
	[MenuItemId] [int] NULL,
	[NameId] [int] NOT NULL,
	[Url] [nvarchar](128) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_MenuItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelStates]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelStates](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ModelStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderStateId] [int] NOT NULL,
	[PaymentMethodId] [int] NOT NULL,
	[DeliveryMethodId] [int] NOT NULL,
	[CustomerFirstName] [nvarchar](64) NOT NULL,
	[CustomerLastName] [nvarchar](64) NULL,
	[CustomerPhone] [nvarchar](32) NOT NULL,
	[CustomerEmail] [nvarchar](64) NULL,
	[CustomerAddress] [nvarchar](128) NULL,
	[Note] [nvarchar](1024) NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStates]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_OrderStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Filename] [nvarchar](128) NOT NULL,
	[IsCover] [bit] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [money] NOT NULL,
	[Subtotal] [money] NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Url] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[DescriptionId] [int] NOT NULL,
	[UnitsId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[TitleId] [int] NOT NULL,
	[MetaDescriptionId] [int] NOT NULL,
	[MetaKeywordsId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ObjectId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[IntegerValue] [int] NULL,
	[DecimalValue] [money] NULL,
	[StringValueId] [int] NULL,
	[DateTimeValue] [datetime2](7) NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relations]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[PrimaryId] [int] NOT NULL,
	[ForeignId] [int] NOT NULL,
 CONSTRAINT [PK_Relations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[RoleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabs]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Tabs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variables]    Script Date: 09.09.2021 17:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Variables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 
GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (1, NULL, N'Page', N'Page', N'Pages', 1)
GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (2, 1, N'RegularPage', N'Regular Page', N'Regular Pages', 0)
GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (3, NULL, N'Tag', N'Tag', N'Tags', 0)
GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (4, NULL, N'Comment', N'Comment', N'Comments', 0)
GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (5, 1, N'PostPage', N'Post Page', N'Post Pages', 0)
GO
SET IDENTITY_INSERT [dbo].[Classes] OFF
GO
SET IDENTITY_INSERT [dbo].[Configurations] ON 
GO
INSERT [dbo].[Configurations] ([Id], [Code], [Name]) VALUES (1, N'Email', N'Email')
GO
INSERT [dbo].[Configurations] ([Id], [Code], [Name]) VALUES (2, N'Globalization', N'Globalization')
GO
SET IDENTITY_INSERT [dbo].[Configurations] OFF
GO
SET IDENTITY_INSERT [dbo].[Credentials] ON 
GO
INSERT [dbo].[Credentials] ([Id], [UserId], [CredentialTypeId], [Identifier], [Secret], [Extra]) VALUES (1, 1, 1, N'admin@platformus.net', N'8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=', N'0O/ZGwhScZRGbsmiUEckOg==')
GO
SET IDENTITY_INSERT [dbo].[Credentials] OFF
GO
SET IDENTITY_INSERT [dbo].[CredentialTypes] ON 
GO
INSERT [dbo].[CredentialTypes] ([Id], [Code], [Name], [Position]) VALUES (1, N'Email', N'Email', 1)
GO
SET IDENTITY_INSERT [dbo].[CredentialTypes] OFF
GO
INSERT [dbo].[Cultures] ([Id], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (N'__', N'Neutral', 1, 0, 0)
GO
INSERT [dbo].[Cultures] ([Id], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (N'en', N'English', 0, 1, 1)
GO
INSERT [dbo].[Cultures] ([Id], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (N'ru', N'Русский', 0, 0, 0)
GO
INSERT [dbo].[Cultures] ([Id], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (N'uk', N'Українська', 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[DataSources] ON 
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (1, 1, N'Page', N'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (2, 2, N'Page', N'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (3, 2, N'Posts', N'Platformus.Website.Frontend.DataProviders.ObjectsDataProvider', N'ClassId=5')
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (4, 3, N'Page', N'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (5, 3, N'Tags', N'Platformus.Website.Frontend.DataProviders.RelatedObjectsDataProvider', N'RelationMemberId=11;RelationType=Primary')
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (6, 3, N'Comments', N'Platformus.Website.Frontend.DataProviders.RelatedObjectsDataProvider', N'RelationMemberId=15;RelationType=Primary')
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [DataProviderCSharpClassName], [DataProviderParameters]) VALUES (7, 4, N'Page', N'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL)
GO
SET IDENTITY_INSERT [dbo].[DataSources] OFF
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameters] ON 
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (1, 1, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (2, 1, N'numericTextBox', N'MaxLength', N'Max length')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (3, 2, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (4, 2, N'numericTextBox', N'MaxLength', N'Max length')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (5, 4, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (6, 4, N'numericTextBox', N'MinValue', N'Min value')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (7, 4, N'numericTextBox', N'MaxValue', N'Max value')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (8, 5, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (9, 5, N'numericTextBox', N'MinValue', N'Min value')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (10, 5, N'numericTextBox', N'MaxValue', N'Max value')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (11, 7, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (12, 8, N'numericTextBox', N'Width', N'Width')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (13, 8, N'numericTextBox', N'Height', N'Height')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (14, 9, N'textBox', N'Mode', N'Mode')
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameters] OFF
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameterValues] ON 
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (1, 1, 1, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (2, 2, 1, N'128')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (3, 1, 3, N'false')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (4, 2, 3, N'128')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (5, 1, 4, N'false')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (6, 2, 4, N'512')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (7, 1, 5, N'false')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (8, 2, 5, N'256')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (9, 1, 6, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (10, 2, 6, N'48')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (11, 1, 7, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (12, 2, 7, N'64')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (13, 3, 8, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (14, 7, 9, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (15, 1, 10, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (16, 2, 10, N'128')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (17, 5, 12, N'1024')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (18, 6, 12, N'256')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (19, 7, 14, N'true')
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameterValues] OFF
GO
SET IDENTITY_INSERT [dbo].[DataTypes] ON 
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (1, N'string', N'singleLinePlainText', N'Single line plain text', 1)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (2, N'string', N'multilinePlainText', N'Multiline plain text', 2)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (3, N'string', N'html', N'Html', 3)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (4, N'integer', N'integerNumber', N'Integer number', 4)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (5, N'decimal', N'decimalNumber', N'Decimal number', 5)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (6, N'integer', N'booleanFlag', N'Boolean flag', 6)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (7, N'datetime', N'date', N'Date', 7)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (8, N'datetime', N'dateTime', N'DateTime', 8)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (9, N'string', N'image', N'Image', 9)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (10, N'string', N'sourceCode', N'Source code', 10)
GO
SET IDENTITY_INSERT [dbo].[DataTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Dictionaries] ON 
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (1)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (2)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (3)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (4)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (5)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (6)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (7)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (8)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (9)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (10)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (11)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (12)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (13)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (14)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (15)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (16)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (17)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (18)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (19)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (20)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (21)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (22)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (23)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (24)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (25)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (26)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (27)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (28)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (29)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (30)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (31)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (32)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (33)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (34)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (35)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (36)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (37)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (38)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (39)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (40)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (41)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (42)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (43)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (44)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (45)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (46)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (47)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (48)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (49)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (50)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (51)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (52)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (53)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (54)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (55)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (56)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (57)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (58)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (59)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (60)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (61)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (62)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (63)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (64)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (65)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (66)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (67)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (68)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (69)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (70)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (71)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (72)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (73)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (74)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (75)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (76)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (77)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (78)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (79)
GO
SET IDENTITY_INSERT [dbo].[Dictionaries] OFF
GO
SET IDENTITY_INSERT [dbo].[Endpoints] ON 
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [RequestProcessorCSharpClassName], [RequestProcessorParameters], [ResponseCacheCSharpClassName], [ResponseCacheParameters]) VALUES (1, N'Default', N'{*url}', 1000, 0, NULL, N'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', N'ViewName=RegularPage', NULL, NULL)
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [RequestProcessorCSharpClassName], [RequestProcessorParameters], [ResponseCacheCSharpClassName], [ResponseCacheParameters]) VALUES (2, N'Blog', N'blog', 10, 0, NULL, N'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', N'ViewName=BlogPage', NULL, NULL)
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [RequestProcessorCSharpClassName], [RequestProcessorParameters], [ResponseCacheCSharpClassName], [ResponseCacheParameters]) VALUES (3, N'Post', N'blog/{segment}', 20, 0, NULL, N'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', N'ViewName=PostPage', NULL, NULL)
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [RequestProcessorCSharpClassName], [RequestProcessorParameters], [ResponseCacheCSharpClassName], [ResponseCacheParameters]) VALUES (4, N'Contacts', N'contacts', 30, 0, NULL, N'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', N'ViewName=ContactsPage', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Endpoints] OFF
GO
SET IDENTITY_INSERT [dbo].[Fields] ON 
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (1, 1, 1, N'Name', 8, 1, NULL, 10)
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (2, 1, 1, N'Email', 9, 1, NULL, 20)
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (3, 1, 2, N'Message', 10, 1, NULL, 30)
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (4, 2, 1, N'Name', 13, 1, NULL, 10)
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (5, 2, 2, N'Comment', 14, 1, NULL, 20)
GO
SET IDENTITY_INSERT [dbo].[Fields] OFF
GO
SET IDENTITY_INSERT [dbo].[FieldTypes] ON 
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (1, N'TextBox', N'Text box', 1, NULL)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (2, N'TextArea', N'Text area', 2, NULL)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (3, N'Checkbox', N'Checkbox', 3, NULL)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (4, N'RadioButtonList', N'Radio button list', 4, NULL)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (5, N'DropDownList', N'Drop down list', 5, NULL)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (6, N'FileUpload', N'File upload', 6, NULL)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position], [ValidatorCSharpClassName]) VALUES (7, N'ReCAPTCHA', N'ReCAPTCHA', 7, N'Platformus.Website.Frontend.FieldValidators.ReCaptchaFieldValidator')
GO
SET IDENTITY_INSERT [dbo].[FieldTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Forms] ON 
GO
INSERT [dbo].[Forms] ([Id], [Code], [NameId], [SubmitButtonTitleId], [ProduceCompletedForms], [FormHandlerCSharpClassName], [FormHandlerParameters]) VALUES (1, N'Feedback', 6, 7, 1, N'Platformus.Website.Frontend.FormHandlers.EmailFormHandler', N'RecipientEmails=test@test.com;RedirectUrl=/contacts')
GO
INSERT [dbo].[Forms] ([Id], [Code], [NameId], [SubmitButtonTitleId], [ProduceCompletedForms], [FormHandlerCSharpClassName], [FormHandlerParameters]) VALUES (2, N'WriteComment', 12, 11, 1, N'WebApplication.FormHandlers.WriteCommentFormHandler', NULL)
GO
SET IDENTITY_INSERT [dbo].[Forms] OFF
GO
SET IDENTITY_INSERT [dbo].[Localizations] ON 
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (1, 1, N'en', N'Main')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (2, 1, N'ru', N'Главное')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (3, 1, N'uk', N'Головне')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (4, 2, N'uk', N'Головна')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (5, 2, N'ru', N'Главная')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (6, 2, N'en', N'Home')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (7, 3, N'uk', N'Про мене')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (8, 3, N'ru', N'Обо мне')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (9, 3, N'en', N'About me')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (10, 4, N'uk', N'Блог')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (11, 4, N'ru', N'Блог')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (12, 4, N'en', N'Blog')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (13, 5, N'uk', N'Контакти')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (14, 5, N'ru', N'Контакты')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (15, 5, N'en', N'Contacts')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (16, 6, N'uk', N'Зворотний зв’язок')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (17, 6, N'ru', N'Обратная связь')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (18, 6, N'en', N'Feedback')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (19, 7, N'en', N'Submit')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (20, 7, N'ru', N'Отправить')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (21, 7, N'uk', N'Надіслати')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (22, 8, N'uk', N'Ваше ім’я')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (23, 8, N'ru', N'Ваше имя')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (24, 8, N'en', N'Your name')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (25, 9, N'uk', N'Ваша електронна пошта')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (26, 9, N'ru', N'Ваша электронная почта')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (27, 9, N'en', N'Your email')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (28, 10, N'uk', N'Ваше повідомлення')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (29, 10, N'ru', N'Ваше сообщение')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (30, 10, N'en', N'Your message')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (31, 11, N'uk', N'Надіслати')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (32, 11, N'ru', N'Отправить')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (33, 11, N'en', N'Submit')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (34, 12, N'uk', N'Напишіть коментар')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (35, 12, N'ru', N'Напишите комментарий')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (36, 12, N'en', N'Write comment')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (37, 13, N'uk', N'Ваше ім’я')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (38, 13, N'ru', N'Ваше имя')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (39, 13, N'en', N'Your name')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (40, 14, N'uk', N'Ваше повідомлення')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (41, 14, N'ru', N'Ваш ')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (42, 14, N'en', N'Your comment')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (43, 15, N'__', N'/')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (44, 16, N'uk', N'<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (45, 16, N'ru', N'<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (46, 16, N'en', N'<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href="http://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (47, 17, N'uk', N'Ваш персональний блог')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (48, 17, N'ru', N'Ваш персональный блог')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (49, 17, N'en', N'Your Personal Blog')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (50, 18, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (51, 18, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (52, 18, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (53, 19, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (54, 19, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (55, 19, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (56, 20, N'__', N'/about-me')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (57, 21, N'uk', N'<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (58, 21, N'ru', N'<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (59, 21, N'en', N'<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (60, 22, N'uk', N'Про мене')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (61, 22, N'ru', N'Обо мне')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (62, 22, N'en', N'About Me')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (63, 23, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (64, 23, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (65, 23, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (66, 24, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (67, 24, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (68, 24, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (69, 25, N'__', N'/blog')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (70, 26, N'uk', N'<h1>Блог</h1>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (71, 26, N'ru', N'<h1>Блог</h1>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (72, 26, N'en', N'<h1>Blog</h1>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (73, 27, N'uk', N'Блог')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (74, 27, N'ru', N'Блог')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (75, 27, N'en', N'Blog')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (76, 28, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (77, 28, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (78, 28, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (79, 29, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (80, 29, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (81, 29, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (82, 30, N'__', N'/contacts')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (83, 31, N'uk', N'<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (84, 31, N'ru', N'<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (85, 31, N'en', N'<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (86, 32, N'uk', N'Контакти')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (87, 32, N'ru', N'Контакты')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (88, 32, N'en', N'Contacts')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (89, 33, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (90, 33, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (91, 33, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (92, 34, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (93, 34, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (94, 34, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (95, 35, N'uk', N'Тег1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (96, 35, N'ru', N'Тэг1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (97, 35, N'en', N'Tag1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (98, 36, N'uk', N'Тег2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (99, 36, N'ru', N'Тэг2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (100, 36, N'en', N'Tag2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (101, 37, N'uk', N'Тег3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (102, 37, N'ru', N'Тэг3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (103, 37, N'en', N'Tag3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (104, 38, N'uk', N'Тег4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (105, 38, N'ru', N'Тэг4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (106, 38, N'en', N'Tag4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (107, 39, N'uk', N'Тег5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (108, 39, N'ru', N'Тэг5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (109, 39, N'en', N'Tag5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (110, 40, N'__', N'/blog/post-1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (111, 41, N'__', N'/images/objects/10/cover.jpg')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (112, 42, N'uk', N'Пост 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (113, 42, N'ru', N'Пост 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (114, 42, N'en', N'Post 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (115, 43, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (116, 43, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (117, 43, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (118, 44, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (119, 44, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (120, 44, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (121, 45, N'uk', N'Пост 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (122, 45, N'ru', N'Пост 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (123, 45, N'en', N'Post 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (124, 46, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (125, 46, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (126, 46, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (127, 47, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (128, 47, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (129, 47, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (130, 48, N'__', N'/blog/post-2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (131, 49, N'__', N'/images/objects/11/cover.jpg')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (132, 50, N'uk', N'Пост 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (133, 50, N'ru', N'Пост 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (134, 50, N'en', N'Post 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (135, 51, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (136, 51, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (137, 51, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (138, 52, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (139, 52, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (140, 52, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (141, 53, N'uk', N'Пост 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (142, 53, N'ru', N'Пост 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (143, 53, N'en', N'Post 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (144, 54, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (145, 54, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (146, 54, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (147, 55, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (148, 55, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (149, 55, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (150, 56, N'__', N'/blog/post-3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (151, 57, N'__', N'/images/objects/12/cover.jpg')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (152, 58, N'uk', N'Пост 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (153, 58, N'ru', N'Пост 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (154, 58, N'en', N'Post 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (155, 59, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (156, 59, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (157, 59, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (158, 60, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (159, 60, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (160, 60, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (161, 61, N'uk', N'Пост 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (162, 61, N'ru', N'Пост 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (163, 61, N'en', N'Post 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (164, 62, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (165, 62, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (166, 62, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (167, 63, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (168, 63, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (169, 63, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (170, 64, N'__', N'/blog/post-4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (171, 65, N'__', N'/images/objects/13/cover.jpg')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (172, 66, N'uk', N'Пост 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (173, 66, N'ru', N'Пост 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (174, 66, N'en', N'Post 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (175, 67, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (176, 67, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (177, 67, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (178, 68, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (179, 68, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (180, 68, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (181, 69, N'uk', N'Пост 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (182, 69, N'ru', N'Пост 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (183, 69, N'en', N'Post 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (184, 70, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (185, 70, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (186, 70, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (187, 71, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (188, 71, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (189, 71, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (190, 72, N'__', N'/blog/post-5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (191, 73, N'__', N'/images/objects/14/cover.jpg')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (192, 74, N'uk', N'Пост 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (193, 74, N'ru', N'Пост 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (194, 74, N'en', N'Post 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (195, 75, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (196, 75, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (197, 75, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (198, 76, N'uk', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (199, 76, N'ru', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (200, 76, N'en', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (201, 77, N'uk', N'Пост 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (202, 77, N'ru', N'Пост 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (203, 77, N'en', N'Post 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (204, 78, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (205, 78, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (206, 78, N'en', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (207, 79, N'uk', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (208, 79, N'ru', N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (209, 79, N'en', N'')
GO
SET IDENTITY_INSERT [dbo].[Localizations] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (1, 1, NULL, N'Url', N'URL', 1, 1, 0, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (2, 1, NULL, N'Content', N'Content', 100, 3, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (3, 1, 1, N'Title', N'Title', 1000, 1, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (4, 1, 1, N'MetaDescription', N'META description', 1010, 1, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (5, 1, 1, N'MetaKeywords', N'META keywords', 1020, 1, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (6, 3, NULL, N'Text', N'Text', 10, 1, 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (7, 4, NULL, N'Author', N'Author', 10, 1, 0, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (8, 4, NULL, N'Text', N'Text', 20, 2, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (9, 4, NULL, N'Created', N'Created', 30, 7, 0, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (10, 5, NULL, N'Name', N'Name', 10, 1, 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (11, 5, NULL, N'Tags', N'Tags', 20, NULL, NULL, NULL, 3, 0, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (12, 5, NULL, N'Cover', N'Cover', 30, 8, 0, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (13, 5, NULL, N'Preview', N'Preview', 40, 3, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (14, 5, NULL, N'Created', N'Created', 200, 7, 0, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (15, 5, NULL, N'Comments', N'Comments', 0, NULL, NULL, NULL, 4, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuItems] ON 
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (1, 1, NULL, 2, N'/', 10)
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (2, 1, NULL, 3, N'/about-me', 20)
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (3, 1, NULL, 4, N'/blog', 30)
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (4, 1, NULL, 5, N'/contacts', 40)
GO
SET IDENTITY_INSERT [dbo].[MenuItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 
GO
INSERT [dbo].[Menus] ([Id], [Code], [NameId]) VALUES (1, N'Main', 1)
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[Objects] ON 
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (1, 2)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (2, 2)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (3, 2)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (4, 2)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (5, 3)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (6, 3)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (7, 3)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (8, 3)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (9, 3)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (10, 5)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (11, 5)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (12, 5)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (13, 5)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (14, 5)
GO
SET IDENTITY_INSERT [dbo].[Objects] OFF
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (1, N'DoAnything', N'Do anything', 100)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (2, N'ManagePermissions', N'Manage permissions', 200)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (3, N'ManageRoles', N'Manage roles', 300)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (4, N'ManageUsers', N'Manage users', 400)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (5, N'ManageConfigurations', N'Manage configurations', 500)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (6, N'ManageCultures', N'Manage cultures', 600)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (7, N'ManageEndpoints', N'Manage endpoints', 700)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (8, N'ManageObjects', N'Manage objects', 800)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (9, N'ManageDataTypes', N'Manage data types', 900)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (10, N'ManageClasses', N'Manage classes', 1000)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (11, N'ManageMenus', N'Manage menus', 1100)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (12, N'ManageForms', N'Manage forms', 1200)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (13, N'ManageFileManager', N'Manage file manager', 1300)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (14, N'ManageCategories', N'Manage categories', 1400)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (15, N'ManageProducts', N'Manage products', 1500)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (16, N'ManageOrderStates', N'Manage order states', 1600)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (17, N'ManagePaymentMethods', N'Manage payment methods', 1700)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (18, N'ManageDeliveryMethods', N'Manage delivery methods', 1800)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (19, N'ManageCarts', N'Manage carts', 1900)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (20, N'ManageOrders', N'Manage orders', 2000)
GO
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Properties] ON 
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (1, 1, 1, NULL, NULL, 15, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (2, 1, 2, NULL, NULL, 16, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (3, 1, 3, NULL, NULL, 17, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (4, 1, 4, NULL, NULL, 18, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (5, 1, 5, NULL, NULL, 19, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (6, 2, 1, NULL, NULL, 20, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (7, 2, 2, NULL, NULL, 21, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (8, 2, 3, NULL, NULL, 22, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (9, 2, 4, NULL, NULL, 23, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (10, 2, 5, NULL, NULL, 24, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (11, 3, 1, NULL, NULL, 25, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (12, 3, 2, NULL, NULL, 26, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (13, 3, 3, NULL, NULL, 27, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (14, 3, 4, NULL, NULL, 28, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (15, 3, 5, NULL, NULL, 29, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (16, 4, 1, NULL, NULL, 30, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (17, 4, 2, NULL, NULL, 31, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (18, 4, 3, NULL, NULL, 32, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (19, 4, 4, NULL, NULL, 33, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (20, 4, 5, NULL, NULL, 34, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (21, 5, 6, NULL, NULL, 35, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (22, 6, 6, NULL, NULL, 36, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (23, 7, 6, NULL, NULL, 37, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (24, 8, 6, NULL, NULL, 38, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (25, 9, 6, NULL, NULL, 39, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (26, 10, 1, NULL, NULL, 40, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (27, 10, 12, NULL, NULL, 41, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (28, 10, 10, NULL, NULL, 42, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (29, 10, 13, NULL, NULL, 43, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (30, 10, 2, NULL, NULL, 44, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (31, 10, 14, NULL, NULL, NULL, CAST(N'2021-09-09T17:13:29.5216083' AS DateTime2))
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (32, 10, 3, NULL, NULL, 45, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (33, 10, 4, NULL, NULL, 46, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (34, 10, 5, NULL, NULL, 47, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (35, 11, 1, NULL, NULL, 48, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (36, 11, 12, NULL, NULL, 49, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (37, 11, 10, NULL, NULL, 50, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (38, 11, 13, NULL, NULL, 51, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (39, 11, 2, NULL, NULL, 52, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (40, 11, 14, NULL, NULL, NULL, CAST(N'2021-09-09T17:13:30.0631473' AS DateTime2))
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (41, 11, 3, NULL, NULL, 53, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (42, 11, 4, NULL, NULL, 54, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (43, 11, 5, NULL, NULL, 55, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (44, 12, 1, NULL, NULL, 56, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (45, 12, 12, NULL, NULL, 57, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (46, 12, 10, NULL, NULL, 58, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (47, 12, 13, NULL, NULL, 59, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (48, 12, 2, NULL, NULL, 60, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (49, 12, 14, NULL, NULL, NULL, CAST(N'2021-09-09T17:13:30.5379654' AS DateTime2))
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (50, 12, 3, NULL, NULL, 61, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (51, 12, 4, NULL, NULL, 62, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (52, 12, 5, NULL, NULL, 63, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (53, 13, 1, NULL, NULL, 64, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (54, 13, 12, NULL, NULL, 65, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (55, 13, 10, NULL, NULL, 66, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (56, 13, 13, NULL, NULL, 67, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (57, 13, 2, NULL, NULL, 68, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (58, 13, 14, NULL, NULL, NULL, CAST(N'2021-09-09T17:13:31.0456729' AS DateTime2))
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (59, 13, 3, NULL, NULL, 69, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (60, 13, 4, NULL, NULL, 70, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (61, 13, 5, NULL, NULL, 71, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (62, 14, 1, NULL, NULL, 72, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (63, 14, 12, NULL, NULL, 73, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (64, 14, 10, NULL, NULL, 74, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (65, 14, 13, NULL, NULL, 75, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (66, 14, 2, NULL, NULL, 76, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (67, 14, 14, NULL, NULL, NULL, CAST(N'2021-09-09T17:13:31.9108071' AS DateTime2))
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (68, 14, 3, NULL, NULL, 77, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (69, 14, 4, NULL, NULL, 78, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (70, 14, 5, NULL, NULL, 79, NULL)
GO
SET IDENTITY_INSERT [dbo].[Properties] OFF
GO
SET IDENTITY_INSERT [dbo].[Relations] ON 
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (1, 11, 6, 10)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (2, 11, 5, 10)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (3, 11, 9, 11)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (4, 11, 6, 12)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (5, 11, 5, 12)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (6, 11, 6, 13)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (7, 11, 8, 14)
GO
INSERT [dbo].[Relations] ([Id], [MemberId], [PrimaryId], [ForeignId]) VALUES (8, 11, 7, 14)
GO
SET IDENTITY_INSERT [dbo].[Relations] OFF
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (1, 1)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (2, 1)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 8)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 11)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 12)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 13)
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id], [Code], [Name], [Position]) VALUES (1, N'Developer', N'Developer', 100)
GO
INSERT [dbo].[Roles] ([Id], [Code], [Name], [Position]) VALUES (2, N'Administrator', N'Administrator', 200)
GO
INSERT [dbo].[Roles] ([Id], [Code], [Name], [Position]) VALUES (3, N'ContentManager', N'Content manager', 300)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Tabs] ON 
GO
INSERT [dbo].[Tabs] ([Id], [ClassId], [Name], [Position]) VALUES (1, 1, N'SEO', 100)
GO
SET IDENTITY_INSERT [dbo].[Tabs] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 1)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 2)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Name], [Created]) VALUES (1, N'Administrator', CAST(N'2017-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Variables] ON 
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (1, 1, N'SmtpServer', N'SMTP server', N'test', 1)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (2, 1, N'SmtpPort', N'SMTP port', N'25', 2)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (3, 1, N'SmtpUseSsl', N'SMTP use SSL', N'no', 3)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (4, 1, N'SmtpLogin', N'SMTP login', N'test', 4)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (5, 1, N'SmtpPassword', N'SMTP password', N'test', 5)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (6, 1, N'SmtpSenderEmail', N'SMTP sender email', N'test', 6)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (7, 1, N'SmtpSenderName', N'SMTP sender name', N'test', 7)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (8, 2, N'SpecifyCultureInUrl', N'Specify culture in URL', N'yes', 6)
GO
SET IDENTITY_INSERT [dbo].[Variables] OFF
GO
/****** Object:  Index [IX_Categories_CategoryId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_CategoryId] ON [dbo].[Categories]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Configurations_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Configurations_Code] ON [dbo].[Configurations]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Credentials_UserId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Credentials_UserId] ON [dbo].[Credentials]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CredentialTypes_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_CredentialTypes_Code] ON [dbo].[CredentialTypes]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataSources_EndpointId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_DataSources_EndpointId] ON [dbo].[DataSources]
(
	[EndpointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataTypeParameters_DataTypeId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_DataTypeParameters_DataTypeId] ON [dbo].[DataTypeParameters]
(
	[DataTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataTypeParameterValues_DataTypeParameterId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_DataTypeParameterValues_DataTypeParameterId] ON [dbo].[DataTypeParameterValues]
(
	[DataTypeParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FieldOptions_FieldId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_FieldOptions_FieldId] ON [dbo].[FieldOptions]
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_FieldId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldId] ON [dbo].[Fields]
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FieldTypes_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_FieldTypes_Code] ON [dbo].[FieldTypes]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Forms_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Forms_Code] ON [dbo].[Forms]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Localizations_DictionaryId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Localizations_DictionaryId] ON [dbo].[Localizations]
(
	[DictionaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Localizations_DictionaryId_CultureId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Localizations_DictionaryId_CultureId] ON [dbo].[Localizations]
(
	[CultureId] ASC,
	[DictionaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Members_ClassId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Members_ClassId] ON [dbo].[Members]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuItems_MenuId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_MenuItems_MenuId] ON [dbo].[MenuItems]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuItems_MenuItemId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_MenuItems_MenuItemId] ON [dbo].[MenuItems]
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Menus_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Menus_Code] ON [dbo].[Menus]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Objects_ClassId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Objects_ClassId] ON [dbo].[Objects]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_DeliveryMethodId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_DeliveryMethodId] ON [dbo].[Orders]
(
	[DeliveryMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderStateId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderStateId] ON [dbo].[Orders]
(
	[OrderStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_PaymentMethodId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_PaymentMethodId] ON [dbo].[Orders]
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Permissions_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_Code] ON [dbo].[Permissions]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Photos_ProductId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Photos_ProductId] ON [dbo].[Photos]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Positions_CartId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Positions_CartId] ON [dbo].[Positions]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Positions_OrderId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Positions_OrderId] ON [dbo].[Positions]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Positions_ProductId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Positions_ProductId] ON [dbo].[Positions]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Properties_ObjectId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Properties_ObjectId] ON [dbo].[Properties]
(
	[ObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Properties_ObjectId_MemberId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Properties_ObjectId_MemberId] ON [dbo].[Properties]
(
	[ObjectId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_ForeignId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_ForeignId] ON [dbo].[Relations]
(
	[ForeignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_MemberId_ForeignId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_MemberId_ForeignId] ON [dbo].[Relations]
(
	[MemberId] ASC,
	[ForeignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_MemberId_PrimaryId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_MemberId_PrimaryId] ON [dbo].[Relations]
(
	[PrimaryId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_PrimaryId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_PrimaryId] ON [dbo].[Relations]
(
	[PrimaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Roles_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Roles_Code] ON [dbo].[Roles]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tabs_ClassId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Tabs_ClassId] ON [dbo].[Tabs]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Name]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Users_Name] ON [dbo].[Users]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Variables_ConfigurationId]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Variables_ConfigurationId] ON [dbo].[Variables]
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Variables_ConfigurationId_Code]    Script Date: 09.09.2021 17:14:08 ******/
CREATE NONCLUSTERED INDEX [IX_Variables_ConfigurationId_Code] ON [dbo].[Variables]
(
	[ConfigurationId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Dictionaries]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Dictionaries_DescriptionId] FOREIGN KEY([DescriptionId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Dictionaries_DescriptionId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Dictionaries_MetaDescriptionId] FOREIGN KEY([MetaDescriptionId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Dictionaries_MetaDescriptionId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Dictionaries_MetaKeywordsId] FOREIGN KEY([MetaKeywordsId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Dictionaries_MetaKeywordsId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Dictionaries_TitleId] FOREIGN KEY([TitleId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Dictionaries_TitleId]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Classes]
GO
ALTER TABLE [dbo].[CompletedFields]  WITH CHECK ADD  CONSTRAINT [FK_CompletedFields_CompletedForms] FOREIGN KEY([CompletedFormId])
REFERENCES [dbo].[CompletedForms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompletedFields] CHECK CONSTRAINT [FK_CompletedFields_CompletedForms]
GO
ALTER TABLE [dbo].[CompletedFields]  WITH CHECK ADD  CONSTRAINT [FK_CompletedFields_Fields] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([Id])
GO
ALTER TABLE [dbo].[CompletedFields] CHECK CONSTRAINT [FK_CompletedFields_Fields]
GO
ALTER TABLE [dbo].[CompletedForms]  WITH CHECK ADD  CONSTRAINT [FK_CompletedForms_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompletedForms] CHECK CONSTRAINT [FK_CompletedForms_Forms]
GO
ALTER TABLE [dbo].[Credentials]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_CredentialTypes] FOREIGN KEY([CredentialTypeId])
REFERENCES [dbo].[CredentialTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Credentials] CHECK CONSTRAINT [FK_Credentials_CredentialTypes]
GO
ALTER TABLE [dbo].[Credentials]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Credentials] CHECK CONSTRAINT [FK_Credentials_Users]
GO
ALTER TABLE [dbo].[DataSources]  WITH CHECK ADD  CONSTRAINT [FK_DataSources_Endpoints] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataSources] CHECK CONSTRAINT [FK_DataSources_Endpoints]
GO
ALTER TABLE [dbo].[DataTypeParameters]  WITH CHECK ADD  CONSTRAINT [FK_DataTypeParameters_DataTypes_DataTypeId] FOREIGN KEY([DataTypeId])
REFERENCES [dbo].[DataTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataTypeParameters] CHECK CONSTRAINT [FK_DataTypeParameters_DataTypes_DataTypeId]
GO
ALTER TABLE [dbo].[DataTypeParameterValues]  WITH CHECK ADD  CONSTRAINT [FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameterId] FOREIGN KEY([DataTypeParameterId])
REFERENCES [dbo].[DataTypeParameters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataTypeParameterValues] CHECK CONSTRAINT [FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameterId]
GO
ALTER TABLE [dbo].[DataTypeParameterValues]  WITH CHECK ADD  CONSTRAINT [FK_DataTypeParameterValues_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataTypeParameterValues] CHECK CONSTRAINT [FK_DataTypeParameterValues_Members_MemberId]
GO
ALTER TABLE [dbo].[DeliveryMethods]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryMethods_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[DeliveryMethods] CHECK CONSTRAINT [FK_DeliveryMethods_Dictionaries]
GO
ALTER TABLE [dbo].[EndpointPermissions]  WITH CHECK ADD  CONSTRAINT [FK_EndpointPermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permissions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EndpointPermissions] CHECK CONSTRAINT [FK_EndpointPermissions_Permissions]
GO
ALTER TABLE [dbo].[EndpointPermissions]  WITH CHECK ADD  CONSTRAINT [FK_EndpointPermissions_Roles] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EndpointPermissions] CHECK CONSTRAINT [FK_EndpointPermissions_Roles]
GO
ALTER TABLE [dbo].[FieldOptions]  WITH CHECK ADD  CONSTRAINT [FK_FieldOptions_Dictionaries] FOREIGN KEY([ValueId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[FieldOptions] CHECK CONSTRAINT [FK_FieldOptions_Dictionaries]
GO
ALTER TABLE [dbo].[FieldOptions]  WITH CHECK ADD  CONSTRAINT [FK_FieldOptions_Fields] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FieldOptions] CHECK CONSTRAINT [FK_FieldOptions_Fields]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_Dictionaries]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_FieldTypes] FOREIGN KEY([FieldTypeId])
REFERENCES [dbo].[FieldTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_FieldTypes]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_Forms]
GO
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_Dictionaries_NameId] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_Dictionaries_NameId]
GO
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_Dictionaries_SubmitButtonTitleId] FOREIGN KEY([SubmitButtonTitleId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_Dictionaries_SubmitButtonTitleId]
GO
ALTER TABLE [dbo].[Localizations]  WITH CHECK ADD  CONSTRAINT [FK_Localizations_Cultures] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Cultures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localizations] CHECK CONSTRAINT [FK_Localizations_Cultures]
GO
ALTER TABLE [dbo].[Localizations]  WITH CHECK ADD  CONSTRAINT [FK_Localizations_Dictionaries] FOREIGN KEY([DictionaryId])
REFERENCES [dbo].[Dictionaries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localizations] CHECK CONSTRAINT [FK_Localizations_Dictionaries]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Classes_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Classes_ClassId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Classes_RelationClassId] FOREIGN KEY([RelationClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Classes_RelationClassId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_DataTypes] FOREIGN KEY([PropertyDataTypeId])
REFERENCES [dbo].[DataTypes] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_DataTypes]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Tabs] FOREIGN KEY([TabId])
REFERENCES [dbo].[Tabs] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Tabs]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_Dictionaries]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_MenuItems] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[MenuItems] ([Id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_MenuItems]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_Menus] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menus] ([Id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_Menus]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Dictionaries]
GO
ALTER TABLE [dbo].[Objects]  WITH CHECK ADD  CONSTRAINT [FK_Objects_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Objects] CHECK CONSTRAINT [FK_Objects_Classes]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_DeliveryMethods] FOREIGN KEY([DeliveryMethodId])
REFERENCES [dbo].[DeliveryMethods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_DeliveryMethods]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStates] FOREIGN KEY([OrderStateId])
REFERENCES [dbo].[OrderStates] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStates]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PaymentMethods] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PaymentMethods]
GO
ALTER TABLE [dbo].[OrderStates]  WITH CHECK ADD  CONSTRAINT [FK_OrderStates_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[OrderStates] CHECK CONSTRAINT [FK_OrderStates_Dictionaries]
GO
ALTER TABLE [dbo].[PaymentMethods]  WITH CHECK ADD  CONSTRAINT [FK_PaymentMethods_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[PaymentMethods] CHECK CONSTRAINT [FK_PaymentMethods_Dictionaries]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Products]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Carts]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Orders]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_DescriptionId] FOREIGN KEY([DescriptionId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_DescriptionId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_MetaDescriptionId] FOREIGN KEY([MetaDescriptionId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_MetaDescriptionId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_MetaKeywordsId] FOREIGN KEY([MetaKeywordsId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_MetaKeywordsId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_NameId] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_NameId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_TitleId] FOREIGN KEY([TitleId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_TitleId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_UnitsId] FOREIGN KEY([UnitsId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_UnitsId]
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Dictionaries] FOREIGN KEY([StringValueId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Dictionaries]
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Members]
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Objects] FOREIGN KEY([ObjectId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Objects]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Members]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Objects_ForeignId] FOREIGN KEY([ForeignId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Objects_ForeignId]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Objects_PrimaryId] FOREIGN KEY([PrimaryId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Objects_PrimaryId]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permissions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Permissions]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Roles]
GO
ALTER TABLE [dbo].[Tabs]  WITH CHECK ADD  CONSTRAINT [FK_Tabs_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Tabs] CHECK CONSTRAINT [FK_Tabs_Classes]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_Configurations] FOREIGN KEY([ConfigurationId])
REFERENCES [dbo].[Configurations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_Configurations]
GO