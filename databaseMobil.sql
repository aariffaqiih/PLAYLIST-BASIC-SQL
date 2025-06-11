-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mobil
CREATE DATABASE IF NOT EXISTS `mobil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `mobil`;

-- Dumping structure for table mobil.dokumen
CREATE TABLE IF NOT EXISTS `dokumen` (
  `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengiriman` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `disetujui` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id_dokumen`),
  KEY `id_pengiriman` (`id_pengiriman`),
  KEY `id_mobil` (`id_mobil`),
  CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`id_pengiriman`) REFERENCES `pengiriman` (`id_pengiriman`),
  CONSTRAINT `dokumen_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mobil.dokumen: ~70 rows (approximately)
INSERT INTO `dokumen` (`id_dokumen`, `id_pengiriman`, `id_mobil`, `disetujui`, `created_by`, `created_at`) VALUES
	(1, 1, 1, 1, 'staff1', '2025-05-01'),
	(2, 2, 2, 0, 'staff2', '2025-05-03'),
	(3, 3, 3, 0, 'staff3', '2025-05-10'),
	(4, 4, 4, 1, 'staff1', '2025-05-11'),
	(5, 5, 5, 1, 'staff4', '2025-05-12'),
	(6, 6, 6, 1, 'staff2', '2025-05-15'),
	(7, 7, 7, 1, 'staff3', '2025-05-17'),
	(8, 8, 8, 0, 'staff5', '2025-05-18'),
	(9, 9, 9, 1, 'staff1', '2025-05-19'),
	(10, 10, 10, 0, 'staff4', '2025-05-20'),
	(11, 11, 11, 1, 'staff6', '2025-05-21'),
	(12, 12, 12, 0, 'staff2', '2025-05-22'),
	(13, 13, 13, 1, 'staff3', '2025-05-23'),
	(14, 14, 14, 0, 'staff5', '2025-05-24'),
	(15, 15, 15, 1, 'staff1', '2025-05-25'),
	(16, 16, 16, 0, 'staff2', '2025-05-26'),
	(17, 17, 17, 1, 'staff4', '2025-05-27'),
	(18, 18, 18, 1, 'staff6', '2025-05-28'),
	(19, 19, 19, 0, 'staff5', '2025-05-29'),
	(20, 20, 20, 0, 'staff7', '2025-05-30'),
	(21, 21, 21, 1, 'staff8', '2025-06-01'),
	(22, 22, 22, 0, 'staff9', '2025-06-02'),
	(23, 23, 23, 1, 'staff3', '2025-06-03'),
	(24, 24, 24, 0, 'staff7', '2025-06-04'),
	(25, 25, 25, 1, 'staff1', '2025-06-05'),
	(26, 26, 26, 1, 'staff4', '2025-06-06'),
	(27, 27, 27, 0, 'staff10', '2025-06-07'),
	(28, 28, 28, 0, 'staff5', '2025-06-08'),
	(29, 29, 29, 1, 'staff6', '2025-06-09'),
	(30, 30, 30, 1, 'staff2', '2025-06-10'),
	(31, 31, 5, 0, 'staff3', '2025-06-11'),
	(32, 32, 12, 1, 'staff7', '2025-06-11'),
	(33, 33, 7, 0, 'staff6', '2025-06-11'),
	(34, 34, 19, 1, 'staff4', '2025-06-11'),
	(35, 35, 22, 1, 'staff5', '2025-06-11'),
	(36, 36, 1, 0, 'staff8', '2025-06-11'),
	(37, 37, 30, 0, 'staff9', '2025-06-11'),
	(38, 38, 16, 1, 'staff10', '2025-06-11'),
	(39, 39, 9, 0, 'staff1', '2025-06-11'),
	(40, 40, 25, 1, 'staff2', '2025-06-11'),
	(41, 41, 14, 1, 'staff1', '2025-06-12'),
	(42, 42, 3, 0, 'staff2', '2025-06-12'),
	(43, 43, 21, 1, 'staff3', '2025-06-12'),
	(44, 44, 28, 0, 'staff4', '2025-06-12'),
	(45, 45, 6, 0, 'staff5', '2025-06-12'),
	(46, 46, 18, 1, 'staff6', '2025-06-12'),
	(47, 47, 10, 0, 'staff7', '2025-06-12'),
	(48, 48, 2, 1, 'staff8', '2025-06-12'),
	(49, 49, 13, 0, 'staff9', '2025-06-12'),
	(50, 50, 23, 1, 'staff10', '2025-06-12'),
	(51, 51, 8, 1, 'staff1', '2025-06-13'),
	(52, 52, 17, 0, 'staff3', '2025-06-13'),
	(53, 53, 4, 1, 'staff5', '2025-06-13'),
	(54, 54, 11, 0, 'staff2', '2025-06-13'),
	(55, 55, 29, 0, 'staff6', '2025-06-13'),
	(56, 56, 7, 1, 'staff4', '2025-06-13'),
	(57, 57, 19, 1, 'staff9', '2025-06-13'),
	(58, 58, 30, 0, 'staff7', '2025-06-13'),
	(59, 59, 15, 0, 'staff8', '2025-06-13'),
	(60, 60, 9, 1, 'staff10', '2025-06-13'),
	(61, 61, 20, 1, 'staff2', '2025-06-14'),
	(62, 62, 3, 0, 'staff4', '2025-06-14'),
	(63, 63, 25, 1, 'staff6', '2025-06-14'),
	(64, 64, 6, 0, 'staff8', '2025-06-14'),
	(65, 65, 14, 1, 'staff1', '2025-06-14'),
	(66, 66, 9, 0, 'staff3', '2025-06-14'),
	(67, 67, 27, 1, 'staff5', '2025-06-14'),
	(68, 68, 13, 0, 'staff7', '2025-06-14'),
	(69, 69, 1, 0, 'staff9', '2025-06-14'),
	(70, 70, 18, 1, 'staff10', '2025-06-14');

-- Dumping structure for table mobil.mobil
CREATE TABLE IF NOT EXISTS `mobil` (
  `id_mobil` int(11) NOT NULL AUTO_INCREMENT,
  `merek` enum('BMW','Nissan','Honda','BYD','Toyota') NOT NULL,
  `kategori` enum('MPV','SUV','Sedan','Sport') NOT NULL,
  `model` varchar(50) NOT NULL,
  `rilis` year(4) NOT NULL,
  `harga` int(12) NOT NULL CHECK (`harga` > 0),
  `status` enum('baru','second') NOT NULL DEFAULT 'baru',
  PRIMARY KEY (`id_mobil`),
  UNIQUE KEY `model` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mobil.mobil: ~30 rows (approximately)
INSERT INTO `mobil` (`id_mobil`, `merek`, `kategori`, `model`, `rilis`, `harga`, `status`) VALUES
	(1, 'BMW', 'Sedan', 'BMW 320i', '2022', 750000000, 'baru'),
	(2, 'Nissan', 'SUV', 'Nissan X-Trail', '2021', 520000000, 'second'),
	(3, 'Honda', 'MPV', 'Honda Mobilio', '2023', 260000000, 'baru'),
	(4, 'BYD', 'Sedan', 'BYD Seal', '2024', 600000000, 'baru'),
	(5, 'Toyota', 'Sport', 'Toyota Supra GR', '2020', 1400000000, 'second'),
	(6, 'Honda', 'Sedan', 'Honda Civic RS', '2024', 580000000, 'baru'),
	(7, 'Toyota', 'MPV', 'Toyota Innova Zenix', '2023', 495000000, 'baru'),
	(8, 'Nissan', 'Sport', 'Nissan GT-R Nismo', '2022', 2147483647, 'second'),
	(9, 'BYD', 'SUV', 'BYD Tang EV', '2024', 720000000, 'baru'),
	(10, 'BMW', 'SUV', 'BMW X5', '2021', 1350000000, 'second'),
	(11, 'BYD', 'MPV', 'BYD Song Max', '2023', 430000000, 'baru'),
	(12, 'Toyota', 'Sedan', 'Toyota Camry Hybrid', '2022', 720000000, 'second'),
	(13, 'Nissan', 'SUV', 'Nissan Rogue', '2023', 610000000, 'baru'),
	(14, 'Honda', 'Sport', 'Honda NSX', '2021', 2147483647, 'second'),
	(15, 'BMW', 'Sport', 'BMW M4 Coupe', '2024', 2147483647, 'baru'),
	(16, 'Honda', 'SUV', 'Honda CR-V Turbo', '2024', 670000000, 'baru'),
	(17, 'BMW', 'MPV', 'BMW 218i Gran Tourer', '2022', 800000000, 'second'),
	(18, 'Toyota', 'SUV', 'Toyota Fortuner GR', '2023', 560000000, 'baru'),
	(19, 'BYD', 'Sport', 'BYD Yangwang U9', '2024', 2147483647, 'baru'),
	(20, 'Nissan', 'Sedan', 'Nissan Altima', '2021', 490000000, 'second'),
	(21, 'BMW', 'Sport', 'BMW i8 Roadster', '2021', 2147483647, 'second'),
	(22, 'Honda', 'MPV', 'Honda Odyssey', '2023', 720000000, 'baru'),
	(23, 'Toyota', 'Sedan', 'Toyota Corolla Altis', '2022', 500000000, 'baru'),
	(24, 'Nissan', 'MPV', 'Nissan Serena', '2023', 590000000, 'baru'),
	(25, 'BYD', 'Sedan', 'BYD Han EV', '2024', 880000000, 'baru'),
	(26, 'Toyota', 'SUV', 'Toyota RAV4 Hybrid', '2024', 670000000, 'baru'),
	(27, 'Honda', 'Sedan', 'Honda Accord Turbo', '2023', 630000000, 'baru'),
	(28, 'BMW', 'Sedan', 'BMW 530i', '2022', 1150000000, 'second'),
	(29, 'BYD', 'MPV', 'BYD e6 MPV', '2023', 580000000, 'baru'),
	(30, 'Nissan', 'Sport', 'Nissan Z 2023', '2023', 1500000000, 'baru');

-- Dumping structure for table mobil.pengiriman
CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `id_mobil` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL CHECK (`jumlah` > 0),
  `tujuan` varchar(50) NOT NULL,
  `status` enum('proses','batal','terkirim') NOT NULL,
  PRIMARY KEY (`id_pengiriman`),
  KEY `id_mobil` (`id_mobil`),
  CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mobil.pengiriman: ~70 rows (approximately)
INSERT INTO `pengiriman` (`id_pengiriman`, `id_mobil`, `tanggal`, `jumlah`, `tujuan`, `status`) VALUES
	(1, 1, '2025-05-01', 5, 'Jerman', 'terkirim'),
	(2, 2, '2025-05-03', 3, 'Australia', 'proses'),
	(3, 3, '2025-05-10', 4, 'Jepang', 'batal'),
	(4, 4, '2025-05-11', 2, 'Korea Selatan', 'terkirim'),
	(5, 5, '2025-05-12', 1, 'Kanada', 'terkirim'),
	(6, 6, '2025-05-15', 2, 'Belanda', 'proses'),
	(7, 7, '2025-05-17', 3, 'Singapura', 'terkirim'),
	(8, 8, '2025-05-18', 1, 'Jepang', 'proses'),
	(9, 9, '2025-05-19', 2, 'Jerman', 'terkirim'),
	(10, 10, '2025-05-20', 1, 'Uni Emirat Arab', 'batal'),
	(11, 11, '2025-05-21', 2, 'Italia', 'terkirim'),
	(12, 12, '2025-05-22', 3, 'Swiss', 'proses'),
	(13, 13, '2025-05-23', 4, 'Norwegia', 'terkirim'),
	(14, 14, '2025-05-24', 1, 'Arab Saudi', 'batal'),
	(15, 15, '2025-05-25', 1, 'Inggris', 'terkirim'),
	(16, 16, '2025-05-26', 2, 'Austria', 'proses'),
	(17, 17, '2025-05-27', 1, 'Denmark', 'terkirim'),
	(18, 18, '2025-05-28', 3, 'Finlandia', 'terkirim'),
	(19, 19, '2025-05-29', 2, 'Swedia', 'proses'),
	(20, 20, '2025-05-30', 1, 'Belgia', 'batal'),
	(21, 21, '2025-06-01', 1, 'Portugal', 'terkirim'),
	(22, 22, '2025-06-02', 3, 'Ceko', 'proses'),
	(23, 23, '2025-06-03', 2, 'Hungaria', 'terkirim'),
	(24, 24, '2025-06-04', 1, 'Polandia', 'batal'),
	(25, 25, '2025-06-05', 4, 'Turki', 'terkirim'),
	(26, 26, '2025-06-06', 2, 'Slovakia', 'terkirim'),
	(27, 27, '2025-06-07', 1, 'Jepang', 'proses'),
	(28, 28, '2025-06-08', 3, 'Korea Selatan', 'batal'),
	(29, 29, '2025-06-09', 4, 'Austria', 'terkirim'),
	(30, 30, '2025-06-10', 2, 'Jerman', 'terkirim'),
	(31, 5, '2025-06-11', 2, 'Jepang', 'proses'),
	(32, 12, '2025-06-11', 1, 'Singapura', 'terkirim'),
	(33, 7, '2025-06-11', 3, 'Jerman', 'batal'),
	(34, 19, '2025-06-11', 1, 'Korea Selatan', 'terkirim'),
	(35, 22, '2025-06-11', 2, 'Austria', 'terkirim'),
	(36, 1, '2025-06-11', 1, 'Jepang', 'proses'),
	(37, 30, '2025-06-11', 2, 'Finlandia', 'batal'),
	(38, 16, '2025-06-11', 4, 'Turki', 'terkirim'),
	(39, 9, '2025-06-11', 3, 'Uni Emirat Arab', 'proses'),
	(40, 25, '2025-06-11', 2, 'Jerman', 'terkirim'),
	(41, 14, '2025-06-12', 2, 'Italia', 'terkirim'),
	(42, 3, '2025-06-12', 1, 'Australia', 'batal'),
	(43, 21, '2025-06-12', 2, 'Korea Selatan', 'terkirim'),
	(44, 28, '2025-06-12', 3, 'Jepang', 'proses'),
	(45, 6, '2025-06-12', 1, 'Swiss', 'proses'),
	(46, 18, '2025-06-12', 4, 'Singapura', 'terkirim'),
	(47, 10, '2025-06-12', 2, 'Austria', 'batal'),
	(48, 2, '2025-06-12', 1, 'Kanada', 'terkirim'),
	(49, 13, '2025-06-12', 3, 'Turki', 'proses'),
	(50, 23, '2025-06-12', 2, 'Finlandia', 'terkirim'),
	(51, 8, '2025-06-13', 1, 'Belanda', 'terkirim'),
	(52, 17, '2025-06-13', 2, 'Korea Selatan', 'proses'),
	(53, 4, '2025-06-13', 3, 'Jepang', 'terkirim'),
	(54, 11, '2025-06-13', 2, 'Singapura', 'batal'),
	(55, 29, '2025-06-13', 1, 'Norwegia', 'proses'),
	(56, 7, '2025-06-13', 4, 'Jerman', 'terkirim'),
	(57, 19, '2025-06-13', 2, 'Finlandia', 'terkirim'),
	(58, 30, '2025-06-13', 1, 'Swiss', 'batal'),
	(59, 15, '2025-06-13', 2, 'Turki', 'proses'),
	(60, 9, '2025-06-13', 3, 'Kanada', 'terkirim'),
	(61, 20, '2025-06-14', 2, 'Irlandia', 'terkirim'),
	(62, 3, '2025-06-14', 1, 'Prancis', 'proses'),
	(63, 25, '2025-06-14', 3, 'Belgia', 'terkirim'),
	(64, 6, '2025-06-14', 2, 'Swedia', 'batal'),
	(65, 14, '2025-06-14', 1, 'Polandia', 'terkirim'),
	(66, 9, '2025-06-14', 4, 'Jepang', 'proses'),
	(67, 27, '2025-06-14', 2, 'Denmark', 'terkirim'),
	(68, 13, '2025-06-14', 1, 'Ceko', 'batal'),
	(69, 1, '2025-06-14', 3, 'Belanda', 'proses'),
	(70, 18, '2025-06-14', 2, 'Turki', 'terkirim');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
