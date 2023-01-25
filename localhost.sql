-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 25, 2023 lúc 05:51 PM
-- Phiên bản máy phục vụ: 10.3.37-MariaDB-cll-lve
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoamohic_activekey`
--
CREATE DATABASE IF NOT EXISTS `hoamohic_activekey` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hoamohic_activekey`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhinh`
--

CREATE TABLE `cauhinh` (
  `id` int(11) NOT NULL,
  `SMTP_UNAME` varchar(255) NOT NULL,
  `SMTP_PWORD` varchar(255) NOT NULL,
  `SMTP_GMAILADMIN` varchar(255) NOT NULL,
  `SMTP_TENNGUOIGUI` varchar(255) NOT NULL,
  `DOMAIN` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhinh`
--

INSERT INTO `cauhinh` (`id`, `SMTP_UNAME`, `SMTP_PWORD`, `SMTP_GMAILADMIN`, `SMTP_TENNGUOIGUI`, `DOMAIN`) VALUES
(1, 'adhkmobile@gmail.com', 'atplxiqqwvrcreso', 'adhkmobile@gmail.com', 'ADHK Mobile', 'http://admin.test/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `get_key_active`
--

CREATE TABLE `get_key_active` (
  `ID` int(11) NOT NULL,
  `all_key` text NOT NULL,
  `UDID` text DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` text NOT NULL,
  `set_time` text NOT NULL,
  `user_create` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `get_key_active`
--

INSERT INTO `get_key_active` (`ID`, `all_key`, `UDID`, `start_time`, `end_time`, `status`, `set_time`, `user_create`) VALUES
(7, 'manhDat', '800AF2B7-A958-4E75-8C4D-EC50D73F7BE5', '2023-01-17 18:43:00', '2024-01-17 18:43:00', 'Active', '1_year', 'admin@gmail.com'),
(8, 'QuangBiriii', 'D826EE95-75A8-489E-9F59-3C53A2BBA5C9', '2023-01-22 12:10:00', '2023-04-22 12:10:00', 'Active', '3_month', 'admin@gmail.com'),
(9, 'phuocle', '9B9BC87D-851A-418C-87E2-2BF38424A871', '2023-01-17 18:45:00', '2023-04-17 18:45:00', 'Active', '3_month', 'admin@gmail.com'),
(10, 'linhhoang', '3506F255-E6B0-4FB4-A1EA-7D132D66DB47', '2023-01-17 18:46:00', '2023-04-17 18:46:00', 'Active', '3_month', 'admin@gmail.com'),
(11, 'manhcuong', '46E9D726-CF52-4AC0-AA60-6B3FC3A7BA98', '2023-01-17 19:01:00', '2023-04-17 19:01:00', 'Active', '3_month', 'admin@gmail.com'),
(12, 'dattran', 'D07BEC82-B035-4413-A46E-FD59F5806AEC', '2023-01-17 18:49:00', '2023-04-17 18:49:00', 'Active', '3_month', 'admin@gmail.com'),
(13, 'thanhtuan', '149A586F-BF30-4D91-80A4-A00CE6555D7F', '2023-01-17 18:51:00', '2023-04-17 18:51:00', 'Active', '3_month', 'admin@gmail.com'),
(14, 'pandoraht', 'C39BD5BA-39B8-4B9E-92D1-28612AC2E6C7', '2023-01-17 18:50:00', '2023-04-17 18:50:00', 'Active', '3_month', 'admin@gmail.com'),
(15, 'nguyenanhtri', '0E210A57-D538-4665-9649-161C17A38E60', '2023-01-17 18:51:00', '2023-04-17 18:51:00', 'Active', '3_month', 'admin@gmail.com'),
(16, 'tangbakhoa', 'CCE73869-C4D0-4A34-9258-CEAC76A8B98F', '2023-01-17 18:51:00', '2023-04-17 18:51:00', 'Active', '3_month', 'admin@gmail.com'),
(17, 'bap', 'B23CBED1-EB4C-4B6B-AE7F-8A5F37625F24', '2023-01-18 22:09:00', '2023-04-18 22:09:00', 'Active', '3_month', 'admin@gmail.com'),
(18, 'coongdoanh', NULL, NULL, NULL, 'Pending', '3_month', 'admin@gmail.com'),
(19, 'dinhtuan', '0DC8C623-6D3C-4702-9569-AC0FE14413F5', '2023-01-17 22:57:00', '2023-04-17 22:57:00', 'Active', '3_month', 'admin@gmail.com'),
(20, 'doduong', '714CAFD2-9666-4E4D-B588-1B377B1EAFA2', '2023-01-18 22:30:00', '2023-04-18 22:30:00', 'Active', '3_month', 'admin@gmail.com'),
(21, 'hoangdinhnghia', NULL, NULL, NULL, 'Pending', '3_month', 'admin@gmail.com'),
(22, 'kevinhoi', '827CA7DC-7734-407C-9759-DC3336976DA3', '2023-01-17 19:08:00', '2023-04-17 19:08:00', 'Active', '3_month', 'admin@gmail.com'),
(23, 'caodat', 'C0AFF3DD-3896-412B-B7C7-00F4687F0C44', '2023-01-17 18:57:00', '2023-04-17 18:57:00', 'Active', '3_month', 'admin@gmail.com'),
(24, 'quocbao', '6D2629DE-1878-432F-97AC-D792CD083920', '2023-01-17 18:59:00', '2023-04-17 18:59:00', 'Active', '3_month', 'admin@gmail.com'),
(25, 'binhnguyen', 'E2063A4E-2B7B-4933-AD39-604C23C962A8', '2023-01-17 19:03:00', '2023-04-17 19:03:00', 'Active', '3_month', 'admin@gmail.com'),
(26, 'phamquang', '01CCE285-6DFF-4B8C-9FD3-3644746BB5FC', '2023-01-17 19:02:00', '2023-04-17 19:02:00', 'Active', '3_month', 'admin@gmail.com'),
(27, 'lam', '7E2CEECA-8093-484E-A73D-8EC2522AB84A', '2023-01-17 19:02:00', '2023-04-17 19:02:00', 'Active', '3_month', 'admin@gmail.com'),
(28, 'nguyendan', NULL, NULL, NULL, 'Pending', '3_month', 'admin@gmail.com'),
(29, 'yan1', '3A9DBF7D-D3AB-4933-BB68-90E97ABD8208', '2023-01-18 12:05:00', '2023-04-18 12:05:00', 'Active', '3_month', 'admin@gmail.com'),
(30, 'yan2', 'D52EDD07-D879-460A-986B-D5AE8E80024D', '2023-01-18 12:06:00', '2023-04-18 12:06:00', 'Active', '3_month', 'admin@gmail.com'),
(31, 'luc1', 'B1C693E1-9E4E-434D-8A86-C42CF71778C6', '2023-01-18 18:32:00', '2023-04-18 18:32:00', 'Active', '3_month', 'admin@gmail.com'),
(32, 'luc2', '9121EAC8-A048-4530-8CB5-3982E7E7D7E5', '2023-01-19 22:10:00', '2023-04-19 22:10:00', 'Active', '3_month', 'admin@gmail.com'),
(33, 'luc3', '17B271F3-B09A-4E07-A80A-F896F21C0C75', '2023-01-20 10:22:00', '2023-04-20 10:22:00', 'Active', '3_month', 'admin@gmail.com'),
(34, 'buihuuminh', 'E1E522CD-713A-41CF-9482-DD782A64309F', '2023-01-18 16:02:00', '2023-04-18 16:02:00', 'Active', '3_month', 'admin@gmail.com'),
(35, 'cheengg', NULL, NULL, NULL, 'Pending', '3_month', 'admin@gmail.com'),
(36, 'dung', '65772535-E325-45C0-9EE3-EF9013439A5F', '2023-01-17 21:51:00', '2023-04-17 21:51:00', 'Active', '3_month', 'admin@gmail.com'),
(37, 'hoanglong', 'C5DD607B-E4D3-466D-BD54-2ADEEE2F0AA1', '2023-01-17 19:31:00', '2023-04-17 19:31:00', 'Active', '3_month', 'admin@gmail.com'),
(38, 'huytien', '36B1D9D3-9970-4FDA-8C17-0C9977C3FA13', '2023-01-17 23:30:00', '2023-04-17 23:30:00', 'Active', '3_month', 'admin@gmail.com'),
(39, 'letran', '2BAB127F-0A0F-4BA6-838C-393E2A328F79', '2023-01-23 09:01:00', '2023-04-23 09:01:00', 'Active', '3_month', 'admin@gmail.com'),
(40, 'letrungthanh', 'C76F0FC1-D384-4533-BE47-7E195ED89BB4', '2023-01-17 22:56:00', '2023-04-17 22:56:00', 'Active', '3_month', 'admin@gmail.com'),
(41, 'nguyenhuutien', '3E8EF360-6602-4154-BA0F-ECFBA41918C2', '2023-01-17 20:05:00', '2023-04-17 20:05:00', 'Active', '3_month', 'admin@gmail.com'),
(42, 'toan', '9CFEF553-E1AA-41F9-8BAA-E83C8B5C0917', '2023-01-17 19:25:00', '2023-04-17 19:25:00', 'Active', '3_month', 'admin@gmail.com'),
(43, 'tuananh', '9B1C38BD-ABD0-4973-B3B6-FF4289111C7B', '2023-01-17 19:11:00', '2023-04-17 19:11:00', 'Active', '3_month', 'admin@gmail.com'),
(44, 'nguyenhoangminh', 'AFFEC309-8819-4152-AE06-464AC6264311', '2023-01-17 19:18:00', '2023-04-17 19:18:00', 'Active', '3_month', 'admin@gmail.com'),
(45, 'tuong', '1907616B-35A0-445F-8C85-48DBACD3893B', '2023-01-17 19:22:00', '2023-04-17 19:22:00', 'Active', '3_month', 'admin@gmail.com'),
(46, 'nguyenhuuthinh', 'DAD16763-8974-40DD-B3F2-41F35C2BFEE5', '2023-01-17 19:39:00', '2023-04-17 19:39:00', 'Active', '3_month', 'admin@gmail.com'),
(47, 'thinh', 'E762D252-AD58-42C1-93B0-8FFCB9446778', '2023-01-17 20:32:00', '2023-04-17 20:32:00', 'Active', '3_month', 'admin@gmail.com'),
(48, 'thaiha', 'F6987DF6-AD77-4763-9958-7CC07E91088D', '2023-01-17 20:48:00', '2023-04-17 20:48:00', 'Active', '3_month', 'admin@gmail.com'),
(49, 'trongsoan', '0731C55F-3DF7-4B4E-8EF1-0B264EA1182E', '2023-01-17 21:03:00', '2023-04-17 21:03:00', 'Active', '3_month', 'admin@gmail.com'),
(51, 'tuan', 'C37CCE01-002F-4BAD-A77A-50D5E3341763', '2023-01-17 21:44:00', '2023-04-17 21:44:00', 'Active', '3_month', 'admin@gmail.com'),
(52, 'huy', '7D766C06-3D93-4D3D-A7A1-7B806D659752', '2023-01-17 22:17:00', '2023-04-17 22:17:00', 'Active', '3_month', 'admin@gmail.com'),
(53, 'namhai', '70F53C9D-D4A7-4FE8-BDE2-236455480BDE', '2023-01-17 22:10:00', '2023-04-17 22:10:00', 'Active', '3_month', 'admin@gmail.com'),
(54, 'mrd', '43628754-43B8-4BB1-9DFF-6B5E318E79FC', '2023-01-18 09:58:00', '2023-04-18 09:58:00', 'Active', '3_month', 'admin@gmail.com'),
(55, 'hoangtruong', '1E32813F-4309-426D-B9E6-C07BF6AE7D29', '2023-01-17 22:29:00', '2023-04-17 22:29:00', 'Active', '3_month', 'admin@gmail.com'),
(56, 'thanh', '744F4ACE-2383-4062-A9E5-13FE9AF7431C', '2023-01-17 22:30:00', '2023-04-17 22:30:00', 'Active', '3_month', 'admin@gmail.com'),
(57, 'dinhtuan', '0DC8C623-6D3C-4702-9569-AC0FE14413F5', '2023-01-17 22:57:00', '2023-04-17 22:57:00', 'Active', '3_month', 'admin@gmail.com'),
(58, 'NGUYEN-BA-HOA-1R14KL', '5000C085-9BA5-44C2-AD12-41F9E8DC1375', '2023-01-17 23:02:00', '2023-01-24 23:02:00', 'Active', '1_week', 'admin@gmail.com'),
(60, 'NGUYEN-BA-HOA-1GVRM8', 'C7E4FB30-9513-4E7A-ACC8-1FA0CF088213', '2023-01-18 11:13:00', '2023-02-17 11:13:00', 'Active', '1_month', 'admin@gmail.com'),
(61, 'hohoa', '67F559A2-9E93-4367-96D5-E6BDBBABBDD7', '2023-01-18 20:32:00', '2023-04-18 20:32:00', 'Active', '3_month', 'admin@gmail.com'),
(62, 'NGUYEN-BA-HOA-L3ZZB2', 'BE92F71B-278E-437F-9B62-922541208FAD', '2023-01-18 23:25:00', '2023-01-19 23:25:00', 'Active', '1_days', 'hoakhung@gmail.com'),
(63, 'NGUYEN-BA-HOA-WP8029', NULL, NULL, NULL, 'Pending', '1_days', 'zung@gmail.com'),
(64, 'quanglinh', '195802E5-024D-458D-B518-5BBAE141879C', '2023-01-19 05:28:00', '2023-04-19 05:28:00', 'Active', '3_month', 'admin@gmail.com'),
(65, 'nguyenvantung', 'B7E06036-0E67-43DC-9CBF-E0855A5E3078', '2023-01-18 20:39:00', '2023-04-18 20:39:00', 'Active', '3_month', 'admin@gmail.com'),
(66, 'NGUYEN-BA-HOA-Z7CXEW', 'A833A96A-DCBB-4328-B2D3-D672B3E914B5', '2023-01-18 21:13:00', '2023-01-19 21:13:00', 'Active', '1_days', 'trankhanh0389@gmail.com'),
(67, 'NGUYEN-BA-HOA-28L2U1', 'CDF0B5EC-084D-497F-AAE4-0D183BCDE534', '2023-01-18 21:28:00', '2023-01-19 21:28:00', 'Active', '1_days', 'Hiisp2k3@gmail.com'),
(68, 'trannghia', '11AB2438-6027-4E27-84CE-868C545A0AE2', '2023-01-18 21:40:00', '2023-04-18 21:40:00', 'Active', '3_month', 'admin@gmail.com'),
(69, 'NGUYEN-BA-HOA-REVTF1', '93948580-E9C3-4E58-96D6-0A9E5D03FB6F', '2023-01-22 18:40:00', '2023-01-23 18:40:00', 'Active', '1_days', 'tuan20010207@gmail.com '),
(70, 'NGUYEN-BA-HOA-D0Z2A2', NULL, NULL, NULL, 'Pending', '1_days', 'bacdang543@gmail.com'),
(71, 'NGUYEN-BA-HOA-A6QX1H', NULL, NULL, NULL, 'Pending', '1_days', 'tuanhoang@gmail.com '),
(72, 'NGUYEN-BA-HOA-56C78R', NULL, NULL, NULL, 'Pending', '1_days', 'tuan2001ok@gmail.com '),
(73, 'NGUYEN-BA-HOA-5420K9', '93948580-E9C3-4E58-96D6-0A9E5D03FB6F', '2023-01-18 22:17:00', '2023-01-19 22:17:00', 'Active', '1_days', 'HoangTuan@gmail.com '),
(74, 'quockhanh', 'F50B1ECE-181D-4EB1-B3A6-7442BAD9651F', '2023-01-18 23:00:00', '2023-04-18 23:00:00', 'Active', '3_month', 'admin@gmail.com'),
(75, 'NGUYEN-BA-HOA-1MH2CH', 'BE92F71B-278E-437F-9B62-922541208FAD', '2023-01-18 23:05:00', '2023-01-19 23:05:00', 'Active', '1_days', 'nguyendinhtuan04015002@gmail.com'),
(76, 'NGUYEN-BA-HOA-7F2O0Z', 'D4E96C59-F015-4CD6-B4DB-8511C2D470FD', '2023-01-18 23:19:00', '2023-01-19 23:19:00', 'Active', '1_days', 'huyh070904@gmail.com'),
(77, 'NGUYEN-BA-HOA-W2A9C1', '8FDE5CCD-1C46-4C31-9054-B457B553C91B', '2023-01-18 23:39:00', '2023-01-19 23:39:00', 'Active', '1_days', 'Zitiensinh@gmail.com'),
(78, 'quangios', 'DD09C9F8-36BB-400F-A352-408E6E770893', '2023-01-18 23:38:00', '2023-04-18 23:38:00', 'Active', '3_month', 'admin@gmail.com'),
(80, 'NGUYEN-BA-HOA-R5M22X', '50999D78-73DB-4194-88C8-CC9F6BBE63E5', '2023-01-19 01:09:00', '2023-01-20 01:09:00', 'Active', '1_days', 'Phamthaihalc.1994@gmail.com'),
(81, 'NGUYEN-BA-HOA-2KC42M', NULL, NULL, NULL, 'Pending', '1_days', 'xray2000@gmail.com'),
(82, 'NGUYEN-BA-HOA-6UDI9J', 'AF063039-46C8-416A-8FD1-01B4810DD351', '2023-01-19 19:19:00', '2023-01-20 19:19:00', 'Active', '1_days', 'blacknull4760@gmail.com'),
(83, 'NGUYEN-BA-HOA-M5YRZD', NULL, NULL, NULL, 'Pending', '1_days', 'hahah@gmail.com'),
(84, 'NGUYEN-BA-HOA-M189JR', '9D5F21DF-6DF6-42DA-9551-6498505200C4', '2023-01-19 06:30:00', '2023-01-20 06:30:00', 'Active', '1_days', 'huhuy@gmail.com'),
(85, 'NGUYEN-BA-HOA-E9C1SF', NULL, NULL, NULL, 'Pending', '1_days', 'Hanh2582009@gmail.com'),
(86, 'NGUYEN-BA-HOA-TC2R50', '976399C5-362F-4FE8-A66C-0B9FF9F5BB4C', '2023-01-19 09:13:00', '2023-01-20 09:13:00', 'Active', '1_days', 'Tranphuloc1999@gmail.com'),
(87, 'ducanh', 'E0938C70-B658-4461-9F0B-018F17CB4316', '2023-01-20 01:29:00', '2023-04-20 01:29:00', 'Active', '3_month', 'admin@gmail.com'),
(88, 'NGUYEN-BA-HOA-8ST90T', 'DF01556F-191A-46C3-87C3-48B8E791A391', '2023-01-19 11:55:00', '2023-01-20 11:55:00', 'Active', '1_days', 'hauru01@gmail.com'),
(89, 'NGUYEN-BA-HOA-1UV9IY', NULL, NULL, NULL, 'Pending', '1_days', '1999phamxuandoanh@gmail.com'),
(90, 'NGUYEN-BA-HOA-63T1KI', 'ED3491AC-101E-4FFB-A906-7CE89B039AF4', '2023-01-19 16:30:00', '2023-01-20 16:30:00', 'Active', '1_days', 'luanzunnn@gmail.com'),
(91, 'NGUYEN-BA-HOA-1N7E16', '54005145-5F2E-4AA8-8FCB-624A9202DEDA', '2023-01-19 17:02:00', '2023-01-20 17:02:00', 'Active', '1_days', 'quangducls88@gmail.com'),
(92, 'mandao', '68BF33F9-247A-4FF8-9CC6-A4486676278F', '2023-01-19 22:30:00', '2023-04-19 22:30:00', 'Active', '3_month', 'admin@gmail.com'),
(93, 'phamthaiha', '50999D78-73DB-4194-88C8-CC9F6BBE63E5', '2023-01-20 11:19:00', '2023-04-20 11:19:00', 'Active', '3_month', 'admin@gmail.com'),
(94, 'NGUYEN-BA-HOA-9W9ILF', NULL, NULL, NULL, 'Pending', '1_days', 'Hungherocharge@gmail.com'),
(95, 'NGUYEN-BA-HOA-82J74N', '77DC38BC-CFDF-4F7E-B3EB-A9E8F0C2B379', '2023-01-19 18:07:00', '2023-01-20 18:07:00', 'Active', '1_days', 'Ngocsinhlien@gmail.com'),
(96, 'hoaa', '6698EC78-84DC-4EE6-B601-0E077F877E20', '2023-01-19 19:26:00', '2023-04-19 19:26:00', 'Active', '3_month', 'admin@gmail.com'),
(97, 'NGUYEN-BA-HOA-1RY2Z3', '46C251ED-556E-4647-987E-E05362396732', '2023-01-19 19:39:00', '2023-01-20 19:39:00', 'Active', '1_days', 'n.v.p.h545329@gmail.com'),
(98, 'NGUYEN-BA-HOA-YEGO1U', 'D4E96C59-F015-4CD6-B4DB-8511C2D470FD', '2023-01-19 21:11:00', '2023-01-20 21:11:00', 'Active', '1_days', 'thanghack2@gmail.com'),
(99, 'viet', 'C38BC960-F88A-4F3C-A063-62C68662C546', '2023-01-19 22:02:00', '2023-04-19 22:02:00', 'Active', '3_month', 'admin@gmail.com'),
(100, 'NGUYEN-BA-HOA-X11T2K', '5566C562-A635-44F9-B498-2A2BD2993838', '2023-01-20 00:45:00', '2023-01-21 00:45:00', 'Active', '1_days', 'hoaa2023@gmail.com'),
(101, 'NGUYEN-BA-HOA-G1C022', 'F007EB97-3341-4D42-94C8-F134D3B2F5BD', '2023-01-20 00:52:00', '2023-01-21 00:52:00', 'Active', '1_days', 'hoaaa2023@gmail.com'),
(102, 'NGUYEN-BA-HOA-X0H2A9', 'AE4E35BF-A0B9-4174-B19A-150DAAE4DC96', '2023-01-20 02:34:00', '2023-01-21 02:34:00', 'Active', '1_days', 'uyvu24042019@gmail.com'),
(103, 'NGUYEN-BA-HOA-2NW1Z5', NULL, NULL, NULL, 'Pending', '1_days', 'tuan11019890@gmail.com'),
(104, 'NGUYEN-BA-HOA-TI0227', '976399C5-362F-4FE8-A66C-0B9FF9F5BB4C', '2023-01-20 10:59:00', '2023-01-21 10:59:00', 'Active', '1_days', 'Tranphuloc2@gmail.com'),
(105, 'NGUYEN-BA-HOA-815PHF', '360E80E7-9E9F-430A-B35F-DEE5E4ED227F', '2023-01-20 11:32:00', '2023-01-21 11:32:00', 'Active', '1_days', 'toangaming210@gmail.com'),
(106, 'NGUYEN-BA-HOA-DBL2FX', NULL, NULL, NULL, 'Pending', '1_days', '13.7.2008.quan@gmail.com'),
(107, 'NGUYEN-BA-HOA-WB5X72', '93948580-E9C3-4E58-96D6-0A9E5D03FB6F', '2023-01-20 12:10:00', '2023-01-21 12:10:00', 'Active', '1_days', 'Hoangtuan2001@gmail.com '),
(108, 'NGUYEN-BA-HOA-J5M0D0', 'B3FD020E-3457-49DC-A752-62CD1C6C9075', '2023-01-20 12:20:00', '2023-01-21 12:20:00', 'Active', '1_days', 'darklord170406@gmail.com'),
(109, 'NGUYEN-BA-HOA-2S21UN', NULL, NULL, NULL, 'Pending', '1_days', 'Trandan01@gmail.com'),
(110, 'NGUYEN-BA-HOA-22MJ65', NULL, NULL, NULL, 'Pending', '1_days', 'vantrung94bg@gmail.com'),
(111, 'NGUYEN-BA-HOA-462EG1', NULL, NULL, NULL, 'Pending', '1_days', 'Hue2404@gmail.com'),
(112, 'NGUYEN-BA-HOA-YA001X', '66F14714-EE59-4D7F-A1C3-C53A42AE2B00', '2023-01-21 11:39:00', '2023-01-22 11:39:00', 'Active', '1_days', 'Dinhvantoan@gmail.com'),
(113, 'NGUYEN-BA-HOA-18D22W', '976399C5-362F-4FE8-A66C-0B9FF9F5BB4C', '2023-01-21 11:42:00', '2023-01-22 11:42:00', 'Active', '1_days', 'Tranphuloc3@gmail.com'),
(114, 'NGUYEN-BA-HOA-R2XM27', 'DF01556F-191A-46C3-87C3-48B8E791A391', '2023-01-21 14:57:00', '2023-01-22 14:57:00', 'Active', '1_days', 'Hauru02@gmail.com'),
(115, 'NGUYEN-BA-HOA-U2O71K', NULL, NULL, NULL, 'Pending', '1_days', 'Ko@gmail.com'),
(116, 'NGUYEN-BA-HOA-GGNREU', '9D5F21DF-6DF6-42DA-9551-6498505200C4', '2023-01-21 15:18:00', '2023-01-22 15:18:00', 'Active', '1_days', 'o@gmail.com'),
(117, 'vantung2', '42490581-AA4A-4E88-BAB6-CB6A7CD0F590', '2023-01-21 16:24:00', '2023-04-21 16:24:00', 'Active', '3_month', 'admin@gmail.com'),
(118, 'duykhanh', '966E1966-605A-4AF5-A671-488D7D571283', '2023-01-21 22:32:00', '2023-04-21 22:32:00', 'Active', '3_month', 'admin@gmail.com'),
(119, 'CapMaMod-1022D1', 'AEC86DC5-F088-45C9-A3ED-AE46F0BB04BC', '2023-01-21 22:58:00', '2023-02-20 22:58:00', 'Active', '1_month', 'admin@gmail.com'),
(120, 'NGUYEN-BA-HOA-1WYOQ4', 'BF2B16B3-F02E-4A87-BE37-3F4B21FBEC5E', '2023-01-22 01:59:00', '2023-01-23 01:59:00', 'Active', '1_days', 'tranvanduck1907@gmail.com'),
(121, 'cheng', '364CF0E1-C666-4A95-8200-C1F0FD3ABD28', '2023-01-22 17:15:00', '2023-04-22 17:15:00', 'Active', '3_month', 'admin@gmail.com'),
(122, 'letran', '2BAB127F-0A0F-4BA6-838C-393E2A328F79', '2023-01-23 09:01:00', '2023-04-23 09:01:00', 'Active', '3_month', 'admin@gmail.com'),
(123, 'NGUYEN-BA-HOA-B1T2O7', '86753432-E1AA-4F60-9976-E73C85F4C9AA', '2023-01-23 09:07:00', '2023-01-24 09:07:00', 'Active', '1_days', 'admin@gmail.com'),
(124, 'NGUYEN-BA-HOA-8EVIHK', 'D639CE0C-07C3-470D-9F27-647C306AF93A', '2023-01-23 09:25:00', '2023-01-24 09:25:00', 'Active', '1_days', 'admin@gmail.com'),
(125, 'tranloc', 'A033D697-4F65-4263-9DD7-755140D98753', '2023-01-24 20:59:00', '2023-04-24 20:59:00', 'Active', '3_month', 'admin@gmail.com'),
(126, 'NGUYEN-BA-HOA-121U5F', 'F23021F4-6FA8-4D16-9642-2A743FEAD3DD', '2023-01-23 09:56:00', '2023-01-24 09:56:00', 'Active', '1_days', 'admin@gmail.com'),
(127, 'thinh', NULL, NULL, NULL, 'Pending', '3_month', 'admin@gmail.com'),
(128, 'NGUYEN-BA-HOA-D4BJH1', '35D75E27-11A4-44A2-9ED8-DAA360BEA72C', '2023-01-23 23:44:00', '2023-04-23 23:44:00', 'Active', '3_month', 'admin@gmail.com'),
(129, 'hieple', 'AF063039-46C8-416A-8FD1-01B4810DD351', '2023-01-24 10:15:00', '2023-04-24 10:15:00', 'Active', '3_month', 'admin@gmail.com'),
(130, 'NGUYEN-BA-HOA-OMFKWD', 'D639CE0C-07C3-470D-9F27-647C306AF93A', '2023-01-24 12:03:00', '2023-04-24 12:03:00', 'Active', '3_month', 'admin@gmail.com'),
(131, 'NGUYEN-BA-HOA-2C216W', NULL, NULL, NULL, 'Pending', '1_month', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `iptv`
--

CREATE TABLE `iptv` (
  `id` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `logo` text NOT NULL,
  `name` text NOT NULL,
  `server` text NOT NULL,
  `catchup_source` text DEFAULT NULL,
  `lichphatsong` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `iptv`
--

INSERT INTO `iptv` (`id`, `id_group`, `logo`, `name`, `server`, `catchup_source`, `lichphatsong`) VALUES
(1, 1, 'https://www.goal2sport.com/wp-content/uploads/2018/06/HI.png', 'Chọi trâu', 'http://152.69.217.167:9981/stream/channelid/1016978242?auth=PE0jwVl-RV1EmGGqGGNdLT.TvDb0', NULL, NULL),
(2, 1, 'https://www.goal2sport.com/wp-content/uploads/2018/06/HI.png', 'Đá Gà', 'https://now.rtmp-now.com/hls/index.m3u8', NULL, NULL),
(3, 2, 'https://i.imgur.com/NrYS3AE.png', 'VTV1  HD', 'https://vips-livecdn.fptplay.net/hda1/vtv1hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv1hd_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv1hd'),
(4, 2, 'https://i.imgur.com/rvmKllA.png', 'VTV2  HD', 'https://vips-livecdn.fptplay.net/hda1/vtv2_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv2_2000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv2hd'),
(5, 2, 'https://i.imgur.com/qUvkw7t.png', 'VTV3  HD', 'https://vips-livecdn.fptplay.net/hda1/vtv3hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv3hd_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv3hd'),
(6, 2, 'https://i.imgur.com/ozdkNPr.png', 'VTV4  HD', 'https://vips-livecdn.fptplay.net/hda1/vtv4_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv4_2000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv4hd'),
(7, 2, 'https://i.imgur.com/pNLQZE4.png', 'VTV5 HD', 'http://live-ali4.tv360.vn/manifest/VTV5_HD/playlist_1080-3_6M.m3u8', 'https://tshift.fptplay.net/dvr/vtv5hd_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv5hd'),
(8, 2, 'https://i.imgur.com/jX5kfaP.png', 'VTV CẦN THƠ', 'http://live-zlr1.tv360.vn/manifest/VTV6_HD/playlist_1080p3M.m3u8', 'https://tshift.fptplay.net/dvr/vtv6hd_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv6hd'),
(9, 2, 'https://i.imgur.com/I76JRyX.png', 'VTV7 HD', 'https://vips-livecdn.fptplay.net/hda3/vtv7hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv7hd_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv7hd'),
(10, 2, 'https://i.imgur.com/oszsvUz.png', 'VTV8 HD', 'https://vips-livecdn.fptplay.net/hda2/vtv8hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv8hd_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv8hd'),
(11, 2, 'https://i.imgur.com/WkQiH6h.png', 'VTV9 HD', 'https://livecdn.fptplay.net/hda2/vtv9_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtv9_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtv9hd'),
(12, 2, 'https://i.imgur.com/4BfCXEK.png', 'VTV5 TÂY NAM BỘ', 'https://api.vthanhtivi.pw/v2/getlink/mytv/615/hd.m3u8', NULL, 'vtv5hdtnb'),
(13, 2, 'https://i.imgur.com/emaOQi9.png', 'VTV5 TÂY NGUYÊN', 'https://api.vthanhtivi.pw/v2/getlink/vtv/vtv5tn/playlist.m3u8', NULL, 'vtv5hdtn'),
(14, 3, 'https://i.imgur.com/SdFxZsc.png', 'VTVCab1 - Vie GIẢI TRÍ', 'https://856175157.r.vtvcdn.com/ondrm/GIAITRI_TV_HD/m20_index.m3u8', NULL, 'vtvcab1hd'),
(15, 3, 'https://i.imgur.com/izkvzua.png', 'ON PHIM VIỆT', 'https://856175157.r.vtvcdn.com/ondrm/PHIM_VIET/m20_index.m3u8', NULL, 'vtvcab2hd'),
(16, 3, 'https://i.imgur.com/k1LgbsN.png', 'ON SPORTS', 'https://livevlive.vtvcab.vn/hls/OS_THETHAO_HD/sc-gaFEAA/m30_index.m3u8', NULL, 'vtvcab3hd'),
(17, 3, 'https://i.imgur.com/cPopQCN.png', 'ON MOVIES', 'https://856175157.r.vtvcdn.com/ondrm/VAN_HOA/m20_index.m3u8', NULL, 'vtvcab4hd'),
(18, 3, 'https://i.imgur.com/Xs5yVzp.png', 'VTVCab5 - E Channel', 'https://856175157.r.vtvcdn.com/ondrm/E_CHANNEL/m30_index.m3u8', NULL, 'vvtvcab5hd'),
(19, 3, 'https://i.imgur.com/E4wB6Ux.png', 'ON SPORTS +', 'https://856175157.r.vtvcdn.com/ondrm/HAY_TV/m30_index.m3u8', NULL, 'vtvcab6hd'),
(20, 3, 'https://i.imgur.com/EHqmpQ0.png', 'ON O2TV', 'https://856175157.r.vtvcdn.com/ondrm/D_DRAMAS_HD/m30_index.m3u8', NULL, 'vtvcab7hd'),
(21, 3, 'https://i.imgur.com/uPf0FiH.png', 'ON BIBI', 'https://856175157.r.vtvcdn.com/ondrm/BIBI/m20_index.m3u8', NULL, 'vtvcab8hd'),
(22, 3, 'https://i.imgur.com/7R1qHpn.png', 'VTVCab9', 'https://856175157.r.vtvcdn.com/ondrm/INFO_TV/m20_index.m3u8', NULL, 'vtvcab9hd'),
(23, 3, 'https://i.imgur.com/1BAlU87.png', 'ON CINE', 'https://856175157.r.vtvcdn.com/ondrm/O2_TV/m20_index.m3u8', NULL, 'vtvcab10hd'),
(24, 3, 'https://i.imgur.com/2F7Zbg9.png', 'VTVCab12 - STYLE TV', 'https://856175157.r.vtvcdn.com/ondrm/STYLE_TV_HD/m30_index.m3u8', NULL, 'vtvcab12hd'),
(25, 3, 'https://i.imgur.com/rALf4Or.png', 'ON MUSIC', 'https://856175157.r.vtvcdn.com/ondrm/M_CHANNEL/m20_index.m3u8', NULL, 'vtvcab15hd'),
(26, 3, 'https://i.imgur.com/jsktxEn.png', 'ON Football HD', 'https://livevlive.vtvcab.vn/hls/OS_BONGDA_HD/sc-gaFEAA/m30_index.m3u8', NULL, 'vtvcab16hd'),
(27, 3, 'https://i.imgur.com/R4zqoiM.png', 'VTVCab17 HD - Yeah1 TV', 'https://856175157.r.vtvcdn.com/ondrm/YEAH1_TV/m20_index.m3u8', NULL, 'vtvcab17hd'),
(28, 3, 'https://i.imgur.com/V2NxAKp.png', 'ON Sports News', 'https://livevlive.vtvcab.vn/hls/OS_THETHAO_TINTUC_HD/sc-gaFEAA/m30_index.m3u8', NULL, 'vtvcab18hd'),
(29, 3, 'https://i.imgur.com/Demw0aA.png', 'VTVCab19 - Vie DRAMAS', 'https://856175157.r.vtvcdn.com/ondrm/FILM_TV/m20_index.m3u8', NULL, 'vtvcab19hd'),
(30, 3, 'https://i.imgur.com/hwn5NVQ.png', 'VTVCab20 - V Family', 'https://e3.endpoint.cdn.sctvonline.vn/secure/vtvcab20/index.m3u8?md5=-sx6Mn0Nya1J6PIsvSKbWQ&expires=2556118740|Referer=http://sctvonline.vn/', NULL, 'vtvcab20hd'),
(31, 3, 'https://i.imgur.com/xE1s6ud.png', 'ON KIDS', 'https://856175157.r.vtvcdn.com/ondrm/BIBI_PLUS_clear/m20_index.m3u8', NULL, 'vtvcab21hd'),
(32, 3, 'https://i.imgur.com/5KvYBle.png', 'ON LIFE', 'https://856175157.r.vtvcdn.com/ondrm/LIFE_TV/m20_index.m3u8', NULL, 'vtvcab22hd'),
(33, 3, 'https://i.imgur.com/7psZEEe.png', 'ON GOLF', 'https://856175157.r.vtvcdn.com/ondrm/THETHAO_GOLF_HD/m30_index.m3u8', NULL, 'vtvcab23hd'),
(34, 3, 'https://i.imgur.com/lDDLPcH.png', 'BÓNG ĐÁ VIỆT', 'https://livevlive.vtvcab.vn/hls/OS_ONVFFTV/sc-gaFEAQ/m30_index.m3u8', NULL, ''),
(35, 3, 'https://i.imgur.com/p1OgWVE.png', 'THỂ THAO VIỆT', 'https://livevlive.vtvcab.vn/hls/OS_ONVOLLEYBALL/sc-gaFEAQ/m30_index.m3u8', NULL, ''),
(36, 3, 'https://i.ibb.co/tCSYRpV/Golf-News-TV-BEARTV.webp', 'Golf News', 'https://88404bbd1d.vws.vegacdn.vn/live/_definst_/stream_1_ca762/chunklist.m3u8', NULL, ''),
(37, 4, 'https://i.imgur.com/6MwCi7z.png', 'SCTV1 HD', 'https://vtsstr7.tv24.vn/live/SCTV_HD_Hai_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv1hd'),
(38, 4, 'https://i.imgur.com/NeQKGGd.png', 'SCTV2 HD', 'https://vtsstr6.tv24.vn/live/sctv2_HD_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv2hd'),
(39, 4, 'https://i.imgur.com/ZEfz3hO.png', 'SCTV3 HD', 'https://vtsstr4.tv24.vn/live/SCTVHDThieunhi_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv3hd'),
(40, 4, 'https://i.imgur.com/yrxj652.png', 'SCTV4 HD', 'https://vtsstr4.tv24.vn/live/SCTV_HD_GiaiTri_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv4hd'),
(41, 4, 'https://i.imgur.com/Z9BbKuG.png', 'SCTV6 HD- Fim 360', 'https://vips-livecdn.fptplay.net/hda3/film360_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/film360_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'sctv6hd'),
(42, 4, 'https://i.imgur.com/9Z0YLWs.png', 'SCTV7 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv7/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv7hd'),
(43, 4, 'https://i.imgur.com/EPvnvNY.png', 'SCTV8 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv8/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv8hd'),
(44, 4, 'https://i.imgur.com/LKFUETJ.png', 'SCTV9 HD', 'https://vtsstr4.tv24.vn/live/SCTV_HD_PhimChauA_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv9hd'),
(45, 4, 'https://i.imgur.com/vWypwaw.png', 'SCTV11 HD', 'https://vtsstr4.tv24.vn/live/SCTVVHNT_HD_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv11hd'),
(46, 4, 'https://i.imgur.com/G8CxsZV.png', 'SCTV12 HD', 'https://vtsstr4.tv24.vn/live/SCTV12_HD_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv12hd'),
(47, 4, 'https://i.imgur.com/ZbFyMcU.png', 'SCTV13 HD', 'https://vtsstr7.tv24.vn/live/SCTVHDPhunuGiadinh_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv13hd'),
(48, 4, 'https://i.imgur.com/Fat7Vc9.png', 'SCTV14 HD', 'https://api.anttv.xyz/get/sctv/sctv14/playlist.m3u8', '', 'sctv14hd'),
(49, 4, 'https://i.imgur.com/3wuzihu.png', 'SCTV15 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv15/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv15hd'),
(50, 4, 'https://i.imgur.com/hnQx0Lo.png', 'SCTV16 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv16/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv16hd'),
(51, 4, 'https://i.imgur.com/10qjik7.png', 'SCTV17 HD', 'https://vtsstr4.tv24.vn/live/SCTV17_HD_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv17hd'),
(52, 4, 'https://i.imgur.com/HTajTQG.png', 'SCTV18 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv18/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv18hd'),
(53, 4, 'https://i.imgur.com/6ljZ8r1.png', 'SCTV19 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv19/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv19hd'),
(54, 4, 'https://i.imgur.com/nyEiF67.png', 'SCTV20 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv20/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv20hd'),
(55, 4, 'https://i.imgur.com/rUfZllw.png', 'SCTV21 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv21/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv21hd'),
(56, 4, 'https://i.imgur.com/LRQOm6q.png', 'SCTV22 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv22/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv22hd'),
(57, 4, 'https://i.imgur.com/O93Jk2m.png', 'SCTV HD Phim Tổng Hợp', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctvphimtonghop/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctvhdpth'),
(58, 4, 'https://i.imgur.com/kGtST2c.png', 'BTV5 - SSPORT 3', 'https://e2.endpoint.cdn.sctvonline.vn/secure/btv5/sd1/index.m3u8?md5=TIpsMcUws2BxLKEZ3ItG9g&expires=2556118740|Referer=http://sctvonline.vn/', '', 'btv5hd'),
(60, 1, 'https://i.imgur.com/k1LgbsN.png', 'ON SPORTS', 'https://livevlive.vtvcab.vn/hls/OS_THETHAO_HD/sc-gaFEAA/m30_index.m3u8', 'vtvcab3hd', ''),
(61, 1, 'https://i.imgur.com/E4wB6Ux.png', 'ON SPORTS +', 'https://856175157.r.vtvcdn.com/ondrm/HAY_TV/m30_index.m3u8', '', 'vtvcab6hd'),
(62, 1, 'https://i.imgur.com/jsktxEn.png', 'ON Football HD', 'https://livevlive.vtvcab.vn/hls/OS_BONGDA_HD/sc-gaFEAA/m30_index.m3u8', '', 'vtvcab16hd'),
(63, 1, 'https://i.imgur.com/V2NxAKp.png', 'ON Sports News', 'https://livevlive.vtvcab.vn/hls/OS_THETHAO_TINTUC_HD/sc-gaFEAA/m30_index.m3u8', '', 'vtvcab18hd'),
(64, 1, 'https://i.imgur.com/lDDLPcH.png', 'BÓNG ĐÁ VIỆT', 'https://livevlive.vtvcab.vn/hls/OS_ONVFFTV/sc-gaFEAQ/m30_index.m3u8', '', ''),
(65, 1, 'https://i.imgur.com/p1OgWVE.png', 'THỂ THAO VIỆT', 'https://livevlive.vtvcab.vn/hls/OS_ONVOLLEYBALL/sc-gaFEAQ/m30_index.m3u8', '', ''),
(66, 1, 'https://i.imgur.com/3wuzihu.png', 'SCTV15 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv15/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv15hd'),
(67, 1, 'https://i.imgur.com/10qjik7.png', 'SCTV17 HD', 'https://vtsstr4.tv24.vn/live/SCTV17_HD_new.smil/playlist.m3u8|Referer=http://sctvonline.vn/', '', 'sctv17hd'),
(68, 1, 'https://i.imgur.com/LRQOm6q.png', 'SCTV22 HD', 'https://e1.endpoint.cdn.sctvonline.vn/playlist/sctv22/index.m3u8|Referer=http://sctvonline.vn/', '', 'sctv22hd'),
(69, 1, 'https://i.imgur.com/kGtST2c.png', 'BTV5 - SSPORT 3', 'https://e2.endpoint.cdn.sctvonline.vn/secure/btv5/sd1/index.m3u8?md5=TIpsMcUws2BxLKEZ3ItG9g&expires=2556118740|Referer=http://sctvonline.vn/', '', 'btv5hd'),
(70, 9, 'https://i.imgur.com/GrgT1fr.png', 'VTC1 HD', 'https://vips-livecdn.fptplay.net/hda1/vtc1_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtc1_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc1hd'),
(71, 9, 'https://i.imgur.com/MjfzV2T.png', 'VTC2 HD', 'https://livecdn.fptplay.net/sdb/vtc2_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc2_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc2'),
(72, 9, 'https://i.imgur.com/L53DQtd.png', 'VTC3 HD', 'https://vips-livecdn.fptplay.net/hda1/vtc3hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtc3_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc3hd'),
(73, 9, 'https://i.imgur.com/3JtABMP.png', 'VTC4 HD', 'https://livecdn.fptplay.net/sdc/vtc4_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc4_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc4hd'),
(74, 9, 'https://i.imgur.com/67Fe1yW.jpg', 'VTC5 HD', 'https://livecdn.fptplay.net/sdb/vtc5_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc5_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc5hd'),
(75, 9, 'https://i.imgur.com/RI3Giea.png', 'VTC6 HD', 'https://livecdn.fptplay.net/sdb/vtc6_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc6_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc6hd'),
(76, 9, 'https://i.imgur.com/qOrkpnL.png', 'VTC7 HD  - todayTV', 'https://livecdn.fptplay.net/sdb/todaytv_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc7_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc7hd'),
(77, 9, 'https://i.imgur.com/H008sCD.jpg', 'VTC8 HD', 'https://livecdn.fptplay.net/sdb/vtc8_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc8_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc8'),
(78, 9, 'https://i.imgur.com/DBgttDV.png', 'VTC9 HD', 'https://livecdn.fptplay.net/sdb/vtc9_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc9_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc9hd'),
(79, 9, 'https://i.imgur.com/0MlnbT8.png', 'VTC10 HD', 'https://livecdn.fptplay.net/sdb/vtc10_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc10_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc10'),
(80, 9, 'https://i.imgur.com/uBYdfVg.png', 'VTC11 HD', 'https://livecdn.fptplay.net/sdb/vtc11_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc11_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc11'),
(81, 9, 'https://i.imgur.com/4DgkBVl.jpg', 'VTC12 HD', 'https://livecdn.fptplay.net/sdb/vtc12_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc12_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc12'),
(82, 9, 'https://i.imgur.com/03b7L82.png', 'VTC13 HD', 'https://vips-livecdn.fptplay.net/hda1/vtc13_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtc13_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc13hd'),
(83, 9, 'https://i.imgur.com/4FkYBxk.png', 'VTC14 HD', 'https://vips-livecdn.fptplay.net/hda1/vtc14_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vtc14_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc14hd'),
(84, 9, 'https://i.imgur.com/lw8Fbhi.jpg', 'VTC16 HD', 'https://livecdn.fptplay.net/sdb/vtc16_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vtc16_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vtc16'),
(85, 5, 'https://i.imgur.com/kI201ID.png', 'HBO (Asia)', 'https://vips-livecdn.fptplay.net/hda1/hbo_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/hbo_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'hbohd'),
(86, 5, 'https://i.imgur.com/wtheBcv.png', 'CINEMAX', 'https://vips-livecdn.fptplay.net/hda1/cinemax_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/cinemax_1500.stream/playlist_dvr_range-${start}-${offset}.m3u8', 'cinemaxhd'),
(87, 5, 'https://i.imgur.com/TCm7X0z.png', 'Cinema World', 'https://livecdn.fptplay.net/hda2/cinemawork_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/cinemawork_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'cinemaworldhd'),
(88, 5, 'https://i.imgur.com/Gv3Jqoh.gif', 'hollywood classics', 'https://vtsstr7.tv24.vn/live/smil:Hollywood.smil/chunklist.m3u8|Referer=http://sctvonline.vn/', '', 'hollywoodclassics'),
(89, 5, 'https://i.imgur.com/sdeYBKP.png', 'In The Box', 'https://api.vthanhtivi.pw/v1/getlink/cliptv/838', '', 'inthebox'),
(90, 5, 'https://i.imgur.com/RmY7TTo.png', 'BOX Movie¹', 'https://api.anttv.xyz/get/cliptv/822/playlist.m3u8', '', 'boxmovie1'),
(91, 5, 'https://i.imgur.com/xtDAoAu.png', 'BOX HITS', 'https://api.vthanhtivi.pw/v1/getlink/mytv_web/105/hd', '', 'boxhits'),
(92, 6, 'https://i.imgur.com/Bc6zxiA.png', 'Cartoon Network HD', 'https://livecdn.fptplay.net/hda3/cartoonnetworkhd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/cartoonnetworkhd_1000.stream/playlist_dvr_range-${start}-${offset}.m3u8', 'cartoonhd'),
(93, 6, 'https://i.imgur.com/UA4o4Xs.png', 'Dream Works', 'https://vips-livecdn.fptplay.net/hda3/dreamworks_vhls.smil/chunklist_b5000000.m3u8', '', 'dreamworks'),
(94, 6, 'https://i.imgur.com/LvtfJbX.png', 'Warner TV', 'http://livecdn.fptplay.net/hda3/warnertv_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/warnertv_1000.stream/playlist_dvr_range-${start}-${offset}.m3u8', 'warnertvhd'),
(95, 6, 'https://i.imgur.com/05XnADs.png', 'Boomerang', 'https://livecdn.fptplay.net/hda3/boomerang_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/boomerang_1000.stream/playlist_dvr_range-${start}-${offset}.m3u8', ''),
(96, 6, 'https://i.imgur.com/Ey2wupa.png', 'Baby TV', 'https://vips-livecdn.fptplay.net/hda3/babytvhd_vhls.smil/chunklist_b5000000.m3u8', '', 'babytvhd'),
(97, 6, 'https://i.imgur.com/2mujETe.png', 'Happy Kids', 'https://e4.endpoint.cdn.sctvonline.vn/hls/happykid/sd2/index.m3u8|Referer=http://sctvonline.vn/', '', 'happykids'),
(98, 6, 'https://i.imgur.com/YcL5zN5.png', 'Cbeebies', 'https://livecdn.fptplay.net/hda3/cbeebies_vhls.smil/chunklist_b5000000.m3u8', '', 'Baby TV HD-ClipTV'),
(99, 6, 'https://i.imgur.com/dXLrJBR.png', 'Animax', 'https://livecdn.fptplay.net/hda3/animaxport_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/animaxport_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'animaxhd'),
(100, 10, 'https://i.imgur.com/hdoG3lu.png', 'Vĩnh Long 1 HD', 'https://vips-livecdn.fptplay.net/hda1/vinhlong1_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vinhlong1_1500.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vinhlong1hd'),
(101, 10, 'https://i.imgur.com/we9hzAJ.png', 'Vĩnh Long 2 HD', 'https://vips-livecdn.fptplay.net/hda2/vinhlong2_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vinhlong2_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vinhlong2hd'),
(102, 10, 'https://i.imgur.com/dD62r8S.png', 'Vĩnh Long 3 HD', 'https://vips-livecdn.fptplay.net/hda2/vinhlong3_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/vinhlong3_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vinhlong3hd'),
(103, 10, 'https://i.imgur.com/LLZ74fV.png', 'Vĩnh Long 4 HD', 'https://livecdn.fptplay.net/hda3/vinhlong4hd_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/vinhlong4_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'vinhlong4hd'),
(104, 7, 'https://i.imgur.com/zDJuYCm.png', 'HTV1 HD', 'https://livecdn.fptplay.net/sdb/htv1_hls.smil/chunklist_b2500000.m3u8', '', 'htv1'),
(105, 7, 'https://i.imgur.com/7zC5MMe.png', 'HTV2 HD', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTV2-HD-1080p/playlist.m3u8', 'https://htvc271120.cdn.vnns.io/06b93ec20336126a28dd0872a68932901632397465/htv2.cat.720p.tms/chunks_dvr_range-${start}-${offset}.m3u8', 'htv2hd'),
(106, 7, 'https://i.imgur.com/eiJ0lEM.png', 'HTV3 HD', 'https://livecdn.fptplay.net/sdb/htv3_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/htv3_1000.stream/playlist_dvr_range-${start}-${offset}.m3u8', 'htv3'),
(107, 7, 'https://i.imgur.com/qlCNl4V.png', 'HTV Key', 'https://livecdn.fptplay.net/sdb/htv4_hls.smil/chunklist_b2500000.m3u8', '', 'htvkey'),
(108, 7, 'https://i.imgur.com/f2Px9JJ.png', 'HTV Thể Thao HD', 'https://livecdn.fptplay.net/sdb/htvcthethao_hls.smil/chunklist_b2500000.m3u8', 'https://tshift.fptplay.net/dvr/htvcthethao_1000.stream/playlist_dvr_range-${start}-${offset}.m3u8', 'htvthethaohd'),
(109, 7, 'https://i.imgur.com/N6VR7SJ.png', 'HTV7 HD', 'https://vips-livecdn.fptplay.net/hda1/htv7hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/htv7hd_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'htv7hd'),
(110, 7, 'https://i.imgur.com/1yArW4S.png', 'HTV9 HD', 'https://vips-livecdn.fptplay.net/hda1/htv9hd_vhls.smil/chunklist_b5000000.m3u8', 'https://tshift.fptplay.net/dvr/htv9hd_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'htv9hd'),
(111, 7, 'https://i.imgur.com/pgS84yt.png', 'HTVC Ca Nhạc HD', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-CANHAC-HD-1080p/playlist.m3u8', '', 'htvccanhachd'),
(112, 7, 'https://i.imgur.com/NtTzlvJ.png', 'HTVC Du Lịch HD', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-DULICH-HD-1080p/chunks.m3u8', '', 'htvcdulichhd'),
(113, 7, 'https://i.imgur.com/r8F3mOL.png', 'HTVC Gia Đình HD', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-GIADINH-HD-1080p/playlist.m3u8', 'https://tshift.fptplay.net/dvr/htvcgiadinh_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'htvcgiadinhhd'),
(114, 7, 'https://i.imgur.com/w3zCAdC.png', 'HTVC Phim', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-PHIM-HD-1080p/playlist.m3u8', 'https://tshift.fptplay.net/dvr/htvcmovieshd_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'htvcphimhd'),
(115, 7, 'https://i.imgur.com/2lvdQgc.png', 'HTVC Phụ Nữ', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-PHUNU-HD-1080p/playlist.m3u8', '', 'htvcphunuhd'),
(116, 7, 'https://i.imgur.com/YeEAvsz.png', 'HTVC Thuần Việt HD', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-THUANVIETHD-HD-1080p/playlist.m3u8', 'https://tshift.fptplay.net/dvr/htvcthuanviethd_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'htvcthuanviethd'),
(117, 7, 'https://i.imgur.com/ssVLwHc.png', 'HTVC Thuần Việt', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-THUANVIET-HD-1080p/playlist.m3u8', 'https://tshift.fptplay.net/dvr/htvcthuanviet_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8', 'htvcthuanviet'),
(118, 7, 'https://i.imgur.com/x35UhGH.png', 'HTVC Plus', 'https://drm-livecdn.hplus.com.vn/CDN-FPT02/HTVC-PLUS-HD-1080p/playlist.m3u8', '', 'htvcplushd'),
(119, 1, 'https://i.imgur.com/nj9bd9Q.png', 'ONE GOLF HD', 'http://162.250.201.58:6211/pk/ONEGOLF/index.m3u8', '', ''),
(120, 1, 'https://i.imgur.com/Axj8JcI.jpg', 'Đua Ngựa Racing.com', 'https://racingvic-i.akamaized.net/hls/live/598695/racingvic/index1500.m3u8', '', ''),
(121, 1, 'https://i.imgur.com/vv7BHq4.png', 'Red Bull TV', 'https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master.m3u8', '', ''),
(122, 1, 'https://i.imgur.com/PlEkfdy.png', 'WWE Network', 'http://50.7.220.74:8278/wwe_twn/playlist.m3u8?tid=MACA9233903292339032&ct=18393&tsum=e4cbbd3b73f34348c4a58d7dc6fbd7dc', '', ''),
(123, 1, 'https://i.imgur.com/8PEXNRC.png', 'FIGHT SPORTS', 'https://shls-fight-sports-ak.akamaized.net/out/v1/ee7e6475b12e484bbfa5c31461ad4306/index.m3u8', '', ''),
(124, 1, 'https://i.imgur.com/bXW9PPP.png', 'Fight Network', 'https://d12a2vxqkkh1bo.cloudfront.net/hls/main.m3u8', '', ''),
(125, 10, 'https://i.imgur.com/YDNFeM5.png', 'Hậu Giang', 'https://60acee235f4d5.streamlock.net/HGTV/d1/chunklist_w819569343.m3u8', '', 'haugiang'),
(126, 10, 'https://i.imgur.com/Aj34qJV.png', 'Đà Nẵng 1 HD', 'http://drtdnglive.e49a7c38.cdnviet.com/livedrt1/chunklist.m3u8', '', 'danang1'),
(127, 10, 'https://i.imgur.com/Lbp7JE8.png', 'Đà Nẵng 2 HD', 'http://drtdnglive.e49a7c38.cdnviet.com/livestream/chunklist.m3u8', '', 'danang2'),
(128, 10, 'https://i.imgur.com/gDGlHgW.png', 'Đồng Tháp 1 HD', 'https://livecdn.fptplay.net/sdc/dongthap_2000.stream/playlist.m3u8', '', 'dongthap'),
(129, 10, 'https://i.imgur.com/GeZpqYu.png', 'Đồng Tháp 2 HD- Miền Tây', 'https://livecdn.fptplay.net/sdc/dongthaphd_2000.stream/playlist.m3u8', '', ''),
(130, 10, 'https://i.imgur.com/56UxcJU.png', 'Bạc Liêu HD', 'https://livecdn.fptplay.net/sdc/baclieu_2000.stream/chunklist.m3u8', '', ''),
(131, 10, 'https://i.imgur.com/r03d2YQ.png', 'Tây Ninh TV', 'http://202.43.109.142:1935/ttv11/tntv/chunklist.m3u8', '', 'tayninh'),
(132, 10, 'https://i.imgur.com/s2m5K5a.png', 'Cần Thơ HD', 'https://tv.tchgroup.vn/live/tv_web/chunklist_w1293608901.m3u8', '', 'cantho'),
(133, 10, 'https://i.imgur.com/ECTzPqD.png', 'Long An HD', 'https://la34.vncdn.vn/live/LA34AAA/chunklist_w462621088.m3u8', '', 'longan'),
(134, 10, 'https://i.imgur.com/EKzxAWv.png', 'An Giang HD', 'https://livecdn.fptplay.net/sda/angiang_2000.stream/chunklist.m3u8', '', 'angiang'),
(135, 10, 'https://i.imgur.com/OHV053F.png', 'Tiền Giang HD', 'http://thtg.vn:8001/stream_hi.m3u8', '', 'tiengiang'),
(136, 10, 'https://i.imgur.com/hPCl7Qq.png', 'Kiên Giang HD', 'https://vips-livecdn.fptplay.net/sda/kiengiang_hls.smil/chunklist_b2500000.m3u8', '', 'kiengiang'),
(137, 10, 'https://i.imgur.com/FVmICGp.png', 'Trà Vinh 2', 'https://618b88f69e53b.streamlock.net/THTV2/travinhtv2/chunklist_w517483768.m3u8', '', 'travinh'),
(138, 10, 'https://i.imgur.com/BZO56XF.png', 'Hanoicab2 - YouTV', 'https://livecdn.fptplay.net/sdb/youtv_hls.smil/chunklist_b2500000.m3u8', '', 'youtv'),
(139, 11, 'https://i.imgur.com/vM4qb8k.png', 'F• Pladio', 'https://vips-livecdn.fptplay.net/hda3/pladio_vhls.smil/chunklist_b5000000.m3u8?cc', '', ''),
(140, 11, 'https://i.imgur.com/ks3j8e1.png', 'FM 365', 'https://v.dl.dropboxusercontent.com/s/ic1uksws7gxtbx8/./   																						 ㅤ', '', ''),
(141, 11, 'https://i.imgur.com/7bJZOg8.png', 'FM 87.7Mhz', 'https://strm.voh.com.vn/radio/channel5/playlist.m3u8?cc', '', ''),
(142, 11, 'https://i.imgur.com/4Yn7ubH.jpg', 'Chạm', 'https://vnno-zn-14-tf-multi-playlist-zmp3.zadn.vn/Ok1SSsyycZY/zhls/playback-realtime/very-low/db68d4afe8ea01b458fb/very-low.m3u8?cc', '', ''),
(143, 11, 'https://i.imgur.com/CBi2ZzC.jpg', 'V-Pop', 'https://vnno-zn-2-tf-multi-playlist-zmp3.zadn.vn/8t3wW77ohJw/zhls/playback-realtime/very-low/6eeb692c5569bc37e578/very-low.m3u8?cc', '', ''),
(144, 11, 'https://i.imgur.com/ihJeepG.jpg', 'Cafe Phòng Acoustic', 'https://vnno-vn-2-tf-multi-playlist-zmp3.zadn.vn/9gnQ7EMlRVA/zhls/playback-realtime/very-low/08aae96dd5283c766539/very-low.m3u8?cc', '', ''),
(145, 11, 'https://i.imgur.com/Clwi2Ea.jpg', 'Bolero', 'https://vnno-zn-1-tf-multi-playlist-zmp3.zadn.vn/oIWL6uZPN04/zhls/playback-realtime/very-low/e3b9f87ec43b2d65742a/very-low.m3u8?cc', '', ''),
(146, 11, 'https://i.imgur.com/9Yo1uQK.png', 'Cải Lương', 'https://stream.zeno.fm/0trm6wrnga0uv', '', ''),
(147, 11, 'https://i.imgur.com/DcciD6c.jpg', 'Nhạc Xuân 2023', 'https://stream.zeno.fm/hvtxgd85rm0uv', '', ''),
(148, 11, 'https://i.imgur.com/UdDg2vx.png', 'Việt Nam', 'https://stream.zeno.fm/4q7y9hvkp2zuv', '', ''),
(149, 11, 'https://i.imgur.com/A9kxU5m.png', 'Phật Giáo', 'https://stream.zeno.fm/8456uy0bcm0uv', '', ''),
(150, 5, 'https://i.imgur.com/xOfuwnt.png', 'AXN HD', 'http://vips-livecdn.fptplay.net/hda3/axnhd_vhls.smil/chunklist_b5000000.m3u8?cc', 'https://tshift.fptplay.net/dvr/axnhd_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8?cc', 'axnhd'),
(151, 5, 'https://i.imgur.com/yAlxcWI.png', 'KIX HD', 'https://vips-livecdn.fptplay.net/hda1/kixhd_vhls.smil/chunklist_b5000000.m3u8?cc', 'https://tshift.fptplay.net/dvr/kixhd_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8?cc', 'kix'),
(152, 5, 'https://i.imgur.com/RmY7TTo.png', 'BOX Movie¹ FPT', 'https:///e4.endpoint.cdn.sctvonline.vn/hls/boxmovie1/./sd2/index.m3u8?cc|Referer=http://sctvonline.vn/', '', 'boxmovie1'),
(153, 5, 'https://i.imgur.com/ByxEMNn.png', 'WBTV', 'http://vips-livecdn.fptplay.net/hda3/warnertv_vhls.smil/chunklist_b5000000.m3u8?cc', 'https://tshift.fptplay.net/dvr/warnertv_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8?cc', 'warnertvhd'),
(154, 12, 'https://i.imgur.com/1NsEfVc.png', 'Planet Earth', 'https:///e4.endpoint.cdn.sctvonline.vn/hls/planetearth/./sd2/index.m3u8?cc|Referer=https://sctvonline.vn/', '', 'planetearthhd'),
(155, 12, 'https://i.imgur.com/VWHsCiA.png', 'Animal Planet', 'http://vips-livecdn.fptplay.net/hda2/animalplanet_vhls.smil/chunklist_b5000000.m3u8?cc', 'https://tshift.fptplay.net/dvr/animalplanet_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8?cc', 'animalhd'),
(156, 12, 'https://i.imgur.com/dDqUzpG.png', 'KBS World', 'https://vips-livecdn.fptplay.net/sdb/kbs_hls.smil/chunklist_b2500000.m3u8?cc', '', 'kbsworld'),
(157, 12, 'https://i.imgur.com/nfH7Baq.png', 'Ariang', 'https://vips-livecdn.fptplay.net/sdb/arirang_hls.smil/chunklist_b2500000.m3u8?cc', '', 'arirang'),
(158, 12, 'https://i.imgur.com/gNGeNo9.png', 'BBC Earth', 'http://vips-livecdn.fptplay.net/hda2/bbcearth_vhls.smil/chunklist_b5000000.m3u8?cc', 'https://tshift.fptplay.net/dvr/bbcearth_1000.stream/chunks_dvr_range-${start}-${offset}.m3u8?cc', 'bbcearth'),
(159, 5, 'https://i.imgur.com/AxF11ai.jpg', 'HITS', 'https://api.vthanhtivi.pw/v2/getlink/mytv/515/hd.m3u8', '', 'hits'),
(160, 5, 'https://i.imgur.com/jgeMd3p.jpg', 'In The Box', 'https://api.vthanhtivi.pw/v2/getlink/cliptv/838/chunklist_b5128000.m3u8', '', 'inthebox'),
(161, 1, 'https://i.imgur.com/mSuJY9B.jpg', 'VTV5 HD VIETTEL TV', 'http://live-zlr1.tv360.vn/manifest/VTV5_HD/playlist_1080-3_6M.m3u8', '', 'vtv5hd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `iptv_group`
--

CREATE TABLE `iptv_group` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `iptv_group`
--

INSERT INTO `iptv_group` (`id`, `Name`) VALUES
(1, 'Thể Thao'),
(2, 'VTV'),
(3, 'VTVCab'),
(4, 'SCTV'),
(5, 'KÊNH PHIM'),
(6, 'KÊNH THIẾU NHI'),
(7, 'HTV'),
(8, 'ỦNG HỘ DUY TRÌ SERVER'),
(9, 'VTC'),
(10, 'KÊNH ĐỊA PHƯƠNG CHỌN LỌC'),
(11, 'Radio'),
(12, 'Quốc Tế (HD)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `so_dt` varchar(50) DEFAULT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `DangNhapHomNay` date DEFAULT NULL,
  `checkDiemDanh` varchar(50) DEFAULT 'Chưa điểm danh',
  `DungLuong` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `ho`, `ten`, `hinh_anh`, `email`, `mat_khau`, `so_dt`, `quyen`, `trang_thai`, `truy_cap`, `ngay_tao`, `ngay_sua`, `DangNhapHomNay`, `checkDiemDanh`, `DungLuong`) VALUES
(1, 'Võ', 'Huy Khang', '1654680922.png', 'huykhangvo02092000@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0848741399', 0, 1, 408, '2022-02-08 13:51:10', '2022-02-08 13:51:10', '2023-01-25', 'Chưa điểm danh', 0),
(2, 'Nguyễn', 'Bá Hòa', 'admin.png', 'admin@gmail.com', '2a9183eb052cde8b5624fe4126660014', '113', 0, 1, 56, '2022-02-08 13:51:10', '2022-02-08 13:51:10', '2023-01-25', 'Chưa điểm danh', 0),
(17, 'VinhTran', ' VinhTran', '1673965053.jpeg', 'vinhname1111@gmail.com', '11c08bab0f10eeda94d04c87c03572cd', '', 1, 0, 1, '2023-01-17 21:16:11', '2023-01-17 21:17:33', '2023-01-17', 'Chưa điểm danh', 0),
(19, 'Bá', 'Hoà', 'admin.png', 'hoa@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1111', 0, 1, 0, '2023-01-17 21:28:13', '2023-01-17 21:28:13', NULL, 'Chưa điểm danh', 0),
(20, 'hoaiu', ' hoaiu', 'admin.png', 'Hoaiu@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, 0, 1, '2023-01-18 01:48:42', '2023-01-18 01:48:42', '2023-01-18', 'Đã điểm danh', 1),
(21, 'romavoin', ' romavoin', 'admin.png', 'romavoin@neuvrjpfdi.ga', '5b801243f0e4a213aec384d660b2bcad', NULL, 1, 0, 1, '2023-01-18 11:05:14', '2023-01-18 11:05:14', '2023-01-18', 'Chưa điểm danh', 0),
(22, 'Hoà', ' Hoà', 'admin.png', 'hoakhung@gmail.com', 'b4b147bc522828731f1a016bfa72c073', NULL, 1, 0, 2, '2023-01-18 20:05:33', '2023-01-18 20:05:33', '2023-01-18', 'Đã điểm danh', 1),
(23, 'Zũng', ' Zũng', 'admin.png', 'zung@gmail.com', 'bbe35189a136d18b564aba56c23d5641', NULL, 1, 0, 1, '2023-01-18 20:33:28', '2023-01-18 20:33:28', '2023-01-18', 'Đã điểm danh', 1),
(24, 'Ngọc', ' Khánh', 'admin.png', 'trankhanh0389@gmail.com', '525d0e480b3317974e4ec1d48e2f0d0e', NULL, 1, 0, 2, '2023-01-18 21:07:18', '2023-01-18 21:07:18', '2023-01-18', 'Đã điểm danh', 1),
(25, 'Quốc', ' Hưng', 'admin.png', 'hungherocharge@gmail.com', '0cb0c1c169e90402600454c54bdb30e8', NULL, 1, 0, 2, '2023-01-18 21:16:44', '2023-01-18 21:16:44', '2023-01-19', 'Đã điểm danh', 1),
(26, 'Híp', 'Bar  Tuổi', 'admin.png', 'Hiisp2k3@gmail.com', 'ff95130f3ff1cea3cf1dd53a02def3f0', NULL, 1, 0, 1, '2023-01-18 21:27:05', '2023-01-18 21:27:05', '2023-01-18', 'Đã điểm danh', 1),
(27, 'Hoang', ' Hoang', 'admin.png', 'Dohoang12@gmail.com', 'ddb267697460cda1079370946df71101', NULL, 1, 0, 1, '2023-01-18 21:35:47', '2023-01-18 21:35:47', '2023-01-18', 'Đã điểm danh', 1),
(28, 'Tuanhoang', ' ', 'admin.png', 'tuan@20010206@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', NULL, 1, 0, 0, '2023-01-18 21:39:19', '2023-01-18 21:39:19', NULL, 'Chưa điểm danh', 0),
(29, 'Hoangtuan', ' Hoangtuan', 'admin.png', 'Tuan20010207@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', '', 1, 0, 8, '2023-01-18 21:40:18', '2023-01-18 21:44:02', '2023-01-25', 'Đã điểm danh', 1),
(30, 'Đặng', ' Bắc', 'admin.png', 'bacdang543@gmail.com', '65914df11a2a1600b18864a827063e0b', NULL, 1, 0, 2, '2023-01-18 21:41:43', '2023-01-18 21:41:43', '2023-01-18', 'Đã điểm danh', 1),
(31, 'Tuanhoang', ' Tuanhoang', 'admin.png', 'tuanhoang@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', NULL, 1, 0, 2, '2023-01-18 21:52:58', '2023-01-18 21:52:58', '2023-01-18', 'Đã điểm danh', 1),
(32, 'tuan2001', ' tuan2001', 'admin.png', 'tuan2001ok@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', NULL, 1, 0, 1, '2023-01-18 21:59:22', '2023-01-18 21:59:22', '2023-01-18', 'Đã điểm danh', 1),
(33, 'Đặng', ' Bắc', 'admin.png', 'cocaicc@gmail.com', '65914df11a2a1600b18864a827063e0b', NULL, 1, 0, 1, '2023-01-18 22:11:07', '2023-01-18 22:11:07', '2023-01-18', 'Chưa điểm danh', 0),
(34, 'Tuan', ' ', 'admin.png', 'HoangTuan@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 1, 0, 2, '2023-01-18 22:14:42', '2023-01-18 22:14:42', '2023-01-18', 'Đã điểm danh', 1),
(35, 'Tuan', ' Tuan', 'admin.png', 'nguyendinhtuan04015002@gmail.com', '818f9c45cfa30eeff277ef38bcbe9910', NULL, 1, 0, 1, '2023-01-18 23:02:38', '2023-01-18 23:02:38', '2023-01-18', 'Đã điểm danh', 1),
(36, 'Hoàng', ' Tường', 'admin.png', 'huyh070904@gmail.com', '77427abbbb59b6c1d115363458da8883', NULL, 1, 0, 5, '2023-01-18 23:10:03', '2023-01-18 23:10:03', '2023-01-19', 'Đã điểm danh', 1),
(37, 'zts', ' zts', 'admin.png', 'Zitiensinh@gmail.com', 'd18df4391777880534b3c69e5851a9c6', NULL, 1, 0, 2, '2023-01-18 23:22:17', '2023-01-18 23:22:17', '2023-01-18', 'Đã điểm danh', 1),
(38, 'hoak2023@gmail.com', ' hoak2023@gmail.com', 'admin.png', 'hoak2023@gmail.com', '57591b6c29a16df0288a70ed0a222cfe', NULL, 1, 0, 1, '2023-01-18 23:48:00', '2023-01-18 23:48:00', '2023-01-18', 'Đã điểm danh', 1),
(39, 'Tettst', ' Tettst', 'admin.png', 'test@gmai.com', '96e79218965eb72c92a549dd5a330112', NULL, 1, 0, 0, '2023-01-19 00:19:52', '2023-01-19 00:19:52', NULL, 'Chưa điểm danh', 0),
(40, 'fdfsdff', ' fdfsdff', 'admin.png', 'test@gmail.com', '96e79218965eb72c92a549dd5a330112', NULL, 1, 0, 1, '2023-01-19 00:20:07', '2023-01-19 00:20:07', '2023-01-19', 'Chưa điểm danh', 0),
(41, 'Hà', ' Hà', 'admin.png', 'Phamthaihalc.1994@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 0, 1, '2023-01-19 01:06:33', '2023-01-19 01:06:33', '2023-01-19', 'Đã điểm danh', 1),
(42, 'xray2000@gmail.com', ' xray2000@gmail.com', 'admin.png', 'xray2000@gmail.com', 'fefca60cf9e56ec4c4b616a46bb1997c', NULL, 1, 0, 1, '2023-01-19 04:39:31', '2023-01-19 04:39:31', '2023-01-19', 'Đã điểm danh', 1),
(43, 'hoakk200@gmail.com', ' hoakk200@gmail.com', 'admin.png', 'hoakk200@gmail.com', 'af4603fe01a28792505085edcc93a947', NULL, 1, 0, 1, '2023-01-19 04:44:32', '2023-01-19 04:44:32', '2023-01-19', 'Đã điểm danh', 1),
(44, 'Hieple', ' Hieple', 'admin.png', 'blacknull4760@gmail.com', '56485f60e3356b8aba1ec3dffb058f8c', NULL, 1, 0, 8, '2023-01-19 05:47:47', '2023-01-19 05:47:47', '2023-01-24', 'Đã điểm danh', 1),
(45, 'Thai', ' Thai', 'admin.png', 'hahah@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, 0, 1, '2023-01-19 06:25:46', '2023-01-19 06:25:46', '2023-01-19', 'Đã điểm danh', 1),
(46, 'Svsv', ' Svsv', 'admin.png', 'huhuy@gmail.com', '2510c39011c5be704182423e3a695e91', NULL, 1, 0, 1, '2023-01-19 06:29:32', '2023-01-19 06:29:32', '2023-01-19', 'Đã điểm danh', 1),
(47, 'Tranphuloc', ' ', 'admin.png', 'Tranphuloc1999@gmail.com', 'bfa4167f0716bcda7439ad35ac03e596', NULL, 1, 0, 4, '2023-01-19 07:15:09', '2023-01-19 07:15:09', '2023-01-21', 'Đã điểm danh', 1),
(48, 'Quang', ' Hanh', 'admin.png', 'Hanh2582009@gmail.com', 'ce1434773487f0994cecae238832e990', NULL, 1, 0, 1, '2023-01-19 07:54:32', '2023-01-19 07:54:32', '2023-01-19', 'Đã điểm danh', 1),
(49, 'Hau', ' Hau', 'admin.png', 'hauru96@gmail.com', '52c69e3a57331081823331c4e69d3f2e', NULL, 1, 0, 1, '2023-01-19 11:51:06', '2023-01-19 11:51:06', '2023-01-19', 'Chưa điểm danh', 0),
(50, 'Ha', ' Ha', 'admin.png', 'hauru01@gmail.com', '96e79218965eb72c92a549dd5a330112', NULL, 1, 0, 1, '2023-01-19 11:54:55', '2023-01-19 11:54:55', '2023-01-19', 'Đã điểm danh', 1),
(51, 'Doanh', ' Doanh', 'admin.png', '1999phamxuandoanh@gmail.com', 'f5f41e7a524988ada7dc8269ad286bc5', NULL, 1, 0, 1, '2023-01-19 13:12:39', '2023-01-19 13:12:39', '2023-01-19', 'Đã điểm danh', 1),
(52, 'Quan', ' Quan', 'admin.png', '13.7.2008.quan@gmail.com', '999dbfef4bd03ed790843e2fcfb44cf9', NULL, 1, 0, 4, '2023-01-19 14:09:35', '2023-01-19 14:09:35', '2023-01-20', 'Đã điểm danh', 1),
(53, 'Thành', ' Luân', 'admin.png', 'luanzunnn@gmail.com', 'c102878b95938aca361bcae2fdb931a4', NULL, 1, 0, 1, '2023-01-19 16:29:13', '2023-01-19 16:29:13', '2023-01-19', 'Đã điểm danh', 1),
(54, 'Tran', ' Quang', 'admin.png', 'quangducls88@gmail.com', 'ab9ff86813b34467e1a0fd6ea0e17aff', NULL, 1, 0, 5, '2023-01-19 16:59:38', '2023-01-19 16:59:38', '2023-01-21', 'Đã điểm danh', 1),
(55, 'Sinh', ' liên', 'admin.png', 'Ngocsinhlien@gmail.com', '0cb0c1c169e90402600454c54bdb30e8', NULL, 1, 0, 1, '2023-01-19 18:05:57', '2023-01-19 18:05:57', '2023-01-19', 'Đã điểm danh', 1),
(56, 'anhtri', ' anhtri', 'admin.png', 'Nickpubgy26@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 1, 0, 1, '2023-01-19 19:22:42', '2023-01-19 19:22:42', '2023-01-19', 'Chưa điểm danh', 0),
(57, 'Nguyễn', 'Phi  Hùng', 'admin.png', 'n.v.p.h545329@gmail.com', '48187a8a304a737dca2debc8a0d5d406', NULL, 1, 0, 4, '2023-01-19 19:37:53', '2023-01-19 19:37:53', '2023-01-22', 'Đã điểm danh', 1),
(58, 'Lồn', ' Lồn', 'admin.png', 'jsfdhksdjf@gmail.com', '1acac5ef18cbc3d87babba5ce9d082a7', NULL, 1, 0, 1, '2023-01-19 21:05:34', '2023-01-19 21:05:34', '2023-01-19', 'Chưa điểm danh', 0),
(59, 'Hoàng', ' Tường', 'admin.png', 'thanghack2@gmail.com', '77427abbbb59b6c1d115363458da8883', NULL, 1, 0, 1, '2023-01-19 21:10:48', '2023-01-19 21:10:48', '2023-01-19', 'Đã điểm danh', 1),
(60, 'hoaa2023@gmail.com', ' hoaa2023@gmail.com', 'admin.png', 'hoaa2023@gmail.com', 'ebace51bdd6aa7730dbe03dc5f96e3c4', NULL, 1, 0, 1, '2023-01-20 00:44:20', '2023-01-20 00:44:20', '2023-01-20', 'Đã điểm danh', 1),
(61, 'hoaaa2023@gmail.com', ' hoaaa2023@gmail.com', 'admin.png', 'hoaaa2023@gmail.com', 'f79230f6ba676df5655beb517848b201', NULL, 1, 0, 1, '2023-01-20 00:51:56', '2023-01-20 00:51:56', '2023-01-20', 'Đã điểm danh', 1),
(62, 'Trung', ' Saker', 'admin.png', 'vantrung94bg@gmail.com', 'ebeed7ed985051600e7900560d285b9c', NULL, 1, 0, 2, '2023-01-20 02:28:19', '2023-01-20 02:28:19', '2023-01-21', 'Đã điểm danh', 1),
(63, 'Sun', ' Sun', 'admin.png', 'uyvu24042019@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 0, 1, '2023-01-20 02:33:03', '2023-01-20 02:33:03', '2023-01-20', 'Đã điểm danh', 1),
(64, 'vankhiem', ' vankhiem', 'admin.png', 'thuta111020066@gmail.com', 'e13d68b4c4a54228b178dca0188cad76', NULL, 1, 0, 1, '2023-01-20 07:48:18', '2023-01-20 07:48:18', '2023-01-20', 'Đã điểm danh', 1),
(65, 'Tuấn', ' Tuấn', 'admin.png', 'tuan11019890@gmail.com', 'b293500edc879811a98ed75c8038b3df', NULL, 1, 0, 2, '2023-01-20 08:37:48', '2023-01-20 08:37:48', '2023-01-20', 'Đã điểm danh', 1),
(66, 'Khánh', ' Khôi', 'admin.png', 'toangaming209@gmail.com', '2313f08f9976bcbfd29db3881f51072a', NULL, 1, 0, 0, '2023-01-20 10:42:33', '2023-01-20 10:42:33', NULL, 'Chưa điểm danh', 0),
(67, 'Tranphuloc1', ' Tranphuloc1', 'admin.png', 'Tranphulo15@gmail.com', 'bfa4167f0716bcda7439ad35ac03e596', NULL, 1, 0, 0, '2023-01-20 10:55:59', '2023-01-20 10:55:59', NULL, 'Chưa điểm danh', 0),
(68, 'Tranphuloc2', ' Tranphuloc2', 'admin.png', 'Tranphuloc2@gmail.com', 'bfa4167f0716bcda7439ad35ac03e596', NULL, 1, 0, 1, '2023-01-20 10:58:23', '2023-01-20 10:58:23', '2023-01-20', 'Đã điểm danh', 1),
(69, 'Toàn', ' Toàn', 'admin.png', 'toangaming210@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', NULL, 1, 0, 1, '2023-01-20 11:29:38', '2023-01-20 11:29:38', '2023-01-20', 'Đã điểm danh', 1),
(70, 'Tuan2001', ' Tuan2001', 'admin.png', 'tuan@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', NULL, 1, 0, 0, '2023-01-20 12:06:56', '2023-01-20 12:06:56', NULL, 'Chưa điểm danh', 0),
(71, 'Tuan2001', ' Tuan2001', 'admin.png', 'Hoangtuan2001@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', NULL, 1, 0, 2, '2023-01-20 12:09:25', '2023-01-20 12:09:25', '2023-01-20', 'Đã điểm danh', 1),
(72, 'darklord', ' darklord', 'admin.png', 'darklord170406@gmail.com', '88140d232d4abd4d0768b6c6e1101247', NULL, 1, 0, 8, '2023-01-20 12:18:16', '2023-01-20 12:18:16', '2023-01-24', 'Đã điểm danh', 1),
(73, 'Đức', ' Anh', 'admin.png', 'Xhunkenx@gmail.com', '0ab1c6751dfa29a8780321c8fe6bbb7b', NULL, 1, 0, 1, '2023-01-20 18:59:37', '2023-01-20 18:59:37', '2023-01-20', 'Đã điểm danh', 1),
(74, 'Nguyễn', 'Anh  Đức', 'admin.png', 'abcdxyz@gmail.com', 'c8a25eb9384ed1eb2b808db50ba78077', NULL, 1, 0, 1, '2023-01-20 20:05:50', '2023-01-20 20:05:50', '2023-01-20', 'Đã điểm danh', 1),
(75, 'Trần', ' dần', 'admin.png', 'Trandan01@gmail.com', '0cb0c1c169e90402600454c54bdb30e8', NULL, 1, 0, 2, '2023-01-20 20:15:27', '2023-01-20 20:15:27', '2023-01-20', 'Đã điểm danh', 1),
(76, 'Huy', ' Khang', 'admin.png', 'tranvanduck1907@gmail.com', 'd253ebbb84ff9183fce6ffdd3f671579', NULL, 1, 0, 3, '2023-01-21 08:21:27', '2023-01-21 08:21:27', '2023-01-22', 'Đã điểm danh', 1),
(77, '26', ' 26', 'admin.png', 'bethany31@goldenmarine.net', 'ee8cabfb65edc649125231e51da2a4f2', NULL, 1, 0, 0, '2023-01-21 10:49:22', '2023-01-21 10:49:22', NULL, 'Chưa điểm danh', 0),
(78, '26', ' 26', 'admin.png', 'parkercatherine622@gmail.com', 'fcc64f79211469e8eb98d1560a5b74ef', NULL, 1, 0, 0, '2023-01-21 10:49:26', '2023-01-21 10:49:26', NULL, 'Chưa điểm danh', 0),
(79, '26', ' 26', 'admin.png', 'hugolehmann92@outlook.com', '096c059df92f6802291839f4e730eee3', NULL, 1, 0, 0, '2023-01-21 10:49:29', '2023-01-21 10:49:29', NULL, 'Chưa điểm danh', 0),
(80, '12', ' 12', 'admin.png', 'katrine.yundt@goldenmarine.net', '54b056a0b4e5212d50c721e935bef8a8', NULL, 1, 0, 0, '2023-01-21 10:50:28', '2023-01-21 10:50:28', NULL, 'Chưa điểm danh', 0),
(81, '18', ' 18', 'admin.png', 'elody.herzog@goldenmarine.net', 'bb944d7d37238ea9c5cbb4309b319233', NULL, 1, 0, 0, '2023-01-21 10:51:13', '2023-01-21 10:51:13', NULL, 'Chưa điểm danh', 0),
(82, 'Diệu', 'a  h', 'admin.png', 'sun2404@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 0, 2, '2023-01-21 11:00:01', '2023-01-21 11:00:01', '2023-01-21', 'Chưa điểm danh', 0),
(83, 'Huế', ' Huế', 'admin.png', 'Hue2404@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 1, 0, 1, '2023-01-21 11:07:33', '2023-01-21 11:07:33', '2023-01-21', 'Đã điểm danh', 1),
(84, 'Toàn', ' Toàn', 'admin.png', 'Dinhvantoan@gmail.com', '7501e5d4da87ac39d782741cd794002d', NULL, 1, 0, 1, '2023-01-21 11:30:23', '2023-01-21 11:30:23', '2023-01-21', 'Đã điểm danh', 1),
(85, 'Tranphuloc3', ' Tranphuloc3', 'admin.png', 'Tranphuloc3@gmail.com', 'bfa4167f0716bcda7439ad35ac03e596', NULL, 1, 0, 1, '2023-01-21 11:41:23', '2023-01-21 11:41:23', '2023-01-21', 'Đã điểm danh', 1),
(86, '17', ' 17', 'admin.png', 'isaac1@recodz.com', '8eac38b7220e158753545111193cc67a', NULL, 1, 0, 0, '2023-01-21 12:59:05', '2023-01-21 12:59:05', NULL, 'Chưa điểm danh', 0),
(87, 'Hay', ' Hay', 'admin.png', 'Hauru02@gmail.com', '96e79218965eb72c92a549dd5a330112', NULL, 1, 0, 1, '2023-01-21 14:56:31', '2023-01-21 14:56:31', '2023-01-21', 'Đã điểm danh', 1),
(88, 'Huhu', ' Huhu', 'admin.png', 'huhuaaaa@gmail.com', 'eb5fcf3aaa04f76ebfced958680f5b76', NULL, 1, 0, 0, '2023-01-21 15:14:38', '2023-01-21 15:14:38', NULL, 'Chưa điểm danh', 0),
(89, 'Hskahs', ' Hskahs', 'admin.png', 'ko@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, 0, 1, '2023-01-21 15:14:55', '2023-01-21 15:14:55', '2023-01-21', 'Đã điểm danh', 1),
(90, 'Jajaaj', ' Jajaaj', 'admin.png', 'o@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, 0, 1, '2023-01-21 15:17:06', '2023-01-21 15:17:06', '2023-01-21', 'Đã điểm danh', 1),
(91, 'khan', ' khan', 'admin.png', 'Khangpro@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, 0, 1, '2023-01-21 19:01:08', '2023-01-21 19:01:08', '2023-01-21', 'Chưa điểm danh', 0),
(92, 'Heo', ' Heo', 'admin.png', 'quangducls88@icloud.com', 'ab9ff86813b34467e1a0fd6ea0e17aff', NULL, 1, 0, 1, '2023-01-21 19:15:38', '2023-01-21 19:15:38', '2023-01-21', 'Chưa điểm danh', 0),
(93, 'Khang', ' Khang', 'admin.png', 'Khangdz29@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, 1, 0, 1, '2023-01-21 20:16:00', '2023-01-21 20:16:00', '2023-01-21', 'Chưa điểm danh', 0),
(94, 'yeahhi', ' yeahhi', 'admin.png', 'yeahhi1704@gmail.com', '0450a9521a889ce13ac5e1e57b3a4375', NULL, 1, 0, 1, '2023-01-21 20:29:52', '2023-01-21 20:29:52', '2023-01-21', 'Chưa điểm danh', 0),
(95, 'Dmm2928', ' Dmm2928', 'admin.png', 'duoivai@gmail.com', 'e319d05ac2c7b4127aeceba855aba41b', NULL, 1, 0, 1, '2023-01-21 20:35:41', '2023-01-21 20:35:41', '2023-01-21', 'Chưa điểm danh', 0),
(96, 'Hoàng', ' Tường', 'admin.png', 'tuongv8a@gmail.com', '77427abbbb59b6c1d115363458da8883', NULL, 1, 0, 1, '2023-01-22 02:08:36', '2023-01-22 02:08:36', '2023-01-22', 'Chưa điểm danh', 0),
(97, 'Gui', ' li', 'admin.png', 'J123@gmail.com', '4619060a045bc2f65c8a34de094287be', NULL, 1, 0, 2, '2023-01-22 02:10:15', '2023-01-22 02:10:15', '2023-01-22', 'Chưa điểm danh', 0),
(98, 'Văn', ' toàn', 'admin.png', 'Dinhvantoan99@gmail.com', 'daa7afc068834dcb1d44cf78e65831a5', NULL, 1, 0, 1, '2023-01-22 12:57:59', '2023-01-22 12:57:59', '2023-01-22', 'Chưa điểm danh', 0),
(99, 'Tuan201', ' Tuan201', 'admin.png', 'Hoangtuan20010205@gmail.com', '0d787644f471ae5834fcfdc7e5460515', NULL, 1, 0, 0, '2023-01-22 17:54:26', '2023-01-22 17:54:26', NULL, 'Chưa điểm danh', 0),
(100, 'Tuanhoang201', ' Tuanhoang201', 'admin.png', 'Tuan20010201@gmail.com', '0d787644f471ae5834fcfdc7e5460515', NULL, 1, 0, 1, '2023-01-22 17:56:17', '2023-01-22 17:56:17', '2023-01-22', 'Chưa điểm danh', 0),
(101, 'Tranphuloc4', ' Tranphuloc4', 'admin.png', 'Tranphuloc4@gmail.com', 'bfa4167f0716bcda7439ad35ac03e596', NULL, 1, 0, 2, '2023-01-22 18:17:17', '2023-01-22 18:17:17', '2023-01-23', 'Chưa điểm danh', 0),
(102, 'Hoàng', ' Tường', 'admin.png', 'G@gmail.com', '4619060a045bc2f65c8a34de094287be', NULL, 1, 0, 1, '2023-01-22 19:25:02', '2023-01-22 19:25:02', '2023-01-22', 'Chưa điểm danh', 0),
(103, 'Lê', 'hoàng  anh', 'admin.png', 'hoanganh336.ha@gmail.com', '1e6d31100e7acb96c47cb726eb4a71b2', NULL, 1, 0, 2, '2023-01-23 00:36:45', '2023-01-23 00:36:45', '2023-01-23', 'Chưa điểm danh', 0),
(104, 'Duy', ' đông', 'admin.png', 'Dongem1122@gmail.com', '3b995563fb16c36c4f78aee35b16bc51', NULL, 1, 0, 0, '2023-01-23 08:54:12', '2023-01-23 08:54:12', NULL, 'Chưa điểm danh', 0),
(105, 'Toàn', ' Toàn', 'admin.png', 'Dinhvantoan270599@gmail.com', 'daa7afc068834dcb1d44cf78e65831a5', NULL, 1, 0, 1, '2023-01-23 09:55:55', '2023-01-23 09:55:55', '2023-01-23', 'Chưa điểm danh', 0),
(106, 'tu', ' machiko', 'admin.png', 'tumachiko2000@gmail.com', '31fe0b71a7bd9f49ac5dd23c03b72c31', NULL, 1, 0, 0, '2023-01-23 13:06:54', '2023-01-23 13:06:54', NULL, 'Chưa điểm danh', 0),
(107, 'Havy', ' Havy', 'admin.png', 'Blackbull4760@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, 1, 0, 0, '2023-01-23 13:36:25', '2023-01-23 13:36:25', NULL, 'Chưa điểm danh', 0),
(108, 'Hiep', ' le', 'admin.png', 'blacknull4760@icloud.com', '25d55ad283aa400af464c76d713c07ad', NULL, 1, 0, 1, '2023-01-23 13:40:52', '2023-01-23 13:40:52', '2023-01-23', 'Chưa điểm danh', 0),
(109, 'Hung', ' Kien', 'admin.png', 'kienlinh87@gmail.com', 'd1609c1c3cf495d0e0679783cd83d948', NULL, 1, 0, 1, '2023-01-23 13:50:10', '2023-01-23 13:50:10', '2023-01-23', 'Chưa điểm danh', 0),
(110, 'Văn', ' Mạnh', 'admin.png', 'Loile01jk@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 0, 1, '2023-01-23 14:25:44', '2023-01-23 14:25:44', '2023-01-23', 'Chưa điểm danh', 0),
(111, 'Anh', ' Tú', 'admin.png', 'anhtumeomeo99@gmail.com', 'd5099106eb5fa813601407e69014799e', '', 1, 0, 3, '2023-01-23 14:53:50', '2023-01-23 15:05:14', '2023-01-23', 'Chưa điểm danh', 0),
(112, 'hft02@gmail.com', ' hft02@gmail.com', 'admin.png', 'hft02@gmail.com', '8e5816546266135e60376246ebcba236', NULL, 1, 0, 1, '2023-01-23 16:26:42', '2023-01-23 16:26:42', '2023-01-23', 'Chưa điểm danh', 0),
(113, 'hfttt02222@gmail.com', ' hfttt02222@gmail.com', 'admin.png', 'hfttt02222@gmail.com', 'a1d317beb5ca7172977ac22166d044c3', NULL, 1, 0, 1, '2023-01-23 16:28:05', '2023-01-23 16:28:05', '2023-01-23', 'Chưa điểm danh', 0),
(114, 'xrayios01@gmail.com', ' xrayios01@gmail.com', 'admin.png', 'xrayios01@gmail.com', '20a2f7b8d9abfd10421454add42c68db', NULL, 1, 0, 1, '2023-01-23 16:29:46', '2023-01-23 16:29:46', '2023-01-23', 'Chưa điểm danh', 0),
(115, 'hhh778810@gmail.com', ' hhh778810@gmail.com', 'admin.png', 'hhh778810@gmail.com', '12e9b2b6f13f61a18aae893500639666', NULL, 1, 0, 1, '2023-01-23 16:31:02', '2023-01-23 16:31:02', '2023-01-23', 'Chưa điểm danh', 0),
(116, 'Booc', ' Booc', 'admin.png', 'Booc@gmail.com', '607c6211a94f81efc6d9f0e76ba95297', NULL, 1, 0, 1, '2023-01-23 17:07:31', '2023-01-23 17:07:31', '2023-01-23', 'Chưa điểm danh', 0),
(117, 'Tường', ' Tường', 'admin.png', 'Tuan20010202@gmail.com', 'c7d7cce6e38a13dfc1a03ef8db7ad5b9', NULL, 1, 0, 1, '2023-01-23 18:58:11', '2023-01-23 18:58:11', '2023-01-23', 'Chưa điểm danh', 0),
(118, 'Thang', ' Thang', 'admin.png', 'longle190320@gmail.com', 'ed8240165978233af3f1d1be4a5f376c', NULL, 1, 0, 1, '2023-01-23 19:08:16', '2023-01-23 19:08:16', '2023-01-23', 'Chưa điểm danh', 0),
(119, 'Phạm', 'Bảo  Vũ', 'admin.png', 'bossvu9011@gmail.com', '8663caf247208b857109f308a7e3a871', NULL, 1, 0, 1, '2023-01-24 00:44:52', '2023-01-24 00:44:52', '2023-01-24', 'Chưa điểm danh', 0),
(120, 'Mạnh', ' Mạnh', 'admin.png', 'manhvanmanh03@gmail.com', 'e45ee7ce7e88149af8dd32b27f9512ce', NULL, 1, 0, 1, '2023-01-24 02:29:37', '2023-01-24 02:29:37', '2023-01-24', 'Chưa điểm danh', 0),
(121, 'Minh', ' Thanh', 'admin.png', '01662594846b@gmail.com', 'ca72440d4e6695ec8fa046747558e578', NULL, 1, 0, 1, '2023-01-24 08:54:07', '2023-01-24 08:54:07', '2023-01-24', 'Chưa điểm danh', 0),
(122, 'Kha', 'Thiết  Huy', 'admin.png', 'kangphoto@ntt.edu.vn', 'dfa9cf4e2510605887c2df4e344d6154', NULL, 1, 0, 1, '2023-01-24 16:41:24', '2023-01-24 16:41:24', '2023-01-24', 'Chưa điểm danh', 0),
(123, 'Vinh', ' nguyen', 'admin.png', 'Quynhcun38@gmail.com', '90b071a508554555fbfcdeb79ff52037', NULL, 1, 0, 0, '2023-01-24 22:08:31', '2023-01-24 22:08:31', NULL, 'Chưa điểm danh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `id` varchar(50) NOT NULL,
  `lastvisit` int(14) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `hinh_anh` varchar(50) NOT NULL,
  `luottruycap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user_online`
--

INSERT INTO `user_online` (`id`, `lastvisit`, `user`, `hinh_anh`, `luottruycap`) VALUES
('609f1c1d37e807c775b5a1dd6888fff9', 1674641828, 'Nguyễn Bá Hòa', 'admin.png', 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `get_key_active`
--
ALTER TABLE `get_key_active`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `iptv`
--
ALTER TABLE `iptv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group` (`id_group`);

--
-- Chỉ mục cho bảng `iptv_group`
--
ALTER TABLE `iptv_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `get_key_active`
--
ALTER TABLE `get_key_active`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `iptv`
--
ALTER TABLE `iptv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT cho bảng `iptv_group`
--
ALTER TABLE `iptv_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `iptv`
--
ALTER TABLE `iptv`
  ADD CONSTRAINT `iptv_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `iptv_group` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
