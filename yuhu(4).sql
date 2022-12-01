-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2022 pada 11.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yuhu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_layanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_layanan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `id_layanan`, `nama_layanan`, `testing`, `info_layanan`, `created_at`, `updated_at`) VALUES
(2, '1234', 'Pelantikan PPAT', 'p', 'layanan ini untuk membuat rumah kalangan bawah', '2022-11-23 21:40:13', '2022-11-23 23:49:16'),
(3, '123', 'Ganti Nama', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 22:21:12', '2022-11-23 23:48:54'),
(4, '1', 'Pelepasan Sebagian Hak', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:49:42', '2022-11-23 23:49:42'),
(5, '1', 'Pemecahan Bidang', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:50:00', '2022-11-23 23:50:00'),
(6, '1', 'Pemisahan Bidang', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:50:21', '2022-11-23 23:50:21'),
(7, '1', 'Pencatatan/Pelunasan BPHTB/PPH', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:51:19', '2022-11-23 23:51:19'),
(8, '1', 'Pengangkatan Sita', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:51:43', '2022-11-23 23:51:43'),
(9, '2', 'Penggabungan Bidang', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:52:05', '2022-11-23 23:52:05'),
(10, '1', 'Peningkatan Kualitas PPAT sementara', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:52:41', '2022-11-23 23:52:41'),
(11, '2', 'Peralihan Pihak - Hibah', 'p', 'layanan ini untuk kalangan bawah', '2022-11-23 23:53:09', '2022-11-23 23:53:09'),
(12, 'das', 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', NULL, '-dapat diakses online oleh PPTA : Ya\r\n-dapat diakses online oleh Masyarakat : Tidak\r\n-dapat diakses online oleh Penilai Tanah : Tidak\r\n-dapat diakses online oleh Suerveyor : Tidak', '2022-11-25 00:19:06', '2022-11-25 00:22:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2022_11_24_033235_create_layanan_table', 1),
(11, '2022_11_24_033251_create_persyaratan_table', 1),
(12, '2022_11_24_033307_create_rincian_layanan_table', 1),
(13, '2022_11_24_074936_create_pemohons_table', 2),
(14, '2022_11_24_074957_create_pemohonans_table', 2),
(15, '2022_11_24_075018_create_rincian_permohonans_table', 2),
(16, '2022_11_25_031434_create_rincian_permohonans_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemohonans`
--

CREATE TABLE `pemohonans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemohonans`
--

INSERT INTO `pemohonans` (`id`, `id_permohonan`, `id_layanan`, `id_pemohon`, `id_user`, `tanggal`, `created_at`, `updated_at`) VALUES
(643, '1', '11', '656', '1', NULL, '2022-12-01 02:17:01', '2022-12-01 02:17:01'),
(644, '1', '11', '657', '1', NULL, '2022-12-01 03:56:47', '2022-12-01 03:56:47'),
(645, '1', '11', '658', '1', NULL, '2022-12-01 04:20:13', '2022-12-01 04:20:13'),
(646, '1', '11', '659', '1', NULL, '2022-12-01 04:43:25', '2022-12-01 04:43:25'),
(647, '1', '11', '660', '1', NULL, '2022-12-01 07:04:38', '2022-12-01 07:04:38'),
(648, '1', '11', '661', '1', NULL, '2022-12-01 07:36:51', '2022-12-01 07:36:51'),
(649, '1', '12', '662', '1', NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(650, '1', '11', '663', '1', NULL, '2022-12-01 08:55:04', '2022-12-01 08:55:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemohons`
--

CREATE TABLE `pemohons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemohons`
--

INSERT INTO `pemohons` (`id`, `nik`, `no_kk`, `nama_pemohon`, `alamat`, `no_hp`, `email`, `id_user`, `created_at`, `updated_at`) VALUES
(656, 'jhjh', 'hjh', 'jhjh', 'jhjh', 'jhjh', 'jhjhjh@jhjh.com', 1, '2022-12-01 02:17:01', '2022-12-01 02:17:01'),
(657, 'hjhjh', 'hj', 'hjhj', 'hjh', 'jhj', 'hjhjhjhjhH@Hjhjhjh.kjkjd', 1, '2022-12-01 03:56:47', '2022-12-01 03:56:47'),
(658, 'kkjkjk', 'jkjk', 'jkjk', 'jkjk', 'kjkjkkj', 'kjkjkjk@KJkjk.jkj', 1, '2022-12-01 04:20:13', '2022-12-01 04:20:13'),
(659, 'dad', 'jkjk', 'kjkjk', 'jkjkjkjkjkjk', 'hjhjhj@jkjjk.cojj', 'jhjhjh@Hjhjh.con', 1, '2022-12-01 04:43:25', '2022-12-01 04:43:25'),
(660, 'hjhj', NULL, 'jhjhj', 'hjhjhjh', 'jhjhj', 'hjhjhj@jhjh.d', 1, '2022-12-01 07:04:38', '2022-12-01 07:04:38'),
(661, 'kjkjk', NULL, 'jkj', 'kjk', 'jkjkj', 'kjkjk@fdf.fd', 1, '2022-12-01 07:36:51', '2022-12-01 07:36:51'),
(662, 'dsds', NULL, 'jkjkj', 'dsdsds', 'jkj', 'jkj@jkjk', 1, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(663, 'nik', NULL, 'nama pemohonnama pemohon edit', 'alamat', 'no hp', 'email@gmail.com', 1, '2022-12-01 08:55:04', '2022-12-01 08:55:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratan`
--

CREATE TABLE `persyaratan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_persyaratan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `persyaratan`
--

INSERT INTO `persyaratan` (`id`, `nama_persyaratan`, `entry_data`, `upload_data`, `status`, `created_at`, `updated_at`) VALUES
(5, 'KTP', '1', '1', 'Wajib', '2022-11-24 00:40:32', '2022-11-24 00:40:32'),
(6, 'Kartu Keluarga', '1', '1', 'Wajib', '2022-11-24 00:42:52', '2022-11-24 00:42:52'),
(7, 'Akta Jual Beli', '1', '1', 'Wajib', '2022-11-24 00:43:43', '2022-11-24 00:43:43'),
(8, 'Sertipikat Hak Atas Tanah', '1', '1', 'Wajib', '2022-11-25 00:30:59', '2022-11-25 00:30:59'),
(11, 'Akta Pemasukan Modal ke Perusahaan', '1', '1', 'wajib', '2022-11-25 01:26:04', '2022-11-25 01:26:04'),
(12, 'Fotocopy Pajak Bumi dan Bangunan', '1', '1', 'wajib', '2022-11-25 01:26:15', '2022-11-25 01:26:15'),
(13, 'Fotocopy Bea Perolehan Hak Tanah dan Bangunan', '1', '1', 'wajib', '2022-11-25 01:26:32', '2022-11-25 01:26:32'),
(14, 'Fotocopy Surat Setoran Pajak/PPH', '1', '1', 'wajib', '2022-11-25 01:26:43', '2022-11-25 01:26:43'),
(15, 'Fotocopy KTP / KK', '1', '1', 'wajib', '2022-11-25 01:26:53', '2022-11-25 01:26:53'),
(16, 'Surat Permohonan Keringanan Biaya', '1', '1', 'wajib', '2022-11-25 01:27:06', '2022-11-25 01:27:06'),
(17, 'Surat Permohonan', '1', '1', 'wajib', '2022-11-25 01:27:17', '2022-11-25 01:27:17'),
(18, 'Fotocopy KTP / Identitas Pemilik Hak', '1', '1', 'wajib', '2022-11-25 01:27:28', '2022-11-25 01:27:28'),
(19, 'Surat Pengantar PPAT', '1', '1', 'wajib', '2022-11-25 01:27:44', '2022-11-25 01:27:44'),
(20, 'Surat Kuasa Permohonan', '1', '1', 'wajib', '2022-11-25 01:28:02', '2022-11-25 01:28:02'),
(21, 'NPWP', '1', '1', 'wajib', '2022-11-25 01:28:15', '2022-11-25 01:28:15'),
(22, 'Surat Pernyataan Kepanjangan Nama', '1', '1', 'wajib', '2022-11-25 01:28:27', '2022-11-25 01:28:27'),
(23, 'Surat Pernyataan dari KAKANWIL', '1', '1', 'wajib', '2022-11-25 01:28:38', '2022-11-25 01:28:38'),
(24, 'Surat Pernyataan Pertanggungjawaban Mutlak Pelunasan BPHTB', '1', '1', 'wajib', '2022-11-25 01:28:49', '2022-11-25 01:28:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_layanan`
--

CREATE TABLE `rincian_layanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `id_persyaratan` int(11) NOT NULL,
  `nama_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rincian_layanan`
--

INSERT INTO `rincian_layanan` (`id`, `id_layanan`, `id_persyaratan`, `nama_layanan`, `created_at`, `updated_at`) VALUES
(5, 11, 11, 'layanan', '2022-11-24 00:44:56', '2022-11-24 00:45:20'),
(6, 11, 11, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:30:59', '2022-12-01 07:09:19'),
(7, 11, 11, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:31:15', '2022-11-25 01:31:15'),
(8, 12, 12, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:31:46', '2022-11-25 01:31:46'),
(9, 12, 13, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:32:16', '2022-11-25 01:32:16'),
(10, 12, 14, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:24:41', '2022-11-25 02:24:41'),
(11, 12, 15, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:25:14', '2022-11-25 02:25:14'),
(12, 12, 16, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:25:50', '2022-11-25 02:25:50'),
(13, 12, 17, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:26:06', '2022-11-25 02:26:06'),
(14, 12, 18, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:26:20', '2022-11-25 02:26:20'),
(15, 12, 19, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:26:32', '2022-11-25 02:26:32'),
(16, 12, 20, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:08', '2022-11-25 02:27:08'),
(17, 12, 21, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:23', '2022-11-25 02:27:23'),
(18, 12, 22, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:33', '2022-11-25 02:27:33'),
(19, 12, 24, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:46', '2022-11-25 02:27:46'),
(20, 12, 23, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:28:03', '2022-11-25 02:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_permohonans`
--

CREATE TABLE `rincian_permohonans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_permohonan` int(11) DEFAULT NULL,
  `id_persyaratan` int(11) DEFAULT NULL,
  `entry_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rincian_permohonans`
--

INSERT INTO `rincian_permohonans` (`id`, `id_permohonan`, `id_persyaratan`, `entry_data`, `upload_data`, `created_at`, `updated_at`) VALUES
(2581, 647, 5, 'jkjkjk', '1669878272.jpg', '2022-12-01 07:04:38', '2022-12-01 07:04:38'),
(2582, 647, 8, NULL, NULL, '2022-12-01 07:04:38', '2022-12-01 07:04:38'),
(2583, 648, 5, 'jkjkjkjkjkjkjkj', '1669880209.jpg', '2022-12-01 07:36:51', '2022-12-01 07:36:51'),
(2584, 648, 11, 'nanda', '1669880241.png', '2022-12-01 07:36:51', '2022-12-01 07:37:21'),
(2585, 649, 11, 'dsdsds', '1669884468.jpg', '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2586, 649, 12, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2587, 649, 13, 'dsds', '1669884490.jpg', '2022-12-01 08:47:50', '2022-12-01 08:48:10'),
(2588, 649, 14, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2589, 649, 15, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2590, 649, 16, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2591, 649, 17, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2592, 649, 18, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2593, 649, 19, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2594, 649, 20, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2595, 649, 21, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2596, 649, 22, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2597, 649, 24, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2598, 649, 23, NULL, NULL, '2022-12-01 08:47:50', '2022-12-01 08:47:50'),
(2599, 650, 5, 'dimmas', '1669884980.jpg', '2022-12-01 08:55:04', '2022-12-01 08:56:20'),
(2600, 650, 11, 'edit edit 2', '1669884843.png', '2022-12-01 08:55:04', '2022-12-01 08:55:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dimmas', 'dimmas@gmail.com', NULL, '$2y$10$r2Rxh9jzFOoeWdpYD.ICbOjL5xy8ATXlYZm0fn8j2FUijAx1aGooq', NULL, '2022-11-23 20:44:48', '2022-11-23 21:57:13'),
(4, 'dsds', 'ddsds@gmjlkl.com', NULL, '$2y$10$y3h4Xv97bqdgo1EogdAe5elnVPzpFAXPFWb1UJTL1rAQeZGfcmrRa', NULL, '2022-11-25 02:50:20', '2022-11-25 02:50:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pemohonans`
--
ALTER TABLE `pemohonans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemohons`
--
ALTER TABLE `pemohons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rincian_layanan`
--
ALTER TABLE `rincian_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rincian_permohonans`
--
ALTER TABLE `rincian_permohonans`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pemohonans`
--
ALTER TABLE `pemohonans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;

--
-- AUTO_INCREMENT untuk tabel `pemohons`
--
ALTER TABLE `pemohons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `rincian_layanan`
--
ALTER TABLE `rincian_layanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `rincian_permohonans`
--
ALTER TABLE `rincian_permohonans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2601;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
