-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2022 pada 13.10
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_paswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_kegiatan`
--

CREATE TABLE `tab_kegiatan` (
  `id` int(2) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `nama_kegiatan` varchar(100) DEFAULT NULL,
  `narasumber` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_kelompok`
--

CREATE TABLE `tab_kelompok` (
  `id` int(5) NOT NULL,
  `nama_kelompok` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_kelompok`
--

INSERT INTO `tab_kelompok` (`id`, `nama_kelompok`) VALUES
(2, '1'),
(3, '2'),
(4, '3'),
(5, '4'),
(6, '5'),
(7, '6'),
(8, '7'),
(9, '8'),
(10, '9'),
(11, '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_panitia`
--

CREATE TABLE `tab_panitia` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(14) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_perlengkapan`
--

CREATE TABLE `tab_perlengkapan` (
  `id` int(2) NOT NULL,
  `perlengkapan` text DEFAULT NULL,
  `kategori` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_peserta`
--

CREATE TABLE `tab_peserta` (
  `nim` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `prodi` varchar(20) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_peserta`
--

INSERT INTO `tab_peserta` (`nim`, `nama`, `prodi`, `semester`, `kelas`, `no_hp`, `email`, `alamat`, `jenis_kelamin`, `foto`, `agama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(2101, 'Bagas', 'SI', 3, 'Minggu', '81333334444', 'bagas@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2102, 'Adit', 'SI', 3, 'Malam', '81333334444', 'adit@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-02'),
(2103, 'Dani', 'TI', 3, 'Pagi', '81333334444', 'Dani@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-03'),
(2110, 'Septi', 'TI', 3, 'Malam', '81333334444', 'Septi@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2113, 'Dea', 'SI', 3, 'Minggu', '81333334444', 'dea@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2114, 'Udin', 'SI', 3, 'Malam', '81333334444', 'udin@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-02'),
(2115, 'Alfa', 'TI', 3, 'Pagi', '81333334444', 'alfa@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-03'),
(2116, 'Dini', 'SI', 3, 'Sabtu', '81333334444', 'dini@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-01'),
(2117, 'Wida', 'TI', 3, 'Minggu', '81333334444', 'wida@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-11'),
(2118, 'Putri', 'TI', 3, 'Pagi', '81333334444', 'Putri@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2119, 'Safa', 'SI', 3, 'Sabtu', '81333334444', 'Safa@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2121, 'Linda', 'SI', 3, 'Malam', '81333334444', 'Linda@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2122, 'Adin', 'TI', 3, 'Pagi', '81333334444', 'Adin@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2123, 'Emi', 'SI', 3, 'Sabtu', '81333334444', 'Emi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2124, 'Umi', 'TI', 3, 'Malam', '81333334444', 'Umi@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2125, 'Dodi', 'SI', 3, 'Minggu', '81333334444', 'Dodi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2126, 'Dafi', 'TI', 3, 'Pagi', '81333334444', 'Dafi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2127, 'Edi', 'TI', 3, 'Malam', '81333334444', 'Edi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2128, 'Franst', 'SI', 3, 'Malam', '81333334444', 'Franst@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2129, 'Lucky', 'TI', 3, 'Malam', '81333334444', 'Lucky@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2130, 'Umar', 'SI', 3, 'Malam', '81333334444', 'Umar@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2131, 'Khalid', 'TI', 3, 'Pagi', '81333334444', 'Khalid@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2132, 'Saad', 'SI', 3, 'Sabtu', '81333334444', 'Saad@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2133, 'Ibnu', 'TI', 3, 'Malam', '81333334444', 'Ibnu@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2134, 'Andi', 'TI', 3, 'Malam', '81333334444', 'Andi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2135, 'Eni', 'TI', 3, 'Pagi', '81333334444', 'Eni@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2136, 'Rara', 'SI', 3, 'Minggu', '81333334444', 'Rara@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2137, 'Rani', 'SI', 3, 'Malam', '81333334444', 'Rani@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2138, 'Sea', 'SI', 3, 'Pagi', '81333334444', 'Sea@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2139, 'Sani', 'SI', 3, 'Malam', '81333334444', 'Sani@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2140, 'Olive', 'TI', 3, 'Minggu', '81333334444', 'Olive@gmail.com', 'Jakarta', 2, '', 'Kristen', 'Bekasi', '2000-08-09'),
(2141, 'Gref', 'SI', 3, 'Minggu', '81333334444', 'Gref@gmail.com', 'Jakarta', 1, '', 'Kristen', 'Jakarta', '2000-08-09'),
(2142, 'Anton', 'SI', 3, 'Pagi', '81333334444', 'Anton@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2143, 'Lean', 'TI', 3, 'Malam', '81333334444', 'Lean@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2144, 'Jhony', 'TI', 3, 'Pagi', '81333334444', 'Jhony@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2145, 'Jea', 'SI', 3, 'Sabtu', '81333334444', 'Jea@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2146, 'Lou', 'TI', 3, 'Malam', '81333334444', 'Lou@gmail.com', 'Jakarta', 1, '', 'Budha', 'Bekasi', '2000-08-09'),
(2147, 'Erik', 'SI', 3, 'Sabtu', '81333334444', 'Erik@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2148, 'Fred', 'TI', 3, 'Malam', '81333334444', 'Fred@gmail.com', 'Jakarta', 1, '', 'Hindu', 'Bekasi', '2000-08-09'),
(2149, 'Nui', 'SI', 3, 'Malam', '81333334444', 'Nui@gmail.com', 'Jakarta', 2, '', 'Islam', 'Jakarta', '2000-08-09'),
(2150, 'Yui', 'SI', 3, 'Sabtu', '81333334444', 'Yui@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2151, 'Popi', 'SI', 3, 'Pagi', '81333334444', 'Popi@gmail.com', 'Jakarta', 2, '', 'Budha', 'Jakarta', '2000-08-09'),
(2152, 'Puma', 'TI', 3, 'Malam', '81333334444', 'Puma@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2153, 'Rendi', 'SI', 3, 'Pagi', '81333334444', 'Rendi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Bekasi', '2000-08-09'),
(2154, 'Lodi', 'TI', 3, 'Sabtu', '81333334444', 'Lodi@gmail.com', 'Jakarta', 2, '', 'Kristen', 'Jakarta', '2000-08-09'),
(2155, 'Alex', 'SI', 3, 'Pagi', '81333334444', 'Alex@gmail.com', 'Jakarta', 1, '', 'Kristen', 'Bekasi', '2000-08-09'),
(2156, 'Xander', 'SI', 3, 'Malam', '81333334444', 'Xander@gmail.com', 'Jakarta', 1, '', 'Kristen', 'Jakarta', '2000-08-09'),
(2157, 'Kowi', 'TI', 3, 'Malam', '81333334444', 'Kowi@gmail.com', 'Jakarta', 1, '', 'Islam', 'Jakarta', '2000-08-09'),
(2158, 'Kila', 'SI', 3, 'Pagi', '81333334444', 'Kila@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09'),
(2159, 'Caca', 'TI', 3, 'Sabtu', '81333334444', 'Caca@gmail.com', 'Jakarta', 2, '', 'Islam', 'Bekasi', '2000-08-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_peserta_kelompok`
--

CREATE TABLE `tab_peserta_kelompok` (
  `id` int(2) NOT NULL,
  `nim` int(11) DEFAULT NULL,
  `id_kelompok` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_peserta_kelompok`
--

INSERT INTO `tab_peserta_kelompok` (`id`, `nim`, `id_kelompok`) VALUES
(1, 2142, 2),
(2, 2122, 2),
(3, 2121, 2),
(4, 2135, 2),
(5, 2123, 2),
(8, 2147, 3),
(9, 2153, 3),
(10, 2124, 3),
(11, 2136, 3),
(12, 2118, 3),
(15, 2119, 4),
(16, 2130, 4),
(17, 2133, 4),
(18, 2140, 4),
(19, 2102, 4),
(22, 2158, 5),
(23, 2155, 5),
(24, 2141, 5),
(25, 2125, 5),
(26, 2113, 5),
(29, 2139, 6),
(30, 2110, 6),
(31, 2143, 6),
(32, 2131, 6),
(33, 2115, 6),
(36, 2127, 7),
(37, 2157, 7),
(38, 2152, 7),
(39, 2156, 7),
(40, 2150, 7),
(43, 2116, 8),
(44, 2149, 8),
(45, 2132, 8),
(46, 2145, 8),
(47, 2144, 8),
(50, 2148, 9),
(51, 2138, 9),
(52, 2134, 9),
(53, 2146, 9),
(54, 2117, 9),
(57, 2101, 10),
(58, 2128, 10),
(59, 2159, 10),
(60, 2151, 10),
(61, 2137, 10),
(64, 2154, 11),
(65, 2126, 11),
(66, 2114, 11),
(67, 2129, 11),
(68, 2103, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_tamu`
--

CREATE TABLE `tab_tamu` (
  `id` int(2) NOT NULL,
  `nama_tamu` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_tata_tertib`
--

CREATE TABLE `tab_tata_tertib` (
  `id` int(2) NOT NULL,
  `tata_tertib` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_user`
--

CREATE TABLE `tab_user` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_user`
--

INSERT INTO `tab_user` (`username`, `password`) VALUES
('Bagas', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tab_kegiatan`
--
ALTER TABLE `tab_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_kelompok`
--
ALTER TABLE `tab_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_panitia`
--
ALTER TABLE `tab_panitia`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tab_perlengkapan`
--
ALTER TABLE `tab_perlengkapan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_peserta`
--
ALTER TABLE `tab_peserta`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tab_peserta_kelompok`
--
ALTER TABLE `tab_peserta_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_tamu`
--
ALTER TABLE `tab_tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_tata_tertib`
--
ALTER TABLE `tab_tata_tertib`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tab_kegiatan`
--
ALTER TABLE `tab_kegiatan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tab_kelompok`
--
ALTER TABLE `tab_kelompok`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tab_perlengkapan`
--
ALTER TABLE `tab_perlengkapan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tab_peserta`
--
ALTER TABLE `tab_peserta`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2160;

--
-- AUTO_INCREMENT untuk tabel `tab_peserta_kelompok`
--
ALTER TABLE `tab_peserta_kelompok`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `tab_tamu`
--
ALTER TABLE `tab_tamu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tab_tata_tertib`
--
ALTER TABLE `tab_tata_tertib`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
