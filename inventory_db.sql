-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 09:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `name`, `staff_id`, `status`, `item_id`, `department_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Marianne Heaney', 'sf-5069', 0, 1, 1, 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(2, 'Burnice Grant', 'sf-4232', 0, 2, 2, 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(3, 'Lucile Mann', 'sf-4676', 1, 2, 2, 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(4, 'Prof. Maryse Boehm MD', 'sf-0381', 0, 2, 1, 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(5, 'Opal Klein', 'sf-8008', 1, 2, 2, 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Monitor', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(2, 'Printer', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(3, 'Mouse', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(4, 'Ink', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(5, 'Laptop', '2023-05-31 03:41:01', '2023-05-31 03:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Jabatan kecemasan & trauma', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(2, 'PAC', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(3, 'Nefrologi', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(4, 'Rehabilitasi', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(5, 'Radiologi', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(6, 'Forensik', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(7, 'Farmasi Aras 1', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(8, 'Unit Kejuruteraan', 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(9, 'Klinik Pakar 1', 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(10, 'Klinik Pakar 2', 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(11, 'Klinik Pakar 3', 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(12, 'Klinik Pakar 4', 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(13, 'Farmasi Pesakit Luar', 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(14, 'Patologi & Transfusi', 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(15, 'ICU', 3, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(16, 'PICU', 3, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(17, 'HDW', 3, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(18, 'CCU', 3, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(19, 'CRW', 3, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(20, 'NICU', 3, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(21, 'Pentadbiran', 4, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(22, 'Pejabat Pakar', 4, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(23, 'Wad 5A', 5, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(24, 'Wad 5B', 5, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(25, 'Wad 5C', 5, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(26, 'Wad 5D', 5, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(27, 'Farmasi Satelit 1', 5, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(28, 'Wad 6A', 6, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(29, 'Wad 6B', 6, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(30, 'Wad 6C', 6, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(31, 'Wad 6D', 6, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(32, 'Farmasi Satelit 2', 6, '2023-05-31 03:41:01', '2023-05-31 03:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `serial_number`, `status`, `category_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 'ab', 'sn-704482', 0, 3, 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(2, 'officia', 'sn-298492', 0, 3, 2, '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(3, 'eum', 'sn-464913', 1, 3, 1, '2023-05-31 03:41:01', '2023-05-31 03:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_09_121607_create_suppliers_table', 1),
(6, '2022_02_09_121707_create_categories_table', 1),
(7, '2022_02_09_121708_create_items_table', 1),
(8, '2022_02_09_121714_create_departments_table', 1),
(9, '2022_02_09_121814_create_borrowers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `incharge_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `incharge_name`, `contact_number`, `created_at`, `updated_at`) VALUES
(1, 'qui', 'Justen Hilpert', '341-934-9170', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(2, 'quaerat', 'Mrs. Josianne Bednar PhD', '(480) 215-0449', '2023-05-31 03:41:01', '2023-05-31 03:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lionel Zemlak', 'west.deanna@example.org', '2023-05-31 03:41:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wx7NpoO5Gj', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(2, 'Cameron Pouros', 'delaney.wintheiser@example.org', '2023-05-31 03:41:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9TS514SUn5', '2023-05-31 03:41:01', '2023-05-31 03:41:01'),
(3, 'Ruchika', 'ruchika.sharma@indiaresults.com', NULL, '$2y$10$40bua0wB5gVFBGSAWmubIewuPvPT7FLhC26sfuBrxq85Xl.fjOVQi', NULL, '2023-05-31 03:41:42', '2023-05-31 03:41:42'),
(4, 'Chester Peck', 'ryvuv@mailinator.com', NULL, '$2y$10$hgy3iCb7aU0EyKWDvbgYAOjGDGUekJoDy8ZyY.w7HkET/OT5KJFGS', NULL, '2023-07-26 02:22:12', '2023-07-26 02:22:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowers_item_id_foreign` (`item_id`),
  ADD KEY `borrowers_department_id_foreign` (`department_id`),
  ADD KEY `borrowers_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD CONSTRAINT `borrowers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrowers_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrowers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `items_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
