USE [QLSACH]
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[mads] [int] IDENTITY(1,1) NOT NULL,
	[matv] [nchar](10) NULL,
	[masach] [nchar](10) NULL,
 CONSTRAINT [PK_giohang] PRIMARY KEY CLUSTERED 
(
	[mads] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Mhd] [nchar](10) NOT NULL,
	[tenhd] [nvarchar](50) NULL,
	[masach] [nchar](10) NULL,
	[matv] [nchar](10) NULL,
	[tt] [float] NULL,
	[ngaylap] [date] NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[Mhd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoadonKhach]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoadonKhach](
	[Mhd] [int] IDENTITY(1,1) NOT NULL,
	[tenhd] [nvarchar](50) NULL,
	[masach] [nchar](10) NULL,
	[matv] [nchar](10) NULL,
	[tt] [float] NULL,
	[ngaylap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mhd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[maloai] [nchar](10) NOT NULL,
	[tenloai] [nchar](10) NULL,
 CONSTRAINT [PK_loai] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nxb]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nxb](
	[manxb] [nchar](10) NOT NULL,
	[nxb] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nxb] PRIMARY KEY CLUSTERED 
(
	[manxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[masach] [nchar](10) NOT NULL,
	[tensach] [nvarchar](50) NULL,
	[maloai] [nchar](10) NULL,
	[manxb] [nchar](10) NULL,
	[gia] [float] NULL,
	[sl] [int] NULL,
	[anh] [nvarchar](50) NULL,
	[mota] [nvarchar](max) NULL,
	[matacgia] [nchar](10) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tacgia]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tacgia](
	[matacgia] [nchar](10) NOT NULL,
	[tentg] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tacgia] PRIMARY KEY CLUSTERED 
(
	[matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[matv] [nchar](10) NOT NULL,
	[tentv] [nvarchar](50) NULL,
	[Name] [nchar](20) NULL,
	[pass] [nchar](20) NULL,
	[phanquyen] [nchar](20) NULL,
 CONSTRAINT [PK_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[matv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taotk]    Script Date: 02/04/2025 19:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taotk](
	[ten] [nvarchar](100) NOT NULL,
	[Name] [nchar](20) NULL,
	[Pass] [nchar](20) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[giohang] ON 

INSERT [dbo].[giohang] ([mads], [matv], [masach]) VALUES (1, N'001       ', N'001       ')
INSERT [dbo].[giohang] ([mads], [matv], [masach]) VALUES (2, N'003       ', N'003       ')
INSERT [dbo].[giohang] ([mads], [matv], [masach]) VALUES (3, N'003       ', N'005       ')
INSERT [dbo].[giohang] ([mads], [matv], [masach]) VALUES (4, N'003       ', N'004       ')
INSERT [dbo].[giohang] ([mads], [matv], [masach]) VALUES (5, N'003       ', N'001       ')
SET IDENTITY_INSERT [dbo].[giohang] OFF
GO
INSERT [dbo].[Hoadon] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (N'127       ', N'mua', N'007       ', N'002       ', 3122222, CAST(N'2024-10-03' AS Date))
INSERT [dbo].[Hoadon] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (N'128       ', N'mua', N'005       ', N'002       ', 310000, CAST(N'2024-11-01' AS Date))
INSERT [dbo].[Hoadon] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (N'130       ', N'giao nhanh', N'004       ', N'003       ', 56000, CAST(N'2024-12-05' AS Date))
INSERT [dbo].[Hoadon] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (N'132       ', N'ưqeqe', N'004       ', N'003       ', 56000, CAST(N'2024-11-28' AS Date))
GO
SET IDENTITY_INSERT [dbo].[HoadonKhach] ON 

INSERT [dbo].[HoadonKhach] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (125, N'mua', N'002       ', N'004       ', 3122222, CAST(N'2024-10-03' AS Date))
INSERT [dbo].[HoadonKhach] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (126, N'mua', N'001       ', N'002       ', 310000, CAST(N'2024-10-03' AS Date))
INSERT [dbo].[HoadonKhach] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (129, N'muamoi', N'005       ', N'002       ', 79000, CAST(N'2024-10-03' AS Date))
INSERT [dbo].[HoadonKhach] ([Mhd], [tenhd], [masach], [matv], [tt], [ngaylap]) VALUES (131, N'eee', N'004       ', N'003       ', 56000, CAST(N'2024-12-05' AS Date))
SET IDENTITY_INSERT [dbo].[HoadonKhach] OFF
GO
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'001       ', N'Văn Học   ')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'002       ', N'Khoa Học  ')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'003       ', N'Truyện    ')
GO
INSERT [dbo].[Nxb] ([manxb], [nxb]) VALUES (N'001       ', N'Kim Đồng')
INSERT [dbo].[Nxb] ([manxb], [nxb]) VALUES (N'002       ', N'Hội Nhà Văn')
INSERT [dbo].[Nxb] ([manxb], [nxb]) VALUES (N'003       ', N'Nhà Xuất Bản Trẻ')
GO
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'001       ', N'Chúa Tể Những chiếc nhẫn 1', N'003       ', N'002       ', 310000, 12, N'chuanhan1.jpg', N'Chúa tể những chiếc nhẫn: Hiệp hội nhẫn thần là một bộ phim phiêu lưu giả tưởng sử thi năm 2001 do Peter Jackson đạo diễn từ kịch bản của Fran Walsh , Philippa Boyens và Jackson, dựa trên tác phẩm The Fellowship of the Ring năm 1954 , tập đầu tiên của tiểu thuyết The Lord of the Rings của JRR Tolkien . ', N'006       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'002       ', N'Chúa Tể Những chiếc nhẫn 2', N'003       ', N'002       ', 310000, 12, N'chuanhan2.jpg', N'Chúa tể những chiếc nhẫn: Hai tòa tháp (The Lord of the Rings: The Two Towers) là một bộ phim viễn tưởng được sản xuất năm 2002 của đạo diễn Peter Jackson. ', N'006       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'003       ', N'Chúa Tể Những chiếc nhẫn 3', N'003       ', N'002       ', 310000, 12, N'chuanhan2.jpg', N'Chúa tể những chiếc nhẫn: Sự trở về của nhà vua là một bộ phim phiêu lưu giả tưởng sử thi năm 2003 do Peter Jackson đạo diễntừ kịch bản của Fran Walsh , Philippa Boyens và Jackson. Phim dựa trên tác phẩm The Return of the King năm 1955 , tập thứ ba của tiểu thuyết The Lord of the Rings của JRR Tolkien .', N'006       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'004       ', N'Số Đỏ', N'001       ', N'001       ', 56000, 8, N'sodo.jpg', N'Số đỏ là một tiểu thuyết văn học của nhà văn Vũ Trọng Phụng (ông vua phóng sự đất Bắc) đăng trên Hà Nội báo từ số 40 ngày 7 tháng 10 năm 1936 và được in thành sách lần đầu vào năm 1938, với 20 chương. Tác phẩm xoay quanh nhân vật chính là Xuân - biệt danh là Xuân Tóc đỏ - từ chỗ là một kẻ bị coi là hạ lưu, bỗng chốc đã bước lên tầng lớp danh giá của xã hội nhờ trào lưu Âu hóa của giới tiểu tư sản Hà Nội khi đó. ', N'002       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'005       ', N'Nhà Giả Kim', N'001       ', N'001       ', 79000, 9, N'nhagiakim.jpg', N'Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.', N'004       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'006       ', N'Đắc Nhân Tâm', N'001       ', N'002       ', 86000, 11, N'dacnhantam.jpg', N'Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.

Đây là cuốn sách độc nhất về thể loại self-help sở hữu một lượng lớn người hâm mộ. Ngoài ra cuốn sách có doanh số bán ra cao nhất được tờ báo “The New York Times” bình chọn trong nhiều năm. Cuốn sách này không còn là một tác phẩm về nghệ thuật đơn thuần nữa mà là một bước thay đổi lớn trong cuộc sống của mỗi người.', N'003       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'007       ', N'Ông già và biển cả', N'001       ', N'001       ', 35000, 9, N'onggiavabienca.jpg', N'Tác phẩm này được viết theo thể loại truyện viễn tưởng và được nhiều người đọc biết đến với nguyên lý “tảng băng trôi” với lý thuyết là một phần nổi - bảy phần chìm. Câu chuyện xoay quanh về cuộc đối đầu không cân sức giữa ông lão đánh cá và con cá hung dữ giữa biển khơi.', N'005       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'008       ', N'Cuộc Chiến Lỗ Đen', N'002       ', N'003       ', 178000, 12, N'ccld.jpg', N'Khoa Học Khám Phá - Cuộc Chiến Lỗ Đen là sự ca tụng trí tuệ loài người và khả năng tuyệt vời của nó trong việc khám phá các định luật của tự nhiên.', N'007       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'009       ', N'7 Bài Học Hay Nhất Về Vật Lý', N'002       ', N'003       ', 56000, 12, N'7-bai-hoc-hay-nhat-ve-vat-ly.jpg', N'7 Bài Học Hay Nhất Về Vật Lý là những bài học hay được rút ra từ vật lý, có những kỹ năng trong cuộc sống áp dụng từ vật lý rất hiệu quả và hay về vật lý.', N'008       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'010       ', N'Hiệu ứng cánh bướm', N'002       ', N'003       ', 79000, 12, N'hieu-ung-canh-buom.jpg', N'Hiệu ứng cánh bướm nhấn mạnh đến các yếu tố nguyên nhân rất nhỏ tạo thành một kết quả ngoài sức tưởng tượng.', N'009       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'011       ', N'Lược Sủ Thời Gian', N'002       ', N'003       ', 115000, 12, N'luoc-su-thoi-gian.jpg', N'A Brief History of Time (Lược sử thời gian) gồm 11 chương, lý giải các hiện tượng thiên văn như Big Bang, lỗ đen, nón ánh sáng và đề cập đến những vấn đề lý thuyết vật lý quan trọng như: không - thời gian, thuyết tương đối, nguyên lý bất định...', N'007       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'012       ', N'Doraemon1', N'003       ', N'001       ', 79000, 12, N'dodo1.jpg', N'Doraemon và những người bạn', N'010       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'013       ', N'Doraemon 2', N'003       ', N'001       ', 79000, 12, N'dodo2.jpg', N'NOBITA và những người bạn', N'010       ')
INSERT [dbo].[Sach] ([masach], [tensach], [maloai], [manxb], [gia], [sl], [anh], [mota], [matacgia]) VALUES (N'014       ', N'Doraemon 3', N'003       ', N'001       ', 79000, 12, N'dodo3.jpg', N'Doraemon và cuộc phưu lưu kì thú', N'010       ')
GO
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'          ', N'')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'001       ', N'Ngô Tất Tố')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'002       ', N'Vũ Trọng Phụng')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'003       ', N'Dale Carnegie')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'004       ', N'Paulo Coelho')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'005       ', N'Ernest Hemingway')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'006       ', N'J.R.R Tolkien')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'007       ', N'Stephen Hawking')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'008       ', N'Carlo Rovelli')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'009       ', N'Andy Andrew')
INSERT [dbo].[Tacgia] ([matacgia], [tentg]) VALUES (N'010       ', N'Fujiko F Fujio')
GO
INSERT [dbo].[Taikhoan] ([matv], [tentv], [Name], [pass], [phanquyen]) VALUES (N'001       ', N'Kim', N'addmin              ', N'123                 ', N'addmin              ')
INSERT [dbo].[Taikhoan] ([matv], [tentv], [Name], [pass], [phanquyen]) VALUES (N'002       ', N'Nam', N'NamDN               ', N'123                 ', N'user                ')
INSERT [dbo].[Taikhoan] ([matv], [tentv], [Name], [pass], [phanquyen]) VALUES (N'003       ', N'kim', N'kim                 ', N'123                 ', N'user                ')
INSERT [dbo].[Taikhoan] ([matv], [tentv], [Name], [pass], [phanquyen]) VALUES (N'004       ', N'BThang', N'BThang              ', N'123                 ', N'user                ')
INSERT [dbo].[Taikhoan] ([matv], [tentv], [Name], [pass], [phanquyen]) VALUES (N'005       ', N'Hngoc', N'Amiee               ', N'123                 ', N'user                ')
GO
INSERT [dbo].[Taotk] ([ten], [Name], [Pass]) VALUES (N'San', N'San                 ', N'123                 ')
INSERT [dbo].[Taotk] ([ten], [Name], [Pass]) VALUES (N'San', N'San                 ', N'                    ')
INSERT [dbo].[Taotk] ([ten], [Name], [Pass]) VALUES (N'Kim Anh', N'Kanh                ', N'123                 ')
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_Sach] FOREIGN KEY([masach])
REFERENCES [dbo].[Sach] ([masach])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_Sach]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_Taikhoan] FOREIGN KEY([matv])
REFERENCES [dbo].[Taikhoan] ([matv])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_Taikhoan]
GO
ALTER TABLE [dbo].[HoadonKhach]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonk_Sach] FOREIGN KEY([masach])
REFERENCES [dbo].[Sach] ([masach])
GO
ALTER TABLE [dbo].[HoadonKhach] CHECK CONSTRAINT [FK_Hoadonk_Sach]
GO
ALTER TABLE [dbo].[HoadonKhach]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonk_Taikhoan] FOREIGN KEY([matv])
REFERENCES [dbo].[Taikhoan] ([matv])
GO
ALTER TABLE [dbo].[HoadonKhach] CHECK CONSTRAINT [FK_Hoadonk_Taikhoan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_loai] FOREIGN KEY([maloai])
REFERENCES [dbo].[loai] ([maloai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_loai]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Nxb] FOREIGN KEY([manxb])
REFERENCES [dbo].[Nxb] ([manxb])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Nxb]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Tacgia] FOREIGN KEY([matacgia])
REFERENCES [dbo].[Tacgia] ([matacgia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Tacgia]
GO
