-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2017 at 06:00 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_03_11_133004_status', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(10) UNSIGNED NOT NULL,
  `status_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_user`, `status_content`, `created_at`, `updated_at`) VALUES
(1, '1', 'zzzz', '2017-03-11 07:21:39', '2017-03-11 07:21:39'),
(4, '1', 'haiiii', '2017-03-11 18:55:52', '2017-03-11 18:55:52'),
(5, '1', 'laperrrr', '2017-03-11 18:56:13', '2017-03-11 18:56:13'),
(6, '2', 'cieee', '2017-03-11 19:31:30', '2017-03-11 19:31:30'),
(7, '3', 'Hai Saya Panca', '2017-03-11 20:34:50', '2017-03-11 20:34:50'),
(8, '3', 'Gabut nih', '2017-03-11 20:37:31', '2017-03-11 20:37:31'),
(9, '4', 'azzzz', '2017-03-11 21:00:08', '2017-03-11 21:00:08'),
(10, '5', 'aaa', '2017-03-11 21:04:30', '2017-03-11 21:04:30'),
(11, '6', 'aaa', '2017-03-11 21:18:20', '2017-03-11 21:18:20'),
(12, '8', 'ssss', '2017-03-11 21:31:31', '2017-03-11 21:31:31'),
(13, '9', 'xxxx', '2017-03-11 21:33:05', '2017-03-11 21:33:05'),
(14, '10', 'sss', '2017-03-11 21:36:05', '2017-03-11 21:36:05'),
(15, '11', 'xxx', '2017-03-11 21:38:43', '2017-03-11 21:38:43'),
(16, '12', 'xxx', '2017-03-11 21:42:21', '2017-03-11 21:42:21'),
(17, '13', 'sssz', '2017-03-11 21:44:57', '2017-03-11 21:44:57'),
(18, '14', 'zzz', '2017-03-11 21:58:56', '2017-03-11 21:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dicky Pratama', 'dickypratamss@gmail.com', '$2y$10$j3VB9stJRdxrMJdnkMg1ueiVwn6BYkvidqL7ZUilXqmju6m4QuXZm', '4x6.jpg', 'hj28R02dyTZJtfQrkjh9IdpU0yMg2EIQM5MWwmyDMI0B33LL14vgtLU0GBd2', '2017-03-11 07:53:16', '2017-03-11 20:32:38'),
(2, 'Teman 1', 'bcs@gmail.com', '$2y$10$nYaUx/SSbKALz2NhKwBTgOi5aTGoKclIqyA4iqsd/JPMeQoEznntW', 'aa.jpg', 'kFZ4os06eXwxGmqm52fhZDiZmj9Z2f00L9XAhizSuGjkE8OOaqcYvEjIv9x9', '2017-03-11 19:27:48', '2017-03-11 20:34:19'),
(3, 'Panca', 'panca.ramadhanty@gmail.com', '$2y$10$/QRslz5Ozk.tTm2ASBXEjOmgEgjTmq8DFc7EBGr4pQljNyP4Wvg1O', 'IMG_20170221_195546.JPG', 'Q6QLgId5GPhXVHcYwYS0qeVM7uGJ73uJbX7Cp7hzZJskkRErGeNe3MMB1s4e', '2017-03-11 20:34:39', '2017-03-11 20:41:47'),
(4, 'Ciaat', 'asd@gmail.com', '$2y$10$m4ee2UZu7GmRQIzgdm176O7Fr7cqqWa0Adm04Wy7gKBbiDSuNJotm', 'aa.jpg', 'WpEBDh98icFnqw9hiEJFkGE48PObdKgAoS18x4yRZ4N1efVQ6wosO5epDfHg', '2017-03-11 21:00:01', '2017-03-11 21:00:26'),
(5, 'mimin', 'as@gmail.com', '$2y$10$hByCRiAmhhV8yKGJR/lN5u5xJQiAr7WtbhM..ddEnDsZtMjlV5QCa', '', 'sOacfyzFBaAoz9M3es3OFy09ATFTqYFODcrWDXrl3kGybcjE9xNkUWDumFIZ', '2017-03-11 21:04:27', '2017-03-11 21:18:00'),
(6, 'halo', 'hai@gmail.com', 'eyJpdiI6ImNWODd6RG0yRFNxdzIzc0l0bVprVHc9PSIsInZhbHVlIjoiZFhkSUZYNDVNODlWOVdnQW9iUFBTQT09IiwibWFjIjoiMjBkMjY0MmUyYzUyZWZkYjg3MmQzZDBiNzExZGQ2ZDliMjA1N2ZlZDY4ZjRkYTk5ODNhYzc1YWY5YTMzY2Y0NiJ9', 'aa.jpg', 'xWAcayVz9zKSUzzoGraFJBabvYFDybfuklk7NNnE0ZB5Pa477QEfEUxHTcGa', '2017-03-11 21:18:16', '2017-03-11 21:20:17'),
(7, 'asd', 'xxx@gmail.com', 'eyJpdiI6IkJGSXZORnJkTVwvYk1JQ3puVXFaSVZRPT0iLCJ2YWx1ZSI6IlNsZTd1c1pDQU5Va2VWYk5reHRRQ1E9PSIsIm1hYyI6IjlhMjAzZjc4OTMzZDZlNzcwMzAyY2JlMDdiMzM4NWI5YjI4NGU1ZmE2ZmM0NDI3ZDllN2ZiYWVlZDRkZjk1MjkifQ==', '', 'SS7wCL6yGeRK5X0JDMJ1jOeVX8SiJ3HEgNQMJnC5Yuy0eN6MO0YzXcBcVxgG', '2017-03-11 21:30:23', '2017-03-11 21:30:28'),
(8, 'hai', 'jkl@gmail.com', '$2y$10$pRLPJ6M9RbEuELTeOF2Bz.3gPyc/YCx6N5X1BeUMtqweRNEA83Jl6', 'aa.jpg', 'mXXmm1SeymvFAYkKyQJ8OWm3TmEaunFue74oLiLvwocDpVDiUWVftW4uZaZa', '2017-03-11 21:31:16', '2017-03-11 21:32:21'),
(9, 'asd', 'asds@gmail.com', '$2y$10$yNYrMWtWIWcQzNnaI59Hi.K03Im1lhZEhX7ZXWgZAPh0339q9BoEm', 'aa.jpg', 'rkGhQpMsiENxdJIkwlNJMuBt2Sfga6mpDBTkIvGL3YV7F3uGuIwDtiMOAGKl', '2017-03-11 21:32:46', '2017-03-11 21:35:49'),
(10, 'qwe123', 'qwe@gmail.com', 'asd123', 'aa.jpg', '3crr7QW47fkhh66aCib6HhhKMDuMxWtpYUc45VcxdMVwD5tknCd4YKCUhDau', '2017-03-11 21:36:02', '2017-03-11 21:37:29'),
(11, 'qqq', 'qwe123@gmail.com', 'qwe123', 'aa.jpg', 'kKmF2xciuloAbMhAfGz5n88XhFxidHSsbctjHYXIGf9XjJRwmnZXVjoT8ewN', '2017-03-11 21:38:14', '2017-03-11 21:40:25'),
(12, 'ssss', 'qwe123@gmail.coms', '$2y$10$8GzTZSkx3m5Xefwcr3wILOAoVLHiVK5xdQX3sUvK9K7DkaZBhQc/q', 'IMG-20170118-WA0002.jpg', 'j1gNGZDCWHFAAzAs51VJBRzn4ZkdfEgLesx7IcTBxQDAx9Zws3U1MsyRxAjf', '2017-03-11 21:42:17', '2017-03-11 21:44:17'),
(13, 'sssss', 'asd@gmail.coms', '$2y$10$VExUKg60Ditl/xb28ezvn.jc/didxuXg/n2Fgq0CS6x3/PZOP2.YC', '4x6.jpg', 'rZtAQ8uL4FX2OFx9w81dwe82bf2Q1AsJn9RldpcnSP4ma8khlroYTCbwh4oL', '2017-03-11 21:44:39', '2017-03-11 21:58:32'),
(14, 'Dicky Panca', 'dpanch@gmail.com', '$2y$10$yHvKVuT.U0bxzmm920nLBOWAVfhGuoWL.E/GXXV.fcqz4nKXR0Cnq', 'koperasi_lama.png', '4xwfVJXg8cpMYjEER3pONAJzM72v8kQne6r5kFoDsQROmcoiknsB5EFbjsSM', '2017-03-11 21:58:51', '2017-03-11 21:59:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

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
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
