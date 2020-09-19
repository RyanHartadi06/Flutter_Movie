-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 08:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laramovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `address`, `tlp`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', '$2y$10$uYY78LbC.Y01zRsObM1fyOp0922EKdWYWm/E9lMWwMFEgDsNN7kVy', 'jalan test no 1 surabaya', '03131213232', 'PU2yOpelsW1dCesmFJRuXJHQGZCUmUfP9CP1bmNMkX8OkBPXyiivgnhldtqvBBDMaAzLQ5yK87okgkne', '2020-05-16 08:24:55', '2020-05-16 08:24:55'),
(2, 'majid abdullah', 'majid@gmail.com', '$2y$10$MiTHHHUaOEyI16ljZv4lzuvtuUilFVNGgSCABfCVkbfKQMaWIoVkK', 'bulaksari 6/9 surabaya', '32323232', 'Ki5Q7eGL45viTNk6LkWArPP9l3hiSAnyjBVyyX1wnL7HSzy9BUd9Ecy3w8hULMB0uClAi4oVuaVDHYdx', '2020-06-20 10:07:02', '2020-06-20 10:07:02'),
(5, 'ibah', 'ibah@gmail.com', '$2y$10$2c0mMKCsF4DxEKTLVqwHLO5flRLAB../kIpwo2Q/CpXQ0.LooKo26', 'genengan bangsal mojokerto', '324243434', 'whZLxb9QoFS7TQ7BEZAaPDVNC68WzHVSYYF7zodjIclmghLgoTZpaGPwVm5pFxABgJAPJhqwqTTMcfHS', '2020-07-17 20:39:58', '2020-07-17 20:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `image`, `created_at`, `updated_at`) VALUES
(1, 'action', 'action.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(2, 'adventure', 'adventure.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(3, 'comedy', 'comedy.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(4, 'crime', 'crime.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(5, 'drama', 'drama.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(6, 'fantasy', 'fantasy.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(7, 'kids', 'kids.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(8, 'mistery', 'mistery.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(9, 'science fiction', 'sciencefiction.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(10, 'thriller', 'thriller.png', '2020-02-08 02:41:05', '2020-02-08 02:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_movie`
--

CREATE TABLE `kategori_movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_movie`
--

INSERT INTO `kategori_movie` (`id`, `movie_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-02-08 02:47:35', '2020-02-08 02:47:35'),
(2, 1, 2, '2020-02-08 02:47:35', '2020-02-08 02:47:35'),
(3, 2, 1, '2020-02-08 02:47:35', '2020-02-08 02:47:35'),
(4, 2, 2, '2020-02-08 02:47:35', '2020-02-08 02:47:35'),
(5, 3, 4, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(6, 4, 4, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(7, 5, 5, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(8, 6, 6, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(9, 7, 7, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(10, 8, 8, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(11, 9, 3, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(12, 9, 9, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(13, 10, 10, '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(14, 10, 1, '2020-02-08 02:41:05', '2020-02-08 02:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(132, '2014_10_12_000000_create_users_table', 1),
(133, '2014_10_12_100000_create_password_resets_table', 1),
(134, '2019_12_22_032644_create_movies_table', 1),
(135, '2019_12_22_034404_create_kategoris_table', 1),
(136, '2019_12_22_035514_kategori_movie', 1),
(140, '2020_05_16_142145_create_customers_table', 2),
(141, '2020_05_19_024448_create_orders_table', 3),
(142, '2020_05_19_024600_create_order_details_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `rating`, `price`, `imageUrl`, `created_at`, `updated_at`) VALUES
(1, 'toys strory 3', 'ini cerita tentang petualangan mainan - mainan yang hidup diantara manusia normal', '8', 15000, '15811800651.jpg', '2020-02-08 02:41:05', '2020-02-08 02:41:05'),
(2, 'wonder park', 'ini cerita tentang petualangan kehidupan hewan di kebun binatang', '7', 10000, '15811801562.jpg', '2020-02-08 02:42:36', '2020-02-08 02:42:36'),
(3, 'lion king', 'ini cerita tentang penjalanan anak singa untuk menjadi seekor raja hutan', '8', 11000, '15811802323.jpg', '2020-02-08 02:43:52', '2020-02-08 02:43:52'),
(4, 'angry bird', 'ini cerita tentang penyelamatan induk burung untuk menyelamatkan anaknya dari serangan predator', '6', 9000, '15811803254.jpg', '2020-02-08 02:45:25', '2020-02-08 02:45:25'),
(5, 'fast & furious 7', 'ini cerita tentang hobs dan shaw dalam menyelamatkan anggota keluarganya', '9', 10000, '15811804555.jpg', '2020-02-08 02:47:35', '2020-02-08 02:47:35'),
(6, 'ouat in hollywood', 'ini petualangan leonordo di hollywood', '5', 9000, '15811806036.jpg', '2020-02-08 02:50:03', '2020-02-08 02:50:03'),
(7, 'dora', 'ini petualangan dora dan boot mencari harta karun', '8', 11000, '15811806787.jpg', '2020-02-08 02:51:18', '2020-02-08 02:51:18'),
(8, 'crawl', 'cerita tentang manusia yang bertahan hidup dari serangan buaya ganas', '9', 11000, '15811807618.jpg', '2020-02-08 02:52:41', '2020-02-08 02:52:41'),
(9, 'pets 2', 'petualangan hewan-hewan peliharaan di tengah kota metropolitan', '8', 12000, '15811808649.jpg', '2020-02-08 02:54:24', '2020-02-08 02:54:24'),
(10, 'the divine fury', 'film tentang kehidupan gangster di jepang', '9', 8000, '158118095110.jpg', '2020-02-08 02:55:51', '2020-02-08 02:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `created_at`, `updated_at`) VALUES
(4, 5, '2020-07-17 17:00:00', '2020-07-17 20:45:57', '2020-07-17 20:45:57'),
(5, 5, '2020-07-18 05:29:37', '2020-07-17 22:26:32', '2020-07-17 22:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `movie_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 4, 3, 10, '2020-07-17 20:45:57', '2020-07-17 20:45:57'),
(8, 4, 7, 5, '2020-07-17 20:45:57', '2020-07-17 20:45:57'),
(9, 4, 9, 3, '2020-07-17 20:45:57', '2020-07-17 20:45:57'),
(10, 5, 5, 2, '2020-07-17 22:26:32', '2020-07-17 22:26:32'),
(11, 5, 6, 2, '2020-07-17 22:26:32', '2020-07-17 22:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@gmail.com', '$2y$10$F5WTniPOehMs1pMVZkaLGO.CxmiU8/FLaVyHFasHCSbUK/cXmgl6K', '2020-03-23 07:50:32', '2020-03-23 07:50:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_movie`
--
ALTER TABLE `kategori_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori_movie`
--
ALTER TABLE `kategori_movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
