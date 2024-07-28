-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2023 pada 18.53
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resep-makanan-coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan`
--

CREATE TABLE `bahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bahan` varchar(255) NOT NULL,
  `resep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bahan`
--

INSERT INTO `bahan` (`id`, `bahan`, `resep_id`, `created_at`, `updated_at`) VALUES
(8, 'Phasellus pellentesque felis massa,', 65, '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(9, 'eu lacinia turpis pellentesque ac.', 65, '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(10, 'Mauris varius feugiat felis ut cursus', 65, '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(11, 'Phasellus pellentesque felis massa,', 66, '2023-07-08 09:53:35', '2023-07-08 09:53:35'),
(12, 'eu lacinia turpis pellentesque ac.', 66, '2023-07-08 09:53:35', '2023-07-08 09:53:35'),
(13, 'Mauris varius feugiat felis ut cursus', 66, '2023-07-08 09:53:35', '2023-07-08 09:53:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `nama_kamar` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(30) NOT NULL,
  `jenis_kamar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `nama_kamar`, `harga`, `gambar`, `jenis_kamar`, `deskripsi`) VALUES
(4, 'Kabin', 400, '1685973376.jpg', 'Cabin', 'kamar ini dapat di muat 5 orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `langkah_pembuatan`
--

CREATE TABLE `langkah_pembuatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `langkah` varchar(255) NOT NULL,
  `resep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `langkah_pembuatan`
--

INSERT INTO `langkah_pembuatan` (`id`, `langkah`, `resep_id`, `created_at`, `updated_at`) VALUES
(44, 'Pellentesque non sapien leo.', 65, '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(45, 'Donec tempus risus a laoreet aliquam', 65, '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(46, 'Quisque non eros vel odio', 65, '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(47, 'Pellentesque non sapien leo.', 66, '2023-07-08 09:53:35', '2023-07-08 09:53:35'),
(48, 'Donec tempus risus a laoreet aliquam', 66, '2023-07-08 09:53:35', '2023-07-08 09:53:35'),
(49, 'Quisque non eros vel odio', 66, '2023-07-08 09:53:35', '2023-07-08 09:53:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_06_034500_create_resep_table', 2),
(6, '2023_07_06_044738_create_resepmakanan_table', 3),
(7, '2023_07_06_070847_create_sessions_table', 4),
(8, '2023_07_07_135238_create_langkah_pembuatan_table', 5),
(9, '2023_07_08_030520_create_langkah_pembuatan', 6),
(10, '2023_07_08_123807_create_bahan_table', 7),
(11, '2023_07_08_130915_create_likes_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `resepmakanan`
--

CREATE TABLE `resepmakanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `resepmakanan`
--

INSERT INTO `resepmakanan` (`id`, `gambar`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(65, '1688835104.jpg', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aliquam luctus pretium fermentum. Vestibulum ullamcorper dignissim nisi vestibulum dignissim. Proin sodales purus at vulputate sollicitudin. Sed laoreet molestie sapien,', '2023-07-08 09:51:44', '2023-07-08 09:51:44'),
(66, '1688835215.png', 'Lorem ipsum dolor sit amet', 'consectetur adipiscing elit. Aliquam luctus pretium fermentum. Vestibulum ullamcorper dignissim nisi vestibulum dignissim. Proin sodales purus at vulputate sollicitudin. Sed laoreet molestie sapien,', '2023-07-08 09:53:35', '2023-07-08 09:53:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gunawan', 'gunawan@gmail.com', NULL, '$2y$10$Fbp/V51zItbOx9CGXEytAeleRkzorYRmvvWGaL79OzDUT2bvchZve', NULL, '2023-07-04 08:33:19', '2023-07-04 08:33:19'),
(2, 'test', 'test1@gmail.com', NULL, '$2y$10$WVOYKjQ3Fnu/zQGySdRzB.7bhmAb78kyKm.MUYCXHWbCOwYSUcl1O', NULL, '2023-07-07 02:07:50', '2023-07-07 02:07:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bahan_resep_id_foreign` (`resep_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indeks untuk tabel `langkah_pembuatan`
--
ALTER TABLE `langkah_pembuatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `langkah_pembuatan_resep_id_foreign` (`resep_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `resepmakanan`
--
ALTER TABLE `resepmakanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `langkah_pembuatan`
--
ALTER TABLE `langkah_pembuatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `resepmakanan`
--
ALTER TABLE `resepmakanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahan`
--
ALTER TABLE `bahan`
  ADD CONSTRAINT `bahan_resep_id_foreign` FOREIGN KEY (`resep_id`) REFERENCES `resepmakanan` (`id`);

--
-- Ketidakleluasaan untuk tabel `langkah_pembuatan`
--
ALTER TABLE `langkah_pembuatan`
  ADD CONSTRAINT `langkah_pembuatan_resep_id_foreign` FOREIGN KEY (`resep_id`) REFERENCES `resepmakanan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
