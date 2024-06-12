-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2024 pada 08.04
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_arema`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_resep` int(10) UNSIGNED DEFAULT NULL,
  `id_obat` int(10) UNSIGNED DEFAULT NULL,
  `id_jasa` int(10) UNSIGNED DEFAULT NULL,
  `kuantitas` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_penjualan`, `id_resep`, `id_obat`, `id_jasa`, `kuantitas`, `satuan`, `subtotal`, `created_at`, `updated_at`) VALUES
(17, NULL, 8, NULL, 2, '100 mg', '24000.00', '2023-07-01 09:31:01', '2023-07-01 09:31:01'),
(17, NULL, NULL, 4, 1, 'jasa', '20000.00', '2023-07-01 09:31:01', '2023-07-01 09:31:01'),
(19, NULL, 8, NULL, 2, '100 mg', '24000.00', '2023-07-02 01:42:03', '2023-07-02 01:42:03'),
(19, NULL, NULL, 3, 1, 'jasa', '10000.00', '2023-07-02 01:42:03', '2023-07-02 01:42:03'),
(20, NULL, 3, NULL, 2, '100 mg', '28000.00', '2023-07-02 01:44:17', '2023-07-02 01:44:17'),
(22, NULL, 1, NULL, 2, '50 mL', '20000.00', '2024-05-20 03:48:03', '2024-05-20 03:48:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_racikan`
--

CREATE TABLE `detail_racikan` (
  `id_detail_racikan` int(10) UNSIGNED NOT NULL,
  `id_racikan` int(10) UNSIGNED DEFAULT NULL,
  `id_obat` int(10) UNSIGNED DEFAULT NULL,
  `kuantitas` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_racikan`
--

INSERT INTO `detail_racikan` (`id_detail_racikan`, `id_racikan`, `id_obat`, `kuantitas`, `satuan`, `created_at`, `updated_at`) VALUES
(2, 4, 9, 2, '250 mg', '2023-07-01 06:12:13', '2023-07-01 09:11:25'),
(3, 2, 8, 2, '100 mg', '2023-07-01 06:16:08', '2023-07-01 06:53:27'),
(4, 3, 3, 5, '100 mg', '2023-07-01 06:17:20', '2023-07-01 06:20:55'),
(5, 1, 2, 2, '100 mL', '2023-07-01 06:18:28', '2023-07-02 01:24:49'),
(6, 5, 4, 2, '200 mL', '2023-07-01 06:38:35', '2023-07-02 01:24:13'),
(8, 6, 2, 3, '100 mL', '2023-07-02 01:38:22', '2023-07-02 01:39:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_resep`
--

CREATE TABLE `detail_resep` (
  `id_detail` int(10) UNSIGNED NOT NULL,
  `id_resep` int(10) UNSIGNED NOT NULL,
  `id_obat` int(10) UNSIGNED DEFAULT NULL,
  `id_racikan` int(10) UNSIGNED DEFAULT NULL,
  `kuantitas` int(11) NOT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `harga` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_resep`
--

INSERT INTO `detail_resep` (`id_detail`, `id_resep`, `id_obat`, `id_racikan`, `kuantitas`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(2, 1, 2, NULL, 4, '100 mL', '10000.00', '2023-07-01 04:34:34', '2023-07-01 04:34:34'),
(3, 3, 8, NULL, 3, '100 mg', '5000.00', '2023-07-01 04:58:28', '2023-07-02 02:02:24'),
(4, 5, NULL, 4, 2, NULL, '10000.00', '2023-07-01 09:07:25', '2023-07-01 09:07:25'),
(5, 4, 6, NULL, 2, '100 mg', '10000.00', '2023-07-01 09:08:35', '2023-07-01 09:08:35'),
(11, 11, NULL, 6, 2, NULL, '10000.00', '2023-07-02 01:35:13', '2023-07-02 01:35:13'),
(12, 3, NULL, 3, 2, NULL, '10000.00', '2023-07-02 02:02:47', '2023-07-02 02:02:47');

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
-- Struktur dari tabel `jasa`
--

CREATE TABLE `jasa` (
  `id_jasa` int(10) UNSIGNED NOT NULL,
  `id_apoteker` int(10) UNSIGNED NOT NULL,
  `nama_jasa` varchar(255) NOT NULL,
  `tingkatan` varchar(255) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jasa`
--

INSERT INTO `jasa` (`id_jasa`, `id_apoteker`, `nama_jasa`, `tingkatan`, `harga`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 'Andi Mahito', '2', '20000.00', NULL, NULL, NULL),
(3, 3, 'Indah Rahmawanti', '1', '10000.00', NULL, NULL, NULL),
(4, 4, 'Sintia Wulandari', '2', '20000.00', NULL, NULL, NULL);

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
(5, '2023_03_20_080721_create_pengguna_table', 1),
(6, '2023_03_20_080948_create_obat_table', 1),
(7, '2023_03_20_081003_create_jasa_table', 1),
(8, '2023_03_20_081004_create_stok_obat_table', 1),
(9, '2023_03_20_082819_create_penjualan_table', 1),
(10, '2023_03_20_083014_create_racikan_table', 1),
(11, '2023_03_20_083136_create_detail_racikan_table', 1),
(12, '2023_03_20_083531_create_resep_obat_table', 1),
(13, '2023_03_20_083546_create_detail_resep_table', 1),
(14, '2023_03_20_085349_create_detail_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(10) UNSIGNED NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `jenis_obat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jenis_obat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Amoxilin', 'Kapsul', NULL, NULL, NULL),
(2, 'Panadol', 'Pil', NULL, NULL, NULL),
(3, 'Antimo', 'Kapsul', NULL, NULL, NULL),
(4, 'Makrolida', 'Tablet', NULL, NULL, NULL),
(5, 'Quinolon', 'Sirup', NULL, NULL, NULL),
(6, 'Tetraskilin', 'Kapsul', NULL, NULL, NULL),
(7, 'Penisilin', 'Pil', NULL, NULL, NULL),
(8, 'Ampicilin', 'Kapsul', NULL, NULL, NULL),
(9, 'Tobramycin', 'Tablet', NULL, NULL, NULL),
(10, 'Azithromycin', 'Pil', NULL, NULL, NULL);

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
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `umur`, `status`, `alamat`, `no_telepon`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Andi Mahito', 23, 'apoteker', 'Jombang', '08125123456', 'andi@andi.com', '$2y$10$HFDW6BQDDYuBlm5qjdzh9.lZck5ViOTBKmkPAZoe6QNrLW17jvImK', NULL, NULL, NULL),
(3, 'Putri Melati', 20, 'apoteker', 'Surabaya', '08125123456', 'putri@putri.com', '$2y$10$kQjdxKzacuDsZtZbAPkjjOX.Q8QSAoJj/xfvke/x0aBGswJlk//o.', NULL, NULL, NULL),
(4, 'Fitri', 25, 'apoteker', 'Bandung', '08125123456', 'fitri@fitri.com', '$2y$10$bHA3nMfsn39kLgYlK/V0X.qBOmqfwgPlDQKqvTGuBJwurDuXyWrJq', NULL, NULL, NULL),
(5, 'Andini', 21, 'apoteker', 'Surakarta', '08125123456', 'andini@andini.com', '$2y$10$XGNJwfiN0VPIaZCdcEvlHOsXmZ/cCElkHNtwixP2b3dfUKTNWXsm6', NULL, NULL, NULL),
(6, 'Santi', 19, 'apoteker', 'Bojonegoro', '08125123456', 'santi@santi.com', '$2y$10$U7Yy04VwNqwhYsbLDJNVbupt5C7lrLeW9R5QNYhWCJqHQO0wX4IKK', NULL, NULL, NULL),
(7, 'Gita', 24, 'apoteker', 'Malang', '08125123456', 'gita@gita.com', '$2y$10$NU6hrsZSU701TIDD6j.FiuGEm.vaCCOw8ICkZ2efCbxIczAHGUgxq', NULL, NULL, NULL),
(8, 'Deni', 25, 'apoteker', 'Tumpang', '08125123456', 'deni@deni.com', '$2y$10$kFLD2LOSZFTHrCJ6Z1dDfuT3PIqRAoLXuSCKohgaEU/DS.Ow9dduC', NULL, NULL, NULL),
(9, 'Ferdi', 22, 'customer', 'Surabaya', '08125123456', 'ferdi@ferdi.com', '$2y$10$Jf9SLC/E1OD.9/5CE6BqH.AkuZC4KTdbwIzxj.FWypNH8tHjjs6yS', NULL, NULL, NULL),
(10, 'Dinda', 24, 'dokter', 'Lumajang', '08125123456', 'dinda@dinda.com', '$2y$10$NPs.bI6HJpv5KS7PBIfhnOA.LLwv/VWTPXLs5ncGVfEttRV0Ad/2y', NULL, NULL, NULL),
(11, 'Citra', 25, 'customer', 'Jakarta', '08125123456', 'citra@citra.com', '$2y$10$9oq4UAt1djr/.bDmOQaIJurAj4vr/633ijCdaOht7y6A8SB11CJai', NULL, NULL, NULL),
(12, 'Gian', 27, 'dokter', 'Donomulyo', '08125123456', 'gian@gian.com', '$2y$10$h3Al8a7BzSxMKMlX0x967.nJYgYCq1eghB3eQgT7YEDoPmE2yN7Ha', NULL, NULL, NULL),
(13, 'Alvito', 24, 'customer', 'Maluku', '08125123456', 'alvito@alvito.com', '$2y$10$M/n60GgBTV0n.r2zAKaijuaOatWs9XziZIOSrFVTgU/Rr7yg018B6', NULL, NULL, NULL),
(14, 'Risky', 29, 'dokter', 'Lumajang', '08125123456', 'risky@risky.com', '$2y$10$WD7DHio45Kkp8rJb.5/4bOcq4yOJDdH6CTU7jwkSQF9IuF/JUngiu', NULL, NULL, NULL),
(15, 'Dina', 23, 'customer', 'Banyuwangi', '0821308294', 'dina@dina.com', '$2y$10$BDdM5goh2HFGMZbRbwxBuOnATJA2DDprKBiXhDlIsPEIRr/Dbaf9W', '2023-07-01 07:44:06', '2023-07-01 09:41:00', NULL),
(16, 'Siska', 26, 'customer', 'Sidoarjo', '085129402749', 'siska@siska.com', '$2y$10$uHHUmZcPVregovr50w8QIOtE0KL.7acfkCg1QXupGR/b1Ot.Y9.ei', '2023-07-01 09:03:44', '2023-07-01 09:40:43', NULL),
(17, 'Sintia', 25, 'dokter', 'Yogyakarta', '089828391720', 'sintia@sintia.com', '$2y$10$SemEdpgof0gmiXFpxGzipOEJXxlzFmASqsibHjqhIJAiyZoi..kwC', '2023-07-01 09:04:05', '2023-07-01 09:41:46', NULL),
(18, 'Dita', 25, 'apoteker', 'Jakarta', '0821657432', 'dita@gmail.com', '$2y$10$DpYiAoHr56cjJz9hcFdEZuH/yFjTK//HZaf78pC4dNQsIKbCumSRy', '2024-05-20 03:45:41', '2024-05-20 03:45:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `id_apoteker` int(10) UNSIGNED NOT NULL,
  `id_dokter` int(10) UNSIGNED DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_customer`, `id_apoteker`, `id_dokter`, `tanggal`, `created_at`, `updated_at`) VALUES
(17, 16, 2, 10, '2023-07-01 16:31:01', '2023-07-01 09:31:01', '2023-07-01 09:31:01'),
(18, 13, 5, 17, '2023-07-02 07:39:02', '2023-07-02 00:39:02', '2023-07-02 00:39:02'),
(19, 16, 5, 17, '2023-07-02 08:42:03', '2023-07-02 01:42:03', '2023-07-02 01:42:03'),
(20, 13, 5, NULL, '2023-07-02 08:44:17', '2023-07-02 01:44:17', '2023-07-02 01:44:17'),
(22, 15, 18, 17, '2024-05-20 10:48:02', '2024-05-20 03:48:02', '2024-05-20 03:48:02');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `racikan`
--

CREATE TABLE `racikan` (
  `id_racikan` int(10) UNSIGNED NOT NULL,
  `nama_racikan` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `racikan`
--

INSERT INTO `racikan` (`id_racikan`, `nama_racikan`, `harga`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 'Obat Sakit Mata', 10000, 'Minum obat ini 3x sehari', '2023-07-01 04:30:30', '2023-07-01 04:30:30'),
(2, 'Obat Sakit Gigi', 15000, 'Minum obat ini 3x sehari', '2023-07-01 04:30:44', '2023-07-01 04:30:44'),
(3, 'Obat Sakit Perut', 5000, 'Minum obat ini 2x sehari', '2023-07-01 04:30:58', '2023-07-01 04:30:58'),
(4, 'Obat Sakit Asma', 15000, 'Minum obat ini 2x sehari', '2023-07-01 06:07:57', '2023-07-01 06:07:57'),
(5, 'Obat Sakit Tumor', 15000, 'Minum obat ini 3x sehari', '2023-07-01 06:37:52', '2023-07-01 06:38:01'),
(6, 'Obat Sakit Kepala', 10000, 'Minum obat ini 3x sehari', '2023-07-02 00:59:02', '2023-07-02 00:59:02'),
(8, 'Obat Sakit Punggung', 12000, 'Minum obat ini 3x sehari', '2023-07-02 01:36:29', '2023-07-02 01:36:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep_obat`
--

CREATE TABLE `resep_obat` (
  `id_resep` int(10) UNSIGNED NOT NULL,
  `id_dokter` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `nama_resep` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `resep_obat`
--

INSERT INTO `resep_obat` (`id_resep`, `id_dokter`, `id_customer`, `nama_resep`, `deskripsi`, `tanggal`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 11, 'Obat Sakit Mata', 'Minum obat ini 3x sehari', '2023-06-25', 'non racikan', '2023-07-01 04:32:06', '2023-07-01 04:32:06'),
(2, 14, 13, 'Obat Sakit Gigi', 'Minum obat ini 3x  sehari', '2023-06-28', 'racikan', '2023-07-01 04:32:37', '2023-07-01 04:32:37'),
(3, 10, 9, 'Obat Sakit Perut', 'Minum obat ini 2x sehari', '2023-07-01', 'non racikan', '2023-07-01 04:33:00', '2023-07-01 04:33:00'),
(4, 17, 16, 'Obat Sakit Tumor', 'Minum obat ini 3x sehari', '2023-07-01', 'racikan', '2023-07-01 09:06:19', '2023-07-01 09:06:19'),
(5, 14, 15, 'Obat Sakit Asma', 'Minum obat ini 2x sehari', '2023-06-30', 'non racikan', '2023-07-01 09:06:56', '2023-07-01 09:06:56'),
(11, 14, 15, 'Obat Sakit Kepala', 'Minum obat ini 2x sehari', '2023-07-02', 'racikan', '2023-07-02 01:31:34', '2023-07-02 01:32:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_obat`
--

CREATE TABLE `stok_obat` (
  `id_obat` int(10) UNSIGNED NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stok_obat`
--

INSERT INTO `stok_obat` (`id_obat`, `satuan`, `kuantitas`, `harga`, `created_at`, `updated_at`) VALUES
(2, '100 mL', 15, '12000.00', NULL, '2023-07-02 01:39:36'),
(3, '100 mg', 8, '14000.00', NULL, '2023-07-02 01:44:17'),
(4, '200 mL', 16, '17000.00', NULL, '2023-07-02 01:26:57'),
(6, '100 mg', 13, '11500.00', NULL, '2023-07-02 00:39:02'),
(7, '100 mL', 10, '15000.00', NULL, '2023-07-01 06:17:20'),
(8, '100 mg', 18, '12000.00', NULL, '2023-07-02 01:42:03'),
(1, '100 g', 7, '10000.00', '2023-07-01 04:48:13', '2023-12-02 05:04:42'),
(1, '50 mL', 7, '10000.00', '2023-07-01 05:08:25', '2024-05-20 03:48:02'),
(9, '250 mg', 13, '10000.00', '2023-07-01 05:36:18', '2023-07-02 01:23:19'),
(10, '100 gr', 10, '15000.00', '2024-05-20 04:05:43', '2024-05-20 04:05:43');

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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `detail_penjualan_id_penjualan_foreign` (`id_penjualan`),
  ADD KEY `detail_penjualan_id_resep_foreign` (`id_resep`),
  ADD KEY `detail_penjualan_id_obat_foreign` (`id_obat`),
  ADD KEY `detail_penjualan_id_jasa_foreign` (`id_jasa`);

--
-- Indeks untuk tabel `detail_racikan`
--
ALTER TABLE `detail_racikan`
  ADD PRIMARY KEY (`id_detail_racikan`),
  ADD KEY `detail_racikan_id_racikan_foreign` (`id_racikan`),
  ADD KEY `detail_racikan_id_obat_foreign` (`id_obat`);

--
-- Indeks untuk tabel `detail_resep`
--
ALTER TABLE `detail_resep`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `detail_resep_id_resep_foreign` (`id_resep`),
  ADD KEY `detail_resep_id_obat_foreign` (`id_obat`),
  ADD KEY `detail_resep_id_racikan_foreign` (`id_racikan`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jasa`
--
ALTER TABLE `jasa`
  ADD PRIMARY KEY (`id_jasa`),
  ADD KEY `jasa_id_apoteker_foreign` (`id_apoteker`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `obat_nama_obat_index` (`nama_obat`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `pengguna_email_unique` (`email`),
  ADD KEY `pengguna_nama_index` (`nama`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `penjualan_id_customer_foreign` (`id_customer`),
  ADD KEY `penjualan_id_apoteker_foreign` (`id_apoteker`),
  ADD KEY `penjualan_id_dokter_foreign` (`id_dokter`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `racikan`
--
ALTER TABLE `racikan`
  ADD PRIMARY KEY (`id_racikan`),
  ADD KEY `racikan_nama_racikan_index` (`nama_racikan`);

--
-- Indeks untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `resep_obat_id_dokter_foreign` (`id_dokter`),
  ADD KEY `resep_obat_id_customer_foreign` (`id_customer`);

--
-- Indeks untuk tabel `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD KEY `stok_obat_id_obat_foreign` (`id_obat`);

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
-- AUTO_INCREMENT untuk tabel `detail_racikan`
--
ALTER TABLE `detail_racikan`
  MODIFY `id_detail_racikan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `detail_resep`
--
ALTER TABLE `detail_resep`
  MODIFY `id_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jasa`
--
ALTER TABLE `jasa`
  MODIFY `id_jasa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `racikan`
--
ALTER TABLE `racikan`
  MODIFY `id_racikan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  MODIFY `id_resep` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_id_jasa_foreign` FOREIGN KEY (`id_jasa`) REFERENCES `jasa` (`id_jasa`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_penjualan_id_obat_foreign` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_penjualan_id_penjualan_foreign` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_penjualan_id_resep_foreign` FOREIGN KEY (`id_resep`) REFERENCES `resep_obat` (`id_resep`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_racikan`
--
ALTER TABLE `detail_racikan`
  ADD CONSTRAINT `detail_racikan_id_obat_foreign` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_racikan_id_racikan_foreign` FOREIGN KEY (`id_racikan`) REFERENCES `racikan` (`id_racikan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_resep`
--
ALTER TABLE `detail_resep`
  ADD CONSTRAINT `detail_resep_id_obat_foreign` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_resep_id_racikan_foreign` FOREIGN KEY (`id_racikan`) REFERENCES `racikan` (`id_racikan`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_resep_id_resep_foreign` FOREIGN KEY (`id_resep`) REFERENCES `resep_obat` (`id_resep`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jasa`
--
ALTER TABLE `jasa`
  ADD CONSTRAINT `jasa_id_apoteker_foreign` FOREIGN KEY (`id_apoteker`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_id_apoteker_foreign` FOREIGN KEY (`id_apoteker`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE,
  ADD CONSTRAINT `penjualan_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE,
  ADD CONSTRAINT `penjualan_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD CONSTRAINT `resep_obat_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE,
  ADD CONSTRAINT `resep_obat_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD CONSTRAINT `stok_obat_id_obat_foreign` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
