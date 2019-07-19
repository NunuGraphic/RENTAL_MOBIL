-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 02:35 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmotor`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`username`, `password`, `hak_akses`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbsewa`
--

CREATE TABLE `tbsewa` (
  `id` char(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `ktp` int(20) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` int(25) NOT NULL,
  `plat` varchar(30) NOT NULL,
  `harga` int(20) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `lama` int(25) NOT NULL,
  `total` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsewa`
--

INSERT INTO `tbsewa` (`id`, `nama`, `ktp`, `alamat`, `hp`, `plat`, `harga`, `tgl_sewa`, `lama`, `total`) VALUES
('TD01', 'Ana', 95985744, 'Solo', 85679087, 'AD4431OH', 120000, '2019-06-13', 8, 960000);

-- --------------------------------------------------------

--
-- Table structure for table `tbstock`
--

CREATE TABLE `tbstock` (
  `plat` char(20) NOT NULL,
  `motor` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbstock`
--

INSERT INTO `tbstock` (`plat`, `motor`, `jenis`, `harga`) VALUES
('AD4431OH', 'BEAT', 'Matic', 120000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbsewa`
--
ALTER TABLE `tbsewa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbstock`
--
ALTER TABLE `tbstock`
  ADD PRIMARY KEY (`plat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
