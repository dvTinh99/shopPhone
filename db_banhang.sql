-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 03, 2023 at 03:50 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `NameAdmin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `NameAdmin`) VALUES
(1, 'admin', 'admin', 'tinhdoan');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int UNSIGNED NOT NULL,
  `id_customer` int DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(14, 14, '2017-03-23', 160000, 'COD', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 13, '2017-03-21', 400000, 'ATM', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 12, '2017-03-21', 520000, 'COD', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 11, '2017-03-21', 420000, 'COD', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(15, 15, '2017-03-24', 220000, 'COD', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int UNSIGNED NOT NULL,
  `id_bill` int NOT NULL,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(18, 15, 62, 5, 220000, '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(17, 14, 2, 1, 160000, '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(16, 13, 60, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(15, 13, 59, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(14, 12, 60, 2, 200000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(13, 12, 61, 1, 120000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(12, 11, 61, 1, 120000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(11, 11, 57, 2, 150000, '2017-03-21 07:16:09', '2017-03-21 07:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `note` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(15, 'ê', 'Nữ', 'huongnguyen@gmail.com', 'e', 'e', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(14, 'hhh', 'nam', 'huongnguyen@gmail.com', 'Lê thị riêng', '99999999999999999', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '23456789', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 'Khoa phạm', 'Nam', 'khoapham@gmail.com', 'Lê thị riêng', '1234567890', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '234567890-', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(16, '', 'nam', 'tinh5969@gmail.com', 'Street Addresdfdsfss', '3453546767', 'sadasd', '2020-06-22 17:16:06', '2020-06-22 17:16:06'),
(17, '', 'nam', 'tinh5969@gmail.com', 'Street Addresdfdsfss', '3453546767', 'sadasd', '2020-06-22 17:16:41', '2020-06-22 17:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `id_type` int UNSIGNED DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `new` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 13 128GB', 1, 'iPhone 13 128GB', 150000, 120000, 'ip13.png', 'hộp', 1, '2016-10-26 03:00:16', '2023-02-01 14:44:10'),
(2, 'iPhone 11 64GB', 1, NULL, 180000, 160000, 'ip11.png', 'hộp', 1, '2016-10-26 03:00:16', '2023-02-01 14:45:05'),
(3, 'iPhone 3GS 8GB', 1, 'Điện thoại iPhone 3GS 8GB', 150000, 120000, 'iphone_3GS_b.jpeg', 'hộp', 0, '2016-10-26 03:00:16', '2023-02-01 12:34:28'),
(4, 'iPhone 4 8GB', 1, 'Điện thoại iPhone 4 8GB', 160000, 0, 'apple-iphone-4-8g-300-nowatermark-300x300.jpeg', 'hộp', 0, '2016-10-26 03:00:16', '2023-02-01 12:35:29'),
(5, 'Vivo Y22s 8GB/128GB', 5, 'Vivo Y22s 8GB/128GB', 5900000, 5590000, 'image-removebg-preview-47.png', 'hộp', 0, '2016-10-26 03:00:16', '2023-02-01 13:33:58'),
(6, 'vivo V21 5G', 5, 'vivo V21 5G', 5000000, 5000000, 'vivo-v21-5g.png', 'hộp', 0, '2016-10-26 03:00:16', '2023-02-01 14:14:46'),
(7, 'VIVO Y21', 5, 'VIVO Y21', 1001000, 1000000, 'vivo-y21.png', 'hộp', 1, '2016-10-26 03:00:16', '2023-02-01 14:16:42'),
(8, 'SAMSUNG S22 ULTRA', 2, 'SAMSUNG S22 ULTRA', 20000000, 19500000, 'ss-s22-ultra.png', 'hộp', 0, '2016-10-26 03:00:16', '2023-02-01 14:18:12'),
(9, 'SAMSUNG S22', 2, 'SAMSUNG S22', 17000000, 1500010, 'ss-s22.png', 'hộp', 0, '2016-10-26 03:00:16', '2023-02-01 14:19:41'),
(11, 'SAMSUNG S20 FE', 2, 'SAMSUNG S20 FE', 10000000, 9990000, 'ss-s20-fe.png', 'cái', 0, '2016-10-12 02:00:00', '2023-02-01 14:20:31'),
(12, 'SAMSUNG Z FLIP 4 2022', 2, 'SAMSUNG Z FLIP 4 2022', 26000000, 25432100, 'ss-zflip4.png', 'cái', 0, '2016-10-12 02:00:00', '2023-02-01 14:21:25'),
(13, 'SAMSUNG Z FOLD 4 2022', 2, 'SAMSUNG Z FOLD 4 2022', 37000000, 32101200, 'ss-zfold4.png', 'cái', 1, '2016-10-12 02:00:00', '2023-02-01 14:22:14'),
(14, 'XIAOMI 12 LITE 5G', 3, 'XIAOMI 12 LITE 5G', 8765430, 8642000, 'xiaomi-lite12-5g.png', 'cái', 0, '2016-10-12 02:00:00', '2023-02-01 14:31:01'),
(15, 'XIAOMI REDMI NOTE 11 PRO 5G', 3, 'XIAOMI REDMI NOTE 11 PRO 5G', 6543200, 6000000, 'note-11-pro-5g.png', 'cái', 1, '2016-10-12 02:00:00', '2023-02-01 14:32:11'),
(16, 'XIAOMI POCO M4 PRO', 3, 'XIAOMI POCO M4 PRO', 4700000, 4500000, 'poco-m4-pro.png', 'hộp', 0, '2016-10-12 02:00:00', '2023-02-01 14:32:57'),
(17, 'XIAOMI REDMI NOTE 10S', 3, 'XIAOMI REDMI NOTE 10S', 4200000, 4000000, 'remid-note10s.png', 'cai', 0, '2016-10-12 02:00:00', '2023-02-01 14:33:42'),
(18, 'OPPO A55', 4, 'OPPO A55', 3990000, 3900000, 'oppo-a55.png', 'hộp', 0, '2016-10-13 02:20:00', '2023-02-01 14:35:09'),
(19, 'OPPO RENO 8 PRO', 4, 'OPPO RENO 8 PRO', 7100000, 7100000, 'oppo-reno8pro.png', 'hộp', 1, '2016-10-13 02:20:00', '2023-02-01 14:35:48'),
(20, 'OPPO A57', 4, 'OPPO A57', 3500000, 3490000, 'oppo-a57.png', 'hộp', 0, '2016-10-13 02:20:00', '2023-02-01 14:36:24'),
(21, 'XIAOMI REDMI NOTE 11S', 3, 'XIAOMI REDMI NOTE 11S', 4290000, 4290000, 'redmi-note-11s.png', 'cái', 0, '2016-10-13 02:20:00', '2023-02-01 14:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'banner1.png'),
(2, '', 'banner2.png'),
(3, '', 'banner3.png'),
(4, '', 'banner4.png');

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'Nếu từng bị mê hoặc bởi các loại tarlet ngọt thì chắn chắn bạn không thể bỏ qua những loại tarlet mặn. Ngoài hình dáng bắt mắt, lớp vở bánh giòn giòn cùng với nhân mặn như thịt gà, nấm, thị heo ,… của bánh sẽ chinh phục bất cứ ai dùng thử.', 'banh-man-thu-vi-nhat-1.jpg', NULL, NULL),
(2, 'Samsung', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '20131108144733.jpg', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'XIAOMI', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi \"lạc\" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức.', 'banhtraicay.jpg', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'OPPO', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', 'banhkem.jpg', '2016-10-26 03:29:19', '2016-10-26 02:22:22'),
(5, 'VIVO', 'Crepe là một món bánh nổi tiếng của Pháp, nhưng từ khi du nhập vào Việt Nam món bánh đẹp mắt, ngon miệng này đã làm cho biết bao bạn trẻ phải “xiêu lòng”', 'crepe.jpg', '2016-10-28 04:00:00', '2016-10-27 04:00:23'),
(6, 'HUAWEI', 'Pizza đã không chỉ còn là một món ăn được ưa chuộng khắp thế giới mà còn được những nhà cầm quyền EU chứng nhận là một phần di sản văn hóa ẩm thực châu Âu. Và để được chứng nhận là một nhà sản xuất pizza không hề đơn giản. Người ta phải qua đủ mọi các bước xét duyệt của chính phủ Ý và liên minh châu Âu nữa… tất cả là để đảm bảo danh tiếng cho món ăn này.', 'pizza.jpg', '2016-10-25 17:19:00', NULL),
(7, 'LENOVO', 'Bánh su kem là món bánh ngọt ở dạng kem được làm từ các nguyên liệu như bột mì, trứng, sữa, bơ.... đánh đều tạo thành một hỗn hợp và sau đó bằng thao tác ép và phun qua một cái túi để định hình thành những bánh nhỏ và cuối cùng được nướng chín. Bánh su kem có thể thêm thành phần Sô cô la để tăng vị hấp dẫn. Bánh có xuất xứ từ nước Pháp.', 'sukemdau.jpg', '2016-10-25 17:19:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Hương Hương', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', '23456789', 'Hoàng Diệu 2', NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33'),
(7, 'asdsad', 'asdsad@asfdsf', 'asdsad', 'asdsad', 'Street Address', NULL, NULL, NULL),
(9, 'tinhdoan', 'tinhdoan@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
