-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 03:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arume`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `berat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(10, 'TV PANASAJA', 15, 1500000, 'INI TV BISA NONTON APA SAJA', 'tv1.png', 2000),
(11, 'MAKBUK', 16, 5000000, 'MAKBUK PRO BANGET', 'makbuk.jpg', 1500),
(12, 'IPONG 14 PROMAG', 17, 8900000, 'Ipong 14 promag mahal bgt gausah dibeli kalo gamampu ges', 'ipong.jpg', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(27, 8, 'Uniforms', 'logouniforms.jpeg'),
(26, 8, 'Mantap nggih', 'untadlogo.png'),
(29, 9, 'pak luhut', 'opung.jpeg'),
(30, 9, 'ertertrtrt', 'software_kaos.PNG'),
(31, 10, 'tv', 'tv2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(15, 'Elektronik'),
(16, 'Komputer'),
(17, 'Gadget'),
(18, 'hp'),
(19, 'Baju');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `foto`) VALUES
(8, 'kepo', 'kepo123@mail.com', 'kepo123', NULL),
(9, 'qwe', 'qwerty@mail.com', 'qwerty', NULL),
(7, 'kepokamuh', 'demo123@mail.com', 'demo123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BCA', '6281836614', 'Hana Gracie Rosaleen');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(26, '20220623MYH0TZYA', 8, 2),
(27, '20220623VBQA8QGL', 8, 1),
(28, '20220623EZNAYZAQ', 8, 1),
(29, '202206235CDEUAC0', 8, 1),
(30, '20220624M6RYOZUY', 9, 2),
(31, '20220624M6RYOZUY', 8, 1),
(32, '20230622CSAPVEWY', 8, 1),
(33, '20230622OYRGCY6C', 11, 1),
(34, '20230622QYBRZ23X', 12, 1),
(35, '20230623B7AHBZGK', 12, 1),
(36, '20230625YSSIW4HJ', 11, 1),
(37, '20230626CZOST0XB', 12, 1),
(38, '202306264BHVW95P', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'Arume Shop', 154, 'Jl. Kepo banget sih kamuh', '08123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(20, 1, '20220623MYH0TZYA', '2022-06-23', 'ganteng', '4545454545', 'Kepulauan Riau', '172', 'Jl.Jaelangkara', '94141', 'jne', 'OKE', '6-10 Hari', 68000, 2000, 400000, 468000, 1, 'WhatsApp_Image_2022-06-23_at_12_46_081.jpeg', 'Moh.Agung', 'BRI', '73454-42435-3434-4345665', 3, '20220623X26GJHVK'),
(21, 1, '20220623VBQA8QGL', '2022-06-23', 'Rifki', '0857343434365', 'Jawa Barat', '24', 'Jl.Soetomo', '94141', 'jne', 'OKE', '3-4 Hari', 40000, 1000, 200000, 240000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(22, 1, '20220623EZNAYZAQ', '2022-06-23', 'anjay', '085734343436545', 'Kalimantan Tengah', '296', 'Jl.Jaelangkara', '94141', 'jne', 'OKE', '4-5 Hari', 57000, 1000, 200000, 257000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(23, 4, '202206235CDEUAC0', '2022-06-23', 'Rafi', '083757034915', 'Sulawesi Tenggara', '494', 'Jl.Jaelangkara', '94141', 'jne', 'OKE', '3-4 Hari', 48000, 1000, 200000, 248000, 1, 'images_(8).jpeg', 'Rafi', 'BRI', '423788-78876-788', 2, '4353434'),
(24, 5, '20220624M6RYOZUY', '2022-06-24', 'tester', '08573434343234', 'DI Yogyakarta', '39', 'jl.Sepi', '96343', 'jne', 'OKE', '3-4 Hari', 123000, 3000, 800000, 923000, 1, 'WhatsApp_Image_2022-06-23_at_12_46_082.jpeg', 'tester', 'BRI', '73454-42435-3434-4345665', 3, '20220624M6Rrtrtery'),
(25, 6, '20230622CSAPVEWY', '2023-06-22', 'fadil', '123456', 'DKI Jakarta', '152', 'kepo', '12345', 'jne', 'REG', '2-3 Hari', 50000, 1000, 200000, 250000, 1, 'hyewon.jpg', 'fadil', 'puki', '3820183021', 2, '64123'),
(26, 6, '20230622OYRGCY6C', '2023-06-22', 'akusendiri', '098773892', 'DKI Jakarta', '152', 'kepobgt da', '12345', 'jne', 'CTC', '1-2 Hari', 20000, 1500, 5000000, 5020000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(27, 6, '20230622QYBRZ23X', '2023-06-22', 'kepobanget', '12038905', 'DKI Jakarta', '154', 'kepo kamu', '12346', 'jne', 'CTC', '1-2 Hari', 10000, 1000, 8900000, 8910000, 1, 'Gambar_Buku.png', 'fadil', 'ABV', '0091283908', 3, '12390'),
(28, 6, '20230623B7AHBZGK', '2023-06-23', 'fadil wibu', '08321789124', 'Bali', '17', 'kepo kamuuh', '65430', 'jne', 'OKE', '3-6 Hari', 30000, 1000, 8900000, 8930000, 1, 'Gambar_Buku1.png', 'fadil wibu', 'fadil bank', '9786780934590', 2, '8908690'),
(29, 7, '20230625YSSIW4HJ', '2023-06-25', 'kepobanget', '01232790124', 'DKI Jakarta', '154', 'isdfg', '21355', 'jne', 'CTC', '1-2 Hari', 20000, 1500, 5000000, 5020000, 1, 'Gambar_Buku2.png', 'qweqwe', 'qwet', '1231245', 3, '123135'),
(30, 8, '20230626CZOST0XB', '2023-06-26', 'qwer', '674556234', 'DKI Jakarta', '154', 'sadfg', '2134', 'tiki', 'REG', '2 Hari', 9000, 1000, 8900000, 8909000, 1, 'Gambar_Buku3.png', 'weqr', 'wqrt', '1235213', 3, '321415'),
(31, 7, '202306264BHVW95P', '2023-06-26', 'fadilah', '081234567789', 'Jawa Timur', '441', 'jalan sumenep no. 3', '21315', 'jne', 'OKE', '4-7 Hari', 23000, 1000, 8900000, 8923000, 1, '2-12-154x300.jpg', 'fadilah', 'BRI', '2138859182739', 3, '2135123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'Super Admin', 'superadmin', '12345'),
(2, 'Admin ', 'admin', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`) USING BTREE;

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`) USING BTREE;

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
