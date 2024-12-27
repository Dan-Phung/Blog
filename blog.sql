-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2024 lúc 03:59 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `des` varchar(255) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `des`, `customer_id`, `content_id`, `created_at`, `updated_at`) VALUES
(1, 'ok chưa', 2, 1, '2024-12-26 07:53:08', '2024-12-26 07:53:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contents`
--

INSERT INTO `contents` (`id`, `title`, `description`, `image`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ngôi nhà mới của Khải Đơn', 'Nếu bạn nhận được thư này, hoặc đọc được blog này, xin cảm ơn vì bạn đã là bạn đọc của Khải Đơn nhiều năm qua.\r\n\r\nNăm nay tôi sẽ chuyển qua viết nhiều hơn ở một nền tảng mới là Substack, địa chỉ tại đây: https://khaidon.substack.com/\r\n\r\nLý do có sự chuyển đổi này vì tôi gặp một số khó khăn về kỹ thuật mà WordPress đã không thể xử lý được cho tôi. WordPress vẫn sẽ là nơi lưu các bài cũ và là tên miền tác giả tôi sử dụng.\r\n\r\nNội dung trang substack không có paywall và tôi vẫn để bạn đọc miễn phí. ', 'https://khaidon.com/wp-content/uploads/2023/09/khai-don-page-.png', 2, 1, NULL, NULL),
(2, 'Da thơm, má nồng', 'Một ngày cơ thể em rất đau và em muốn từ bỏ chuyện sống. Tôi nhiều lần tự hỏi tại sao mình sống. Đôi khi câu hỏi nhiều đến nỗi tôi không đủ sức trả lời. Tôi ngắm nhìn câu hỏi găm vào bàn tay mình. Bàn tay khô và bong da. Tôi hối hả bóc từng lớp da đến khi tay bật máu. Sống là gì?\r\n\r\nCó ngày ngực tôi mệt. Tôi nằm trong căn phòng bé đèn đã tắt. Tôi bật khóc. Nước mắt rơi tràn vào tai lạnh buốt. Mùa đông làm dao nhọn. Tôi hoảng sợ. Tôi gọi sự kết thúc đến tìm tôi. Tôi đi bộ lên đồi cao nhiều giờ. Ở', 'https://khaidon.com/wp-content/uploads/2023/03/catherine-kay-greenup-b9cofg2pipk-unsplash.jpg?w=1400', 2, 1, NULL, NULL),
(3, 'Prof.', 'Minus aliquid nulla unde nam dolor. Cupiditate sint voluptas quia omnis sit vel. Est quia omnis est.', 'background-dep-4-2.jpg', 2, 0, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(4, 'Dr.', 'Porro praesentium adipisci aut numquam ea. Minima molestias et ut eaque recusandae. Aperiam nobis maiores porro et. Autem numquam molestiae praesentium ducimus culpa quaerat in qui.', 'background-dep-3-2.jpg', 3, 0, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(5, 'Dr.', 'Hic pariatur sed sit cum modi odit odit. Perspiciatis cupiditate sed et et tempore ut qui. Temporibus quia unde quae amet quod perferendis tempore in.', 'background-dep-5-2.jpg', 1, 0, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(6, 'Prof.', 'Aut autem praesentium ut et sequi dolor cumque eligendi. Dignissimos ab repellendus suscipit et magni autem. Voluptatem et quae sit aut alias corrupti. Et voluptatem voluptatibus quisquam voluptatibus ea aut.', 'background-dep-4-2.jpg', 3, 0, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(7, 'Prof.', 'Quia et quia harum facere consectetur qui. Cumque animi et ea distinctio quam minima. Atque tempora tempora dolorum magnam. Dolore repudiandae quidem sit culpa omnis qui.', 'pexels-mohamed-sarim-1033729.jpg', 2, 1, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(8, 'Dr.', 'Nisi porro eaque optio saepe sit tenetur. Autem impedit voluptas itaque omnis dignissimos provident. Ut unde accusantium rerum ipsum porro. Eius mollitia blanditiis in et. Tempora incidunt quae nihil qui optio culpa est.', 'background-dep-3-2.jpg', 3, 0, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(9, 'Miss', 'Est in iure ut. Facilis qui sunt id molestias rerum quidem perferendis. Sed minus enim amet temporibus ad.', 'background-dep-3-2.jpg', 4, 1, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(10, 'Dr.', 'Tempora ut ipsa fugit. Et omnis quia voluptatibus facilis. Totam praesentium consectetur ducimus neque. Corporis dolores laudantium aut et. Sapiente ad fugit debitis praesentium numquam.', 'background-dep-5-2.jpg', 4, 1, '2024-11-29 00:44:08', '2024-11-29 00:44:08'),
(13, 'Miss', 'Unde modi recusandae est ut qui. Nesciunt omnis rerum quidem exercitationem. Qui ex earum non temporibus possimus at. Animi temporibus quam pariatur dolorem.', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-5-2.jpg', 3, 1, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(14, 'Dr.', 'Alias eos cumque amet possimus error nam officiis. Ducimus beatae similique perferendis illum quod et quibusdam voluptatibus. Accusamus doloribus doloremque atque aut. Ut deleniti itaque sit praesentium.', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-3-2.jpg', 2, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(15, 'Prof.', 'Unde sapiente et voluptas exercitationem. Quidem ea alias eos a qui eum. A culpa cupiditate quaerat nesciunt ut. Maiores nobis velit odio non sed et voluptas.', 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/background-dep-don-gian.jpg', 3, 1, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(16, 'Ms.', 'Dolores maiores reprehenderit sit est. Rerum occaecati vel quos modi. Dolores sit eius quia occaecati earum adipisci.', 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/background-dep-don-gian.jpg', 3, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(17, 'Miss', 'Suscipit in animi nesciunt. Deleniti aut quia veritatis ipsa. Dolor non officia necessitatibus quidem. Est voluptas aut sint et earum et laboriosam.', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-5-2.jpg', 2, 1, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(18, 'Prof.', 'Necessitatibus odio distinctio fugiat perferendis excepturi iure commodi. Quia laboriosam qui consequatur iusto repellat non. Doloribus id quidem quas eos dolor animi.', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-5-2.jpg', 3, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(19, 'Ms.', 'Sed sed illum praesentium illo non. Qui a illo unde aut. Est voluptates vitae animi non numquam. Doloremque dolor tenetur veritatis eveniet perferendis similique dolorum.', 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/background-dep-don-gian.jpg', 2, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(20, 'Miss', 'Eligendi quaerat et eum aut facilis. Deleniti natus pariatur illo nisi et nihil. Eveniet voluptatum eos iste. Quo suscipit et corrupti.', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-4-2.jpg', 4, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(21, 'Prof.', 'Quo animi quod qui tempore in voluptatem. Autem voluptatibus ipsa soluta assumenda et perspiciatis in. Labore est voluptatibus vel veritatis est ea et. Id et est est voluptas vel non illum.', 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/background-dep-don-gian.jpg', 3, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43'),
(22, 'Ms.', 'Saepe ut repellendus occaecati occaecati enim pariatur molestiae. Ducimus non voluptas libero.', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-4-2.jpg', 1, 0, '2024-11-29 00:51:43', '2024-11-29 00:51:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nam DO', 'namdo@gmail.com', '123', NULL, NULL),
(2, 'Khai Don', 'khaidon@gmail.com', '123', NULL, NULL),
(3, 'Tuan pham', 'tuanpham@gmail.com', '123', NULL, NULL),
(4, 'Dan Phung', 'danphung@gmail.com', '123', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_22_071435_create_customers_table', 1),
(6, '2024_11_22_072004_create_contents_table', 1),
(7, '2024_11_22_072827_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dan Phung', 'danphung@gmail.com', NULL, '$2y$12$TlNYHseNgUXiYAsbnuTNH.1PdqZQuB84yUo/EYUD0wdxVriDYYBVS', NULL, '2024-12-06 00:34:47', '2024-12-06 00:34:47'),
(2, 'Thanh Dat', 'thanhdatdo03@gmail.com', '2024-12-06 14:04:46', '$2y$12$XlSgd5gEyUZdCb3pNt7jy.gDNeDy/WbUD6.RXh69tOvhUJofTKmNS', NULL, '2024-12-26 14:04:46', '2024-12-26 07:15:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`),
  ADD KEY `comments_content_id_foreign` (`content_id`);

--
-- Chỉ mục cho bảng `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_name_unique` (`name`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
