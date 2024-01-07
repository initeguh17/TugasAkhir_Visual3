-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 11:03 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `kode_kartu` varchar(10) NOT NULL,
  `nama_kartu` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_kartu`, `nama_kartu`, `jumlah`, `harga`) VALUES
(1, '115', 'IM3', '50', '5500'),
(2, '110', 'Indosat', '40', '5000'),
(3, '123', 'XL', '55', '6000'),
(4, '135', 'Smatfren', '30', '4500'),
(5, '130', 'Telkomsel', '25', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `konter`
--

CREATE TABLE `konter` (
  `id` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_sales` int(10) NOT NULL,
  `kode_konter` int(10) NOT NULL,
  `nama_konter` varchar(50) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konter`
--

INSERT INTO `konter` (`id`, `id_barang`, `id_sales`, `kode_konter`, `nama_konter`, `alamat`, `telp`) VALUES
(1, 2, 2, 800, 'Laris', 'Banjarmasin', '0456622147'),
(2, 1, 1, 234, 'Jaya Makmur', 'Banjarmasin', '0987789875'),
(3, 3, 7, 92, 'Agus', 'Banjarmasin', '0895245845'),
(4, 4, 3, 365, 'Cahyo', 'Banjarmasin', '0836987158'),
(5, 5, 4, 987, 'DuaSatu', 'Banjarmasin', '0725125525');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user'),
(3, '1234', '1234'),
(4, 'teguh', '1234'),
(5, '54321', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(10) NOT NULL,
  `id_sales` int(11) NOT NULL,
  `id_konter` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_stok` int(11) NOT NULL,
  `kode_penjualan` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_sales`, `id_konter`, `id_barang`, `id_stok`, `kode_penjualan`, `tanggal`, `jumlah`, `harga`, `total`) VALUES
(1, 1, 1, 1, 1, 230, '2020-03-23', '20', '5500', '110000'),
(2, 2, 2, 2, 2, 213, '0000-00-00', '20', '5000', '100000'),
(3, 3, 3, 3, 3, 215, '0000-00-00', '10', '6000', '60000'),
(4, 4, 4, 4, 4, 364, '0000-00-00', '10', '4500', '45000'),
(5, 7, 5, 5, 6, 654, '0000-00-00', '10', '10000', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) NOT NULL,
  `id_stok` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `kode_sales` int(10) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_sales` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `id_stok`, `id_barang`, `kode_sales`, `nik`, `nama_sales`, `jk`, `alamat`, `telp`) VALUES
(1, 4, 1, 770, '1243568790', 'Mawar', 'P', 'Banjarmasin', '0135246987'),
(2, 2, 3, 667, '3241567893', 'Bagus', 'L', 'Banjarmasin', '089796955432'),
(3, 3, 4, 789, '3456789021', 'Wahyu', 'L', 'Banjarmasin', '0123456789'),
(4, 1, 2, 457, '1245367908', 'Melati', 'P', 'Banjarmasin', '0521364789'),
(7, 6, 5, 225, '2345678901', 'Asep', 'L', 'Banjarmasin', '0231546987');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id` int(11) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id`, `id_barang`, `kode_barang`, `nama_barang`, `jumlah`) VALUES
(1, 1, 335, 'Kartu Perdana', '40'),
(2, 2, 232, 'Kartu Data', '45'),
(3, 3, 354, 'Kartu Perdana', '30'),
(4, 4, 355, 'Kartu Perdana', '40'),
(6, 5, 230, 'Kartu Data', '45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konter`
--
ALTER TABLE `konter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_penjualan` (`id_barang`,`id_sales`),
  ADD KEY `id_sales` (`id_sales`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_sales` (`id_sales`,`id_konter`,`id_barang`,`id_stok`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_stok` (`id_stok`),
  ADD KEY `id_konter` (`id_konter`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_penjualan` (`id_stok`,`id_barang`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `konter`
--
ALTER TABLE `konter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `konter`
--
ALTER TABLE `konter`
  ADD CONSTRAINT `konter_ibfk_1` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `konter_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_stok`) REFERENCES `stok` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_4` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_5` FOREIGN KEY (`id_konter`) REFERENCES `konter` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`id_stok`) REFERENCES `stok` (`id`);

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
