/****** Object:  Table [dbo].[Compartilhamento]    Script Date: 05/02/2019 12:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compartilhamento](
	[idCompartilhamento] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresaProvedora] [int] NOT NULL,
	[CNPJEmpresaReceptora] [char](18) NOT NULL,
	[idUsuarioCriacao] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Compartilhamento] PRIMARY KEY CLUSTERED 
(
	[idCompartilhamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 05/02/2019 12:26:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contato](
	[idContato] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[NomeContato] [varchar](max) NOT NULL,
	[SobrenomeContato] [varchar](max) NULL,
	[CargoContato] [varchar](max) NOT NULL,
	[idTipoContato] [int] NOT NULL,
 CONSTRAINT [PK_Contato] PRIMARY KEY CLUSTERED 
(
	[idContato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 05/02/2019 12:26:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[idDocumento] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[idTipoDocumento] [int] NOT NULL,
	[idArquivo] [uniqueidentifier] NOT NULL,
	[NomeDocumento] [varchar](max) NOT NULL,
	[DataEmissaoDocumento] [datetime] NOT NULL,
	[DataVencimentoDocumento] [datetime] NULL,
	[ComentariosDocumento] [varchar](max) NULL,
	[idUsuario] [int] NULL,
	[DataCriacao] [datetime] NULL,
	[DataAlteracao] [datetime] NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[idDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 05/02/2019 12:26:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[idEmail] [int] IDENTITY(1,1) NOT NULL,
	[idContato] [int] NOT NULL,
	[Email] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[idEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailRecomendacao]    Script Date: 05/02/2019 12:26:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailRecomendacao](
	[idEmail] [int] IDENTITY(1,1) NOT NULL,
	[idRecomendacao] [int] NOT NULL,
	[Email] [varchar](max) NOT NULL,
 CONSTRAINT [PK_EmailRecomendacao] PRIMARY KEY CLUSTERED 
(
	[idEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaGrupo]    Script Date: 05/02/2019 12:26:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaGrupo](
	[idEmpresaGrupo] [int] IDENTITY(1,1) NOT NULL,
	[NomeEmpresaGrupo] [varchar](max) NULL,
	[idPlano] [int] NULL,
	[StatusValidada] [bit] NOT NULL,
 CONSTRAINT [PK_Empresa_1] PRIMARY KEY CLUSTERED 
(
	[idEmpresaGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaReceptora]    Script Date: 05/02/2019 12:26:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaReceptora](
	[idEmpresaReceptora] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresaGrupo] [int] NULL,
	[DataUltimaAtualizacaoOficial] [datetime] NULL,
	[NomeFantasiaEmpresa] [varchar](max) NULL,
	[CNPJEmpresa] [char](18) NOT NULL,
	[CNAEAtividadePrincipalEmpresa] [varchar](max) NULL,
	[CodigoOperacionalCVMEmpresa] [varchar](max) NULL,
	[CEPEmpresa] [varchar](max) NULL,
	[LogradouroEmpresa] [varchar](max) NULL,
	[NumeroEmpresa] [varchar](max) NULL,
	[ComplementoEmpresa] [varchar](max) NULL,
	[BairroEmpresa] [varchar](max) NULL,
	[CidadeEmpresa] [varchar](max) NULL,
	[UFEmpresa] [varchar](max) NULL,
	[DataConstituicaoEmpresa] [datetime] NULL,
	[DataSituacaoCadastralEmpresa] [datetime] NULL,
	[DataSituacaoEspecialEmpresa] [datetime] NULL,
	[GrupoEconomicoEmpresa] [varchar](max) NULL,
	[InscricaoEstadualEmpresa] [varchar](max) NULL,
	[InscricaoMunicipalEmpresa] [varchar](max) NULL,
	[NaturezaJuridicaEmpresa] [varchar](max) NULL,
	[PaisConstituicaoEmpresaEmpresa] [int] NULL,
	[PaisResidenciaFiscalEmpresa] [int] NULL,
	[PJDireitoPublicoEmpresa] [bit] NULL,
	[PossuiPaisResidenciaFiscalEmpresa] [bit] NULL,
	[PrincipalAtividadeEconomicaEmpresa] [int] NULL,
	[RazaoSocialEmpresa] [varchar](max) NULL,
	[RegimeTributarioEmpresa] [int] NULL,
	[SituacaoCadastralEmpresa] [varchar](max) NULL,
	[SituacaoEspecialEmpresa] [varchar](max) NULL,
	[SituacaoInscricaoEstadualEmpresa] [varchar](max) NULL,
	[SituacaoInscricaoMunicipalEmpresa] [varchar](max) NULL,
	[TipoCapitalEmpresa] [int] NULL,
	[ValorCapitalSocialEmpresa] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[idEmpresaReceptora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 05/02/2019 12:26:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereco](
	[idEndereco] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[DescricaoEndereco] [varchar](max) NOT NULL,
	[idPaisEndereco] [int] NOT NULL,
	[CEPEndereco] [char](9) NULL,
	[CaixaPostalEndereco] [varchar](20) NULL,
	[UFEndereco] [char](2) NULL,
	[LogradouroEndereco] [varchar](max) NULL,
	[NumeroEndereco] [varchar](10) NULL,
	[ComplementoEndereco] [varchar](10) NULL,
	[BairroEndereco] [varchar](max) NULL,
	[CidadeEndereco] [varchar](max) NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[idEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoInformacao]    Script Date: 05/02/2019 12:26:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoInformacao](
	[idGrupoInformacao] [int] NOT NULL,
	[NomeGrupoInformacao] [varchar](50) NOT NULL,
	[idGrupoInformacaoPai] [int] NULL,
 CONSTRAINT [PK_GrupoInformacao] PRIMARY KEY CLUSTERED 
(
	[idGrupoInformacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoInformacaoCompartilhamento]    Script Date: 05/02/2019 12:26:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoInformacaoCompartilhamento](
	[idGrupoInformacaoCompartilhamento] [int] IDENTITY(1,1) NOT NULL,
	[idCompartilhamento] [int] NOT NULL,
	[idGrupoInformacao] [int] NOT NULL,
	[idUsuarioCriacao] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL,
 CONSTRAINT [PK_GrupoInformacaoCompartilhamento] PRIMARY KEY CLUSTERED 
(
	[idGrupoInformacaoCompartilhamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 05/02/2019 12:26:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [int] NOT NULL,
	[NomePais] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pendencia]    Script Date: 05/02/2019 12:26:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pendencia](
	[idPendencia] [int] NOT NULL,
	[idUsuarioEmpresa] [int] NULL,
	[idEmpresaDestinataria] [int] NOT NULL,
	[EmailDestinatario] [varchar](100) NOT NULL,
	[AssuntoPendencia] [varchar](200) NOT NULL,
	[GrupoInformacao] [int] NULL,
	[DescricaoPendencia] [varchar](max) NULL,
	[StatusPendencia] [bit] NOT NULL,
	[idUsuarioCriacao] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 05/02/2019 12:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[NomePerfil] [varchar](max) NOT NULL,
	[DescricaoPerfil] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilUsuario]    Script Date: 05/02/2019 12:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilUsuario](
	[idPerfil] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_PerfilUsuario] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC,
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissao]    Script Date: 05/02/2019 12:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissao](
	[idPermissao] [int] NOT NULL,
	[NomePermissao] [varchar](max) NOT NULL,
	[DescricaoPermissao] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Permissao] PRIMARY KEY CLUSTERED 
(
	[idPermissao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissaoPerfil]    Script Date: 05/02/2019 12:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissaoPerfil](
	[idPerfil] [int] NOT NULL,
	[idPermissao] [int] NOT NULL,
 CONSTRAINT [PK_PermissaoPerfil] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC,
	[idPermissao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plano]    Script Date: 05/02/2019 12:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plano](
	[idPlano] [int] NOT NULL,
	[DescricaoPlano] [varchar](100) NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[DataUltimaAtualizacao] [datetime] NULL,
 CONSTRAINT [PK_Plano] PRIMARY KEY CLUSTERED 
(
	[idPlano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prospect]    Script Date: 05/02/2019 12:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prospect](
	[idProspect] [int] IDENTITY(1,1) NOT NULL,
	[NomeProspect] [varchar](max) NOT NULL,
	[EmailProspect] [varchar](max) NOT NULL,
	[EmpresaProspect] [varchar](max) NULL,
	[TelefoneProspect] [varchar](max) NULL,
	[MensagemProspect] [varchar](max) NULL,
 CONSTRAINT [PK_Prospect] PRIMARY KEY CLUSTERED 
(
	[idProspect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recomendacao]    Script Date: 05/02/2019 12:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recomendacao](
	[idRecomendacao] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[NomeRecomendacao] [varchar](max) NOT NULL,
	[SobrenomeRecomendacao] [varchar](max) NULL,
	[RelacionamentoRecomendacao] [int] NOT NULL,
	[idArquivo] [uniqueidentifier] NOT NULL,
	[CargoRecomendacao] [varchar](max) NOT NULL,
	[EmpresaRecomendacao] [varchar](max) NOT NULL,
	[NomeDocumento] [varchar](max) NOT NULL,
	[ComentariosRecomendacao] [varchar](max) NULL,
	[idUsuario] [int] NULL,
	[DataCriacao] [datetime] NULL,
	[DataAlteracao] [datetime] NULL,
 CONSTRAINT [PK_Recomendacao] PRIMARY KEY CLUSTERED 
(
	[idRecomendacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 05/02/2019 12:26:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefone](
	[idTelefone] [int] IDENTITY(1,1) NOT NULL,
	[IdContatoTelefone] [int] NOT NULL,
	[IdTipoTelefone] [int] NOT NULL,
	[NumeroTelefone] [varchar](30) NOT NULL,
	[RamalTelefone] [varchar](15) NULL,
	[DDITelefone] [char](3) NOT NULL,
 CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED 
(
	[idTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefoneEndereco]    Script Date: 05/02/2019 12:26:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefoneEndereco](
	[idTelefone] [int] IDENTITY(1,1) NOT NULL,
	[IdEnderecoTelefone] [int] NOT NULL,
	[IdTipoTelefone] [int] NOT NULL,
	[NumeroTelefone] [varchar](30) NOT NULL,
	[RamalTelefone] [varchar](15) NULL,
	[DDITelefone] [char](3) NOT NULL,
 CONSTRAINT [PK_TelefoneEndereco] PRIMARY KEY CLUSTERED 
(
	[idTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TelefoneRecomendacao]    Script Date: 05/02/2019 12:26:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefoneRecomendacao](
	[idTelefone] [int] IDENTITY(1,1) NOT NULL,
	[idRecomendacaoTelefone] [int] NOT NULL,
	[idTipoTelefone] [int] NOT NULL,
	[NumeroTelefone] [varchar](30) NOT NULL,
	[RamalTelefone] [varchar](15) NULL,
	[DDITelefone] [char](3) NOT NULL,
 CONSTRAINT [PK_TelefoneRecomendacao] PRIMARY KEY CLUSTERED 
(
	[idTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContato]    Script Date: 05/02/2019 12:26:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContato](
	[idTipoContato] [int] NOT NULL,
	[NomeTipoContato] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TipoContato] PRIMARY KEY CLUSTERED 
(
	[idTipoContato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 05/02/2019 12:26:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [int] NOT NULL,
	[NomeTipoDocumento] [varchar](max) NOT NULL,
	[DescricaoTipoDocumento] [varchar](max) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTelefone]    Script Date: 05/02/2019 12:26:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTelefone](
	[idTipoTelefone] [int] NOT NULL,
	[NomeTipoTelefone] [varchar](max) NOT NULL,
	[DescricaoTipoTelefone] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TipoTelefone] PRIMARY KEY CLUSTERED 
(
	[idTipoTelefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 05/02/2019 12:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[idToken] [int] IDENTITY(1,1) NOT NULL,
	[EmailToken] [varchar](150) NOT NULL,
	[DataExpiracaoToken] [datetime] NOT NULL,
	[CodigoToken] [uniqueidentifier] NULL,
	[CodigoSimplificadoToken] [char](5) NULL,
	[idTokenStatus] [int] NOT NULL,
	[idUsuarioCriacao] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL,
 CONSTRAINT [PK_TokenCompartilhamento] PRIMARY KEY CLUSTERED 
(
	[idToken] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TokenStatus]    Script Date: 05/02/2019 12:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TokenStatus](
	[idTokenStatus] [int] NOT NULL,
	[NomeTokenStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TokenStatus] PRIMARY KEY CLUSTERED 
(
	[idTokenStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UF]    Script Date: 05/02/2019 12:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UF](
	[idUF] [char](2) NOT NULL,
	[NomeUF] [varchar](max) NOT NULL,
 CONSTRAINT [PK_UF] PRIMARY KEY CLUSTERED 
(
	[idUF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/02/2019 12:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NomeUsuario] [varchar](max) NOT NULL,
	[EmailUsuario] [varchar](max) NOT NULL,
	[LoginUsuario] [varchar](max) NOT NULL,
	[CPFUsuario] [char](14) NOT NULL,
	[TelefoneUsuario] [varchar](30) NOT NULL,
	[HashSenhaUsuario] [varchar](max) NOT NULL,
	[IdEmpresaGrupo] [int] NOT NULL,
	[idUsuarioStatus] [int] NOT NULL,
	[idToken] [int] NULL,
	[TermosUsoUsuario] [bit] NOT NULL,
	[PoliticaPrivacidadeUsuario] [bit] NOT NULL,
	[idUsuarioCriacao] [int] NULL,
	[DataCriacao] [datetime] NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioEmpresa]    Script Date: 05/02/2019 12:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioEmpresa](
	[idUsuarioEmpresa] [int] NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idUsuarioCriacao] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL,
 CONSTRAINT [PK_UsuarioEmpresa] PRIMARY KEY CLUSTERED 
(
	[idUsuarioEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioReceptorCompartilhamento]    Script Date: 05/02/2019 12:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioReceptorCompartilhamento](
	[idUsuarioReceptorCompartilhamento] [int] IDENTITY(1,1) NOT NULL,
	[EmailUsuarioReceptorCompartilhamento] [varchar](150) NOT NULL,
	[CPFUsuarioReceptorCompartilhamento] [char](14) NULL,
	[NomeUsuarioReceptorCompartilhamento] [varchar](200) NOT NULL,
	[idCompartilhamento] [int] NOT NULL,
	[idUsuarioCriacao] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[idUsuarioUltimaAlteracao] [int] NULL,
	[DataUltimaAlteracao] [datetime] NULL,
	[idToken] [int] NULL,
 CONSTRAINT [PK_UsuarioReceptorCompartilhamento] PRIMARY KEY CLUSTERED 
(
	[idUsuarioReceptorCompartilhamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioStatus]    Script Date: 05/02/2019 12:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioStatus](
	[idUsuarioStatus] [int] NOT NULL,
	[NomeUsuarioStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UsuarioStatus] PRIMARY KEY CLUSTERED 
(
	[idUsuarioStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (1, N'Dados Básicos', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (2, N'Dados Societários', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (3, N'Cadastros Adicionais', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (4, N'Informações Financeiras', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (5, N'Firmas e Poderes', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (6, N'Socioambiental', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (7, N'Qualidade e Operação', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (8, N'Recomendações de Negócio', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (9, N'Informações Adicionais', NULL)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (101, N'Dados Gerais', 1)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (102, N'Outros Enderecos', 1)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (103, N'Contatos', 1)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (201, N'Composição Acionária', 2)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (202, N'Beneficiário Final', 2)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (203, N'Documentos Societários', 2)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (301, N'PEP', 3)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (302, N'FATCA', 3)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (303, N'SCR', 3)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (401, N'Relatórios Financeiros', 4)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (402, N'Certidões e Declarações', 4)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (403, N'Contas Bancárias', 4)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (501, N'Documentos de Poderes', 5)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (502, N'Representantes Legais/ Procuradores', 5)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (601, N'Documentos', 6)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (701, N'Documentos Qualidade e Operação', 7)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (801, N'Contatos', 8)
INSERT [dbo].[GrupoInformacao] ([idGrupoInformacao], [NomeGrupoInformacao], [idGrupoInformacaoPai]) VALUES (901, N'Documentos Adicionais', 9)
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (1, N'Brasil')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (13, N'Afeganistão')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (17, N'Albânia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (23, N'Alemanha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (31, N'Burkina Faso')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (37, N'Andorra')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (40, N'Angola')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (41, N'Anguilla')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (43, N'Antigua E Barbuda')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (47, N'Antilhas Holandesas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (53, N'Arábia Saudita')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (59, N'Argélia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (63, N'Argentina')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (64, N'Armênia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (65, N'Aruba')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (69, N'Austrália')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (72, N'Áustria')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (73, N'Azerbaijão, República do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (77, N'Bahamas, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (80, N'Bahrein, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (81, N'Bangladesh')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (83, N'Barbados')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (85, N'Belarus, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (87, N'Bélgica')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (88, N'Belize')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (90, N'Bermudas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (93, N'Mianmar (Birmânia)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (97, N'Bolívia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (98, N'Bosnia-Herzegovina (República da)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (101, N'Botsuana')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (108, N'Brunei')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (111, N'Bulgária, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (115, N'Burundi')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (119, N'Butão')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (127, N'Cabo Verde, República de')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (137, N'Cayman, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (141, N'Camboja')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (145, N'Camarões')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (149, N'Canadá')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (150, N'Jersey, Ilha do Canal')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (151, N'Canárias, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (153, N'Cazaquistao, República do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (154, N'Catar')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (158, N'Chile')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (160, N'China, República Popular')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (161, N'Formosa (Taiwan)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (163, N'Chipre')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (165, N'Cocos-Keeling, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (169, N'Colômbia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (173, N'Comores, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (177, N'Congo')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (183, N'Cook, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (187, N'Coréia, Rep.Pop.Democrática')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (190, N'Coréia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (193, N'Costa do Marfim')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (195, N'Croácia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (196, N'Costa Rica')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (198, N'Coveite')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (199, N'Cuba')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (229, N'Benin')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (232, N'Dinamarca')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (235, N'Dominica, Ilha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (239, N'Equador')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (240, N'Egito')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (243, N'Eritreia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (244, N'Emirados Árabes Unidos')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (245, N'Espanha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (246, N'Eslovênia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (247, N'Eslovaca, República')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (249, N'Estados Unidos')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (251, N'Estônia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (253, N'Etiópia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (255, N'Falkland (Ilhas Malvinas)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (259, N'Feroe, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (267, N'Filipinas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (271, N'Finlândia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (275, N'França')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (281, N'Gabão')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (285, N'Gambia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (289, N'Gana')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (291, N'Geórgia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (293, N'Gibraltar')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (297, N'Granada')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (301, N'Grécia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (305, N'Groenlândia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (309, N'Guadalupe')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (313, N'Guam')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (317, N'Guatemala')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (325, N'Guiana Francesa')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (329, N'Guiné')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (331, N'Guiné-Equatorial')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (334, N'Guiné-Bissau')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (337, N'Guiana')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (341, N'Haiti')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (345, N'Honduras')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (351, N'Hong Kong')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (355, N'Hungria, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (357, N'Iemen')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (359, N'Man, Ilha de')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (361, N'Índia')
GO
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (365, N'Indonésia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (369, N'Iraque')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (372, N'Irã, República Islâmica do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (375, N'Irlanda')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (379, N'Islândia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (383, N'Israel')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (386, N'Itália')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (391, N'Jamaica')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (396, N'Johnston, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (399, N'Japão')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (403, N'Jordânia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (411, N'Kiribati')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (420, N'Laos, Rep.Pop.Democr.do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (423, N'Lebuan, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (426, N'Lesoto')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (427, N'Letônia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (431, N'Líbano')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (434, N'Libéria')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (438, N'Líbia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (440, N'Liechtenstein')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (442, N'Lituânia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (445, N'Luxemburgo')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (447, N'Macau')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (449, N'Macedônia, Ant.Rep.Iugoslava')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (450, N'Madagascar')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (452, N'Madeira, Ilha da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (455, N'Malásia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (458, N'Malavi')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (461, N'Maldivas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (464, N'Mali')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (467, N'Malta')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (472, N'Marianas do Norte')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (474, N'Marrocos')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (476, N'Marshall, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (477, N'Martinica')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (485, N'Maurício')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (488, N'Mauritânia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (490, N'Midway, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (493, N'México')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (494, N'Moldavia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (495, N'Mônaco')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (497, N'Mongólia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (498, N'Montenegro')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (499, N'Micronésia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (501, N'Montserrat, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (505, N'Moçambique')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (507, N'Namíbia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (508, N'Nauru')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (511, N'Christmas,Ilhas (Navidad)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (517, N'Nepal')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (521, N'Nicarágua')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (525, N'Niger')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (528, N'Nigéria')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (531, N'Niue, Ilha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (535, N'Norfolk, Ilha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (538, N'Noruega')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (542, N'Nova Caledônia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (545, N'Papua Nova Guiné')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (548, N'Nova Zelândia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (551, N'Vanuatu')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (556, N'Omã')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (566, N'Pacífico, Ilhas do (possessão dos EUA)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (573, N'Países Baixos (Holanda)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (575, N'Palau')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (576, N'Paquistão')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (580, N'Panamá')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (586, N'Paraguai')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (589, N'Peru')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (593, N'Pitcairn, Ilha De')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (599, N'Polinésia Francesa')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (603, N'Polônia, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (607, N'Portugal')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (611, N'Porto Rico')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (623, N'Quênia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (625, N'Quirguiz, República da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (628, N'Reino Unido')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (640, N'República Centro-Africana')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (647, N'República Dominicana')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (660, N'Reunião, Ilha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (665, N'Zimbabue')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (670, N'Romênia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (675, N'Ruanda')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (676, N'Rússia, Federação da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (677, N'Salomão, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (678, N'Saint Kitts e Nevis')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (685, N'Saara Ocidental')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (687, N'El Salvador')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (690, N'Samoa')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (691, N'Samoa Americana')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (695, N'São Cristovão e Neves, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (697, N'San Marino')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (700, N'São Pedro e Miquelon')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (705, N'São Vicente e Granadinas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (710, N'Santa Helena')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (715, N'Santa Lúcia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (720, N'São Tomé e Príncipe, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (728, N'Senegal')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (731, N'Seychelles')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (735, N'Serra Leoa')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (737, N'Servia')
GO
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (741, N'Cingapura')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (744, N'Síria, República Árabe da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (748, N'Somália')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (750, N'Sri Lanka')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (754, N'Suazilândia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (756, N'África do Sul')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (759, N'Sudão')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (764, N'Suécia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (767, N'Suíça')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (770, N'Suriname')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (772, N'Tadjiquistão, República do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (776, N'Tailândia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (780, N'Tanzania, Rep. Unida da')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (782, N'Território Britânico no Oceano Índico')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (783, N'Djibuti')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (788, N'Chade')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (791, N'Tcheca, República')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (795, N'Timor Leste')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (800, N'Togo')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (805, N'Toquelau, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (810, N'Tonga')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (815, N'Trinidad e Tobago')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (820, N'Tunísia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (823, N'Turcas e Caicos, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (824, N'Turcomenistão, República do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (827, N'Turquia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (828, N'Tuvalu')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (831, N'Ucrânia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (833, N'Uganda')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (845, N'Uruguai')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (847, N'Uzbequistão, República do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (848, N'Vaticano, Est. da Cidade do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (850, N'Venezuela')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (858, N'Vietnã')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (863, N'Virgens, Ilhas (Britânicas)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (866, N'Virgens, Ilhas (E.U.A.)')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (870, N'Fiji')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (873, N'Wake, Ilha')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (875, N'Wallis e Futuna, Ilhas')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (888, N'Congo, República Democrática do')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (890, N'Zâmbia')
INSERT [dbo].[Pais] ([idPais], [NomePais]) VALUES (998, N'Delegação Especial da Palestina')
SET IDENTITY_INSERT [dbo].[Perfil] ON 

INSERT [dbo].[Perfil] ([idPerfil], [NomePerfil], [DescricaoPerfil]) VALUES (1, N'Usuario', N'Perfil de atividades básicas')
INSERT [dbo].[Perfil] ([idPerfil], [NomePerfil], [DescricaoPerfil]) VALUES (2, N'Administrador', N'Perfil master')
SET IDENTITY_INSERT [dbo].[Perfil] OFF
INSERT [dbo].[Permissao] ([idPermissao], [NomePermissao], [DescricaoPermissao]) VALUES (1, N'Cadastrar Usuario', N'Cadastrar um usuário')
INSERT [dbo].[Permissao] ([idPermissao], [NomePermissao], [DescricaoPermissao]) VALUES (2, N'Listar Usuarios', N'Listar todos os usuários')
INSERT [dbo].[Permissao] ([idPermissao], [NomePermissao], [DescricaoPermissao]) VALUES (3, N'Buscar Usuario', N'Buscar um usuário pelo seu id')
INSERT [dbo].[Permissao] ([idPermissao], [NomePermissao], [DescricaoPermissao]) VALUES (4, N'Alterar Meus Dados', N'Alterar os meus dados de login e senha')
INSERT [dbo].[PermissaoPerfil] ([idPerfil], [idPermissao]) VALUES (1, 4)
INSERT [dbo].[PermissaoPerfil] ([idPerfil], [idPermissao]) VALUES (2, 1)
INSERT [dbo].[PermissaoPerfil] ([idPerfil], [idPermissao]) VALUES (2, 2)
INSERT [dbo].[PermissaoPerfil] ([idPerfil], [idPermissao]) VALUES (2, 3)
INSERT [dbo].[PermissaoPerfil] ([idPerfil], [idPermissao]) VALUES (2, 4)
INSERT [dbo].[TipoContato] ([idTipoContato], [NomeTipoContato]) VALUES (1, N'Geral')
INSERT [dbo].[TipoContato] ([idTipoContato], [NomeTipoContato]) VALUES (2, N'Financeiro')
INSERT [dbo].[TipoContato] ([idTipoContato], [NomeTipoContato]) VALUES (3, N'Comercial')
INSERT [dbo].[TipoContato] ([idTipoContato], [NomeTipoContato]) VALUES (4, N'Juridico')
INSERT [dbo].[TipoContato] ([idTipoContato], [NomeTipoContato]) VALUES (5, N'Compras')
INSERT [dbo].[TipoContato] ([idTipoContato], [NomeTipoContato]) VALUES (6, N'Outros')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [NomeTipoDocumento], [DescricaoTipoDocumento]) VALUES (1, N'Socio Ambiental', NULL)
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [NomeTipoDocumento], [DescricaoTipoDocumento]) VALUES (2, N'Recomendações de negócio', NULL)
INSERT [dbo].[TipoTelefone] ([idTipoTelefone], [NomeTipoTelefone], [DescricaoTipoTelefone]) VALUES (1, N'Celular', N'Telefone celular')
INSERT [dbo].[TipoTelefone] ([idTipoTelefone], [NomeTipoTelefone], [DescricaoTipoTelefone]) VALUES (2, N'Comercial', N'Telefone comercial')
INSERT [dbo].[TipoTelefone] ([idTipoTelefone], [NomeTipoTelefone], [DescricaoTipoTelefone]) VALUES (3, N'Fixo', N'Telefone fixo')
INSERT [dbo].[TipoTelefone] ([idTipoTelefone], [NomeTipoTelefone], [DescricaoTipoTelefone]) VALUES (4, N'FAX', N'FAX')
INSERT [dbo].[TokenStatus] ([idTokenStatus], [NomeTokenStatus]) VALUES (1, N'Token completo ativo')
INSERT [dbo].[TokenStatus] ([idTokenStatus], [NomeTokenStatus]) VALUES (2, N'Token completo utilizado')
INSERT [dbo].[TokenStatus] ([idTokenStatus], [NomeTokenStatus]) VALUES (3, N'Token simplificado ativo')
INSERT [dbo].[TokenStatus] ([idTokenStatus], [NomeTokenStatus]) VALUES (4, N'Token simplificado utilizado')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'AC', N'Acre')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'AL', N'Alagoas')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'AM', N'Amazonas')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'AP', N'Amapá')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'BA', N'Bahia')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'CE', N'Ceará')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'DF', N'Distrito Federal')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'ES', N'Espírito Santo')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'GO', N'Goiás')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'MA', N'Maranhão')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'MG', N'Minas Gerais')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'MS', N'Mato Grosso do Sul')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'MT', N'Mato Grosso')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'PA', N'Pará')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'PB', N'Paraíba')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'PE', N'Pernambuco')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'PI', N'Piauí')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'PR', N'Paraná')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'RJ', N'Rio de Janeiro')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'RN', N'Rio Grande do Norte')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'RO', N'Rondônia')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'RR', N'Roraima')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'RS', N'Rio Grande do Sul')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'SC', N'Santa Catarina')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'SE', N'Sergipe')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'SP', N'São Paulo')
INSERT [dbo].[UF] ([idUF], [NomeUF]) VALUES (N'TO', N'Tocantins')
INSERT [dbo].[UsuarioStatus] ([idUsuarioStatus], [NomeUsuarioStatus]) VALUES (1, N'Ativo')
INSERT [dbo].[UsuarioStatus] ([idUsuarioStatus], [NomeUsuarioStatus]) VALUES (2, N'Inativo')
ALTER TABLE [dbo].[Compartilhamento] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[EmpresaGrupo] ADD  CONSTRAINT [DF_EmpresaGrupo_StatusValidada]  DEFAULT ((0)) FOR [StatusValidada]
GO
ALTER TABLE [dbo].[Compartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_Compartilhamento_EmpresaReceptora] FOREIGN KEY([idEmpresaProvedora])
REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
GO
ALTER TABLE [dbo].[Compartilhamento] CHECK CONSTRAINT [FK_Compartilhamento_EmpresaReceptora]
GO
ALTER TABLE [dbo].[Compartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_Compartilhamento_Usuario] FOREIGN KEY([idUsuarioCriacao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Compartilhamento] CHECK CONSTRAINT [FK_Compartilhamento_Usuario]
GO
ALTER TABLE [dbo].[Compartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_Compartilhamento_Usuario1] FOREIGN KEY([idUsuarioUltimaAlteracao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Compartilhamento] CHECK CONSTRAINT [FK_Compartilhamento_Usuario1]
GO
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_Empresa] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_Empresa]
GO
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_TipoContato] FOREIGN KEY([idTipoContato])
REFERENCES [dbo].[TipoContato] ([idTipoContato])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_TipoContato]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_EmpresaReceptora] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_EmpresaReceptora]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_TipoDocumento] FOREIGN KEY([idTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_TipoDocumento]
GO
ALTER TABLE [dbo].[Email]  WITH CHECK ADD  CONSTRAINT [FK_Email_Contato] FOREIGN KEY([idContato])
REFERENCES [dbo].[Contato] ([idContato])
GO
ALTER TABLE [dbo].[Email] CHECK CONSTRAINT [FK_Email_Contato]
GO
ALTER TABLE [dbo].[EmailRecomendacao]  WITH CHECK ADD  CONSTRAINT [FK_EmailRecomendacao_Recomendacao] FOREIGN KEY([idRecomendacao])
REFERENCES [dbo].[Recomendacao] ([idRecomendacao])
GO
ALTER TABLE [dbo].[EmailRecomendacao] CHECK CONSTRAINT [FK_EmailRecomendacao_Recomendacao]
GO
ALTER TABLE [dbo].[EmpresaGrupo]  WITH CHECK ADD  CONSTRAINT [FK_EmpresaGrupo_Plano] FOREIGN KEY([idPlano])
REFERENCES [dbo].[Plano] ([idPlano])
GO
ALTER TABLE [dbo].[EmpresaGrupo] CHECK CONSTRAINT [FK_EmpresaGrupo_Plano]
GO
ALTER TABLE [dbo].[EmpresaReceptora]  WITH CHECK ADD  CONSTRAINT [FK_EmpresaReceptora_Empresa] FOREIGN KEY([idEmpresaGrupo])
REFERENCES [dbo].[EmpresaGrupo] ([idEmpresaGrupo])
GO
ALTER TABLE [dbo].[EmpresaReceptora] CHECK CONSTRAINT [FK_EmpresaReceptora_Empresa]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Empresa] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_Empresa]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Pais] FOREIGN KEY([idPaisEndereco])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_Pais]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_UF] FOREIGN KEY([UFEndereco])
REFERENCES [dbo].[UF] ([idUF])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_UF]
GO
ALTER TABLE [dbo].[GrupoInformacao]  WITH CHECK ADD  CONSTRAINT [FK_GrupoInformacao_GrupoInformacao] FOREIGN KEY([idGrupoInformacaoPai])
REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao])
GO
ALTER TABLE [dbo].[GrupoInformacao] CHECK CONSTRAINT [FK_GrupoInformacao_GrupoInformacao]
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Compartilhamento] FOREIGN KEY([idCompartilhamento])
REFERENCES [dbo].[Compartilhamento] ([idCompartilhamento])
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento] CHECK CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Compartilhamento]
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_GrupoInformacaoCompartilhamento_GrupoInformacao] FOREIGN KEY([idGrupoInformacao])
REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao])
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento] CHECK CONSTRAINT [FK_GrupoInformacaoCompartilhamento_GrupoInformacao]
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Usuario] FOREIGN KEY([idUsuarioCriacao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento] CHECK CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Usuario]
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Usuario1] FOREIGN KEY([idUsuarioUltimaAlteracao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[GrupoInformacaoCompartilhamento] CHECK CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Usuario1]
GO
ALTER TABLE [dbo].[Pendencia]  WITH CHECK ADD  CONSTRAINT [FK_Pendencia_EmpresaReceptora] FOREIGN KEY([idEmpresaDestinataria])
REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
GO
ALTER TABLE [dbo].[Pendencia] CHECK CONSTRAINT [FK_Pendencia_EmpresaReceptora]
GO
ALTER TABLE [dbo].[Pendencia]  WITH CHECK ADD  CONSTRAINT [FK_Pendencia_UsuarioEmpresa] FOREIGN KEY([idUsuarioEmpresa])
REFERENCES [dbo].[UsuarioEmpresa] ([idUsuarioEmpresa])
GO
ALTER TABLE [dbo].[Pendencia] CHECK CONSTRAINT [FK_Pendencia_UsuarioEmpresa]
GO
ALTER TABLE [dbo].[PerfilUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilUsuario_Perfil] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfil] ([idPerfil])
GO
ALTER TABLE [dbo].[PerfilUsuario] CHECK CONSTRAINT [FK_PerfilUsuario_Perfil]
GO
ALTER TABLE [dbo].[PerfilUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilUsuario_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[PerfilUsuario] CHECK CONSTRAINT [FK_PerfilUsuario_Usuario]
GO
ALTER TABLE [dbo].[PermissaoPerfil]  WITH CHECK ADD  CONSTRAINT [FK_PermissaoPerfil_Perfil] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfil] ([idPerfil])
GO
ALTER TABLE [dbo].[PermissaoPerfil] CHECK CONSTRAINT [FK_PermissaoPerfil_Perfil]
GO
ALTER TABLE [dbo].[PermissaoPerfil]  WITH CHECK ADD  CONSTRAINT [FK_PermissaoPerfil_Permissao] FOREIGN KEY([idPermissao])
REFERENCES [dbo].[Permissao] ([idPermissao])
GO
ALTER TABLE [dbo].[PermissaoPerfil] CHECK CONSTRAINT [FK_PermissaoPerfil_Permissao]
GO
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_Contato] FOREIGN KEY([IdContatoTelefone])
REFERENCES [dbo].[Contato] ([idContato])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [FK_Telefone_Contato]
GO
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_TipoTelefone] FOREIGN KEY([IdTipoTelefone])
REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [FK_Telefone_TipoTelefone]
GO
ALTER TABLE [dbo].[TelefoneEndereco]  WITH CHECK ADD  CONSTRAINT [FK_TelefoneEndereco_Endereco] FOREIGN KEY([IdEnderecoTelefone])
REFERENCES [dbo].[Endereco] ([idEndereco])
GO
ALTER TABLE [dbo].[TelefoneEndereco] CHECK CONSTRAINT [FK_TelefoneEndereco_Endereco]
GO
ALTER TABLE [dbo].[TelefoneEndereco]  WITH CHECK ADD  CONSTRAINT [FK_TelefoneEndereco_TipoTelefone] FOREIGN KEY([IdTipoTelefone])
REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone])
GO
ALTER TABLE [dbo].[TelefoneEndereco] CHECK CONSTRAINT [FK_TelefoneEndereco_TipoTelefone]
GO
ALTER TABLE [dbo].[TelefoneRecomendacao]  WITH CHECK ADD  CONSTRAINT [FK_TelefoneRecomendacao_Recomendacao] FOREIGN KEY([idRecomendacaoTelefone])
REFERENCES [dbo].[Recomendacao] ([idRecomendacao])
GO
ALTER TABLE [dbo].[TelefoneRecomendacao] CHECK CONSTRAINT [FK_TelefoneRecomendacao_Recomendacao]
GO
ALTER TABLE [dbo].[TelefoneRecomendacao]  WITH CHECK ADD  CONSTRAINT [FK_TelefoneRecomendacao_TipoTelefone] FOREIGN KEY([idTipoTelefone])
REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone])
GO
ALTER TABLE [dbo].[TelefoneRecomendacao] CHECK CONSTRAINT [FK_TelefoneRecomendacao_TipoTelefone]
GO
ALTER TABLE [dbo].[Token]  WITH CHECK ADD  CONSTRAINT [FK_Token_TokenStatus] FOREIGN KEY([idTokenStatus])
REFERENCES [dbo].[TokenStatus] ([idTokenStatus])
GO
ALTER TABLE [dbo].[Token] CHECK CONSTRAINT [FK_Token_TokenStatus]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY([IdEmpresaGrupo])
REFERENCES [dbo].[EmpresaGrupo] ([idEmpresaGrupo])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empresa]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Token] FOREIGN KEY([idToken])
REFERENCES [dbo].[Token] ([idToken])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Token]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_UsuarioStatus] FOREIGN KEY([idUsuarioStatus])
REFERENCES [dbo].[UsuarioStatus] ([idUsuarioStatus])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_UsuarioStatus]
GO
ALTER TABLE [dbo].[UsuarioEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEmpresa_EmpresaReceptora] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
GO
ALTER TABLE [dbo].[UsuarioEmpresa] CHECK CONSTRAINT [FK_UsuarioEmpresa_EmpresaReceptora]
GO
ALTER TABLE [dbo].[UsuarioEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEmpresa_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioEmpresa] CHECK CONSTRAINT [FK_UsuarioEmpresa_Usuario]
GO
ALTER TABLE [dbo].[UsuarioEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEmpresa_Usuario1] FOREIGN KEY([idUsuarioCriacao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioEmpresa] CHECK CONSTRAINT [FK_UsuarioEmpresa_Usuario1]
GO
ALTER TABLE [dbo].[UsuarioEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEmpresa_Usuario2] FOREIGN KEY([idUsuarioUltimaAlteracao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioEmpresa] CHECK CONSTRAINT [FK_UsuarioEmpresa_Usuario2]
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Compartilhamento] FOREIGN KEY([idCompartilhamento])
REFERENCES [dbo].[Compartilhamento] ([idCompartilhamento])
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento] CHECK CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Compartilhamento]
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Token] FOREIGN KEY([idToken])
REFERENCES [dbo].[Token] ([idToken])
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento] CHECK CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Token]
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Usuario] FOREIGN KEY([idUsuarioCriacao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento] CHECK CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Usuario]
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Usuario1] FOREIGN KEY([idUsuarioUltimaAlteracao])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioReceptorCompartilhamento] CHECK CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Usuario1]
GO
/****** Object:  StoredProcedure [dbo].[CompartilhamentoExiste]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[CompartilhamentoExiste] 
    @idCompartilhamento int = NULL,
	@cnpj varchar(max) = NULL
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	
	WHERE [idCompartilhamento] = @idCompartilhamento
	OR [CNPJEmpresaReceptora] = @cnpj

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_BuscarTipoDocumento]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_BuscarTipoDocumento] 
	@idDocumento int
AS 
BEGIN
	SELECT idTipoDocumento
	FROM Documento
	WHERE (idDocumento = @idDocumento)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_CompartilhamentoAlterar] 
    @idCompartilhamento int,
    @idUsuarioUltimaAlteracao int,
    @DataUltimaAlteracao datetime
AS 
BEGIN
	UPDATE [dbo].[Compartilhamento]
	SET    [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idCompartilhamento] = @idCompartilhamento

	SELECT [idEmpresaProvedora]
	FROM [dbo].[Compartilhamento]
	WHERE  [idCompartilhamento] = @idCompartilhamento
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_CompartilhamentoExcluir] 
    @idCompartilhamento int
AS 
BEGIN
	DELETE FROM [dbo].[UsuarioReceptorCompartilhamento] WHERE [idCompartilhamento] = @idCompartilhamento
	DELETE FROM [dbo].[GrupoInformacaoCompartilhamento] WHERE [idCompartilhamento] = @idCompartilhamento

	DELETE FROM [dbo].[Compartilhamento] WHERE [idCompartilhamento] = @idCompartilhamento
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoExistePorCNPJ]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_CompartilhamentoExistePorCNPJ] 
	@cnpj varchar(max)
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	
	WHERE [CNPJEmpresaReceptora] = @cnpj

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoExistePorID]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_CompartilhamentoExistePorID] 
    @idCompartilhamento int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	
	WHERE [idCompartilhamento] = @idCompartilhamento

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_CompartilhamentoInserir] 
    @idEmpresaProvedora int,
    @CNPJEmpresaReceptora char(18),
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Compartilhamento] ([idEmpresaProvedora], [CNPJEmpresaReceptora], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @idEmpresaProvedora, @CNPJEmpresaReceptora, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_CompartilhamentoListar] 
	@idUsuario int,
	@idEmpresa int,
	@textoPesquisa varchar(100)
AS 
BEGIN
	SELECT 
		ep.idEmpresaReceptora, 
		ep.NomeFantasiaEmpresa as NomeFantasiaReceptora, 
		ep.CNPJEmpresa as CNPJEmpresaReceptora, 
		ep.RazaoSocialEmpresa as RazaoSocialReceptora
	FROM UsuarioEmpresa AS ue
	INNER JOIN EmpresaReceptora AS er ON er.idEmpresaReceptora = ue.idEmpresa
	INNER JOIN Compartilhamento AS c ON c.CNPJEmpresaReceptora = er.CNPJEmpresa
	INNER JOIN EmpresaReceptora AS ep ON ep.idEmpresaReceptora = c.idEmpresaProvedora
	WHERE
		ue.idUsuario = @idUsuario
		and ue.idEmpresa = @idEmpresa
		and (ep.CNPJEmpresa like @textoPesquisa or ep.RazaoSocialEmpresa like @textoPesquisa)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_CompartilhamentoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_CompartilhamentoObter] 
    @cnpj char(18),
	@idEmpresaProvedora int
AS 
BEGIN
	SELECT 
		C.idCompartilhamento, 
		C.idEmpresaProvedora, 
		C.CNPJEmpresaReceptora, 
		C.idUsuarioCriacao, 
		C.DataCriacao, 
		C.idUsuarioUltimaAlteracao, 
		C.DataUltimaAlteracao, 
		R.NomeFantasiaEmpresa AS NomeFantasiaReceptora, 
		R.RazaoSocialEmpresa AS RazaoSocialReceptora
	FROM Compartilhamento AS C 
	LEFT OUTER JOIN EmpresaReceptora AS R ON C.CNPJEmpresaReceptora = R.CNPJEmpresa
	WHERE (C.CNPJEmpresaReceptora = @cnpj)
	AND C.idEmpresaProvedora = @idEmpresaProvedora
END





GO
/****** Object:  StoredProcedure [dbo].[Proc_ContatoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_ContatoAlterar] 
    @idContato int,
    @NomeContato varchar(MAX),
	@SobrenomeContato varchar(MAX),
    @CargoContato varchar(MAX),
    @TipoContato int
AS 
BEGIN
	UPDATE [dbo].[Contato]
	SET    [NomeContato] = @NomeContato, [CargoContato] = @CargoContato, [idTipoContato] = @TipoContato, [SobrenomeContato] = @SobrenomeContato
	WHERE  [idContato] = @idContato
	
	DELETE FROM Telefone WHERE [IdContatoTelefone] = @idContato
	DELETE FROM Email WHERE [idContato] = @idContato

	RETURN (@idContato)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ContatoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_ContatoExcluir] 
    @idContato int
AS 
BEGIN

	DELETE FROM Telefone WHERE [IdContatoTelefone] = @idContato
	DELETE FROM Email WHERE [idContato] = @idContato

	DELETE FROM [dbo].[Contato] WHERE [idContato] = @idContato
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ContatoFiltrar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_ContatoFiltrar]
	@IdEmpresa INT,
	@Nome VARCHAR(MAX), 
	@Cargo VARCHAR(MAX)
AS 
BEGIN

IF (@Nome IS NULL AND @Cargo IS NULL)
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		ORDER BY [idContato]
	END
ELSE IF (@Nome IS NULL)
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([CargoContato]) like '%' + lower(@Cargo) + '%'
		)
		ORDER BY [idContato]
	END
ELSE IF (@Cargo IS NULL)
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([NomeContato]) like '%' + lower(@Nome) + '%'
		)
		ORDER BY [idContato]
	END
ELSE
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
		lower([NomeContato]) like '%' + lower(@Nome) + '%'
		OR lower([CargoContato]) like '%' + lower(@Cargo) + '%'
		)
		ORDER BY [idContato]
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ContatoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_ContatoInserir] 
    @idEmpresa int,
    @NomeContato varchar(MAX),
	@SobrenomeContato varchar(MAX),
    @CargoContato varchar(MAX),
    @TipoContato int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Contato] ([idEmpresa],[NomeContato],[SobrenomeContato],[CargoContato],[idTipoContato])
	SELECT @idEmpresa, @NomeContato, @SobrenomeContato, @CargoContato, @TipoContato
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ContatoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_ContatoListar]
	@IdEmpresa INT,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
BEGIN
	SELECT 
		[idContato]
		,[idEmpresa]
		,[NomeContato]
		,[SobrenomeContato]
		,[CargoContato]
		,[idTipoContato]
	FROM [dbo].[Contato]
	WHERE [idEmpresa] = @IdEmpresa
	ORDER BY [idContato] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ContatoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_ContatoObter] 
    @idContato int
AS 
BEGIN
	SELECT [idContato], [idEmpresa], [NomeContato], [SobrenomeContato], [CargoContato], [idTipoContato] 
	FROM   [dbo].[Contato] 
	WHERE  ([idContato] = @idContato OR @idContato IS NULL) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_DocumentoAlterar] 
    @idDocumento int,
    @NomeDocumento varchar(MAX),
    @ComentariosDocumento varchar(MAX) = NULL
AS 
BEGIN
	UPDATE [dbo].[Documento]
	SET    [NomeDocumento] = @NomeDocumento, [DataVencimentoDocumento] = GETDATE(), [ComentariosDocumento] = @ComentariosDocumento
	WHERE  [idDocumento] = @idDocumento
	
	RETURN (@idDocumento)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_DocumentoExcluir] 
    @idDocumento int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Documento]
	WHERE  [idDocumento] = @idDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoExiste]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_DocumentoExiste] 
    @idDocumento int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idDocumento]) FROM [dbo].[Documento] WHERE [idDocumento] = @idDocumento

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoFiltrar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_DocumentoFiltrar] 
    @IdEmpresa int,
	@idTipo int,
	@Nome varchar(max), 
	@vencimentoIncial datetime,
	@vencimentoFinal datetime
AS 
BEGIN
	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE ([idEmpresa] = @IdEmpresa) 
	AND ([idTipoDocumento] = @idTipo)
	AND ([DataVencimentoDocumento] BETWEEN @vencimentoIncial AND @vencimentoFinal)
	AND (
		lower([NomeDocumento]) like '%' + lower(@Nome) + '%'
	)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_DocumentoInserir] 
    @idEmpresa int,
    @idTipoDocumento int,
    @NomeDocumento varchar(MAX),
    @DataEmissaoDocumento datetime,
    @DataVencimentoDocumento datetime = NULL,
    @ComentariosDocumento varchar(MAX) = NULL,
	@idArquivo uniqueidentifier
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Documento] ([idEmpresa], [idTipoDocumento], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento], [idArquivo])
	SELECT @idEmpresa, @idTipoDocumento, @NomeDocumento, @DataEmissaoDocumento, @DataVencimentoDocumento, @ComentariosDocumento, @idArquivo
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_DocumentoListar] 
    @IdEmpresa int,
	@idTipo int,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
BEGIN
	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE [idEmpresa] = @IdEmpresa AND [idTipoDocumento] = @idTipo
	ORDER BY [idDocumento] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_DocumentoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_DocumentoObter] 
    @idDocumento int
AS 
BEGIN
	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE  ([idDocumento] = @idDocumento OR @idDocumento IS NULL) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmailAlterar] 
    @idEmail int,
    @idContato int,
    @Email varchar(MAX)
AS 
BEGIN
	UPDATE [dbo].[Email]
	SET    [idContato] = @idContato, [Email] = @Email
	WHERE  [idEmail] = @idEmail
	
	RETURN (@idEmail)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmailExcluir] 
    @idEmail int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Email]
	WHERE  [idEmail] = @idEmail
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmailInserir] 
    @idContato int,
    @Email varchar(MAX)
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Email] ([idContato], [Email])
	SELECT @idContato, @Email
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmailObter] 
    @idEmail int
AS 
BEGIN
	SELECT [idEmail], [idContato], [Email] 
	FROM   [dbo].[Email] 
	WHERE  ([idEmail] = @idEmail OR @idEmail IS NULL) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailRecomendacaoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_EmailRecomendacaoInserir] 
    @idRecomendacao int,
    @Email varchar(MAX)
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[EmailRecomendacao] ([idRecomendacao], [Email])
	SELECT @idRecomendacao, @Email
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailsListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_EmailsListar] 
    @idContato int
AS 
BEGIN
SELECT [idEmail]
      ,[idContato]
      ,[Email]
  FROM [dbo].[Email]
	WHERE (IdContato = @idContato)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailsRecomendacaoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_EmailsRecomendacaoListar] 
    @idRecomendacao int
AS 
BEGIN
SELECT [idEmail]
      ,[IdRecomendacao]
      ,[Email]
  FROM [dbo].[EmailRecomendacao]
	WHERE (IdRecomendacao = @idRecomendacao)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmailsRecomendacaoListarPorIdEmpresa]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_EmailsRecomendacaoListarPorIdEmpresa] 
    @idEmpresa int
AS 
BEGIN
	SELECT
		t.idEmail,
		t.idRecomendacao as Id, 
		t.Email
	FROM EmailRecomendacao AS t 
	INNER JOIN Recomendacao AS e ON t.idRecomendacao = e.idRecomendacao
	WHERE (e.idEmpresa = @idEmpresa)

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaAlterar] 
    @idEmpresaReceptora int,
    @NomeFantasiaEmpresa varchar(MAX) = NULL,
    @CNPJEmpresa char(18),
    @CNAEAtividadePrincipalEmpresa varchar(MAX) = NULL,
    @CodigoOperacionalCVMEmpresa varchar(MAX) = NULL,
    @CEPEmpresa varchar(MAX) = NULL,
    @LogradouroEmpresa varchar(MAX) = NULL,
    @NumeroEmpresa varchar(MAX) = NULL,
    @ComplementoEmpresa varchar(MAX) = NULL,
    @BairroEmpresa varchar(MAX) = NULL,
    @CidadeEmpresa varchar(MAX) = NULL,
    @UFEmpresa varchar(MAX) = NULL,
    @DataConstituicaoEmpresa datetime = NULL,
    @DataSituacaoCadastralEmpresa datetime = NULL,
    @DataSituacaoEspecialEmpresa datetime = NULL,
    @GrupoEconomicoEmpresa varchar(MAX) = NULL,
    @InscricaoEstadualEmpresa varchar(MAX) = NULL,
    @InscricaoMunicipalEmpresa varchar(MAX) = NULL,
    @NaturezaJuridicaEmpresa varchar(MAX) = NULL,
    @PaisConstituicaoEmpresaEmpresa int = NULL,
    @PaisResidenciaFiscalEmpresa int = NULL,
    @PJDireitoPublicoEmpresa bit = NULL,
    @PossuiPaisResidenciaFiscalEmpresa bit = NULL,
    @PrincipalAtividadeEconomicaEmpresa int = NULL,
    @RazaoSocialEmpresa varchar(MAX) = NULL,
    @RegimeTributarioEmpresa int = NULL,
    @SituacaoCadastralEmpresa varchar(MAX) = NULL,
    @SituacaoEspecialEmpresa varchar(MAX) = NULL,
    @SituacaoInscricaoEstadualEmpresa varchar(MAX) = NULL,
    @SituacaoInscricaoMunicipalEmpresa varchar(MAX) = NULL,
    @TipoCapitalEmpresa int = NULL,
    @ValorCapitalSocialEmpresa decimal(18, 2) = NULL
AS 
BEGIN
	UPDATE [dbo].[EmpresaReceptora]
	SET    [NomeFantasiaEmpresa] = @NomeFantasiaEmpresa, [CNPJEmpresa] = @CNPJEmpresa, [CNAEAtividadePrincipalEmpresa] = @CNAEAtividadePrincipalEmpresa, [CodigoOperacionalCVMEmpresa] = @CodigoOperacionalCVMEmpresa, [CEPEmpresa] = @CEPEmpresa, [LogradouroEmpresa] = @LogradouroEmpresa, [NumeroEmpresa] = @NumeroEmpresa, [ComplementoEmpresa] = @ComplementoEmpresa, [BairroEmpresa] = @BairroEmpresa, [CidadeEmpresa] = @CidadeEmpresa, [UFEmpresa] = @UFEmpresa, [DataConstituicaoEmpresa] = @DataConstituicaoEmpresa, [DataSituacaoCadastralEmpresa] = @DataSituacaoCadastralEmpresa, [DataSituacaoEspecialEmpresa] = @DataSituacaoEspecialEmpresa, [GrupoEconomicoEmpresa] = @GrupoEconomicoEmpresa, [InscricaoEstadualEmpresa] = @InscricaoEstadualEmpresa, [InscricaoMunicipalEmpresa] = @InscricaoMunicipalEmpresa, [NaturezaJuridicaEmpresa] = @NaturezaJuridicaEmpresa, [PaisConstituicaoEmpresaEmpresa] = @PaisConstituicaoEmpresaEmpresa, [PaisResidenciaFiscalEmpresa] = @PaisResidenciaFiscalEmpresa, [PJDireitoPublicoEmpresa] = @PJDireitoPublicoEmpresa, [PossuiPaisResidenciaFiscalEmpresa] = @PossuiPaisResidenciaFiscalEmpresa, [PrincipalAtividadeEconomicaEmpresa] = @PrincipalAtividadeEconomicaEmpresa, [RazaoSocialEmpresa] = @RazaoSocialEmpresa, [RegimeTributarioEmpresa] = @RegimeTributarioEmpresa, [SituacaoCadastralEmpresa] = @SituacaoCadastralEmpresa, [SituacaoEspecialEmpresa] = @SituacaoEspecialEmpresa, [SituacaoInscricaoEstadualEmpresa] = @SituacaoInscricaoEstadualEmpresa, [SituacaoInscricaoMunicipalEmpresa] = @SituacaoInscricaoMunicipalEmpresa, [TipoCapitalEmpresa] = @TipoCapitalEmpresa, [ValorCapitalSocialEmpresa] = @ValorCapitalSocialEmpresa
	WHERE  [idEmpresaReceptora] = @idEmpresaReceptora
	
	RETURN (@idEmpresaReceptora)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaExcluir] 
    @idEmpresa int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Empresa]
	WHERE  [idEmpresa] = @idEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaExiste]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaExiste] 
    @idEmpresaReceptora int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idEmpresaReceptora]) FROM [dbo].[EmpresaReceptora]	WHERE  [idEmpresaReceptora] = @idEmpresaReceptora

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaGrupoObterPorIdUsuario]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Proc_EmpresaGrupoObterPorIdUsuario] 
    @idUsuario int
AS 
BEGIN
SELECT [IdEmpresaGrupo] FROM [dbo].[Usuario]
	WHERE  ([idUsuario] = @idUsuario) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaInserir] 
    @idEmpresaGrupo int,
    @DataUltimaAtualizacaoOficial datetime = NULL,
    @NomeFantasiaEmpresa varchar(MAX) = NULL,
    @CNPJEmpresa char(18),
    @CNAEAtividadePrincipalEmpresa varchar(MAX) = NULL,
    @CodigoOperacionalCVMEmpresa varchar(MAX) = NULL,
    @CEPEmpresa varchar(MAX) = NULL,
    @LogradouroEmpresa varchar(MAX) = NULL,
    @NumeroEmpresa varchar(MAX) = NULL,
    @ComplementoEmpresa varchar(MAX) = NULL,
    @BairroEmpresa varchar(MAX) = NULL,
    @CidadeEmpresa varchar(MAX) = NULL,
    @UFEmpresa varchar(MAX) = NULL,
    @DataConstituicaoEmpresa datetime = NULL,
    @DataSituacaoCadastralEmpresa datetime = NULL,
    @DataSituacaoEspecialEmpresa datetime = NULL,
    @GrupoEconomicoEmpresa varchar(MAX) = NULL,
    @InscricaoEstadualEmpresa varchar(MAX) = NULL,
    @InscricaoMunicipalEmpresa varchar(MAX) = NULL,
    @NaturezaJuridicaEmpresa varchar(MAX) = NULL,
    @PaisConstituicaoEmpresaEmpresa int = NULL,
    @PaisResidenciaFiscalEmpresa int = NULL,
    @PJDireitoPublicoEmpresa bit = NULL,
    @PossuiPaisResidenciaFiscalEmpresa bit = NULL,
    @PrincipalAtividadeEconomicaEmpresa int = NULL,
    @RazaoSocialEmpresa varchar(MAX) = NULL,
    @RegimeTributarioEmpresa int = NULL,
    @SituacaoCadastralEmpresa varchar(MAX) = NULL,
    @SituacaoEspecialEmpresa varchar(MAX) = NULL,
    @SituacaoInscricaoEstadualEmpresa varchar(MAX) = NULL,
    @SituacaoInscricaoMunicipalEmpresa varchar(MAX) = NULL,
    @TipoCapitalEmpresa int = NULL,
    @ValorCapitalSocialEmpresa decimal(18, 2) = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[EmpresaReceptora] ([idEmpresaGrupo], [DataUltimaAtualizacaoOficial], [NomeFantasiaEmpresa], [CNPJEmpresa], [CNAEAtividadePrincipalEmpresa], [CodigoOperacionalCVMEmpresa], [CEPEmpresa], [LogradouroEmpresa], [NumeroEmpresa], [ComplementoEmpresa], [BairroEmpresa], [CidadeEmpresa], [UFEmpresa], [DataConstituicaoEmpresa], [DataSituacaoCadastralEmpresa], [DataSituacaoEspecialEmpresa], [GrupoEconomicoEmpresa], [InscricaoEstadualEmpresa], [InscricaoMunicipalEmpresa], [NaturezaJuridicaEmpresa], [PaisConstituicaoEmpresaEmpresa], [PaisResidenciaFiscalEmpresa], [PJDireitoPublicoEmpresa], [PossuiPaisResidenciaFiscalEmpresa], [PrincipalAtividadeEconomicaEmpresa], [RazaoSocialEmpresa], [RegimeTributarioEmpresa], [SituacaoCadastralEmpresa], [SituacaoEspecialEmpresa], [SituacaoInscricaoEstadualEmpresa], [SituacaoInscricaoMunicipalEmpresa], [TipoCapitalEmpresa], [ValorCapitalSocialEmpresa])
	SELECT @idEmpresaGrupo, @DataUltimaAtualizacaoOficial, @NomeFantasiaEmpresa, @CNPJEmpresa, @CNAEAtividadePrincipalEmpresa, @CodigoOperacionalCVMEmpresa, @CEPEmpresa, @LogradouroEmpresa, @NumeroEmpresa, @ComplementoEmpresa, @BairroEmpresa, @CidadeEmpresa, @UFEmpresa, @DataConstituicaoEmpresa, @DataSituacaoCadastralEmpresa, @DataSituacaoEspecialEmpresa, @GrupoEconomicoEmpresa, @InscricaoEstadualEmpresa, @InscricaoMunicipalEmpresa, @NaturezaJuridicaEmpresa, @PaisConstituicaoEmpresaEmpresa, @PaisResidenciaFiscalEmpresa, @PJDireitoPublicoEmpresa, @PossuiPaisResidenciaFiscalEmpresa, @PrincipalAtividadeEconomicaEmpresa, @RazaoSocialEmpresa, @RegimeTributarioEmpresa, @SituacaoCadastralEmpresa, @SituacaoEspecialEmpresa, @SituacaoInscricaoEstadualEmpresa, @SituacaoInscricaoMunicipalEmpresa, @TipoCapitalEmpresa, @ValorCapitalSocialEmpresa
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaListar] 
    @idUsuario int
AS 
BEGIN
	SELECT er.idEmpresaReceptora, er.idEmpresaGrupo, er.CNPJEmpresa, er.RazaoSocialEmpresa
	FROM EmpresaReceptora AS er 
	INNER JOIN UsuarioEmpresa AS ue ON ue.idEmpresa = er.idEmpresaReceptora
	WHERE (ue.idUsuario = @idUsuario)
	ORDER BY er.idEmpresaReceptora DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaListarCompartilhadas]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaListarCompartilhadas] --[dbo].[Proc_EmpresaListarCompartilhadas] 7
    @idUsuario int
AS 
BEGIN
	
	SELECT 
		tb.idEmpresaReceptora, 
		tb.idEmpresaGrupo, 
		tb.CNPJEmpresa, 
		tb.RazaoSocialEmpresa 
	FROM EmpresaReceptora tb
	WHERE 
	tb.idEmpresaReceptora in (
		SELECT c.idEmpresaProvedora FROM Compartilhamento c
		INNER JOIN EmpresaReceptora er on er.CNPJEmpresa = c.CNPJEmpresaReceptora 
		INNER JOIN UsuarioEmpresa ue on ue.idEmpresa = er.idEmpresaReceptora
		INNER JOIN Usuario u ON u.idUsuario = ue.idUsuario
		WHERE u.idUsuario = @idUsuario
	)

END
















GO
/****** Object:  StoredProcedure [dbo].[Proc_EmpresaObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EmpresaObter] 
    @idEmpresaReceptora int
AS 
BEGIN
	SELECT 
	[idEmpresaReceptora], 
	[idEmpresaGrupo], 
	[DataUltimaAtualizacaoOficial], 
	[NomeFantasiaEmpresa], 
	[CNPJEmpresa], 
	[CNAEAtividadePrincipalEmpresa], 
	[CodigoOperacionalCVMEmpresa], 
	[CEPEmpresa], 
	[LogradouroEmpresa], 
	[NumeroEmpresa], 
	[ComplementoEmpresa], 
	[BairroEmpresa], 
	[CidadeEmpresa], 
	[UFEmpresa], 
	[DataConstituicaoEmpresa], 
	[DataSituacaoCadastralEmpresa], 
	[DataSituacaoEspecialEmpresa], 
	[GrupoEconomicoEmpresa], 
	[InscricaoEstadualEmpresa], 
	[InscricaoMunicipalEmpresa], 
	[NaturezaJuridicaEmpresa], 
	[PaisConstituicaoEmpresaEmpresa], 
	[PaisResidenciaFiscalEmpresa], 
	[PJDireitoPublicoEmpresa], 
	[PossuiPaisResidenciaFiscalEmpresa], 
	[PrincipalAtividadeEconomicaEmpresa], 
	[RazaoSocialEmpresa], 
	[RegimeTributarioEmpresa], 
	[SituacaoCadastralEmpresa], 
	[SituacaoEspecialEmpresa], 
	[SituacaoInscricaoEstadualEmpresa], 
	[SituacaoInscricaoMunicipalEmpresa], 
	[TipoCapitalEmpresa], 
	[ValorCapitalSocialEmpresa] 
	FROM   [dbo].[EmpresaReceptora] 
	WHERE  ([idEmpresaReceptora] = @idEmpresaReceptora) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EnderecoAlterar] 
    @idEndereco int,
    @DescricaoEndereco varchar(MAX),
    @idPaisEndereco int,
    @CEPEndereco varchar(20) = NULL,
    @CaixaPostalEndereco varchar(20) = NULL,
    @UFEndereco char(2) = NULL,
    @LogradouroEndereco varchar(MAX) = NULL,
    @NumeroEndereco varchar(20) = NULL,
    @ComplementoEndereco varchar(20) = NULL,
    @BairroEndereco varchar(MAX) = NULL,
    @CidadeEndereco varchar(MAX) = NULL
AS 
BEGIN
	UPDATE [dbo].[Endereco]
	SET    [DescricaoEndereco] = @DescricaoEndereco, [idPaisEndereco] = @idPaisEndereco, [CEPEndereco] = @CEPEndereco, [CaixaPostalEndereco] = @CaixaPostalEndereco, [UFEndereco] = @UFEndereco, [LogradouroEndereco] = @LogradouroEndereco, [NumeroEndereco] = @NumeroEndereco, [ComplementoEndereco] = @ComplementoEndereco, [BairroEndereco] = @BairroEndereco, [CidadeEndereco] = @CidadeEndereco
	WHERE  [idEndereco] = @idEndereco

	DELETE FROM TelefoneEndereco WHERE [IdEnderecoTelefone] = @idEndereco
	
	RETURN (@idEndereco)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EnderecoExcluir] 
    @idEndereco int
AS 
BEGIN
	DELETE FROM TelefoneEndereco WHERE [IdEnderecoTelefone] = @idEndereco
	DELETE FROM [dbo].[Endereco] WHERE  [idEndereco] = @idEndereco
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoExiste]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_EnderecoExiste] 
    @idEndereco int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idEndereco]) FROM [dbo].[Endereco]	WHERE  [idEndereco] = @idEndereco

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoFiltrar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_EnderecoFiltrar]
	@IdEmpresa INT,
	@Logradouro VARCHAR(MAX), 
	@Cidade VARCHAR(MAX)
AS 
BEGIN
IF (@Logradouro IS NULL AND @Cidade IS NULL)
	BEGIN
		SELECT 
			[idEndereco]
			,[idEmpresa]
			,[DescricaoEndereco]
			,[idPaisEndereco]
			,[CEPEndereco]
			,[CaixaPostalEndereco]
			,[UFEndereco]
			,[LogradouroEndereco]
			,[NumeroEndereco]
			,[ComplementoEndereco]
			,[BairroEndereco]
			,[CidadeEndereco]
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		ORDER BY [idEndereco]
	END
ELSE IF (@Logradouro IS NULL)
	BEGIN
		SELECT 
			[idEndereco]
			,[idEmpresa]
			,[DescricaoEndereco]
			,[idPaisEndereco]
			,[CEPEndereco]
			,[CaixaPostalEndereco]
			,[UFEndereco]
			,[LogradouroEndereco]
			,[NumeroEndereco]
			,[ComplementoEndereco]
			,[BairroEndereco]
			,[CidadeEndereco]
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([CidadeEndereco]) like '%' + lower(@Cidade) + '%'
		)
		ORDER BY [idEndereco]
	END
ELSE IF (@Cidade IS NULL)
	BEGIN
		SELECT 
			[idEndereco]
			,[idEmpresa]
			,[DescricaoEndereco]
			,[idPaisEndereco]
			,[CEPEndereco]
			,[CaixaPostalEndereco]
			,[UFEndereco]
			,[LogradouroEndereco]
			,[NumeroEndereco]
			,[ComplementoEndereco]
			,[BairroEndereco]
			,[CidadeEndereco]
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([LogradouroEndereco]) like '%' + lower(@Logradouro) + '%'
		)
		ORDER BY [idEndereco]
	END
ELSE
	BEGIN
		SELECT 
			[idEndereco]
			,[idEmpresa]
			,[DescricaoEndereco]
			,[idPaisEndereco]
			,[CEPEndereco]
			,[CaixaPostalEndereco]
			,[UFEndereco]
			,[LogradouroEndereco]
			,[NumeroEndereco]
			,[ComplementoEndereco]
			,[BairroEndereco]
			,[CidadeEndereco]
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
		lower([LogradouroEndereco]) like '%' + lower(@Logradouro) + '%'
		OR lower([CidadeEndereco]) like '%' + lower(@Cidade) + '%'
		)
		ORDER BY [idEndereco]
	END
END






GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EnderecoInserir] 
    @idEmpresa int,
    @DescricaoEndereco varchar(MAX),
    @idPaisEndereco int,
    @CEPEndereco varchar(20) = NULL,
    @CaixaPostalEndereco varchar(20) = NULL,
    @UFEndereco char(2) = NULL,
    @LogradouroEndereco varchar(MAX) = NULL,
    @NumeroEndereco varchar(20) = NULL,
    @ComplementoEndereco varchar(20) = NULL,
    @BairroEndereco varchar(MAX) = NULL,
    @CidadeEndereco varchar(MAX) = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Endereco] ([idEmpresa], [DescricaoEndereco], [idPaisEndereco], [CEPEndereco], [CaixaPostalEndereco], [UFEndereco], [LogradouroEndereco], [NumeroEndereco], [ComplementoEndereco], [BairroEndereco], [CidadeEndereco])
	SELECT @idEmpresa, @DescricaoEndereco, @idPaisEndereco, @CEPEndereco, @CaixaPostalEndereco, @UFEndereco, @LogradouroEndereco, @NumeroEndereco, @ComplementoEndereco, @BairroEndereco, @CidadeEndereco
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_EnderecoListar]
	@IdEmpresa INT,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
BEGIN
	SELECT 
		[idEndereco]
		,[idEmpresa]
		,[DescricaoEndereco]
		,[idPaisEndereco]
		,[CEPEndereco]
		,[CaixaPostalEndereco]
		,[UFEndereco]
		,[LogradouroEndereco]
		,[NumeroEndereco]
		,[ComplementoEndereco]
		,[BairroEndereco]
		,[CidadeEndereco]
	FROM [dbo].[Endereco]
	WHERE [idEmpresa] = @IdEmpresa
	ORDER BY [idEndereco] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END






GO
/****** Object:  StoredProcedure [dbo].[Proc_EnderecoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_EnderecoObter] 
    @idEndereco int
AS 
BEGIN
	SELECT 
		[idEndereco]
		,[idEmpresa]
		,[DescricaoEndereco]
		,[idPaisEndereco]
		,[CEPEndereco]
		,[CaixaPostalEndereco]
		,[UFEndereco]
		,[LogradouroEndereco]
		,[NumeroEndereco]
		,[ComplementoEndereco]
		,[BairroEndereco]
		,[CidadeEndereco]
	FROM   [dbo].[Endereco] 
	WHERE  ([idEndereco] = @idEndereco) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GrupoInformacaoCompartilhamentoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoAlterar] 
    @idGrupoInformacaoCompartilhamento int,
    @idCompartilhamento int,
    @idGrupoInformacao int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[GrupoInformacaoCompartilhamento]
	SET    [idCompartilhamento] = @idCompartilhamento, [idGrupoInformacao] = @idGrupoInformacao, [idUsuarioCriacao] = @idUsuarioCriacao, [DataCriacao] = @DataCriacao, [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idGrupoInformacaoCompartilhamento] = @idGrupoInformacaoCompartilhamento
	
	RETURN (@idGrupoInformacaoCompartilhamento)

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[Proc_GrupoInformacaoCompartilhamentoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoExcluir] 
    @idCompartilhamento int,
	@idGrupoInformacao int
AS 

	DELETE
	FROM   [dbo].[GrupoInformacaoCompartilhamento]
	WHERE  [idGrupoInformacao] = @idGrupoInformacao
	AND [idCompartilhamento] = @idCompartilhamento

GO
/****** Object:  StoredProcedure [dbo].[Proc_GrupoInformacaoCompartilhamentoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoInserir] 
    @idCompartilhamento int,
    @idGrupoInformacao int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[GrupoInformacaoCompartilhamento] ([idCompartilhamento], [idGrupoInformacao], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @idCompartilhamento, @idGrupoInformacao, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

GO
/****** Object:  StoredProcedure [dbo].[Proc_GrupoInformacaoCompartilhamentoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoListar] 
    @idCompartilhamento int
AS 
BEGIN
		SELECT
		gic.idGrupoInformacaoCompartilhamento, gic.idCompartilhamento, gic.idGrupoInformacao, gi.NomeGrupoInformacao
		FROM
		GrupoInformacaoCompartilhamento AS gic INNER JOIN
		GrupoInformacao AS gi ON gi.idGrupoInformacao = gic.idGrupoInformacao
		WHERE
		(gic.idCompartilhamento = @idCompartilhamento) AND (gi.idGrupoInformacaoPai IS NOT NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_GrupoInformacaoCompartilhamentoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoObter] 
    @idGrupoInformacaoCompartilhamento int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [idGrupoInformacaoCompartilhamento], [idCompartilhamento], [idGrupoInformacao], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao] 
	FROM   [dbo].[GrupoInformacaoCompartilhamento] 
	WHERE  ([idGrupoInformacaoCompartilhamento] = @idGrupoInformacaoCompartilhamento OR @idGrupoInformacaoCompartilhamento IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[Proc_GrupoInformacaoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_GrupoInformacaoListar] 
    @idCompartilhamento int
AS 
BEGIN
		SELECT
		gic.idGrupoInformacaoCompartilhamento, gic.idCompartilhamento, gic.idGrupoInformacao, gi.NomeGrupoInformacao
		FROM
		GrupoInformacaoCompartilhamento AS gic INNER JOIN
		GrupoInformacao AS gi ON gi.idGrupoInformacao = gic.idGrupoInformacao
		WHERE
		(gic.idCompartilhamento = @idCompartilhamento) AND (gi.idGrupoInformacaoPai IS NOT NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ProspectInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_ProspectInserir] 
    @NomeProspect varchar(MAX),
    @EmailProspect varchar(MAX),
    @EmpresaProspect varchar(MAX) = NULL,
    @TelefoneProspect varchar(MAX) = NULL,
    @MensagemProspect varchar(MAX) = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Prospect] ([NomeProspect], [EmailProspect], [EmpresaProspect], [TelefoneProspect], [MensagemProspect])
	SELECT @NomeProspect, @EmailProspect, @EmpresaProspect, @TelefoneProspect, @MensagemProspect
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_RecomendacaoAlterar] 
    @idRecomendacao int,
    @NomeRecomendacao varchar(MAX),
    @SobrenomeRecomendacao varchar(MAX) = NULL,
    @RelacionamentoRecomendacao int,
    @idArquivo uniqueidentifier,
    @CargoRecomendacao varchar(MAX),
    @EmpresaRecomendacao varchar(MAX),
    @NomeDocumento varchar(MAX),
    @ComentariosRecomendacao varchar(MAX) = NULL,
    @idUsuario int = NULL,
    @DataCriacao datetime = NULL,
    @DataAlteracao datetime = NULL
AS 
BEGIN
	UPDATE [dbo].[Recomendacao]
	SET    [NomeRecomendacao] = @NomeRecomendacao, [SobrenomeRecomendacao] = @SobrenomeRecomendacao, [RelacionamentoRecomendacao] = @RelacionamentoRecomendacao, [CargoRecomendacao] = @CargoRecomendacao, [EmpresaRecomendacao] = @EmpresaRecomendacao, [NomeDocumento] = @NomeDocumento, [ComentariosRecomendacao] = @ComentariosRecomendacao, [idUsuario] = @idUsuario, [DataCriacao] = @DataCriacao, [DataAlteracao] = @DataAlteracao
	WHERE  [idRecomendacao] = @idRecomendacao

	DELETE FROM TelefoneRecomendacao WHERE [IdRecomendacaoTelefone] = @idRecomendacao
	DELETE FROM EmailRecomendacao WHERE [idRecomendacao] = @idRecomendacao
	
	RETURN (@idRecomendacao)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_RecomendacaoExcluir] 
    @idRecomendacao int
AS 
BEGIN
	DELETE FROM TelefoneRecomendacao WHERE [IdRecomendacaoTelefone] = @idRecomendacao
	DELETE FROM EmailRecomendacao WHERE [idRecomendacao] = @idRecomendacao

	DELETE FROM [dbo].[Recomendacao] WHERE [idRecomendacao] = @idRecomendacao
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoExiste]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_RecomendacaoExiste] 
    @idRecomendacao int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idRecomendacao]) FROM [dbo].[Recomendacao] WHERE [idRecomendacao] = @idRecomendacao

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoFiltrar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc_RecomendacaoFiltrar]
	@IdEmpresa INT,
	@Nome VARCHAR(MAX), 
	@Cargo VARCHAR(MAX)
AS 
BEGIN
	SELECT 
		[idRecomendacao], 
		[idEmpresa], 
		[NomeRecomendacao], 
		[SobrenomeRecomendacao], 
		[RelacionamentoRecomendacao], 
		[idArquivo], 
		[CargoRecomendacao], 
		[EmpresaRecomendacao], 
		[NomeDocumento], 
		[ComentariosRecomendacao], 
		[idUsuario], 
		[DataCriacao], 
		[DataAlteracao] 
	FROM   [dbo].[Recomendacao] 
	WHERE [idEmpresa] = @IdEmpresa
	AND (
	lower([NomeRecomendacao]) like '%' + lower(@Nome) + '%'
	OR lower([CargoRecomendacao]) like '%' + lower(@Cargo) + '%'
	)
	ORDER BY [idRecomendacao]
END






GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_RecomendacaoInserir] 
    @idEmpresa int,
    @NomeRecomendacao varchar(MAX),
    @SobrenomeRecomendacao varchar(MAX) = NULL,
    @RelacionamentoRecomendacao int,
    @idArquivo uniqueidentifier,
    @CargoRecomendacao varchar(MAX),
    @EmpresaRecomendacao varchar(MAX),
    @NomeDocumento varchar(MAX),
    @ComentariosRecomendacao varchar(MAX) = NULL,
    @idUsuario int = NULL,
    @DataCriacao datetime = NULL,
    @DataAlteracao datetime = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Recomendacao] ([idEmpresa], [NomeRecomendacao], [SobrenomeRecomendacao], [RelacionamentoRecomendacao], [idArquivo], [CargoRecomendacao], [EmpresaRecomendacao], [NomeDocumento], [ComentariosRecomendacao], [idUsuario], [DataCriacao], [DataAlteracao])
	SELECT @idEmpresa, @NomeRecomendacao, @SobrenomeRecomendacao, @RelacionamentoRecomendacao, @idArquivo, @CargoRecomendacao, @EmpresaRecomendacao, @NomeDocumento, @ComentariosRecomendacao, @idUsuario, @DataCriacao, @DataAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_RecomendacaoListar]
	@IdEmpresa int,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
BEGIN
	SELECT 
		[idRecomendacao], 
		[idEmpresa], 
		[NomeRecomendacao], 
		[SobrenomeRecomendacao], 
		[RelacionamentoRecomendacao], 
		[idArquivo], 
		[CargoRecomendacao], 
		[EmpresaRecomendacao], 
		[NomeDocumento], 
		[ComentariosRecomendacao], 
		[idUsuario], 
		[DataCriacao], 
		[DataAlteracao] 
	FROM   [dbo].[Recomendacao] 
	WHERE [idEmpresa] = @IdEmpresa
	ORDER BY [idRecomendacao] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END






GO
/****** Object:  StoredProcedure [dbo].[Proc_RecomendacaoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_RecomendacaoObter] 
    @idRecomendacao int
AS 
BEGIN
	SELECT [idRecomendacao], [idEmpresa], [NomeRecomendacao], [SobrenomeRecomendacao], [RelacionamentoRecomendacao], [idArquivo], [CargoRecomendacao], [EmpresaRecomendacao], [NomeDocumento], [ComentariosRecomendacao], [idUsuario], [DataCriacao], [DataAlteracao] 
	FROM   [dbo].[Recomendacao] 
	WHERE  ([idRecomendacao] = @idRecomendacao OR @idRecomendacao IS NULL) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefoneAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TelefoneAlterar] 
    @idTelefone int,
    @IdContatoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
	@DDITelefone char(3)
AS 
BEGIN
	UPDATE [dbo].[Telefone]
	SET    [IdContatoTelefone] = @IdContatoTelefone, [IdTipoTelefone] = @IdTipoTelefone, [NumeroTelefone] = @NumeroTelefone, [RamalTelefone] = @RamalTelefone, [DDITelefone] = @DDITelefone
	WHERE  [idTelefone] = @idTelefone
	
	RETURN (@idTelefone)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefoneEnderecoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_TelefoneEnderecoInserir]
    @IdEnderecoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
    @DDITelefone int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[TelefoneEndereco] ([IdEnderecoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone])
	SELECT @IdEnderecoTelefone, @IdTipoTelefone, @NumeroTelefone, @RamalTelefone ,@DDITelefone
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefoneExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TelefoneExcluir] 
    @idTelefone int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Telefone]
	WHERE  [idTelefone] = @idTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefoneInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TelefoneInserir] 
    @IdContatoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
    @DDITelefone int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Telefone] ([IdContatoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone])
	SELECT @IdContatoTelefone, @IdTipoTelefone, @NumeroTelefone, @RamalTelefone ,@DDITelefone
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefoneObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TelefoneObter] 
    @idTelefone int
AS 
BEGIN
	SELECT [idTelefone], [IdContatoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone]
	FROM   [dbo].[Telefone] 
	WHERE  ([idTelefone] = @idTelefone OR @idTelefone IS NULL) 
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefoneRecomendacaoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TelefoneRecomendacaoInserir]
    @IdRecomendacaoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
    @DDITelefone int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[TelefoneRecomendacao] ([IdRecomendacaoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone])
	SELECT @IdRecomendacaoTelefone, @IdTipoTelefone, @NumeroTelefone, @RamalTelefone ,@DDITelefone
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefonesEnderecoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_TelefonesEnderecoListar] 
    @idEndereco int
AS 
BEGIN
SELECT [idTelefone]
      ,[IdEnderecoTelefone] AS Id
      ,[IdTipoTelefone]
      ,[NumeroTelefone]
	  ,[RamalTelefone]
      ,[DDITelefone]
  FROM [dbo].[TelefoneEndereco]
	WHERE (IdEnderecoTelefone = @idEndereco)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefonesEnderecoListarPorIdEmpresa]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_TelefonesEnderecoListarPorIdEmpresa] 
    @idEmpresa int
AS 
BEGIN
	SELECT        
		t.idTelefone, 
		t.IdEnderecoTelefone as Id, 
		t.IdTipoTelefone, 
		t.NumeroTelefone, 
		t.RamalTelefone, 
		t.DDITelefone
	FROM TelefoneEndereco AS t 
	INNER JOIN Endereco AS e ON t.IdEnderecoTelefone = e.idEndereco
	WHERE (e.idEmpresa = @idEmpresa)

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefonesListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TelefonesListar] 
    @idContato int
AS 
BEGIN
SELECT [idTelefone]
      ,[IdContatoTelefone]
      ,[IdTipoTelefone]
      ,[NumeroTelefone]
	  ,[RamalTelefone]
      ,[DDITelefone]
  FROM [dbo].[Telefone]
	WHERE (IdContatoTelefone = @idContato)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefonesRecomendacaoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_TelefonesRecomendacaoListar] 
    @idRecomendacao int
AS 
BEGIN
SELECT [idTelefone]
      ,[IdRecomendacaoTelefone] AS Id
      ,[IdTipoTelefone]
      ,[NumeroTelefone]
	  ,[RamalTelefone]
      ,[DDITelefone]
  FROM [dbo].[TelefoneRecomendacao]
	WHERE (IdRecomendacaoTelefone = @idRecomendacao)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TelefonesRecomendacaoListarPorIdEmpresa]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_TelefonesRecomendacaoListarPorIdEmpresa] 
    @idEmpresa int
AS 
BEGIN
	SELECT        
		t.idTelefone, 
		t.IdRecomendacaoTelefone as Id, 
		t.IdTipoTelefone, 
		t.NumeroTelefone, 
		t.RamalTelefone, 
		t.DDITelefone
	FROM TelefoneRecomendacao AS t 
	INNER JOIN Recomendacao AS e ON t.IdRecomendacaoTelefone = e.idRecomendacao
	WHERE (e.idEmpresa = @idEmpresa)

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TokenAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



	
CREATE PROC [dbo].[Proc_TokenAlterar] 
    @idToken int,
    @CodigoSimplificadoToken char(5) = NULL,
	@DataExpiracaoToken datetime,
	@idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 

	UPDATE [dbo].[Token]
	SET    
	[DataExpiracaoToken] = @DataExpiracaoToken, 
	[CodigoSimplificadoToken] = @CodigoSimplificadoToken, 
	[idTokenStatus] = 3,
	[idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao,
    [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idToken] = @idToken
GO
/****** Object:  StoredProcedure [dbo].[Proc_TokenContar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Proc_TokenContar] 
    @Login varchar(max),
	@Token varchar(max)
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idToken])
	FROM [dbo].[Token]
	WHERE [CodigoToken] = @Token
	AND [EmailToken] = @Login
	AND [DataExpiracaoToken] > GETDATE()
	AND [idTokenStatus] = 1

	RETURN (@Qtd)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TokenInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TokenInserir] 
    @EmailToken varchar(150),
    @DataExpiracaoToken datetime,
    @CodigoToken uniqueidentifier = NULL,
    @CodigoSimplificadoToken char(5) = NULL,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL,
    @idTokenStatus int
AS 

	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Token] ([EmailToken], [DataExpiracaoToken], [CodigoToken], [CodigoSimplificadoToken], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao], [idTokenStatus])
	SELECT @EmailToken, @DataExpiracaoToken, @CodigoToken, @CodigoSimplificadoToken, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao, @idTokenStatus
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

GO
/****** Object:  StoredProcedure [dbo].[Proc_TokenObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_TokenObter] 
    @Login varchar(max),
	@Token varchar(max)
AS 
BEGIN
	SELECT TOP 1 [idToken]
	FROM [dbo].[Token]
	WHERE [CodigoToken] = @Token
	AND [EmailToken] = @Login
	AND [DataExpiracaoToken] > GETDATE()
	AND [idTokenStatus] = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_TokenReduzidoContar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_TokenReduzidoContar] 
    @Login varchar(max),
	@Token varchar(max)
AS 
BEGIN
	SELECT COUNT([idToken])
	FROM [dbo].[Token]
	WHERE [CodigoSimplificadoToken] = @Token
	AND [EmailToken] = @Login
	AND [DataExpiracaoToken] > GETDATE()
	AND [idTokenStatus] = 3
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioAlterar] 
    @idUsuario int,
    @NomeUsuario varchar(MAX),
    @EmailUsuario varchar(MAX),
    @LoginUsuario varchar(MAX),
    @HashSenhaUsuario varchar(MAX),
    @IdEmpresaGrupo int,
    @idUsuarioStatus int,
    @idToken int = NULL
AS 

	UPDATE [dbo].[Usuario]
	SET    [NomeUsuario] = @NomeUsuario, [EmailUsuario] = @EmailUsuario, [LoginUsuario] = @LoginUsuario, [HashSenhaUsuario] = @HashSenhaUsuario, [IdEmpresaGrupo] = @IdEmpresaGrupo, [idUsuarioStatus] = @idUsuarioStatus, [idToken] = @idToken
	WHERE  [idUsuario] = @idUsuario
	
	RETURN (@idUsuario)

GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioAtivar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioAtivar] 
    @Login varchar(MAX)
AS 

BEGIN

	DECLARE @idUsuario AS INT

	UPDATE [dbo].[Usuario]
	SET    [idUsuarioStatus] = 1
	WHERE  [LoginUsuario] = @Login
	
	SELECT TOP 1 @idUsuario = idUsuario FROM [dbo].[Usuario] WHERE  [LoginUsuario] = @Login

	RETURN (@idUsuario)

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioAtivoContar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_UsuarioAtivoContar] 
    @LoginUsuario varchar(max)
AS 
BEGIN

	SELECT COUNT([idUsuario])
	FROM [dbo].[Usuario]
	WHERE [LoginUsuario] = @LoginUsuario
	AND [idUsuarioStatus] = 1

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioCompartilhamentoListar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Proc_UsuarioCompartilhamentoListar] 
    @idCompartilhamento int
AS 
BEGIN
	SELECT        
		idUsuarioReceptorCompartilhamento, EmailUsuarioReceptorCompartilhamento, CPFUsuarioReceptorCompartilhamento, NomeUsuarioReceptorCompartilhamento, idCompartilhamento
	FROM            
		UsuarioReceptorCompartilhamento
	WHERE        
		(idCompartilhamento = @idCompartilhamento)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioContar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioContar] 
    @LoginUsuario varchar(max)
AS 
BEGIN

	SELECT COUNT([idUsuario])
	FROM [dbo].[Usuario]
	WHERE [LoginUsuario] = @LoginUsuario

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioExcluir] 
    @idUsuario int
AS 

	DELETE
	FROM   [dbo].[Usuario]
	WHERE  [idUsuario] = @idUsuario

GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioInserir] 
    @NomeUsuario varchar(MAX),
    @EmailUsuario varchar(MAX),
    @LoginUsuario varchar(MAX),

	@CPFUsuario char(14),
	@TelefoneUsuario varchar(30),
	@TermosUsoUsuario bit,
	@PoliticaPrivacidadeUsuario bit,

    @HashSenhaUsuario varchar(MAX),
	@idToken int,

    @idUsuarioCriacao int = NULL,
    @DataCriacao datetime = NULL,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
	
	DECLARE @IdEmpresaGrupo INTEGER;
	DECLARE @NewId INTEGER;

	INSERT INTO [dbo].[EmpresaGrupo] ([NomeEmpresaGrupo], [idPlano]) VALUES (null, null)
	SELECT @IdEmpresaGrupo = SCOPE_IDENTITY()
	
	INSERT INTO [dbo].[Usuario] ([NomeUsuario], [EmailUsuario], [LoginUsuario], [CPFUsuario], [TelefoneUsuario], [HashSenhaUsuario], [IdEmpresaGrupo], [idUsuarioStatus], [idToken], [TermosUsoUsuario], [PoliticaPrivacidadeUsuario], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @NomeUsuario, @EmailUsuario, @LoginUsuario, @CPFUsuario, @TelefoneUsuario, @HashSenhaUsuario, @IdEmpresaGrupo, 2, @idToken, @TermosUsoUsuario, @PoliticaPrivacidadeUsuario, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao

	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioObter] 
    @idUsuario int
AS 

	SELECT [idUsuario], [NomeUsuario], [EmailUsuario], [LoginUsuario], [HashSenhaUsuario], [IdEmpresaGrupo], [idUsuarioStatus], [idToken] 
	FROM   [dbo].[Usuario] 
	WHERE  ([idUsuario] = @idUsuario OR @idUsuario IS NULL) 

GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioReceptorCompartilhamentoAlterar]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoAlterar] 
    @idUsuarioReceptorCompartilhamento int,
    @EmailUsuarioReceptorCompartilhamento varchar(150),
    @CPFUsuarioReceptorCompartilhamento char(14) = NULL,
    @NomeUsuarioReceptorCompartilhamento varchar(200),
    @idCompartilhamento int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 


	UPDATE [dbo].[UsuarioReceptorCompartilhamento]
	SET    [EmailUsuarioReceptorCompartilhamento] = @EmailUsuarioReceptorCompartilhamento, [CPFUsuarioReceptorCompartilhamento] = @CPFUsuarioReceptorCompartilhamento, [NomeUsuarioReceptorCompartilhamento] = @NomeUsuarioReceptorCompartilhamento, [idCompartilhamento] = @idCompartilhamento, [idUsuarioCriacao] = @idUsuarioCriacao, [DataCriacao] = @DataCriacao, [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idUsuarioReceptorCompartilhamento] = @idUsuarioReceptorCompartilhamento
	
	RETURN (@idUsuarioReceptorCompartilhamento)


GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioReceptorCompartilhamentoExcluir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoExcluir] 
    @idCompartilhamento int,
    @idUsuarioReceptorCompartilhamento int
AS 


	DELETE
	FROM   [dbo].[UsuarioReceptorCompartilhamento]
	WHERE  [idUsuarioReceptorCompartilhamento] = @idUsuarioReceptorCompartilhamento
	AND [idCompartilhamento] = @idCompartilhamento


GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioReceptorCompartilhamentoInserir]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoInserir] 
    @EmailUsuarioReceptorCompartilhamento varchar(150),
    @CPFUsuarioReceptorCompartilhamento char(14) = NULL,
    @NomeUsuarioReceptorCompartilhamento varchar(200),
    @idCompartilhamento int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 

	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[UsuarioReceptorCompartilhamento] ([EmailUsuarioReceptorCompartilhamento], [CPFUsuarioReceptorCompartilhamento], [NomeUsuarioReceptorCompartilhamento], [idCompartilhamento], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @EmailUsuarioReceptorCompartilhamento, @CPFUsuarioReceptorCompartilhamento, @NomeUsuarioReceptorCompartilhamento, @idCompartilhamento, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

GO
/****** Object:  StoredProcedure [dbo].[Proc_UsuarioReceptorCompartilhamentoObter]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoObter] 
    @idUsuarioReceptorCompartilhamento int
AS 


	SELECT [idUsuarioReceptorCompartilhamento], [EmailUsuarioReceptorCompartilhamento], [CPFUsuarioReceptorCompartilhamento], [NomeUsuarioReceptorCompartilhamento], [idCompartilhamento], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao] 
	FROM   [dbo].[UsuarioReceptorCompartilhamento] 
	WHERE  ([idUsuarioReceptorCompartilhamento] = @idUsuarioReceptorCompartilhamento OR @idUsuarioReceptorCompartilhamento IS NULL) 


GO
/****** Object:  StoredProcedure [dbo].[Proc_VerificarCompartilhamento]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_VerificarCompartilhamento] --[dbo].[Proc_VerificarCompartilhamento] 21, 101, 1
    @idUsuario int,
	@codigoGrupoInformacao int,
	@idEmpresaProvedora int
AS 
BEGIN
	SELECT UE.idUsuario
	FROM UsuarioEmpresa ue
	INNER JOIN EmpresaReceptora AS E ON E.idEmpresaReceptora = UE.IDEMPRESA
	INNER JOIN Compartilhamento AS C ON C.CNPJEmpresaReceptora = E.CNPJEmpresa and c.idEmpresaProvedora = @idEmpresaProvedora
	INNER JOIN GrupoInformacaoCompartilhamento AS G ON C.idCompartilhamento = G.idCompartilhamento
	WHERE (G.idGrupoInformacao = @codigoGrupoInformacao)
	AND UE.idUsuario = @idUsuario
END



   
GO
/****** Object:  StoredProcedure [dbo].[Proc_VerificarHeavyUser]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_VerificarHeavyUser] 
    @cnpj char(18)
AS 
BEGIN
	SELECT        
		r.idEmpresaReceptora
	FROM            
		EmpresaReceptora AS r 
	INNER JOIN EmpresaGrupo AS g ON g.idEmpresaGrupo = r.idEmpresaGrupo
	WHERE
		(r.CNPJEmpresa = @cnpj) 
	AND 
		(g.idPlano IS NOT NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_VerificarUsuarioExiste]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_VerificarUsuarioExiste] 
    @email varchar(max)
AS 
BEGIN
	SELECT [idUsuario] FROM [dbo].[Usuario] WHERE EmailUsuario = @email and idUsuarioStatus = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_VerificarUsuarioProprietarioEmpresa]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Proc_VerificarUsuarioProprietarioEmpresa]
    @idUsuario int,
	@idEmpresa int
AS 
BEGIN

	DECLARE @isTrue bit;

	IF exists (
		SELECT UE.idUsuario
		FROM UsuarioEmpresa UE
		WHERE idUsuario = @idUsuario
		AND idEmpresa = @idEmpresa
	)
		SET @isTrue = 1
	ELSE 
		SET @isTrue = 0

	RETURN (@isTrue)
END



GO
/****** Object:  StoredProcedure [dbo].[Proc_VerificaUsuarioAtivoNosEmails]    Script Date: 05/02/2019 12:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Proc_VerificaUsuarioAtivoNosEmails] 
    @Emails varchar(max),
	@CNPJEmpresa varchar(20)
AS 
BEGIN
	      SELECT COUNT(u.idUsuario) 
	        FROM Usuario u
	  INNER JOIN UsuarioEmpresa ue on ue.idUsuario = u.idUsuario
	  INNER JOIN EmpresaReceptora e on e.idEmpresaReceptora = ue.idEmpresa
	       WHERE u.EmailUsuario IN (@Emails) 
	         AND e.CNPJEmpresa = @CNPJEmpresa
	         AND u.idUsuarioStatus = 1
END

GO
