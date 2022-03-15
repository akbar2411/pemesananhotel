-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 01:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotel`
--

CREATE TABLE `fasilitas_hotel` (
  `id_fasilitas_hotel` int(11) NOT NULL,
  `nama_fasilitas_hotel` varchar(50) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas_hotel`
--

INSERT INTO `fasilitas_hotel` (`id_fasilitas_hotel`, `nama_fasilitas_hotel`, `gambar`, `keterangan`) VALUES
(2, 'Gym', 'gym.jpg', 'Gym Untuk membesarkan oto'),
(4, 'Gym Olahraga', 'info-hotel.jpg', 'Gym olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) DEFAULT NULL,
  `nama_hotel` varchar(50) DEFAULT NULL,
  `slogan` text DEFAULT NULL,
  `nama_perusahaan` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `faximile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama_hotel`, `slogan`, `nama_perusahaan`, `alamat`, `telepon`, `faximile`, `email`, `website`) VALUES
(2, 'Hotel Tara Arts Game', 'Hotel Gabut Sedunia Nich', 'PT. Tara Arts Game ', 'Bantul', '0215678945656', 'Belum Diketahui', 'taraarts@gmail.com', 'taraartsgame.com'),
(3, 'Hotel Crimson', 'Hotel Crimson memang Hebat', 'PT Crimson', 'Ngampilan, Yogyakarta', '0876212211221', 'Kosong Belum Diketahui', 'crimson@gmail.com', 'crimsonhotel.com');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `id_kamar_tipe` int(11) DEFAULT NULL,
  `nomor_kamar` int(11) DEFAULT NULL,
  `max_dewasa` int(11) DEFAULT NULL,
  `max_anak` int(11) DEFAULT NULL,
  `status_kamar` enum('Kosong','Terisi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_kamar_tipe`, `nomor_kamar`, `max_dewasa`, `max_anak`, `status_kamar`) VALUES
(1, 3, 100, 2, 1, 'Terisi'),
(2, 1, 102, 1, 2, 'Terisi'),
(3, 1, 103, 1, 2, 'Kosong'),
(4, 2, 104, 2, 4, 'Kosong'),
(5, 2, 105, 2, 4, 'Kosong'),
(6, 3, 106, 2, 1, 'Kosong'),
(7, 4, 107, 2, 2, 'Kosong'),
(8, 3, 108, 2, 1, 'Kosong'),
(9, 3, 109, 2, 1, 'Kosong'),
(10, 4, 110, 2, 2, 'Kosong'),
(11, 1, 201, 1, 2, 'Kosong'),
(12, 1, 202, 1, 2, 'Kosong'),
(13, 2, 186, 2, 2, 'Terisi'),
(14, 1, 982, 2, 2, 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `nik` varchar(25) DEFAULT NULL,
  `kode_booking` varchar(50) DEFAULT NULL,
  `tanggal_in` date DEFAULT NULL,
  `jam_in` time DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `jam_out` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `nik`, `kode_booking`, `tanggal_in`, `jam_in`, `check_out`, `jam_out`) VALUES
(2, '2', '1001', '2022-02-01', '15:31:00', '2022-02-17', '08:30:00'),
(3, NULL, NULL, '2022-03-04', '22:12:00', '2022-03-18', '07:10:00'),
(4, NULL, NULL, '2022-03-10', '23:19:00', '2022-03-17', '00:21:00'),
(5, NULL, NULL, '2022-03-01', '07:39:00', '2022-03-07', '22:39:00'),
(6, NULL, NULL, '2022-03-12', '21:42:00', '2022-03-25', '01:47:00'),
(7, NULL, NULL, '2022-03-08', '22:59:00', '2022-03-16', '23:01:00'),
(8, NULL, NULL, '2022-03-26', '23:07:00', '2022-03-30', '00:10:00'),
(9, NULL, NULL, '2022-03-10', '04:06:00', '2022-03-12', '05:06:00'),
(10, NULL, NULL, '2022-03-01', '17:43:00', '2022-03-08', '19:45:00'),
(11, '4000002', NULL, '2022-03-14', '09:00:00', NULL, '09:00:00'),
(12, '600002', NULL, '2022-03-29', '11:52:00', NULL, '13:52:00'),
(13, '900001', NULL, '2022-03-24', '14:55:00', '2022-03-26', '13:55:00'),
(14, '5000001', NULL, '2022-03-16', '14:10:00', '2022-03-18', '14:10:00'),
(15, '1234567', NULL, '2022-03-15', '14:28:00', '2022-03-18', '16:28:00'),
(16, '8000000', NULL, '2022-03-09', '19:22:00', '2022-03-23', '19:22:00'),
(17, '0', NULL, '0000-00-00', '00:00:00', '0000-00-00', '00:00:00'),
(18, '0', NULL, '2022-03-01', '20:31:00', '2022-03-03', '20:31:00'),
(21, '50000000', NULL, '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(22, '50000000', NULL, '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(23, '50000000', NULL, '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(24, '50000000', NULL, '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(25, '50000000', NULL, '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(26, '50000000', NULL, '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(27, '2147483647', '7DVQW8TI7ZJCQRRE', '2022-03-03', '18:45:00', '2022-03-16', '20:45:00'),
(28, '2147483647', 'RCUHWJ2YWTUWPCS9', '2022-03-14', '15:41:00', '2022-03-15', '20:45:00'),
(29, '2147483647', 'DN5HL5BB5N927AWE', '2022-03-14', '18:45:00', '2022-03-15', '20:46:00'),
(30, '2147483647', 'O9EYHDXQDP99WIMB', '2022-03-14', '18:45:00', '2022-03-15', '20:46:00'),
(31, '3434340101890001', 'I3HJFUOCEBHL0E3D', '2022-03-14', '18:45:00', '2022-03-15', '20:46:00'),
(32, '123123', '0IWDMYD4C0XQJ31D', '2022-03-03', '02:32:00', '2022-03-05', '02:32:00'),
(33, '121212', 'QZVHZ9PH4PHIGHO0', '2022-03-01', '02:50:00', '2022-03-04', '03:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nama_depan` varchar(50) DEFAULT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `tipe_identitas` varchar(20) DEFAULT NULL,
  `nomor_identitas` varchar(20) DEFAULT NULL,
  `kewarganegaraan` enum('WNI','WNA') DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nik`, `nama_depan`, `nama_belakang`, `tipe_identitas`, `nomor_identitas`, `kewarganegaraan`, `alamat`, `no_hp`, `email`) VALUES
(7, '1200016', 'Mamang', 'Gaming', 'KTP', '1557', 'WNI', 'Surabaya', '0877665544082', 'mamanggaming@gmail.com'),
(8, '1200017', 'Rizki', 'Cahya', 'KTP', '1558', 'WNI', 'Ngampilan, Yogyakarta', '085866005508', 'rizki.cahya03@gmail.com'),
(9, '1200018', 'Fahdli', 'Gita', 'KTP', '1558', 'WNA', 'Maguwoharjo', '0877665544332', 'fahdligita@gmail.com'),
(10, '1200020', 'Donny', 'Lingga', 'KTP', '1555', 'WNA', 'Kotagede, Yogyakarta', '086677554429', 'donnyromel@gmail.com'),
(11, '120000200', 'Yusup', 'Andi', 'KTP', '1990', 'WNA', 'Maguwoharjo', '0877112299111', 'yusupandi@gmail.com'),
(12, '', '', '', '', '', '', '', '', ''),
(13, '1200029', 'Yudha', 'Stepen', 'KTP', '2991', 'WNI', 'Jalan Magelang', '0862567765321', 'yudha.stepen27@gmail.com'),
(14, '1200030', 'Akbar', 'Ramadhani', 'KTP', '1661', 'WNI', 'Taman Siswa, Yogyakarta', '08651212545427', 'akbarramdhani@gmail.com'),
(15, '9191919191', 'Miku', 'Nakano', 'KTP', '1998', 'WNA', 'Di hatinya Rizki', '81902121299221', 'mikumymine@gmail.com'),
(16, '1200038', 'Ewing', 'HD', 'KTP', '1772', 'WNI', 'Bekasi', '05612123444992', 'ewinghd@gmail.com'),
(17, '1200072', 'Raiden', 'Shogun', 'KTP', '1570', 'WNI', 'Di Dunia Genshin lah', '083891002110021', 'raidenshogun@gmail.com'),
(18, '1200072', 'Raiden', 'Shogun', 'KTP', '1570', 'WNI', 'Di Dunia Genshin lah', '083891002110021', 'raidenshogun@gmail.com'),
(19, '1200050', 'Zidan', 'Zamorayes', 'KTP', '7800', 'WNI', 'Surabaya', '085678954321', 'zidanzamorayes@gmail.com'),
(20, '1200080', 'Yae', 'Miko', 'KTP', '2007', 'WNI', 'Di Genshin', '087743211234', 'yaemiku@gmail.com'),
(21, '1200077', 'Raiden', 'Shogun', 'KTP', '1571', 'WNA', 'Di hatinya Rizki', '0876217788212', 'raidenshogun@gmail.com'),
(22, '1200088', 'Wanto', 'Suparman', 'KTP', '1221', 'WNI', 'Kutoarjo', '05621211212126', 'wanto_suparman@gmail.com'),
(23, '343376280220040001', 'Dhias mahendra', 'Wibawa', 'ktp', '1551', 'WNI', 'Ngampilan, Yogyakarta', '08651212545427', 'raidenshogun@gmail.com'),
(24, '343376280220040001', 'Kaedehara', 'Kazuha', 'KTP', '9811', 'WNA', 'Genshin Impact', '08569090878721', 'kaedeharakazuha@gmail.com'),
(25, '', '', '', '- Pilih -', '', '', '', '', ''),
(26, '432235', 'zidan', 'zamorano', 'KTP', '982653926359', 'WNI', 'Menteng,jakarta raya', '081924141353', 'zidan123@gmail.com'),
(27, '1975212', 'zidan', 'zamorano', 'KTP', '3423523622', 'WNI', 'Menteng,jakarta raya', '0819231242554', 'zidan123@gmail.com'),
(28, '', '', '', '- Pilih -', '', '', '', '', ''),
(29, '4000002', 'zidan', 'zamorano', 'KTP', '50000002', 'WNI', 'Menteng,jakarta raya', '0819231242554', 'zidan123@gmail.com'),
(30, '600002', 'lea', 'andani', 'KTP', '8000001', 'WNI', 'Menteng,jakarta utara', '081924141353', 'lea123@gmail.com'),
(31, '900001', 'lea', 'jubaedah', 'KTP', '982653926359', 'WNI', 'Menteng,jakarta selatan', '0819231242554', 'leajubaedah1@gmail.com'),
(32, '900001', 'lea', 'jubaedah', 'KTP', '982653926359', 'WNI', 'Menteng,jakarta selatan', '0819231242554', 'leajubaedah1@gmail.com'),
(33, '5000001', 'zidan', 'zamorano', 'KTP', '200000001', 'WNI', 'Menteng,jakarta selatan', '0819231242554', 'zidan123@gmail.com'),
(34, '1234567', 'zidan', 'zamorano', 'KTP', '1234567890', 'WNI', 'Menteng,jakarta utara', '0819231242554', 'zidan123@gmail.com'),
(35, '8000000', 'dadang', 'sutarman', 'KTP', '111111111111', 'WNI', 'Menteng,jakarta selatan', '08124423534', 'dadang@gmail.com'),
(36, '', '', '', '- Pilih -', '', '', '', '', ''),
(37, '000000000000', 'dadang', 'Ramadhani', 'KTP', '789000000', 'WNI', 'Menteng,jakarta selatan', '081924141353', 'dadang@gmail.com'),
(40, '50000000', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(41, '50000000', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(42, '50000000', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(43, '50000000', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(44, '50000000', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(45, '50000000', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(46, '50000000111', 'dadang', 'andani', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'dadang@gmail.com'),
(47, '3434340101890001', 'Akbar', 'sutarman', 'KTP', '3434340101890001', 'WNI', 'Menteng,jakarta selatan', '081924141353', 'ramadhaniakbar319@gmail.com'),
(48, '3434340101890001', 'Akbar', 'Ramadhani', 'KTP', '3434340101890001', 'WNI', 'Jakarta', '0819231242554', 'dadang@gmail.com'),
(49, '3434340101890001', 'Akbar', 'Ramadhani', 'KTP', '3434340101890001', 'WNI', 'Jakarta', '0819231242554', 'dadang@gmail.com'),
(50, '3434340101890001', 'Akbar', 'Ramadhani', 'KTP', '3434340101890001', 'WNI', 'Jakarta', '0819231242554', 'dadang@gmail.com'),
(51, '123123', 'Akbar', 'jubaedah', 'KTP', '50000002', 'WNI', 'Jakarta', '081924141353', 'lea123@gmail.com'),
(52, '121212', 'Akbar', 'sutarman', 'KTP', '982653926359', 'WNI', 'Jakarta', '0819231242554', 'dadang@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tipekamar`
--

CREATE TABLE `tipekamar` (
  `id_kamar_tipe` int(11) NOT NULL,
  `nama_kamar_tipe` varchar(50) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `gambar` varchar(500) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipekamar`
--

INSERT INTO `tipekamar` (`id_kamar_tipe`, `nama_kamar_tipe`, `fasilitas`, `gambar`, `harga`) VALUES
(6, 'Single Room', 'Single room biasanya hanya terdiri dari satu ruangan yang berisi hanya satu tempat tidur, sofa, dan kamar mandi. Jenis kamar hotel single room cocok satu orang saja karena memang fasilitas dan kapasitas yang tidak besar.', './assets/img/kamar-11.jpg', 'Rp 450.000'),
(7, 'Double Room', 'Twin bed sebenarnya mengacu pada jumlah ranjang atau tempat tidur yang ada dalam kamar hotel. Kamar yang menyediakan twin bed menyediakan dua kasur dengan ukuran kecil.', './assets/img/kamar-31.jpg', 'Rp. 520.000,00'),
(8, 'Deluxe Room', 'Kamar ini tentu memiliki kamar yang lebih besar. Tersedia pilihan kasur yang bisa kamu pilih, double bed atau twin bed. Biasanya, dari segi interior kamar ini terkesan lebih mewah.', './assets/img/kamar-32.jpg', 'Rp. 500.000,00'),
(9, 'Suite Room', 'Suite room merupakan tipe kamar hotel dengan fasilitas yang sangat lengkap. Bisa dikatakan bahwa suite room ini adalah apartemen kecil. Mengapa demikian? Hal ini karena di suite room terdapat beberapa bagian seperti kamar tidur, ada ruang memasak atau dapur dan ruang tamu.', './assets/img/kamar-51.jpg', 'Rp. 700.000,00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` enum('Administrator','Resepsionis') NOT NULL,
  `akses_terakhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `level`, `akses_terakhir`) VALUES
(5, 'akbar', '4f033a0a2bf2fe0b68800a3079545cd1', 'akbar ramadhani', 'Administrator', '2022-01-13'),
(8, 'rizkicahya_04', 'db87d5fd3b6dbf853a0ed172c42fca9f', 'Rizki Cahya Ramdani', 'Administrator', '2022-02-09'),
(9, 'fahdli_gita', 'f553a9b7ad6893f2505506ee6784213a', 'Fahdli Gita Firmansyah', 'Administrator', '2022-02-23'),
(10, 'donnyromel_80', '0eba3320c117cffa37f29cd0a8f25fdc', 'Donny Lingga AR', 'Administrator', '2022-02-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD PRIMARY KEY (`id_fasilitas_hotel`) USING BTREE;

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`) USING BTREE;

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`) USING BTREE;

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`) USING BTREE;

--
-- Indexes for table `tipekamar`
--
ALTER TABLE `tipekamar`
  ADD PRIMARY KEY (`id_kamar_tipe`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  MODIFY `id_fasilitas_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `id_kamar_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
