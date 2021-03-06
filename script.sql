USE [CURSOPB10_DB]
GO
/****** Object:  User [CURSOPBLGN]    Script Date: 02/04/2019 08:07:55 ******/
CREATE USER [CURSOPBLGN] FOR LOGIN [CURSOPBLGN] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [CURSOPBLGN]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [CURSOPBLGN]
GO
/****** Object:  Table [dbo].[pbcatcol]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatcol](
	[pbc_tnam] [varchar](129) NOT NULL,
	[pbc_tid] [int] NULL,
	[pbc_ownr] [varchar](129) NOT NULL,
	[pbc_cnam] [varchar](129) NOT NULL,
	[pbc_cid] [smallint] NULL,
	[pbc_labl] [varchar](254) NULL,
	[pbc_lpos] [smallint] NULL,
	[pbc_hdr] [varchar](254) NULL,
	[pbc_hpos] [smallint] NULL,
	[pbc_jtfy] [smallint] NULL,
	[pbc_mask] [varchar](31) NULL,
	[pbc_case] [smallint] NULL,
	[pbc_hght] [smallint] NULL,
	[pbc_wdth] [smallint] NULL,
	[pbc_ptrn] [varchar](31) NULL,
	[pbc_bmap] [varchar](1) NULL,
	[pbc_init] [varchar](254) NULL,
	[pbc_cmnt] [varchar](254) NULL,
	[pbc_edit] [varchar](31) NULL,
	[pbc_tag] [varchar](254) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pbcatedt]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatedt](
	[pbe_name] [varchar](30) NOT NULL,
	[pbe_edit] [varchar](254) NULL,
	[pbe_type] [smallint] NULL,
	[pbe_cntr] [int] NULL,
	[pbe_seqn] [smallint] NOT NULL,
	[pbe_flag] [int] NULL,
	[pbe_work] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pbcatfmt]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatfmt](
	[pbf_name] [varchar](30) NOT NULL,
	[pbf_frmt] [varchar](254) NULL,
	[pbf_type] [smallint] NULL,
	[pbf_cntr] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pbcattbl]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcattbl](
	[pbt_tnam] [varchar](129) NOT NULL,
	[pbt_tid] [int] NULL,
	[pbt_ownr] [varchar](129) NOT NULL,
	[pbd_fhgt] [smallint] NULL,
	[pbd_fwgt] [smallint] NULL,
	[pbd_fitl] [varchar](1) NULL,
	[pbd_funl] [varchar](1) NULL,
	[pbd_fchr] [smallint] NULL,
	[pbd_fptc] [smallint] NULL,
	[pbd_ffce] [varchar](18) NULL,
	[pbh_fhgt] [smallint] NULL,
	[pbh_fwgt] [smallint] NULL,
	[pbh_fitl] [varchar](1) NULL,
	[pbh_funl] [varchar](1) NULL,
	[pbh_fchr] [smallint] NULL,
	[pbh_fptc] [smallint] NULL,
	[pbh_ffce] [varchar](18) NULL,
	[pbl_fhgt] [smallint] NULL,
	[pbl_fwgt] [smallint] NULL,
	[pbl_fitl] [varchar](1) NULL,
	[pbl_funl] [varchar](1) NULL,
	[pbl_fchr] [smallint] NULL,
	[pbl_fptc] [smallint] NULL,
	[pbl_ffce] [varchar](18) NULL,
	[pbt_cmnt] [varchar](254) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pbcatvld]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatvld](
	[pbv_name] [varchar](30) NOT NULL,
	[pbv_vald] [varchar](254) NULL,
	[pbv_type] [smallint] NULL,
	[pbv_cntr] [int] NULL,
	[pbv_msg] [varchar](254) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_cargo]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_cargo](
	[cod_cargo] [numeric](5, 0) NOT NULL,
	[desc_cargo] [char](15) NOT NULL,
	[salario] [numeric](7, 2) NOT NULL,
 CONSTRAINT [cpk_cargo] PRIMARY KEY CLUSTERED 
(
	[cod_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_depto]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_depto](
	[cod_depto] [numeric](5, 0) NOT NULL,
	[desc_depto] [char](10) NOT NULL,
 CONSTRAINT [cpk_depto] PRIMARY KEY CLUSTERED 
(
	[cod_depto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_func]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_func](
	[matricula] [numeric](5, 0) NOT NULL,
	[nome] [char](30) NOT NULL,
	[endereco] [char](40) NOT NULL,
	[estado] [char](2) NOT NULL,
	[sexo] [char](1) NOT NULL,
	[data_nasc] [datetime] NOT NULL,
	[curso_super] [char](1) NOT NULL,
	[cod_depto] [numeric](5, 0) NOT NULL,
	[cod_cargo] [numeric](5, 0) NOT NULL,
 CONSTRAINT [cpk_func] PRIMARY KEY CLUSTERED 
(
	[matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_senha]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_senha](
	[matricula] [numeric](5, 0) NOT NULL,
	[usuario] [char](15) NOT NULL,
	[senha] [char](8) NOT NULL,
 CONSTRAINT [cpk_senha] PRIMARY KEY CLUSTERED 
(
	[matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_func]    Script Date: 02/04/2019 08:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[v_func] ( desc_depto, desc_cargo, salario, matricula, nome, data_nasc, curso_super ) AS SELECT tb_depto.desc_depto, tb_cargo.desc_cargo, tb_cargo.salario, tb_func.matricula, tb_func.nome, tb_func.data_nasc, tb_func.curso_super FROM tb_cargo, tb_depto, tb_func WHERE ( tb_func.cod_depto = tb_depto.cod_depto ) and ( tb_func.cod_cargo = tb_cargo.cod_cargo ) 
GO
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_depto', 325576198, N'dbo', N'cod_depto', 1, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_depto', 325576198, N'dbo', N'desc_depto', 2, NULL, 0, NULL, 0, 23, NULL, 0, 65, 417, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_cargo', 357576312, N'dbo', N'cod_cargo', 1, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_cargo', 357576312, N'dbo', N'desc_cargo', 2, NULL, 0, NULL, 0, 23, NULL, 0, 65, 577, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_cargo', 357576312, N'dbo', N'salario', 3, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 385, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'matricula', 1, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'nome', 2, NULL, 0, NULL, 0, 23, NULL, 0, 65, 1057, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'endereco', 3, NULL, 0, NULL, 0, 23, NULL, 0, 65, 1377, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'estado', 4, NULL, 0, NULL, 0, 23, NULL, 0, 65, 161, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'sexo', 5, NULL, 0, NULL, 0, 23, NULL, 0, 65, 129, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'data_nasc', 6, NULL, 0, NULL, 0, 23, NULL, 0, 65, 673, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'curso_super', 7, NULL, 0, NULL, 0, 23, NULL, 0, 65, 129, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'cod_depto', 8, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_func', 389576426, N'dbo', N'cod_cargo', 9, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_senha', 469576711, N'dbo', N'matricula', 1, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_senha', 469576711, N'dbo', N'usuario', 2, NULL, 0, NULL, 0, 23, NULL, 0, 65, 577, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'tb_senha', 469576711, N'dbo', N'senha', 3, NULL, 0, NULL, 0, 23, NULL, 0, 65, 353, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'desc_depto', 1, NULL, 0, NULL, 0, 23, NULL, 0, 65, 417, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'desc_cargo', 2, NULL, 0, NULL, 0, 23, NULL, 0, 65, 577, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'salario', 3, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 385, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'matricula', 4, NULL, 0, NULL, 0, 24, N'[General]', 0, 65, 321, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'nome', 5, NULL, 0, NULL, 0, 23, NULL, 0, 65, 1057, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'data_nasc', 6, NULL, 0, NULL, 0, 23, NULL, 0, 65, 673, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatcol] ([pbc_tnam], [pbc_tid], [pbc_ownr], [pbc_cnam], [pbc_cid], [pbc_labl], [pbc_lpos], [pbc_hdr], [pbc_hpos], [pbc_jtfy], [pbc_mask], [pbc_case], [pbc_hght], [pbc_wdth], [pbc_ptrn], [pbc_bmap], [pbc_init], [pbc_cmnt], [pbc_edit], [pbc_tag]) VALUES (N'v_func', 517576882, N'dbo', N'curso_super', 7, NULL, 0, NULL, 0, 23, NULL, 0, 65, 129, NULL, N'N', NULL, NULL, NULL, NULL)
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'#', N'#', 9, 0, 1, 3, N'1')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'#', N'#', 9, 0, 1, 3, N'1')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'#', N'#', 9, 0, 1, 3, N'0')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'M', N'M', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'M', N'M', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'J', N'J', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'J', N'J', 9, 0, 1, 3, N'2')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'H', N'H', 9, 0, 1, 3, N'3')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'H', N'H', 9, 0, 1, 3, N'3')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'H', N'H', 9, 0, 1, 3, N'3')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'M', N'M', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'M', N'M', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'J', N'J', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'J', N'J', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatedt] ([pbe_name], [pbe_edit], [pbe_type], [pbe_cntr], [pbe_seqn], [pbe_flag], [pbe_work]) VALUES (N'D', N'D', 9, 0, 1, 3, N'4')
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'[', N'[', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'0', N'0', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'0', N'0', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'#', N'#', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'#', N'#', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'$', N'$', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'$', N'$', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'$', N'$', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'$', N'$', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'0', N'0', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'0', N'0', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'0', N'0', 81, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'm', N'm', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'd', N'd', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'd', N'd', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'm', N'm', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'h', N'h', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'h', N'h', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'h', N'h', 84, 0)
INSERT [dbo].[pbcatfmt] ([pbf_name], [pbf_frmt], [pbf_type], [pbf_cntr]) VALUES (N'm', N'm', 84, 0)
INSERT [dbo].[pbcattbl] ([pbt_tnam], [pbt_tid], [pbt_ownr], [pbd_fhgt], [pbd_fwgt], [pbd_fitl], [pbd_funl], [pbd_fchr], [pbd_fptc], [pbd_ffce], [pbh_fhgt], [pbh_fwgt], [pbh_fitl], [pbh_funl], [pbh_fchr], [pbh_fptc], [pbh_ffce], [pbl_fhgt], [pbl_fwgt], [pbl_fitl], [pbl_funl], [pbl_fchr], [pbl_fptc], [pbl_ffce], [pbt_cmnt]) VALUES (N'tb_depto', 325576198, N'dbo', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', N'')
INSERT [dbo].[pbcattbl] ([pbt_tnam], [pbt_tid], [pbt_ownr], [pbd_fhgt], [pbd_fwgt], [pbd_fitl], [pbd_funl], [pbd_fchr], [pbd_fptc], [pbd_ffce], [pbh_fhgt], [pbh_fwgt], [pbh_fitl], [pbh_funl], [pbh_fchr], [pbh_fptc], [pbh_ffce], [pbl_fhgt], [pbl_fwgt], [pbl_fitl], [pbl_funl], [pbl_fchr], [pbl_fptc], [pbl_ffce], [pbt_cmnt]) VALUES (N'tb_cargo', 357576312, N'dbo', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', N'')
INSERT [dbo].[pbcattbl] ([pbt_tnam], [pbt_tid], [pbt_ownr], [pbd_fhgt], [pbd_fwgt], [pbd_fitl], [pbd_funl], [pbd_fchr], [pbd_fptc], [pbd_ffce], [pbh_fhgt], [pbh_fwgt], [pbh_fitl], [pbh_funl], [pbh_fchr], [pbh_fptc], [pbh_ffce], [pbl_fhgt], [pbl_fwgt], [pbl_fitl], [pbl_funl], [pbl_fchr], [pbl_fptc], [pbl_ffce], [pbt_cmnt]) VALUES (N'tb_func', 389576426, N'dbo', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', N'')
INSERT [dbo].[pbcattbl] ([pbt_tnam], [pbt_tid], [pbt_ownr], [pbd_fhgt], [pbd_fwgt], [pbd_fitl], [pbd_funl], [pbd_fchr], [pbd_fptc], [pbd_ffce], [pbh_fhgt], [pbh_fwgt], [pbh_fitl], [pbh_funl], [pbh_fchr], [pbh_fptc], [pbh_ffce], [pbl_fhgt], [pbl_fwgt], [pbl_fitl], [pbl_funl], [pbl_fchr], [pbl_fptc], [pbl_ffce], [pbt_cmnt]) VALUES (N'tb_senha', 469576711, N'dbo', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', N'')
INSERT [dbo].[pbcattbl] ([pbt_tnam], [pbt_tid], [pbt_ownr], [pbd_fhgt], [pbd_fwgt], [pbd_fitl], [pbd_funl], [pbd_fchr], [pbd_fptc], [pbd_ffce], [pbh_fhgt], [pbh_fwgt], [pbh_fitl], [pbh_funl], [pbh_fchr], [pbh_fptc], [pbh_ffce], [pbl_fhgt], [pbl_fwgt], [pbl_fitl], [pbl_funl], [pbl_fchr], [pbl_fptc], [pbl_ffce], [pbt_cmnt]) VALUES (N'v_func', 517576882, N'dbo', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', -10, 400, N'N', N'N', 0, 34, N'Tahoma', N'')
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(10 AS Numeric(5, 0)), N'DIRETOR        ', CAST(10000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(20 AS Numeric(5, 0)), N'GERENTE        ', CAST(8000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(30 AS Numeric(5, 0)), N'SUPERVISOR     ', CAST(7000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(40 AS Numeric(5, 0)), N'PROGRAMADOR    ', CAST(6000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(50 AS Numeric(5, 0)), N'VENDEDOR       ', CAST(5000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(60 AS Numeric(5, 0)), N'COMPRADOR      ', CAST(5000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_cargo] ([cod_cargo], [desc_cargo], [salario]) VALUES (CAST(70 AS Numeric(5, 0)), N'OPERADOR       ', CAST(4000.00 AS Numeric(7, 2)))
INSERT [dbo].[tb_depto] ([cod_depto], [desc_depto]) VALUES (CAST(1 AS Numeric(5, 0)), N'RH        ')
INSERT [dbo].[tb_depto] ([cod_depto], [desc_depto]) VALUES (CAST(2 AS Numeric(5, 0)), N'CPD       ')
INSERT [dbo].[tb_depto] ([cod_depto], [desc_depto]) VALUES (CAST(3 AS Numeric(5, 0)), N'DIRETORIA ')
INSERT [dbo].[tb_depto] ([cod_depto], [desc_depto]) VALUES (CAST(4 AS Numeric(5, 0)), N'COMPRAS   ')
INSERT [dbo].[tb_depto] ([cod_depto], [desc_depto]) VALUES (CAST(5 AS Numeric(5, 0)), N'VENDAS    ')
INSERT [dbo].[tb_depto] ([cod_depto], [desc_depto]) VALUES (CAST(6 AS Numeric(5, 0)), N'MARKETING ')
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(100 AS Numeric(5, 0)), N'JOÃO JOSÉ DA SILVA            ', N'RUA AURORA, 20                          ', N'RJ', N'M', CAST(N'1960-10-10 00:00:00.000' AS DateTime), N'S', CAST(1 AS Numeric(5, 0)), CAST(20 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(200 AS Numeric(5, 0)), N'MARÍLIA MARQUES               ', N'RUA IGUATEMI, 56                        ', N'RJ', N'F', CAST(N'1964-06-23 00:00:00.000' AS DateTime), N'N', CAST(4 AS Numeric(5, 0)), CAST(60 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(205 AS Numeric(5, 0)), N'FERNANDO JOSÉ                 ', N'RUA BOTUCATÚ, 109                       ', N'RJ', N'M', CAST(N'1966-12-10 00:00:00.000' AS DateTime), N'S', CAST(3 AS Numeric(5, 0)), CAST(10 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(225 AS Numeric(5, 0)), N'PAULO CESAR OLIVEIRA          ', N'RUA UNIÃO, 37                           ', N'RJ', N'M', CAST(N'1967-11-20 00:00:00.000' AS DateTime), N'S', CAST(2 AS Numeric(5, 0)), CAST(70 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(230 AS Numeric(5, 0)), N'ADRIANA ARÊAS                 ', N'RUA CONDESSA, 166                       ', N'RJ', N'F', CAST(N'1967-07-09 00:00:00.000' AS DateTime), N'S', CAST(1 AS Numeric(5, 0)), CAST(30 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(272 AS Numeric(5, 0)), N'VERA LUCIA ANDRADE            ', N'RUA BARÃO, 23                           ', N'RJ', N'F', CAST(N'1958-07-24 00:00:00.000' AS DateTime), N'S', CAST(1 AS Numeric(5, 0)), CAST(70 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(300 AS Numeric(5, 0)), N'FERNANDO BUARQUE              ', N'RUA GUARAPUAVA, 150                     ', N'RJ', N'M', CAST(N'1970-06-25 00:00:00.000' AS DateTime), N'N', CAST(3 AS Numeric(5, 0)), CAST(60 AS Numeric(5, 0)))
INSERT [dbo].[tb_func] ([matricula], [nome], [endereco], [estado], [sexo], [data_nasc], [curso_super], [cod_depto], [cod_cargo]) VALUES (CAST(312 AS Numeric(5, 0)), N'ANA BEATRIZ OLIVEIRA          ', N'RUA CONDE DE BONFIM, 222                ', N'RJ', N'F', CAST(N'1965-09-10 00:00:00.000' AS DateTime), N'S', CAST(2 AS Numeric(5, 0)), CAST(30 AS Numeric(5, 0)))
INSERT [dbo].[tb_senha] ([matricula], [usuario], [senha]) VALUES (CAST(100 AS Numeric(5, 0)), N'JOÃO           ', N'SILVA   ')
INSERT [dbo].[tb_senha] ([matricula], [usuario], [senha]) VALUES (CAST(225 AS Numeric(5, 0)), N'PAULO          ', N'PC      ')
INSERT [dbo].[tb_senha] ([matricula], [usuario], [senha]) VALUES (CAST(312 AS Numeric(5, 0)), N'ANA            ', N'ENGA    ')
ALTER TABLE [dbo].[tb_func]  WITH CHECK ADD  CONSTRAINT [cfk_func_cargo] FOREIGN KEY([cod_cargo])
REFERENCES [dbo].[tb_cargo] ([cod_cargo])
GO
ALTER TABLE [dbo].[tb_func] CHECK CONSTRAINT [cfk_func_cargo]
GO
ALTER TABLE [dbo].[tb_func]  WITH CHECK ADD  CONSTRAINT [cfk_func_depto] FOREIGN KEY([cod_depto])
REFERENCES [dbo].[tb_depto] ([cod_depto])
GO
ALTER TABLE [dbo].[tb_func] CHECK CONSTRAINT [cfk_func_depto]
GO
ALTER TABLE [dbo].[tb_senha]  WITH CHECK ADD  CONSTRAINT [cfk_senha_func] FOREIGN KEY([matricula])
REFERENCES [dbo].[tb_func] ([matricula])
GO
ALTER TABLE [dbo].[tb_senha] CHECK CONSTRAINT [cfk_senha_func]
GO
