-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 07.56
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_bayar`
--

CREATE TABLE `data_bayar` (
  `id` int(120) NOT NULL,
  `no_pendaftaran` varchar(309) NOT NULL,
  `tanggal` varchar(309) NOT NULL,
  `nama_siswa` varchar(309) NOT NULL,
  `asal_sekolah` varchar(250) NOT NULL,
  `gelombang` varchar(500) NOT NULL,
  `jumlah` bigint(250) NOT NULL,
  `bayar` bigint(250) NOT NULL,
  `kembalian` bigint(250) NOT NULL,
  `sisa` bigint(200) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_bayar`
--

INSERT INTO `data_bayar` (`id`, `no_pendaftaran`, `tanggal`, `nama_siswa`, `asal_sekolah`, `gelombang`, `jumlah`, `bayar`, `kembalian`, `sisa`, `keterangan`) VALUES
(5, 'BYR009', '15-05-2024', 'UDIN', 'TRITURA', '', 5000000, 5000000, 0, 0, 'Lunas'),
(7, 'BYR008', '16-05-2024', 'sapri', 'cina', '', 10000000, 10000000, 0, 0, 'Lunas'),
(8, 'BYR007', '16-05-2024', 'andre', 'rfr', '', 10000000, 10000000, 0, 0, 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ortu`
--

CREATE TABLE `data_ortu` (
  `id` int(111) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `nama_ortu` varchar(123) NOT NULL,
  `alamat_ortu` varchar(123) NOT NULL,
  `no_telOrtu` varchar(123) NOT NULL,
  `pekerjaan_ortu` varchar(1231) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_ortu`
--

INSERT INTO `data_ortu` (`id`, `nama_siswa`, `nama_ortu`, `alamat_ortu`, `no_telOrtu`, `pekerjaan_ortu`) VALUES
(1, 'ipulll', 'df', 'dsfg', '', 'fdg'),
(2, 'wildan', 'df', 'dsfg', '', 'fdg'),
(3, 'bahri', 'ada', 'kepo', '', 'ada'),
(5, 'WILDAN', '', '', '', ''),
(6, 'parmin', '', '', '', ''),
(7, 'SULE', '', '', '', ''),
(8, 'andre', '', '', '', ''),
(9, 'sapri', '', '', '', ''),
(10, 'UDIN', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(111) NOT NULL,
  `no_pendaftaran` varchar(123) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `ttl` varchar(123) NOT NULL,
  `jenis_kel` varchar(123) NOT NULL,
  `agama` varchar(123) NOT NULL,
  `no_telSiswa` varchar(123) NOT NULL,
  `asal_sekolah` varchar(123) NOT NULL,
  `alamat_sekolah` varchar(123) NOT NULL,
  `jurusan` varchar(123) NOT NULL,
  `tanggal` varchar(123) NOT NULL,
  `ukuran` varchar(1231) NOT NULL,
  `gelombang` varchar(1234) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `no_pendaftaran`, `nama_siswa`, `ttl`, `jenis_kel`, `agama`, `no_telSiswa`, `asal_sekolah`, `alamat_sekolah`, `jurusan`, `tanggal`, `ukuran`, `gelombang`) VALUES
(1, 'BYR001', 'ipulll', '44', 'Laki-Laki', 'Kristen', '666', 'gg', 'dd', 'PEMASARAN', '07-05-2024', 'XL', ''),
(2, 'BYR002', 'wildan', '44', 'Laki-Laki', 'Kristen', '666', 'MTS AL-IKHLAS', 'dd', 'PEMASARAN', '07-05-2024', 'S', ''),
(3, 'BYR003', 'bahri', 'jakarta,11,2006', 'Laki-Laki', 'Islam', '0888', 'ma', 'deket alik', 'REKAYASA PERANGKAT LUNAK', '07-05-2024', 'M', ''),
(5, 'BYR004', 'WILDAN', 'jakarta,11,2006', 'Laki-Laki', 'Kristen', '0888', 'rfr', 'W', 'AKUTANSI KEUANGAN DAN LEMBAGA', '14-05-2024', '', 'lucifer'),
(6, 'BYR005', 'parmin', '17-agustus-1945', 'Laki-Laki', 'Hindu', '0888', 'ma', 'kolong', 'AKUTANSI KEUANGAN DAN LEMBAGA', '14-05-2024', '', 'pertama'),
(7, 'BYR006', 'SULE', '17-agustus-1945', 'Laki-Laki', 'Kristen', '0888', 'alik', 'FF', 'REKAYASA PERANGKAT LUNAK', '14-05-2024', '', 'rt'),
(8, 'BYR007', 'andre', '25-desember-1800', 'Laki-Laki', 'Konghuchu', '0077', 'rfr', 'ww', 'DESAIN KOMUNIKASI VISUAL', '14-05-2024', '', 'tiga'),
(9, 'BYR008', 'sapri', '25-desember-1870', 'Laki-Laki', 'Katolik', '2323', 'cina', 'wuhan', 'PEMASARAN', '15-05-2024', '', 'pertama'),
(10, 'BYR009', 'UDIN', '20-desember-2000', 'Laki-Laki', 'Islam', '5555', 'TRITURA', 'CILANGKAP', 'REKAYASA PERANGKAT LUNAK', '15-05-2024', '', 'dua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_wali`
--

CREATE TABLE `data_wali` (
  `id` int(111) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `nama_wali` varchar(123) NOT NULL,
  `alamat_wali` varchar(123) NOT NULL,
  `no_telWali` varchar(123) NOT NULL,
  `pekerjaan_wali` varchar(1231) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_wali`
--

INSERT INTO `data_wali` (`id`, `nama_siswa`, `nama_wali`, `alamat_wali`, `no_telWali`, `pekerjaan_wali`) VALUES
(1, 'dan', 'fdh', 'dssg', '', '5y6yu'),
(2, 'dan', 'fdh', 'dssg', '', '5y6yu'),
(3, 'bahri', 'sul', 'jl', '', 'ada'),
(5, 'WILDAN', '', '', '', ''),
(6, 'parmin', '', '', '', ''),
(7, 'SULE', '', '', '', ''),
(8, 'andre', '', '', '', ''),
(9, 'sapri', '', '', '', ''),
(10, 'UDIN', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gel`
--

CREATE TABLE `tbl_gel` (
  `id` int(111) NOT NULL,
  `gelombang` varchar(111) NOT NULL,
  `nominal` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gel`
--

INSERT INTO `tbl_gel` (`id`, `gelombang`, `nominal`) VALUES
(1, 'pertama', 10000000),
(5, 'dua', 5000000),
(6, 'tiga', 10000000),
(7, 'empat', 30000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `nama` varchar(290) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(289) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(2, 'dann', 'petugas', '123', 'petugas'),
(16, 'vito', 'kroco', '123', 'petugas'),
(20, 'nana', 'oop', '66', 'admin'),
(21, 'parmin', 'min', '55', 'admin'),
(22, 'ipul', 'admin', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_bayar`
--
ALTER TABLE `data_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_wali`
--
ALTER TABLE `data_wali`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `tbl_gel`
--
ALTER TABLE `tbl_gel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_bayar`
--
ALTER TABLE `data_bayar`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_gel`
--
ALTER TABLE `tbl_gel`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
