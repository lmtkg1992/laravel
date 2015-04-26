-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2015 at 05:48 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(50) NOT NULL,
  `parent_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `storage_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_major` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `mime_minor` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `width` bigint(20) unsigned DEFAULT NULL,
  `height` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `parent_type`, `parent_id`, `user_id`, `creation_date`, `modified_date`, `storage_path`, `extension`, `name`, `mime_major`, `mime_minor`, `size`, `width`, `height`) VALUES
(1, 'album', '1', NULL, '2014-01-20 17:30:12', '2014-01-20 17:30:12', 'public/images/414450e204aac1c60d181fed48c6dc28.jpg', 'jpg', '52bd50e1_7c9dfcf4_20_resize.jpg', 'image', 'jpeg', 181, 600, 400),
(2, 'album', '1', NULL, '2014-01-20 17:34:19', '2014-01-20 17:34:19', 'public/images/15ec522c73c8e1a5e16f9cf464302222.jpg', 'jpg', 'Han_Zi_Xuan_1(1).jpg', 'image', 'jpeg', 55, 600, 900),
(3, 'album', '1', NULL, '2014-01-20 17:42:47', '2014-01-20 17:42:47', 'public/images/dcf12b9e44d32df2c9b826494baaa542.jpg', 'jpg', 'Han_Zi_Xuan_10.jpg', 'image', 'jpeg', 81, 523, 800),
(4, 'album', '1', NULL, '2014-01-20 17:43:10', '2014-01-20 17:43:10', 'public/images/6b2c5905bab590f19e53cfda1481bf1b.jpg', 'jpg', '52bd50e5_6d62d196_22_resize.jpg', 'image', 'jpeg', 218, 600, 450),
(5, 'album', '1', NULL, '2014-01-20 17:43:23', '2014-01-20 17:43:23', 'public/images/6de04dde80478fb8b051a27a038591eb.jpg', 'jpg', 'Han_Zi_Xuan_26(1).jpg', 'image', 'jpeg', 97, 542, 800),
(6, 'album', '1', NULL, '2014-01-20 17:43:52', '2014-01-20 17:43:52', 'public/images/30d9f3caadebb105787c6e0c03f1de16.jpg', 'jpg', 'Han_Zi_Xuan_49.jpg', 'image', 'jpeg', 62, 533, 800),
(7, 'album', '1', NULL, '2014-01-20 17:44:08', '2014-01-20 17:44:08', 'public/images/55ffbcda5987ae2dc094bd4906ba9064.jpg', 'jpg', 'Han_Zi_Xuan_30(1).jpg', 'image', 'jpeg', 111, 800, 520),
(8, 'album', '1', NULL, '2014-01-20 17:54:05', '2014-01-20 17:54:05', 'public/images/77343bae6bfe1ea272d8c889794cdda6.jpg', 'jpg', 'Han_Zi_Xuan_28+(1).jpg', 'image', 'jpeg', 81, 544, 800),
(9, 'album', '1', NULL, '2014-01-20 19:06:13', '2014-01-20 19:06:13', 'public/images/054c0db7e479d9c5bb6708b0748452af.jpg', 'jpg', 'Han_Zi_Xuan_1.jpg', 'image', 'jpeg', 80, 526, 800),
(10, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/527583aa0e85c54e0117930feaf7b708.jpg', 'jpg', '52bd50e3_4953a786_21_resize.jpg', 'image', 'jpeg', 859, 900, 1350),
(11, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/c60c8edbfad8f72d94eb726471ebc6f5.jpg', 'jpg', '52bd50e5_6d62d196_22_resize.jpg', 'image', 'jpeg', 218, 600, 450),
(12, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/c1e467bb8da8158fcdeb56c53c799526.jpg', 'jpg', 'Han_Zi_Xuan_1(1).jpg', 'image', 'jpeg', 55, 600, 900),
(13, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/69bf1d664867f45cbfe99e731b46fe31.jpg', 'jpg', 'Han_Zi_Xuan_1.jpg', 'image', 'jpeg', 80, 526, 800),
(14, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/3e112ee6b1aeeafe5602d748b835ff7c.jpg', 'jpg', 'Han_Zi_Xuan_2(1).jpg', 'image', 'jpeg', 58, 600, 900),
(15, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/0cd98393f384b7019701ecff83e5bcce.jpg', 'jpg', 'Han_Zi_Xuan_2.jpg', 'image', 'jpeg', 84, 537, 800),
(16, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/76a3dc8037aefa7a9b82ca3f52e73d6d.jpg', 'jpg', 'Han_Zi_Xuan_4.jpg', 'image', 'jpeg', 61, 600, 900),
(17, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/85dd3e86b493595ace81791c097db181.jpg', 'jpg', 'Han_Zi_Xuan_5(1).jpg', 'image', 'jpeg', 55, 600, 900),
(18, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/31221dd17cd7ebef3410d9bb41e8507e.jpg', 'jpg', 'Han_Zi_Xuan_5.jpg', 'image', 'jpeg', 140, 600, 800),
(19, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/86b0392036dd85dcb407f667cc230acb.jpg', 'jpg', 'Han_Zi_Xuan_6(1).jpg', 'image', 'jpeg', 53, 600, 899),
(20, 'album', '1', NULL, '2014-01-22 10:35:13', '2014-01-22 10:35:13', 'public/images/5a065839032d7d528796222b1c4a25bf.jpg', 'jpg', 'Han_Zi_Xuan_6.jpg', 'image', 'jpeg', 63, 670, 429),
(21, 'album', '1', NULL, '2014-01-22 16:12:07', '2014-01-22 16:12:07', 'public/images/196a3fe3f5beb5bb4ab596deed1f1508.jpg', 'jpg', 'Han_Zi_Xuan_6.jpg', 'image', 'jpeg', 63, 670, 429),
(22, 'album', '1', NULL, '2014-01-22 16:12:07', '2014-01-22 16:12:07', 'public/images/093768a525c91e98fffb4e9a16b46eee.jpg', 'jpg', 'Han_Zi_Xuan_7.jpg', 'image', 'jpeg', 55, 670, 408),
(23, 'album', '1', NULL, '2014-01-22 16:12:07', '2014-01-22 16:12:07', 'public/images/9d45b770b14ac0d15d768b316fb165fb.jpg', 'jpg', 'Han_Zi_Xuan_10.jpg', 'image', 'jpeg', 81, 523, 800),
(24, 'album', '1', NULL, '2014-01-22 16:12:07', '2014-01-22 16:12:07', 'public/images/889781fb725dfc92abf41238fde28df3.jpg', 'jpg', 'Han_Zi_Xuan_11.jpg', 'image', 'jpeg', 70, 670, 431),
(25, 'album', '1', NULL, '2014-01-23 15:27:27', '2014-01-23 15:27:27', 'public/images/2102602f2f8bce77c2d439e451a35dda.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(26, 'album', '1', NULL, '2014-01-23 15:27:27', '2014-01-23 15:27:27', 'public/images/25c96f99b3fb6fb49b51e5da9e95fdf4.jpg', 'jpg', '52b246b2_39e870d9_h4.jpg', 'image', 'jpeg', 101, 660, 485),
(27, 'album', '1', NULL, '2014-01-23 15:27:27', '2014-01-23 15:27:27', 'public/images/1efffd637a9ef1b8b6f6c3d79b8dc46e.jpg', 'jpg', '52b246b2_6650d388_h3.jpg', 'image', 'jpeg', 103, 660, 497),
(28, 'album', '1', NULL, '2014-01-23 15:27:27', '2014-01-23 15:27:27', 'public/images/e4114d04a36d5ab4cf94b3c2c238631c.jpg', 'jpg', '52b246b3_3011efb3_h5.jpg', 'image', 'jpeg', 90, 660, 471),
(29, 'album', '1', NULL, '2014-01-23 15:27:27', '2014-01-23 15:27:27', 'public/images/d013282fdd378169852b8dfc177055ba.jpg', 'jpg', '52b246b3_690611f7_h8.jpg', 'image', 'jpeg', 203, 660, 1095),
(30, 'album', '1', NULL, '2014-02-06 15:28:42', '2014-02-06 15:28:42', 'public/images/2d7619fd5548f286150bf1606538b928.jpg', 'jpg', 'Han_Zi_Xuan_6.jpg', 'image', 'jpeg', 63, 670, 429),
(31, 'album', '1', NULL, '2014-02-06 15:28:42', '2014-02-06 15:28:42', 'public/images/b577f9b0938cc984e32b10b3eda4406f.jpg', 'jpg', 'Han_Zi_Xuan_7.jpg', 'image', 'jpeg', 55, 670, 408),
(32, 'album', '1', NULL, '2014-02-06 15:28:42', '2014-02-06 15:28:42', 'public/images/6a999abad74df39b627c339ac7630809.jpg', 'jpg', 'Han_Zi_Xuan_10.jpg', 'image', 'jpeg', 81, 523, 800),
(33, 'album', '1', NULL, '2014-02-06 15:28:42', '2014-02-06 15:28:42', 'public/images/cfe559e7ee1c6dd79a7b657c9ddb5c4d.jpg', 'jpg', 'Han_Zi_Xuan_11.jpg', 'image', 'jpeg', 70, 670, 431),
(34, 'album', '1', NULL, '2014-02-06 15:28:42', '2014-02-06 15:28:42', 'public/images/f7f64375ce3b2d3e458ee66d486fa826.jpg', 'jpg', 'Han_Zi_Xuan_12.jpg', 'image', 'jpeg', 52, 640, 414),
(35, 'album', '1', NULL, '2014-02-06 15:28:42', '2014-02-06 15:28:42', 'public/images/4e96178e9b926741e3dab025872a077b.jpg', 'jpg', 'Han_Zi_Xuan_13.jpg', 'image', 'jpeg', 93, 527, 800),
(36, 'album', '1', NULL, '2014-02-10 17:26:50', '2014-02-10 17:26:50', 'public/images/0ccf64c0990954e4699c49247eb8c5b8.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(37, 'album', '1', NULL, '2014-02-11 12:48:36', '2014-02-11 12:48:36', 'public/images/6617e2419bc1eb32e78fef36fc408cd8.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(38, 'album', '1', NULL, '2014-02-11 12:49:11', '2014-02-11 12:49:11', 'public/images/05f09ba4041aafefbb49f61e282b75d6.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(39, 'album', '1', NULL, '2014-02-11 12:49:21', '2014-02-11 12:49:21', 'public/images/127848ca92550e5a1c34dfadefe1a64d.jpg', 'jpg', '951be73b7bf453.jpg', 'image', 'jpeg', 116, 400, 600),
(40, 'album', '1', NULL, '2014-02-11 12:49:21', '2014-02-11 12:49:21', 'public/images/7a4a92ca2d0c52d6e59c0a044a885b97.jpg', 'jpg', '951be73b568df9.jpg', 'image', 'jpeg', 92, 400, 600),
(41, 'album', '1', NULL, '2014-02-11 12:49:21', '2014-02-11 12:49:21', 'public/images/3013017235e37f28ef6199e122536e7c.jpg', 'jpg', '951be73c387a81.jpg', 'image', 'jpeg', 35, 500, 333),
(42, 'album', '1', NULL, '2014-02-12 18:18:56', '2014-02-12 18:18:56', 'public/images/bd31c407b340a88669d00a0e37c140ed.jpg', 'jpg', 'Han_Zi_Xuan_36.jpg', 'image', 'jpeg', 98, 536, 800),
(43, 'album', '1', NULL, '2014-02-16 04:11:01', '2014-02-16 04:11:01', 'public/images/bce00329445c0bc7e071d755bd03eb52.jpg', 'jpg', '52bd50e3_4953a786_21_resize.jpg', 'image', 'jpeg', 859, 900, 1350),
(44, 'album', '1', NULL, '2014-02-16 07:32:14', '2014-02-16 07:32:14', 'public/images/728473356004c5dbbbabbb2f4f37af31.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(45, 'album', '1', NULL, '2014-02-16 07:32:14', '2014-02-16 07:32:14', 'public/images/3cb50d8db47269d1bf9ffeedc03968f4.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(46, 'album', '1', NULL, '2014-02-16 07:32:36', '2014-02-16 07:32:36', 'public/images/10cf0907d2906d701630a5ae0c7a75b2.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(47, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/468470e84ebbe0950f9fdcdd0b7a1630.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(48, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/d945b285a510b936c444cc1950f1b74d.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(49, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/42ac2bf7171ed5a2c6dc773272070dd9.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(50, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/9e6ccdf89ee0d6bcbff7f78f1208568e.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(51, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/f22f5284aecc0ca77bf7be56d2464d98.jpg', 'jpg', '951be73b7bf453.jpg', 'image', 'jpeg', 116, 400, 600),
(52, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/f009abe6126b6b04e90158072af8a626.jpg', 'jpg', '951be73b568df9.jpg', 'image', 'jpeg', 92, 400, 600),
(53, 'album', '1', NULL, '2014-02-16 07:41:16', '2014-02-16 07:41:16', 'public/images/d3d75f25e6390081a99ce7b2f46a6df1.jpg', 'jpg', '951be73b407810.jpg', 'image', 'jpeg', 103, 400, 600),
(54, 'album', '1', NULL, '2014-02-16 09:07:48', '2014-02-16 09:07:48', 'public/images/68cf2315616f7374dfc64dc6f716a533.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(55, 'album', '1', NULL, '2014-02-18 17:33:49', '2014-02-18 17:33:49', 'public/images/762059f6c1ca62f722c8d5a40a619087.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(56, 'album', '1', NULL, '2014-02-18 17:35:05', '2014-02-18 17:35:05', 'public/images/2583ce02fe4e4ab20275cd123a9d24bf.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(57, 'album', '1', NULL, '2014-02-18 17:36:18', '2014-02-18 17:36:18', 'public/images/cb5df3427ab76501aeab54064625e656.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(58, 'album', '1', NULL, '2014-02-18 17:36:44', '2014-02-18 17:36:44', 'public/images/bd71710355354fafcb64b452827585e4.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(59, 'album', '1', NULL, '2014-02-18 17:37:15', '2014-02-18 17:37:15', 'public/images/38fab813c517c3f5b22609c01ad6834d.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(60, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/abd9dd00177c367f14884a005f3f8194.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(61, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/9977899f16294bd4d0c5fe2092cd59d0.jpg', 'jpg', '951f5dbad88c64.jpg', 'image', 'jpeg', 241, 480, 646),
(62, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/ec09e5e63f3cd99c3b4e4eefa6e2df91.jpg', 'jpg', '951f5dbb51b667.jpg', 'image', 'jpeg', 238, 480, 646),
(63, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/0dfc53ff9f5613b03908e5eb13dbf1be.jpg', 'jpg', '951f7bfb875b6c.jpg', 'image', 'jpeg', 174, 500, 702),
(64, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/7af51f6bb10d0728d2e29d0d4a37c4e3.jpg', 'jpg', '951f7bfcc93ab0.jpg', 'image', 'jpeg', 142, 500, 418),
(65, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/5b806c041d16298b5876a4a62f731dd3.jpg', 'jpg', '951f7bfd4d43cf.jpg', 'image', 'jpeg', 97, 500, 449),
(66, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/f10a87cb1a5d7f319db9f1874428b8ef.jpg', 'jpg', '952a1d4166714e.jpg', 'image', 'jpeg', 89, 400, 539),
(67, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/860262cca9df1da2abb4c1ba936a535f.jpg', 'jpg', '9525b8e75c4950.jpg', 'image', 'jpeg', 231, 480, 646),
(68, 'album', '1', NULL, '2014-02-18 17:37:46', '2014-02-18 17:37:46', 'public/images/373f1ae1b9a3dcd370d474e689020fdc.jpg', 'jpg', '9524255e882557.jpg', 'image', 'jpeg', 259, 480, 720),
(69, 'album', '1', NULL, '2014-02-18 17:37:47', '2014-02-18 17:37:47', 'public/images/1ba20bd59a1118b24b0e763802d73e82.jpg', 'jpg', '9524255ed2b6be.jpg', 'image', 'jpeg', 263, 480, 720),
(70, 'album', '1', NULL, '2014-02-18 17:44:05', '2014-02-18 17:44:05', 'public/images/4f6dc4c3094ac75c4dc5571872f706d4.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(71, 'album', '1', NULL, '2014-02-18 17:44:05', '2014-02-18 17:44:05', 'public/images/d8c1e438d3cd19dc059e804762c95605.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(72, 'album', '1', NULL, '2014-02-18 17:44:05', '2014-02-18 17:44:05', 'public/images/dfe83d74a38a25e72ad33fc3653d9837.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(73, 'album', '1', NULL, '2014-02-18 17:44:05', '2014-02-18 17:44:05', 'public/images/ae37ffeec7059cb28a8fc39157b37142.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(74, 'album', '1', NULL, '2014-02-18 17:44:05', '2014-02-18 17:44:05', 'public/images/6600b62f31ea829d89b108c13bf22b2e.jpg', 'jpg', '951f5db9bdf713.jpg', 'image', 'jpeg', 217, 480, 646),
(75, 'album', '1', NULL, '2014-02-18 18:10:16', '2014-02-18 18:10:16', 'public/images/6dfeddee6d12a395d676e1f49e583baf.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(76, 'album', '1', NULL, '2014-02-18 18:10:16', '2014-02-18 18:10:16', 'public/images/09969405abd7d674fbacc6117909304c.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(77, 'album', '1', NULL, '2014-02-18 18:10:16', '2014-02-18 18:10:16', 'public/images/fc63c47a8690261cdfad990ab2d509b6.jpg', 'jpg', '951dfacb016295 - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(78, 'album', '1', NULL, '2014-02-18 18:11:23', '2014-02-18 18:11:23', 'public/images/4d9c77d634590f6e4c708e5d59218fed.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(79, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/eb57426fb590b1734872380f114d82b5.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(80, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/2705373d5719b09fd304e8ac65dd3c59.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(81, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/1f874dd1177b407c32441565c3c279b9.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(82, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/5f5aa614e8e200cc8c524a5aaa1f6eac.jpg', 'jpg', '951bacba6a15d6.jpg', 'image', 'jpeg', 86, 500, 673),
(83, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/98ada188f94e48f0760b5ea3d96405e2.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(84, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/159d44d92205736075285e4f59cea43b.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(85, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/2d228edaababc4928f313a15c8d0e1b2.jpg', 'jpg', '951f5db995bdd2.jpg', 'image', 'jpeg', 260, 480, 646),
(86, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/c67902dc5764876eda046c164984fe47.jpg', 'jpg', '951f5dbad88c64.jpg', 'image', 'jpeg', 241, 480, 646),
(87, 'album', '1', NULL, '2014-02-18 18:11:51', '2014-02-18 18:11:51', 'public/images/6f2e39a64d3fcfbc4b9a7e72b9513215.jpg', 'jpg', '951f5dbb51b667.jpg', 'image', 'jpeg', 238, 480, 646),
(88, 'album', '1', NULL, '2014-02-18 18:17:15', '2014-02-18 18:17:15', 'public/images/3f848fbf34c6de5164f233821c0bc28e.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(89, 'album', '1', NULL, '2014-02-18 18:17:15', '2014-02-18 18:17:15', 'public/images/818704ce159f717ac08980f211b4a800.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(90, 'album', '1', NULL, '2014-02-18 18:17:15', '2014-02-18 18:17:15', 'public/images/9f7832bbf66f2da7346f4fb389c495d1.jpg', 'jpg', '951f5db9bdf713.jpg', 'image', 'jpeg', 217, 480, 646),
(91, 'album', '1', NULL, '2014-02-18 18:17:30', '2014-02-18 18:17:30', 'public/images/c7e0e114ff2f34555b73905363af1bd1.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(92, 'album', '1', NULL, '2014-02-18 18:17:30', '2014-02-18 18:17:30', 'public/images/0d2529ae1308f3081ec1131b47414846.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(93, 'album', '1', NULL, '2014-02-18 18:17:30', '2014-02-18 18:17:30', 'public/images/c61755e0200e17d20e6a629e3d03ab5b.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(94, 'album', '1', NULL, '2014-02-18 18:21:54', '2014-02-18 18:21:54', 'public/images/707f94d197d702502899553d0c3a845a.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(95, 'album', '1', NULL, '2014-02-18 18:22:05', '2014-02-18 18:22:05', 'public/images/105bf282d0631590094653a1484f710c.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(96, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/4c2e93ae1fbea62653a8520218b1bab9.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(97, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/4167ea258e4265e0e1428f592887ba9e.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(98, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/e174e91f0764ab813981375a0532784b.jpg', 'jpg', '951be73b7bf453.jpg', 'image', 'jpeg', 116, 400, 600),
(99, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/6283a98229e2f362628d6255a5465728.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(100, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/d175f3fa1642adddadcb0343720bdb50.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(101, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/c089144099901afd7d3b20561fd951f6.jpg', 'jpg', '951dfacbbaad57.jpg', 'image', 'jpeg', 251, 480, 647),
(102, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/89ddfe5ab9c1e45603dc705cc62e73a8.jpg', 'jpg', '951f5dbb51b667.jpg', 'image', 'jpeg', 238, 480, 646),
(103, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/034f73c237f095a9a64e37d44275aab6.jpg', 'jpg', '951f7bfb875b6c.jpg', 'image', 'jpeg', 174, 500, 702),
(104, 'album', '1', NULL, '2014-02-18 18:22:06', '2014-02-18 18:22:06', 'public/images/188d35f7afb6fbced35db7a26ad9f6a2.jpg', 'jpg', '951f7bfb7519a4.jpg', 'image', 'jpeg', 122, 500, 608),
(105, 'album', '1', NULL, '2014-02-18 18:28:02', '2014-02-18 18:28:02', 'public/images/f3278f7cceea7aa2a35f815c4afb2373.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(106, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/d6333536b7ad0f728d78ccc891840685.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(107, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/f58154ec3f758d33099192220e4c0e73.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(108, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/712b3b875e3ffc2a48d2850e44954354.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(109, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/a359831c5677f3c87d62df0a3297d12e.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(110, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/d4cbdb9d369699e761a749a711020855.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(111, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/f5fe1bbaebdd710a6334dd7530b1cb26.jpg', 'jpg', '951f5db995bdd2.jpg', 'image', 'jpeg', 260, 480, 646),
(112, 'album', '1', NULL, '2014-02-18 18:28:03', '2014-02-18 18:28:03', 'public/images/1e931c3701429d2234687674191062ee.jpg', 'jpg', '951f5dbad88c64.jpg', 'image', 'jpeg', 241, 480, 646),
(113, 'album', '1', NULL, '2014-02-18 18:29:27', '2014-02-18 18:29:27', 'public/images/d3863f065b08c68297664a988093aab6.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(114, 'album', '1', NULL, '2014-02-18 18:29:27', '2014-02-18 18:29:27', 'public/images/8a72cc936d8f53cab75f1fa730be2952.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(115, 'album', '1', NULL, '2014-02-18 18:29:27', '2014-02-18 18:29:27', 'public/images/7ade9be8222302b6ac028fddfeed9b32.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(116, 'album', '1', NULL, '2014-02-18 18:29:27', '2014-02-18 18:29:27', 'public/images/bc804d80053151a9626be4c2ddb73178.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(117, 'album', '1', NULL, '2014-02-18 18:29:27', '2014-02-18 18:29:27', 'public/images/e4f7720472b551c36e104c9efb1be843.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(118, 'album', '1', NULL, '2014-02-18 18:29:27', '2014-02-18 18:29:27', 'public/images/30544c87713e851a55c81bb24541e853.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(119, 'album', '1', NULL, '2014-02-18 18:29:28', '2014-02-18 18:29:28', 'public/images/e20acd2953b5ea3862a811c7ea413e59.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(120, 'album', '1', NULL, '2014-02-18 18:29:28', '2014-02-18 18:29:28', 'public/images/d01d7a98ea90bf2dd5344077e6bfd339.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(121, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/d99faea82adcaa7e69351335b7700e03.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(122, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/12680b74bb0d2f4b90fce19658708e35.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(123, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/c59eacff0e7e370bc458e926fbcd3ed4.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(124, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/d96d807cda86f2fcb0252e88dd5239f9.jpg', 'jpg', '951bacba6a15d6.jpg', 'image', 'jpeg', 86, 500, 673),
(125, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/0b827c31a37a19ce0e8d7e2c884f1963.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(126, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/5a22d84feacb3d865c0794ee3106c3ff.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(127, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/1b85f4166132b0bb4e19572322d57cbd.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(128, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/aa28b1b53028e8f005818d528503228d.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(129, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/96edfff49a6855666b24906c30fa8049.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(130, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/6753e628042acb330d70f92776eec205.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(131, 'album', '1', NULL, '2014-02-18 18:30:20', '2014-02-18 18:30:20', 'public/images/0171daa43ab8ff424a323654669c268d.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(132, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/e904186640303cf7cc372b9a3606ed58.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(133, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/4b4e1571aa15ee34aa71cf011128846e.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(134, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/e71e84b5feab705bd6578c72d41868f7.jpg', 'jpg', '951bacba6a15d6.jpg', 'image', 'jpeg', 86, 500, 673),
(135, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/a55130a18c7a8a15005261ce0c1e0410.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(136, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/0cd8d97561eb142c05c9f0a13af8a9f3.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(137, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/5c4edbef787be545d0bd919074a375cc.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(138, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/1d4a4b56ac745fd4750f31a9c9f7f4a8.jpg', 'jpg', '951be73c387a81.jpg', 'image', 'jpeg', 35, 500, 333),
(139, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/665cc203f007399495adfb2d796a285d.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(140, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/9dae3d7de120f158bc43ad8332d9c369.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(141, 'album', '1', NULL, '2014-02-18 18:31:56', '2014-02-18 18:31:56', 'public/images/6a34de4430696097d074981afc63541e.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(142, 'album', '1', NULL, '2014-02-18 18:33:15', '2014-02-18 18:33:15', 'public/images/554fb2d1a9effc24bb39936d46325131.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(143, 'album', '1', NULL, '2014-02-18 18:33:15', '2014-02-18 18:33:15', 'public/images/2b29910de1475bc1667e5ae643951038.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(144, 'album', '1', NULL, '2014-02-18 18:33:15', '2014-02-18 18:33:15', 'public/images/a081bad523dbe6d473d13c22fe9e7a99.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(145, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/977562e5c1df745ab41cfc953d425bc6.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(146, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/a7ef8413ac3a8a02046574755fc983fe.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(147, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/2203dc2a96cdc2e898042b49e798b406.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(148, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/558f98b61eb6aee15d1896257272cc89.jpg', 'jpg', '951bacba6a15d6.jpg', 'image', 'jpeg', 86, 500, 673),
(149, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/acbea46da0eb3f04f5a381a4829d1420.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(150, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/89e0043e96226d074fd64fc6fd3cb366.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(151, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/5aac00b12fe11c4ae3cfaa0140d54a84.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(152, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/8ff98ab8adf2b520ea9552a52ca2ba07.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(153, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/1d1f001b54dffa0543985e891c7383a2.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(154, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/222c1b37940aa75322171a4d51b47954.jpg', 'jpg', '951be73c387a81.jpg', 'image', 'jpeg', 35, 500, 333),
(155, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/54471695a4399404fdff6f410a57ef68.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(156, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/7220fe8781d6fdc7d327e845996ac0bc.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(157, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/2b668be6d784e4f2c845abb2d11524a7.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(158, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/a2251b86fbe931477d81c6ed58651b5b.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(159, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/64cc68bc39ab2f1d9e518c0d4cfa6f75.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(160, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/7d2f28ff3b41fb23755ff168b04df302.jpg', 'jpg', '951dfacbf4f097.jpg', 'image', 'jpeg', 227, 480, 647),
(161, 'album', '1', NULL, '2014-02-18 18:33:16', '2014-02-18 18:33:16', 'public/images/3a820de16a0de3263846495c322d29a5.jpg', 'jpg', '951f5db9bdf713 - Copy.jpg', 'image', 'jpeg', 217, 480, 646),
(162, 'album', '1', NULL, '2014-02-18 18:34:49', '2014-02-18 18:34:49', 'public/images/8e838026e74041a6624f3430ed6073db.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(163, 'album', '1', NULL, '2014-02-18 18:34:49', '2014-02-18 18:34:49', 'public/images/535841783fd76528b130fb773c70ab69.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(164, 'album', '1', NULL, '2014-02-18 18:34:49', '2014-02-18 18:34:49', 'public/images/2d0cd72937c19fce6579565b2642bca3.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(165, 'album', '1', NULL, '2014-02-18 18:34:50', '2014-02-18 18:34:50', 'public/images/5d9df87f7770086cbdd563f19a40c5d2.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(166, 'album', '1', NULL, '2014-02-18 18:34:50', '2014-02-18 18:34:50', 'public/images/e83bfcd243b9155dd239eeb5e1ef4cda.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(167, 'album', '1', NULL, '2014-02-18 18:34:50', '2014-02-18 18:34:50', 'public/images/5b339f517e3dae67e73836719f512df3.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(168, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/d58226f37f5524ca0c46ba774c6420ae.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(169, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/9d5532ab97b75767be21f1b8fe2f96b2.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(170, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/b082edbee4571f7855d3736a95510d6d.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(171, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/fe6afd41a23db3f98b432e86715698bf.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(172, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/36f5cd4af0c4fe029dba2a74dfcf9c7a.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(173, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/83789d12d20446925d7b3e14acb9becf.jpg', 'jpg', '951a743f451654.jpg', 'image', 'jpeg', 115, 500, 651),
(174, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/b2b9edf694434ed2905f8d8a2fab8398.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(175, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/3928ff15a75b3bd7e22f9c38482e7454.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(176, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/7dbdc40017c6e0d17273df1eff77b109.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(177, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/b5a1e4b045463d6c1cd16c029d1e563c.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(178, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/abe0799d2d886ec2ae02532f2b9b7fb3.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(179, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/2c11b858366f2fbfabc0e23de87dfa44.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(180, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/767d2b19ef7e039ab530497f603ad106.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(181, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/5544412e86134e3eb409aa7e3fbb011e.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(182, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/e9173781dac1835e9571527823edde12.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(183, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/aac29e26c328f4f65979e05651eb3d76.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(184, 'album', '1', NULL, '2014-02-18 18:43:38', '2014-02-18 18:43:38', 'public/images/a10a9727ea4a11eddd61471f6fc7ed28.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(185, 'album', '1', NULL, '2014-02-18 18:43:39', '2014-02-18 18:43:39', 'public/images/6bd32cda0dc6d197c7bc424041b220c0.jpg', 'jpg', '951dfacb016295 - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(186, 'album', '1', NULL, '2014-02-18 18:44:10', '2014-02-18 18:44:10', 'public/images/be0e0bf3d3c2632d6c872da74c873b7a.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(187, 'album', '1', NULL, '2014-02-18 18:44:10', '2014-02-18 18:44:10', 'public/images/4d6310c8153f9622e36de4cd9d5a6483.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(188, 'album', '1', NULL, '2014-02-18 18:44:10', '2014-02-18 18:44:10', 'public/images/66f010755d42e325cf0ec98ebb5801c4.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(189, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/cf88aa6dbe8b31301b7b761be0d43319.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(190, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/38a91cf4f9ab064d8375a70cbc2d5d66.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(191, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/89fe4baec33dd7a93408a54487e04188.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(192, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/572789f288a82259ad8b99d1991a99f5.jpg', 'jpg', '951bacba6a15d6.jpg', 'image', 'jpeg', 86, 500, 673),
(193, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/dc6b53b3d10705079f7eec00a244689e.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(194, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/0cd58addfc45d3d62c26cfcff0e15cda.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(195, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/a14d5274a057d1c5d19dd46370ef7cbc.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(196, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/256301c9bc7cf7406277467b1d92fb6e.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(197, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/cde09cbdbb5a4050d0edb75618237822.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(198, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/dae837d019d5227680d3ec8a0fe40f98.jpg', 'jpg', '951be73c387a81.jpg', 'image', 'jpeg', 35, 500, 333),
(199, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/11d8df2e4f9ab66a606f370618764f33.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(200, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/da16ebbceae034c79d929560d587562c.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(201, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/6dc582ca1a6af67d77275908fd124d31.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(202, 'album', '1', NULL, '2014-02-18 18:44:11', '2014-02-18 18:44:11', 'public/images/202d499824228222a99aee3479f4810c.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(203, 'album', '1', NULL, '2014-02-18 18:44:12', '2014-02-18 18:44:12', 'public/images/38a649ae1f1b14de7cd2f2e52b2905c1.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(204, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/a9a1cf2003b86def5c088d923d564e6e.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(205, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/815fe0283e3550fc6e9cb004ab778ed4.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(206, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/e24bad4faaa8f74ebe8611996eac9f89.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(207, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/93b99eab9a33e4faa464358955f8db57.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(208, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/ddf2d5b51f8860f000e3d2ad71616879.jpg', 'jpg', '951a743f451654.jpg', 'image', 'jpeg', 115, 500, 651),
(209, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/84c34c87d0c236c4c6205931aaef1da1.jpg', 'jpg', '951bacb83c30ce - Copy.jpg', 'image', 'jpeg', 49, 500, 667),
(210, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/04fadaec74dba07b6f0637cdd0e65c4f.jpg', 'jpg', '951bacb83c30ce.jpg', 'image', 'jpeg', 49, 500, 667),
(211, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/8fed3a2478e3aa304ded80dd28627aa3.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(212, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/5024df1a1b721715cde532a1be49f700.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(213, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/b70ee6b02b9d3f93913d77e6808bbd47.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(214, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/926bfef3e98d91d7693e46c073396709.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(215, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/3daf711810c42e5fb28d72eab89fa2f0.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(216, 'album', '1', NULL, '2014-02-18 18:44:31', '2014-02-18 18:44:31', 'public/images/fbeb6541707d4c660520bdcd22c9aa78.jpg', 'jpg', '951be73b7bf453.jpg', 'image', 'jpeg', 116, 400, 600),
(217, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/30e1dd4e5af235cec836763807a68bba.jpg', 'jpg', '951be73b568df9.jpg', 'image', 'jpeg', 92, 400, 600),
(218, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/fb66c2d08ff35d362bfdb30ff310ba91.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(219, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/90d39246546948aa61354edff49168af.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(220, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/0a09a7ea146aaea32ca1344ff2d8bb0b.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(221, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/3437ca2d9fa2745a64c0c04625bf9efa.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(222, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/e7d14caa4def404edca8b8ef19bb2b9e.jpg', 'jpg', '951dfacb016295 - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(223, 'album', '1', NULL, '2014-02-18 18:44:32', '2014-02-18 18:44:32', 'public/images/d64ca13e1d43a9683c3247d6de7013d0.jpg', 'jpg', '951dfacb016295.jpg', 'image', 'jpeg', 273, 480, 647),
(224, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/1a13faa749df47950c3564b448425218.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(225, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/6c789fbb98a0bb9e7fc59261745b70b2.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(226, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/039205e59a99f3302077ce8378f5ebff.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(227, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/7a73013e55c4d0cbd3a10b843b867043.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(228, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/308afb9630610338fc6585868a1841ed.jpg', 'jpg', '951be73b7bf453.jpg', 'image', 'jpeg', 116, 400, 600),
(229, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/b56024b378a7c16c3fab723fd2b86b28.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(230, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/d5c2425d9aa8dbe3215cd7be8358f818.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(231, 'album', '1', NULL, '2014-02-18 18:45:27', '2014-02-18 18:45:27', 'public/images/0b1b38cf27bcaf73181bc5e7f7d1a0a4.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(232, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/51f41924bbf733ea1fb877166102ab0f.jpg', 'jpg', '951dfacb016295 - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(233, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/656d098d19e6ac386405a5050d6f287a.jpg', 'jpg', '951dfacb016295.jpg', 'image', 'jpeg', 273, 480, 647),
(234, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/ba59b5531c114a2230825068afc67aeb.jpg', 'jpg', '951f5db995bdd2.jpg', 'image', 'jpeg', 260, 480, 646),
(235, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/a287006cb7a4294111f6486e1936cf87.jpg', 'jpg', '951f5dbad88c64.jpg', 'image', 'jpeg', 241, 480, 646),
(236, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/3905e38431a5d90b01f854916fda3db7.jpg', 'jpg', '951f5dbb51b667.jpg', 'image', 'jpeg', 238, 480, 646),
(237, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/57a1822bdb709eeebab4d972d83451a0.jpg', 'jpg', '951f7bfb875b6c.jpg', 'image', 'jpeg', 174, 500, 702),
(238, 'album', '1', NULL, '2014-02-18 18:45:28', '2014-02-18 18:45:28', 'public/images/432806e94cf26c715e7e78a33f98b758.jpg', 'jpg', '951f7bfb7519a4.jpg', 'image', 'jpeg', 122, 500, 608),
(239, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/90b2c0c2356c3cb73b4247b4e40145df.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(240, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/544655346ad5793c3c47c8b2a73d8178.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(241, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/d4a33aa250696abfe0c70590d2959f8c.jpg', 'jpg', '951dfacab6f04f - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(242, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/844e827870eb9da7f0f5a2f912ff6a02.jpg', 'jpg', '951dfacab6f04f.jpg', 'image', 'jpeg', 263, 480, 647),
(243, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/22114f2aaced4562569be962cb8a7261.jpg', 'jpg', '951dfacb016295 - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(244, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/10f6aaad34941c003f11b6621887735c.jpg', 'jpg', '951f5db9bdf713.jpg', 'image', 'jpeg', 217, 480, 646),
(245, 'album', '1', NULL, '2014-02-18 18:45:58', '2014-02-18 18:45:58', 'public/images/4cf561fd45d9dab5d6878dfc4ceaea48.jpg', 'jpg', '951f5db995bdd2.jpg', 'image', 'jpeg', 260, 480, 646),
(246, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/6292ec84b9bfd724c7364eeaf6b29adb.jpg', 'jpg', '951f5dbad88c64.jpg', 'image', 'jpeg', 241, 480, 646),
(247, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/a7167d8cd2ba26881ed64c044c05a1b4.jpg', 'jpg', '951f5dbb51b667.jpg', 'image', 'jpeg', 238, 480, 646),
(248, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/3fc92bb6ee418def2c2a9aff2c5bc14f.jpg', 'jpg', '951f7bfb875b6c.jpg', 'image', 'jpeg', 174, 500, 702),
(249, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/5fbbd3a3f3acd044cf1370fb85d8f417.jpg', 'jpg', '952a1d4166714e.jpg', 'image', 'jpeg', 89, 400, 539),
(250, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/a0d2b4047ccba826d91eabbc9e1379f8.jpg', 'jpg', '952a35298e3341.jpg', 'image', 'jpeg', 44, 500, 282),
(251, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/e3410dbb698fb657be5ff030707331b0.jpg', 'jpg', '952a352809b2d8.jpg', 'image', 'jpeg', 41, 500, 337),
(252, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/6674427547fdb9ac650f139ae01231fc.jpg', 'jpg', '952d8fdc628030.jpg', 'image', 'jpeg', 223, 480, 646),
(253, 'album', '1', NULL, '2014-02-18 18:45:59', '2014-02-18 18:45:59', 'public/images/d2b6592526ab796e5401cc6b7a406295.jpg', 'jpg', '952d8fdf6ce41f.jpg', 'image', 'jpeg', 271, 480, 646),
(254, 'album', '1', NULL, '2014-02-19 15:56:46', '2014-02-19 15:56:46', 'public/images/16f864efd1c0938ff9d892a79adb3324.jpg', 'jpg', '951be73b7bf453.jpg', 'image', 'jpeg', 116, 400, 600),
(255, 'album', '1', NULL, '2014-02-19 15:56:46', '2014-02-19 15:56:46', 'public/images/8a76442814723be75b62eae6acf2a325.jpg', 'jpg', '951be73b568df9.jpg', 'image', 'jpeg', 92, 400, 600),
(256, 'album', '1', NULL, '2014-02-19 15:56:46', '2014-02-19 15:56:46', 'public/images/700fc034d922c4fbb2fdb811ed3017fd.jpg', 'jpg', '951be73b407810.jpg', 'image', 'jpeg', 103, 400, 600),
(257, 'album', '1', NULL, '2014-02-19 15:56:46', '2014-02-19 15:56:46', 'public/images/ac53485c7e8414fd9827a4291c8df49d.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(258, 'album', '1', NULL, '2014-02-19 15:56:46', '2014-02-19 15:56:46', 'public/images/bd1b565a59c5aae57b8090169d3a1ee6.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(259, 'album', '1', NULL, '2014-02-19 15:56:46', '2014-02-19 15:56:46', 'public/images/fe4f1be0fc2fbbca32c687040fed9739.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(260, 'album', '1', NULL, '2014-02-20 15:39:49', '2014-02-20 15:39:49', 'public/images/db103b97d952f9de89e070d0a168ceef.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(261, 'album', '1', NULL, '2014-02-20 15:39:49', '2014-02-20 15:39:49', 'public/images/c10d7f608d2622fb35975126d500ef1b.jpg', 'jpg', '52b246b2_39e870d9_h4.jpg', 'image', 'jpeg', 101, 660, 485),
(262, 'album', '1', NULL, '2014-02-20 15:39:49', '2014-02-20 15:39:49', 'public/images/ee9c7067ecf84bb3ece31df0f36e3a9c.jpg', 'jpg', '52b246b2_6650d388_h3.jpg', 'image', 'jpeg', 103, 660, 497),
(263, 'album', '1', NULL, '2014-02-20 15:39:50', '2014-02-20 15:39:50', 'public/images/eaa71dfa27745e77eea9e1275ea6fda2.jpg', 'jpg', '52b246b3_3011efb3_h5.jpg', 'image', 'jpeg', 90, 660, 471),
(264, 'album', '1', NULL, '2014-02-20 15:39:50', '2014-02-20 15:39:50', 'public/images/fc02c758bfd83bd1ef240889591f1ae0.jpg', 'jpg', '52b246b3_690611f7_h8.jpg', 'image', 'jpeg', 203, 660, 1095),
(265, 'album', '1', NULL, '2014-02-20 15:39:50', '2014-02-20 15:39:50', 'public/images/404ca1ff97f7b6beff7878a74ea9f11d.jpg', 'jpg', '52b246b4_1b450e36_haibang_3.jpg', 'image', 'jpeg', 275, 660, 989),
(266, 'album', '1', NULL, '2014-02-20 15:39:50', '2014-02-20 15:39:50', 'public/images/55add4a017060f36d371eee59f3a2a86.jpg', 'jpg', '52b246b4_4fe86527_haibang_2.jpg', 'image', 'jpeg', 256, 660, 990),
(267, 'album', '1', NULL, '2014-02-20 15:39:50', '2014-02-20 15:39:50', 'public/images/f5dda378b9cd2e823fd1bb0965db0aeb.jpg', 'jpg', '52b246b5_20465a5f_haibang_7.jpg', 'image', 'jpeg', 215, 660, 990);
INSERT INTO `files` (`file_id`, `parent_type`, `parent_id`, `user_id`, `creation_date`, `modified_date`, `storage_path`, `extension`, `name`, `mime_major`, `mime_minor`, `size`, `width`, `height`) VALUES
(268, 'album', '1', NULL, '2014-02-20 15:40:30', '2014-02-20 15:40:30', 'public/images/d374e600b003f3b725e73ed1a72c92a9.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(269, 'album', '1', NULL, '2014-02-20 15:40:30', '2014-02-20 15:40:30', 'public/images/e381323822d90ad0c5b0d56a08b696d9.jpg', 'jpg', '52b246b2_39e870d9_h4.jpg', 'image', 'jpeg', 101, 660, 485),
(270, 'album', '1', NULL, '2014-02-20 15:40:30', '2014-02-20 15:40:30', 'public/images/aa0ae4b216450a560ebd7b2f23d6b34b.jpg', 'jpg', '52b246b2_6650d388_h3.jpg', 'image', 'jpeg', 103, 660, 497),
(271, 'album', '1', NULL, '2014-02-20 15:40:30', '2014-02-20 15:40:30', 'public/images/148d6fcd7760c846d0868843441b29ae.jpg', 'jpg', '52b246b3_3011efb3_h5.jpg', 'image', 'jpeg', 90, 660, 471),
(272, 'album', '1', NULL, '2014-02-20 15:40:31', '2014-02-20 15:40:31', 'public/images/ead615594ad07d2942f43eefe049f656.jpg', 'jpg', '52b246b3_690611f7_h8.jpg', 'image', 'jpeg', 203, 660, 1095),
(273, 'album', '1', NULL, '2014-02-20 15:40:31', '2014-02-20 15:40:31', 'public/images/6db4f7a94f0f0195c147551821cea7ce.jpg', 'jpg', '52b246b4_1b450e36_haibang_3.jpg', 'image', 'jpeg', 275, 660, 989),
(274, 'album', '1', NULL, '2014-02-20 15:40:31', '2014-02-20 15:40:31', 'public/images/688f518c5f3d7bf9d7bd0d8133d8e12e.jpg', 'jpg', '52b246b4_4fe86527_haibang_2.jpg', 'image', 'jpeg', 256, 660, 990),
(275, 'album', '1', NULL, '2014-02-20 15:40:31', '2014-02-20 15:40:31', 'public/images/a6b6d710fb366a09f0be665993c97006.jpg', 'jpg', '52b246b5_20465a5f_haibang_7.jpg', 'image', 'jpeg', 215, 660, 990),
(276, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/45d49e66e2227f4f7f46e26bd311c818.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(277, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/3c696b22a5b6c79beeef3a111bfbca7e.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(278, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/ce0f923d55c22ede0a1c863e732d1735.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(279, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/de2c125a07915f69aa00802eb2bfadc5.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(280, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/b4ddbc02f67db7a96fd6337410f259d4.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(281, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/6920e3f089992c645aed16f110da02c2.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(282, 'album', '1', NULL, '2014-02-20 19:13:47', '2014-02-20 19:13:47', 'public/images/2a27e2b2099021229ef5c48bf6cb862b.jpg', 'jpg', '951a743f451654.jpg', 'image', 'jpeg', 115, 500, 651),
(283, 'album', '1', NULL, '2014-02-21 17:51:36', '2014-02-21 17:51:36', 'public/images/168fcf2093bbd4b786441ebbc6ded385.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(284, 'album', '1', NULL, '2014-02-21 18:42:41', '2014-02-21 18:42:41', 'public/images/0d698fa8b5e6f08f14fccbed34f13c0b.jpg', 'jpg', '951f5db995bdd2.jpg', 'image', 'jpeg', 260, 480, 646),
(285, 'album', '1', NULL, '2014-02-21 18:42:41', '2014-02-21 18:42:41', 'public/images/25e9123e56b15154a2557eece3f60c82.jpg', 'jpg', '951f5dbad88c64.jpg', 'image', 'jpeg', 241, 480, 646),
(286, 'album', '1', NULL, '2014-02-21 18:42:41', '2014-02-21 18:42:41', 'public/images/80925473d898f98173247bb6c3720fba.jpg', 'jpg', '951f5dbb51b667.jpg', 'image', 'jpeg', 238, 480, 646),
(287, 'album', '1', NULL, '2014-02-21 18:42:41', '2014-02-21 18:42:41', 'public/images/f7e789d00ee29b1c0ddfd95df36fa13e.jpg', 'jpg', '951f7bfb875b6c.jpg', 'image', 'jpeg', 174, 500, 702),
(288, 'album', '1', NULL, '2014-02-21 18:42:41', '2014-02-21 18:42:41', 'public/images/255f55a27d470294febf283e95fc4031.jpg', 'jpg', '951f7bfb7519a4.jpg', 'image', 'jpeg', 122, 500, 608),
(300, 'profile', '100000604996892', '100000604996892', '2014-02-22 06:17:06', '2014-02-22 06:17:06', 'data/avatar/100000604996892/5572ada2710b6684e61ea0460f90287d.jpg', 'jpg', '5572ada2710b6684e61ea0460f90287d.jpg', 'image', 'jpeg', 156, NULL, NULL),
(301, 'profile', '100000604996892', '100000604996892', '2014-02-22 06:17:31', '2014-02-22 06:17:31', 'data/avatar/100000604996892/64e197c87d774aa1cf61efd08c114aac.jpg', 'jpg', '64e197c87d774aa1cf61efd08c114aac.jpg', 'image', 'jpeg', 859, NULL, NULL),
(302, 'profile', '100001913165516', '100001913165516', '2014-02-22 06:23:01', '2014-02-22 06:23:01', 'data/avatar/100001913165516/0a58646748b9dd0c3e7a948b742f60ab.jpg', 'jpg', '0a58646748b9dd0c3e7a948b742f60ab.jpg', 'image', 'jpeg', 150, NULL, NULL),
(303, 'profile', '100001913165516', '100001913165516', '2014-02-22 06:26:01', '2014-02-22 06:26:01', 'data/avatar/100001913165516/759c6953abb6d1d80366e6fdb8dc6a4b.jpg', 'jpg', '759c6953abb6d1d80366e6fdb8dc6a4b.jpg', 'image', 'jpeg', 103, NULL, NULL),
(304, 'profile', '100001913165516', '100001913165516', '2014-02-22 06:30:35', '2014-02-22 06:30:35', 'data/avatar/100001913165516/14f3f4fef0ca4addc3fa6193cd1befc9.jpg', 'jpg', '14f3f4fef0ca4addc3fa6193cd1befc9.jpg', 'image', 'jpeg', 124, NULL, NULL),
(305, 'profile', '100001913165516', '100001913165516', '2014-02-22 06:31:08', '2014-02-22 06:31:08', 'data/avatar/100001913165516/f3bd93f22386344f8fcbad40fe8e46cd.jpg', 'jpg', 'f3bd93f22386344f8fcbad40fe8e46cd.jpg', 'image', 'jpeg', 82, NULL, NULL),
(306, 'album', '1', NULL, '2014-02-26 15:21:26', '2014-02-26 15:21:26', 'public/images/d923d68ee2a3479cd83fca4a81654edc.jpg', 'jpg', '951f7bfd4d43cf.jpg', 'image', 'jpeg', 97, 500, 449),
(307, 'album', '1', NULL, '2014-02-26 15:21:26', '2014-02-26 15:21:26', 'public/images/2a2e4d4b93a459d5c18cf4274eefa67a.jpg', 'jpg', '952a1d4166714e.jpg', 'image', 'jpeg', 89, 400, 539),
(308, 'album', '1', NULL, '2014-02-26 15:21:26', '2014-02-26 15:21:26', 'public/images/c6cb9916fb5762b054a50e2b900ac382.jpg', 'jpg', '9524255e882557.jpg', 'image', 'jpeg', 259, 480, 720),
(309, 'album', '1', NULL, '2014-02-26 15:27:23', '2014-02-26 15:27:23', 'public/images/60fe7bd4ac8a84a97b7bdc15c4c6f014.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(310, 'album', '1', NULL, '2014-02-26 15:27:23', '2014-02-26 15:27:23', 'public/images/a0b404d8abf35c361876fe84bac6f3eb.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(311, 'album', '1', NULL, '2014-02-26 15:27:24', '2014-02-26 15:27:24', 'public/images/9d66cbdd3a1af85efad194e625424d4b.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(312, 'album', '1', NULL, '2014-02-26 15:36:47', '2014-02-26 15:36:47', 'public/images/bcb4bd749548a6aa692a0544fbe477e3.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(313, 'album', '1', NULL, '2014-02-26 15:36:47', '2014-02-26 15:36:47', 'public/images/15d31b0b068bc547ecb5085b08dd414f.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(314, 'album', '1', NULL, '2014-02-26 15:36:47', '2014-02-26 15:36:47', 'public/images/3afab032290c10776807cb5ae437b5b9.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(315, 'album', '1', NULL, '2014-02-26 15:36:47', '2014-02-26 15:36:47', 'public/images/e5f7005d53f0389f976d9efcd427c69f.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(316, 'album', '1', NULL, '2014-02-26 15:40:46', '2014-02-26 15:40:46', 'public/images/c0e3da0ba45c674cbecdee23d86b639b.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(317, 'album', '1', NULL, '2014-02-26 15:40:46', '2014-02-26 15:40:46', 'public/images/56f9380d3d30bdb72d780d1b9e6eba59.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(318, 'album', '1', NULL, '2014-02-26 15:41:56', '2014-02-26 15:41:56', 'public/images/9b50bbebff6ce0efef067cf8e78317d3.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(319, 'album', '1', NULL, '2014-02-26 15:41:56', '2014-02-26 15:41:56', 'public/images/184eb722c7625226004dd55df2127946.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(320, 'album', '1', NULL, '2014-02-26 15:41:56', '2014-02-26 15:41:56', 'public/images/f1ce40a2b887a9ca50244c638a3d4028.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(321, 'album', '1', NULL, '2014-02-26 15:43:24', '2014-02-26 15:43:24', 'public/images/c51697a1a66c699fa531c509e0641f66.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(322, 'album', '1', NULL, '2014-02-26 15:43:24', '2014-02-26 15:43:24', 'public/images/ce4edad7af0c5d3fbb417e3b81d7a73b.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(323, 'album', '1', NULL, '2014-02-26 15:43:24', '2014-02-26 15:43:24', 'public/images/7b9ea84ff20edfaaa6a19fb2f247c2f8.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(324, 'album', '1', NULL, '2014-02-26 15:44:14', '2014-02-26 15:44:14', 'public/images/20a59fd5d6df86cb7ae458cb12405fd7.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(325, 'album', '1', NULL, '2014-02-26 15:44:14', '2014-02-26 15:44:14', 'public/images/8b96e44a66dcb644deb0cee85cd100d7.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(326, 'album', '1', NULL, '2014-02-26 15:44:14', '2014-02-26 15:44:14', 'public/images/fa9bf45f337e629be7178275bc6c4ab3.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(327, 'album', '1', NULL, '2014-02-26 15:44:44', '2014-02-26 15:44:44', 'public/images/30737f453efd5e53f261175bab583f96.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(328, 'album', '1', NULL, '2014-02-26 15:44:44', '2014-02-26 15:44:44', 'public/images/e66de68ce39c977800f2660d242fa2b5.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(329, 'album', '1', NULL, '2014-02-26 15:44:44', '2014-02-26 15:44:44', 'public/images/cb5771579a5ff7e7d027f5b36f866d99.jpg', 'jpg', '951a743f451654.jpg', 'image', 'jpeg', 115, 500, 651),
(330, 'album', '1', NULL, '2014-02-26 15:48:18', '2014-02-26 15:48:18', 'public/images/9266b630149e0ec71f7c49c761b3a4a4.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(331, 'album', '1', NULL, '2014-02-26 15:48:18', '2014-02-26 15:48:18', 'public/images/93f83acb83ed0be241659cfb90a50fbb.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(332, 'album', '1', NULL, '2014-02-26 15:48:18', '2014-02-26 15:48:18', 'public/images/0275396a0adb027e575db36c1e2451e3.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(333, 'album', '1', NULL, '2014-02-26 15:48:28', '2014-02-26 15:48:28', 'public/images/addf3a4f72f047ec6e5eaf83eae75820.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(334, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/9fe23b55b1a3fa95eee33f975b12f9cd.jpg', 'jpg', '951a743bcbcb4f.jpg', 'image', 'jpeg', 82, 500, 750),
(335, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/c5af0ea6c6c78810f567e29e3c624df3.jpg', 'jpg', '951bacba6a15d6.jpg', 'image', 'jpeg', 86, 500, 673),
(336, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/b7a2f4e688a26e416c7900603e1c6b48.jpg', 'jpg', '951be73c387a81.jpg', 'image', 'jpeg', 35, 500, 333),
(337, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/4e64bcac4d9de794d34edf7e531d9bac.jpg', 'jpg', '951dfacbf4f097.jpg', 'image', 'jpeg', 227, 480, 647),
(338, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/afd04c8102469119f06a98d14f508ea6.jpg', 'jpg', '951f5db9bdf713 - Copy.jpg', 'image', 'jpeg', 217, 480, 646),
(339, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/6a1bb30aa6aaee7c167ffe128c572e9f.jpg', 'jpg', '951f5db9bdf713.jpg', 'image', 'jpeg', 217, 480, 646),
(340, 'album', '1', NULL, '2014-02-26 15:48:35', '2014-02-26 15:48:35', 'public/images/278366b9263a2963f67b9c239d0bbef7.jpg', 'jpg', '951f5db995bdd2.jpg', 'image', 'jpeg', 260, 480, 646),
(341, 'album', '1', NULL, '2014-02-26 15:49:28', '2014-02-26 15:49:28', 'public/images/936d3258ccf9a46955c9cb309b167bde.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(342, 'album', '1', NULL, '2014-02-26 15:49:28', '2014-02-26 15:49:28', 'public/images/48cdfbec09ea0c1f98ec5f96ac248b6f.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(343, 'album', '1', NULL, '2014-02-26 15:49:28', '2014-02-26 15:49:28', 'public/images/3f1c4877de098f20a41d2397ee61573e.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(344, 'album', '1', NULL, '2014-02-26 15:49:28', '2014-02-26 15:49:28', 'public/images/fcbc7ab62a2dd47dc68b313cabf8c136.jpg', 'jpg', '951be73c387a81.jpg', 'image', 'jpeg', 35, 500, 333),
(345, 'album', '1', NULL, '2014-02-26 15:49:28', '2014-02-26 15:49:28', 'public/images/0b4e03d698e62d6448efcee62f9cd509.jpg', 'jpg', '951be73c265672 - Copy.jpg', 'image', 'jpeg', 37, 500, 333),
(346, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/5b8e5f44da675144871da8bc8a8e1679.jpg', 'jpg', '951be73c265672.jpg', 'image', 'jpeg', 37, 500, 333),
(347, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/97e63fc14565a972cfdf0fe2facc216b.jpg', 'jpg', '951c7a93ea6022 - Copy.jpg', 'image', 'jpeg', 115, 500, 708),
(348, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/b47276a5794a4d2214106d983ea4c5bf.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(349, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/7a5846b0fc2f02c2fc43036da61e2928.jpg', 'jpg', '951dfacab6f04f - Copy - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(350, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/886ecad84242de291e21cd8c05ce9cab.jpg', 'jpg', '951dfacab6f04f - Copy (2).jpg', 'image', 'jpeg', 263, 480, 647),
(351, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/33f53a73874df27bdcb492f564c2edce.jpg', 'jpg', '951dfacb016295 - Copy - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(352, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/5b5adb41a7115d2836cbb45b387a52d3.jpg', 'jpg', '951dfacb016295 - Copy (2).jpg', 'image', 'jpeg', 273, 480, 647),
(353, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/a202eeb14c402146358c94996818136e.jpg', 'jpg', '951dfacbbaad57 - Copy.jpg', 'image', 'jpeg', 251, 480, 647),
(354, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/4cff0f39b75940e92189f6d8857717f8.jpg', 'jpg', '951f5db9bdf713 - Copy - Copy.jpg', 'image', 'jpeg', 217, 480, 646),
(355, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/570a19c39772d87045365caea1c51ee1.jpg', 'jpg', '951f5db9bdf713 - Copy (2).jpg', 'image', 'jpeg', 217, 480, 646),
(356, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/b9de120b583a2b7d659fb12cbcc9f081.jpg', 'jpg', '951f5db995bdd2 - Copy.jpg', 'image', 'jpeg', 260, 480, 646),
(357, 'album', '1', NULL, '2014-02-26 15:49:29', '2014-02-26 15:49:29', 'public/images/e15bbd4128e279b3fecee10ddfa57bf4.jpg', 'jpg', '951f5dbad88c64 - Copy.jpg', 'image', 'jpeg', 241, 480, 646),
(358, 'album', '1', NULL, '2014-02-26 15:49:30', '2014-02-26 15:49:30', 'public/images/8069ec75b36b100ff9c6f6e3277d8ac6.jpg', 'jpg', '951f5dbb51b667 - Copy.jpg', 'image', 'jpeg', 238, 480, 646),
(359, 'album', '1', NULL, '2014-02-26 15:49:30', '2014-02-26 15:49:30', 'public/images/5b3cdad582fbcd9993db26bb2b7876c6.jpg', 'jpg', '951f7bfb875b6c - Copy.jpg', 'image', 'jpeg', 174, 500, 702),
(360, 'album', '1', NULL, '2014-02-26 15:49:30', '2014-02-26 15:49:30', 'public/images/90db83527cf081be1748493aa6d13791.jpg', 'jpg', '951f7bfb7519a4 - Copy.jpg', 'image', 'jpeg', 122, 500, 608),
(361, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/21696f78a7e035857e9bf54be164b0a8.jpg', 'jpg', '951a743c42b571.jpg', 'image', 'jpeg', 156, 500, 667),
(362, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/2a99d83c8f167ac5a0cd30f02c859556.jpg', 'jpg', '951a743ce37246.jpg', 'image', 'jpeg', 95, 500, 666),
(363, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/2fa9b3fe9496333f87749887ad66cefd.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(364, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/d2e3a310cc24be3aaebdf84a6b66c3fb.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(365, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/353a483b9ea818459a8e4d8a4f6d6646.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(366, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/d131c0b03fdd2946fdb603350f6726fc.jpg', 'jpg', '951be73a1cbf62.jpg', 'image', 'jpeg', 119, 400, 516),
(367, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/f38a15e382851fc2914e543092b45913.jpg', 'jpg', '951be73a4adee9.jpg', 'image', 'jpeg', 42, 500, 333),
(368, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/8c1c5b56e5b1ab3ace55fe6ed2cc2b14.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(369, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/22c3f474dd0f7a062b0a7aab26db25fd.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(370, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/5c836293563a4f9b0d68f214b050015d.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(371, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/2037e67db550b16e0481d176c12d4800.jpg', 'jpg', '951c7a93ea6022 - Copy.jpg', 'image', 'jpeg', 115, 500, 708),
(372, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/f860de3f534bb35716bbce6e9617c553.jpg', 'jpg', '951c7a952f0f63 - Copy.jpg', 'image', 'jpeg', 102, 500, 708),
(373, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/b3ca0249f4100fdf43436b2b1880a253.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(374, 'album', '1', NULL, '2014-02-26 15:50:13', '2014-02-26 15:50:13', 'public/images/9476c27186bd0a94b212dd5598b14076.jpg', 'jpg', '951dfacbbaad57.jpg', 'image', 'jpeg', 251, 480, 647),
(375, 'album', '1', NULL, '2014-02-26 15:50:14', '2014-02-26 15:50:14', 'public/images/43e0a8fbf0f04cf67c10de9cc089c556.jpg', 'jpg', '951dfacbd3bfea.jpg', 'image', 'jpeg', 228, 480, 647),
(376, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/e3eeb4618084cb118ef351e6b7a28b85.jpg', 'jpg', '951be73a05d1f2.jpg', 'image', 'jpeg', 124, 400, 600),
(377, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/b70e6e7a5f418dd4f5fa1d341e17b6dc.jpg', 'jpg', '951be73a63e9ae.jpg', 'image', 'jpeg', 140, 400, 600),
(378, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/729e3132d6553d79e19f11c19aa2582b.jpg', 'jpg', '951be73b1c4b5c.jpg', 'image', 'jpeg', 103, 400, 600),
(379, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/4a33ddf54a8f06d03995bcab1cbb281a.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(380, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/72e17afa1dbb86110bcebb2502ef6156.jpg', 'jpg', '951c7a952f0f63 - Copy.jpg', 'image', 'jpeg', 102, 500, 708),
(381, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/b77d825b952fc13fd98dd02040c30974.jpg', 'jpg', '951c7a952f0f63.jpg', 'image', 'jpeg', 102, 500, 708),
(382, 'album', '1', NULL, '2014-02-26 16:09:15', '2014-02-26 16:09:15', 'public/images/02f40751f3b1cb422df8f6a4f07b8fe7.jpg', 'jpg', '951dfacab6f04f - Copy - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(383, 'album', '1', NULL, '2014-02-26 16:12:56', '2014-02-26 16:12:56', 'public/images/2d3ff0c2d2fe7fa15bda2c1039082ab7.jpg', 'jpg', '951a743d8b7a7e.jpg', 'image', 'jpeg', 127, 500, 667),
(384, 'album', '1', NULL, '2014-02-26 16:12:56', '2014-02-26 16:12:56', 'public/images/bac7b5d3f42dda0d247e0aa8f7060df4.jpg', 'jpg', '951a743d21e6c9.jpg', 'image', 'jpeg', 150, 500, 667),
(385, 'album', '1', NULL, '2014-02-26 16:12:56', '2014-02-26 16:12:56', 'public/images/371a15c736acb2f3024b455af569aba4.jpg', 'jpg', '951a743e57298d.jpg', 'image', 'jpeg', 219, 500, 667),
(386, 'album', '1', NULL, '2014-02-26 16:12:56', '2014-02-26 16:12:56', 'public/images/d85bc1f82223c4d628ee5d816a6e79df.jpg', 'jpg', '951a743f451654.jpg', 'image', 'jpeg', 115, 500, 651),
(387, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/a0824a137e2c4b02da6acb6ff2dff7aa.jpg', 'jpg', '951c7a93ea6022.jpg', 'image', 'jpeg', 115, 500, 708),
(388, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/b80133f995d226df9f9a694a0f74e673.jpg', 'jpg', '951dfacbbaad57 - Copy.jpg', 'image', 'jpeg', 251, 480, 647),
(389, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/a8635f19730d0c459e59b4b010b5a9f9.jpg', 'jpg', '9524255e882557.jpg', 'image', 'jpeg', 259, 480, 720),
(390, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/9c54d0ccffbb37ce38eeb10a9f6b1c5e.jpg', 'jpg', '9524255eb2d213.jpg', 'image', 'jpeg', 256, 480, 720),
(391, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/4f12f79189fa9ef37f64e40e51c48855.jpg', 'jpg', '9524255ed2b6be.jpg', 'image', 'jpeg', 263, 480, 720),
(392, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/b250337ed3cc9cf14b7f1d640151f505.jpg', 'jpg', '95267405b69b9d.jpg', 'image', 'jpeg', 105, 500, 750),
(393, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/4654ea784048db34af688bed69a04585.jpg', 'jpg', '95267405ccc6e2.jpg', 'image', 'jpeg', 121, 500, 750),
(394, 'album', '1', NULL, '2014-02-26 16:13:43', '2014-02-26 16:13:43', 'public/images/884e79644c7fdcfce6dc744aa762c57b.jpg', 'jpg', '95267406700931.jpg', 'image', 'jpeg', 105, 500, 750),
(395, 'album', '1', NULL, '2014-02-26 16:15:02', '2014-02-26 16:15:02', 'public/images/7300dc9ebe8fdd3f4c0819a95d922979.jpg', 'jpg', '951f7bfcbeb146.jpg', 'image', 'jpeg', 172, 500, 549),
(396, 'album', '1', NULL, '2014-02-26 16:16:38', '2014-02-26 16:16:38', 'public/images/b466c86cfd40d803fcd24c934817546c.jpg', 'jpg', '951dfacab6f04f - Copy - Copy.jpg', 'image', 'jpeg', 263, 480, 647),
(397, 'album', '1', NULL, '2014-02-26 16:16:39', '2014-02-26 16:16:39', 'public/images/09e330acce28ca549a5c024ab7faec73.jpg', 'jpg', '951dfacab6f04f - Copy (2).jpg', 'image', 'jpeg', 263, 480, 647),
(398, 'album', '1', NULL, '2014-02-26 16:16:39', '2014-02-26 16:16:39', 'public/images/ab03a9bf6efb629c6d8ac7bc6e76d7fb.jpg', 'jpg', '951dfacb016295 - Copy - Copy.jpg', 'image', 'jpeg', 273, 480, 647),
(399, 'album', '1', NULL, '2014-02-26 16:16:39', '2014-02-26 16:16:39', 'public/images/afc5a2cc89af0882c0827646ddccfaff.jpg', 'jpg', '951dfacb016295 - Copy (2).jpg', 'image', 'jpeg', 273, 480, 647),
(400, 'album', '1', NULL, '2014-03-06 16:55:53', '2014-03-06 16:55:53', 'public/images/0e91e05514f53dffa7e2a478aa6ff911.jpg', 'jpg', '951c7a93ea6022 - Copy.jpg', 'image', 'jpeg', 115, 500, 708),
(401, 'album', '1', NULL, '2014-03-06 16:56:19', '2014-03-06 16:56:19', 'public/images/ca2af75e2f6116606f3cd7b00aa5616b.jpg', 'jpg', '951be73b05aaea.jpg', 'image', 'jpeg', 109, 400, 600),
(402, 'album', '1', NULL, '2014-03-06 16:56:41', '2014-03-06 16:56:41', 'public/images/2896e3354da2a858eea8d4eca2b70502.jpg', 'jpg', '951bacb83c30ce - Copy.jpg', 'image', 'jpeg', 49, 500, 667),
(403, 'album', '1', NULL, '2014-03-06 16:59:01', '2014-03-06 16:59:01', 'public/images/b2e53441cca8b8a774f6d8f114e6f24c.jpg', 'jpg', '951f5db9bdf713 - Copy (2).jpg', 'image', 'jpeg', 217, 480, 646),
(404, 'album', '1', NULL, '2014-03-08 10:36:54', '2014-03-08 10:36:54', 'public/images/1462e6dc7697bdb8dcf999a16555b4fa.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(405, 'album', '1', NULL, '2014-03-08 10:38:06', '2014-03-08 10:38:06', 'public/images/42bd466869b2ddc1374bf0ca851760ec.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-GFo7.jpeg', 'image', 'jpeg', 349, 900, 1287),
(406, 'album', '1', NULL, '2014-03-08 11:17:22', '2014-03-08 11:17:22', 'public/images/32c79900b3b97bce8b40876eaad8808a.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(407, 'album', '1', NULL, '2014-03-08 11:17:55', '2014-03-08 11:17:55', 'public/images/81a39400a9abae38a55a455855cfe337.jpg', 'jpg', '52b246b2_39e870d9_h4.jpg', 'image', 'jpeg', 101, 660, 485),
(408, 'album', '1', NULL, '2014-03-08 11:18:08', '2014-03-08 11:18:08', 'public/images/5372ef3a81ff1af791eb86362c9f6ab5.jpg', 'jpg', '52b246b2_39e870d9_h4.jpg', 'image', 'jpeg', 101, 660, 485),
(409, 'album', '1', NULL, '2014-03-08 11:23:16', '2014-03-08 11:23:16', 'public/images/2859be3ad68d4f638eb8545fc4237b18.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(410, 'album', '1', NULL, '2014-03-08 11:23:48', '2014-03-08 11:23:48', 'public/images/9e6afcd7fc8e349b49e1a31f5f920452.jpg', 'jpg', '52b246b1_426f2e9c_h2.jpg', 'image', 'jpeg', 94, 660, 486),
(411, 'album', '1', NULL, '2014-03-08 11:32:39', '2014-03-08 11:32:39', 'public/images/c9c085b5a281bb48d0ff41d16985b7c6.jpg', 'jpg', '52b246b2_39e870d9_h4.jpg', 'image', 'jpeg', 101, 660, 485),
(412, 'album', '1', NULL, '2014-03-08 11:34:23', '2014-03-08 11:34:23', 'public/images/71835cd65419629c4600cb44c530a4fc.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-b3I4.jpeg', 'image', 'jpeg', 117, 674, 830),
(413, 'album', '1', NULL, '2014-03-08 11:34:48', '2014-03-08 11:34:48', 'public/images/dc2e29a2a04f98958226c10fdd3c7aba.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-GFo7.jpeg', 'image', 'jpeg', 349, 900, 1287),
(414, 'album', '1', NULL, '2014-03-08 11:35:01', '2014-03-08 11:35:01', 'public/images/716fc3517a2b9675185507cf2585870b.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-Kr81.jpeg', 'image', 'jpeg', 74, 900, 720),
(415, 'album', '1', NULL, '2014-03-09 14:22:56', '2014-03-09 14:22:56', 'public/images/5b606266347d3fab8e62f83709077189.jpeg', 'jpeg', '82124-Green--Imgur-AZw2.jpeg', 'image', 'jpeg', 284, 900, 1348),
(416, 'album', '1', NULL, '2014-03-09 14:23:12', '2014-03-09 14:23:12', 'public/images/4a94962c194e687867941ac58b6c0387.png', 'png', '82122-Amazing-Legs--Imgur-gVKn.png', 'image', 'png', 471, 530, 795),
(417, 'album', '1', NULL, '2014-03-11 17:54:46', '2014-03-11 17:54:46', 'public/images/86bc45804b75c706a1d4bd7cb4ec5d15.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-eQlo.jpeg', 'image', 'jpeg', 69, 600, 754),
(418, 'album', '1', NULL, '2014-03-11 17:57:26', '2014-03-11 17:57:26', 'public/images/4082c16f69562e99b4ef1bfd90b120be.jpg', 'jpg', 'image.jpg', 'image', 'jpeg', 530, 2560, 1920),
(419, 'album', '1', NULL, '2014-03-11 17:58:58', '2014-03-11 17:58:58', 'public/images/8674a9085f9f9ad555ce6088e9a9498a.jpg', 'jpg', 'image.jpg', 'image', 'jpeg', 530, 2560, 1920),
(420, 'album', '1', NULL, '2014-03-11 17:59:20', '2014-03-11 17:59:20', 'public/images/7a42131de001d5a17d7c38a5c54887e8.png', 'png', '6e97db891e4323b98ceaa20aa4704004.png', 'image', 'png', 25, 100, 100),
(421, 'album', '1', NULL, '2014-03-11 18:06:01', '2014-03-11 18:06:01', 'public/images/e1f3bcd5c13a3d72be01c1d2863e9062.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-GFo7.jpeg', 'image', 'jpeg', 349, 900, 1287),
(422, 'album', '1', NULL, '2014-03-12 12:39:02', '2014-03-12 12:39:02', 'public/images/da41f23938c8f94a1c52b069670b1c60.jpg', 'jpg', 'image.jpg', 'image', 'jpeg', 568, 2560, 1920),
(423, 'album', '1', NULL, '2014-03-12 12:40:20', '2014-03-12 12:40:20', 'public/images/bca2de47eb9b6bca5690699c1119efc7.jpg', 'jpg', 'image.jpg', 'image', 'jpeg', 493, 2560, 1920),
(424, 'album', '1', NULL, '2014-03-12 13:29:52', '2014-03-12 13:29:52', 'public/images/4a959ee52fbe26e1785d7e929c5f8a33.jpeg', 'jpeg', '82124-Mary-Elizabeth-Winstead--Imgur-APNi.jpeg', 'image', 'jpeg', 144, 900, 1353),
(425, 'album', '1', NULL, '2014-03-12 13:30:08', '2014-03-12 13:30:08', 'public/images/8c0c3740ec72dff86f22710d2550a6c0.jpeg', 'jpeg', '82121-Wow--Imgur-uv0j.jpeg', 'image', 'jpeg', 91, 800, 1052),
(426, 'album', '1', NULL, '2014-03-12 13:30:39', '2014-03-12 13:30:39', 'public/images/4d2402cd3a81d2b6fd80d910464c003b.jpeg', 'jpeg', '82128-From-twitter--Imgur-uUtI.jpeg', 'image', 'jpeg', 110, 600, 600),
(427, 'album', '1', NULL, '2014-03-12 13:31:14', '2014-03-12 13:31:14', 'public/images/b144ca6a8fc388138bc8dd42ad470cab.jpeg', 'jpeg', '82129-Looking-back--Imgur-JXnt.jpeg', 'image', 'jpeg', 299, 900, 1350),
(428, 'album', '1', NULL, '2014-03-12 13:31:26', '2014-03-12 13:31:26', 'public/images/24d83df888085bf334109dcd98baf24c.jpeg', 'jpeg', '82121-Going-Up--Imgur-PtdA.jpeg', 'image', 'jpeg', 103, 900, 977),
(429, 'album', '1', NULL, '2014-03-15 05:05:10', '2014-03-15 05:05:10', 'public/images/53521932fd3e237130c47a1fff97e02c.jpeg', 'jpeg', '82124-Mary-Elizabeth-Winstead--Imgur-NUVZ.jpeg', 'image', 'jpeg', 151, 900, 1350),
(430, 'album', '1', NULL, '2014-03-15 07:31:36', '2014-03-15 07:31:36', 'public/images/e60041c328b1f62e34cc6f87be75cfba.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-IgX3.jpeg', 'image', 'jpeg', 87, 900, 720),
(431, 'album', '1', NULL, '2014-03-16 06:59:37', '2014-03-16 06:59:37', 'public/images/758eb47628a4a3445667e77d9feffa2d.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-GFo7.jpeg', 'image', 'jpeg', 349, 900, 1287),
(432, 'album', '1', NULL, '2014-03-16 07:07:19', '2014-03-16 07:07:19', 'public/images/401cd0540aac0b0fd1c7a11305b9557f.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-GFo7.jpeg', 'image', 'jpeg', 349, 900, 1287),
(433, 'album', '1', NULL, '2014-03-16 07:18:46', '2014-03-16 07:18:46', 'public/images/642dda116acb73f0561337d6303c1bb4.jpeg', 'jpeg', '75294-Mary-Elizabeth-Winstead-hot-GFo7.jpeg', 'image', 'jpeg', 349, 900, 1287),
(434, 'album', '1', NULL, '2014-03-16 07:19:56', '2014-03-16 07:19:56', 'public/images/d4ef75d60eb96dd2149e47a3021f2688.jpg', 'jpg', 'image.jpg', 'image', 'jpeg', 568, 2560, 1920),
(435, 'album', '1', NULL, '2014-03-16 07:21:14', '2014-03-16 07:21:14', 'public/images/90111af2b0e4aba5ec0e8966c07e2d1c.jpg', 'jpg', '20140314_080307.jpg', 'image', 'jpeg', 966, 2560, 1920),
(436, 'album', '1', NULL, '2014-03-16 07:24:42', '2014-03-16 07:24:42', 'public/images/7cb571b2c7d24da819080a19995bb87c.jpg', 'jpg', '20140314_080554.jpg', 'image', 'jpeg', 1081, 2560, 1920),
(437, 'album', '1', NULL, '2014-03-16 07:45:42', '2014-03-16 07:45:42', 'public/images/ac328a1fe6f9e54417d40cc1bf78267b.jpg', 'jpg', '20140306_133540.jpg', 'image', 'jpeg', 1767, 2560, 1920),
(438, 'album', '1', NULL, '2014-03-24 15:23:49', '2014-03-24 15:23:49', 'public/images/e84295a794fa0a1de6f43c9e1dee6cbb.jpg', 'jpg', '65199612-small_284541.jpg', 'image', 'jpeg', 134, 500, 431),
(439, 'album', '1', NULL, '2014-03-24 15:24:57', '2014-03-24 15:24:57', 'public/images/ae557bd999f9fd0bff549b210d25b37d.jpg', 'jpg', 'images (1).jpg', 'image', 'jpeg', 7, 194, 260),
(440, 'album', '1', NULL, '2014-03-24 15:25:12', '2014-03-24 15:25:12', 'public/images/b7ce421819510af265405fed94ddd099.jpg', 'jpg', 'images (2).jpg', 'image', 'jpeg', 11, 183, 275),
(441, 'album', '1', NULL, '2014-03-24 15:25:31', '2014-03-24 15:25:31', 'public/images/0e51810019af931c88ed2e1f74a8798c.jpg', 'jpg', 'images (3).jpg', 'image', 'jpeg', 5, 191, 264),
(442, 'album', '1', NULL, '2014-03-24 15:25:44', '2014-03-24 15:25:44', 'public/images/909b184a37abc2e3194305b39c599484.jpg', 'jpg', 'images (4).jpg', 'image', 'jpeg', 7, 183, 276),
(443, 'album', '1', NULL, '2014-03-24 15:25:54', '2014-03-24 15:25:54', 'public/images/2c2cdfed94fdd57bf0fef24a62c28302.jpg', 'jpg', 'images.jpg', 'image', 'jpeg', 5, 183, 275),
(450, 'photo', '58', '100000604996892', '2015-02-01 07:26:54', '2015-02-01 07:26:54', 'uploads/photos/1422441618.jpg', 'image/jp', '1422441618.jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(451, 'photo', '59', '100000604996892', '2015-02-01 07:50:57', '2015-02-01 07:50:57', 'uploads/photos/180357.jpg', 'image/jp', '180357.jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(452, 'photo', '60', '100000604996892', '2015-02-01 08:43:26', '2015-02-01 08:43:26', 'uploads/photos/images.jpeg', 'image/jp', 'images.jpeg', 'image', 'image/jpeg', 0, NULL, NULL),
(453, 'photo', '61', '100000604996892', '2015-02-12 15:06:05', '2015-02-12 15:06:05', 'uploads/photos/download (1).jpg', 'image/jp', 'download (1).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(454, 'photo', '62', '100000604996892', '2015-02-26 16:42:31', '2015-02-26 16:42:31', 'uploads/photos/images (2).jpg', 'image/jp', 'images (2).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(455, 'photo', '63', '100000604996892', '2015-02-26 16:47:12', '2015-02-26 16:47:12', 'uploads/photos/images.jpg', 'image/jp', 'images.jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(456, 'photo', '64', '100000604996892', '2015-03-09 14:27:31', '2015-03-09 14:27:31', 'uploads/photos/images (5).jpg', 'image/jp', 'images (5).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(457, 'photo', '65', '100000604996892', '2015-03-09 14:27:57', '2015-03-09 14:27:57', 'uploads/photos/images (4).jpg', 'image/jp', 'images (4).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(458, 'photo', '66', '100000604996892', '2015-03-09 14:28:27', '2015-03-09 14:28:27', 'uploads/photos/images (3).jpg', 'image/jp', 'images (3).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(459, 'photo', '67', '100000604996892', '2015-03-09 14:35:56', '2015-03-09 14:35:56', 'uploads/photos/download.jpg', 'image/jp', 'download.jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(460, 'photo', '68', '100000604996892', '2015-03-09 14:36:21', '2015-03-09 14:36:21', 'uploads/photos/DuongYen2.jpg', 'image/jp', 'DuongYen2.jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(461, 'photo', '69', '100000604996892', '2015-03-09 14:37:54', '2015-03-09 14:37:54', 'uploads/photos/yen-1375772893_500x0.jpg', 'image/jp', 'yen-1375772893_500x0.jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(462, 'photo', '70', '100000604996892', '2015-03-09 14:50:29', '2015-03-09 14:50:29', 'uploads/photos/images (8).jpg', 'image/jp', 'images (8).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(463, 'photo', '71', '100000604996892', '2015-03-09 14:50:47', '2015-03-09 14:50:47', 'uploads/photos/images (6).jpg', 'image/jp', 'images (6).jpg', 'image', 'image/jpeg', 0, NULL, NULL),
(464, 'photo', '72', '100000604996892', '2015-03-09 14:51:19', '2015-03-09 14:51:19', 'uploads/photos/download (2).jpg', 'image/jp', 'download (2).jpg', 'image', 'image/jpeg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `mes_id` int(11) NOT NULL,
  `msg` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`mes_id`, `msg`) VALUES
(1, 'a'),
(2, 'b'),
(3, 'c'),
(4, 'd'),
(5, 'e'),
(6, 'f'),
(7, 'g'),
(8, 'h'),
(9, 'i'),
(10, 'j'),
(11, 'k'),
(12, 'l'),
(13, 'm'),
(14, 'n'),
(15, 'o'),
(16, 'p'),
(17, 'r'),
(18, 's'),
(19, 't'),
(20, 'u'),
(21, 'v'),
(22, 'y'),
(23, 'z'),
(24, 'aa'),
(25, 'bb'),
(26, 'cc'),
(27, 'dd'),
(28, 'ee'),
(29, 'ff'),
(30, 'gg'),
(31, 'hh'),
(32, 'ii'),
(33, 'jj'),
(34, 'kk'),
(35, 'll'),
(36, 'mm'),
(37, 'nn'),
(38, 'oo'),
(39, 'pp'),
(40, 'rr'),
(41, 'ss'),
(42, 'tt'),
(43, 'uu'),
(44, 'vv'),
(45, 'yy'),
(46, 'zz');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `photo_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `rept_photo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(11) unsigned NOT NULL DEFAULT '0',
  `like_count` int(50) NOT NULL DEFAULT '0',
  `is_home` tinyint(1) DEFAULT NULL,
  `source` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sensitive_content` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `user_id`, `url`, `creation_date`, `modified_date`, `photo_ids`, `rept_photo_id`, `status`, `view_count`, `comment_count`, `like_count`, `is_home`, `source`, `sensitive_content`) VALUES
(18, 'Dep qua em oi :angry:', '100000604996892', 'Dep-qua-em-oi-angry.html', '2014-02-20 15:40:33', '2014-02-20 18:53:40', '268,269,270,271,272,273,274,275', '268', 1, 0, 0, 602, 1, '', NULL),
(19, ':inlove:', '100000604996892', 'inlove.html', '2014-02-20 19:13:50', '2014-02-20 19:13:50', '276,277,278,279,280,281,282', '276', 1, 0, 0, 602, 1, '', NULL),
(20, ':inlove: hhhhhhhhhhhhhh', '100001913165516', 'inlove-hhhhhhhhhhhhhh.html', '2014-02-21 17:51:38', '2014-02-21 17:51:38', '283', '283', 1, 0, 0, 603, 0, '', NULL),
(21, ':surprised::surprised:', '100001913165516', 'surprised-surprised.html', '2014-02-21 18:42:50', '2014-02-21 18:42:50', '284,285,286,287,288', '284', 1, 0, 0, 603, 0, '', NULL),
(22, 'Test thu:cool:', '100001913165516', 'test-thu-cool.html', '2014-02-26 15:21:31', '2014-02-26 15:21:31', '306,307,308', '306', 1, 0, 0, 0, 0, '', NULL),
(23, 'Aaaaa:gloom::gloom:', '100001913165516', 'aaaaa-gloom-gloom.html', '2014-02-26 15:27:29', '2014-02-26 15:27:29', '309,310,311', '309', 1, 0, 0, 0, 0, '', NULL),
(24, 'Aaaasss', '100001913165516', 'aaaasss.html', '2014-02-26 15:48:46', '2014-02-26 15:48:46', '330,331,332,333,334,335,336,337,338,339,340', '330', 1, 0, 0, 0, 0, '', NULL),
(25, 'Hhhhhhhhhhhhhh', '100001913165516', 'hhhhhhhhhhhhhh.html', '2014-02-26 15:50:51', '2014-02-26 15:50:51', '361,372,373,374,375', '361', 1, 0, 0, 0, 0, '', NULL),
(26, 'Compress js:gloom::gloom:', '100001913165516', 'compress-js-gloom-gloom.html', '2014-02-26 16:13:13', '2014-02-26 16:13:13', '383,384,385,386', '383', 1, 0, 0, 0, 0, '', NULL),
(27, 'Fffffffffffffffff:sad::sad:', '100001913165516', 'fffffffffffffffff-sad-sad.html', '2014-02-26 16:14:04', '2014-02-26 16:14:04', '387,390,391,392,393,394', '387', 1, 0, 0, 0, 0, '', NULL),
(28, 'Co gang len:cool:', '100001913165516', 'co-gang-len-cool.html', '2014-02-26 16:15:04', '2014-02-26 16:15:04', '395', '395', 1, 0, 0, 0, 0, '', NULL),
(29, 'Dddddaaaaa', '100001913165516', 'dddddaaaaa.html', '2014-02-26 16:16:46', '2014-02-26 16:16:46', '396,397,398,399', '396', 1, 0, 0, 0, 1, '', NULL),
(30, 'Dddddddddddddddd', '100001913165516', 'dddddddddddddddd.html', '2014-03-06 16:56:01', '2014-03-06 16:56:01', '400', '400', 1, 0, 0, 0, 1, '', NULL),
(31, 'Up lan nua', '100001913165516', 'up-lan-nua.html', '2014-03-06 16:56:20', '2014-03-06 16:56:20', '401', '401', 1, 0, 0, 0, 1, '', NULL),
(32, 'Up lan nua 1111', '100001913165516', 'up-lan-nua-1111.html', '2014-03-06 16:56:44', '2014-03-06 16:56:44', '402', '402', 1, 0, 0, 0, 1, '', NULL),
(33, 'Cccccccccccccccc', '100001913165516', 'cccccccccccccccc.html', '2014-03-06 16:59:03', '2014-03-06 16:59:03', '403', '403', 1, 0, 0, 0, 0, '', NULL),
(34, 'Aaaaaaaaaaaaaa', '100000604996892', 'aaaaaaaaaaaaaa.html', '2014-03-08 11:34:33', '2014-03-08 11:34:33', '412', '412', 1, 0, 0, 0, 1, '', NULL),
(35, 'Sssssssssssssss', '100000604996892', 'sssssssssssssss.html', '2014-03-08 11:34:49', '2014-03-08 11:34:49', '413', '413', 1, 0, 0, 0, 1, '', NULL),
(36, 'Ggggggggggggggggg', '100000604996892', 'ggggggggggggggggg.html', '2014-03-08 11:35:02', '2014-03-08 11:35:02', '414', '414', 1, 0, 0, 0, 1, '', NULL),
(37, 'Test scroll', '100001913165516', 'test-scroll.html', '2014-03-09 14:22:58', '2014-03-09 14:22:58', '415', '415', 1, 0, 0, 0, 1, '', NULL),
(38, 'Test scroll 111', '100001913165516', 'test-scroll-111.html', '2014-03-09 14:23:13', '2014-03-09 14:23:13', '416', '416', 1, 0, 0, 0, 1, '', NULL),
(39, 'Test hieu ung', '100000604996892', 'test-hieu-ung.html', '2014-03-12 13:29:54', '2014-03-12 13:29:54', '424', '424', 1, 0, 0, 0, 1, '', NULL),
(40, 'Test hieu ung 111', '100000604996892', 'test-hieu-ung-111.html', '2014-03-12 13:30:09', '2014-03-12 13:30:09', '425', '425', 1, 0, 0, 0, 1, '', NULL),
(41, 'Test hieu ung 333', '100000604996892', 'test-hieu-ung-333.html', '2014-03-12 13:30:40', '2014-03-12 13:30:40', '426', '426', 1, 0, 0, 0, 1, '', NULL),
(42, 'Test hieu ung 2222', '100000604996892', 'test-hieu-ung-2222.html', '2014-03-12 13:31:15', '2014-03-12 13:31:15', '427', '427', 1, 0, 0, 0, 1, '', NULL),
(43, 'Test hieu ung 4444', '100000604996892', 'test-hieu-ung-4444.html', '2014-03-12 13:31:27', '2014-03-12 13:31:27', '428', '428', 1, 0, 0, 0, 1, '', NULL),
(44, 'Co gan len fix bug', '100001913165516', 'co-gan-len-fix-bug.html', '2014-03-15 05:05:13', '2014-03-15 05:05:13', '429', '429', 1, 0, 0, 0, 1, '', NULL),
(45, 'Aaaaaaaaaaa', '100000604996892', 'aaaaaaaaaaa.html', '2014-03-24 15:24:03', '2014-03-24 15:24:03', '438', '438', 1, 0, 0, 0, 1, '', NULL),
(46, 'Ccccccccccccccc', '100000604996892', 'ccccccccccccccc.html', '2014-03-24 15:25:02', '2014-03-24 15:25:02', '439', '439', 1, 0, 0, 0, 1, '', NULL),
(47, 'Dddddddddddddd', '100000604996892', 'dddddddddddddd.html', '2014-03-24 15:25:15', '2014-03-24 15:25:15', '440', '440', 1, 0, 0, 0, 0, '', NULL),
(48, 'Ssssssssssssss', '100000604996892', 'ssssssssssssss.html', '2014-03-24 15:25:33', '2014-03-24 15:25:33', '441', '441', 1, 0, 0, 0, 1, '', NULL),
(49, 'Ggggggggggggg', '100000604996892', 'ggggggggggggg.html', '2014-03-24 15:25:46', '2014-03-24 15:25:46', '442', '442', 1, 0, 0, 0, 1, '', NULL),
(50, 'Hhhhhhhhhhhh', '100000604996892', 'hhhhhhhhhhhh.html', '2014-03-24 15:25:57', '2014-03-24 15:25:57', '443', '443', 1, 0, 0, 0, 1, '', NULL),
(58, 'Gau nha em', '100000604996892', 'gau-nha-em', '2015-02-01 07:26:53', '2015-02-01 07:26:53', '', '', 1, 0, 0, 0, 0, 'vnexpress', 1),
(59, 'Bài học cho cuộc sống', '100000604996892', 'bài-học-cho-cuộc-sống', '2015-02-01 07:50:57', '2015-02-01 07:50:57', '', '', 1, 0, 0, 0, 0, 'sưu tầm', NULL),
(60, 'Gái đẹp', '100000604996892', 'gái-đẹp', '2015-02-01 08:43:26', '2015-02-01 08:43:26', '', '', 1, 0, 0, 0, 0, '', NULL),
(61, 'Doi chim', '100000604996892', '', '2015-02-12 15:06:05', '2015-02-12 15:06:05', '', '', 1, 0, 0, 0, 0, '', NULL),
(62, 'Duong yen', '100000604996892', '', '2015-02-26 16:42:30', '2015-02-26 16:42:30', '', '', 1, 0, 0, 0, 0, '', NULL),
(63, 'Duong yen 2', '100000604996892', '', '2015-02-26 16:47:11', '2015-02-26 16:47:11', '', '', 1, 0, 0, 0, 0, '', NULL),
(64, 'Duong yen la tan', '100000604996892', '', '2015-03-09 14:27:31', '2015-03-09 14:27:31', '', '', 1, 0, 0, 0, 0, '', NULL),
(65, 'Tien kiem ky hiep', '100000604996892', '', '2015-03-09 14:27:57', '2015-03-09 14:27:57', '', '', 1, 0, 0, 0, 0, '', NULL),
(66, 'Ben nhau tron doi', '100000604996892', '', '2015-03-09 14:28:27', '2015-03-09 14:28:27', '', '', 1, 0, 0, 0, 0, '', NULL),
(67, 'Nguoi dep', '100000604996892', '', '2015-03-09 14:35:56', '2015-03-09 14:35:56', '', '', 1, 0, 0, 0, 0, '', NULL),
(68, 'Nguoi dep 1', '100000604996892', '', '2015-03-09 14:36:21', '2015-03-09 14:36:21', '', '', 1, 0, 0, 0, 0, '', NULL),
(69, 'Duong yen ', '100000604996892', '', '2015-03-09 14:37:53', '2015-03-09 14:37:53', '', '', 1, 0, 0, 0, 0, '', NULL),
(70, 'Duong yen khuu trach', '100000604996892', '', '2015-03-09 14:50:29', '2015-03-09 14:50:29', '', '', 1, 0, 0, 0, 0, '', NULL),
(71, 'Duong yen ', '100000604996892', '', '2015-03-09 14:50:47', '2015-03-09 14:50:47', '', '', 1, 0, 0, 0, 0, '', NULL),
(72, 'Nguoi dep', '100000604996892', '', '2015-03-09 14:51:19', '2015-03-09 14:51:19', '', '', 1, 0, 0, 0, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `rank`) VALUES
(12, 'gau', 0),
(13, 'cuộc sống', 0),
(14, '', 0),
(15, 'thể thao', 0),
(16, 'dien vien', 0),
(17, 'phu nua', 0),
(18, 'thien than', 0),
(19, 'sieu xe', 0),
(20, 'duong yen', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags_photos`
--

CREATE TABLE IF NOT EXISTS `tags_photos` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags_photos`
--

INSERT INTO `tags_photos` (`id`, `photo_id`, `tag_id`) VALUES
(3, 58, 12),
(4, 59, 13),
(5, 60, 14),
(6, 61, 14),
(7, 62, 16),
(8, 63, 16),
(9, 64, 20),
(10, 65, 20),
(11, 66, 20),
(12, 67, 20),
(13, 68, 20),
(14, 69, 20),
(15, 70, 20),
(16, 71, 20),
(17, 72, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tags_videos`
--

CREATE TABLE IF NOT EXISTS `tags_videos` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags_videos`
--

INSERT INTO `tags_videos` (`id`, `video_id`, `tag_id`) VALUES
(0, 22, 15),
(0, 23, 14),
(0, 24, 14),
(0, 25, 17),
(0, 26, 18),
(0, 27, 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci,
  `status_date` datetime DEFAULT NULL,
  `password` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `level_id` int(11) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `liked` int(50) NOT NULL,
  `thumbnail_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `displayname`, `photo_id`, `status`, `status_date`, `password`, `website`, `description`, `level_id`, `enabled`, `verified`, `approved`, `creation_date`, `modified_date`, `view_count`, `liked`, `thumbnail_id`, `remember_token`, `updated_at`) VALUES
('100000604996892', 'nguyenuit@gmail.com', 'nguyenuit', 'Nguyen Ly Thai', 0, NULL, NULL, '$2y$10$nW1C5oNjJjcq.2EbonwiMOYiveY.CxRjqg.gVBqnJrzJvrKx.O8iC', 'phuong ggggggggggg', 'ccccffff beeppp', 1, 1, 0, 1, '2013-11-15 07:58:15', '2014-02-22 06:17:32', 10, 0, '301', 'YsfG010fhhrdXuVvi3JKMIEmp0BPZriaK8h2jZOERF8LfJ7yJwTEQE3k7m2t', '2015-03-08 04:47:10'),
('100001913165516', 'lmtkg@yahoo.com.vn', 'lmtkg', 'aaaa', 0, NULL, NULL, '$2y$10$nW1C5oNjJjcq.2EbonwiMOYiveY.CxRjqg.gVBqnJrzJvrKx.O8iC', 'https://www.facebook.com/tri.lyminh', 'co gang len', 1, 1, 0, 1, '2013-11-15 07:57:40', '2014-02-22 07:04:20', 0, 10, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(50) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `youtube_id` varchar(250) NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `like_count` int(11) NOT NULL,
  `source` varchar(250) DEFAULT NULL,
  `sensitive_content` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `user_id`, `url`, `youtube_id`, `creation_date`, `modified_date`, `view_count`, `comment_count`, `like_count`, `source`, `sensitive_content`) VALUES
(17, 'ccdaad', '100001913165516', 'http://www.youtube.com/watch?v=bESGLojNYSo', 'bESGLojNYSo', '2014-02-11 16:40:34', '2014-02-11 16:40:34', 77, 0, 0, '', 0),
(18, 'Video hay', '100000604996892', 'http://www.youtube.com/watch?v=pRpeEdMmmQ0', 'pRpeEdMmmQ0', '2014-02-11 16:43:27', '2014-02-11 16:43:27', 0, 2, 0, '', 0),
(19, 'Video hay vo cung', '100000604996892', 'http://www.youtube.com/watch?v=kTHNpusq654', 'kTHNpusq654', '2014-02-11 16:43:50', '2014-02-11 16:43:50', 0, 0, 4, '', 0),
(20, 'Kissed a girl', '100001913165516', 'http://www.youtube.com/watch?v=tAp9BKosZXs', 'tAp9BKosZXs', '2014-02-11 16:54:17', '2014-02-11 16:54:17', 0, 0, 0, '', 0),
(21, 'Drifting guitar', '100001913165516', 'http://www.youtube.com/watch?v=Ddn4MGaS3N4', 'Ddn4MGaS3N4', '2014-02-12 15:57:13', '2014-02-12 15:57:13', 0, 0, 0, '', 0),
(26, 'Tôi đã tin là có thiên thần trên đời kể từ lúc xem video này', '100000604996892', 'https://www.youtube.com/watch?v=w0iVruKjyfI', 'w0iVruKjyfI', '2015-03-08 06:51:45', '2015-03-08 06:51:45', 0, 0, 0, '', NULL),
(27, 'Dàn siêu xe gầm rú trước quán cà phê Sài Gòn ( Việt Nam Mình Bây Giờ Cũng Nhiều Người Giàu Đấy Chứ )', '100000604996892', 'https://www.youtube.com/watch?v=ii3zb02JEqc', 'ii3zb02JEqc', '2015-03-08 07:20:26', '2015-03-08 07:20:26', 0, 0, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE IF NOT EXISTS `views` (
  `views_id` int(11) NOT NULL,
  `key_view` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`views_id`, `key_view`, `value`) VALUES
(0, '["::1","66"]', '2013-11-28 23:30:00'),
(0, '["::1","65"]', '2013-12-01 16:36:31'),
(0, '["::1","69"]', '2013-11-28 23:29:55'),
(0, '["::1","64"]', '2013-12-01 16:36:35'),
(0, '["::1","63"]', '2013-11-28 23:30:09'),
(0, '["::1","68"]', '2013-11-28 23:29:51'),
(0, '["::1","67"]', '2013-11-26 08:19:05'),
(0, '["::1","62"]', '2013-11-25 03:58:32'),
(0, '["::1","61"]', '2013-11-24 21:03:36'),
(0, '["::1","60"]', '2013-11-25 13:38:26'),
(0, '["::1","59"]', '2013-11-25 13:38:03'),
(0, '["::1","58"]', '2013-11-24 21:03:37'),
(0, '["::1","57"]', '2013-11-24 21:03:38'),
(0, '["::1","56"]', '2013-11-24 21:03:39'),
(0, '["::1","55"]', '2013-11-24 21:03:40'),
(0, '["::1","54"]', '2013-11-24 21:03:40'),
(0, '["::1","53"]', '2013-11-24 21:03:41'),
(0, '["::1","52"]', '2013-11-24 21:04:07'),
(0, '["::1","51"]', '2013-11-24 21:04:07'),
(0, '["::1","50"]', '2013-11-24 21:04:08'),
(0, '["::1","49"]', '2013-11-24 21:04:09'),
(0, '["::1","48"]', '2013-11-24 21:04:09'),
(0, '["::1","47"]', '2013-11-24 21:04:10'),
(0, '["::1","46"]', '2013-11-24 21:04:12'),
(0, '["::1","45"]', '2013-11-24 21:04:13'),
(0, '["::1","44"]', '2013-11-24 21:04:14'),
(0, '["::1","43"]', '2013-11-24 21:04:15'),
(0, '["::1","42"]', '2013-11-24 21:04:15'),
(0, '["::1","70"]', '2013-12-01 16:44:14'),
(0, '["127.0.0.1","68"]', '2013-11-29 01:19:58'),
(0, '["::1","71"]', '2013-12-01 17:22:12'),
(0, '["::1","1"]', '2013-12-14 00:40:49'),
(0, '["::1","2"]', '2014-01-04 11:36:07'),
(0, '["::1","3"]', '2014-01-04 11:35:35'),
(0, '["::1","4"]', '2013-12-17 18:52:06'),
(0, '["::1","5"]', '2013-12-16 15:19:39'),
(0, '["::1","6"]', '2013-12-20 18:45:38'),
(0, '["::1","7"]', '2013-12-20 18:02:13'),
(0, '["::1","8"]', '2013-12-30 17:39:11'),
(0, '["::1","9"]', '2014-01-04 11:36:48'),
(0, '["127.0.0.1","4"]', '2013-12-21 09:33:33'),
(0, '["127.0.0.1","5"]', '2013-12-21 10:27:38'),
(0, '["127.0.0.1","2"]', '2013-12-21 09:34:23'),
(0, '["::1","10"]', '2014-01-04 08:06:06'),
(0, '["127.0.0.1","10"]', '2013-12-29 19:10:33'),
(0, '["127.0.0.1","9"]', '2013-12-26 17:28:28'),
(0, '["::1","11"]', '2013-12-30 15:21:55'),
(0, '["::1","12"]', '2014-01-04 15:31:01'),
(0, '["::1","13"]', '2014-01-04 11:36:56'),
(0, '["127.0.0.1","13"]', '2013-12-29 19:15:55'),
(0, '["127.0.0.1","12"]', '2013-12-29 19:10:25'),
(0, '["::1","14"]', '2014-01-04 18:14:55'),
(0, '["::1","15"]', '2014-01-04 18:15:16'),
(0, '["::1","16"]', '2014-01-05 02:40:42'),
(0, '["::1","17"]', '2014-01-05 13:47:56'),
(0, '["::1","18"]', '2014-01-06 12:07:11'),
(0, '["::1","19"]', '2014-01-06 16:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `vote_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `result_vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `user_id`, `album_id`, `result_vote`) VALUES
(0, 2147483647, 12, 0),
(0, 2147483647, 12, 0),
(0, 2147483647, 12, 1),
(0, 2147483647, 12, 0),
(0, 2147483647, 12, 0),
(0, 2147483647, 12, 1),
(0, 2147483647, 12, 0),
(0, 2147483647, 12, 1),
(0, 2147483647, 12, 0),
(0, 2147483647, 12, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 0),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 1),
(0, 2147483647, 15, 1),
(0, 2147483647, 15, 0),
(0, 2147483647, 15, 1),
(0, 2147483647, 15, 1),
(0, 2147483647, 15, 0),
(0, 2147483647, 15, 1),
(0, 2147483647, 13, 1),
(0, 2147483647, 14, 1),
(0, 2147483647, 15, 1),
(0, 2147483647, 13, 1),
(0, 2147483647, 13, 1),
(0, 2147483647, 18, 1),
(0, 2147483647, 20, 1),
(0, 2147483647, 20, 1),
(0, 2147483647, 20, 1),
(0, 2147483647, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `wishlist_id` int(11) unsigned NOT NULL,
  `user_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `photo_ids` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`), ADD KEY `PARENT` (`parent_type`,`parent_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_photos`
--
ALTER TABLE `tags_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=465;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tags_photos`
--
ALTER TABLE `tags_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wishlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
