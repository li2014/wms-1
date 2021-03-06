USE [wms]
GO
/****** Object:  Table [dbo].[wms_application_state]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_application_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_application_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_category]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NULL,
	[category_parent] [int] NULL,
 CONSTRAINT [PK_wms_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_check]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_check](
	[check_id] [varchar](50) NOT NULL,
	[check_warehouse] [int] NULL,
	[check_creator] [int] NULL,
	[check_acceptor] [int] NULL,
	[check_create_time] [datetime] NULL,
	[check_accept_time] [datetime] NULL,
	[check_description] [varchar](max) NULL,
	[check_state] [int] NULL,
 CONSTRAINT [PK_wms_check] PRIMARY KEY CLUSTERED 
(
	[check_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_check_product_shelf]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_check_product_shelf](
	[cps_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[shelf_id] [int] NULL,
	[check_id] [varchar](50) NULL,
	[cps_number] [int] NULL,
 CONSTRAINT [PK_wms_check_product_shelf] PRIMARY KEY CLUSTERED 
(
	[cps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_check_state]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_check_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_check_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_condition]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_condition](
	[condition_id] [int] IDENTITY(1,1) NOT NULL,
	[condition_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_condition] PRIMARY KEY CLUSTERED 
(
	[condition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_dispatch]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_dispatch](
	[dispatch_id] [varchar](50) NOT NULL,
	[dispatch_from] [int] NULL,
	[dispatch_to] [int] NULL,
	[dispatch_create_time] [datetime] NULL,
	[dispatch_accept_time] [datetime] NULL,
	[dispatch_finish_time] [datetime] NULL,
	[dispatch_creator] [int] NULL,
	[dispatch_accpetor] [int] NULL,
	[dispatch_finisher] [int] NULL,
	[dispatch_description] [varchar](max) NULL,
	[dispatch_state] [int] NULL,
 CONSTRAINT [PK_wms_dispatch] PRIMARY KEY CLUSTERED 
(
	[dispatch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_dispatch_product_shelf]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_dispatch_product_shelf](
	[dps_id] [int] IDENTITY(1,1) NOT NULL,
	[dispatch_id] [varchar](50) NULL,
	[product_id] [int] NULL,
	[shelf_id] [int] NULL,
	[dps_number] [int] NULL,
	[dps_cost] [decimal](18, 2) NULL,
 CONSTRAINT [PK_wms_dispatch_product_shelf] PRIMARY KEY CLUSTERED 
(
	[dps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_dispatch_state]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_dispatch_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_dispatch_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_in_application]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_in_application](
	[application_id] [varchar](50) NOT NULL,
	[application_warehouse] [int] NULL,
	[application_time] [datetime] NULL,
	[application_creator] [int] NULL,
	[application_accept_time] [datetime] NULL,
	[application_acceptor] [int] NULL,
	[application_description] [varchar](max) NULL,
	[application_state] [int] NULL,
 CONSTRAINT [PK_wms_in_application] PRIMARY KEY CLUSTERED 
(
	[application_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_in_application_product]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_in_application_product](
	[ap_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[shelf_id] [int] NULL,
	[app_id] [varchar](50) NULL,
	[ap_number] [int] NULL,
 CONSTRAINT [PK_wms_in_application_product] PRIMARY KEY CLUSTERED 
(
	[ap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_order]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_order](
	[order_id] [varchar](50) NOT NULL,
	[order_date] [datetime] NULL,
	[order_dead_line] [datetime] NULL,
	[order_warehouse] [int] NULL,
	[order_charger] [int] NULL,
	[order_description] [varchar](max) NULL,
	[order_state] [int] NULL,
 CONSTRAINT [PK_wms_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_order_line]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_order_line](
	[line_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[supplier_id] [int] NULL,
	[line_count] [int] NULL,
	[order_id] [varchar](50) NULL,
 CONSTRAINT [PK_wms_order_line] PRIMARY KEY CLUSTERED 
(
	[line_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_order_state]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_order_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_order_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_out_application]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_out_application](
	[application_id] [varchar](50) NOT NULL,
	[application_warehouse] [int] NULL,
	[application_time] [datetime] NULL,
	[application_creator] [int] NULL,
	[application_accept_time] [datetime] NULL,
	[application_acceptor] [int] NULL,
	[application_description] [varchar](max) NULL,
	[application_state] [int] NULL,
 CONSTRAINT [PK_wms_out_application] PRIMARY KEY CLUSTERED 
(
	[application_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_out_application_product]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_out_application_product](
	[ap_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[shelf_id] [int] NULL,
	[app_id] [varchar](50) NULL,
	[ap_number] [int] NULL,
 CONSTRAINT [PK_wms_out_application_product] PRIMARY KEY CLUSTERED 
(
	[ap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_product]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](50) NULL,
	[product_code] [varchar](50) NULL,
	[product_category] [int] NULL,
	[product_description] [varchar](max) NULL,
	[product_image] [varchar](50) NULL,
	[product_standard] [varchar](50) NULL,
	[product_unit] [varchar](50) NULL,
 CONSTRAINT [PK_wms_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_product_condition]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_product_condition](
	[pc_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[condition_id] [int] NULL,
 CONSTRAINT [PK_wms_product_condition] PRIMARY KEY CLUSTERED 
(
	[pc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_product_shelf]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_product_shelf](
	[ps_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[shelf_id] [int] NULL,
	[ps_number] [int] NULL,
 CONSTRAINT [PK_wms_product_shelf] PRIMARY KEY CLUSTERED 
(
	[ps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_product_supplier]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_product_supplier](
	[ps_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[ps_in_price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_wms_product_supplier] PRIMARY KEY CLUSTERED 
(
	[ps_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_shelf]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_shelf](
	[shelf_id] [int] IDENTITY(1,1) NOT NULL,
	[shelf_name] [varchar](50) NULL,
	[shelf_capacity] [int] NULL,
	[storage_id] [int] NULL,
 CONSTRAINT [PK_wms_shelf] PRIMARY KEY CLUSTERED 
(
	[shelf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_storage]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_storage](
	[storage_id] [int] IDENTITY(1,1) NOT NULL,
	[storage_name] [varchar](50) NULL,
	[storage_charger] [int] NULL,
	[warehouse_id] [int] NULL,
 CONSTRAINT [PK_wms_storage] PRIMARY KEY CLUSTERED 
(
	[storage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_storage_condition]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_storage_condition](
	[sc_id] [int] IDENTITY(1,1) NOT NULL,
	[storage_id] [int] NULL,
	[condition_id] [int] NULL,
 CONSTRAINT [PK_wms_storage_condition] PRIMARY KEY CLUSTERED 
(
	[sc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_supplier]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_supplier](
	[supplier_id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_name] [varchar](50) NULL,
	[supplier_contact_person] [varchar](50) NULL,
	[supplier_address] [varchar](max) NULL,
	[supplier_phone] [varchar](50) NULL,
 CONSTRAINT [PK_wms_supplier] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_user]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NULL,
	[user_pswd] [varchar](50) NULL,
	[user_type] [int] NULL,
	[user_email] [varchar](50) NULL,
	[user_cellphone] [varchar](50) NULL,
	[user_address] [varchar](max) NULL,
	[user_real_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_user_type]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_user_type](
	[user_type_id] [int] IDENTITY(1,1) NOT NULL,
	[user_type_name] [varchar](50) NULL,
 CONSTRAINT [PK_wms_user_type] PRIMARY KEY CLUSTERED 
(
	[user_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wms_warehouse]    Script Date: 2017/6/28 2:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_warehouse](
	[warehouse_id] [int] IDENTITY(1,1) NOT NULL,
	[warehouse_name] [varchar](50) NULL,
	[warehouse_address] [varchar](max) NULL,
	[warehouse_location] [varchar](50) NULL,
	[warehouse_charger] [int] NULL,
 CONSTRAINT [PK_wms_warehouse] PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[wms_application_state] ON 

INSERT [dbo].[wms_application_state] ([state_id], [state_name]) VALUES (1, N'等待审核')
INSERT [dbo].[wms_application_state] ([state_id], [state_name]) VALUES (2, N'操作完成')
INSERT [dbo].[wms_application_state] ([state_id], [state_name]) VALUES (3, N'审核失败')
SET IDENTITY_INSERT [dbo].[wms_application_state] OFF
SET IDENTITY_INSERT [dbo].[wms_category] ON 

INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (1, N'食品原料', NULL)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (2, N'建筑原料', NULL)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (3, N'化工原料', NULL)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (4, N'机械配件', NULL)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (5, N'成品产品', NULL)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (6, N'农产品原料', 1)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (7, N'畜产品原料', 1)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (8, N'水产品原料', 1)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (9, N'林产品原料', 1)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (10, N'其它食品原料', 1)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (11, N'金属材料', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (12, N'水泥/石膏', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (13, N'木材/板材', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (14, N'焊接材料', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (15, N'砂石/砖瓦', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (16, N'玻璃', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (17, N'陶瓷', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (18, N'其它建筑原料', 2)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (19, N'油漆/涂料', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (20, N'橡胶/塑料', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (21, N'石油/燃料', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (22, N'强酸/强碱', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (23, N'农药/毒害物', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (24, N'医药原料', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (25, N'其它化工原料', 3)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (26, N'钉子', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (27, N'轴承/铰链', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (28, N'螺丝/垫圈', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (29, N'钢丝/铁丝', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (30, N'五金/工具', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (31, N'齿轮', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (32, N'其它机械配件', 4)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (33, N'食品/零食', 5)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (34, N'饮料/水', 5)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (35, N'家具', 5)
INSERT [dbo].[wms_category] ([category_id], [category_name], [category_parent]) VALUES (36, N'药品', 5)
SET IDENTITY_INSERT [dbo].[wms_category] OFF
SET IDENTITY_INSERT [dbo].[wms_check_state] ON 

INSERT [dbo].[wms_check_state] ([state_id], [state_name]) VALUES (1, N'等待审核')
INSERT [dbo].[wms_check_state] ([state_id], [state_name]) VALUES (2, N'审核通过')
INSERT [dbo].[wms_check_state] ([state_id], [state_name]) VALUES (3, N'审核驳回')
SET IDENTITY_INSERT [dbo].[wms_check_state] OFF
SET IDENTITY_INSERT [dbo].[wms_condition] ON 

INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (1, N'通风')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (2, N'干燥')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (3, N'阴凉')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (4, N'避光')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (5, N'冷藏')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (6, N'不可堆叠')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (7, N'防火')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (8, N'防爆')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (9, N'隔绝空气')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (10, N'防尘')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (11, N'清洁')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (12, N'切勿倒置')
INSERT [dbo].[wms_condition] ([condition_id], [condition_name]) VALUES (13, N'切勿撞击')
SET IDENTITY_INSERT [dbo].[wms_condition] OFF
SET IDENTITY_INSERT [dbo].[wms_dispatch_state] ON 

INSERT [dbo].[wms_dispatch_state] ([state_id], [state_name]) VALUES (1, N'等待审核')
INSERT [dbo].[wms_dispatch_state] ([state_id], [state_name]) VALUES (2, N'审核驳回')
INSERT [dbo].[wms_dispatch_state] ([state_id], [state_name]) VALUES (3, N'等待确认')
INSERT [dbo].[wms_dispatch_state] ([state_id], [state_name]) VALUES (4, N'确认通过')
INSERT [dbo].[wms_dispatch_state] ([state_id], [state_name]) VALUES (5, N'确认驳回')
SET IDENTITY_INSERT [dbo].[wms_dispatch_state] OFF
INSERT [dbo].[wms_in_application] ([application_id], [application_warehouse], [application_time], [application_creator], [application_accept_time], [application_acceptor], [application_description], [application_state]) VALUES (N'WMS-IN-20170601-0001', 1, CAST(N'2017-06-01T12:23:32.000' AS DateTime), 1, CAST(N'2017-06-03T14:00:56.000' AS DateTime), 2, N'新购买一批建材', 2)
INSERT [dbo].[wms_in_application] ([application_id], [application_warehouse], [application_time], [application_creator], [application_accept_time], [application_acceptor], [application_description], [application_state]) VALUES (N'WMS-IN-20170605-0001', 1, CAST(N'2017-06-05T09:25:25.000' AS DateTime), 4, NULL, NULL, N'又要购买一批建材', 1)
SET IDENTITY_INSERT [dbo].[wms_in_application_product] ON 

INSERT [dbo].[wms_in_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (1, 1, 1, N'WMS-IN-20170601-0001', 50)
INSERT [dbo].[wms_in_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (2, 2, 2, N'WMS-IN-20170601-0001', 60)
INSERT [dbo].[wms_in_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (3, 1, 2, N'WMS-IN-20170601-0001', 25)
INSERT [dbo].[wms_in_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (4, 1, 3, N'WMS-IN-20170605-0001', 100)
INSERT [dbo].[wms_in_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (5, 2, 1, N'WMS-IN-20170605-0001', 50)
SET IDENTITY_INSERT [dbo].[wms_in_application_product] OFF
SET IDENTITY_INSERT [dbo].[wms_order_state] ON 

INSERT [dbo].[wms_order_state] ([state_id], [state_name]) VALUES (1, N'等待审核')
INSERT [dbo].[wms_order_state] ([state_id], [state_name]) VALUES (2, N'审核通过')
INSERT [dbo].[wms_order_state] ([state_id], [state_name]) VALUES (3, N'审核驳回')
INSERT [dbo].[wms_order_state] ([state_id], [state_name]) VALUES (4, N'等待采购')
INSERT [dbo].[wms_order_state] ([state_id], [state_name]) VALUES (5, N'采购成功')
INSERT [dbo].[wms_order_state] ([state_id], [state_name]) VALUES (6, N'采购失败')
SET IDENTITY_INSERT [dbo].[wms_order_state] OFF
INSERT [dbo].[wms_out_application] ([application_id], [application_warehouse], [application_time], [application_creator], [application_accept_time], [application_acceptor], [application_description], [application_state]) VALUES (N'WMS-OUT-20170602-0001', 2, CAST(N'2017-06-02T11:27:53.000' AS DateTime), 2, CAST(N'2017-06-08T10:04:45.000' AS DateTime), 3, N'调度出一批建材', 2)
INSERT [dbo].[wms_out_application] ([application_id], [application_warehouse], [application_time], [application_creator], [application_accept_time], [application_acceptor], [application_description], [application_state]) VALUES (N'WMS-OUT-20170607-0001', 1, CAST(N'2017-06-07T15:55:00.000' AS DateTime), 5, CAST(N'2017-06-11T17:00:00.000' AS DateTime), 1, N'送往垃圾场', 2)
SET IDENTITY_INSERT [dbo].[wms_out_application_product] ON 

INSERT [dbo].[wms_out_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (1, 1, 6, N'WMS-OUT-20170602-0001', 78)
INSERT [dbo].[wms_out_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (2, 2, 6, N'WMS-OUT-20170602-0001', 24)
INSERT [dbo].[wms_out_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (3, 1, 5, N'WMS-OUT-20170602-0001', 13)
INSERT [dbo].[wms_out_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (4, 1, 5, N'WMS-OUT-20170607-0001', 33)
INSERT [dbo].[wms_out_application_product] ([ap_id], [product_id], [shelf_id], [app_id], [ap_number]) VALUES (5, 2, 6, N'WMS-OUT-20170607-0001', 22)
SET IDENTITY_INSERT [dbo].[wms_out_application_product] OFF
SET IDENTITY_INSERT [dbo].[wms_product] ON 

INSERT [dbo].[wms_product] ([product_id], [product_name], [product_code], [product_category], [product_description], [product_image], [product_standard], [product_unit]) VALUES (1, N'半水纤维石膏粉', N'JC-SNSGF-1023', 12, N'半水纤维石膏粉是半水石膏粉的一种，属于高档石膏粉。主要用于高档建材（如高档石膏线 腻子粉等），高档工业原料（如高档陶瓷模型粉等）。', N'no_image.jpg', N'25KG', N'袋')
INSERT [dbo].[wms_product] ([product_id], [product_name], [product_code], [product_category], [product_description], [product_image], [product_standard], [product_unit]) VALUES (2, N'千年野生金丝楠木木板', N'JC-MBBC-4312', 13, N'金丝楠是中国特有的珍贵木材。代表物种楠木（学名： S. Lee）。大乔木，高达30余米，树干通直。', N'no_image.jpg', N'100cm*100cm', N'块')
SET IDENTITY_INSERT [dbo].[wms_product] OFF
SET IDENTITY_INSERT [dbo].[wms_product_condition] ON 

INSERT [dbo].[wms_product_condition] ([pc_id], [product_id], [condition_id]) VALUES (1, 1, 2)
INSERT [dbo].[wms_product_condition] ([pc_id], [product_id], [condition_id]) VALUES (2, 1, 4)
INSERT [dbo].[wms_product_condition] ([pc_id], [product_id], [condition_id]) VALUES (3, 2, 2)
INSERT [dbo].[wms_product_condition] ([pc_id], [product_id], [condition_id]) VALUES (4, 2, 7)
INSERT [dbo].[wms_product_condition] ([pc_id], [product_id], [condition_id]) VALUES (5, 2, 4)
SET IDENTITY_INSERT [dbo].[wms_product_condition] OFF
SET IDENTITY_INSERT [dbo].[wms_product_shelf] ON 

INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (1, 1, 1, 200)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (2, 1, 2, 50)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (3, 1, 3, 56)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (4, 1, 5, 250)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (5, 1, 6, 1000)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (6, 2, 3, 500)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (7, 2, 4, 2)
INSERT [dbo].[wms_product_shelf] ([ps_id], [product_id], [shelf_id], [ps_number]) VALUES (8, 2, 6, 233)
SET IDENTITY_INSERT [dbo].[wms_product_shelf] OFF
SET IDENTITY_INSERT [dbo].[wms_product_supplier] ON 

INSERT [dbo].[wms_product_supplier] ([ps_id], [product_id], [supplier_id], [ps_in_price]) VALUES (1, 1, 1, CAST(23.50 AS Decimal(18, 2)))
INSERT [dbo].[wms_product_supplier] ([ps_id], [product_id], [supplier_id], [ps_in_price]) VALUES (2, 1, 2, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[wms_product_supplier] ([ps_id], [product_id], [supplier_id], [ps_in_price]) VALUES (3, 2, 2, CAST(6666.66 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[wms_product_supplier] OFF
SET IDENTITY_INSERT [dbo].[wms_shelf] ON 

INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (1, N'DP-012', 10000, 1)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (2, N'DQ-032', 5000, 1)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (3, N'YE-097', 8000, 2)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (4, N'QW-111', 6000, 2)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (5, N'HT-004', 20000, 3)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (6, N'QW-001', 100, 3)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (7, N'RF-046', 1000, 4)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (8, N'UO-033', 3000, 4)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (9, N'PP-999', 6666, 5)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (10, N'VY-904', 5000, 5)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (12, N'PD-746', 15000, 6)
INSERT [dbo].[wms_shelf] ([shelf_id], [shelf_name], [shelf_capacity], [storage_id]) VALUES (13, N'DR-048', 4000, 6)
SET IDENTITY_INSERT [dbo].[wms_shelf] OFF
SET IDENTITY_INSERT [dbo].[wms_storage] ON 

INSERT [dbo].[wms_storage] ([storage_id], [storage_name], [storage_charger], [warehouse_id]) VALUES (1, N'A1区', 1, 1)
INSERT [dbo].[wms_storage] ([storage_id], [storage_name], [storage_charger], [warehouse_id]) VALUES (2, N'A2区', 1, 1)
INSERT [dbo].[wms_storage] ([storage_id], [storage_name], [storage_charger], [warehouse_id]) VALUES (3, N'B12区', 2, 2)
INSERT [dbo].[wms_storage] ([storage_id], [storage_name], [storage_charger], [warehouse_id]) VALUES (4, N'B21区', 2, 2)
INSERT [dbo].[wms_storage] ([storage_id], [storage_name], [storage_charger], [warehouse_id]) VALUES (5, N'XC45区', 3, 3)
INSERT [dbo].[wms_storage] ([storage_id], [storage_name], [storage_charger], [warehouse_id]) VALUES (6, N'XD31区', 3, 3)
SET IDENTITY_INSERT [dbo].[wms_storage] OFF
SET IDENTITY_INSERT [dbo].[wms_supplier] ON 

INSERT [dbo].[wms_supplier] ([supplier_id], [supplier_name], [supplier_contact_person], [supplier_address], [supplier_phone]) VALUES (1, N'北京万马奔腾建材有限公司', N'张三丰', N'北京市海淀区清华南路18号', N'12523563323')
INSERT [dbo].[wms_supplier] ([supplier_id], [supplier_name], [supplier_contact_person], [supplier_address], [supplier_phone]) VALUES (2, N'河北祖国万岁建材批发市场', N'李四光', N'河北雄县不知名角落', N'43423423433')
SET IDENTITY_INSERT [dbo].[wms_supplier] OFF
SET IDENTITY_INSERT [dbo].[wms_user] ON 

INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (1, N'sanalar', N'e10adc3949ba59abbe56e057f20f883e', 1, N'sanalar@163.com', N'1234567890', N'中国农业大学东校区', N'詹娜娜')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (2, N'jy', N'e10adc3949ba59abbe56e057f20f883e', 1, N'jy@sanalar.pub', N'1234455675', N'中国农业大学东校区', N'巨颖')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (3, N'cool', N'e10adc3949ba59abbe56e057f20f883e', 1, N'cool@sanalar.pub', N'4353454544', N'中国农业大学东校区', N'苏桂清')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (4, N'ly', N'e10adc3949ba59abbe56e057f20f883e', 2, N'ly@sanalar.pub', N'3242343434', N'北京大学', N'李毅')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (5, N'haoaiguo', N'e10adc3949ba59abbe56e057f20f883e', 2, N'haoaiguo@sanalar.pub', N'6543246745', N'清华大学', N'郝爱国')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (6, N'xiaonai', N'e10adc3949ba59abbe56e057f20f883e', 3, N'xiaonai@sanalar.pub', N'1278584353', N'帝都大学', N'肖奈')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (7, N'moyixi', N'e10adc3949ba59abbe56e057f20f883e', 4, N'moyixi@sanalar.pub', N'9078674556', N'魏公村大西街', N'莫一兮')
INSERT [dbo].[wms_user] ([user_id], [user_name], [user_pswd], [user_type], [user_email], [user_cellphone], [user_address], [user_real_name]) VALUES (8, N'morongfu', N'e10adc3949ba59abbe56e057f20f883e', 5, N'murongfu@sanalar.pub', N'7676453443', N'天龙八部剧组', N'慕容复')
SET IDENTITY_INSERT [dbo].[wms_user] OFF
SET IDENTITY_INSERT [dbo].[wms_user_type] ON 

INSERT [dbo].[wms_user_type] ([user_type_id], [user_type_name]) VALUES (1, N'总经理')
INSERT [dbo].[wms_user_type] ([user_type_id], [user_type_name]) VALUES (2, N'仓库管理员')
INSERT [dbo].[wms_user_type] ([user_type_id], [user_type_name]) VALUES (3, N'库位管理员')
INSERT [dbo].[wms_user_type] ([user_type_id], [user_type_name]) VALUES (4, N'入库组长')
INSERT [dbo].[wms_user_type] ([user_type_id], [user_type_name]) VALUES (5, N'出库组长')
SET IDENTITY_INSERT [dbo].[wms_user_type] OFF
SET IDENTITY_INSERT [dbo].[wms_warehouse] ON 

INSERT [dbo].[wms_warehouse] ([warehouse_id], [warehouse_name], [warehouse_address], [warehouse_location], [warehouse_charger]) VALUES (1, N'北京海淀仓库', N'北京市海淀区清华东路17号', N'北京', 1)
INSERT [dbo].[wms_warehouse] ([warehouse_id], [warehouse_name], [warehouse_address], [warehouse_location], [warehouse_charger]) VALUES (2, N'天津武清仓库', N'天津市武清县', N'天津', 2)
INSERT [dbo].[wms_warehouse] ([warehouse_id], [warehouse_name], [warehouse_address], [warehouse_location], [warehouse_charger]) VALUES (3, N'河北雄安仓库', N'河北省雄安新区', N'河北', 3)
SET IDENTITY_INSERT [dbo].[wms_warehouse] OFF
ALTER TABLE [dbo].[wms_category]  WITH CHECK ADD  CONSTRAINT [FK_wms_category_wms_category] FOREIGN KEY([category_parent])
REFERENCES [dbo].[wms_category] ([category_id])
GO
ALTER TABLE [dbo].[wms_category] CHECK CONSTRAINT [FK_wms_category_wms_category]
GO
ALTER TABLE [dbo].[wms_check]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_wms_check_state] FOREIGN KEY([check_state])
REFERENCES [dbo].[wms_check_state] ([state_id])
GO
ALTER TABLE [dbo].[wms_check] CHECK CONSTRAINT [FK_wms_check_wms_check_state]
GO
ALTER TABLE [dbo].[wms_check]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_wms_user] FOREIGN KEY([check_creator])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_check] CHECK CONSTRAINT [FK_wms_check_wms_user]
GO
ALTER TABLE [dbo].[wms_check]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_wms_user1] FOREIGN KEY([check_acceptor])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_check] CHECK CONSTRAINT [FK_wms_check_wms_user1]
GO
ALTER TABLE [dbo].[wms_check]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_wms_warehouse] FOREIGN KEY([check_warehouse])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_check] CHECK CONSTRAINT [FK_wms_check_wms_warehouse]
GO
ALTER TABLE [dbo].[wms_check_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_product_shelf_wms_check] FOREIGN KEY([check_id])
REFERENCES [dbo].[wms_check] ([check_id])
GO
ALTER TABLE [dbo].[wms_check_product_shelf] CHECK CONSTRAINT [FK_wms_check_product_shelf_wms_check]
GO
ALTER TABLE [dbo].[wms_check_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_product_shelf_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_check_product_shelf] CHECK CONSTRAINT [FK_wms_check_product_shelf_wms_product]
GO
ALTER TABLE [dbo].[wms_check_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_check_product_shelf_wms_shelf] FOREIGN KEY([shelf_id])
REFERENCES [dbo].[wms_shelf] ([shelf_id])
GO
ALTER TABLE [dbo].[wms_check_product_shelf] CHECK CONSTRAINT [FK_wms_check_product_shelf_wms_shelf]
GO
ALTER TABLE [dbo].[wms_dispatch]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_wms_dispatch_state] FOREIGN KEY([dispatch_state])
REFERENCES [dbo].[wms_dispatch_state] ([state_id])
GO
ALTER TABLE [dbo].[wms_dispatch] CHECK CONSTRAINT [FK_wms_dispatch_wms_dispatch_state]
GO
ALTER TABLE [dbo].[wms_dispatch]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_wms_user] FOREIGN KEY([dispatch_creator])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_dispatch] CHECK CONSTRAINT [FK_wms_dispatch_wms_user]
GO
ALTER TABLE [dbo].[wms_dispatch]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_wms_user1] FOREIGN KEY([dispatch_accpetor])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_dispatch] CHECK CONSTRAINT [FK_wms_dispatch_wms_user1]
GO
ALTER TABLE [dbo].[wms_dispatch]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_wms_user2] FOREIGN KEY([dispatch_finisher])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_dispatch] CHECK CONSTRAINT [FK_wms_dispatch_wms_user2]
GO
ALTER TABLE [dbo].[wms_dispatch]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_wms_warehouse] FOREIGN KEY([dispatch_from])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_dispatch] CHECK CONSTRAINT [FK_wms_dispatch_wms_warehouse]
GO
ALTER TABLE [dbo].[wms_dispatch]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_wms_warehouse1] FOREIGN KEY([dispatch_to])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_dispatch] CHECK CONSTRAINT [FK_wms_dispatch_wms_warehouse1]
GO
ALTER TABLE [dbo].[wms_dispatch_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_product_shelf_wms_dispatch] FOREIGN KEY([dispatch_id])
REFERENCES [dbo].[wms_dispatch] ([dispatch_id])
GO
ALTER TABLE [dbo].[wms_dispatch_product_shelf] CHECK CONSTRAINT [FK_wms_dispatch_product_shelf_wms_dispatch]
GO
ALTER TABLE [dbo].[wms_dispatch_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_product_shelf_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_dispatch_product_shelf] CHECK CONSTRAINT [FK_wms_dispatch_product_shelf_wms_product]
GO
ALTER TABLE [dbo].[wms_dispatch_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_dispatch_product_shelf_wms_shelf] FOREIGN KEY([shelf_id])
REFERENCES [dbo].[wms_shelf] ([shelf_id])
GO
ALTER TABLE [dbo].[wms_dispatch_product_shelf] CHECK CONSTRAINT [FK_wms_dispatch_product_shelf_wms_shelf]
GO
ALTER TABLE [dbo].[wms_in_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_wms_application_state] FOREIGN KEY([application_state])
REFERENCES [dbo].[wms_application_state] ([state_id])
GO
ALTER TABLE [dbo].[wms_in_application] CHECK CONSTRAINT [FK_wms_in_application_wms_application_state]
GO
ALTER TABLE [dbo].[wms_in_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_wms_user] FOREIGN KEY([application_creator])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_in_application] CHECK CONSTRAINT [FK_wms_in_application_wms_user]
GO
ALTER TABLE [dbo].[wms_in_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_wms_user1] FOREIGN KEY([application_acceptor])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_in_application] CHECK CONSTRAINT [FK_wms_in_application_wms_user1]
GO
ALTER TABLE [dbo].[wms_in_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_wms_warehouse] FOREIGN KEY([application_warehouse])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_in_application] CHECK CONSTRAINT [FK_wms_in_application_wms_warehouse]
GO
ALTER TABLE [dbo].[wms_in_application_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_product_wms_in_application] FOREIGN KEY([app_id])
REFERENCES [dbo].[wms_in_application] ([application_id])
GO
ALTER TABLE [dbo].[wms_in_application_product] CHECK CONSTRAINT [FK_wms_in_application_product_wms_in_application]
GO
ALTER TABLE [dbo].[wms_in_application_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_product_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_in_application_product] CHECK CONSTRAINT [FK_wms_in_application_product_wms_product]
GO
ALTER TABLE [dbo].[wms_in_application_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_in_application_product_wms_shelf] FOREIGN KEY([shelf_id])
REFERENCES [dbo].[wms_shelf] ([shelf_id])
GO
ALTER TABLE [dbo].[wms_in_application_product] CHECK CONSTRAINT [FK_wms_in_application_product_wms_shelf]
GO
ALTER TABLE [dbo].[wms_order]  WITH CHECK ADD  CONSTRAINT [FK_wms_order_wms_order_state] FOREIGN KEY([order_state])
REFERENCES [dbo].[wms_order_state] ([state_id])
GO
ALTER TABLE [dbo].[wms_order] CHECK CONSTRAINT [FK_wms_order_wms_order_state]
GO
ALTER TABLE [dbo].[wms_order]  WITH CHECK ADD  CONSTRAINT [FK_wms_order_wms_user] FOREIGN KEY([order_charger])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_order] CHECK CONSTRAINT [FK_wms_order_wms_user]
GO
ALTER TABLE [dbo].[wms_order]  WITH CHECK ADD  CONSTRAINT [FK_wms_order_wms_warehouse] FOREIGN KEY([order_warehouse])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_order] CHECK CONSTRAINT [FK_wms_order_wms_warehouse]
GO
ALTER TABLE [dbo].[wms_order_line]  WITH CHECK ADD  CONSTRAINT [FK_wms_order_line_wms_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[wms_order] ([order_id])
GO
ALTER TABLE [dbo].[wms_order_line] CHECK CONSTRAINT [FK_wms_order_line_wms_order]
GO
ALTER TABLE [dbo].[wms_order_line]  WITH CHECK ADD  CONSTRAINT [FK_wms_order_line_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_order_line] CHECK CONSTRAINT [FK_wms_order_line_wms_product]
GO
ALTER TABLE [dbo].[wms_order_line]  WITH CHECK ADD  CONSTRAINT [FK_wms_order_line_wms_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[wms_supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[wms_order_line] CHECK CONSTRAINT [FK_wms_order_line_wms_supplier]
GO
ALTER TABLE [dbo].[wms_out_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_wms_application_state] FOREIGN KEY([application_state])
REFERENCES [dbo].[wms_application_state] ([state_id])
GO
ALTER TABLE [dbo].[wms_out_application] CHECK CONSTRAINT [FK_wms_out_application_wms_application_state]
GO
ALTER TABLE [dbo].[wms_out_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_wms_user] FOREIGN KEY([application_creator])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_out_application] CHECK CONSTRAINT [FK_wms_out_application_wms_user]
GO
ALTER TABLE [dbo].[wms_out_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_wms_user1] FOREIGN KEY([application_acceptor])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_out_application] CHECK CONSTRAINT [FK_wms_out_application_wms_user1]
GO
ALTER TABLE [dbo].[wms_out_application]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_wms_warehouse] FOREIGN KEY([application_warehouse])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_out_application] CHECK CONSTRAINT [FK_wms_out_application_wms_warehouse]
GO
ALTER TABLE [dbo].[wms_out_application_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_product_wms_out_application] FOREIGN KEY([app_id])
REFERENCES [dbo].[wms_out_application] ([application_id])
GO
ALTER TABLE [dbo].[wms_out_application_product] CHECK CONSTRAINT [FK_wms_out_application_product_wms_out_application]
GO
ALTER TABLE [dbo].[wms_out_application_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_product_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_out_application_product] CHECK CONSTRAINT [FK_wms_out_application_product_wms_product]
GO
ALTER TABLE [dbo].[wms_out_application_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_out_application_product_wms_shelf] FOREIGN KEY([shelf_id])
REFERENCES [dbo].[wms_shelf] ([shelf_id])
GO
ALTER TABLE [dbo].[wms_out_application_product] CHECK CONSTRAINT [FK_wms_out_application_product_wms_shelf]
GO
ALTER TABLE [dbo].[wms_product]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_wms_category] FOREIGN KEY([product_category])
REFERENCES [dbo].[wms_category] ([category_id])
GO
ALTER TABLE [dbo].[wms_product] CHECK CONSTRAINT [FK_wms_product_wms_category]
GO
ALTER TABLE [dbo].[wms_product_condition]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_condition_wms_condition] FOREIGN KEY([condition_id])
REFERENCES [dbo].[wms_condition] ([condition_id])
GO
ALTER TABLE [dbo].[wms_product_condition] CHECK CONSTRAINT [FK_wms_product_condition_wms_condition]
GO
ALTER TABLE [dbo].[wms_product_condition]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_condition_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_product_condition] CHECK CONSTRAINT [FK_wms_product_condition_wms_product]
GO
ALTER TABLE [dbo].[wms_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_shelf_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_product_shelf] CHECK CONSTRAINT [FK_wms_product_shelf_wms_product]
GO
ALTER TABLE [dbo].[wms_product_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_shelf_wms_shelf] FOREIGN KEY([shelf_id])
REFERENCES [dbo].[wms_shelf] ([shelf_id])
GO
ALTER TABLE [dbo].[wms_product_shelf] CHECK CONSTRAINT [FK_wms_product_shelf_wms_shelf]
GO
ALTER TABLE [dbo].[wms_product_supplier]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_supplier_wms_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[wms_product] ([product_id])
GO
ALTER TABLE [dbo].[wms_product_supplier] CHECK CONSTRAINT [FK_wms_product_supplier_wms_product]
GO
ALTER TABLE [dbo].[wms_product_supplier]  WITH CHECK ADD  CONSTRAINT [FK_wms_product_supplier_wms_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[wms_supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[wms_product_supplier] CHECK CONSTRAINT [FK_wms_product_supplier_wms_supplier]
GO
ALTER TABLE [dbo].[wms_shelf]  WITH CHECK ADD  CONSTRAINT [FK_wms_shelf_wms_storage] FOREIGN KEY([storage_id])
REFERENCES [dbo].[wms_storage] ([storage_id])
GO
ALTER TABLE [dbo].[wms_shelf] CHECK CONSTRAINT [FK_wms_shelf_wms_storage]
GO
ALTER TABLE [dbo].[wms_storage]  WITH CHECK ADD  CONSTRAINT [FK_wms_storage_wms_user] FOREIGN KEY([storage_charger])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_storage] CHECK CONSTRAINT [FK_wms_storage_wms_user]
GO
ALTER TABLE [dbo].[wms_storage]  WITH CHECK ADD  CONSTRAINT [FK_wms_storage_wms_warehouse] FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[wms_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[wms_storage] CHECK CONSTRAINT [FK_wms_storage_wms_warehouse]
GO
ALTER TABLE [dbo].[wms_storage_condition]  WITH CHECK ADD  CONSTRAINT [FK_wms_storage_condition_wms_condition] FOREIGN KEY([condition_id])
REFERENCES [dbo].[wms_condition] ([condition_id])
GO
ALTER TABLE [dbo].[wms_storage_condition] CHECK CONSTRAINT [FK_wms_storage_condition_wms_condition]
GO
ALTER TABLE [dbo].[wms_storage_condition]  WITH CHECK ADD  CONSTRAINT [FK_wms_storage_condition_wms_storage] FOREIGN KEY([storage_id])
REFERENCES [dbo].[wms_storage] ([storage_id])
GO
ALTER TABLE [dbo].[wms_storage_condition] CHECK CONSTRAINT [FK_wms_storage_condition_wms_storage]
GO
ALTER TABLE [dbo].[wms_user]  WITH CHECK ADD  CONSTRAINT [FK_wms_user_wms_user_type] FOREIGN KEY([user_type])
REFERENCES [dbo].[wms_user_type] ([user_type_id])
GO
ALTER TABLE [dbo].[wms_user] CHECK CONSTRAINT [FK_wms_user_wms_user_type]
GO
ALTER TABLE [dbo].[wms_warehouse]  WITH CHECK ADD  CONSTRAINT [FK_wms_warehouse_wms_user] FOREIGN KEY([warehouse_charger])
REFERENCES [dbo].[wms_user] ([user_id])
GO
ALTER TABLE [dbo].[wms_warehouse] CHECK CONSTRAINT [FK_wms_warehouse_wms_user]
GO
USE [master]
GO
ALTER DATABASE [wms] SET  READ_WRITE 
GO
