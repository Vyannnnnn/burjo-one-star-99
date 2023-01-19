-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 19, 2023 at 11:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok9`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `id_meja` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `nomor_hp` varchar(50) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `total_sudah_dibayar` int(11) NOT NULL,
  `batas_pembayaran_dp` datetime NOT NULL,
  `status_pembayaran` varchar(250) NOT NULL,
  `bukti_pembayaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_detail_menu`, `id_meja`, `nama_pemesan`, `nomor_hp`, `tanggal_pesan`, `tanggal_reservasi`, `total_pembayaran`, `total_sudah_dibayar`, `batas_pembayaran_dp`, `status_pembayaran`, `bukti_pembayaran`) VALUES
(1, 'INV20230119132639', 1, 'Varin Kiara', '081228990876', '2023-01-19 13:26:39', '2023-01-19', 15000, 15000, '2023-01-20 13:26:39', 'Sudah Bayar DP', '19012023072829brimo.jpeg'),
(3, 'INV20230119142602', 4, 'Achmad Seta', '089678996554', '2023-01-19 14:26:02', '2023-01-20', 18000, 18000, '2023-01-20 14:26:02', 'Sudah Bayar DP', '19012023082618qris.jpeg'),
(4, 'INV20230119170335', 4, 'Alif Naufal', '081234568765', '2023-01-19 17:03:35', '2023-01-19', 30000, 15000, '2023-01-20 17:03:35', 'Sudah Bayar DP', '19012023110410brimo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_menu`
--

CREATE TABLE `gambar_menu` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar_menu`
--

INSERT INTO `gambar_menu` (`id_gambar`, `id_menu`, `gambar`) VALUES
(1, 1, '18012023175713ayamgeprek.jpg'),
(3, 4, '18012023175806kopi.jpg'),
(4, 6, '18012023175830nasgor.jpg'),
(5, 8, '18012023175928nutrisari.jpg'),
(6, 2, '18012023175949orak.jpg'),
(8, 3, '18012023180145teh.jpg'),
(9, 9, '19012023073651bubur.jpg'),
(10, 5, '19012023074045indomiegor.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(50) NOT NULL,
  `kapasitas_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `kapasitas_meja`) VALUES
(1, '1A', 2),
(2, '1B', 2),
(3, '1C', 2),
(4, '2A', 4),
(5, '2B', 4),
(7, '3A', 6),
(8, '3B', 6),
(9, '1D', 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `detail_menu` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL DEFAULT 'Tersedia',
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `detail_menu`, `kategori`, `stok`, `harga`) VALUES
(1, 'Ayam Geprek', 'Ayam Geprek Bbq, Asam Manis, Lada Hitam', 'Makanan', 'Tersedia', 12000),
(2, 'Orak-Arik', 'Orak Arik Telur, Ayam', 'Makanan', 'Tersedia', 12000),
(3, 'Teh', 'Es Teh / Teh Panas / Hangat Manis / Tawar', 'Minuman', 'Tersedia', 3000),
(4, 'Kopi', 'Kopi Susu', 'Minuman', 'Tersedia', 3000),
(5, 'Indomie', 'Mie Rebus, Mie Goreng', 'Makanan', 'Tersedia', 8000),
(6, 'Nasi Goreng', 'Biasa, Spesial, Sosis, Seafood', 'Makanan', 'Tersedia', 15000),
(8, 'Nutrisari', 'Jeruk, Anggur, Lemon, Kelapa Muda', 'Makanan', 'Tersedia', 3000),
(9, 'Bubur Kacang Hijau', 'Biasa, Spesial', 'Makanan', 'Tersedia', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_dibooking`
--

CREATE TABLE `menu_dibooking` (
  `id_menu_dibooking` int(11) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `nama_makanan` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `status_order` varchar(250) NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_dibooking`
--

INSERT INTO `menu_dibooking` (`id_menu_dibooking`, `id_detail_menu`, `nama_makanan`, `jumlah`, `sub_total`, `status_order`) VALUES
(1, 'INV20230119132639', 'Ayam', 1, 12000, 'success'),
(2, 'INV20230119132639', 'Kopi', 1, 3000, 'success'),
(3, 'INV20230119142414', 'Orak-Arik', 1, 12000, 'success'),
(4, 'INV20230119142414', 'Nutrisari', 1, 3000, 'success'),
(5, 'INV20230119142602', 'Orak-Arik', 1, 12000, 'success'),
(6, 'INV20230119142602', 'Nutrisari', 2, 6000, 'success'),
(7, 'INV20230119170335', 'Orak-Arik', 2, 24000, 'success'),
(8, 'INV20230119170335', 'Teh', 1, 3000, 'success'),
(9, 'INV20230119170335', 'Nutrisari', 1, 3000, 'success');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(11) NOT NULL,
  `nama_merchant` varchar(50) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  `kode_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_merchant`, `atas_nama`, `kode_pembayaran`) VALUES
(1, 'DANA', 'One Star 99', '081215822499'),
(3, 'OVO', 'One Star 99', '081215822499');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `telepon` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_kelamin` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jabatan` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `email`, `alamat`, `password`, `telepon`, `jenis_kelamin`, `jabatan`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Jl. Slamet Riyadi Kartasura, Sukoharjo', '21232f297a57a5a743894a0e4a801fc3', '0895422282240', 'Perempuan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `profil_usaha`
--

CREATE TABLE `profil_usaha` (
  `id` int(11) NOT NULL,
  `nama_usaha` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `foto_usaha_1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_usaha`
--

INSERT INTO `profil_usaha` (`id`, `nama_usaha`, `deskripsi`, `alamat`, `nomor_telepon`, `email`, `instagram`, `foto_usaha_1`) VALUES
(1, 'Burjo One Star 99 ', 'Cafe tempat ngopi ternyaman dan terjangkau wilayah Yogyakarta. Awalnya owner menggunakan angka 88 karena alasan suka dengan angka tersebut, tetapi ada angka bagus yang mengingatkan kita akan Asmaul Husna. Owner berharap para pecinta Burjo One Star 99 dapat menikmati hidangan yang disajikan, dengan tetap mengingat nama sang pencipta yang indah-indah. Dan menghadirkan hal indah bagi hidup Burjo lover sekalian. Selamat beraktifitas jangan lupa bahagia. Yuk pesan menu favoritemu!!!', 'Jl. Super Raya No.163-177, Dero, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '081215822499', 'burjoonestar99@gmail.com', 'burjoonestar99', '18012023163316logo_bj.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `id_meja` (`id_meja`);

--
-- Indexes for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `gambar_menu_ibfk_1` (`id_menu`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  ADD PRIMARY KEY (`id_menu_dibooking`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  MODIFY `id_menu_dibooking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_meja`) REFERENCES `meja` (`id_meja`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD CONSTRAINT `gambar_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
