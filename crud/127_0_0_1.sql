-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2019 pada 13.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobahitung`
--
CREATE DATABASE IF NOT EXISTS `cobahitung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cobahitung`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `id` int(5) NOT NULL,
  `no_bobot` int(5) NOT NULL,
  `nilai` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`id`, `no_bobot`, `nilai`) VALUES
(32, 1, '0.800'),
(32, 2, '0.400'),
(32, 3, '0.700'),
(33, 1, '0.600'),
(33, 2, '0.800'),
(33, 3, '0.900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotung`
--

CREATE TABLE `hotung` (
  `nama_sales` varchar(25) NOT NULL,
  `nama_bobot` varchar(5) NOT NULL,
  `nilai` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotung`
--

INSERT INTO `hotung` (`nama_sales`, `nama_bobot`, `nilai`) VALUES
('Hendra', 'TO', '0'),
('Hendra', 'PJP', '1'),
('Hendra', 'BP', '0'),
('Hendra', 'IQ', '0'),
('Ridwan', 'TO', '1'),
('Ridwan', 'PJP', '1'),
('Ridwan', 'BP', '0'),
('Ridwan', 'IQ', '0'),
('Yessy', 'TO', '1'),
('Yessy', 'PJP', '1'),
('Yessy', 'BP', '0'),
('Yessy', 'IQ', '0'),
('Tri', 'TO', '1'),
('Tri', 'PJP', '1'),
('Tri', 'BP', '1'),
('Tri', 'IQ', '0'),
('Firman', 'TO', '1'),
('Firman', 'PJP', '1'),
('Firman', 'BP', '0'),
('Firman', 'IQ', '0'),
('Andre', 'TO', '1'),
('Andre', 'PJP', '1'),
('Andre', 'BP', '0'),
('Andre', 'IQ', '0'),
('Rizky', 'TO', '1'),
('Rizky', 'PJP', '1'),
('Rizky', 'BP', '0'),
('Rizky', 'IQ', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `No_bobot` int(5) NOT NULL,
  `nilai` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`No_bobot`, `nilai`) VALUES
(1, '40.500'),
(2, '30.500'),
(3, '27.565');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sampel`
--

CREATE TABLE `sampel` (
  `id_sales` int(2) NOT NULL,
  `no_bobot` int(2) NOT NULL,
  `Nilai` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sampel`
--

INSERT INTO `sampel` (`id_sales`, `no_bobot`, `Nilai`) VALUES
(32, 1, '0.4'),
(32, 2, '1.0'),
(32, 3, '0.2'),
(32, 4, '0.2'),
(33, 1, '1.0'),
(33, 2, '1.0'),
(33, 3, '0.2'),
(33, 4, '0.2'),
(41, 1, '1.0'),
(41, 2, '1.0'),
(41, 3, '0.4'),
(41, 4, '0.4'),
(45, 1, '1.0'),
(45, 2, '1.0'),
(45, 3, '0.6'),
(45, 4, '0.4'),
(46, 1, '0.8'),
(46, 2, '1.0'),
(46, 3, '0.2'),
(46, 4, '0.2'),
(47, 1, '0.8'),
(47, 2, '1.0'),
(47, 3, '0.4'),
(47, 4, '0.2'),
(48, 1, '0.6'),
(48, 2, '1.0'),
(48, 3, '0.2'),
(48, 4, '0.2');
--
-- Database: `cobasatu`
--
CREATE DATABASE IF NOT EXISTS `cobasatu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cobasatu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `No_bobot` int(2) NOT NULL,
  `Keterangan` varchar(20) NOT NULL,
  `Presntase` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`No_bobot`, `Keterangan`, `Presntase`) VALUES
(1, 'TO', '40%'),
(2, 'PJP', '10%'),
(3, 'BP', '25%'),
(4, 'IQ', '25%');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chartdoan`
--

CREATE TABLE `chartdoan` (
  `Nama` varchar(25) NOT NULL,
  `Bulan` varchar(25) NOT NULL,
  `Nilai` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chartdoan`
--

INSERT INTO `chartdoan` (`Nama`, `Bulan`, `Nilai`) VALUES
('Hendra', '', '1'),
('Hendra', 'Januari', '75'),
('Ridwan', 'Januari', '90'),
('Yessy', 'Januari', '80'),
('Tri', 'Januari', '92'),
('Firman', 'Januari', '85'),
('Andre', 'Januari', '91'),
('Rizky', 'Januari', '100'),
('Hendra', 'Februari', '70'),
('Ridwan', 'Februari', '90'),
('Yessy', 'Februari', '80'),
('Tri', 'Februari', '92'),
('Firman', 'Februari', '85'),
('Andre', 'Februari', '91'),
('Rizky', 'Februari', '100'),
('Hendra', 'Maret', '90'),
('Ridwan', 'Maret', '90'),
('Yessy', 'Maret', '80'),
('Tri', 'Maret', '92'),
('Firman', 'Maret', '85'),
('Andre', 'Maret', '91'),
('Rizky', 'Maret', '100'),
('Hendra', 'April', '75'),
('Hendra', 'April', '75'),
('Hendra', 'April', '75'),
('Ridwan', 'April', '85'),
('Hendra', 'April', '75'),
('Ridwan', 'April', '85'),
('Ridwan', 'April', '85'),
('Yessy', 'April', '95'),
('Ridwan', 'April', '85'),
('Yessy', 'April', '95'),
('Yessy', 'April', '95'),
('Yessy', 'April', '95'),
('Tri', 'April', '65'),
('Tri', 'April', '65'),
('Tri', 'April', '65'),
('Tri', 'April', '65'),
('Firman', 'April', '78'),
('Firman', 'April', '78'),
('Firman', 'April', '78'),
('Andre', 'April', '70'),
('Firman', 'April', '78'),
('Andre', 'April', '70'),
('Andre', 'April', '70'),
('Andre', 'April', '70'),
('Rizky', 'April', '90'),
('Rizky', 'April', '90'),
('Rizky', 'April', '90'),
('Hendra', 'Mei', '65'),
('Hendra', 'Mei', '65'),
('Rizky', 'April', '90'),
('Ridwan', 'Mei', '89'),
('Ridwan', 'Mei', '89'),
('Yessy', 'Mei', '90'),
('Yessy', 'Mei', '90'),
('Tri', 'Mei', '75'),
('Tri', 'Mei', '75'),
('Firman', 'Mei', '88'),
('Firman', 'Mei', '88'),
('Andre', 'Mei', '83'),
('Andre', 'Mei', '83'),
('Rizky', 'Mei', '99'),
('Rizky', 'Mei', '99');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chartdoang`
--

CREATE TABLE `chartdoang` (
  `Nama` varchar(25) NOT NULL,
  `Bulan` varchar(25) NOT NULL,
  `Peringkat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chartdoang`
--

INSERT INTO `chartdoang` (`Nama`, `Bulan`, `Peringkat`) VALUES
('Hendra', 'Januari', 7),
('Ridwan', 'Januari', 2),
('Yessy', 'Januari', 5),
('Tri', 'Januari', 3),
('Firman', 'Januari', 4),
('Andre', 'Januari', 6),
('Rizky', 'Januari', 1),
('Hendra', 'Februari', 5),
('Ridwan', 'Februari', 4),
('Yessy', 'Februari', 6),
('Tri', 'Februari', 1),
('Firman', 'Februari', 7),
('Andre', 'Februari', 3),
('Rizky', 'Februari', 2),
('Hendra', 'Maret', 6),
('Ridwan', 'Maret', 1),
('Yessy', 'Maret', 7),
('Tri', 'Maret', 2),
('Firman', 'Maret', 5),
('Andre', 'Maret', 4),
('Rizky', 'Maret', 2),
('Hendra', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_sales` int(2) NOT NULL,
  `Total` int(8) NOT NULL,
  `Presentase` int(5) NOT NULL,
  `Nomor` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhitungan_sum`
--

CREATE TABLE `perhitungan_sum` (
  `id_sales` int(2) NOT NULL,
  `no_bobot` int(2) NOT NULL,
  `nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perhitungan_sum`
--

INSERT INTO `perhitungan_sum` (`id_sales`, `no_bobot`, `nilai`) VALUES
(32, 1, 0),
(32, 2, 0),
(32, 3, 0),
(32, 4, 0),
(33, 1, 0),
(33, 2, 0),
(33, 3, 0),
(33, 4, 0),
(41, 1, 0),
(41, 2, 0),
(41, 3, 0),
(41, 4, 0),
(45, 1, 0),
(45, 2, 0),
(45, 3, 0),
(45, 4, 0),
(46, 1, 0),
(46, 2, 0),
(46, 3, 0),
(46, 4, 0),
(47, 1, 0),
(47, 2, 0),
(47, 3, 0),
(47, 4, 0),
(48, 1, 0),
(48, 2, 0),
(48, 3, 0),
(48, 4, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id_sales` int(2) NOT NULL,
  `Nama_sales` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id_sales`, `Nama_sales`) VALUES
(32, 'Hendra'),
(33, 'Ridwan'),
(41, 'Yessy'),
(45, 'Tri'),
(46, 'Firman'),
(47, 'Andre'),
(48, 'Rizky');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sum_nilai`
--

CREATE TABLE `sum_nilai` (
  `id_sales` int(2) NOT NULL,
  `no_bobot` int(2) NOT NULL,
  `Nilai` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sum_nilai`
--

INSERT INTO `sum_nilai` (`id_sales`, `no_bobot`, `Nilai`) VALUES
(32, 1, '0.4'),
(32, 2, '1.0'),
(32, 3, '0.2'),
(32, 4, '0.2'),
(33, 1, '1.0'),
(33, 2, '1.0'),
(33, 3, '0.2'),
(33, 4, '0.2'),
(41, 1, '1.0'),
(41, 2, '1.0'),
(41, 3, '0.4'),
(41, 4, '0.4'),
(45, 1, '1.0'),
(45, 2, '1.0'),
(45, 3, '0.6'),
(45, 4, '0.4'),
(46, 1, '0.8'),
(46, 2, '1.0'),
(46, 3, '0.2'),
(46, 4, '0.2'),
(47, 1, '0.8'),
(47, 2, '1.0'),
(47, 3, '0.4'),
(47, 4, '0.2'),
(48, 1, '0.6'),
(48, 2, '1.0'),
(48, 3, '0.2'),
(48, 4, '0.2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`No_bobot`),
  ADD KEY `No_bobot` (`No_bobot`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD KEY `id_sales` (`id_sales`);

--
-- Indeks untuk tabel `perhitungan_sum`
--
ALTER TABLE `perhitungan_sum`
  ADD KEY `id_sales` (`id_sales`),
  ADD KEY `no_bobot` (`no_bobot`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sales`),
  ADD KEY `id_sales` (`id_sales`);

--
-- Indeks untuk tabel `sum_nilai`
--
ALTER TABLE `sum_nilai`
  ADD KEY `id_sales` (`id_sales`),
  ADD KEY `no_bobot` (`no_bobot`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sum_nilai`
--
ALTER TABLE `sum_nilai`
  ADD CONSTRAINT `sum_nilai_ibfk_1` FOREIGN KEY (`no_bobot`) REFERENCES `bobot` (`No_bobot`),
  ADD CONSTRAINT `sum_nilai_ibfk_2` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id_sales`);
--
-- Database: `db_kpi`
--
CREATE DATABASE IF NOT EXISTS `db_kpi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_kpi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_kpi`
--

CREATE TABLE `bobot_kpi` (
  `No_bobot` int(2) NOT NULL,
  `no_kpi` int(2) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `BulanTahun` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot_kpi`
--

INSERT INTO `bobot_kpi` (`No_bobot`, `no_kpi`, `nilai`, `BulanTahun`) VALUES
(1, 1, '40%', '0119'),
(2, 2, '10%', '0119'),
(3, 3, '25%', '0119'),
(4, 4, '25%', '0119');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpi_list`
--

CREATE TABLE `kpi_list` (
  `id_kpi` int(2) NOT NULL,
  `Keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kpi_list`
--

INSERT INTO `kpi_list` (`id_kpi`, `Keterangan`) VALUES
(1, 'TO'),
(2, 'PJP'),
(3, 'BP'),
(4, 'IQ'),
(5, 'Geocode');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_district`
--

CREATE TABLE `t_district` (
  `kd_district` int(2) NOT NULL,
  `Nama_district` varchar(25) NOT NULL,
  `kd_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `kd_user` int(5) NOT NULL,
  `Nama_user` varchar(25) NOT NULL,
  `TTL` varchar(25) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Jabatan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot_kpi`
--
ALTER TABLE `bobot_kpi`
  ADD PRIMARY KEY (`No_bobot`),
  ADD KEY `no_kpi` (`no_kpi`);

--
-- Indeks untuk tabel `kpi_list`
--
ALTER TABLE `kpi_list`
  ADD PRIMARY KEY (`id_kpi`),
  ADD KEY `id_kpi` (`id_kpi`);

--
-- Indeks untuk tabel `t_district`
--
ALTER TABLE `t_district`
  ADD PRIMARY KEY (`kd_district`),
  ADD KEY `kd_user` (`kd_user`),
  ADD KEY `kd_district` (`kd_district`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`kd_user`),
  ADD KEY `kd_user` (`kd_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bobot_kpi`
--
ALTER TABLE `bobot_kpi`
  ADD CONSTRAINT `bobot_kpi_ibfk_1` FOREIGN KEY (`No_bobot`) REFERENCES `kpi_list` (`id_kpi`);

--
-- Ketidakleluasaan untuk tabel `t_district`
--
ALTER TABLE `t_district`
  ADD CONSTRAINT `t_district_ibfk_1` FOREIGN KEY (`kd_user`) REFERENCES `t_user` (`kd_user`);
--
-- Database: `db_spk`
--
CREATE DATABASE IF NOT EXISTS `db_spk` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_spk`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_kpi`
--

CREATE TABLE `bobot_kpi` (
  `No_bobot` int(2) NOT NULL,
  `Kd_kpi` varchar(5) NOT NULL,
  `Nilai` int(11) NOT NULL,
  `BulanTahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_ranking`
--

CREATE TABLE `history_ranking` (
  `BulanTahun_Penilaian` varchar(10) NOT NULL,
  `kd_sales` int(2) NOT NULL,
  `Nilai` varchar(10) NOT NULL,
  `Urutan` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpi_list`
--

CREATE TABLE `kpi_list` (
  `kd_kpi` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `kd_sales` int(2) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Distrik` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot_kpi`
--
ALTER TABLE `bobot_kpi`
  ADD PRIMARY KEY (`No_bobot`),
  ADD KEY `Kd_kpi` (`Kd_kpi`),
  ADD KEY `No_bobot` (`No_bobot`);

--
-- Indeks untuk tabel `history_ranking`
--
ALTER TABLE `history_ranking`
  ADD KEY `kd_sales` (`kd_sales`);

--
-- Indeks untuk tabel `kpi_list`
--
ALTER TABLE `kpi_list`
  ADD PRIMARY KEY (`kd_kpi`),
  ADD KEY `kd_kpi` (`kd_kpi`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`kd_sales`),
  ADD KEY `kd_sales` (`kd_sales`);
--
-- Database: `kpi_spk`
--
CREATE DATABASE IF NOT EXISTS `kpi_spk` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kpi_spk`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_kpi`
--

CREATE TABLE `bobot_kpi` (
  `no` int(2) NOT NULL,
  `id_kpi` varchar(5) NOT NULL,
  `Nilai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot_kpi`
--

INSERT INTO `bobot_kpi` (`no`, `id_kpi`, `Nilai`) VALUES
(1, 'TO', '40'),
(2, 'PJP', '15'),
(3, 'BP', '20'),
(4, 'IQ', '25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan`
--

CREATE TABLE `bulan` (
  `No_Bulan` int(2) NOT NULL,
  `Nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bulan`
--

INSERT INTO `bulan` (`No_Bulan`, `Nama`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hiostory_kpi`
--

CREATE TABLE `hiostory_kpi` (
  `id_sales` int(2) NOT NULL,
  `Nilai` decimal(6,3) NOT NULL,
  `Ranking` int(2) NOT NULL,
  `No_bulan` int(2) NOT NULL,
  `Tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `historybaru`
--

CREATE TABLE `historybaru` (
  `id_sales` int(2) NOT NULL,
  `Nilai` decimal(6,3) NOT NULL,
  `ranking` int(2) NOT NULL,
  `No_bulan` int(2) NOT NULL,
  `Tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `historybaru`
--

INSERT INTO `historybaru` (`id_sales`, `Nilai`, `ranking`, `No_bulan`, `Tahun`) VALUES
(48, '91.667', 1, 1, 2019),
(47, '90.000', 2, 1, 2019),
(46, '83.667', 3, 1, 2019),
(45, '83.667', 4, 1, 2019),
(33, '78.333', 5, 1, 2019),
(41, '75.333', 6, 1, 2019),
(32, '65.667', 7, 1, 2019),
(48, '91.000', 1, 1, 2019),
(47, '90.000', 2, 1, 2019),
(46, '83.000', 3, 1, 2019),
(45, '83.000', 4, 1, 2019),
(33, '78.000', 5, 1, 2019),
(41, '75.000', 6, 1, 2019),
(32, '65.000', 7, 1, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_user` int(8) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_user`, `Nama`, `Password`, `Status`) VALUES
(1, 'Rofiq', 'Mjkoke', 'Manajer'),
(2, 'Helmi', 'Mjkoke', 'Supervisor'),
(3, 'Diba', 'Mjkoke', 'Supervisor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maksimal`
--

CREATE TABLE `maksimal` (
  `Bobot` int(2) NOT NULL,
  `nlai` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `range_id`
--

CREATE TABLE `range_id` (
  `kode_kpi` varchar(5) NOT NULL,
  `no_kpi` int(2) NOT NULL,
  `range_from` int(11) NOT NULL,
  `rangeo_to` int(11) NOT NULL,
  `Nilai` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `range_id`
--

INSERT INTO `range_id` (`kode_kpi`, `no_kpi`, `range_from`, `rangeo_to`, `Nilai`) VALUES
('TO1', 1, 0, 75, '0.20'),
('TO2', 1, 76, 85, '0.40'),
('TO3', 1, 86, 95, '0.60'),
('TO4', 1, 96, 100, '0.80'),
('TO5', 1, 101, 110, '1.00'),
('PJP1', 2, 0, 60, '0.20'),
('PJP2', 2, 61, 70, '0.40'),
('PJP3', 2, 71, 80, '0.60'),
('PJP4', 2, 81, 90, '0.80'),
('PJP5', 2, 91, 100, '1.00'),
('BP1', 3, 0, 75, '0.20'),
('BP2', 3, 76, 80, '0.40'),
('BP3', 3, 81, 85, '0.60'),
('BP4', 3, 86, 90, '0.80'),
('BP5', 3, 91, 96, '1.00'),
('IQ1', 4, 0, 10, '0.20'),
('IQ2', 4, 11, 20, '0.40'),
('IQ3', 4, 21, 30, '0.60'),
('IQ4', 4, 31, 40, '0.80'),
('IQ5', 4, 41, 50, '1.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(2) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Distrik` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `Nama`, `Distrik`) VALUES
(32, 'Hendra Ariana', 'Ngoro'),
(33, 'Ridwan Dharmawan Putra', 'Kemlagi'),
(41, 'Yessy Anggraeni', 'Bangsal'),
(45, 'Triyanto', 'Pacet'),
(46, 'Firman Johan.A', 'Mojokerto K'),
(47, 'Andri Dwi Winarto', 'Trowulan'),
(48, 'Muchamad Rizkianto', 'Kutorejo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sum_kpi`
--

CREATE TABLE `sum_kpi` (
  `id_sales` int(2) NOT NULL,
  `no_bobot` int(2) NOT NULL,
  `Ach` decimal(6,2) NOT NULL,
  `no_bulan` int(2) NOT NULL,
  `Tahun` int(4) NOT NULL,
  `id_user` int(8) NOT NULL,
  `Tanggal_input` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sum_kpi`
--

INSERT INTO `sum_kpi` (`id_sales`, `no_bobot`, `Ach`, `no_bulan`, `Tahun`, `id_user`, `Tanggal_input`) VALUES
(32, 1, '100.00', 1, 1887, 2, ''),
(32, 1, '90.00', 1, 2019, 2, '10/08/2019 2:13'),
(32, 2, '100.00', 1, 2019, 2, '10/08/2019 2:13'),
(32, 3, '77.00', 1, 2019, 2, '10/08/2019 2:13'),
(32, 4, '12.00', 1, 2019, 2, '10/08/2019 2:13'),
(33, 1, '102.00', 1, 2019, 2, '10/08/2019 2:13'),
(33, 2, '100.00', 1, 2019, 2, '10/08/2019 2:13'),
(33, 3, '81.00', 1, 2019, 2, '10/08/2019 2:13'),
(33, 4, '7.00', 1, 2019, 2, '10/08/2019 2:13'),
(41, 1, '100.00', 1, 2019, 2, '10/08/2019 2:14'),
(41, 2, '97.00', 1, 2019, 2, '10/08/2019 2:14'),
(41, 3, '90.00', 1, 2019, 2, '10/08/2019 2:14'),
(41, 4, '8.00', 1, 2019, 2, '10/08/2019 2:14'),
(45, 1, '105.00', 1, 2019, 2, '10/08/2019 2:25'),
(45, 2, '90.00', 1, 2019, 2, '10/08/2019 2:25'),
(45, 3, '85.00', 1, 2019, 2, '10/08/2019 2:25'),
(45, 4, '12.00', 1, 2019, 2, '10/08/2019 2:25'),
(46, 1, '99.00', 1, 2019, 2, '10/08/2019 2:27'),
(46, 2, '100.00', 1, 2019, 2, '10/08/2019 2:27'),
(46, 3, '87.00', 1, 2019, 2, '10/08/2019 2:27'),
(46, 4, '20.00', 1, 2019, 2, '10/08/2019 2:27'),
(47, 1, '101.00', 1, 2019, 2, '10/08/2019 2:29'),
(47, 2, '100.00', 1, 2019, 2, '10/08/2019 2:29'),
(47, 3, '76.00', 1, 2019, 2, '10/08/2019 2:29'),
(47, 4, '24.00', 1, 2019, 2, '10/08/2019 2:29'),
(48, 1, '102.00', 1, 2019, 2, '10/08/2019 3:52'),
(48, 2, '100.00', 1, 2019, 2, '10/08/2019 3:52'),
(48, 3, '87.00', 1, 2019, 2, '10/08/2019 3:52'),
(48, 4, '11.00', 1, 2019, 2, '10/08/2019 3:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot_kpi`
--
ALTER TABLE `bobot_kpi`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id_kpi` (`id_kpi`);

--
-- Indeks untuk tabel `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`No_Bulan`),
  ADD KEY `No_Bulan` (`No_Bulan`);

--
-- Indeks untuk tabel `hiostory_kpi`
--
ALTER TABLE `hiostory_kpi`
  ADD PRIMARY KEY (`Ranking`),
  ADD KEY `BulanTahun` (`No_bulan`);

--
-- Indeks untuk tabel `historybaru`
--
ALTER TABLE `historybaru`
  ADD KEY `No_bulan` (`No_bulan`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `range_id`
--
ALTER TABLE `range_id`
  ADD KEY `no_kpi` (`no_kpi`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `sum_kpi`
--
ALTER TABLE `sum_kpi`
  ADD KEY `id_sales` (`id_sales`),
  ADD KEY `no_bobot` (`no_bobot`),
  ADD KEY `BulanTahun` (`no_bulan`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hiostory_kpi`
--
ALTER TABLE `hiostory_kpi`
  MODIFY `Ranking` int(2) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bobot_kpi`
--
ALTER TABLE `bobot_kpi`
  ADD CONSTRAINT `bobot_kpi_ibfk_1` FOREIGN KEY (`id_kpi`) REFERENCES `kpi_list` (`id_kpi`),
  ADD CONSTRAINT `bobot_kpi_ibfk_2` FOREIGN KEY (`no`) REFERENCES `range_id` (`no_kpi`);

--
-- Ketidakleluasaan untuk tabel `historybaru`
--
ALTER TABLE `historybaru`
  ADD CONSTRAINT `historybaru_ibfk_1` FOREIGN KEY (`No_bulan`) REFERENCES `sum_kpi` (`no_bulan`);

--
-- Ketidakleluasaan untuk tabel `sum_kpi`
--
ALTER TABLE `sum_kpi`
  ADD CONSTRAINT `sum_kpi_ibfk_1` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sum_kpi_ibfk_2` FOREIGN KEY (`no_bobot`) REFERENCES `bobot_kpi` (`no`),
  ADD CONSTRAINT `sum_kpi_ibfk_3` FOREIGN KEY (`no_bulan`) REFERENCES `bulan` (`No_Bulan`),
  ADD CONSTRAINT `sum_kpi_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `login` (`id_user`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"remas\",\"table\":\"lokasi\"},{\"db\":\"remas\",\"table\":\"kontak\"},{\"db\":\"remas\",\"table\":\"detail\"},{\"db\":\"remas\",\"table\":\"deskripsi\"},{\"db\":\"remas\",\"table\":\"login\"},{\"db\":\"kpi_spk\",\"table\":\"historybaru\"},{\"db\":\"kpi_spk\",\"table\":\"sum_kpi\"},{\"db\":\"kpi_spk\",\"table\":\"range_id\"},{\"db\":\"kpi_spk\",\"table\":\"sales\"},{\"db\":\"kpi_spk\",\"table\":\"hiostory_kpi\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-07-01 14:06:31', '{\"lang\":\"id\"}'),
('root', '2019-10-01 11:27:03', '{\"lang\":\"id\",\"Console\\/Mode\":\"show\",\"Console\\/Height\":-44,\"NavigationWidth\":241}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rab`
--
CREATE DATABASE IF NOT EXISTS `rab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rab`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_proyek`
--

CREATE TABLE `item_proyek` (
  `kd_item` int(2) NOT NULL,
  `nm_item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek`
--

CREATE TABLE `proyek` (
  `kd_proyek` int(2) NOT NULL,
  `nm_proyek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `item_proyek`
--
ALTER TABLE `item_proyek`
  ADD PRIMARY KEY (`kd_item`);

--
-- Indeks untuk tabel `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`kd_proyek`);
--
-- Database: `rab_ms`
--
CREATE DATABASE IF NOT EXISTS `rab_ms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rab_ms`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_rab`
--

CREATE TABLE `project_rab` (
  `no_project` int(5) NOT NULL,
  `nama_project` text NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project_rab`
--

INSERT INTO `project_rab` (`no_project`, `nama_project`, `tanggal`) VALUES
(1, 'okokok', '445'),
(2, 'adaaja', '06 Maret 2019'),
(3, 'anajajajajaj', '11 Maret 2019'),
(4, 'adajajajajajja', '11 Maret 2019'),
(5, 'ahahahahhaaasdafafaa', '11 Maret 2019'),
(6, 'hfhgfhfhfghfhghhg', '11 Maret 2019'),
(7, 'kkkkkkkkkkkkkkkkkkkkkkk', '11 Maret 2019'),
(8, 'jkjkjj', '11 Maret 2019'),
(9, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', '11 Maret 2019'),
(10, 'naruto', '24 Maret 2019'),
(11, 'suryahadi', '24 Maret 2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_pekerjaan`
--

CREATE TABLE `sub_pekerjaan` (
  `kode_sub` int(6) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `nama_project` varchar(50) NOT NULL,
  `tgl_buatSub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_pekerjaan`
--

INSERT INTO `sub_pekerjaan` (`kode_sub`, `nama_sub`, `nama_project`, `tgl_buatSub`) VALUES
(1, 'adajajajaa', 'naruto', '24 Maret 2019');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `project_rab`
--
ALTER TABLE `project_rab`
  ADD PRIMARY KEY (`no_project`);

--
-- Indeks untuk tabel `sub_pekerjaan`
--
ALTER TABLE `sub_pekerjaan`
  ADD KEY `kode_sub_2` (`kode_sub`);
--
-- Database: `remas`
--
CREATE DATABASE IF NOT EXISTS `remas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `remas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `deskripsi`
--

CREATE TABLE `deskripsi` (
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deskripsi`
--

INSERT INTO `deskripsi` (`deskripsi`) VALUES
('Komitmen kami menjaga Kebersihan da n kesucian Mushola/ Masjid .\r\nMemberikan edukasi kpd Pengurus / Takmir Masjid dlm menjaga Kebersihan dan Kesucian Masjid .');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `no` int(100) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`no`, `deskripsi`) VALUES
(1, 'akulagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `no` int(11) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomer` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `instagram` varchar(20) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `rekening` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`no`, `alamat`, `nomer`, `email`, `instagram`, `bank`, `rekening`, `nama`) VALUES
(1, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` varchar(12) NOT NULL,
  `pass` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `pass`) VALUES
('111', '111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `no` int(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail`
--
ALTER TABLE `detail`
  MODIFY `no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `no` int(200) NOT NULL AUTO_INCREMENT;
--
-- Database: `spk_kpi`
--
CREATE DATABASE IF NOT EXISTS `spk_kpi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spk_kpi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_area`
--

CREATE TABLE `t_area` (
  `kd_area` int(2) NOT NULL,
  `nama_area` varchar(10) NOT NULL,
  `kd_distrik` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_bp`
--

CREATE TABLE `t_det_bp` (
  `BulanTahun_BP` int(11) NOT NULL,
  `id_sales` int(11) NOT NULL,
  `TargetBP` int(11) NOT NULL,
  `Ach` int(11) NOT NULL,
  `Percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_iq`
--

CREATE TABLE `t_det_iq` (
  `BulanTahun_IQ` int(5) NOT NULL,
  `id_sales` int(2) NOT NULL,
  `TargetIQ` int(5) NOT NULL,
  `Ach` int(5) NOT NULL,
  `Percent` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_pjp`
--

CREATE TABLE `t_det_pjp` (
  `BulanTahun_PJP` int(5) NOT NULL,
  `id_sales` int(2) NOT NULL,
  `TargetVisit` int(11) NOT NULL,
  `Visit` int(11) NOT NULL,
  `Percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_det_to`
--

CREATE TABLE `t_det_to` (
  `BulanTahun_TO` int(5) NOT NULL,
  `id_sales` int(2) NOT NULL,
  `Nama_sales` varchar(25) NOT NULL,
  `kontribusi` int(5) NOT NULL,
  `target` int(20) NOT NULL,
  `ach` int(20) NOT NULL,
  `percent` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_distrik`
--

CREATE TABLE `t_distrik` (
  `kd_distrik` int(2) NOT NULL,
  `nama_distrik` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_distrik`
--

INSERT INTO `t_distrik` (`kd_distrik`, `nama_distrik`) VALUES
(33, 'Kemlagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jabatan`
--

CREATE TABLE `t_jabatan` (
  `kd_jabatan` int(2) NOT NULL,
  `nama_jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_karyawan`
--

CREATE TABLE `t_karyawan` (
  `id_karyawan` int(6) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `kd_jabatan` int(2) NOT NULL,
  `kd_distrik` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_outlet`
--

CREATE TABLE `t_outlet` (
  `kd_outlet` int(8) NOT NULL,
  `nama_outlet` varchar(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` int(13) NOT NULL,
  `rpp` int(12) NOT NULL,
  `kd_area` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_sumto`
--

CREATE TABLE `t_sumto` (
  `BulanTahun_TO` int(5) NOT NULL,
  `nama_Bulan` varchar(10) NOT NULL,
  `Target` int(20) NOT NULL,
  `Ach` int(20) NOT NULL,
  `Percent` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_sum_bp`
--

CREATE TABLE `t_sum_bp` (
  `BulanTahun_BP` int(11) NOT NULL,
  `NamaBulan` int(11) NOT NULL,
  `TargetBP` int(11) NOT NULL,
  `AchBP` int(11) NOT NULL,
  `Percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_sum_iq`
--

CREATE TABLE `t_sum_iq` (
  `BulanTahun_IQ` int(5) NOT NULL,
  `NamaBulan` varchar(15) NOT NULL,
  `TargetIQ` int(5) NOT NULL,
  `Ach` int(5) NOT NULL,
  `Percent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_sum_pjp`
--

CREATE TABLE `t_sum_pjp` (
  `BulanTahun_PJP` int(5) NOT NULL,
  `NamaBulan` varchar(15) NOT NULL,
  `TargetVisit` int(5) NOT NULL,
  `Visit` int(5) NOT NULL,
  `Percent` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_target`
--

CREATE TABLE `t_target` (
  `id_sales` int(2) NOT NULL,
  `Bulan` varchar(5) NOT NULL,
  `Tahun` varchar(5) NOT NULL,
  `Target_TO` varchar(15) NOT NULL,
  `Target_BP` varchar(5) NOT NULL,
  `Target_IQ` varchar(5) NOT NULL,
  `Target_PJP` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_area`
--
ALTER TABLE `t_area`
  ADD PRIMARY KEY (`kd_area`),
  ADD KEY `kd_area` (`kd_area`),
  ADD KEY `kd_distrik` (`kd_distrik`),
  ADD KEY `kd_distrik_2` (`kd_distrik`);

--
-- Indeks untuk tabel `t_det_bp`
--
ALTER TABLE `t_det_bp`
  ADD KEY `BulanTahun_BP` (`BulanTahun_BP`),
  ADD KEY `id_sales` (`id_sales`);

--
-- Indeks untuk tabel `t_det_iq`
--
ALTER TABLE `t_det_iq`
  ADD KEY `BulanTahun_IQ` (`BulanTahun_IQ`),
  ADD KEY `id_sales` (`id_sales`);

--
-- Indeks untuk tabel `t_det_pjp`
--
ALTER TABLE `t_det_pjp`
  ADD KEY `BulanTahun_PJP` (`BulanTahun_PJP`),
  ADD KEY `id_sales` (`id_sales`);

--
-- Indeks untuk tabel `t_det_to`
--
ALTER TABLE `t_det_to`
  ADD KEY `BulanTahun_TO` (`BulanTahun_TO`);

--
-- Indeks untuk tabel `t_distrik`
--
ALTER TABLE `t_distrik`
  ADD PRIMARY KEY (`kd_distrik`),
  ADD KEY `kd_distrik` (`kd_distrik`),
  ADD KEY `kd_distrik_2` (`kd_distrik`);

--
-- Indeks untuk tabel `t_jabatan`
--
ALTER TABLE `t_jabatan`
  ADD PRIMARY KEY (`kd_jabatan`),
  ADD KEY `kd_jabatan` (`kd_jabatan`),
  ADD KEY `kd_jabatan_2` (`kd_jabatan`),
  ADD KEY `kd_jabatan_3` (`kd_jabatan`);

--
-- Indeks untuk tabel `t_karyawan`
--
ALTER TABLE `t_karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `kd_jabatan` (`kd_jabatan`),
  ADD KEY `kd_distrik` (`kd_distrik`);

--
-- Indeks untuk tabel `t_outlet`
--
ALTER TABLE `t_outlet`
  ADD PRIMARY KEY (`kd_outlet`),
  ADD KEY `kd_outlet` (`kd_outlet`),
  ADD KEY `kd_outlet_2` (`kd_outlet`),
  ADD KEY `kd_area` (`kd_area`);

--
-- Indeks untuk tabel `t_sumto`
--
ALTER TABLE `t_sumto`
  ADD PRIMARY KEY (`BulanTahun_TO`),
  ADD KEY `BulanTahun_TO` (`BulanTahun_TO`);

--
-- Indeks untuk tabel `t_sum_bp`
--
ALTER TABLE `t_sum_bp`
  ADD PRIMARY KEY (`BulanTahun_BP`),
  ADD KEY `BulanTahun_BP` (`BulanTahun_BP`);

--
-- Indeks untuk tabel `t_sum_pjp`
--
ALTER TABLE `t_sum_pjp`
  ADD PRIMARY KEY (`BulanTahun_PJP`),
  ADD KEY `BulanTahun_PJP` (`BulanTahun_PJP`);

--
-- Indeks untuk tabel `t_target`
--
ALTER TABLE `t_target`
  ADD KEY `id_sales` (`id_sales`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_area`
--
ALTER TABLE `t_area`
  ADD CONSTRAINT `t_area_ibfk_2` FOREIGN KEY (`kd_distrik`) REFERENCES `t_distrik` (`kd_distrik`);

--
-- Ketidakleluasaan untuk tabel `t_det_to`
--
ALTER TABLE `t_det_to`
  ADD CONSTRAINT `t_det_to_ibfk_1` FOREIGN KEY (`BulanTahun_TO`) REFERENCES `t_sumto` (`BulanTahun_TO`);

--
-- Ketidakleluasaan untuk tabel `t_karyawan`
--
ALTER TABLE `t_karyawan`
  ADD CONSTRAINT `t_karyawan_ibfk_1` FOREIGN KEY (`kd_jabatan`) REFERENCES `t_jabatan` (`kd_jabatan`),
  ADD CONSTRAINT `t_karyawan_ibfk_2` FOREIGN KEY (`kd_distrik`) REFERENCES `t_distrik` (`kd_distrik`);

--
-- Ketidakleluasaan untuk tabel `t_outlet`
--
ALTER TABLE `t_outlet`
  ADD CONSTRAINT `t_outlet_ibfk_1` FOREIGN KEY (`kd_area`) REFERENCES `t_area` (`kd_area`);

--
-- Ketidakleluasaan untuk tabel `t_target`
--
ALTER TABLE `t_target`
  ADD CONSTRAINT `t_target_ibfk_1` FOREIGN KEY (`id_sales`) REFERENCES `t_karyawan` (`id_karyawan`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
