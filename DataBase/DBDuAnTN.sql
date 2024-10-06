USE
[master]
CREATE
DATABASE [DBDuAnTN]
GO

USE [DBDuAnTN]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
    [Id] [uniqueidentifier] NOT NULL,
    [TenChatLieu] [nvarchar](250) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ChucVu](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [TenChucVu] [nvarchar](250) NULL,
    [LoaiChucVu] [int] NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DanhMuc](
    [Id] [uniqueidentifier] NOT NULL,
    [TenDanhMuc] [nvarchar](250) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[DiaChi](
    [Id] [uniqueidentifier] NOT NULL,
    [IdKH] [uniqueidentifier] NULL,
    [DiaChiChiTiet] [nvarchar](250) NULL,
    [PhuongXa] [nvarchar](250) NULL,
    [QuanHuyen] [nvarchar](250) NULL,
    [TinhThanh] [nvarchar](250) NULL,
    [QuocGia] [nvarchar](250) NULL,
    [NgayTao] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_DiaChi] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[GiamGia](
    [Id] [uniqueidentifier] NOT NULL,
    [MaGiamGia] [varchar](20) NULL,
    [TenGiamGia] [nvarchar](max) NULL,
    [NgayTao] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [NgayBatDau] [datetime] NULL,
    [NgayKetThuc] [datetime] NULL,
    [GiaTriGiam] [bigint] NULL,
    [HinhThucGiam] [int] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[GioHang](
    [Id] [uniqueidentifier] NOT NULL,
    [IdKH] [uniqueidentifier] NULL,
    [NgayTao] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[GioHangChiTiet](
    [Id] [uniqueidentifier] NOT NULL,
    [IdGH] [uniqueidentifier] NULL,
    [IdSPCT] [uniqueidentifier] NULL,
    [SoLuong] [int] NULL,
    [DonGia] [decimal](20, 0) NULL,
    [DonGiaKhiGiam] [decimal](20, 0) NULL,
    [SoTienGiam] [decimal](20, 0) NULL,
    [NgayTao] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_GioHangChiTiet] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[HinhThucThanhToan](
    [Id] [uniqueidentifier] NOT NULL,
    [IdHD] [uniqueidentifier] NULL,
    [IdKH] [uniqueidentifier] NULL,
    [IdNV] [uniqueidentifier] NULL,
    [MaGiaoDich] [nvarchar](250) NULL,
    [NgayThanhToan] [datetime] NULL,
    [SoTienTra] [decimal](20, 0) NULL,
    [NgayTao] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    [HinhThucThanhToan] [int] NULL,
    CONSTRAINT [PK_HinhThucThanhToan] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[HoaDon](
    [Id] [uniqueidentifier] NOT NULL,
    [IdNV] [uniqueidentifier] NULL,
    [IdKH] [uniqueidentifier] NULL,
    [IdVouCher] [uniqueidentifier] NULL,
    [MaHoaDon] [varchar](20) NULL,
    [NgayTao] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [NgayXacNhan] [datetime] NULL,
    [NgayChoGiaoHang] [datetime] NULL,
    [NgayGiaoHang] [datetime] NULL,
    [DonViGiaoHang] [nvarchar](max) NULL,
    [TenNguoiGiao] [nvarchar](max) NULL,
    [SDTNguoiGiao] [nvarchar](max) NULL,
    [TienGiaoHang] [decimal](20, 0) NULL,
    [NgayNhanHang] [datetime] NULL,
    [TenNguoiNhan] [nvarchar](max) NULL,
    [SDTNguoiNhan] [nvarchar](max) NULL,
    [EmailNguoiNhan] [nvarchar](max) NULL,
    [DiaChiNhanHang] [nvarchar](max) NULL,
    [NgayThanhToan] [datetime] NULL,
    [NgayHuy] [datetime] NULL,
    [GiaTriGiam] [decimal](20, 0) NULL,
    [TienKhachTra] [decimal](20, 0) NULL,
    [TienThua] [decimal](20, 0) NULL,
    [ThanhTien] [decimal](20, 0) NULL,
    [GhiChu] [nvarchar](max) NULL,
    [LoaiHoaDon] [int] NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[HoaDonChiTiet](
    [Id] [uniqueidentifier] NOT NULL,
    [IdHD] [uniqueidentifier] NULL,
    [IdSPCT] [uniqueidentifier] NULL,
    [SoLuong] [int] NULL,
    [DonGia] [decimal](20, 0) NULL,
    [DonGiaKhiGiam] [decimal](20, 0) NULL,
    [NgayTao] [datetime] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    [NgayCapNhat] [datetime] NULL,
    CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Image](
    [Id] [uniqueidentifier] NOT NULL,
    [IdSP] [uniqueidentifier] NULL,
    [TenImage] [nvarchar](max) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[KhachHang](
    [Id] [uniqueidentifier] NOT NULL,
    [MaKH] [varchar](50) NULL,
    [HoVaTenKH] [nvarchar](500) NULL,
    [GioiTinh] [bit] NULL,
    [NgaySinh] [date] NULL,
    [TaiKhoan] [nvarchar](max) NULL,
    [MatKhau] [nvarchar](max) NULL,
    [SoDienThoai] [nvarchar](50) NULL,
    [Email] [nvarchar](500) NULL,
    [Image] [nvarchar](max) NULL,
    [MoTa] [nvarchar](max) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[LichSuHoaDon](
    [Id] [uniqueidentifier] NOT NULL,
    [IdHD] [uniqueidentifier] NULL,
    [NguoiThaoTac] [varchar](100) NULL,
    [GhiChu] [nvarchar](max) NULL,
    [TrangThai] [int] NULL,
    [NgayTao] [datetime] NULL,
    PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[MauSac](
    [Id] [uniqueidentifier] NOT NULL,
    [TenMauSac] [nvarchar](250) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[NhanVien](
    [Id] [uniqueidentifier] NOT NULL,
    [IdCV] [int] NULL,
    [MaNV] [varchar](20) NULL,
    [HoVaTenNV] [nvarchar](500) NULL,
    [GioiTinh] [bit] NULL,
    [NgaySinh] [date] NULL,
    [TaiKhoan] [nvarchar](max) NULL,
    [MatKhau] [nvarchar](max) NULL,
    [SoDienThoai] [nvarchar](50) NULL,
    [Email] [nvarchar](550) NULL,
    [Image] [nvarchar](max) NULL,
    [DiaChi] [nvarchar](max) NULL,
    [MoTa] [nvarchar](max) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[RefeshToken](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [IdNV] [uniqueidentifier] NULL,
    [ToKen] [nvarchar](500) NULL,
    [ThoiGianHetHan] [datetime] NULL,
    [IdKH] [uniqueidentifier] NULL,
    CONSTRAINT [PK_RefeshToken] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[SanPham](
    [Id] [uniqueidentifier] NOT NULL,
    [IdDM] [uniqueidentifier] NULL,
    [IdTH] [uniqueidentifier] NULL,
    [IdXX] [uniqueidentifier] NULL,
    [IdCL] [uniqueidentifier] NULL,
    [IdGG] [uniqueidentifier] NULL,
    [MaSP] [varchar](20) NULL,
    [TenSP] [nvarchar](250) NULL,
    [TheLoai] [int] NULL,
    [ImageDefaul] [nvarchar](max) NULL,
    [GiaNhap] [decimal](20, 0) NULL,
    [GiaBan] [decimal](20, 0) NULL,
    [DonGiaKhiGiam] [decimal](20, 0) NULL,
    [NgayThem] [datetime] NULL,
    [NgayThemGiamGia] [datetime] NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[SanPhamChiTiet](
    [Id] [uniqueidentifier] NOT NULL,
    [IdSP] [uniqueidentifier] NULL,
    [IdMS] [uniqueidentifier] NULL,
    [IdSize] [uniqueidentifier] NULL,
    [SoLuongTon] [int] NULL,
    [MoTa] [nvarchar](250) NULL,
    [QrCode] [nvarchar](max) NULL,
    [TrangThai] [int] NULL,
    [NgayTao] [datetime] NULL,
    CONSTRAINT [PK_SanPhamChiTiet] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Size](
    [Id] [uniqueidentifier] NOT NULL,
    [TenSize] [nvarchar](250) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[ThuongHieu](
    [Id] [uniqueidentifier] NOT NULL,
    [TenThuongHieu] [nvarchar](250) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[VouCher](
    [Id] [uniqueidentifier] NOT NULL,
    [MaVouCher] [nvarchar](100) NULL,
    [TenVouCher] [nvarchar](100) NULL,
    [NgayTao] [datetime] NULL,
    [NgayBatDau] [datetime] NULL,
    [NgayCapNhat] [datetime] NULL,
    [NgayKetThuc] [datetime] NULL,
    [SoLuongMa] [int] NULL,
    [SoLuongDung] [int] NULL,
    [GiaTriGiam] [bigint] NULL,
    [DieuKienToiThieuHoaDon] [bigint] NULL,
    [HinhThucGiam] [int] NULL,
    [LoaiVouCher] [int] NULL,
    [GhiChu] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_VouCher] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[XuatXu](
    [Id] [uniqueidentifier] NOT NULL,
    [TenXuatXu] [nvarchar](250) NULL,
    [MoTa] [nvarchar](250) NULL,
    [TrangThai] [int] NULL,
    CONSTRAINT [PK_XuatXu] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO

ALTER TABLE [dbo].[ChatLieu] ADD  CONSTRAINT [DF_ChatLieu_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[DanhMuc] ADD  CONSTRAINT [DF_DanhMuc_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[DiaChi] ADD  CONSTRAINT [DF_DiaChi_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[GiamGia] ADD  CONSTRAINT [DF_GiamGia_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  CONSTRAINT [DF_GioHangChiTiet_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  CONSTRAINT [DF_HinhThucThanhToan_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  CONSTRAINT [DF_HoaDonChiTiet_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[Image] ADD  CONSTRAINT [DF_Image_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[MauSac] ADD  CONSTRAINT [DF_MauSac_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[SanPhamChiTiet] ADD  CONSTRAINT [DF_SanPhamChiTiet_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[Size] ADD  CONSTRAINT [DF_Size_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[ThuongHieu] ADD  CONSTRAINT [DF_ThuongHieu_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[VouCher] ADD  CONSTRAINT [DF_VouCher_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[XuatXu] ADD  CONSTRAINT [DF_XuatXu_Id]  DEFAULT (newid()) FOR [Id]
    GO
ALTER TABLE [dbo].[DiaChi]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_KhachHang] FOREIGN KEY([IdKH])
    REFERENCES [dbo].[KhachHang] ([Id])
    GO
ALTER TABLE [dbo].[DiaChi] CHECK CONSTRAINT [FK_DiaChi_KhachHang]
    GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([IdKH])
    REFERENCES [dbo].[KhachHang] ([Id])
    GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
    GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_GioHang] FOREIGN KEY([IdGH])
    REFERENCES [dbo].[GioHang] ([Id])
    GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK_GioHangChiTiet_GioHang]
    GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_SanPhamChiTiet] FOREIGN KEY([IdSPCT])
    REFERENCES [dbo].[SanPhamChiTiet] ([Id])
    GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK_GioHangChiTiet_SanPhamChiTiet]
    GO
ALTER TABLE [dbo].[HinhThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_HinhThucThanhToan_HoaDon] FOREIGN KEY([IdHD])
    REFERENCES [dbo].[HoaDon] ([Id])
    GO
ALTER TABLE [dbo].[HinhThucThanhToan] CHECK CONSTRAINT [FK_HinhThucThanhToan_HoaDon]
    GO
ALTER TABLE [dbo].[HinhThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_HinhThucThanhToan_KhachHang] FOREIGN KEY([IdKH])
    REFERENCES [dbo].[KhachHang] ([Id])
    GO
ALTER TABLE [dbo].[HinhThucThanhToan] CHECK CONSTRAINT [FK_HinhThucThanhToan_KhachHang]
    GO
ALTER TABLE [dbo].[HinhThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_HinhThucThanhToan_NhanVien] FOREIGN KEY([IdNV])
    REFERENCES [dbo].[NhanVien] ([Id])
    GO
ALTER TABLE [dbo].[HinhThucThanhToan] CHECK CONSTRAINT [FK_HinhThucThanhToan_NhanVien]
    GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IdKH])
    REFERENCES [dbo].[KhachHang] ([Id])
    GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
    GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IdNV])
    REFERENCES [dbo].[NhanVien] ([Id])
    GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
    GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_VouCher] FOREIGN KEY([IdVouCher])
    REFERENCES [dbo].[VouCher] ([Id])
    GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_VouCher]
    GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([IdHD])
    REFERENCES [dbo].[HoaDon] ([Id])
    GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
    GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet] FOREIGN KEY([IdSPCT])
    REFERENCES [dbo].[SanPhamChiTiet] ([Id])
    GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet]
    GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_SanPham] FOREIGN KEY([IdSP])
    REFERENCES [dbo].[SanPham] ([Id])
    GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_SanPham]
    GO
ALTER TABLE [dbo].[LichSuHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_LichSuHoaDon_HoaDon] FOREIGN KEY([IdHD])
    REFERENCES [dbo].[HoaDon] ([Id])
    GO
ALTER TABLE [dbo].[LichSuHoaDon] CHECK CONSTRAINT [FK_LichSuHoaDon_HoaDon]
    GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IdCV])
    REFERENCES [dbo].[ChucVu] ([Id])
    GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
    GO
ALTER TABLE [dbo].[RefeshToken]  WITH CHECK ADD  CONSTRAINT [FK_RefeshToken_NhanVien] FOREIGN KEY([IdNV])
    REFERENCES [dbo].[NhanVien] ([Id])
    GO
ALTER TABLE [dbo].[RefeshToken] CHECK CONSTRAINT [FK_RefeshToken_NhanVien]
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChatLieu] FOREIGN KEY([IdCL])
    REFERENCES [dbo].[ChatLieu] ([Id])
    GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChatLieu]
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([IdDM])
    REFERENCES [dbo].[DanhMuc] ([Id])
    GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_GiamGia] FOREIGN KEY([IdGG])
    REFERENCES [dbo].[GiamGia] ([Id])
    GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_GiamGia]
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([IdTH])
    REFERENCES [dbo].[ThuongHieu] ([Id])
    GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
    GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_XuatXu] FOREIGN KEY([IdXX])
    REFERENCES [dbo].[XuatXu] ([Id])
    GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_XuatXu]
    GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_MauSac] FOREIGN KEY([IdMS])
    REFERENCES [dbo].[MauSac] ([Id])
    GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_MauSac]
    GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_SanPham] FOREIGN KEY([IdSP])
    REFERENCES [dbo].[SanPham] ([Id])
    GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_SanPham]
    GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_Size] FOREIGN KEY([IdSize])
    REFERENCES [dbo].[Size] ([Id])
    GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_Size]
    GO
