-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2017 lúc 07:28 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(225) DEFAULT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `news_derc` longtext,
  `news_detail` longtext,
  `news_img` varchar(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `news_title`, `slug`, `news_derc`, `news_detail`, `news_img`, `created_at`, `updated_at`) VALUES
(1, 'Thuốc uống nở mông Major Curves Butt Enhancement', 'thuoc-uong-no-mong-major-curves-butt-enhancement', '<p><strong>Nhiều chị em phụ nữ đ&atilde; chi rất nhiều tiền trong việc l&agrave;m đẹp như tăng k&iacute;ch thước v&ograve;ng 1, h&uacute;t mỡ bụng để giảm v&ograve;ng 2, độn ngực, bơm ngực, ăn ki&ecirc;ng,&hellip;</strong></p>', '<p style=\"text-align:justify\">Nhiều chị em phụ nữ đ&atilde; chi rất nhiều tiền trong việc l&agrave;m đẹp như tăng k&iacute;ch thước v&ograve;ng 1, h&uacute;t mỡ bụng để giảm v&ograve;ng 2, độn ngực, bơm ngực, ăn ki&ecirc;ng,&hellip; nhưng họ qu&ecirc;n đi một điều l&agrave; một trong những yếu tố quyết định l&ecirc;n n&eacute;t đẹp, sự quyến rũ, sự gi&agrave;u sang của người phụ nữ l&agrave; v&ograve;ng 3 (v&ograve;ng m&ocirc;ng).<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&ograve;ng m&ocirc;ng căng tr&ograve;n gi&uacute;p phụ nữ tr&ocirc;ng quyến rũ hơn, đẹp hơn trong mọi trang phục.<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Một nghi&ecirc;n cứu mới đ&acirc;y của c&aacute;c nh&agrave; khoa học tại một trường đại học ở Thổ Nhĩ Kỳ th&igrave; đa phần đ&agrave;n &ocirc;ng đều th&iacute;ch phụ nữ c&oacute; v&ograve;ng 3 lớn, điều m&agrave; họ quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; độ cong giữa đoạn cột sống lưng v&agrave; v&ograve;ng 3. Theo nghi&ecirc;n cứu th&igrave; ở bất kỳ thời đại n&agrave;o người phụ nữ c&oacute; số đo v&ograve;ng 3 lớn lu&ocirc;n được coi trọng v&agrave; c&oacute; nhiều người theo đuổi. Tỉ lệ được đo l&agrave; 70% phụ nữ c&oacute; v&ograve;ng m&ocirc;ng to l&agrave; thu h&uacute;t được ph&aacute;i mạnh nhiều nhất.<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Theo b&oacute;i tướng số th&igrave; v&ograve;ng m&ocirc;ng của người phụ nữ l&agrave; một trong những yếu tố quyết định tương lai, vận mệnh. Phụ nữ c&oacute; v&ograve;ng m&ocirc;ng to, căng tr&ograve;n thường t&iacute;ch tụ nhiều t&agrave;i sản, v&agrave; thường c&oacute; số mệnh gi&agrave;u sang hơn những người phụ nữ c&oacute; m&ocirc;ng l&eacute;p.<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Từ thời xa xưa c&aacute;c cụ thường để &yacute; tới v&ograve;ng 3 của người con g&aacute;i mỗi khi lựa chọn con d&acirc;u. Bởi theo quan niệm rằng những người phụ nữ c&oacute; tướng m&ocirc;ng to h&aacute;ng rộng thường c&oacute; khả năng sinh nở dễ d&agrave;ng, t&iacute;nh c&aacute;ch dễ gần điềm đạm tr&iacute; tuệ th&ocirc;ng minh.<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Theo nghi&ecirc;n cứu khảo s&aacute;t của một trường đại học Mỹ th&igrave; những ai c&oacute; v&ograve;ng 3 to thường th&ocirc;ng minh hơn, chỉ số IQ vượt trội hơn hẳn. X&eacute;t về mặt nh&acirc;n tướng học th&igrave; v&ograve;ng 3 cũng quyết định một phần kh&ocirc;ng nhỏ.</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><br />\r\n<img alt=\"\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/vong-mong-dep.jpg\" style=\"border:none; height:390px; margin:0px; max-width:100%; padding:0px; width:520px\" /></div>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Ch&iacute;nh v&igrave; vậy m&agrave; v&ograve;ng m&ocirc;ng căng tr&ograve;n l&agrave; mơ ước của rất nhiều chị em phụ nữ, nhưng l&agrave;m g&igrave; để c&oacute; được v&ograve;ng 3 căng tr&ograve;n??? Thuốc uống nở m&ocirc;ng Major Curves Butt Enhancement l&agrave; sản phẩm gi&uacute;p bạn tăng k&iacute;ch thước v&ograve;ng 3 tốt nhất hiện nay.<br />\r\n<br />\r\nSản phẩm đ&atilde; được nhiều phụ nữ Mỹ tin d&ugrave;ng v&agrave; lựa chọn trong việc l&agrave;m đẹp, được chiết xuất 100% từ thi&ecirc;n nhi&ecirc;n, được GMP cấp giấy ph&eacute;p sản xuất tại Mỹ, được FDA kiểm định về t&iacute;nh hiệu quả cũng như độ an to&agrave;n cho sức khỏe người d&ugrave;ng.<br />\r\n<br />\r\n<br />\r\n<span style=\"font-size:14px\"><span style=\"color:rgb(218, 165, 32)\"><strong>Th&agrave;nh phần của&nbsp;<a href=\"http://www.cuahangthucphamchucnang.com/thuc-pham-chuc-nang/nang-mong-no-mong/vien-uong-no-mong-major-curves-butt-enhancement.html\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(87, 87, 87); text-decoration-line: none;\">Thuốc uống nở m&ocirc;ng</a>&nbsp;Major Curves Butt Enhancement</strong></span></span><br />\r\n<strong>Th&agrave;nh phần ch&iacute;nh</strong><br />\r\nSaw Palmetto Berries, Hạt cỏ c&agrave; ri, Hạt c&acirc;y th&igrave; l&agrave;, C&acirc;y tỳ giải Mexico, C&acirc;y &ocirc; r&ocirc;, L-Tyrosine, Tảo bẹ (nguy&ecirc;n c&acirc;y), Đương quy (Rễ), C&acirc;y ngải cứu<br />\r\n&nbsp;<br />\r\n<strong>C&aacute;c th&agrave;nh phần kh&aacute;c</strong><br />\r\nGelatin, Magnesium Stearate<br />\r\n&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><a href=\"http://www.cuahangthucphamchucnang.com/thuc-pham-chuc-nang/nang-mong-no-mong/vien-uong-no-mong-major-curves-butt-enhancement.html\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(87, 87, 87); text-decoration-line: none;\">&nbsp;<img alt=\"\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/Major-Curves1.jpg\" style=\"border:none; height:345px; margin:0px; max-width:100%; padding:0px; width:361px\" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(218, 165, 32)\"><strong>C&ocirc;ng dụng của Thuốc uống nở m&ocirc;ng Major Curves Butt Enhancement</strong></span></span><br />\r\n&ndash; Th&uacute;c đẩy qu&aacute; tr&igrave;nh tập trung v&agrave; lưu trữ chất b&eacute;o tại m&ocirc;ng v&agrave; đ&ugrave;i.<br />\r\n&ndash; K&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh trao đổi chất, tăng tổng hợp m&ocirc; mỡ ở phần m&ocirc;ng.<br />\r\n&ndash; L&agrave;m săn chắc v&ugrave;ng m&ocirc;ng, gi&uacute;p m&ocirc;ng tr&ograve;n v&agrave; gọn hơn, kh&ocirc;ng bị chảy xệ.<br />\r\n&ndash; Gi&uacute;p eo thon nhỏ hơn, tạo hiệu ứng v&ograve;ng 3 v&agrave; v&ograve;ng 1 lớn hơn.<br />\r\nVới Major Curves, bạn sẽ nhanh ch&oacute;ng c&oacute; được v&ograve;ng m&ocirc;ng nảy nở, v&ograve;ng eo thon gọn, th&acirc;n h&igrave;nh cực chuẩn, tha hồ diện những bộ đồ b&oacute; s&aacute;t đầy quyến rũ.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><img alt=\"\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/thuoc-no-mong.png\" style=\"border:none; height:299px; margin:0px; max-width:100%; padding:0px; width:520px\" /></div>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(218, 165, 32)\"><strong>C&aacute;ch sử dụng để mang lại hiệu quả như mong đợi</strong></span></span><br />\r\nUống 1 vi&ecirc;n v&agrave;o buổi s&aacute;ng v&agrave; 1 vi&ecirc;n v&agrave;o buổi tối, sau khi ăn. Kh&ocirc;ng được uống qu&aacute; liều.<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n<span style=\"font-size:14px\"><strong><span style=\"color:rgb(218, 165, 32)\">Cảnh b&aacute;o đối với người d&ugrave;ng</span></strong></span><br />\r\n- Phụ nữ mang thai v&agrave; cho con b&uacute; kh&ocirc;ng được sử dụng Major Curves<br />\r\n-N&ecirc;n tham khảo &yacute; kiến của b&aacute;c sỹ trước khi sử dụng nếu bạn đang d&ugrave;ng bất cứ loại thuốc n&agrave;o hoặc phải đảm bảo c&aacute;c điều kiện chữa trị kh&aacute;c<br />\r\n-Sản phẩm n&agrave;y chỉ l&agrave; thực phẩm chức năng hỗ trợ chứ kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng chẩn đo&aacute;n, điều trị, chữa bệnh, hoặc ngăn chặn bất cứ bệnh n&agrave;o<br />\r\n&nbsp;<br />\r\n<br />\r\n<span style=\"font-size:14px\"><span style=\"color:rgb(218, 165, 32)\"><strong>M&ocirc; tả c&aacute;c th&agrave;nh phần trong Thuốc uống nở m&ocirc;ng Major Curves Butt Enhancement</strong></span></span><br />\r\n&nbsp;<br />\r\n<span style=\"color:rgb(0, 128, 0); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\"><strong>Bột cọ l&ugrave;n (Giống Bắc Mỹ) - Saw Palmetto</strong></span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">Tinh chất trong c&acirc;y Cọ l&ugrave;n gi&uacute;p c&acirc;n bằng hormon sinh l&yacute; nữ, đ&oacute;ng vai tr&ograve; như một chất k&iacute;ch th&iacute;ch c&aacute;c tế b&agrave;o cơ m&ocirc;ng ph&aacute;t triển một c&aacute;ch tự nhi&ecirc;n, nảy nở v&agrave; căng tr&ograve;n. Chỉ c&oacute; giống cọ l&ugrave;n mọc tại Bắc Mỹ mới c&oacute; hoạt chất đặc biệt n&agrave;y.</span></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\">&nbsp;<br />\r\n<img alt=\"Bột cọ lùn\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/cay-co-lun.jpg\" style=\"border:none; height:337px; margin:0px; max-width:100%; padding:0px; width:500px\" /></div>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 128, 0); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\"><strong>Hạt Hồ L&ocirc; B&aacute; (Fenugreek seed), hạt c&acirc;y th&igrave; l&agrave; (Fennel seed) v&agrave; C&acirc;y sắn nước (Wild Mexican Yam)</strong></span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">3 thảo dược tr&ecirc;n rất gi&agrave;u Phyto-estrogen, hỗ trợ sản sinh Estrogen, yếu tố kh&ocirc;ng thể thiếu gi&uacute;p tạo ra đường cong v&agrave; sự ph&aacute;t triển v&ograve;ng 3 của nữ giới. Phyto-estrogen được xem l&agrave; bản sao của hormon estrogen nữ nhưng c&oacute; nguồn gốc từ tự nhi&ecirc;n v&agrave; c&oacute; t&aacute;c động tương tự như estrogen nội sinh. Đ&acirc;y l&agrave; nguồn bổ sung estrogen hiệu quả g&oacute;p phần ph&aacute;t triển v&ograve;ng 3, gi&uacute;p v&ograve;ng 3 căng tr&ograve;n nảy nở.</span></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\">&nbsp;<br />\r\n<img alt=\"Hạt Hồ Lô Bá (Fenugreek seed)\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/hat-ho-lo-la.jpg\" style=\"border:none; height:327px; margin:0px; max-width:100%; padding:0px; width:405px\" /><br />\r\n<em>Hạt Hồ L&ocirc; B&aacute; (Fenugreek seed)</em></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\"><br />\r\n<br />\r\n<img alt=\"Hạt cây thì là (Fennel seed)\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/hat-cay-thi-la.jpg\" style=\"border:none; height:270px; margin:0px; max-width:100%; padding:0px; width:405px\" /><br />\r\n<em>Hạt c&acirc;y th&igrave; l&agrave; (Fennel seed)</em><br />\r\n<br />\r\n<img alt=\"Cây sắn nước (Wild Mexican Yam)\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/cay-san-nuoc.jpg\" style=\"border:none; height:516px; margin:0px; max-width:100%; padding:0px; width:405px\" /><br />\r\n<em>C&acirc;y sắn nước (Wild Mexican Yam)</em><br />\r\n&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 128, 0); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\"><strong>C&uacute;c gai (Blessed Thistle)</strong></span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">Đ&oacute;ng vai tr&ograve; như chất hỗ trợ ti&ecirc;u h&oacute;a v&agrave; ăn ki&ecirc;ng, tăng cường khả năng trao đổi chất của đường ruột. Gi&uacute;p bạn giữ được một chế độ ăn uống hợp l&yacute; trong qu&aacute; tr&igrave;nh tăng trưởng v&ograve;ng m&ocirc;ng. Bạn kh&ocirc;ng thể c&oacute; một v&ograve;ng 3 săn chắc v&agrave; căng tr&ograve;n nếu ăn uống v&ocirc; độ.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\"><br />\r\n<img alt=\"Cúc gai (Blessed Thistle)\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/cuc-gai.jpg\" style=\"border:none; height:327px; margin:0px; max-width:100%; padding:0px; width:405px\" /><br />\r\n<em>C&uacute;c gai (Blessed Thistle)</em></div>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">&nbsp;</span><br />\r\n<span style=\"color:rgb(0, 128, 0); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\"><strong>L-Tyrosine</strong></span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">Một loại Amino Acid từ thi&ecirc;n nhi&ecirc;n đ&oacute;ng vai tr&ograve; kiểm so&aacute;t sự sản sinh nội tiết tố nữ. C&aacute;c nghi&ecirc;n cứu c&ograve;n cho thấy, L-Tyrosine c&ograve;n gi&uacute;p ph&aacute;t triển cơ bắp v&agrave; giảm mỗ thừa. Trong trường hợp của Major Curve, L-Tyrosine kh&ocirc;ng chỉ gi&uacute;p cơ v&ugrave;ng m&ocirc;ng săn chắc hơn m&agrave; c&ograve;n gi&uacute;p bạn c&oacute; một v&ograve;ng eo &quot;đồng hồ c&aacute;t&quot;.</span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">&nbsp;</span></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\"><img alt=\"\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/L-Tyrosine.jpg\" style=\"border:none; height:340px; margin:0px; max-width:100%; padding:0px; width:450px\" /></div>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 128, 0); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\"><strong>Tảo biển</strong></span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">Hỗ trợ giảm c&acirc;n v&agrave; l&agrave; thực đơn kh&ocirc;ng thể thiếu trong c&aacute;c chế độ ăn ki&ecirc;ng. Đ&acirc;y l&agrave; qu&aacute; tr&igrave;nh bạn &quot;siết&quot; lại cơ m&ocirc;ng cũng như v&ograve;ng eo để c&oacute; một th&acirc;n h&igrave;nh ho&agrave;n mỹ nhất.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\"><br />\r\n<img alt=\"Tảo biển\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/tao-bien.jpg\" style=\"border:none; height:272px; margin:0px; max-width:100%; padding:0px; width:405px\" /><br />\r\n<em>Tảo biển</em></div>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:rgb(0, 128, 0); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\"><strong>Rễ c&acirc;y Đương Quy</strong></span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">Gi&uacute;p điều tiết hormon estrogen v&agrave; k&iacute;ch th&iacute;ch c&aacute;c tế b&agrave;o cơ m&ocirc;ng ph&aacute;t triển, nảy nở.</span><br />\r\n<span style=\"color:rgb(50, 50, 50); font-family:tahoma,verdana,geneva,sans-serif; font-size:13px\">&nbsp;</span></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: tahoma, Verdana, Geneva, sans-serif; text-align: center;\"><img alt=\"Rễ cây Đương Quy\" src=\"http://www.cuahangthucphamchucnang.com/kcfinder/upload/images/cay-duong-quy.jpg\" style=\"border:none; height:301px; margin:0px; max-width:100%; padding:0px; width:405px\" /><br />\r\n<em>Rễ c&acirc;y Đương Quy</em></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><br />\r\n<br />\r\n<em><u><strong>Lưu ý</strong></u></em>: Hi&ecirc;̣u quả/C&ocirc;ng dụng có th&ecirc;̉ khác nhau tùy theo th&ecirc;̉ trạng/cơ địa m&ocirc;̃i người. Do đó, các bạn hãy li&ecirc;n h&ecirc;̣ trực ti&ecirc;́p đ&ecirc;̉ được tư v&acirc;́n rõ hơn</div>', 'joyqj8-vong-mong-dep.jpg', '2017-11-28 20:01:39', '2017-11-28 20:29:34'),
(2, 'Giảm cân bằng hạt chia hiệu quả, dễ thực hiện', 'giam-can-bang-hat-chia-hieu-qua-de-thuc-hien', '<p><strong>Giảm c&acirc;n lu&ocirc;n l&agrave; vấn đề n&oacute;ng được nhiều người quan t&acirc;m. Tuy nhi&ecirc;n, đối với nhiều người th&igrave; việc giảm c&acirc;n kh&ocirc;ng hề dể, nhất l&agrave; những người bệnh huyết &aacute;p, tim mạch nặng, th&igrave; việc giảm c&acirc;n bằng c&aacute;ch d&ugrave;ng thuốc giảm c&acirc;n l&agrave; kh&ocirc;ng n&ecirc;n ch&uacute;t n&agrave;o, v&igrave; nhiều loại thuốc giảm c&acirc;n l&agrave;m cho người c&oacute; bệnh tim mạch, huyết &aacute;p sẽ cảm thấy rất mệt, tim đập loạn, kh&oacute; thở,&hellip;</strong></p>', '<p style=\"text-align:justify\">H&ocirc;m nay, ch&uacute;ng t&ocirc;i xin giới thiệu đến c&aacute;c bạn phương ph&aacute;p giảm c&acirc;n bằng hạt chia, tuyệt đối an to&agrave;n, th&iacute;ch hợp cho mọi đối tượng, từ trẻ em đến người gi&agrave;, người c&oacute; bệnh, người vừa mới sinh xong,&hellip; th&igrave; đều c&oacute; thế &aacute;p dụng c&aacute;ch giảm c&acirc;n bằng hạt chia.<br />\r\n<br />\r\n<span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 255)\"><strong>T&igrave;m hiều về hạt chia</strong></span></span><br />\r\nHạt chia l&agrave; hạt rất nhỏ, c&oacute; h&igrave;nh d&aacute;ng giống như hạt &eacute; hoặc hạt m&egrave;. Hạt chia được lấy từ c&acirc;y chia, c&acirc;y c&oacute; nguồn gốc ở Trung v&agrave; Nam Mỹ, nay được trồng rất nhiều ở Ch&acirc;u &Uacute;c v&agrave; Ch&acirc;u Mỹ. C&acirc;y chia c&oacute; dầu thực vật m&agrave; c&aacute;c loại s&acirc;u bọ đều kh&ocirc;ng th&iacute;ch dầu thực vật n&ecirc;n c&acirc;y chia được trồng bằng phương ph&aacute;p hữu cơ, kh&ocirc;ng h&oacute;a chất, kh&ocirc;ng thuốc trừ s&acirc;u, kh&ocirc;ng thuốc diệt cỏ, tuyệt đối an to&agrave;n với người sử dụng.<br />\r\nHạt chia c&oacute; h&agrave;m lượng Omega 3 cao hơn rất nhiều lần so với c&aacute;c lo&agrave;i động thực vật kh&aacute;c, ngo&agrave;i h&agrave;m lượng lớn Omega 3 hạt chia c&ograve;n chứa rất nhiều Vitamin v&agrave; kho&aacute;ng chất cần thiết cho con người như chất xơ, canxi, sắt, Magie, Phốt pho, natri, đường, chất b&eacute;o kh&ocirc;ng bảo h&ograve;a, omega 6,&hellip; C&oacute; thể n&oacute;i hạt chia được xem l&agrave; thực phẩm qu&yacute; m&agrave; thi&ecirc;n nhi&ecirc;n ban tặng cho con người. Nhiều c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu chỉ ra rằng, mỗi ng&agrave;y d&ugrave;ng 1 ly hạt chia bạn sẽ c&oacute; được sức khỏe to&agrave;n diện, kh&ocirc;ng những gi&uacute;p bạn ổn định c&acirc;n nặng m&agrave; c&ograve;n gi&uacute;p da trắng hồng, ph&ograve;ng chống được c&aacute;c bệnh huyết &aacute;p, tim mạch,&hellip;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><br />\r\n<img alt=\"\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/hat-chia-4.jpg\" style=\"border:none; height:500px; margin:0px; max-width:100%; padding:0px; width:500px\" /></div>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 255)\"><strong>C&aacute;ch giảm c&acirc;n bằng hạt chia</strong></span></span><br />\r\nC&oacute; rất nhiều phương ph&aacute;p giảm c&acirc;n bằng hạt chia. Những người &aacute;p dụng phương ph&aacute;p giảm c&acirc;n theo chế độ lowcarb th&igrave; n&ecirc;n d&ugrave;ng hạt chia để bổ sung năng lượng. Trong giai đoạn đầu &aacute;p dụng giảm c&acirc;n theo chế độ lowcarb, bạn sẽ c&oacute; cảm gi&aacute;c đ&oacute;i v&agrave; them ngọt, l&uacute;c n&agrave;y hạt chia được xem l&agrave; si&ecirc;u thực phẩm gi&uacute;p bổ sung năng lượng kh&ocirc;ng chứa carb. Ở nhiều quốc gia, hạt chia được xem như l&agrave; thần dược gi&uacute;p tăng cường năng lượng, ổn định c&acirc;n nặng, l&agrave;m đẹp da, trẻ h&oacute;a da, ph&ograve;ng chống c&aacute;c b&ecirc;n như huyết &aacute;p, tim mạch,&hellip; V&igrave; vậy, việc d&ugrave;ng hạt chia sẽ gi&uacute;p bạn giảm cảm gi&aacute;c th&egrave;m ăn, m&agrave; cơ thể vẫn c&oacute; đủ năng lượng, nhờ đ&oacute; việc giảm c&acirc;n được hiệu quả.<br />\r\n<br />\r\nNếu muốn được giảm c&acirc;n hiệu quả theo phương ph&aacute;p sử dụng hạt chia th&igrave; n&ecirc;n ăn theo chế độ lowcarb, cắt giảm lượng tinh bột, ăn nhiều thịt, rau v&agrave; tr&aacute;i c&acirc;y, bổ sung th&ecirc;m hạt chia khi cơ thể cảm thấy đ&oacute;i, chăm chỉ tập thể dục bằng c&aacute;ch đi bộ. Đi bộ 1 ng&agrave;y 3 lần, mỗi lần 30 ph&uacute;t. Nhiều người đ&atilde; &aacute;p dụng phương ph&aacute;p n&agrave;y v&agrave; kết quả l&agrave; đ&atilde; giảm được 10kg trong 2 th&aacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><br />\r\n<img alt=\"\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/hat-chia-5.jpg\" style=\"border:none; height:286px; margin:0px; max-width:100%; padding:0px; width:432px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Cho 2-4 muỗng caphe hạt chia v&agrave;o nước lọc rồi khuấy đều, để khoảng 10 ph&uacute;t bạn sẽ c&oacute; nước uống hạt chia rất ngon. C&oacute; thể bỏ hạt chia v&agrave;o sinh tố, nước tr&aacute;i c&acirc;y, yahourt, bạn sẽ c&oacute; được c&aacute;c loại nước uống rất ngon. Hạt chia c&oacute; thể d&ugrave;ng để chế biến c&aacute;c m&oacute;n ăn như cach, ch&aacute;o, s&uacute;p hoặc trộn gỏi, cho v&agrave;o salad</p>', 'Pd5Vcn-giam-can-bang-hat-chia.jpg', '2017-11-28 20:07:37', '2017-11-29 03:53:50'),
(3, 'Cách hổ trợ điều trị bệnh gút hiệu quả', 'cach-chua-benh-gut-hieu-qua', '<p><strong>G&uacute;t l&agrave; bệnh rối loạn chuyển h&oacute;a purin g&acirc;y tăng acid uric. Bệnh nặng c&oacute; thể ph&aacute; hủy, biến dạng khớp, đồng thời l&agrave;m suy giảm chức năng gan, suy thận, rối loạn mỡ m&aacute;u, tiểu đường, tăng huyết &aacute;p... thường k&eacute;o theo những cơn đau rất kh&oacute; chịu, triệu chứng l&agrave; sưng, đỏ, đau, cứng khớp ở c&aacute;c ng&oacute;n ch&acirc;n, mắt c&aacute; ch&acirc;n, đầu gối, cổ tay, ng&oacute;n tay...</strong></p>', '<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Ng&agrave;y nay, bệnh Gout rất phổ biến v&igrave; l&yacute; do ăn uống sinh hoạt hằng ng&agrave;y. Đối tượng thường mắc bệnh Gout l&agrave; nam giới tuổi tr&ecirc;n 30 v&agrave; thường xuy&ecirc;n d&ugrave;ng bia rượu, ăn hải sản v&agrave; thịt đỏ. Gout l&agrave; một dạng vi&ecirc;m khớp g&acirc;y đau đớn nhất. C&aacute;c cơn đau c&oacute; thể xuất hiện sau v&agrave;i th&aacute;ng hay v&agrave;i năm n&ecirc;n nhiều người mắc bệnh lầm tưởng bệnh đ&atilde; khỏi n&ecirc;n khi t&aacute;i ph&aacute;t c&agrave;ng trầm trọng v&agrave; kh&oacute; điều trị hơn.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Bệnh gout g&acirc;y ra nhiều biến chứng nguy hiểm v&agrave; khổ sở cho người bị bệnh. Người bệnh đau đớn chống chọi, trong khi phải ki&ecirc;ng khem đủ thứ, nay nếu c&oacute; biến chứng khiến bệnh lại c&agrave;ng phức tạp hơn nữa. Bản chất của c&aacute;c hạt tophy l&agrave; tinh thể urat. Hạt tophy c&oacute; khả năng l&agrave;m biến dạng c&aacute;c khớp, do đ&oacute; dần dần sẽ l&agrave;m hạn chế vận động của khớp, đi lại kh&oacute; khăn, nặng hơn nữa l&agrave; g&acirc;y t&agrave;n phế. C&aacute;c hạt tophy c&oacute; thể bị vỡ khiến vi khuẩn x&acirc;m nhập khớp g&acirc;y vi&ecirc;m khớp nhiễm khuẩn, nhiễm khuẩn huyết rất nguy hiểm. Bệnh g&uacute;t mạn t&iacute;nh c&oacute; thể g&acirc;y lắng đọng muối urat trong thận tạo th&agrave;nh sỏi thận, do đ&oacute;, c&oacute; thể l&agrave;m tăng nguy cơ thận ứ nước, ứ mủ g&acirc;y suy thận, tăng huyết &aacute;p. Một số trường hợp chất urat c&ograve;n lắng đọng ở dưới da tạo n&ecirc;n c&aacute;c u, cục g&acirc;y đau v&agrave; mất thẩm mỹ.&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><br />\r\nM&ocirc;̣t trong những cách hỗ trợ điều trị b&ecirc;̣nh gút hi&ecirc;̣u quả từ những thực phẩm hết sức b&igrave;nh d&acirc;n đ&oacute; ch&iacute;nh l&agrave; đậu xanh mà kh&ocirc;ng phải ai cũng bi&ecirc;́t đ&ecirc;́n.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><br />\r\nĐậu xanh c&oacute; thể hỗ trợ điều trị bệnh gout do trong đậu xanh c&oacute; nhiều chất xơ gi&uacute;p l&agrave;m chậm qu&aacute; tr&igrave;nh hấp thu đạm, l&agrave;m giảm qu&aacute; tr&igrave;nh tho&aacute;i h&oacute;a biến đạm để sinh năng lượng n&ecirc;n giảm sự h&igrave;nh th&agrave;nh acid uric trong cơ thể g&acirc;y ra bệnh gout.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Đậu xanh cũng c&oacute; t&aacute;c dụng kh&aacute;ng vi&ecirc;m cao, cung cấp đậu xanh trong bữa ăn h&agrave;ng ng&agrave;y vừa gi&uacute;p bổ sung chất dinh dưỡng cho cơ thể, vừa c&oacute; t&aacute;c dụng gi&uacute;p ph&ograve;ng ngừa v&agrave; giảm vi&ecirc;m do gout g&acirc;y ra một c&aacute;ch hiệu quả.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 255)\"><strong>D&ugrave;ng đậu xanh hỗ trợ điều trị b&ecirc;̣nh gout&nbsp;</strong></span></span></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Khi chế biến c&aacute;c m&oacute;n từ đậu xanh c&oacute; rất nhiều người c&oacute; th&oacute;i quen lọc v&agrave; &nbsp;bỏ vỏ. Tuy nhi&ecirc;n, theo c&aacute;c chuy&ecirc;n gia dinh dưỡng, vỏ c&aacute;c loại đậu đỗ mới thực sự c&oacute; t&aacute;c dụng ch&iacute;nh trong việc giải độc. V&igrave; thế, khi ăn, kh&ocirc;ng n&ecirc;n bỏ vỏ.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><img alt=\"\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/qua%20dau%20xanh.jpg\" style=\"border:none; height:375px; margin:0px; max-width:100%; padding:0px; width:500px\" /></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><em><u><strong>C&aacute;ch chế biến:</strong></u></em></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Đậu xanh để nguy&ecirc;n vỏ, ninh nhừ, (kh&ocirc;ng cho th&ecirc;m gia vị). S&aacute;ng ngủ dậy ăn một b&aacute;t thay ăn s&aacute;ng. Tối trước khi đi ngủ ăn một b&aacute;t. Ăn li&ecirc;n tục như vậy trong 30 ng&agrave;y. T&ugrave;y v&agrave;o khẩu vị của từng người m&agrave; c&oacute; thể nấu kh&ocirc; hoặc nh&atilde;o.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Gout l&agrave; một bệnh rối loạn về chuyển h&oacute;a acid uric trong cơ thể n&ecirc;n cần ki&ecirc;ng khem kỹ v&agrave; qu&aacute; tr&igrave;nh trị bệnh k&eacute;o d&agrave;i. Do vậy khi d&ugrave;ng đậu xanh hỗ trợ điều trị bệnh gout trong một khoảng thời gian d&agrave;i như vậy về chi ph&iacute; th&igrave; kh&ocirc;ng đ&aacute;ng kể nhưng cần sự ki&ecirc;n tr&igrave; v&agrave; quyết t&acirc;m của mỗi người bởi đậu xanh ăn nhiều dễ ng&aacute;n.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><br />\r\n<span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 255)\"><strong>Trong qu&aacute; tr&igrave;nh điều trị bệnh gout bằng đậu xanh cần lưu &yacute; g&igrave;?</strong></span></span></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- C&oacute; chế độ dinh dưỡng ph&ugrave; hợp, ăn uống điều độ, kh&ocirc;ng bỏ bữa hoặc nhịn đ&oacute;i.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Tr&aacute;nh xa c&aacute;c chất k&iacute;ch th&iacute;ch như rượu bia, nước ch&egrave; v&agrave; những đồ uống c&oacute; ga v&igrave; những loại đồ uống n&agrave;y sẽ khiến t&igrave;nh trạng bệnh trở n&ecirc;n nghi&ecirc;m trọng hơn.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Uống nhiều nước trong ng&agrave;y để thải bớt lượng acid uric thừa trong cơ thể.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Ăn nhiều rau xanh v&agrave; hoa quả.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Duy tr&igrave; chế độ luyện tập thể thao, những b&agrave;i tập gi&agrave;nh ri&ecirc;ng cho bệnh nh&acirc;n gout.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Cẩn trọng đối với người bị huyết &aacute;p thấp do đậu xanh c&oacute; t&aacute;c dụng l&agrave;m hạ huyết &aacute;p. Cần bổ sung c&aacute;c đồ uống kh&aacute;c b&ugrave; lại để duy tr&igrave; huyết &aacute;p ổn định.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Sau một thời gian d&ugrave;ng đậu xanh điều trị n&ecirc;n đi kh&aacute;m lại để theo d&otilde;i t&igrave;nh trạng bệnh của m&igrave;nh.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">Ngoài ra đ&ecirc;̉ điều trị b&ecirc;̣nh gout bạn dùng k&ecirc;́t hợp với thuốc trị gout Wealthy Health Super Urinary Gout Support trị vi&ecirc;m khớp, sưng khớp thường đi c&ugrave;ng nhau v&igrave; c&ugrave;ng l&yacute; do sự rối loạn cuả chất Acid uric đ&atilde; kết tụ tại c&aacute;c khớp xương v&agrave; g&acirc;n xung quanh l&agrave;m sưng v&agrave; g&acirc;y đau nhức cho người bệnh.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: center;\"><img alt=\"Wealthy Health Super Urinary Gout Support\" src=\"http://cuahangthucphamchucnang.com/kcfinder/upload/images/thuoc-tri-gout.jpg\" style=\"border:none; height:340px; margin:0px; max-width:100%; padding:0px; width:340px\" /></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><strong>C&ocirc;ng dụng thuốc hỗ trợ điều trị gout&nbsp;<a href=\"http://www.cuahangthucphamchucnang.com/thuc-pham-chuc-nang/bo-xuong-khop/thuoc-tri-gout-wealthy-health-super-urinary-gout-support.html\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(87, 87, 87); text-decoration-line: none;\">Wealthy Health Super Urinary Gout Support</a>:</strong></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- L&agrave;m giảm c&aacute;c triệu chứng của bệnh Gout và th&acirc;́p khớp.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Hỗ trợ v&agrave; duy tr&igrave; sức khỏe của đường tiết niệu v&agrave; b&agrave;ng quang.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- C&oacute; thể hỗ trợ trong việc l&agrave;m giảm c&aacute;c chứng sổ nước, chất nhờn dư thừa.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Kẽm hỗ trợ c&acirc;n bằng l&agrave;nh mạnh hormone, nam &amp; sức khỏe sinh sản nữ, chức năng mắt khỏe mạnh, qu&aacute; tr&igrave;nh t&aacute;i tạo da v&agrave; duy tr&igrave; l&agrave;n da khỏe mạnh.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Kẽm hỗ trợ sức khỏe của hệ thống sinh sản nam giới.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- C&oacute; thể gi&uacute;p l&agrave;m giảm mức độ nghi&ecirc;m trọng v&agrave; thời gian của c&aacute;c triệu chứng của cảm lạnh.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Magi&ecirc; đ&oacute;ng một vai tr&ograve; quan trọng trong hoạt động tế b&agrave;o, tổng hợp protein, truyền thần kinh cơ.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">- Artemisia annua đ&atilde; được sử dụng truyền thống trong hạ sốt nhẹ.</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; text-align: justify;\"><em><u><strong>Lưu ý:</strong></u></em>&nbsp;Hi&ecirc;̣u quả/C&ocirc;ng dụng có th&ecirc;̉ khác nhau tùy theo th&ecirc;̉ trạng/cơ địa m&ocirc;̃i người. Do đó, các bạn hãy li&ecirc;n h&ecirc;̣ trực ti&ecirc;́p đ&ecirc;̉ được tư v&acirc;́n rõ hơn</div>', 'xWqlU7-cach-chua-benh-gut-hieu-qua.jpg', '2017-11-28 20:33:45', '2017-11-28 20:33:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optiongroups`
--

CREATE TABLE `optiongroups` (
  `OptionGroupID` int(11) NOT NULL,
  `OptionGroupName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Đang đổ dữ liệu cho bảng `optiongroups`
--

INSERT INTO `optiongroups` (`OptionGroupID`, `OptionGroupName`) VALUES
(1, 'color'),
(2, 'size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `OptionID` int(11) NOT NULL,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES
(1, 1, 'red'),
(2, 1, 'blue'),
(3, 1, 'green'),
(4, 2, 'S'),
(5, 2, 'M'),
(6, 2, 'L'),
(7, 2, 'XL'),
(8, 2, 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `DetailID` int(11) NOT NULL,
  `DetailOrderID` int(11) NOT NULL,
  `DetailProductID` int(11) NOT NULL,
  `DetailName` varchar(250) COLLATE latin1_german2_ci NOT NULL,
  `DetailPrice` float NOT NULL,
  `DetailSKU` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `DetailQuantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderUserID` int(11) NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress2` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderCity` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderState` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderZip` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderCountry` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderPhone` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderFax` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipping` float NOT NULL,
  `OrderTax` float NOT NULL,
  `OrderEmail` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderShipped` tinyint(1) NOT NULL DEFAULT '0',
  `OrderTrackingNumber` varchar(80) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcategories`
--

CREATE TABLE `productcategories` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(225) CHARACTER SET utf8 NOT NULL,
  `CategorySlug` varchar(225) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Đang đổ dữ liệu cho bảng `productcategories`
--

INSERT INTO `productcategories` (`id`, `CategoryName`, `CategorySlug`) VALUES
(1, 'Thực phẩm chức năng', 'thuc-pham-chuc-nang'),
(2, 'Mỹ phẩm', 'my-pham'),
(3, 'Dinh dưỡng quý', 'dinh-duong-quy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productoptions`
--

CREATE TABLE `productoptions` (
  `ProductOptionID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL,
  `OptionID` int(10) UNSIGNED NOT NULL,
  `OptionPriceIncrement` double DEFAULT NULL,
  `OptionGroupID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Đang đổ dữ liệu cho bảng `productoptions`
--

INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES
(1, 1, 1, 0, 1),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 1),
(4, 1, 4, 0, 2),
(5, 1, 5, 0, 2),
(6, 1, 6, 0, 2),
(7, 1, 7, 2, 2),
(8, 1, 8, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Product_name` varchar(225) NOT NULL,
  `Slug` varchar(225) NOT NULL,
  `Product_Price` float NOT NULL,
  `Product_Derc` longtext NOT NULL,
  `Product_Detail` longtext,
  `Product_Img` varchar(225) NOT NULL,
  `Product_Cate` int(11) NOT NULL,
  `Product_SubCate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `Product_name`, `Slug`, `Product_Price`, `Product_Derc`, `Product_Detail`, `Product_Img`, `Product_Cate`, `Product_SubCate`) VALUES
(1, 'Nước uống đẹp da Be-Max 2020', 'nuoc-uong-dep-da-be-max-2020', 3500000, 'Nước uống Be-Max 2020 bổ sung 125 dưỡng chất giúp tăng cường sức đề kháng, tái tạo năng lượng, chống lại gốc tự do gây lão hoá, thiết lập lại mạng lưới collagen bên trong cơ thể giúp tổ chức cấu tạo tế bào trở nên vững chắc và khoẻ mạnh.', NULL, 'timthumb.jpg', 2, 5),
(4, 'Viên uống trắng da Crystal Tomato', 'vien-uong-trang-da-crystal-tomato', 5000000, 'Crystal Tomato là sản phẩm đột phá trong công nghệ dưỡng trắng da, bổ sung những tinh chất giúp dưỡng trắng da từ sâu bên trong.', NULL, 'aMFRk5-vien-uong-trang-da.jpg', 2, 5),
(7, 'Viên uống chống nắng Be-Max The Sun', 'vien-uong-chong-nang-be-max-the-sun', 2000000, 'Viên uống chống nắng Be-Max The Sun mang đến giải pháp hoàn hảo giúp da bạn chống lại tác hại của ánh nắng mặt trời, đem đến cho bạn làn da trắng sáng, khỏe mạnh.', NULL, 'RxhUR8-vien-uong-chong-nang-be-max-the-sun.jpg', 2, 5),
(8, 'Viên uống trắng da Beauty Skin', 'vien-uong-trang-da-beauty-skin', 900000, 'Viên uống trắng da BEAUTY SKIN là sự kết hợp các công nghệ tiên tiến nhất có các thành phần hoạt tính làm ức chế enzyme tham gia vào quá trình sản xuất melanin từ đó giúp kiểm soát sự hình thành hắc sắc tố, gia tăng độ ẩm, độ đàn hồi của da cho bạn làn da trắng sáng mịn màng.', NULL, 'gMBJVj-vien-uong-trang-da-beauty-skin.jpg', 2, 5),
(9, 'Trà thải độc cơ thể', 'giam-can/tra-thai-doc-co-the', 47000, 'Trà thải độc cơ thể hay còn gọi là trà thải độc ruột nature\'s tea - loại bỏ những cặn bã thức ăn bám vào thành ruột, giúp hạn hạn chế được bệnh tật.', NULL, 'PsJ79n-tra-thai-doc-co-the.jpg', 1, 1),
(10, 'Viên giảm cân 30 Days Waistline', 'vien-giam-can-30-days-waistline', 1500000, 'Viên giảm cân 30 Days Waistline giúp bạn đánh tan mỡ vùng bụng hiệu quả, đem lại cho bạn eo thon gọn chỉ trong 30 ngày. Giải pháp đột phá trong việc giảm cân một cách lành mạnh và tự nhiên', NULL, 'MUoLF0-vien-giam-can-30-days-waistline.jpg', 1, 1),
(11, 'Giảm cân Slimming Aid Formula', 'giam-can-slimming-aid-formula', 1000000, 'Giảm cân Slimming Aid Formula giúp tăng cường chuyển hóa mỡ trong cơ thể, giúp giảm cholesterol và lipid máu, hỗ trợ giảm cân', NULL, 'pqydE6-giam-can-slimming-aid-formula.jpg', 1, 1),
(12, 'Nước uống giảm cân Be-Max Shaper', 'nuoc-uong-giam-can-be-max-shaper', 1800000, 'Be-Max Shaper bổ sung nhiều dưỡng chất quý giá giúp duy trì vóc dáng thon gọn cùng vòng eo săn chắc, ngăn ngừa tái tạo mỡ thừa, giúp cơ thể và làn da luôn căng tràn sức sống.', NULL, 'JLuMOW-nuoc-uong-giam-can-be-max-shaper.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productsubcategories`
--

CREATE TABLE `productsubcategories` (
  `id` int(11) NOT NULL,
  `sub_name` varchar(225) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `sub_slug` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `productsubcategories`
--

INSERT INTO `productsubcategories` (`id`, `sub_name`, `CategoryId`, `sub_slug`) VALUES
(1, 'Thực phẩm giảm cân', 1, 'thuc-pham-giam-can'),
(3, 'Hỗ trợ tim mạch', 1, 'ho-tro-tim-mach'),
(4, 'Bổ xương khớp', 1, 'bo-xuong-khop'),
(5, 'Làm trắng da', 1, 'lam-trang-da'),
(6, 'Tăng cường sức đề kháng', 1, 'tang-cuong-suc-de-khang'),
(7, 'Chống lão hóa', 1, 'chong-lao-hoa'),
(8, 'Bổ mắt, bổ não', 1, 'bo-mat-bo-nao'),
(9, 'Bổ gan, giải độc gan', 1, 'bo-gan-giai-doc-gan'),
(10, 'Dưỡng da, làm trắng da', 2, 'duong-da-lam-trang-da'),
(11, 'Trị mụn,sẹo', 2, 'tri-mun-seo'),
(12, 'Tẩy tế bào chêt', 2, 'tay-te-bao-chet'),
(13, 'Kem dưỡng thể', 2, 'kem-duong-the'),
(14, 'Dưỡng ẩm', 2, 'duong-am'),
(15, 'Kem trị nám', 2, 'kem-tri-nam'),
(16, 'Sữa rửa mặt', 2, 'sua-rua-mat'),
(17, 'Nước hoa hồng', 2, 'nuoc-hoa-hong'),
(18, 'Son dưỡng môi', 2, 'son-duong-moi'),
(19, 'Tỏi đen', 3, 'toi-den'),
(20, 'Đông trùng hạ thảo', 3, 'dong-trung-ha-thao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserEmail` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPassword` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFirstName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserLastName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCity` varchar(90) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserState` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserZip` varchar(12) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserEmailVerified` tinyint(1) DEFAULT '0',
  `UserRegistrationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserVerificationCode` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserIP` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPhone` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFax` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCountry` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress2` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optiongroups`
--
ALTER TABLE `optiongroups`
  ADD PRIMARY KEY (`OptionGroupID`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`OptionID`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`DetailID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Chỉ mục cho bảng `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`ProductOptionID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productsubcategories`
--
ALTER TABLE `productsubcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optiongroups`
--
ALTER TABLE `optiongroups`
  MODIFY `OptionGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `ProductOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `productsubcategories`
--
ALTER TABLE `productsubcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
