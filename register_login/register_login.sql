-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 02:45 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nama`, `no_telp`, `email`) VALUES
(9, 'Itha', '082205200321', 'itha03@gmail.com'),
(10, 'ina', '081234567810', 'ina94@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `varian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `id` int(2) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_gallery`
--

INSERT INTO `image_gallery` (`id`, `nama`, `image`) VALUES
(1, 'Pasta', 'img_1.jpg'),
(2, 'Pizza', 'img_3.jpg'),
(3, 'Burger', 'burger.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_pesan`
--

CREATE TABLE `lokasi_pesan` (
  `id_order` int(5) NOT NULL,
  `waktu` datetime NOT NULL,
  `id_Client` int(5) NOT NULL,
  `lokasi_pesan` varchar(255) NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `alasan_pembatalan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi_pesan`
--

INSERT INTO `lokasi_pesan` (`id_order`, `waktu`, `id_Client`, `lokasi_pesan`, `delivered`, `canceled`, `alasan_pembatalan`) VALUES
(7, '2022-10-26 12:01:00', 9, 'jl pandu blok A, Berau', 0, 1, 'maaf saya  ingin memesan yang lain'),
(8, '2022-10-27 14:00:00', 10, 'perumahan BI, Berau', 0, 0, 'maaf saya  ingin memesan yang lain'),
(9, '2022-10-28 16:40:00', 11, 'Jl krisna blok B, Berau', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(2) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` decimal(4,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `kategori_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama`, `deskripsi`, `harga`, `image`, `kategori_id`) VALUES
(1, 'Burger', 'Menu yang buat oleh chef-chef berpengalaman', '14.00', '88737_couscous_meat.jpg', 1),
(2, 'sweet dessert', 'Menu yang buat oleh chef-chef berpengalaman', '7.50', 'summer-dessert-sweet-ice-cream.jpg', 2),
(3, 'Sweet ice cream', 'Menu yang buat oleh chef-chef berpengalaman', '4.50', 'summer-dessert-sweet-ice-cream.jpg', 2),
(4, 'Late Vegetale', 'Menu yang buat oleh chef-chef berpengalaman', '10.00', 'coffee.jpeg', 3),
(5, 'Ice Tea', 'Classic marinara sauce, authentic old-world pepperoni.', '3.20', 'coffee.jpeg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `menu_kategori`
--

CREATE TABLE `menu_kategori` (
  `id` int(2) NOT NULL,
  `nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_kategori`
--

INSERT INTO `menu_kategori` (`id`, `nama`) VALUES
(1, 'burgers'),
(2, 'desserts'),
(3, 'drinks'),
(4, 'pasta'),
(5, 'pizzas'),
(6, 'salads');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `menu_id` int(5) NOT NULL,
  `jumlah` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_id`, `menu_id`, `jumlah`) VALUES
(3, 7, 13, 1),
(4, 7, 11, 1),
(5, 8, 1, 1),
(9, 7, 13, 1),
(18, 7, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `id_client` int(11) NOT NULL,
  `waktu_diantarkan` datetime NOT NULL,
  `nbr_tamu` int(2) NOT NULL,
  `table_id` int(3) NOT NULL,
  `diantarkan` tinyint(1) NOT NULL,
  `cancel` tinyint(1) NOT NULL,
  `alasan_pembatalan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `tgl_pesan`, `id_client`, `waktu_diantarkan`, `nbr_tamu`, `table_id`, `diantarkan`, `cancel`, `alasan_pembatalan`) VALUES
(1, '2022-10-22 09:07:00', 13, '2022-10-22 09:45:00', 0, 1, 0, 0, ''),
(2, '2022-10-28 14:00:00', 14, '2022-10-28 14:50:00', 4, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `resto`
--

CREATE TABLE `resto` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL,
  `varian` varchar(50) NOT NULL,
  `jenis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'utsweb@gmail.com', '$2y$10$VBy0MiNDh8QXUckYpBtc6O0', '2109106074'),
(2, 'utsweb1@gmail.com', '$2y$10$rlL5/WDutfKG.fGTxgxtp.R', '2109106074'),
(399, 'admin@gmail.com', '1234', 'admin'),
(2104, 'puputwdya2@gmail.com', '[2205', 'puput');

-- --------------------------------------------------------

--
-- Table structure for table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_settings`
--

INSERT INTO `web_settings` (`id`, `nama`, `value`) VALUES
(1, 'resto_name', '22resto'),
(2, 'resto_email', '22resto@gmail.com'),
(3, 'resto_phonenumber', '082104200322'),
(4, 'resto_address', 'Jl Inf no 22, Samarinda utara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_pesan`
--
ALTER TABLE `lokasi_pesan`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `fk_Client` (`id_Client`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_menu_kategori_id` (`kategori_id`);

--
-- Indexes for table `menu_kategori`
--
ALTER TABLE `menu_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu` (`menu_id`),
  ADD KEY `fk_order` (`order_id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resto`
--
ALTER TABLE `resto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lokasi_pesan`
--
ALTER TABLE `lokasi_pesan`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_kategori`
--
ALTER TABLE `menu_kategori`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resto`
--
ALTER TABLE `resto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2105;

--
-- AUTO_INCREMENT for table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
