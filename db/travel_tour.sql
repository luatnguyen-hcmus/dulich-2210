-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 07:47 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_group_id` int(64) NOT NULL,
  `permissions` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `admin_group_id`, `permissions`) VALUES
(1, 'admin1', '96e79218965eb72c92a549dd5a330112', 'Hoàng văn Tuyền', 1, '{\"news\":[\"index\",\"add\",\"edit\"],\"slide\":[\"index\",\"add\",\"edit\"]}'),
(7, 'admincp', '96e79218965eb72c92a549dd5a330112', 'Mod', 2, ''),
(9, 'asdf', 'e10adc3949ba59abbe56e057f20f883e', '12345678', 0, ''),
(10, 'asdf', 'e10adc3949ba59abbe56e057f20f883e', '12345678', 0, ''),
(11, 'ngocluat13', 'e10adc3949ba59abbe56e057f20f883e', 'nguyễn ngọc luật', 0, '{\"admin\":[\"index\",\"add\",\"edit\",\"delete\"],\"user\":[\"index\",\"add\",\"edit\",\"delete\"],\"product\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"catalog\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"transaction\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"news\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"slide\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"]}'),
(16, '11111111', 'e10adc3949ba59abbe56e057f20f883e', '11111111', 0, '{\"admin\":[\"index\",\"add\"],\"catalog\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"contact\":[\"index\",\"delete\"]}'),
(18, 'mod123', 'e10adc3949ba59abbe56e057f20f883e', 'mod123456', 0, '{\"admin\":[\"index\",\"add\",\"edit\",\"delete\"],\"catalog\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"contact\":[\"index\",\"delete\",\"del_all\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `sort_order`, `permissions`) VALUES
(1, 'Admin', 1, 'a:14:{s:4:\"tran\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:13:\"product_order\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:11:\"admin_group\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"admin\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"user\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}'),
(2, 'Mod', 2, 'a:9:{s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `parent_id_menu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `site_title`, `meta_desc`, `meta_key`, `parent_id`, `sort_order`, `parent_id_menu`) VALUES
(1, 'VietNam', '', '', '', 0, 0, 3),
(2, 'Lao', '', '', '', 0, 1, 3),
(3, 'Campodia', '', '', '', 0, 2, 3),
(4, 'ThaiLan', '', '', '', 0, 0, 3),
(5, 'HaNoi', '', '', '', 1, 1, 0),
(6, 'DaNang', '', '', '', 1, 2, 0),
(7, 'Hue', '', '', '', 1, 3, 0),
(8, 'QuangNam', '', '', '', 1, 5, 0),
(9, 'VienChan', '', '', '', 2, 0, 0),
(10, 'Pakxe', '', '', '', 2, 1, 0),
(11, 'Thakhek', '', '', '', 2, 3, 0),
(12, 'XamNeUa', '', '', '', 2, 4, 0),
(13, 'Phnômpênh', '', '', '', 3, 0, 0),
(14, 'Sihanoukville', '', '', '', 3, 1, 0),
(15, 'Xiêm Riệp', '', '', '', 3, 2, 0),
(16, 'Angkor', '', '', '', 3, 3, 0),
(17, 'Pailin', '', '', '', 3, 5, 0),
(18, 'Ta Khmau', '', '', '', 3, 6, 0),
(25, 'indonexia', '', '', '', 0, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `count_like` int(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `parent_id`, `user_name`, `user_email`, `user_id`, `user_ip`, `content`, `created`, `count_like`, `status`) VALUES
(1, 7, 0, 'Hoang van tuyen', 'hoangvantuyencnt@gmail.com', 0, '', 'San pham noi con khong admin?                    ', 1408798677, 10, 1),
(2, 7, 1, 'Vu van Anh', 'anh@gmail.com', 0, '', 'San pham nay van con hang', 1408799662, 3, 1),
(3, 7, 0, 'abc', 'hoang@gmail.com', 0, '', 'Test comment             ', 1408800324, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(128) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_static`
--

CREATE TABLE `content_static` (
  `id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `content_static`
--

INSERT INTO `content_static` (`id`, `key`, `content`) VALUES
(3, 'footer', '<p class=\"bold\">\r\n &copy;2013 -2014 Bản quyền thuộc về&nbsp; <strong>C&ocirc;ng ty TNHH Tuấn Thoa media &ndash; Đại l&yacute; VTC Digital</strong></p>\r\n<p>\r\n Lĩnh vực hoạt động của c&ocirc;ng ty: Điện &amp; điện tử , b&aacute;n lẻ &amp; b&aacute;n bu&ocirc;n</p>\r\n<p>\r\n <strong>Cơ sở 1:</strong>: Cẩm La, X&atilde; Thanh Sơn, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313881505</p>\r\n<p>\r\n <strong>Cơ sở 2:</strong>: Cẩm Xu&acirc;n, N&uacute;i Đối, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313812682</p>\r\n'),
(18, 'shipping', '<p>\r\n Chi ph&iacute; vận chuyển của Tuấn Thoa Media</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `title`, `content`, `meta_desc`, `meta_key`, `created`) VALUES
(1, 'Giới thiệu', '<div class=\"container\"><div class=\"left wpb_column vc_column_container vc_col-sm-6 animated eff-fadeInLeft delay-200ms effHidden\" style=\"animation-delay: 200ms;\"><div class=\"wpb_wrapper\">\r\n		<div class=\"king-elements \">\r\n			<div class=\"king-elements-inner\">\r\n        	<i class=\"fa fa-star-half-o element-icon \"></i><strong>\r\n	<em>TẠI SAO</em>\r\n	NÊN CHỌN PION\r\n</strong>\r\n\r\n<div class=\"clearfix\"></div>\r\n<li>Đến với PION các bạn sẽ nhận được sự yên tâm với các tiêu chí như: </li>\r\n<ul>\r\n	<li>\r\n	<i class=\"fa fa-long-arrow-right\"></i> Thiết kế web chuyên nghiệp , tối ưu hóa công cụ tìm kiếm\r\n	</li>\r\n	<li>\r\n	<i class=\"fa fa-long-arrow-right\"></i> Giao diện thiết kế phù hợp với mọi ngành nghề\r\n	</li>\r\n	<li>\r\n	<i class=\"fa fa-long-arrow-right\"></i> Quản lý dễ dàng và thân thiện với người dùng\r\n	</li>\r\n<li> Pion với 7 năm kinh nghiệm với tâm niệm luôn mang lại chất lượng dịch vụ tối ưu nhất đến khách hàng </li>\r\n</ul>			</div>\r\n        </div>\r\n\r\n	</div></div><div class=\"right wpb_column vc_column_container vc_col-sm-6 animated eff-fadeInRight delay-200ms effHidden\" style=\"animation-delay: 200ms;\"><div class=\"wpb_wrapper\">\r\n		<div class=\"king-elements \">\r\n			<div class=\"king-elements-inner\">\r\n        	<i class=\"fa fa-bullhorn element-icon \"></i><strong>\r\n	<em>THÔNG TIN</em>\r\n	TUYỂN DỤNG\r\n</strong>\r\n\r\n<div class=\"clearfix\"></div>\r\n\r\n\r\n<ul>\r\n<li>Hiện tại PION đang tuyển thêm nhân lực mới cho các vị trí như sau :  </li>\r\n\r\n	<li>\r\n	<i class=\"fa fa-long-arrow-right\"></i> 05 Nhân Viên Kinh Doanh\r\n	</li>\r\n	<li>\r\n	<i class=\"fa fa-long-arrow-right\"></i> 05 Nhân Viên Kỹ Thuật\r\n	</li>\r\n	<li>\r\n	<i class=\"fa fa-long-arrow-right\"></i> 05 Nhân Viên SEO \r\n	</li>\r\n<li>Không cần kinh nghiệm, chỉ cần sự nhiệt huyết , đam mê trong công việc, PION sẽ đào tạo bạn trở thành một nhân viên tài năng </li>\r\n</ul>			</div>\r\n        </div>\r\n\r\n	</div></div></div>', '', '', 1409044792),
(2, 'Liên Hệ', '<div class=\"col-md-12\"><div id=\"king-547751\" class=\"wpb_row   \" style=\"background-color: #003269;\"><div class=\"container \">\r\n	<div class=\" wpb_column vc_column_container wpb_column vc_column_container vc_col-sm-12 \">\r\n		<div class=\"wpb_wrapper\">\r\n			<div class=\"vc_empty_space\" style=\"height: 32px\"><span class=\"vc_empty_space_inner\"></span></div>\r\n\r\n		</div> \r\n	</div> \r\n\r\n	<div class=\" wpb_column vc_column_container wpb_column vc_column_container vc_col-sm-4 vc_custom_1494246044694  vc_custom_1494246044694\">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"color: #ffffff;text-align: center\" class=\"vc_custom_heading vc_custom_1494301440126\">THIẾT KẾ WEBSITE</h2>\r\n	<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<div class=\"vc_single_image-wrapper   vc_box_border_grey\"><img width=\"150\" height=\"150\" src=\"http://pion.vn/wp-content/uploads/2017/05/websitetemplate-1-150x150.png\" class=\"vc_single_image-img attachment-thumbnail\" alt=\"\" srcset=\"http://pion.vn/wp-content/uploads/2017/05/websitetemplate-1-150x150.png 150w, http://pion.vn/wp-content/uploads/2017/05/websitetemplate-1-300x300.png 300w, http://pion.vn/wp-content/uploads/2017/05/websitetemplate-1.png 320w\" sizes=\"(max-width: 150px) 100vw, 150px\"></div>\r\n		</figure>\r\n	</div>\r\n\r\n	<div class=\"wpb_text_column wpb_content_element  vc_custom_1494301506910\">\r\n		<div class=\"wpb_wrapper\">\r\n			<p style=\"text-align: center;\"><span style=\"color: #ffffff;\">Công ty thiết kế website PION&nbsp;tự hào là một trong những công ty thiết kế web chuyên nghiệp, uy tín bậc nhất tại TP.Hồ Chí Minh….</span></p>\r\n\r\n		</div>\r\n	</div>\r\n\r\n		</div> \r\n	</div> \r\n\r\n	<div class=\" wpb_column vc_column_container wpb_column vc_column_container vc_col-sm-4 vc_custom_1494245640210  vc_custom_1494245640210\">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"color: #ffffff;text-align: center\" class=\"vc_custom_heading vc_custom_1494301444581\">DỊCH VỤ SEO ONPAGE</h2>\r\n	<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<div class=\"vc_single_image-wrapper   vc_box_border_grey\"><img width=\"150\" height=\"150\" src=\"http://pion.vn/wp-content/uploads/2017/05/define-1-150x150.png\" class=\"vc_single_image-img attachment-thumbnail\" alt=\"\" srcset=\"http://pion.vn/wp-content/uploads/2017/05/define-1-150x150.png 150w, http://pion.vn/wp-content/uploads/2017/05/define-1.png 300w\" sizes=\"(max-width: 150px) 100vw, 150px\"></div>\r\n		</figure>\r\n	</div>\r\n\r\n	<div class=\"wpb_text_column wpb_content_element  vc_custom_1494664326939\">\r\n		<div class=\"wpb_wrapper\">\r\n			<p style=\"text-align: center;\"><span style=\"color: #ffffff;\">Dịch vụ SEO ONPAGE của PION sẽ giúp cho website của bạn tương thích với các bộ máy tìm kiếm và thân thiện với người dùng</span></p>\r\n\r\n		</div>\r\n	</div>\r\n\r\n		</div> \r\n	</div> \r\n\r\n	<div class=\" wpb_column vc_column_container wpb_column vc_column_container vc_col-sm-4 vc_custom_1494245644241  vc_custom_1494245644241\">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"color: #ffffff;text-align: center\" class=\"vc_custom_heading vc_custom_1494301450588\">DỊCH VỤ QUẢNG CÁO</h2>\r\n	<div class=\"wpb_single_image wpb_content_element vc_align_center\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<div class=\"vc_single_image-wrapper   vc_box_border_grey\"><img width=\"150\" height=\"150\" src=\"http://pion.vn/wp-content/uploads/2017/05/ppc-circle-graphic-1-150x150.png\" class=\"vc_single_image-img attachment-thumbnail\" alt=\"\" srcset=\"http://pion.vn/wp-content/uploads/2017/05/ppc-circle-graphic-1-150x150.png 150w, http://pion.vn/wp-content/uploads/2017/05/ppc-circle-graphic-1.png 300w\" sizes=\"(max-width: 150px) 100vw, 150px\"></div>\r\n		</figure>\r\n	</div>\r\n\r\n	<div class=\"wpb_text_column wpb_content_element  vc_custom_1494664780440\">\r\n		<div class=\"wpb_wrapper\">\r\n			<p style=\"text-align: center;\"><span style=\"color: #ffffff;\"> PION Cung cấp các giải pháp Quảng cáo Google tổng thể giúp TĂNG DOANH SỐ, THƯƠNG HIỆU cho doanh nghiệp cực kỳ hiệu quả</span></p>\r\n\r\n		</div>\r\n	</div>\r\n\r\n		</div> \r\n	</div> \r\n\r\n	<div class=\" wpb_column vc_column_container wpb_column vc_column_container vc_col-sm-12 \">\r\n		<div class=\"wpb_wrapper\">\r\n			<div class=\"vc_empty_space\" style=\"height: 32px\"><span class=\"vc_empty_space_inner\"></span></div>\r\n<div class=\"vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_dashed vc_sep_pos_align_center vc_separator_no_text vc_sep_color_white\"><span class=\"vc_sep_holder vc_sep_holder_l\"><span class=\"vc_sep_line\"></span></span><span class=\"vc_sep_holder vc_sep_holder_r\"><span class=\"vc_sep_line\"></span></span>\r\n</div><div class=\"vc_empty_space\" style=\"height: 32px\"><span class=\"vc_empty_space_inner\"></span></div>\r\n\r\n		</div> \r\n	</div> \r\n<div class=\"clear\"></div></div></div><div class=\"container\">\r\n			\r\n				<div class=\"one_half\">\r\n					Copyright © 2017 <a href=\"pion.vn\">Công Ty TNHH Thương Mại Dịch Vụ Pion</a> - Pion.vn				</div>\r\n			    <div class=\"one_half last aliright\">\r\n				    \r\n				</div>\r\n			\r\n			</div></div>\r\n\r\n', '', '', 1409044950),
(3, 'Hướng dẫn mua hàng', '<p>\r\n	Hướng dẫn mua h&agrave;ng</p>', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `maker`
--

CREATE TABLE `maker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `sort_order`) VALUES
(1, 'HOME', '', 1),
(2, 'ABOUT US', 'about-us', 2),
(3, 'COUNTRY', '', 3),
(4, 'CONTACT US', 'contact-us', 5),
(5, 'BLOG', 'blog', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feature` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `count_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `meta_desc`, `meta_key`, `image_link`, `created`, `feature`, `count_view`) VALUES
(1, 'Nhà lầu siêu xe hàng mã ế sưng, đồ chơi biển đảo hút khách', '(Dân trí) - Loạt đồ chơi trung thu biển đảo hướng về quê hương mới xuất hiện nhưng đã hút khách, các mặt hàng vàng mã “xa xỉ” không còn được nhiều người mua sắm.', '<p style=\"TEXT-ALIGN: left\">\r\n	Theo b&aacute;c Lan, một chủ cửa h&agrave;ng ở phố H&agrave;ng M&atilde; chia sẻ: &ldquo;Kinh tế kh&oacute; khăn n&ecirc;n người bỏ tiền triệu ra mua đồ c&uacute;ng đắt tiền như nh&agrave; lầu, xe hơi, điện thoại, ti vi c&ograve;n rất &iacute;t. Mọi người chỉ lựa chọn những loại đồ c&oacute; gi&aacute; b&igrave;nh d&acirc;n như quần &aacute;o, gi&agrave;y d&eacute;p v&agrave; mũ để c&uacute;ng. Những mặt h&agrave;ng b&aacute;n chạy nhất l&agrave; tiền &acirc;m phủ, v&agrave;ng, quần &aacute;o hay gi&agrave;y d&eacute;p v&igrave; c&oacute; gi&aacute; kh&aacute; b&igrave;nh d&acirc;n&rdquo;.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mặt hàng đèn lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n1-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mặt h&agrave;ng đ&egrave;n lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay</span></p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<span style=\"FONT-FAMILY: Tahoma\"><img alt=\"Các thông điệp ý nghĩa yêu quê hương, biển đảo được in lên đèn lồng\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n2-242e1.jpg\" /></span><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">C&aacute;c th&ocirc;ng điệp &yacute; nghĩa y&ecirc;u qu&ecirc; hương, biển đảo được in l&ecirc;n đ&egrave;n lồng</span></p>\r\n<p>\r\n	Một mặt h&agrave;ng đặc biệt của m&ugrave;a Vu Lan năm nay đ&oacute; l&agrave; loại đồ chơi &ldquo;biển đảo&rdquo;. Đ&oacute; l&agrave; những chiếc đ&egrave;n lồng được in những th&ocirc;ng điệp hướng về qu&ecirc; hương, biển đảo hết sức &yacute; nghĩa.</p>\r\n<div class=\"article-side-rail\" id=\"article-side-rail\">\r\n	<div class=\"article-video-relation\">\r\n		<div class=\"relative\">\r\n			<img alt=\"Mùa Vu Lan: \" class=\"thumb\" src=\"http://video-thumbs.vcmedia.vn///dantri/7iS0Ym1SbbOoTsWhJi6Q/2014/08/08/vangma-15e63.jpg\" /><img class=\"ico\" src=\"http://dantri3.vcmedia.vn/App_Themes/Default/Images/ico_video_play.png\" /></div>\r\n		<p class=\"caption\">\r\n			M&ugrave;a Vu Lan: &quot;Xe si&ecirc;u sang&quot; đỗ chật phố H&agrave;ng M&atilde;</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	C&aacute;c chủ cửa h&agrave;ng tại đ&acirc;y cho biết, c&aacute;c loại mặt h&agrave;ng l&agrave;m thủ c&ocirc;ng truyền thống đ&egrave;n lồng, đầu l&acirc;n, đ&egrave;n &ocirc;ng sao vẫn được kh&aacute;ch h&agrave;ng ưa chuộng nhất. Ngo&agrave;i ra, mẫu đ&egrave;n lồng in sẵn mang th&ocirc;ng điệp hướng về biển đảo qu&ecirc; hương được nhiều bậc phụ huynh v&agrave; c&aacute;c em học sinh đặc biệt y&ecirc;u th&iacute;ch.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mới xuất hiện nhưng những chiếc đèn lồng này được nhiều phụ huynh và các em nhỏ lựa chọn\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n4-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mới xuất hiện nhưng những chiếc đ&egrave;n lồng n&agrave;y được nhiều phụ huynh v&agrave; c&aacute;c em nhỏ lựa chọn</span><br />\r\n	&nbsp;</p>\r\n<p>\r\n	Chiếc đ&egrave;n lồng mang th&ocirc;ng điệp biển đảo được gh&eacute;p lại bằng 3 mảnh b&igrave;a kh&aacute;c nhau. Chiếc đ&egrave;n c&oacute; thể thắp s&aacute;ng v&agrave; ph&aacute;t nhạc khi được lắp pin ở tay cầm.Tuy nhi&ecirc;n, chi tiết đ&aacute;ng ch&uacute; &yacute; nhất đ&oacute; l&agrave; những th&ocirc;ng điệp hướng về biển đảo in tr&ecirc;n th&acirc;n của chiếc đ&egrave;n lồng như &ldquo;Em y&ecirc;u biển đảo qu&ecirc; hương&rdquo;, &ldquo;B&eacute; hướng về biển đảo&rdquo;, &ldquo;Em y&ecirc;u biển đảo Việt Nam&rdquo;, &ldquo;Em y&ecirc;u ch&uacute; bộ đội hải qu&acirc;n Việt Nam&rdquo;, với những h&igrave;nh ảnh chiến sĩ Hải qu&acirc;n Việt Nam s&uacute;ng kho&aacute;c tr&ecirc;n vai bảo vệ chủ quyền biển đảo Tổ quốc hay những chiếc t&agrave;u mang d&ograve;ng chữ Cảnh s&aacute;t biển Việt Nam&hellip;</p>\r\n', '', '', 'n1-242e1.jpg', '2018-03-26 00:01:19', '0', 1),
(2, 'Arsenal đồng ý bán Vermaelen cho Barcelona', '(Dân trí) - Theo những thông tin từ báo giới Anh, Arsenal đã quyết định từ chối MU, để bán trung vệ Vermarlen cho Barcelona. Mức giá của trung vệ này vào khoảng 15 triệu bảng.', '<p>\r\n	Như đ&atilde; biết, c&aacute;ch đ&acirc;y v&agrave;i ng&agrave;y, trung vệ Vermaelen đ&atilde; từ chối gia hạn hợp đồng với Arsenal. Điều đ&oacute; khiến cho CLB th&agrave;nh London t&igrave;m c&aacute;ch b&aacute;n cầu thủ n&agrave;y bằng mọi gi&aacute; để &ldquo;gỡ gạc&rdquo; ch&uacute;t &iacute;t ph&iacute; chuyển nhượng thay v&igrave; mất trắng cầu thủ n&agrave;y&nbsp;ở m&ugrave;a H&egrave; sang năm.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<div align=\"center\">\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\"><img _fl=\"\" align=\"middle\" alt=\"Vermaelen ở rất gần Barcelona\" src=\"http://dantri4.vcmedia.vn/uajiKupQ6reCuKKDlVlG/Image/2014/08/Vermaelen-d4361.jpg\" style=\"MARGIN: 5px\" width=\"450\" /><br />\r\n	Vermaelen ở rất gần Barcelona</span><br />\r\n	&nbsp;</div>\r\n<p>\r\n	Trong thời gian gần đ&acirc;y, MU v&agrave; Barcelona l&agrave; hai ứng cử vi&ecirc;n s&aacute;ng gi&aacute; trong cuộc đua gi&agrave;nh chữ k&yacute; của hậu vệ người Bỉ. Cuối c&ugrave;ng, HLV Wenger đ&atilde; quyết định từ chối MU để b&aacute;n Vermarlen cho Barcelona. Trước đ&oacute; c&oacute; th&ocirc;ng tin cho rằng Wenger muốn đổi Vermaelen lấy Smalling, tuy nhi&ecirc;n Van Gaal lại từ chối phương &aacute;n n&agrave;y.</p>\r\n<p>\r\n	Trước b&aacute;o giới, HLV Wenger cho biết: &ldquo;Ch&uacute;ng t&ocirc;i đ&atilde; nhận được những lời đề nghị từ nước ngo&agrave;i v&agrave; quyết định để Vermaelen rời khỏi Premier League. Bản th&acirc;n Arsenal cũng đang ở trong thế kh&oacute; trong vụ n&agrave;y&rdquo;.</p>\r\n<p>\r\n	Theo tờ BBC, Arsenal đ&atilde; đồng &yacute; lời đề nghị trị gi&aacute; 15 triệu bảng của Barcelona. Trong thời gian tới, trung vệ người Bỉ sẽ được quyền tự do đ&agrave;m ph&aacute;n với đội b&oacute;ng xứ Catalan.</p>\r\n<p>\r\n	Nhiều khả năng thương vụ n&agrave;y sẽ ho&agrave;n tất trong thời gian tới. Arsenal cũng bắt đầu t&igrave;m người thay thế Vermaelen. L&uacute;c n&agrave;y, ưu ti&ecirc;n số 1 của HLV Wenger l&agrave; trung vệ Nastasic của Man City, người nhiều khả năng sẽ mất vị tr&iacute; nếu như Mangala gia nhập Etihad.</p>\r\n<p align=\"right\">\r\n	<b>H.Long</b></p>\r\n', '', '', 'Vermaelen-d4361.jpg', '2018-03-26 00:01:19', '0', 2),
(3, 'Hà Nội: CSGT tìm người thân giúp cháu bé 8 tuổi đi lạc', '(Dân trí) - Theo người thân cháu Chi, trong lúc gia đình nghỉ trưa, cháu Chi mải chơi đã đi lạc từ phía phường Ngọc Lâm (quận Long Biên) sang nội thành. Trong lúc đang hoang mang tìm cháu, gia đình nhận được tin báo của lực lượng cảnh sát giao thông.', '<p>\r\n	Khoảng 15h30 ng&agrave;y 8/8, khi đang l&agrave;m nhiệm vụ tại chốt ph&iacute;a nam cầu Chương Dương (địa b&agrave;n quận Ho&agrave;n Kiếm, H&agrave; Nội), Thượng sĩ Phạm Gia Hợp v&agrave; Thượng t&aacute; L&ecirc; Đức Đo&agrave;n(Đội CSGT số 1) ph&aacute;t hiện một ch&aacute;u b&eacute; khoảng 7-8 tuổi đi bộ tr&ecirc;n khu vực cầu Chương Dương với vẻ mặt sợ sệt. Khi Thượng sĩ Hợp v&agrave; Thượng t&aacute; Đ&ograve;an tiến lại hỏi han, ch&aacute;u b&eacute; c&oacute; biểu hiện sợ sệt v&agrave; bật kh&oacute;c n&oacute;i rằng đi lạc đường.</p>\r\n<p>\r\n	Thấy ch&aacute;u b&eacute; lả đi v&igrave; mệt, Thượng sĩ Hợp đ&atilde; đưa ch&aacute;u về chốt trực, mua b&aacute;nh v&agrave; sữa để ch&aacute;u ăn đỡ đ&oacute;i v&agrave; trấn tĩnh lại. Đồng thời, Thượng sĩ Hợp th&ocirc;ng b&aacute;o tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin đại ch&uacute;ng về đặc điểm nhận dạng của ch&aacute;u b&eacute;.</p>\r\n<p>\r\n	<img alt=\"Cháu Chi đoàn tụ với gia đình.\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/Image/2014/08/455-549e4.jpg\" /><br />\r\n	Ch&aacute;u Chi đo&agrave;n tụ với gia đ&igrave;nh.</p>\r\n<p>\r\n	Sau khi trấn tĩnh lại, ch&aacute;u b&eacute; cho biết t&ecirc;n l&agrave; Vương Kim Chi (SN 2007), năm nay l&ecirc;n lớp 2 trường tiểu học &Aacute;i Mộ, quận Long Bi&ecirc;n, H&agrave; Nội. Bằng c&aacute;c biện ph&aacute;p nghiệp vụ, Thượng sĩ Hợp v&agrave; Thượng t&aacute; Đo&agrave;n đ&atilde; li&ecirc;n hệ được với c&ocirc; gi&aacute;o chủ nhiệm ch&aacute;u Chi để th&ocirc;ng b&aacute;o với gia đ&igrave;nh ch&aacute;u b&eacute; biết.</p>\r\n<p>\r\n	Gần 2 tiếng đồng hồ sau, mẹ ch&aacute;u Chi l&agrave; chị Đo&agrave;n Thị Khuyến (SN 1983, ở Ngọc L&acirc;m, Long Bi&ecirc;n, H&agrave; Nội) đ&atilde; t&igrave;m đến trụ sở Đội CSGT số 1 nhận lại con. Chị Khuyến cho cho biết, khoảng 14h c&ugrave;ng ng&agrave;y, trong l&uacute;c gia đ&igrave;nh nghỉ trưa, ch&aacute;u Chi mải chơi đ&atilde; đi lạc từ b&ecirc;n n&agrave;y cầu sang b&ecirc;n kia nội th&agrave;nh.</p>\r\n<p>\r\n	Trong l&uacute;c hoang mang kh&ocirc;ng biết t&igrave;m ch&aacute;u ở đ&acirc;u, gia đ&igrave;nh được th&ocirc;ng b&aacute;o ch&aacute;u Chi đ&atilde; được c&aacute;c chiến sĩ CSGT tận t&igrave;nh gi&uacute;p đỡ. Thay mặt gia đ&igrave;nh, chị Khuyến đ&atilde; viết thư cảm ơn c&aacute;c chiến sĩ cảnh s&aacute;t giao th&ocirc;ng.</p>\r\n<p>\r\n	<strong>Tiến Nguy&ecirc;n</strong></p>\r\n', '', '', '455-549e4.jpg', '2018-03-26 00:01:19', '0', 9),
(4, 'Mỹ tăng cường không kích Iraq', '(Dân trí) - Sau khi Tổng thống Obama phê chuẩn cho không kích các mục tiêu của nhóm phiến quân Hồi giáo IS ở miền bắc Iraq, Lầu Năm Góc đã tiến hành 3 đợt không kích.', '<p>\r\n	C&aacute;c vụ kh&ocirc;ng k&iacute;ch nhằm v&agrave;o nh&oacute;m Nh&agrave; nước Hồi gi&aacute;o (IS) ở miền bắc Iraq l&agrave; những cuộc tấn c&ocirc;ng đầu ti&ecirc;n kể từ khi Mỹ trực tiếp tham gia v&agrave;o hoạt động qu&acirc;n sự ở Iraq v&agrave; sau đ&oacute; r&uacute;t qu&acirc;n v&agrave;o cuối năm 2011.</p>\r\n<p>\r\n	Trong cuộc kh&ocirc;ng k&iacute;ch đầu ti&ecirc;n v&agrave;o ng&agrave;y thứ s&aacute;u, m&aacute;y bay kh&ocirc;ng người l&aacute;i c&ugrave;ng chiến đấu cơ hải qu&acirc;n Mỹ đ&atilde; nhắm v&agrave;o c&aacute;c mục ti&ecirc;u gần th&agrave;nh phố Irbil của người Kurd. Sau đ&oacute; họ tiến h&agrave;nh th&ecirc;m 2 đợt tấn c&ocirc;ng nữa.</p>\r\n<p>\r\n	Nh&oacute;m Hồi gi&aacute;o người Sunni IS đ&atilde; chiếm quyền kiểm so&aacute;t nhiều khu vực của Iraq v&agrave; cả Syria.</p>\r\n<p>\r\n	H&agrave;ng chục ng&agrave;n người thuộc c&aacute;c nh&oacute;m d&acirc;n tộc thiểu số đ&atilde; phải rời bỏ nh&agrave; cửa khi phiến qu&acirc;n tiến v&agrave;o.</p>\r\n<p>\r\n	Nh&oacute;m IS hay c&ograve;n được gọi l&agrave; ISIS cũng đ&atilde; chiếm đập lớn nhất Iraq.</p>\r\n<p>\r\n	Lầu Năm G&oacute;c cho biết trong đợt kh&ocirc;ng k&iacute;ch thứ hai, m&aacute;y bay kh&ocirc;ng người l&aacute;i của Mỹ đ&atilde; ph&aacute; hủy một vị tr&iacute; đặt ph&aacute;o của phiến qu&acirc;n v&agrave; ti&ecirc;u diệt một nh&oacute;m phiến qu&acirc;n.</p>\r\n<p>\r\n	Chỉ hơn một tiếng sau, chiến đấu cơ F/A-18 đ&atilde; d&ugrave;ng bom c&oacute; laser dẫn đường bắn tr&uacute;ng một đo&agrave;n 7 xe của IS.</p>\r\n<p>\r\n	Trước đ&oacute;, v&agrave;o ng&agrave;y thứ s&aacute;u, 2 quả bom đ&atilde; được thả xuống một khẩu ph&aacute;o của IS d&ugrave;ng để chống lại lực lượng đang bảo vệ Irbil, thủ phủ của v&ugrave;ng tự trị của người Kurd.</p>\r\n<p>\r\n	Ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Mỹ Marie Harf cho biết mục ti&ecirc;u trước mắt của c&aacute;c cuộc kh&ocirc;ng k&iacute;ch l&agrave; &ldquo;ngăn chặn bước tiến&rdquo; của IS về Irbil.</p>\r\n<p>\r\n	&ldquo;Sau đ&oacute; về l&acirc;u d&agrave;i chung t&ocirc;i muốn phối hợp hỗ trợ th&ecirc;m thời gian v&agrave; kh&ocirc;ng gian cho c&aacute;c lực lượng của người Kurd để xốc lại lực lượng, chiến đấu với đe dọa của ch&iacute;nh họ&rdquo;.</p>\r\n<p>\r\n	B&agrave; cũng khẳng định &ldquo;kh&ocirc;ng c&oacute; giải ph&aacute;p qu&acirc;n sự l&acirc;u d&agrave;i của Mỹ ở đ&oacute;&rdquo;.</p>\r\n<p>\r\n	Mặc d&ugrave; ch&iacute;nh phủ Iraq v&agrave; V&ugrave;ng người Kurd vẫn c&ograve;n đang c&oacute; bất đồng trong những th&aacute;ng qua, nhưng Thủ tướng Nouri Maliki đ&atilde; ph&aacute;i một m&aacute;y bay chở đạn tới Irbil v&agrave; thứ s&aacute;u. Trước đ&oacute; &ocirc;ng đ&atilde; lệnh cho lực lượng kh&ocirc;ng qu&acirc;n hỗ trợ cho c&aacute;c tay s&uacute;ng người Kurd để chiến đấu chống IS.</p>\r\n<p>\r\n	<b>Trung Anh</b></p>\r\n', '', '', '1-7d48c.jpg', '2018-03-26 00:01:19', '0', 0),
(8, 'Chung cư Carina náo loạn khi chủ đầu tư đối thoại với cư dân', 'Chủ đầu tư mong mọi người chia sẻ vì phải tập trung khắc phục sự cố, phục vụ điều tra, hỗ trợ cho gia đình 13 người chết và hơn 40 người bị thương.', '<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">\r\nTối 25/3, <span class=\"_mh6 _wsc\" id=\"cch_f2e9b41d04b2b2c\"><span class=\"_3oh- _58nk\">hàng trăm cư dân Carina (quận 8, TP HCM) tập trung về tầng 2, block B, đợi chủ đầu tư đến đối thoại, nhận tiền hỗ trợ theo một tin nhắn được lan truyền trước đó. Hơn một tiếng trôi qua nhưng không thấy người có chức trách xuất hiện, nhiều người lớn tiếng phản ứng.</span></span></p><p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Một người đàn ông nhận là \"phía chủ đầu tư\" cho rằng, thông tin đối thoại như tin nhắn kia là không đúng, nên yêu cầu cư dân giải tán. Ông ta cũng có thái độ đe doạ, định hành hung những cư dân bức xúc nhưng bị đẩy ra ngoài. </span></span></p><p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Khoảng 20h, đại diện Công ty Hùng Thanh (quản lý chung cư Carina Plaza, thuộc chủ đầu tư - Công ty CP đầu tư <a href=\"https://kinhdoanh.vnexpress.net/tin-tuc/bat-dong-san/chu-dau-tu-chung-cu-carina-no-gan-20-ty-dong-quy-bao-tri-3727393.html\">Năm Bảy Bảy</a>) đưa ra thông báo chính thức.</span></span></p><p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Gương mặt lộ rõ vẻ mệt mỏi, căng thẳng, ông này nói: </span></span>\"Chúng tôi thành thật xin lỗi việc chậm trễ khi chưa có thông báo chính thức do phải tập trung khắc phục sự cố, phục vụ điều tra, hỗ trợ khẩn cấp các gia đình có người tử vong, bị thương. Chúng tôi cũng phải tập trung bảo vệ tài sản, hỗ trợ cư dân lấy lại giấy tờ, đồ đạc, xử lý các công việc để người dân có thể lấy xe ra ngoài\".</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"Đại diện đơn vị vận hành chung cư (trái) đưa ra thông báo xin lỗi cư dân. Ảnh: Duy Trần.\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/carina-8404-1521994959.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nĐại diện đơn vị vận hành chung cư (trái) đưa ra thông báo xin lỗi cư dân. Ảnh: <em>Duy Trần.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\nÔng này cho biết, công ty đã cử đại diện đến các bệnh viện túc trực, hỗ trợ vật chất và tinh thần cho các nạn nhân trong suốt quá trình cấp cứu. Đơn vị hỗ trợ gia đình mỗi nạn nhân tử vong 100 triệu đồng. Tính đến hôm nay, tổng số tiền hỗ trợ 13 người chết và 42 trường hợp bị thương là hơn 1,8 tỷ đồng.</p><p class=\"Normal\">\r\n\"Công ty cũng sẽ hỗ trợ mỗi hộ dân 300.000 đồng một ngày, để trang trải chỗ ở tạm cho đến khi căn hộ được khắc phục, người dân đủ điều kiện vào ở lại\", ông này thông báo.</p><p class=\"Normal\">\r\n<span>Với cả nghìn xe máy, ôtô tại tầng hầm không bị hư hại, cư dân liên hệ ban quản lý để lấy ra sử dụng từ tối nay. Còn những phương tiện hư hỏng do hoả hoạn, cư dân tự sửa chữa cũng như liên hệ bảo hiểm của mình để được chi trả. Trường hợp bảo hiểm không đền bù, chủ đầu tư sẽ hỗ trợ phần chênh lệch.&nbsp;</span></p><p class=\"Normal\">\r\nNhững xe bị hỏng hoàn toàn, chủ xe liên lạc ban quản lý để cung cấp hồ sơ phục vụ việc làm bảo hiểm. Chủ đầu tư và bảo hiểm sẽ mời các hộ dân để giải quyết đền bù thiệt hại trong 15 ngày, kể từ ngày mai.&nbsp;</p><p class=\"Normal\">\r\nĐối với việc sửa chữa toà nhà, chủ đầu tư cố gắng hoàn thành trong 30 ngày. Phải qua giám định của cơ quan chức năng về PCCC, vệ sinh môi trường, an toàn kết cấu... mới đưa cư dân vào ở. Riêng block C (thiệt hại ít nhất) sẽ hoàn thành sửa chữa trong 10 ngày.&nbsp;</p><p class=\"Normal\">\r\nLiên quan việc cư dân nhiều lần yêu cầu phải có Ban quản trị chung cư, đại diện <span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Công ty Hùng Thanh cho biết </span></span>đã tổ chức hai lần nhưng đều không thành công. Lần đầu do cư dân yêu cầu thay đổi thành phần ban trù bị, sáu tháng sau công ty tổ chức hội nghị thì cư dân tham dự không đủ theo quy định. Do đó, chủ đầu tư sẽ làm việc với chính quyền để tổ chức hội nghị khi chung cư hoạt động lại.</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"Bãi xe dưới tầng hầm cháy trụi. Ảnh: Duy Trần\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/chay-chung-cu-5-1521780319-120-2582-7653-1521988573.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nBãi xe dưới tầng hầm cháy trụi. Ảnh: <em>Duy Trần.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\n<span>Trước thông báo của chủ đầu tư, một số cư dân tỏ ra chia sẻ nhưng đa số vẫn rất bức xúc. Họ cho rằng chủ đầu tư chậm đưa ra lời xin lỗi, không tổ chức đối thoại để giải quyết các vấn đề khúc mắc của cư dân. Nhiều người phải \"ăn nhờ ở đậu\" nhà người thân hoặc thuê khách sạn ở tạm.&nbsp;</span></p><p class=\"Normal\">\r\n<span>Đại diện chủ đầu tư giải thích: </span>\"Do đơn vị tập trung tất cả nguồn lực để hỗ trợ cơ quan điều tra. Khi cháy, chúng tôi cùng cảnh sát giải cứu người dân. Bản thân tôi cũng bị thương ở vùng đầu nhưng mấy hôm nay chạy đôn đáo lo hỗ trợ khắc phục. Rất mong bà con chia sẻ, chúng tôi sẽ sớm tổ chức đối thoại\".</p><p class=\"Normal\">\r\nCũng trong ngày hôm nay, gần 500 cư dân Carina đồng loạt ký tên, <a href=\"https://vnexpress.net/tin-tuc/thoi-su/500-cu-dan-carina-gui-don-cho-thu-tuong-to-cao-chu-dau-tu-3727566.html\">gửi đơn</a> đến Thủ tướng Nguyễn Xuân Phúc tố cáo chủ đầu tư. Họ cho rằng những thiệt hại đã xảy ra hoàn toàn do lỗi của chủ đầu tư, Ban quản lý chung cư cũng như những cơ quan Nhà nước có liên quan đến việc nghiệm thu, thẩm tra chất lượng trang thiết bị, kiểm tra định kỳ hệ thống phòng cháy tại chung cư.</p><p class=\"Normal\">\r\nCác cư dân yêu cầu chính quyền địa phương và các cơ quan chức năng sớm tìm ra nguyên nhân hoả hoạn, xử lý nghiêm vi phạm và giải quyết thiệt hại cho người dân.</p><div style=\"text-align: center;\">\r\n<!--start video embed-->\r\n<div onclick=\"Video.playVideo(195560)\" id=\"video_parent_195560\" class=\"box_embed_video_parent embed_video_new\" data-vid=\"195560\" data-articleoriginal=\"3727631\" data-ads=\"1\" data-license=\"1\" data-duration=\"122\" data-brandsafe=\"0\" data-type=\"0\" data-play=\"0\" data-frame=\"\" data-initdom=\"1\">\r\n<div data-vid=\"195560\" class=\"box_img_video embed-container\">\r\n<img src=\"https://iv.vnecdn.net/vnexpress/images/web/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972_500x300.jpg\" alt=\"Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại\" style=\"height: 320.625px;\">\r\n<div class=\"icon_blockvideo\">\r\n<div class=\"img_icon\">&nbsp;</div>\r\n<div class=\"image_icon_center\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div id=\"embed_video_195560\" class=\"box_embed_video\" style=\"display:none;\">\r\n<div class=\"bg_overlay_small_unpin\"></div>\r\n<div class=\"bg_overlay_small\"></div>\r\n<div class=\"embed-container\">\r\n<div id=\"video-195560\" style=\"width: 100%; height: 320.625px;\">\r\n<div id=\"parser_player_195560\" class=\"media_content\" style=\"display: none; height: 320.625px; text-align: left;\">\r\n<div id=\"videoContainter_195560\" class=\"videoContainter\" style=\"width: 100%; height: 100%;\">\r\n<video id=\"media-video-195560\" preload=\"none\" playsinline=\"\" webkit-playsinline=\"\" src=\"https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" type=\"video/mp4\" style=\"width: 100%; height: 100%;\" data-240=\"https://v.vnecdn.net/vnexpress/video/web/mp4/240p/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" data-360=\"https://v.vnecdn.net/vnexpress/video/web/mp4/360p/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" data-480=\"https://v.vnecdn.net/vnexpress/video/web/mp4/480p/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" data-720=\"https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" active-mode=\"720\" ads=\"\" adsconfig=\"{&quot;adlist&quot;:[{&quot;type&quot;:&quot;preroll&quot;,&quot;tag&quot;:&quot;https:\\/\\/pubads.g.doubleclick.net\\/gampad\\/live\\/ads?sz=640x360|400x300|480x70|640x480|320x180&amp;iu=\\/27973503\\/video.vnexpress.net\\/Thoisu&amp;impl=s&amp;gdfp_req=1&amp;env=vp&amp;output=vast&amp;unviewed_position_start=1&amp;url=[referrer_url]&amp;description_url=[description_url]&amp;correlator=[timestamp]&quot;,&quot;skipOffset&quot;:&quot;00:00:06&quot;,&quot;duration&quot;:&quot;00:00:30&quot;},{&quot;type&quot;:&quot;overlay&quot;,&quot;tag&quot;:&quot;&quot;,&quot;script&quot;:&quot;%3Cscript%20async%3D%22async%22%20src%3D%22https%3A%2F%2Fwww.googletagservices.com%2Ftag%2Fjs%2Fgpt.js%22%3E%3C%2Fscript%3E%3Cscript%3Evar%20googletag%20%3D%20googletag%20%7C%7C%20%7B%7D%3Bgoogletag.cmd%20%3D%20googletag.cmd%20%7C%7C%20%5B%5D%3B%3C%2Fscript%3E%3Cscript%3Egoogletag.cmd.push(function()%7Bgoogletag.defineSlot(%22%2F27973503%2Fvideo.vnexpress.net%2FOverlay.thoisu%22%2C%5B480%2C70%5D%2C%22div-gpt-ad-1499311767737-0%22).addService(googletag.pubads())%3Bgoogletag.pubads().enableSingleRequest()%3Bgoogletag.pubads().collapseEmptyDivs()%3Bgoogletag.enableServices()%3B%7D)%3B%3C%2Fscript%3E%3Cdiv%20id%3D%22div-gpt-ad-1499311767737-0%22%20style%3D%22height%3A70px%3B%20width%3A480px%3B%22%3E%3Cscript%3Egoogletag.cmd.push(function()%7B%20googletag.display(%22div-gpt-ad-1499311767737-0%22)%3B%7D)%3B%3C%2Fscript%3E%3C%2Fdiv%3E&quot;,&quot;size&quot;:&quot;480x70&quot;,&quot;offset&quot;:&quot;30%&quot;,&quot;skipOffset&quot;:&quot;00:00:01&quot;,&quot;duration&quot;:&quot;00:00:15&quot;}]}\" data-ex=\"bs=0&amp;pt=1&amp;fblg=1\"></video>\r\n</div>\r\n</div>\r\n<!--[if IE]>\r\n                                    <div id=\"flash_player_195560\" class=\"flash_content\" style=\"display:none;\">\r\n                                        <object width=\"100%\" height=\"100%\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" id=\"videoplayer_195560\" codebase=\"https://fpdownload2.macromedia.com/get/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\">\r\n                                            <param name=\"movie\" value=\"https://s.vnecdn.net/video/flash/vneplayer.swf\">\r\n                                            <param name=\"allowScriptAccess\" value=\"always\" />\r\n                                            <param name=\"quality\" value=\"high\">\r\n                                            <param name=\"bgcolor\" value=\"#000000\">\r\n                                            <param name=\"wmode\" value=\"transparent\">\r\n                                            <param name=\"flashvars\" value=\"xmlPath=&mAuto=true&asseturl=https://s.vnecdn.net/video/flash/assetv3.swf&dynamicview=false&sharemode=false&autoHide=false&tracktype=video&typeview=1&playerid=videoplayer&trackurl=https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4&thumburl=&tracklink=&adszoneid=&adsTag=&activemode=720&tracktitle=Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại\">\r\n                                            <param name=\"allowfullscreen\" value=\"true\">\r\n                                            <embed bgcolor=\"#000000\" width=\"100%\" height=\"100%\" name=\"videoplayer_195560\" flashvars=\"xmlPath=&mAuto=true&asseturl=https://s.vnecdn.net/video/flash/assetv3.swf&dynamicview=false&sharemode=false&autoHide=false&tracktype=video&typeview=1&playerid=videoplayer&trackurl=https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4&thumburl=&tracklink=&adszoneid=&adsTag=&activemode=720&tracktitle=Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại\" type=\"application/x-shockwave-flash\" allowfullscreen=\"true\" allowscriptaccess=\"always\" wmode=\"transparent\" pluginspage=\"https://get.adobe.com/flashplayer/\" src=\"https://s.vnecdn.net/video/flash/vneplayer.swf\">\r\n                                        </object>\r\n                                    </div>\r\n                                    <![endif]-->\r\n</div>\r\n<div class=\"parser_title\" style=\"display:none;\">Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--end video embed-->\r\n</div><div class=\"box_tableinsert\"><table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" class=\"tbl_insert\" style=\"width:100%;\"><tbody><tr><td style=\"background-color: rgb(204, 204, 204);\">\r\n<p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">Chung cư Carina Plaza nằm <span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">trên khu đất rộng hơn 19.000 m2 ở </span></span>đường Võ Văn Kiệt, quận 8. Toà nhà gồm ba blocks cao từ 14 đến 20 tầng, có khu thương mại, giải trí... và hơn 700 căn hộ.</span></span></p>\r\n<p class=\"Normal\">\r\nHỏa hoạn xảy ra lúc hơn 1h ngày 23/3 tại tầng hầm chung cư khiến 13 người chết, hơn 50 người bị thương; 13 ôtô và 150 xe máy bị thiêu rụi. Hậu quả này được đánh giá là nghiêm trọng nhất trong 15 năm qua, chỉ sau thảm hoạ <a href=\"https://vnexpress.net/tin-tuc/thoi-su/cuoc-tuong-phung-sau-15-nam-tham-hoa-itc-o-sai-gon-3661595.html\">cháy ITC</a> làm 60 người chết.</p>\r\n<p class=\"Normal\">\r\nTheo điều tra ban đầu, khi đám cháy bùng lên, các cửa cầu thang thông lên tầng trên mở tung do bị chêm gạch, khiến khói lùa lên rất mạnh. Hệ thống chữa cháy tự động trước đó gần như không hoạt động, lực lượng chữa cháy tại chỗ không có, nên khi lính cứu hỏa đến nơi lửa khói đã rất lớn.</p>\r\n<p class=\"Normal\">\r\nThiếu tướng Phan Anh Minh (Phó giám đốc Công an TP HCM) cho rằng, nguyên nhân phát cháy tại tầng hầm không loại trừ khả năng do có tác động cài đặt gây nổ.</p>\r\n</td>\r\n</tr></tbody></table></div> </article>', '', '', 'carina-4471-1521994959_500x300.jpg', '2018-03-26 00:01:19', '', 0),
(9, 'Cứu hàng chục người, hai bảo vệ chung cư Carina được khen thưởng', 'An và Sang giọng ngậm ngùi, nói dành bằng khen cho bảo vệ Trần Văn An, vì ông đã quên mình cứu nhiều người trong đám cháy.', '<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">\r\nChiều 25/3, Hội Liên hiệp thanh niên Việt Nam TP HCM trao bằng khen cho anh Lê Gia An (21 tuổi) và Nguyễn Thanh Sang (22 tuổi) - hai bảo vệ cứu hàng chục người thoát khỏi đám cháy chung cư Carina, quận 8.</p><p class=\"Normal\">\r\nÔng Ngô Minh Hải (Phó bí thư Thành đoàn, Phó chủ tịch thường trực Hội Liên hiệp thanh niên Việt nam TP HCM) đánh giá, hai bảo vệ đã dũng cảm, không quản hiểm nguy xả thân lao vào đám cháy cứu người, xứng đáng là tấm gương tiêu biểu cho những người trẻ.</p><p class=\"Normal\">\r\nNhận khen tặng, An và Sang rưng rưng, giọng ngậm ngùi: \"Bằng khen này chúng em xin gửi đến chú An (bảo vệ Trần Văn An, 43 tuổi, thiệt mạng trong vụ hoả hoạn). Chính chú là động lực để tụi em phải cố gắng hết sức cứu người\".</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"Hai bảo vệ An và Sang (thứ ba và tư từ trái qua)&nbsp;đã quên mình cứu hàng chục người thoát khỏi&nbsp;đám cháy chung cư Carina.&nbsp;Ảnh:&nbsp;Đ T.\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/bao-ve-cuu-nguoi-chay-chung-cu-8657-1521984170.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nAn và Sang (thứ ba và tư từ trái qua)&nbsp;đã cứu hàng chục người thoát khỏi&nbsp;đám cháy chung cư Carina.&nbsp;Ảnh:&nbsp;<em>Đ.T.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\nKhi xảy ra cháy, ông An đã chạy lên các tầng lầu báo động cho cư dân. Đến trưa mọi người mới phát hiện ông tử vong.</p><p class=\"Normal\">\r\n<span>\"</span><span>Chú An đưa được một tốp người ở tầng dưới r</span><span>a ngoài an t</span><span style=\"color:rgb(34,34,34);\">oàn</span><span>. Nhưng </span><span>thấy nhiều người rọi đèn pin kêu cứu phía trên, chú ấy quay lại chung cư. Nếu chú chạy ra ngoài luôn </span><span>thì đã không thiệt mạng\"</span><span>, An cho biết</span><span>.</span></p><p class=\"Normal\">\r\nCũng như ông Trần Văn An, An và Sang đã cố gắng làm hết trách nhiệm của người bảo vệ, giúp cư dân trong lúc nguy cấp. <span>Sau khi dùng bình chữa cháy dập lửa bất thành, cả hai chạy lên các tầng trên tri hô người dân.</span></p><p class=\"Normal\">\r\nThông thuộc&nbsp;đường&nbsp;đi nước bước trong chung cư, khi đến một căn hộ gần siêu thị&nbsp;ở tầng một, có ban công hướng ra chỗ không bắt khói, An và Sang phá cửa. Hai thanh niên hướng dẫn hàng chục người vào trong, sau đó ném tất cả nệm trong căn hộ xuống&nbsp;đất, lấy ga giường và rèm cửa làm dây, biến nơi&nbsp;đây thành lối thoát hiểm cho mọi người.</p><p class=\"Normal\">\r\nTiếp&nbsp;đó An chạy&nbsp;đi kêu thêm người&nbsp;đến lối thoát hiểm này, còn Sang chạy sang blocks khác lấy thêm thang cho cư dân leo xuống.</p><p class=\"Normal\">\r\nKhói&nbsp;đen càng lúc càng&nbsp;đặc quánh, An và Sang tiếp tục&nbsp;chạy lên các tầng cao báo&nbsp;động. Họ gặp bất cứ người già, trẻ em nào không&nbsp;đi&nbsp;được&nbsp;đều cõng chạy xuống&nbsp;đất, và kêu thêm thanh niên phụ giúp cõng người.</p><p class=\"Normal\">\r\nKhi Cảnh sát PCCC có mặt, hai bảo vệ tiếp tục chỉ đường, đập cửa từng phòng cho lực lượng chức năng hướng dẫn cư dân thoát nạn và giải cứu người mắc kẹt...</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"An và Sang thắp nhang tưởng nhớ ông Trần Văn An. Ảnh:&nbsp;Đ.T.\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/bao-ve-carina-8794-1521988598.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nAn và Sang thắp nhang tưởng nhớ ông Trần Văn An. Ảnh:&nbsp;<em>Đ.T.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\nNói về việc làm của mình, An bảo: \"Lúc đó em không suy nghĩ gì cả. Trước tình cảnh cả chung cư đang hoảng loạn, nhất là nhiều phụ nữ và trẻ em không biết chạy đường nào để thoát, nên tụi em chỉ làm hết sức theo bản năng\".</p><p class=\"Normal\">\r\n<span>C</span><span style=\"color:rgb(34,34,34);\">ả hai cho bi</span><span style=\"color:rgb(34,34,34);\">ết</span><span style=\"color:rgb(34,34,34);\">, m</span><span style=\"color:rgb(34,34,34);\">ấy ng</span><span style=\"color:rgb(34,34,34);\">ày&nbsp;</span><span style=\"color:rgb(34,34,34);\">nay không thể ngủ. C</span><span style=\"color:rgb(34,34,34);\">ứ nh</span><span style=\"color:rgb(34,34,34);\">ắm m</span><span style=\"color:rgb(34,34,34);\">ắt </span><span style=\"color:rgb(34,34,34);\">l</span><span style=\"color:rgb(34,34,34);\">ại là thấy </span><span style=\"color:rgb(34,34,34);\">nh</span><span style=\"color:rgb(34,34,34);\">ững h</span><span style=\"color:rgb(34,34,34);\">ình&nbsp;</span><span style=\"color:rgb(34,34,34);\">ảnh kh</span><span style=\"color:rgb(34,34,34);\">ủng khi</span><span style=\"color:rgb(34,34,34);\">ếp c</span><span style=\"color:rgb(34,34,34);\">ủa v</span><span style=\"color:rgb(34,34,34);\">ụ h</span><span style=\"color:rgb(34,34,34);\">ỏa h</span><span style=\"color:rgb(34,34,34);\">oạn, <span style=\"color:rgb(34,34,34);\">nghe </span><span style=\"color:rgb(34,34,34);\">nh</span><span style=\"color:rgb(34,34,34);\">ững ti</span><span style=\"color:rgb(34,34,34);\">ếng la h</span><span style=\"color:rgb(34,34,34);\">ét của nạn nhân</span></span><span style=\"color:rgb(34,34,34);\">. Tuy nhi</span><span style=\"color:rgb(34,34,34);\">ên khi&nbsp;</span><span style=\"color:rgb(34,34,34);\">đi l</span><span style=\"color:rgb(34,34,34);\">àm, hai b</span><span style=\"color:rgb(34,34,34);\">ảo v</span><span style=\"color:rgb(34,34,34);\">ệ thấy </span><span style=\"color:rgb(34,34,34);\">ấm l</span><span style=\"color:rgb(34,34,34);\">òng ph</span><span style=\"color:rgb(34,34,34);\">ần n</span><span style=\"color:rgb(34,34,34);\">ào vì </span><span style=\"color:rgb(34,34,34);\">đ</span><span style=\"color:rgb(34,34,34);\">ược bà con cư dân thăm </span><span style=\"color:rgb(34,34,34);\">h</span><span style=\"color:rgb(34,34,34);\">ỏi, động viên.</span></p><p class=\"Normal\">\r\nCarina Plaza <span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">nằm <span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">trên </span></span>đường Võ Văn Kiệt, gồm ba lốc cao từ 14 đến 20 tầng, có khu thương mại, giải trí... và hơn 700 căn hộ.</span></span></p><p class=\"Normal\">\r\nHỏa hoạn xảy ra lúc hơn 1h ngày 23/3 tại tầng hầm chung cư. Theo điều tra ban đầu, một xe máy bất ngờ phát nổ, sau đó lửa lan sang những xe khác. Khi đám cháy bùng lên, các cửa cầu thang thông lên tầng trên mở bung do bị chêm gạch, khói lùa lên rất mạnh.</p><p class=\"Normal\">\r\nHệ thống chữa cháy tự động gần như không hoạt động, lực lượng chữa cháy tại chỗ không có, nên khi lính cứu hỏa đến nơi lửa khói đã rất lớn.</p><p class=\"Normal\">\r\nĐám cháy khiến 13 người chết, hơn 50 người bị thương; 13 ôtô và 150 xe máy bị thiêu rụi. Hậu quả nghiêm trọng nhất trong hơn mười năm tại TP HCM, chỉ sau thảm hoạ <a href=\"https://vnexpress.net/tin-tuc/thoi-su/cuoc-tuong-phung-sau-15-nam-tham-hoa-itc-o-sai-gon-3661595.html\">cháy ITC</a> (60 người chết) hồi năm 2002.</p><p class=\"Normal\">\r\nCông an TP HCM đang làm rõ nguyên nhân.</p><p class=\"Normal\" style=\"text-align:right;\">\r\n<strong>Tuyết Nguyễn</strong></p> </article>', '', '', 'bao-ve-carina-6896-1521988598_140x84.jpg', '2018-03-26 00:04:43', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `transaction_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `data` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`transaction_id`, `id`, `product_id`, `qty`, `amount`, `data`, `status`) VALUES
(7, 6, 2, 1, '4000000.0000', '', 1),
(8, 7, 2, 1, '4000000.0000', '', 0),
(9, 8, 8, 1, '10000000.0000', '', 0),
(10, 9, 8, 1, '10000000.0000', '', 0),
(11, 10, 8, 1, '10000000.0000', '', 2),
(12, 11, 8, 1, '10000000.0000', '', 0),
(13, 12, 8, 2, '20000000.0000', '', 0),
(14, 13, 8, 1, '10000000.0000', '', 1),
(15, 14, 3, 1, '5000000.0000', '', 0),
(16, 15, 3, 1, '5000000.0000', '', 0),
(17, 16, 3, 1, '5000000.0000', '', 0),
(18, 17, 3, 1, '5000000.0000', '', 0),
(19, 18, 3, 1, '5000000.0000', '', 0),
(20, 19, 3, 1, '5000000.0000', '', 0),
(21, 20, 8, 1, '10000000.0000', '', 0),
(22, 21, 9, 1, '5400000.0000', '', 0),
(22, 22, 8, 1, '9500000.0000', '', 0),
(23, 23, 9, 1, '5400000.0000', '', 0),
(24, 24, 2, 1, '3800000.0000', '', 0),
(24, 25, 4, 1, '6000000.0000', '', 0),
(24, 26, 5, 1, '5500000.0000', '', 0),
(25, 27, 38, 1, '122456.0000', '', 0),
(26, 28, 8, 1, '9500000.0000', '', 0),
(26, 29, 7, 1, '5800000.0000', '', 0),
(27, 30, 8, 1, '9500000.0000', '', 0),
(28, 31, 38, 1, '122456.0000', '', 0),
(31, 32, 8, 10, '95000000.0000', '', 0),
(34, 33, 8, 1, '9500000.0000', '', 0),
(35, 34, 2, 1, '3800000.0000', '', 0),
(36, 35, 5, 1, '5500000.0000', '', 0),
(38, 36, 6, 1, '5000000.0000', '', 0),
(39, 37, 8, 1, '9500000.0000', '', 0),
(40, 38, 8, 1, '9500000.0000', '', 0),
(40, 39, 7, 1, '5800000.0000', '', 0),
(40, 40, 5, 1, '5500000.0000', '', 0),
(41, 41, 8, 1, '9500000.0000', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `phone_show` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `phone`, `status`, `phone_show`) VALUES
(1, 1227475793, 1, '012.27.47.57.93'),
(3, 1693779225, 0, '069.377.9225');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_name`, `image_link`, `link`, `info`, `sort_order`) VALUES
(1, 'Slide 1', '', '11.jpg', 'http://dantri.com.vn/', '0', 1),
(2, 'Slide 2', '', '21.jpg', 'http://dantri.com.vn/', '', 2),
(3, 'Slide 3', '', '31.jpg', 'http://dantri.com.vn/', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `gmail`, `skype`, `phone`, `sort_order`) VALUES
(1, 'Hoang van tuyen', 'tuyenht90', 'hoangvantuyencnt@gmail.com', 'tuyencnt90', '01686039488', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` int(255) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Itinerary` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `catalog_id`, `name`, `maker_id`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `Itinerary`, `feature`) VALUES
(2, 4, 'Hanoi City Tour', 0, '4000000.0000', 'GÓI BAO GỒM\r\n• Vận chuyển bằng A / C \r\n• Hướng dẫn viên nói tiếng Anh \r\n• Phí tham quan và chai nước khoáng \r\n• Ăn trưa tại nhà hàng dân tộc\r\n\r\nKHÔNG BAO GỒM\r\n• Đồ uống, Lời khuyên (không bắt buộc) và Chi phí cá nhân \r\n• Những thứ khác không được đề cập rõ ràng trong bao bì\r\n\r\nCHÚ THÍCH\r\n• Giá tour tour ở trên là giá tour nhóm . \r\n• Hãy liên hệ với chúng tôi nếu bạn muốn làm tour du lịch tư nhân.', 200000, 'product2.jpg', '', 0, 11, '', 'The colonial capital city Hanoi is a unique Asian city with tree-lined boulevards, French colonial architecture, peaceful lakes and oriental pagodas and temples dating back a thousand years.', '12 tháng', 0, 0, 4, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', 'OPTION 1: TUESDAY, THURSDAY, SATURDAYS, SUNDAY  08:00  Get picked up by our tour guide and bus. After short drive, start visiting first place named Tran Quoc Pagoda, a Buddhist relic and national heritage lying on the West Lake.   09:00 Visit Ho Chi Minh’s Mausoleum, the final resting place of Viet Nam’s greatest father, walking along Ho Chi Minh’s stilt house where he lived and worked from 1958 to 1969.   10:00 Visit One-Pillar Pagoda – the one modeled after a lotus flower, a symbol of Hanoi city.   11:00 Visit the colorful features of the 54 ethnic groups of Viet Nam in the Ethnology Museum.   13:00 Bus takes you to a local restaurant in Hanoi Old Quarter, have a rest and enjoy the lunch.   14:00 Visit Temple of Literature, the most famous temple situated in Hanoi, also functioned as Vietnam\'s first university. It was first constructed in 1070 under King Ly Nhan Tong and dedicated to Confucius, sages and scholars. A vast structure that has existed to present day.   15:30 Drive to legendary Hoan Kiem Lake, visit Ngoc Son Temple dedicated to Van Xuong saint and former general commander Tran Hung Dao for his struggle against Mongolians. You also see the beautiful Vietnamese and French architecture around the lake.   16:00 Arrive back to your hotel. Tour ends.  OPTION 2: MONDAY, WEDNESDAY, FRIDAY 08:00  Get picked up by our tour guide and bus then visit first place named Tran Quoc Pagoda. Experience our national heritage and the beautiful Buddhist relics on the West Lake.  09:30 Visit a sacred place to recall President Ho Chi Minh’s life and career in Ho Chi Minh’s Mausoleum, the Stilt-house where Ho Chi Minh lived and worked from 1958 to 1969.   10:30 Visit One-Pillar Pagoda, the one modeled after a lotus flower, a symbol of Hanoi city in present days.   11:00 Visit the Temple of Literature, considering the first university of Viet Nam. The temple was first constructed in 1070 under King Ly Nhan Tong and dedicated to Confucius,sagesand scholars.   12:30 Have Vietnamese lunch at a local restaurant in Hanoi Old Quarter and relax.   13:30 Continue exploring the daily life of traditional ceramics village of Bat Trang. Visit the pottery showrooms and see how they modeled the products.   14:30 Drive backtoHoanKiem Lake to visit Ngoc Son Temple dedicated to Van Xuong Saint and Tran Hung Dao General Commander for his struggle against Mongolians.   15:30 Arrive back your hotel. Tour ends.', '0'),
(3, 4, 'Hanoi lovers foodie private tour', 0, '5000000.0000', 'PACKAGE INCLUDED\r\n• English speaking tour guide\r\n• Lunch/Dinner at at local restaurants(special Hanoi food: pillow cakes, spring rolls, noodle soup “Pho Ly Quoc Su”, yogurt mixed with fresh fruits)\r\n• Special drinks( Mineral water/Green tea, Hanoi special local beer and Egg coffee)\r\nPACKAGE EXCLUDED\r\n• Tips( not compulsory), and Personal Expenses\r\n\r\n• Other things are not mentioned clearly in the packages', 0, 'product7.jpg', '', 0, 13, '', 'With a 3-hour street food tour, experience a great way to explore a side of Old Quarter life with local cuisines as well as historical cultures', '12 tháng', 0, 0, 4, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '\"Tour starts from 11.30- 14.30/ or 18.00- 21.00\" At 11.30 or 18.00, our tour guide will welcome you at your hotel lobby, then start walking around Hanoi old quarter \"36 streets\" to visit some famous and specialized- food families or stalls/ local restaurants, shops where they run their business everyday, certainly you will watch and taste some particular dishes, we can customize vegetarian or special food too. Special thing is our guide will introduce you some popular authentic food in lovely local restaurants (not luxury restaurants) where you feel comfortable to sit down and enjoy some favorite dishes and nice drinks too. It\'s interesting to hear from tour guide about the history of the old quarter in Hanoi, it is thousand years old and today retains much of the old flavor that made the area special in earlier times, each street was the exclusive domain of one trade (guilds) so there are whole streets of blacksmiths, silver shops, paper shops, headstone makers and more. Originally there were just 36 streets in the old quarter but today there are more than 50 streets.  It is very difficult to find some local food stalls and special restaurants on your own in hidden alleys and sidewalks, certainly the best way to make it easy is joining with Swallow Travel, taking part in this special tour to learn about Vietnamese cuisine, culture, people and language. Food on Foot Tour will give you an unique experience to try our special local food and drinks, we ensure the food is handled hygienically and provide a comfortable venue for the tasting. The margin also goes back to the vendors or local restaurants/ families as we buy directly from them. At 14.30/or 21.00, our tour guide will take you back to the hotel. Trip ends.', '0'),
(4, 6, 'Hoa Lu Tam Coc full day tour', 0, '6000000.0000', 'PACKAGE INCLUDED\r\n*  Transportation with A/C\r\n*  English speaking tour guide\r\n*  Entrance fees & Mineral water bottle\r\n*  Vietnamese lunch\r\n• Cable car tickets at 9USD/person/2 ways\r\nPACKAGE EXCLUDED\r\n• Beverages, Tips( not compulsory), and Personal Expenses\r\n• Other things not mentioned clearly in the packages\r\nNOTE\r\n• The tour price above is for group tour.\r\n• Please contact us if you want to do private tour.', 0, 'product3.jpg', '', 0, 70, '', 'With a 3-hour street food tour, experience a great way to explore a side of Old Quarter life with local cuisines as well as historical cultures', '12 tháng', 0, 0, 12, 3, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '8:00 - 8:30 Get pick up by our tour guide and bus then depart for Perfume Pagoda (60 km west of Hanoi). Have a break 20 minutes half way to relax and experience Vietnamese handicraft products such as lacquer wares, paintings, embroideries…  10:00 Upon arrival prepare your things and start a 40 minute boat ride along the river side to enjoy beautiful landscapes of streams and paddy fields.  11:00 Leave the boat and do hiking up to the unique pagoda inside the cave (Huong Tich Cave) on the mountain summit (2.5km in height). Reaching the cave, you will have a feeling of entering the holy land of Buddhism. Also experience the breath-taking views of the mountainous landscape. We will arrange cable car return way for you.  12:30 Go back down and enjoy Vietnamese lunch in a local restaurant nearby.  14:20 Visit Thien Tru Pagoda (called celestial kitchen), viewing the beautiful religious architectures.  15:00 Board the boat back to Duc Dock and return Hanoi.  18:30 Arrive in Hanoi. Get dropped off at your morning places. Tour ends.', '0'),
(5, 5, 'Trang An Ecotourism Complex- Bai Dinh Pagoda Tour', 0, '5500000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product4.jpg', '', 0, 17, '', 'Visit Hoa Lu and Tam Coc and learn more about the northern Vietnamese countryside, history, and culture on a full-day tour. Hoa Lu is an ancient capital, and Tam Coc, which means “3 caves,” features karst formations and caves you’ll explore by boat.', '12 tháng', 0, 0, 0, 0, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(6, 7, 'Perfume Pagoda 1 Day Tour', 0, '5000000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 0, 'product5.jpg', '', 0, 6, '', 'Trang An, the eco tourist attraction located in the East of Ninh Binh, with area of 2000 ha, is divided into 5 function parts: special protection area (Hoa Lu Ancient Capital), the centre, caves area, service and travel area, spirit area Bai Dinh Pagoda', '12 tháng', 0, 0, 0, 0, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(7, 14, 'Mai Chau full day private tour', 0, '6200000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 400000, 'product6.jpg', '', 0, 86, '', 'The Perfume Pagoda (Chùa Hương) is a vast complex of Buddhist temples and shrines built into the limestone Huong Tich mountains. The Perfume Pagoda one of the most important religious sites in Buddhist Vietnam.', '12 tháng', 0, 0, 7, 2, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(8, 5, 'Cyclo and Water Puppetry Tour', 0, '10000000.0000', 'Bài viết cho sản phẩm này đang được cập nhật ...', 500000, 'product1.jpg', '', 0, 159, '', 'Rushed of time? We offer a 1 day trip tour to Mai Chau and back to Hanoi in one day so you can visit beautiful Mai Chau and continue your travels.', '12 tháng', 0, 0, 17, 5, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(1, 8, 'Sapa Tour 3 Nights 2 Days By Night Train', 0, '5400000.0000', 'PACKAGE INCLUDED\r\n• Transportation with A/C\r\n• English speaking tour guide\r\n• Entrance fees & Mineral water bottle\r\n• Buffet lunch\r\n• Bicycle\r\n\r\nPACKAGE EXCLUDED\r\n• Beverages, Tips( not compulsory), and Personal Expenses\r\n• Other things are not mentioned clearly in the packages\r\n\r\nNOTE\r\n• The tour price above is for a group tour.\r\n•  Please contact us if you want to do a private tour.', 0, 'product13.jpg', 'a:0:{}', 0, 28, '', 'Enjoy a 1 hour traditional puppetry art show . Take a ride on a cyclo for an adventure winding through the sights, sounds & smells of this historic metropolis.', '12 tháng', 0, 0, 4, 1, '0', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '08:00 - 08:30 Get picked up by our tour guide and bus then depart for Ninh Binh province (90 km south of Hanoi). Have a break 20 minutes halfway to relax and experience Vietnamese handicraft products such as lacquer wares, paintings, embroideries… 10:30 Arrive at Hoa Lu, which is once depicted the ancient capital of Viet Nam, settled up in the 10th century. 11:00 Visit temples of two dynasties of Dinh and Le with a unique architecture in the old time. 11:30 Visit the excavation area beside the Le Dai Hanh temple. You experience the vestiges of Royal Palaces ground dated back 10th century. Go back to the bus and drive to Tam Coc. CYCLING RIDE (optional): Those who love to explore real countryside images of Vietnam can proceed a 40 minute cycling ride along the country lane (from Tam Coc to Bich Dong Pagoda, estimated time 40 minutes for 5km cycling 2 ways), experiencing the beautiful scenery of lush paddy fields. Finish the cycling ride at Tam Coc docks in time for lunch at local restaurant. 14:00 Board the sampan boats (2 people sharing a boat) in Tam Coc dock to drift down the river among the villages, mountains and lush rice fields. Passing through 3 caves \"Hang Ca - First cave, Hang Hai -Second cave, Hang Ba - Third cave\" to get a strange feeling. Boat returns to the dock for bus drive back to Hanoi. 18:00 Arrive in Hanoi. Tour ends.', '0'),
(38, 9, 'Duong Lam Ancient Village Tour', 0, '123456.0000', '<div class=\"z-content-inner\">\r\n                                        <h3><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">PACKAGE INCLUDED</span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">•&nbsp;Transportation with A/C<br>\r\n•&nbsp;English speaking tour guide<br>\r\n•&nbsp;Entrance fees &amp; mineral water bottle<br>\r\n•&nbsp;Lunch</span></span><span style=\"font-size:18px\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">at</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">ethnic restaurant</span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">PACKAGE EXCLUDED</span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">•&nbsp; Beverages, Tips( not compulsory), and Personal Expenses<br>\r\n•&nbsp;Other things are&nbsp;not mentioned clearly in the packages</span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">NOTE</span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">•&nbsp; The tour price above is for </span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">group</span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"> tour.<br>\r\n•&nbsp;Please contact us if you want to</span></span><span style=\"font-size:12px\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">do</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">private tour.</span></span></p>\r\n\r\n                                    </div>', 1000, 'product13.jpg', '[\"Desert.jpg\",\"Hydrangeas.jpg\",\"Jellyfish.jpg\",\"Koala.jpg\",\"Lighthouse.jpg\",\"Penguins.jpg\",\"Tulips.jpg\"]', 0, 69, 'khuyến mãi', 'Duong Lam ancient village was recognized the UNESCO Conservation Heritage in 2013. This village has been known as a museum of laterite with ancient houses aged up to 400 years old.', '1 năm', 0, 0, 0, 0, 'áo mưa', '', '<div class=\"z-content-inner\">\r\n                                        <h3><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong>OPTION 1: TUESDAY, THURSDAY, SATURDAYS, SUNDAY</strong></span></span></h3>\r\n&nbsp;<span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong>08:00&nbsp;&nbsp;</strong>Get picked up by our tour guide and bus. After </span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">short</span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"> drive, start visiting </span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">first</span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"> place named&nbsp;<strong>Tran Quoc Pagoda</strong>, a Buddhist relic and national heritage lying on the&nbsp;<strong>West Lake</strong>.</span></span>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;<br>\r\n<strong>09:00</strong>&nbsp;Visit&nbsp;<strong>Ho Chi Minh’s Mausoleum</strong>, the final resting place of Viet Nam’s greatest father, walking along Ho Chi Minh’s stilt house where he lived and worked from 1958 to 1969.<br>\r\n&nbsp;<br>\r\n<strong>10:00</strong>&nbsp;Visit&nbsp;<strong>One-Pillar Pagoda</strong>&nbsp;– the one modeled after a lotus flower, a symbol of Hanoi city.<br>\r\n&nbsp;<br>\r\n<strong>11:00</strong>&nbsp;Visit the colorful features of the 54 ethnic groups of Viet Nam in the&nbsp;<strong>Ethnology Museum</strong>.<br>\r\n&nbsp;<br>\r\n<strong>13:00</strong>&nbsp;Bus takes you to a local restaurant in&nbsp;<strong>Hanoi Old Quarter</strong>, have a rest and enjoy the lunch.<br>\r\n&nbsp;<br>\r\n<strong>14:00</strong>&nbsp;Visit&nbsp;<strong>Temple of Literature</strong>, the most famous temple situated in Hanoi, also functioned as Vietnam\'s first university. It was first constructed in 1070 under King Ly Nhan Tong and dedicated to Confucius, sages </span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">and</span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"> scholars. A vast structure that has existed to present day.<br>\r\n&nbsp;<br>\r\n<strong>15:30</strong>&nbsp;Drive to legendary&nbsp;</span></span><strong><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">Hoan Kiem</span></span></strong><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong> Lake,&nbsp;</strong>visit&nbsp;<strong>Ngoc Son Temple</strong>&nbsp;dedicated to Van Xuong saint and former general commander Tran Hung Dao for his struggle against Mongolians. You also see the beautiful Vietnamese and French architecture around the lake.<br>\r\n&nbsp;<br>\r\n<strong>16:00</strong>&nbsp;Arrive back to your hotel. Tour ends.</span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong>OPTION 2: MONDAY, WEDNESDAY, FRIDAY</strong></span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"><strong>08:00</strong>&nbsp; Get picked up by our tour guide and bus then visit </span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">first</span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\"> place named Tran Quoc Pagoda. Experience our national heritage and the beautiful Buddhist relics on the West Lake.<br>\r\n<br>\r\n<strong>09:30</strong> Visit a sacred place to recall President Ho Chi Minh’s life and career in Ho Chi Minh’s Mausoleum, the Stilt-house where Ho Chi Minh lived and worked from 1958 to 1969.<br>\r\n&nbsp;<br>\r\n<strong>10:30</strong> Visit One-Pillar Pagoda, the one modeled after a lotus flower, a symbol of Hanoi city in present days.<br>\r\n&nbsp;<br>\r\n<strong>11:00</strong> Visit the Temple of Literature, considering the first university of Viet Nam. The temple was first constructed in 1070 under King Ly Nhan Tong and dedicated to Confucius,</span></span><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">sages</span></span><span style=\"font-size:16px\"><span style=\"font-family:times new roman,times,serif\">and</span><span style=\"font-family:times new roman,times,serif\"> scholars.<br>\r\n&nbsp;<br>\r\n<strong>12:30</strong> Have Vietnamese lunch at a local restaurant in Hanoi Old Quarter and relax.<br>\r\n&nbsp;<br>\r\n<strong>13:30</strong> Continue exploring the daily life of traditional ceramics village of Bat Trang. Visit the pottery showrooms and see how they modeled the products.<br>\r\n&nbsp;<br>\r\n<strong>14:30</strong> Drive back</span><span style=\"font-family:times new roman,times,serif\">toHoanKiem Lake to visit Ngoc Son Temple dedicated to Van Xuong Saint and Tran Hung Dao General Commander for his struggle against Mongolians.<br>\r\n&nbsp;<br>\r\n<strong>15:30</strong> Arrive back your hotel. Tour ends.</span></span></p>\r\n\r\n                                    </div>', '0');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `type`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `payment_info`, `message`, `security`, `created`) VALUES
(7, 0, 1, 15, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '4000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(8, 0, 0, 15, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '4000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(9, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'nganluong', '', '111', '', '2018-03-25 22:17:17'),
(10, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'nganluong', '', '111111', '', '2018-03-25 22:17:17'),
(11, 0, 2, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '111111', '10000000.0000', 'nganluong', '', '111', '', '2018-03-25 22:17:17'),
(12, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '7667676', '10000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(13, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '11', '20000000.0000', 'nganluong', '', '11', '', '2018-03-25 22:17:17'),
(14, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(15, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(16, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(17, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(18, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(19, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(20, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(21, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'dathang', '', '', '', '2018-03-25 22:17:17'),
(22, 0, 0, 20, 'NGUYỄN NGỌC LUẬT', 'luatnguyen13ck4@gmail.com', '01693779225', '14900000.0000', 'offline', '', 'lê đình cẩn', '', '2018-03-25 22:17:17'),
(23, 0, 0, 20, 'NGUYỄN NGỌC LUẬT', 'luatnguyen13ck4@gmail.com', '01693779225', '5400000.0000', 'offline', '', 'abcd', '', '2018-03-25 22:17:17'),
(24, 0, 0, 0, 'asfdgdfdvsdgsdg', 'aaaa@gmail.com', '123546798', '15300000.0000', 'offline', '', 'asfsdgfdhdweter23534hjgh', '', '0000-00-00 00:00:00'),
(25, 0, 0, 0, 'rrrrrrrrrrrrrrrrr', 'rrrrrrrr@gmail.com', '12346787', '122456.0000', 'baokim', '', 'rrrrrrrrrrrrrr', '', '0000-00-00 00:00:00'),
(26, 0, 0, 0, 'hhhhhhhhhhhh', 'hhhhhh@gmail.com', '124765432', '15300000.0000', 'nganluong', '', 'lkdfgskmdfkw54232lksf', '', '0000-00-00 00:00:00'),
(27, 0, 0, 0, '2345678sdfgh', 'aaaa@gmail.com', '345678', '9500000.0000', 'offline', '', '234567u8i', '', '0000-00-00 00:00:00'),
(28, 0, 0, 0, '111111111111111111', '1111111@gmail.com', '11111111111111111111', '122456.0000', 'offline', '', '11111111111111111', '', '0000-00-00 00:00:00'),
(29, 0, 0, 0, '1', '1', '1', '0.0000', '', '1', '', '', '2018-03-26 14:01:30'),
(30, 0, 0, 0, '', '', '', '0.0000', '', 'ưerwer', '', '', '2018-03-26 14:04:56'),
(31, 0, 0, 0, '22222222222', '44444444444444@gmail.com', '2222222222222', '95000000.0000', 'offline', '', '2222222222', '', '0000-00-00 00:00:00'),
(32, 0, 0, 0, '', '', '', '0.0000', '', 'g', '', '', '2018-03-26 14:25:03'),
(33, 0, 0, 0, '', '', '', '0.0000', '', '', '', '', '2018-03-26 14:32:24'),
(34, 0, 0, 0, 'Huynhthithuy1967', 'hhhhhh@gmail.com', 'hhdsfdsfdf', '9500000.0000', 'offline', '', 'dfdsf23242', '', '2018-03-26 14:36:17'),
(35, 0, 0, 0, 'fffffffff', '44444444444444@gmail.com', '12352534', '3800000.0000', 'offline', '', '3245324534', '', '0000-00-00 00:00:00'),
(36, 0, 0, 0, 'hhhhhhhhhhhh', 'hhhhhh@gmail.com', '55435432', '5500000.0000', 'offline', '', '5234534543435', '', '0000-00-00 00:00:00'),
(37, 0, 0, 0, '', '', '', '0.0000', '', '', '', '', '2018-03-26 15:14:58'),
(38, 0, 0, 0, 'hhhhhhhhhhhh', 'ggg@gmail.com', '11111111111111111111', '5000000.0000', 'offline', '', '111111111111111111111', '', '0000-00-00 00:00:00'),
(39, 0, 0, 0, 'hhhhhhhhhhhh', 'ggg@gmail.com', '12432563475', '9500000.0000', 'offline', '', 'sdfnsdfn98u98f', '', '2018-03-26 15:18:55'),
(40, 0, 0, 0, 'Nguyễn Văn Tiến', 'tien@gmail.com', '1123456789', '20800000.0000', 'offline', '', 'đức lân mộ đức', '', '2018-03-26 16:02:46'),
(41, 0, 0, 21, 'nguyễn ngọc luật', 'ngocluat13ck4@gmail.com', '123456789', '9500000.0000', 'offline', '', 'hhhhhhhhhh', '', '2018-03-26 16:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`) VALUES
(16, 'Hoàng văn Tuyền', 'tuyenht90@yahoo.com', '01686039488', '111111', '96e79218965eb72c92a549dd5a330112', 1405589118),
(19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '111', '96e79218965eb72c92a549dd5a330112', 0),
(20, 'NGUYỄN NGỌC LUẬT', 'luatnguyen13ck4@gmail.com', '01693779225', '45/33a Lê Đình Cẩn', 'e10adc3949ba59abbe56e057f20f883e', 1521032813),
(21, 'nguyễn ngọc luật', 'ngocluat13ck4@gmail.com', '123456789', '45/33a ', 'e10adc3949ba59abbe56e057f20f883e', 1522049813),
(23, 'Nguyễn ngọc luật', 'nguyennguyen13ck4@gmail.com', '123456789', 'Mã lò', 'e10adc3949ba59abbe56e057f20f883e', 1522135342);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(255) NOT NULL,
  `count_view` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `feature` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `view` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `count_view`, `name`, `images`, `intro`, `link`, `feature`, `created`, `view`) VALUES
(10, 0, 'Chuyện Tình Trên Facebook - Hồ Việt Trung [Official]', '1386147113843_video.jpg', '', 'http://www.youtube.com/watch?v=3ZlLyU2L4P0', 1386146497, 2013, 4),
(8, 0, 'Chỉ còn trong mơ & Phải không em', '1386147092891_video.jpg', '', 'http://www.youtube.com/watch?v=RfNJ43HBzOM', 1386146505, 2013, 6),
(7, 0, '[HD] Anh Xin Lỗi - Minh Vương M4U', '1386147058495_video.jpg', '', 'http://www.youtube.com/watch?v=OCZ4D9qT8lI', 1386146502, 2013, 17),
(16, 0, 'Nhốt Em Vào Tim - Hồ Việt Trung [Official]', '1386147135763_video.jpg', '', 'http://www.youtube.com/watch?v=fkDSnN_I_Ig', 0, 1386147135, 0),
(17, 0, 'Chỉ Yêu Mình Em - Châu Khải Phong [Official]', '1386147154302_video.jpg', '', 'http://www.youtube.com/watch?v=l2MydtlKra8', 0, 1386147154, 4),
(18, 0, 'Số Nghèo - Châu Khải Phong [Official]', '138614718279_video.jpg', '', 'http://www.youtube.com/watch?v=LJRvv8U6Dos', 1386147576, 1386147182, 1),
(19, 0, 'Trò Chơi Đắng Cay - Châu Khải Phong [Official]', '138614721063_video.jpg', '', 'http://www.youtube.com/watch?v=3J8d8-YgOlU', 1386147575, 1386147210, 0),
(20, 0, 'Sầu Tím Thiệp Hồng - Quang Lê & Lệ Quyên ( Liveshow Quang Lê )', '1386147271236_video.jpg', '', 'http://www.youtube.com/watch?v=Kd5OrV4Y_bs', 0, 1386147271, 0),
(21, 0, 'Gõ cửa trái tim Quang Lê - Mai Thiên Vân', '1386147292776_video.jpg', '', 'http://www.youtube.com/watch?v=9oVxDQsgXIQ', 1386147577, 1386147292, 0),
(22, 0, 'Cô Hàng Xóm - Quang Lê', '1386147310490_video.jpg', '', 'http://www.youtube.com/watch?v=nA9ub4zlel8', 0, 1386147310, 0),
(23, 0, 'Lam Truong - Mai Mai', '1386147353743_video.jpg', '', 'http://www.youtube.com/watch?v=o1igATj9lMw', 0, 1386147353, 0),
(24, 0, 'Lỡ Yêu Em Rồi - Bằng Kiều', '1386147364632_video.jpg', '', 'http://www.youtube.com/watch?v=HYi-5dM_c34', 0, 1386147364, 0),
(25, 0, 'Bản Tình Cuối - Bằng Kiều', '1386147389790_video.jpg', '', 'http://www.youtube.com/watch?v=pNr7jEQ8LT8', 0, 1386147389, 2),
(26, 1, 'Phút cuối - Bằng Kiều', '1386150063515_video.jpg', '', 'http://www.youtube.com/watch?v=sA_gM6_eqXU', 0, 1386150063, 0),
(27, 0, 'Giấc Mơ (Live) - Bùi Anh Tuấn ft Yanbi', '1386150103768_video.jpg', '', 'http://www.youtube.com/watch?v=XLr463dUNgQ', 0, 1386150103, 0),
(28, 4, 'Anh Nhớ Em - Tuấn Hưng', '1386150121482_video.jpg', '', 'http://www.youtube.com/watch?v=ewNQtt1RiSk', 0, 1386150121, 0),
(29, 0, 'LE QUYEN & TUAN HUNG - Nhu Giac Chiem Bao', '1386150141608_video.jpg', '', 'http://www.youtube.com/watch?v=DaMARvh0kms', 0, 1386150141, 0),
(30, 10, 'Dĩ Vãng Cuộc Tình - Duy Mạnh ft Tuấn Hưng', '140905101897_video.jpg', '', 'http://www.youtube.com/watch?v=g8I-LoBIFgQ', 0, 1409051018, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_static`
--
ALTER TABLE `content_static`
  ADD PRIMARY KEY (`id`,`key`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `info` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `maker`
--
ALTER TABLE `maker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tours` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `content_static`
--
ALTER TABLE `content_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `maker`
--
ALTER TABLE `maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
