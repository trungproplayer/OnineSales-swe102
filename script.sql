USE [SE1435_PRJ311]
GO
/****** Object:  Table [dbo].[HE141283_ChauDM_Order]    Script Date: 03/08/2021 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141283_ChauDM_Order](
	[OrderID] [int] NOT NULL,
	[uID] [int] NULL,
	[phone] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HE141283_ChauDM_Order] ([OrderID], [uID], [phone]) VALUES (1, 1, 12345)
INSERT [dbo].[HE141283_ChauDM_Order] ([OrderID], [uID], [phone]) VALUES (2, 1, 859094608)
INSERT [dbo].[HE141283_ChauDM_Order] ([OrderID], [uID], [phone]) VALUES (3, -1, 859094608)
INSERT [dbo].[HE141283_ChauDM_Order] ([OrderID], [uID], [phone]) VALUES (4, -1, 859094608)
/****** Object:  Table [dbo].[HE141283_ChauDM_Category]    Script Date: 03/08/2021 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141283_ChauDM_Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HE141283_ChauDM_Category] ([cid], [cname]) VALUES (1, N'ÁO HOODIE')
INSERT [dbo].[HE141283_ChauDM_Category] ([cid], [cname]) VALUES (2, N'ÁO SWEATER')
INSERT [dbo].[HE141283_ChauDM_Category] ([cid], [cname]) VALUES (3, N'ÁO SƠ MI')
INSERT [dbo].[HE141283_ChauDM_Category] ([cid], [cname]) VALUES (4, N'ÁO KHOÁC')
/****** Object:  Table [dbo].[HE141283_ChauDM_Account]    Script Date: 03/08/2021 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HE141283_ChauDM_Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HE141283_ChauDM_Account] ON
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
INSERT [dbo].[HE141283_ChauDM_Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (34, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HE141283_ChauDM_Account] OFF
/****** Object:  Table [dbo].[HE141283_ChauDM_Voucher]    Script Date: 03/08/2021 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141283_ChauDM_Voucher](
	[captcha] [nvarchar](20) NULL,
	[value] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HE141283_ChauDM_Voucher] ([captcha], [value]) VALUES (N'SALE10', 10)
INSERT [dbo].[HE141283_ChauDM_Voucher] ([captcha], [value]) VALUES (N'SALE20', 20)
INSERT [dbo].[HE141283_ChauDM_Voucher] ([captcha], [value]) VALUES (N'SALE50', 50)
/****** Object:  Table [dbo].[HE141283_ChauDM_Product]    Script Date: 03/08/2021 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141283_ChauDM_Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HE141283_ChauDM_Product] ON
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Sweater Nam Đức Hát', N'https://salt.tikicdn.com/ts/tmp/43/fe/bc/7f699d8d5f645389729914ce6552c016.jpg', 131313132.0000, N'DH', N'Áo Sweater Nam Nữ | Nỉ Bông Trắng (Đen) Trơn Thời Trang Cao Cấp
Đủ Size S M L XL Cao Cấp
Áo chất nỉ bông dầy ấm, 1 lớp nỉ.
Áo sáng màu, hình in thấm màu, bảo hành giặt máy thoải mái. Áo đen (trắng) in lưới chất lượng cao.
Kiểu dáng thời trang, áo tay dài, có mũ trùm đầu, có túi ốp ở bụng.
Áo dáng xuông, mặc rất thoải mái, dễ phối đồ.
Kiểu dáng trẻ trung, nam hay nữ đều mặc được.', 1, 1)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Áo Sơ mi Lụa Tay Ngắn Trơn Basic', N'https://nocturnal.vn/wp-content/uploads/2019/10/1-4.jpg.webp', 180.0000, N'Áo Burbery', N'Thiết kế theo form chuẩn, thích hợp phối với quần jean dài, jean short, quần tây dài, tây short để đi tiệc, đi làm công sở, đi chơi, dạo phố...Tôn lên được sự trẻ trung, thanh lịch cho các bạn nam, kèm vào đó là sự hoạt động thoải mái khi mặc sản phẩm.', 3, 14)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Ao so mi nam', N'https://canifa.s3.amazonaws.com/media/catalog/product/8/t/8th20w002-sb215-2-thumb-.jpg', 200.0000, N'Levi''s', N'Ão sÆ¡ mi cotton USA
DÃ¡ng regular, dÃ i tay, cá» báº», cÃ i khuy', 3, 1)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Áo nữ công sở', N'https://modaviet.com/image/catalog/sanpham/dong-phuc-ao-somi/dong-phuc-somi-nu/dong-phuc-ao-so-mi-nu-30.jpg', 150.0000, N'Áo Gucci', N'Moda việt Nam đẹp', 3, 7)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Áo kẻ caro', N'https://images.vnnshop.vn/images/2016/08/22/16/30/TTR-000491.jpg', 180.0000, N'Áo Gucci', N'Thiết kế theo form chuẩn, thích hợp phối với quần jean dài, jean short, quần tây dài, tây short để đi tiệc, đi làm công sở, đi chơi, dạo phố...Tôn lên được sự trẻ trung, thanh lịch cho các bạn nam, kèm vào đó là sự hoạt động thoải mái khi mặc sản phẩm.', 3, 15)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Áo kẻ sọc ', N'https://canifa.s3.amazonaws.com/media/catalog/product/8/t/8th19w018-cy028-l.jpg', 150.0000, N'Áo LV', N'Áo sơ mi kiểu dáng trẻ trung, chất liệu cotton nhập khẩu 100% + không nhăn + không nhão + không bai xù + thấm hút mồ hôi cực kì tốt ...', 3, 17)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Áo khoác nỉ basic ', N'https://cf.shopee.vn/file/f13246c54d9bf8c396d1e8bdae8a997a', 400.0000, N'Áo Burbery', N'Áo khoác  được làm từ chất liệu Nỉ dày đẹp co giãn , đường may kỹ, khéo léo.
Áo được in bằng mực nước thấm trực tiếp vào vải không bong tróc, thân thiện với môi trường. Quý khách có thể sử dụng hình in này để in lên áo màu khác.', 4, 6)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Áo khoác nỉ BT21', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/345/647/products/3bd4738dd12728797136.jpg?v=1577965829390', 300.0000, N'Áo LV', N'Đông về rồi nên shop gom order áo khoác cho các bạn Ami nhé. 

Có 4 mẫu áo: 
- Cookyx Chimmy
- Cooky
- Chimmy 
Freesize 45-65 kg, cao dưới m7', 4, 7)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Áo khoác nỉ có mũ tay viền', N'https://cf.shopee.vn/file/14f0ca08bcbda1e7b50d80d839048fab', 165.0000, N'Áo Gucci', N' Áo phao nam AK9055 chiều dài đến ngang hông, hai túi nhỏ ở hai bên eo to tiện lợi, ôm chun tay áo và vạt áo, độ chống nước cao.', 4, 19)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Áo khoác nỉ nam cao cấp', N'https://fashionmingo.com/wp-content/uploads/2019/05/AK010-1.jpg', 400.0000, N'Áo LV', N'Áo thời trang fashion', 4, 18)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Áo hoodie nam', N'https://product.hstatic.net/1000321597/product/ao-khoac-vans-off-the-wall-263457_6cebedd1fa094d8880cb5a2e4c039156_master.jpg', 170.0000, N'Áo adidas', N'Áo nam quá đẹp', 1, 14)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Winter sweater man', 
N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXFxUVFxcXFxUYFxU
VFxUWFxUXFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFSsdIB0tLSstKy0uLS0tLS0tLS4rLS0tL

S0tLS0tLS0tKystLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOgA2QMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAIFBgEAB
//EAEAQAAEDAgMEBwUGBAUFAAAAAAEAAhEDIQQSMQVBUWEGEyJxgZGhMrHB0fAUQlJi4fEjcpLSBxUzU4IWQ1TC4v/EABkBAQEAAwEAAAAAAAAA
AAAAAAABAgMEBf/EACURAQEAAgEEAgICAwAAAAAAAAABAhEDBBIxQSFRE2EiUhQjcf/aAAwDAQACEQMRAD8AM4gX3z9QldmbXNKu6pkzsBAgGHWDpLSbO9
rQxduqJjKrQ1xuYE92u/wVbhR2BIubk8zfXx
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
dcXkE3FAFyvLyA0KGXkFxeQf//Z', 200.0000, N'Áo LEVI''S', N'Được thành lập năm 1873, Levi’s® được thế giới biết đến & ngợi khen bởi những sản phẩn jeans đạt chuẩn mực trong thiết kế. Chúng trở thành những sản phẩm thành công nhất, được công nhận nhiều nhất. Với tư cách là nhà tiên phong đi đầu trong lĩnh vực jeans, thương hiệu Levi’s® tiếp tục khẳng định vị thế vững chắc trên đấu trường thời trang bằng dải sản phẩm mở rộng tuyệt đối vô cùng phong phú, đầy đủ cả những mẫu mã “nòng cốt” như dòng 501® lừng danh, dòng jeans tân thời với các form dáng hiện đại, đến các sản phẩm cao cấp.', 2, 1)


INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Áo hoodie  xám', N'https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2019/11/ao-hoodie-thoi-trang-thu-dong-2019-vhh-5-jpg-1574481023-23112019105023.jpg', 300.0000, N'Áo LV', N'Woman fashion winter', 1, 6)

INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Áo sơ mi nam VF$', N'https://contents.mediadecathlon.com/p1291545/k$f83f0d9d08cf780be92b40dbedd37aa4/ao-so-mi-dai-tay-hai-mat-travel-500-cho-nam-xanh-duong.jpg?&f=700x700', 666.0000, N'Áo LV', N'Áo sơ mi nam dài tay dáng ôm sơ cổ bẻ vải lụa thái chống nhăn chống xù', 3, 7)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Áo sơ mi tay ngắn', N'https://contents.mediadecathlon.com/p175350/k$c5f3e38163dc3574a87e1c124e2e8fb7/ao-so-mi-ngan-tay-quan-sat-tu-nhien-100-kaki.jpg?format=auto&f=700x700', 888.0000, N'Áo LV', N'Áo Sơ Mi Nam Cộc Tay Trẻ Trung Cao Cấp Loại Đẹp Cao Cấp', 3, 1)
INSERT [dbo].[HE141283_ChauDM_Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Áo Sơ Mi Burberry Check Cotton Poplin Shirt', N'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2020/03/ao-so-mi-burberry-check-cotton-poplin-shirt-5e6b6e6e6ff4e-13032020182846.jpg', 900.0000, N'Áo Burbery', N'Áo Sơ Mi Burberry Check Cotton được may từ chất liệu vải Cotton cao cấp ', 3, 7) OFF
/****** Object:  Table [dbo].[HE141283_ChauDM_OrderDetail]    Script Date: 03/08/2021 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141283_ChauDM_OrderDetail](
	[OrderID] [int] NOT NULL,
	[pID] [int] NOT NULL,
	[UnitPrice] [real] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HE141283_ChauDM_OrderDetail] ([OrderID], [pID], [UnitPrice], [Quantity]) VALUES (1, 1, 200, 2)
INSERT [dbo].[HE141283_ChauDM_OrderDetail] ([OrderID], [pID], [UnitPrice], [Quantity]) VALUES (1, 1, 160, 4)
INSERT [dbo].[HE141283_ChauDM_OrderDetail] ([OrderID], [pID], [UnitPrice], [Quantity]) VALUES (2, 1, 150, 1)
INSERT [dbo].[HE141283_ChauDM_OrderDetail] ([OrderID], [pID], [UnitPrice], [Quantity]) VALUES (4, 1, 200, 1)
INSERT [dbo].[HE141283_ChauDM_OrderDetail] ([OrderID], [pID], [UnitPrice], [Quantity]) VALUES (4, 10, 180, 1)
/****** Object:  ForeignKey [FK_HE141283_ChauDM_OrderDetail_HE141283_ChauDM_Product]    Script Date: 03/08/2021 16:19:53 ******/
ALTER TABLE [dbo].[HE141283_ChauDM_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_HE141283_ChauDM_OrderDetail_HE141283_ChauDM_Product] FOREIGN KEY([pID])
REFERENCES [dbo].[HE141283_ChauDM_Product] ([id])
GO
ALTER TABLE [dbo].[HE141283_ChauDM_OrderDetail] CHECK CONSTRAINT [FK_HE141283_ChauDM_OrderDetail_HE141283_ChauDM_Product]
GO
/****** Object:  ForeignKey [FK_HE141283_ChauDM_Product_HE141283_ChauDM_Category]    Script Date: 03/08/2021 16:19:53 ******/
ALTER TABLE [dbo].[HE141283_ChauDM_Product]  WITH CHECK ADD  CONSTRAINT [FK_HE141283_ChauDM_Product_HE141283_ChauDM_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[HE141283_ChauDM_Category] ([cid])
GO
ALTER TABLE [dbo].[HE141283_ChauDM_Product] CHECK CONSTRAINT [FK_HE141283_ChauDM_Product_HE141283_ChauDM_Category]
GO
