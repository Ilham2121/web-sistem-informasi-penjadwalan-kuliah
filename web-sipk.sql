-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2024 at 09:06 PM
-- Server version: 8.2.0
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-sipk`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(10) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat_dosen` varchar(100) NOT NULL,
  `noHp_dosen` varchar(15) NOT NULL,
  `email_dosen` varchar(25) NOT NULL,
  `foto_dosen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `alamat_dosen`, `noHp_dosen`, `email_dosen`, `foto_dosen`) VALUES
('0406107803', 'Halimil Fathi', 'Purwakarta', '087079993011', 'halimil.fathi@pei.ac.id', 'Foto Dosen/1641823907-Man.jpg'),
('0408057602', 'Widya Andayani Rahayu', 'Koloni Indorama', '087879793432', 'widya.andayani@pei.ac.id', 'Foto Dosen/1641823608-Woman.jpg'),
('0412128205', 'Musawarman', 'Cikalong Wetan', '085795192182', 'musawarman@pei.ac.id', 'Foto Dosen/1641969003-Man.jpg'),
('0708098901', 'Muhammad Nugraha', 'Purwakarta', '081222771911', 'nugraha@pei.ac.id', ''),
('1005128601', 'Heti Mulyani', 'Wanayasa', '085294854501', 'heti.mulyani@pei.ac.id', ''),
('1017088502', 'Ricak Agus Setiawan', '', '087821555203', 'ricak@pei.ac.id', ''),
('1031212345', 'Ade Winarni', 'Wanayasa', '087862030400', 'adewina@pei.ac.id', 'Foto Dosen/1642184945-Woman.jpg'),
('201904005', 'Nopi Rahmawati', 'jatiluhur', '089609405716', 'nopiraa01@gmail.com', 'Foto Dosen/1642184488-[09]Ahma_01.png');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `kd_hari` varchar(10) NOT NULL,
  `nama_hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`kd_hari`, `nama_hari`) VALUES
('H001', 'Senin'),
('H002', 'Selasa'),
('H003', 'Rabu'),
('H004', 'Kamis'),
('H005', "Jum\'at");

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_jadwal` varchar(10) NOT NULL,
  `kd_hari` varchar(10) NOT NULL,
  `kd_jam` varchar(10) NOT NULL,
  `kd_matakuliah` varchar(10) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `kd_prodi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`id`, `kd_jadwal`, `kd_hari`, `kd_jam`, `kd_matakuliah`, `nidn`, `kd_ruangan`, `kd_prodi`) VALUES
(1, 'JD0001', 'H001', 'J001', 'SE505', '1031212345', 'R006', 'PRD004'),
(2, 'JD0002', 'H001', 'J003', 'GC501', '0408057602', 'R006', 'PRD004'),
(3, 'JD0003', 'H002', 'J010', 'SE506', '1031212345', 'R005', 'PRD004'),
(4, 'JD0004', 'H002', 'J002', 'SE502', '1017088502', 'R005', 'PRD004'),
(5, 'JD0005', 'H003', 'J002', 'SE504', '0708098901', 'R007', 'PRD004'),
(6, 'JD0006', 'H004', 'J010', 'SE503', '0412128205', 'R006', 'PRD004'),
(7, 'JD0007', 'H005', 'J003', 'SE501', '0412128205', 'R007', 'PRD004');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `kd_jam` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`kd_jam`, `start_time`, `end_time`) VALUES
('J001', '08:00:00', '22:00:00'),
('J002', '03:00:00', '07:00:00'),
('J003', '17:00:00', '20:00:00'),
('J004', '00:00:00', '00:00:00'),
('J005', '00:00:00', '00:00:00'),
('J006', '00:00:00', '00:00:00'),
('J007', '00:00:00', '00:00:00'),
('J008', '00:00:00', '00:00:00'),
('J009', '00:00:00', '00:00:00'),
('J010', '00:40:00', '17:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_matakuliah` varchar(10) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL,
  `sks` int NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kd_matakuliah`, `nama_matakuliah`, `sks`, `semester`) VALUES
('GC101', 'Bahasa Inggris 1 (VOCAB)', 2, '1'),
('GC201', 'Bahasa Inggris 2 ( Speaking)', 2, '2'),
('GC301', 'Bahasa Inggris 3 ( Reading)', 2, '3'),
('GC401', 'Bahasa Inggris 4 (Writing)', 2, '4'),
('GC501', 'Bahasa Inggris 5 (Tenses)', 2, '5'),
('GC601', 'Bahasa Inggris 6 (TOEIC)', 2, '6'),
('GC701', 'Bahasa Indonesia', 2, '7'),
('GC702', 'Statistik', 3, '7'),
('GC801', 'Kewarganegaraan', 2, '8'),
('GC802', 'Pancasila', 2, '8'),
('GC803', 'Pendidikan Agama', 2, '8'),
('SE101', 'Algoritma & Pemrograman', 3, '1'),
('SE102', 'Aljabar Linear', 2, '1'),
('SE103', 'Kalkulus', 2, '1'),
('SE104', 'Komunikasi Data & Jaringan Komputer', 3, '1'),
('SE105', 'Pengantar Teknologi Informasi & Komunikasi', 2, '1'),
('SE106', 'Praktek Magang DTY 1', 1, '1'),
('SE107', 'Sistem Operasi', 3, '1'),
('SE201', 'Arsitektur Komputer', 2, '2'),
('SE202', 'Dasar-Dasar Keamanan Komputer', 3, '2'),
('SE203', 'Design dan Pemrograman Database SQL', 3, '2'),
('SE204', 'Pengantar Interaksi Manusia dan Komputer', 2, '2'),
('SE205', 'Pengantar Rekayasa Perangkat Lunak', 2, '2'),
('SE206', 'Praktek Magang DTY 2', 1, '2'),
('SE207', 'Struktur Data', 3, '2'),
('SE301', 'Analisis & Desain Perangkat Lunak', 3, '3'),
('SE302', 'Pemrograman Database PL/SQL', 4, '3'),
('SE303', 'Pemrograman Berorientasi Objek', 4, '3'),
('SE304', 'Pemrograman WEB 1', 3, '3'),
('SE305', 'Matematika Diskrit', 2, '3'),
('SE401', 'Pemrograman XML', 3, '4'),
('SE402', 'Keamanan Perangkat Lunak', 2, '4'),
('SE403', 'Oracle Application Express (APEX)', 3, '4'),
('SE404', 'Pemrograman Berorientasi Objek Lanjut', 4, '4'),
('SE405', 'Pemrograman WEB 2 (PHP)', 3, '4'),
('SE406', 'Rekayasa Kebutuhan Perangkat Lunak', 2, '4'),
('SE501', 'Pemrograman Perangkat Bergerak 1', 3, '5'),
('SE502', 'Pengujian Perangkat Lunak', 2, '5'),
('SE503', 'Pemrograman Visual', 4, '5'),
('SE504', 'Pemrograman WEB 3 (Framework)', 3, '5'),
('SE505', 'Sistem Terdistribusi', 3, '5'),
('SE506', 'Enterprise Resource Planning (ERP)', 3, '5'),
('SE601', 'Data Mining', 3, '6'),
('SE602', 'Pemrograman Perangkat Bergerak 2', 3, '6'),
('SE603', 'Jaminan Kualitas Perangkat Lunak (SOA)', 3, '6'),
('SE604', 'Manajemen Proyek Perangkat Lunak', 3, '6'),
('SE605', 'Cloud Computing', 3, '6'),
('SE606', 'Sistem Pendukung Keputusan', 3, '6'),
('SE701', 'Metodologi Penelitian', 2, '7'),
('SE702', 'Pemrograman IOS', 4, '7'),
('SE703', 'Praktik Kerja Lapang', 6, '7'),
('SE801', 'Etika Profesi', 2, '8'),
('SE802', 'Tugas Akhir', 6, '8'),
('SE803', 'Technopreneur', 2, '8');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_13_181237_create_jadwal_table', 2),
(6, '2024_05_20_120207_create_attendances_table', 2),
(7, '2024_05_20_121838_create_attendances_table', 3),
(8, '2024_05_20_162029_add_start_end_time_to_jam_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensis`
--

CREATE TABLE `presensis` (
  `id` bigint UNSIGNED NOT NULL,
  `jadwal_id` bigint UNSIGNED NOT NULL,
  `mahasiswa_id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('hadir','izin','sakit','alpha') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `presensis`
--

INSERT INTO `presensis` (`id`, `jadwal_id`, `mahasiswa_id`, `tanggal`, `status`, `created_at`, `updated_at`) VALUES
(65, 2, 3, '2024-05-20', 'hadir', '2024-05-20 12:06:16', '2024-05-20 12:06:16'),
(66, 2, 4, '2024-05-20', 'hadir', '2024-05-20 12:06:16', '2024-05-20 12:06:16'),
(67, 2, 5, '2024-05-20', 'hadir', '2024-05-20 12:06:16', '2024-05-20 12:06:16'),
(68, 2, 13, '2024-05-20', 'hadir', '2024-05-20 12:06:16', '2024-05-20 12:06:16'),
(69, 1, 3, '2024-05-20', 'sakit', '2024-05-20 13:07:38', '2024-05-20 13:07:38'),
(70, 1, 4, '2024-05-20', 'hadir', '2024-05-20 13:07:38', '2024-05-20 13:07:38'),
(71, 1, 5, '2024-05-20', 'izin', '2024-05-20 13:07:38', '2024-05-20 13:07:38'),
(72, 1, 13, '2024-05-20', 'alpha', '2024-05-20 13:07:38', '2024-05-20 13:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kd_prodi` varchar(10) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kd_prodi`, `nama_prodi`, `keterangan`) VALUES
('PRD001', 'Teknologi Mesin', 'MSN'),
('PRD002', 'Teknik Mekatronika', 'MKT'),
('PRD003', 'Teknologi Listrik', 'ELKT'),
('PRD004', 'Teknologi Rekayasa Perangkat Lunak', 'TRPL');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(25) NOT NULL,
  `kapasitas` int NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`kd_ruangan`, `nama_ruangan`, `kapasitas`, `keterangan`) VALUES
('R001', 'B1', 30, 'Kelas'),
('R002', 'B2', 30, 'Kelas'),
('R003', 'B3', 30, 'Kelas'),
('R004', 'B4', 30, 'Kelas'),
('R005', 'B5', 30, 'Kelas'),
('R006', 'B7', 30, 'Laboratorium Komputer'),
('R007', 'B8', 30, 'Laboratorium Komputer'),
('R008', 'Lab Kimia', 30, 'Laboratorium'),
('R009', 'Lab Fisika', 30, 'Laboratorium'),
('R010', 'Bengkel Mesin', 30, 'Workshop'),
('R011', 'Bengkel Mekatronika', 30, 'Workshop'),
('R012', 'Bengkel Elektro', 30, 'Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `kd_TA` varchar(10) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`kd_TA`, `tahun_akademik`, `semester`, `status`) VALUES
('TA20181', '2018', 'Ganjil', 'Aktif'),
('TA20182', '2018', 'Genap', 'Aktif'),
('TA20191', '2019', 'Ganjil', 'Aktif'),
('TA20192', '2019', 'Genap', 'Aktif'),
('TA20201', '2020', 'Ganjil', 'Aktif'),
('TA20202', '2020', 'Genap', 'Aktif'),
('TA20211', '2021', 'Ganjil', 'Aktif'),
('TA20212', '2021', 'Genap', 'Aktif'),
('TA20221', '2022', 'Ganjil', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `foto`) VALUES
(3, 'Luthfiyah Sakinah', 'piaasan@gmail.com', NULL, '$2y$10$kVeu4DVoaTTIcBPM33xJteDKCOMICeXVtCcl1YSp4dKWZ84.IM1l2', NULL, '2022-01-11 00:27:01', '2022-01-18 09:31:32', 'Pengguna', 'foto/1642523492-[20]Dedeek_04.png'),
(4, 'Ayu Siti Rohmah', 'ayu@gmail.com', NULL, '$2y$10$wsVZGFeDmvml2bbPheHbceAoh38CTeY1IdYdLCxR8SO6ZE1OjB9Te', NULL, '2022-01-11 23:31:19', '2022-01-18 09:31:49', 'Pengguna', 'foto/1642523509-[16]Aleek_06.png'),
(5, 'Adila', 'adila@gmail.com', NULL, '$2y$10$rCr2nXsQ..9xjMrPX1xJHu.7KcxB8UCVf4YjdZAkVXmhlnMa3iL1G', NULL, '2022-01-12 06:07:09', '2022-01-12 06:07:09', 'Pengguna', NULL),
(8, 'Nopi Rahmawati', 'nopiraa01@gmail.com', NULL, '$2y$10$mi3Y4fGK3I.QNP7e3ay75.vFHNPJy.a8ubJTVeKAK0aNpGTmaEXwy', NULL, '2022-01-17 08:37:15', '2022-01-18 10:22:13', 'Administrator', 'foto/1642526533-[09]Ahma_01.png'),
(12, 'king', 'kingkang@gmail.com', NULL, '$2y$10$Rwx76a91r6Ael8GoYuCZMOPo6ZGq6.iKfqFn65n8qDCqvqLJ6hBJe', NULL, '2022-01-26 11:23:03', '2022-01-26 11:23:03', 'Administrator', NULL),
(13, 'Jacks', 'jack@gmail.com', NULL, '$2y$10$EbgQAgHQgycxCpjlRLG6.uHzZBD/Ghj5M8knNxff7y3mRZSpTMWJW', NULL, '2024-05-19 23:12:15', '2024-05-19 23:12:15', 'Pengguna', NULL),
(14, 'Dosen', 'dosen@gmail.com', NULL, '$2y$10$RIBkv0mwOxCubGLS.Vaa6ePV1Tv3S15.M2LzS7cbbojO7cqbdmhVG', NULL, '2024-05-20 04:46:02', '2024-05-20 04:46:02', 'Dosen', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `kd_waktu` varchar(10) NOT NULL,
  `kd_hari` varchar(10) NOT NULL,
  `kd_jam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`kd_hari`);

--
-- Indexes for table `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`kd_jam`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_matakuliah`);

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
-- Indexes for table `presensis`
--
ALTER TABLE `presensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presensis_jadwal_id_foreign` (`jadwal_id`),
  ADD KEY `presensis_mahasiswa_id_foreign` (`mahasiswa_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kd_prodi`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`kd_TA`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`kd_waktu`),
  ADD UNIQUE KEY `kd_hari` (`kd_hari`,`kd_jam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `presensis`
--
ALTER TABLE `presensis`
  ADD CONSTRAINT `presensis_jadwal_id_foreign` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal_kuliah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `presensis_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
