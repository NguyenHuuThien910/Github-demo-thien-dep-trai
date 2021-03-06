USE [QLNV]
GO
/****** Object:  Table [dbo].[DuAn]    Script Date: 06/07/2020 6:24:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuAn](
	[MaDuAn] [varchar](10) NOT NULL,
	[TenDuAn] [nvarchar](30) NULL,
	[KinhPhi] [float] NULL,
 CONSTRAINT [pk_MaDuAn] PRIMARY KEY CLUSTERED 
(
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 06/07/2020 6:24:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoLot] [nvarchar](20) NULL,
	[TenNV] [nvarchar](10) NULL,
	[SDT] [varchar](15) NULL,
	[MaPhong] [varchar](10) NULL,
 CONSTRAINT [pk_MaNV] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_DA]    Script Date: 06/07/2020 6:24:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_DA](
	[MaNV] [varchar](10) NULL,
	[MaDuAn] [varchar](10) NULL,
	[SoGio] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 06/07/2020 6:24:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](10) NOT NULL,
	[TenPhong] [nvarchar](20) NULL,
	[DiaDiem] [nvarchar](50) NULL,
 CONSTRAINT [pk_MaPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [KinhPhi]) VALUES (N'123', N'Bà Nà Hill', 120000)
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [KinhPhi]) VALUES (N'456', N'VinPearl', 199000)
INSERT [dbo].[NhanVien] ([MaNV], [HoLot], [TenNV], [SDT], [MaPhong]) VALUES (N'111', N'Nguyễn Thị', N'Ngân', N'090556565', N'001')
INSERT [dbo].[NhanVien] ([MaNV], [HoLot], [TenNV], [SDT], [MaPhong]) VALUES (N'112', N'Nguyễn Văn', N'Tường', N'090556565', N'003')
INSERT [dbo].[NhanVien] ([MaNV], [HoLot], [TenNV], [SDT], [MaPhong]) VALUES (N'113', N'Trương Hoa', N'Ly', N'090556565', N'002')
INSERT [dbo].[NhanVien] ([MaNV], [HoLot], [TenNV], [SDT], [MaPhong]) VALUES (N'114', N'Nguyễn Văn Minh', N'Tới', N'090556565', N'003')
INSERT [dbo].[NhanVien] ([MaNV], [HoLot], [TenNV], [SDT], [MaPhong]) VALUES (N'115', N'Trần', N'Chờ', N'090556565', N'002')
INSERT [dbo].[NhanVien] ([MaNV], [HoLot], [TenNV], [SDT], [MaPhong]) VALUES (N'116', N'Nguyễn Thị', N'Hồng', N'090556565', N'001')
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'116', N'456', 100)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'115', N'123', 150)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'114', N'456', 300)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'113', N'123', 150)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'112', N'123', 5)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'111', N'456', 90)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'113', N'123', 160)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'115', N'456', 150)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'116', N'123', 130)
INSERT [dbo].[NV_DA] ([MaNV], [MaDuAn], [SoGio]) VALUES (N'112', N'456', 170)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [DiaDiem]) VALUES (N'001', N'Kế Toán', N'Quảng Nam')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [DiaDiem]) VALUES (N'002', N'Kỹ Thuật', N'New York')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [DiaDiem]) VALUES (N'003', N'Marketing', N'Đà Nẵng')
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_MaPhong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_MaPhong]
GO
ALTER TABLE [dbo].[NV_DA]  WITH CHECK ADD  CONSTRAINT [fk_MaDuAn] FOREIGN KEY([MaDuAn])
REFERENCES [dbo].[DuAn] ([MaDuAn])
GO
ALTER TABLE [dbo].[NV_DA] CHECK CONSTRAINT [fk_MaDuAn]
GO
ALTER TABLE [dbo].[NV_DA]  WITH CHECK ADD  CONSTRAINT [fk_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NV_DA] CHECK CONSTRAINT [fk_MaNV]
GO
ALTER TABLE [dbo].[DuAn]  WITH CHECK ADD  CONSTRAINT [ch_KinhPhi] CHECK  (([KinhPhi]>=(0)))
GO
ALTER TABLE [dbo].[DuAn] CHECK CONSTRAINT [ch_KinhPhi]
GO
ALTER TABLE [dbo].[NV_DA]  WITH CHECK ADD  CONSTRAINT [ch_SoGio] CHECK  (([Sogio]>=(0)))
GO
ALTER TABLE [dbo].[NV_DA] CHECK CONSTRAINT [ch_SoGio]
GO
