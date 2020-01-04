-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2020 at 08:47 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnn`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `jabatan`) VALUES
('admin', 'lrckztbfoitol', 'SU'),
('divberantas', 'efilskafuyv', 'pegawai_berantas'),
('divisiumum', 'evilguvevk', 'pegawai_umum'),
('divp2m', 'evisgbphn', 'pegawai_p2m'),
('divrehab', 'evisgbrwiyc', 'pegawai_rehab'),
('kdivberantas', 'glyehudqwdv', 'kepala_bagianBerantas'),
('kdivp2m', 'lqvfdim', 'kepala_bagianp2m'),
('kdivrehab', 'lqvffxhsc', 'kepala_bagianrehab'),
('kdivumum', 'lqvfifuelb', 'kepala_bagianumum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bb`
--

CREATE TABLE `tb_bb` (
  `id_bb` int(255) NOT NULL,
  `nama_bb` text NOT NULL,
  `jenis_bb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bb`
--

INSERT INTO `tb_bb` (`id_bb`, `nama_bb`, `jenis_bb`) VALUES
(505, 'shabu', 'narkoba');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_pegawai`
--

CREATE TABLE `tb_data_pegawai` (
  `nip` int(100) NOT NULL,
  `nama_pegawai` text NOT NULL,
  `ttl` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `agama` text NOT NULL,
  `divisi_pegawai` varchar(100) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL,
  `masa_kerja_pegawai` varchar(100) NOT NULL,
  `tgl_pengangkatan` datetime NOT NULL,
  `tmt` int(100) NOT NULL,
  `pangkat_golongan` varchar(100) NOT NULL,
  `jabatan` text NOT NULL,
  `gaji_pokok_pegawai` varchar(100) NOT NULL,
  `id_petugas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id_kegiatan` int(255) NOT NULL,
  `kategori_kegiatan` varchar(255) NOT NULL,
  `tempat_kegiatan` varchar(100) NOT NULL,
  `sasaran_kegiatan` text NOT NULL,
  `jml_peserta_kegiatan` varchar(100) NOT NULL,
  `biaya_kegiatan` varchar(255) NOT NULL,
  `keterangan_kegiatan` text NOT NULL,
  `id_petugas` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lkn`
--

CREATE TABLE `tb_lkn` (
  `id_lkn` int(255) NOT NULL,
  `tgl_lkn` datetime NOT NULL,
  `tkp_lkn` varchar(255) NOT NULL,
  `pasal_lkn` varchar(255) NOT NULL,
  `modus_operandi_lkn` varchar(255) NOT NULL,
  `jumlah_bb_lkn` int(100) NOT NULL,
  `satuan_bb_lkn` varchar(100) NOT NULL,
  `asal_barang_lkn` varchar(100) NOT NULL,
  `id_petugas` int(255) NOT NULL,
  `id_bb` int(255) NOT NULL,
  `id_tsk` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_lkn`
--

INSERT INTO `tb_lkn` (`id_lkn`, `tgl_lkn`, `tkp_lkn`, `pasal_lkn`, `modus_operandi_lkn`, `jumlah_bb_lkn`, `satuan_bb_lkn`, `asal_barang_lkn`, `id_petugas`, `id_bb`, `id_tsk`) VALUES
(13041, '0000-00-00 00:00:00', 'taman bungkul', '27 ayat 1 a', 'ekonomi', 9, 'gram', 'sidoarjo', 2020, 505, 606),
(50506070, '0000-00-00 00:00:00', 'taman bungkul', '27 ayat 1 a', 'kepepet ekonomi', 3, '0', 'sidoarjo', 2020, 505, 606);

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(255) NOT NULL,
  `username_petugas` varchar(255) NOT NULL,
  `nama_petugas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `username_petugas`, `nama_petugas`) VALUES
(101, 'apep', 'much apep'),
(2020, 'coba', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rehab`
--

CREATE TABLE `tb_rehab` (
  `id_registrasi_klien` int(20) NOT NULL,
  `nama_klien` text NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `usia` int(20) NOT NULL,
  `no_identitas` int(50) NOT NULL,
  `pendidikan_terakhi` text NOT NULL,
  `pekerjaan` text NOT NULL,
  `tempat_rehab` text NOT NULL,
  `hasil_dari` text NOT NULL,
  `kecamatan` text NOT NULL,
  `id_bb` int(20) NOT NULL,
  `id_petugas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_skkgb`
--

CREATE TABLE `tb_skkgb` (
  `no_skkgb` int(100) NOT NULL,
  `tgl_skkgb` datetime NOT NULL,
  `gapok_baru` varchar(100) NOT NULL,
  `nip` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_skkp`
--

CREATE TABLE `tb_skkp` (
  `no_skkp` int(100) NOT NULL,
  `tanggal_skkp` datetime NOT NULL,
  `tmt_lama` datetime NOT NULL,
  `tmt_baru` datetime NOT NULL,
  `masa_kerja_lama` varchar(100) NOT NULL,
  `masa_kerja_baru` varchar(100) NOT NULL,
  `nip` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tsk`
--

CREATE TABLE `tb_tsk` (
  `id_tsk` int(255) NOT NULL,
  `alamat_tsk` varchar(255) NOT NULL,
  `kelurahan_tsk` text NOT NULL,
  `kecamatan_tsk` text NOT NULL,
  `ttl_tsk` int(255) NOT NULL,
  `jk_tsk` text NOT NULL,
  `usia_tsk` int(10) NOT NULL,
  `pekerjaan_tsk` text NOT NULL,
  `pendidikan_tsk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tsk`
--

INSERT INTO `tb_tsk` (`id_tsk`, `alamat_tsk`, `kelurahan_tsk`, `kecamatan_tsk`, `ttl_tsk`, `jk_tsk`, `usia_tsk`, `pekerjaan_tsk`, `pendidikan_tsk`) VALUES
(606, 'jalan. surabaya', 'genteng', 'gubeng', 12122018, 'pria', 16, 'pelajar', 'smp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_bb`
--
ALTER TABLE `tb_bb`
  ADD PRIMARY KEY (`id_bb`);

--
-- Indexes for table `tb_data_pegawai`
--
ALTER TABLE `tb_data_pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `tb_lkn`
--
ALTER TABLE `tb_lkn`
  ADD PRIMARY KEY (`id_lkn`),
  ADD KEY `id_tsk` (`id_tsk`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_bb` (`id_bb`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tb_rehab`
--
ALTER TABLE `tb_rehab`
  ADD PRIMARY KEY (`id_registrasi_klien`),
  ADD KEY `id_bb` (`id_bb`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `tb_skkgb`
--
ALTER TABLE `tb_skkgb`
  ADD PRIMARY KEY (`no_skkgb`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `tb_skkp`
--
ALTER TABLE `tb_skkp`
  ADD PRIMARY KEY (`no_skkp`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `tb_tsk`
--
ALTER TABLE `tb_tsk`
  ADD PRIMARY KEY (`id_tsk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bb`
--
ALTER TABLE `tb_bb`
  MODIFY `id_bb` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `tb_data_pegawai`
--
ALTER TABLE `tb_data_pegawai`
  MODIFY `nip` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id_kegiatan` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lkn`
--
ALTER TABLE `tb_lkn`
  MODIFY `id_lkn` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50506071;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2021;

--
-- AUTO_INCREMENT for table `tb_rehab`
--
ALTER TABLE `tb_rehab`
  MODIFY `id_registrasi_klien` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_skkgb`
--
ALTER TABLE `tb_skkgb`
  MODIFY `no_skkgb` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_skkp`
--
ALTER TABLE `tb_skkp`
  MODIFY `no_skkp` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tsk`
--
ALTER TABLE `tb_tsk`
  MODIFY `id_tsk` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_data_pegawai`
--
ALTER TABLE `tb_data_pegawai`
  ADD CONSTRAINT `tb_data_pegawai_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`);

--
-- Constraints for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD CONSTRAINT `tb_kegiatan_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`);

--
-- Constraints for table `tb_lkn`
--
ALTER TABLE `tb_lkn`
  ADD CONSTRAINT `tb_lkn_ibfk_1` FOREIGN KEY (`id_bb`) REFERENCES `tb_bb` (`id_bb`),
  ADD CONSTRAINT `tb_lkn_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`),
  ADD CONSTRAINT `tb_lkn_ibfk_3` FOREIGN KEY (`id_tsk`) REFERENCES `tb_tsk` (`id_tsk`);

--
-- Constraints for table `tb_rehab`
--
ALTER TABLE `tb_rehab`
  ADD CONSTRAINT `tb_rehab_ibfk_1` FOREIGN KEY (`id_bb`) REFERENCES `tb_bb` (`id_bb`),
  ADD CONSTRAINT `tb_rehab_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`);

--
-- Constraints for table `tb_skkgb`
--
ALTER TABLE `tb_skkgb`
  ADD CONSTRAINT `tb_skkgb_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `tb_data_pegawai` (`nip`);

--
-- Constraints for table `tb_skkp`
--
ALTER TABLE `tb_skkp`
  ADD CONSTRAINT `tb_skkp_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `tb_data_pegawai` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
