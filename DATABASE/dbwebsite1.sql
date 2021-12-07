-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 03:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwebsite1`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(20) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(3, 'G01', 'Batuk Berdahak'),
(4, 'G02', 'Sesak Nafas'),
(5, 'G03', 'Badan Terasa Lemas'),
(6, 'G04', 'Penurunan Nafsu Makan'),
(7, 'G05', 'Perasaan Tidak Enak'),
(8, 'G06', 'Demam Pada Siang dan Sore hari'),
(9, 'G07', 'Penurunan Berat Badan'),
(10, 'G08', 'Sering Menderita Infeksi Pernafasan'),
(11, 'G09', 'Kaki Bengkak'),
(12, 'G10', 'Pipi Tampak Merah'),
(13, 'G11', 'Sakit Kepala'),
(14, 'G12', 'Telapak Tangan Memerah'),
(15, 'G13', 'Produksi Lendir Berlebihan'),
(16, 'G14', 'Serangan terjadi 3-4 kali setahun'),
(17, 'G15', 'Gejala timbul malam hari'),
(18, 'G16', 'Sakit Dada'),
(19, 'G17', 'Wajah Memerah'),
(20, 'G18', 'Gangguan Penglihatan'),
(21, 'G19', 'Selaput Lendir Bewarna Kemerahan'),
(22, 'G20', 'Batuk Mengeluarkan Darah');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Admin','Dokter','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin'),
(11, 'Gerald', 'user', 'user', 'User'),
(12, 'dr. Rahmandhika, SpAK', 'dokter', 'dokter', 'Dokter');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(20) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `deskripsi`, `solusi`) VALUES
(1, 'P01', 'TBC', 'TBC (Tuberkulosis) yang juga dikenal dengan TB adalah penyakit paru-paru akibat kuman Mycobacterium tuberculosis. TBC akan menimbulkan gejala berupa batuk yang berlangsung lama (lebih dari 3 minggu), biasanya berdahak, dan terkadang mengeluarkan darah', 'TBC dapat dideteksi melalui pemeriksaan dahak. Beberapa tes lain yang dapat dilakukan untuk mendeteksi penyakit menular ini adalah foto Rontgen dada, tes darah, atau tes kulit (Mantoux)'),
(2, 'P02', 'Pneumotoraks', 'Pneumothorax adalah kondisi ketika udara terkumpul di rongga pleura, yaitu ruang di antara paru-paru dan dinding dada. Udara tersebut dapat masuk akibat adanya cedera di dinding dada atau robekan di jaringan paru-paru. Dampaknya, paru-paru jadi mengempis (kolaps) dan tidak bisa mengembang', 'Pengobatan pneumothorax bertujuan untuk mengurangi tekanan di paru-paru agar paru-paru bisa mengembang dengan baik dan untuk mencegah kambuhnya penyakit ini. Metode penanganan yang akan dipilih dokter tergantung pada tingkat keparahan dan kondisi pasien'),
(3, 'P03', 'Pneumonia', 'Pneumonia adalah peradangan paru-paru yang disebabkan oleh infeksi. Pneumonia bisa menimbulkan gejala yang ringan hingga berat. Beberapa gejala yang umumnya dialami penderita pneumonia adalah batuk berdahak, demam, dan sesak napas', 'Pneumonia akibat infeksi bakteri akan ditangani dengan pemberian antibiotik. Selain itu, dokter juga dapat memberikan beberapa obat pneumonia lainnya untuk meredakan gejala yang muncul, seperti obat batuk, obat penurun demam, atau obat pereda nyeri'),
(4, 'P04', 'Legionnaires', 'Penyakit legionnaires adalah penyakit seperti pneumonia dalam tingkat yang lebih parah. Penderita legionnaires akan mengalami peradangan pada paru-paru yang disebabkan oleh infeksi bakteri legionella', 'Penyakit legionnaires dapat dicegah dengan melakukan pembersihan teratur dengan diinfektan pada sistem air rumah dan gedung, seperti pada sistem pendingin, kolam renang, dan spa.'),
(5, 'P05', 'Asma', 'Asma adalah jenis penyakit jangka panjang atau kronis pada saluran pernapasan yang ditandai dengan peradangan dan penyempitan saluran napas yang menimbulkan sesak atau sulit bernapas.', 'Ada dua tujuan dalam pengobatan penyakit asma, yaitu meredakan gejala dan mencegah gejala kambuh. Untuk mendukung tujuan tersebut, diperlukan rencana pengobatan dari dokter yang disesuaikan dengan kondisi pasien. Rencana pengobatan meliputi cara mengenali dan menangani gejala yang memburuk, serta obat-obatan apa yang harus digunakan');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pengguna`, `id_penyakit`, `tanggal`) VALUES
(50, 11, 1, '2021-11-24'),
(51, 11, NULL, '2021-11-24'),
(52, 11, NULL, '2021-11-24'),
(53, 11, 1, '2021-11-24'),
(54, 11, 2, '2021-11-24'),
(55, 11, NULL, '2021-11-24'),
(56, 11, NULL, '2021-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `id_penyakit`, `id_gejala`) VALUES
(36, 1, 3),
(37, 2, 3),
(38, 3, 3),
(39, 1, 4),
(40, 2, 4),
(41, 3, 4),
(42, 1, 5),
(43, 2, 5),
(44, 1, 6),
(45, 1, 7),
(46, 1, 8),
(47, 1, 9),
(48, 2, 10),
(57, 2, 11),
(58, 2, 12),
(59, 2, 13),
(60, 2, 14),
(61, 5, 15),
(63, 5, 16),
(64, 5, 17),
(65, 3, 18),
(66, 2, 19),
(67, 2, 20),
(68, 2, 21),
(69, 1, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
