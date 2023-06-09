-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 12:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvbinalestari`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `iddiskusi` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `rolepengirim` varchar(255) NOT NULL,
  `komentar` text NOT NULL,
  `fotokomentar` text NOT NULL,
  `waktu` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`iddiskusi`, `idproduk`, `id`, `rolepengirim`, `komentar`, `fotokomentar`, `waktu`) VALUES
(35, 4, 8, 'Pengguna', 'Bisa Nego Gak min?', '', '2022-12-09 22:19:04'),
(36, 4, 1, 'Admin', 'Bisa, Silahkan Hubungi nomor yang tertera untuk lebih lanjut', '', '2022-12-09 22:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `idpengguna` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `nama`, `email`, `password`, `telepon`, `alamat`) VALUES
(8, 'Septiningrum putri hanafi', 'septiningrumputri@gmail.com', '123456', '+628192891', 'kapuas hulu '),
(12, 'Xeotiecy', 'xeotiecy@gmail.com', '280902', '082153824645', 'Melawi'),
(13, 'bawang putih', 'xeotiecy22@gmail.com', '123456', '08224857492', 'Sanggau'),
(14, 'Cecep', 'cecep@gmail.com', '2809022', '+62819289199', 'sambas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `namaproduk` text NOT NULL,
  `hargaproduk` text NOT NULL,
  `tiperumah` text NOT NULL,
  `alamatrumah` text NOT NULL,
  `fotoproduk` text NOT NULL,
  `deskripsiproduk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `namaproduk`, `hargaproduk`, `tiperumah`, `alamatrumah`, `fotoproduk`, `deskripsiproduk`) VALUES
(2, 'Karya Harmoni Residence', '430000000', '50 - 68', 'Jalan Karya / Kota Baru (Masuk ±300M Sebelah Kanan, Samping Indomaret)\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7979.633084651269!2d109.2879589550999!3d-0.05409150980141834!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e1d599a10d2aee9%3A0x404ac58d846cd668!2sKARYA%20HARMONI%20RESIDEN!5e0!3m2!1sid!2sid!4v1669568949023!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '', '<p><strong>Blok/ Nomor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; B5&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p><strong>Tipe (LB/LT) (M2)&nbsp; &nbsp; : 50 /&nbsp;&plusmn; 160 (&plusmn;18,80 m x 8,5 m)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Harga&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Rp. 430.000.000,-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Uang Muka&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Rp. 86.000.000,-&nbsp;(20)%&nbsp; &nbsp; /&nbsp;&nbsp;&nbsp; Rp.129.000.000,-&nbsp; (30%)&nbsp; </strong></p>\r\n\r\n<p><strong>Keterangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: Hadap Timur&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p><strong>Blok / Nomor&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;: B10, B11</strong></p>\r\n\r\n<p><strong>Tipe (LB/LT) (M2)&nbsp; &nbsp;: 68 /&nbsp;&nbsp;&plusmn; &nbsp;160 (&nbsp;&plusmn; &nbsp;18,85 m x 10/12 m)</strong></p>\r\n\r\n<p><strong>Harga&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Rp. 615.000.000,-</strong></p>\r\n\r\n<p><strong>Uang Muka&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Rp. 123.000.000,-&nbsp;(20)%&nbsp; &nbsp; /&nbsp;&nbsp;&nbsp; Rp.184.500.000,-&nbsp; (30%)&nbsp;</strong></p>\r\n\r\n<p><strong>Keterangan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Hadap Timur&nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-&gt; DISKON PEMBELIAN RUMAH SECARA CASH KERAS:</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp;Rp. 12.500.000,- (TIPE 68 M2), Rp. 10.000.000 (Tipe 50 M2)</strong></p>\r\n\r\n<p><strong>-&gt; CASH BERTAHAP&nbsp; (DP 20%&nbsp; SISA 5X PEMBAYARAN)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Keterangan :</strong></p>\r\n\r\n<p>- Harga dapat termasuk BPHTB, biaya AJB, BBN dan biaya - biaya pada proses KPR.</p>\r\n\r\n<p>- Tanda jadi untuk 1 unit Tipe 68 M2 sebesar Rp. 15.000.000,-</p>\r\n\r\n<p>- Tanda jadi untuk 1 unit Tipe 50 M2 sebesar Rp. 10.000.000,-</p>\r\n\r\n<p>- Setelah tanda jadi, persyaratan KPR harap segera dilengkapi</p>\r\n\r\n<p>- Uang muka harus diselesaikan paling lambat 7 hari terhitung sejak tanda jadi, apabila pihak pembeli lewat 7 hari tidak melunasi Uang Muka/DP maka pembelian dianggap bataldan tanda jadi yang&nbsp; telah&nbsp;dibayarkan hanya akan dikembalikan 50%</p>\r\n\r\n<p>- Tanda jadi sudah termasuk Uang Muka/ DP rumah.</p>\r\n\r\n<p>- Segala bentuk transaksi keuangan dianggap sah apabila dilakukan di Kantor Pemasaran</p>\r\n\r\n<p>- Khusus untuk pembelian secara KPR, besar KPR dan jangka waktu KPR ditentukan oleh Bank, jika terdapat selisih maka selisih tersebut akan dibayarkan kepada Pihak Developer.</p>\r\n\r\n<p>- AKAD KREDIT (Khusus KPR) hanya dapat dilakukan apabila pembeli telah melunasi Uang Muka/DP ke Developer</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fasilitas :</p>\r\n\r\n<p>- Listik PLN 1300 WATT</p>\r\n\r\n<p>- Air Bersih PDAM</p>\r\n\r\n<p>- Lebar Jalan 6,25 Meter Paving Black</p>\r\n\r\n<p>- Pagar Lingkungan 2 Meter</p>\r\n\r\n<p>- Pagar Samping Rumah 1,5 Meter</p>\r\n\r\n<p>- Saluran Depan Beton Bertulang</p>\r\n\r\n<p>- Security 24 Jam</p>\r\n\r\n<p>- CCTV 24 Jam</p>\r\n\r\n<p>- Fasum Taman Komplek</p>\r\n'),
(3, 'Ampera Harmoni 2 Residence', '365000000', '48', 'Jalan Ujung Pandang II\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.8171748191958!2d109.28302101395262!3d-0.04341733554326962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e1d59c4366186eb%3A0xa248ed92ac3c885!2sAmpera%\r\n20Harmony%20Residence%202!5e0!3m2!1sid!2sid!4v1669568455821!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\r\n\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n\r\n', '', '<p><strong>Blok/ Nomor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; B38&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p><strong>Tipe (LB/LT) (M2)&nbsp; &nbsp; : 48&nbsp;/&nbsp;&plusmn; 153&nbsp;(&plusmn;18&nbsp;m x 8,5 m)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Harga&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Rp. 365.000.000,-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Uang Muka&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Rp. 73.000.000,-&nbsp;(20)%&nbsp; &nbsp; /&nbsp;&nbsp;&nbsp; Rp. 109.000.000,-&nbsp; (30%)&nbsp; </strong></p>\r\n\r\n<p><strong>Keterangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: Hadap Barat&nbsp; &nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-&gt; DISKON UNTUK TIPE 48 M2 sebesar Rp. 6.000.000,- bagi pembelian secara CASH KERAS</strong></p>\r\n\r\n<p><strong>-&gt; CASH BERTAHAP DP 20% SISA 5X BAYAR</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Keterangan :&nbsp;</strong></p>\r\n\r\n<p>-&nbsp;Harga belum termasuk BPHTB</p>\r\n\r\n<p>-&nbsp;Harga belum termasuk biaya AJB, BBN dan biaya-biaya pada proses KPR</p>\r\n\r\n<p>- Tanda jadi untuk 1 Unit Tipe 48 M2 adalah Rp.5.000.000,- +</p>\r\n\r\n<p>-&nbsp;Setelah tanda jadi, persyaratan KPR harap segera dilengkapi</p>\r\n\r\n<p>-&nbsp;Uang muka harus diselesaikan paling lambat 7 hari terhitung sejak saat tanda jadi. Apabila pihak pembeli lewat dari 7 hari tidak melunasi DP/uang muka, maka pembelian dianggap batal dan tanda jadi yang telah dibayar hanya akan dikembalikan sebesar 50%. Tanda Jadi sudah termasuk bagian dari DP Rumah.</p>\r\n\r\n<p>-&nbsp;Segala bentuk transaksi keuangan dianggap sah apabila dilakukan di kantor pemasaran.&nbsp;</p>\r\n\r\n<p>-&nbsp;Khusus untuk pembelian secara KPR, besar KPR dan jangka waktu KPR ditentukan oleh Bank, jika terdapat selisih maka selisih tersebut akan dibayarkan kepada pihak Developer.</p>\r\n\r\n<p>-&nbsp;&nbsp;Akad Kredit (KPR) hanya dapat dilakukan apabila pembeli telah melunasi DP ke Developer</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Fasilitas :</strong></p>\r\n\r\n<p>- Listik PLN 1300 Watt</p>\r\n\r\n<p>- Air Bersih PDAM</p>\r\n\r\n<p>- Pagar Keliling Komplek</p>\r\n\r\n<p>- Pagar Pembatas Kiri Kanan Bangunan</p>\r\n\r\n<p>- Saluran Air Depan Beton dan Saluran Belakang Batako Plester</p>\r\n\r\n<p>- Pos Jaga dan Gerbang Komplek</p>\r\n\r\n<p>- One Main Gate System</p>\r\n\r\n<p>- Fasum Dan Fasos</p>\r\n'),
(5, 'Swadaya Harmony', '395000000', '48', 'Jl. Swadaya / Ujung Kota Baru Belok Kanan (Masuk ± 450M ) Kubu Raya\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.816013159117!2d109.29400561395269!3d-0.06161723553155289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e1d594b7e520bd3%3A0x7c7ac4f481f7d76d!2sKomplek%20Swadaya%20Resident!5e0!3m2!1sid!2sid!4v1669568279312!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '', '<p><strong>Blok/ Nomor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; A7, A9 - A27&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p><strong>Tipe (LB/LT) (M2)&nbsp; &nbsp; : 48&nbsp;/&nbsp;&plusmn; 160&nbsp;(&plusmn;18,00 m x 8,9&nbsp;m)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Harga&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Rp. 383.000.000,-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Keterangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: Hadap Barat&nbsp;&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Blok/ Nomor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; B1, B3 - B10, B15 - B29&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p><strong>Tipe (LB/LT) (M2)&nbsp; &nbsp; : 48&nbsp;/&nbsp;&plusmn; 160&nbsp;(&plusmn;18,00 m x 8,9&nbsp;m)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Harga&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Rp. 383.000.000,-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Keterangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: Hadap Barat&nbsp;&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Blok/ Nomor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; B11&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<p><strong>Tipe (LB/LT) (M2)&nbsp; &nbsp; : 48&nbsp;/&nbsp;&plusmn; 171&nbsp;(&plusmn;18,00 m x 9,5&nbsp;m)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Harga&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Rp. 395.000.000,-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>Keterangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: Barat</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Metode Pembayaran 1 :&nbsp;</strong></p>\r\n\r\n<p><strong>- CASH Keras (DP 60%, Sisa diangsur 5 bulan)&nbsp;</strong></p>\r\n\r\n<p><strong>- Disc Rp. 15. 000.000,-</strong></p>\r\n\r\n<p><strong>- Free Canopi</strong></p>\r\n\r\n<p><strong>- Free Casport Granit</strong></p>\r\n\r\n<p><strong>- Free Teralis&nbsp;Jendela</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Metode Pembayaran 2&nbsp;:&nbsp;</strong></p>\r\n\r\n<p><strong>- CASH Keras (DP 30%, Sisa diangsur 8&nbsp;bulan)&nbsp;</strong></p>\r\n\r\n<p><strong>- Disc Rp. 10. 000.000,-</strong></p>\r\n\r\n<p><strong>- Free Casport Granit</strong></p>\r\n\r\n<p><strong>- Free Teralis&nbsp;Jendela</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Metode Pembayaran 3&nbsp;:&nbsp;</strong></p>\r\n\r\n<p><strong>- CASH Keras (DP 20%,&nbsp; bisa bayar 10% Sisa 10%&nbsp;diangsur 5 bulan)&nbsp;</strong></p>\r\n\r\n<p><strong>- Disc Rp. 10. 000.000,-</strong></p>\r\n\r\n<p><strong>- Free Casport Granit</strong></p>\r\n\r\n<p><strong>- Free Teralis&nbsp;Jendela</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Keterangan :&nbsp;</strong></p>\r\n\r\n<p>-&nbsp;Harga belum termasuk BPHTB, biaya AJB,BBN dan biaya-blaya pada proses KPR.</p>\r\n\r\n<p>-&nbsp;Tanda Jadi untuk 1 Unit Tipe 48 M2 sebesar Rp. 7.500.000,- Setelah Tanda Jadi, Persyaratan KPR harap segera dilengkapi (KPR).</p>\r\n\r\n<p>-&nbsp;Tanda Jadi sudah termasuk Uang Muka/DP Rumah. Segala bentuk transaksi keuangan dianggap sah apabila dilakukan di Kantor Pemasaran.</p>\r\n\r\n<p>-&nbsp;Untuk pembelian secara KPR, besar KPR dan jangka waktu KPR ditentukan oleh Bank, jika terdapat selisih maka selisih tersebut akan dibayarkan kepada Pihak Developer.&nbsp;</p>\r\n\r\n<p>- AKAD KREDIT ( KPR) hanya dapat dilakukan apabila pembell telah melunasi Uang Muka/DP ke Developer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fasilitas :</p>\r\n\r\n<p>- Listrik PLN 1300 Watt</p>\r\n\r\n<p>- Air bersih</p>\r\n\r\n<p>- Lebar Jalan 6 Meter Paving Block</p>\r\n\r\n<p>- Pagar Lingkungan 1.85 Meter</p>\r\n\r\n<p>- Pagar Samping Rumah 1.5 Meter</p>\r\n\r\n<p>- Saluran Depan Beton Bertulang</p>\r\n\r\n<p>- Security 24 Jam</p>\r\n\r\n<p>- CCTV</p>\r\n\r\n<p>- Fasum Taman Komplek</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `produkfoto`
--

CREATE TABLE `produkfoto` (
  `idprodukfoto` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produkfoto`
--

INSERT INTO `produkfoto` (`idprodukfoto`, `idproduk`, `foto`) VALUES
(37, 2, 'Image (9).jpg'),
(38, 2, 'Image (10).jpg'),
(39, 2, 'Screenshot (510).png'),
(40, 3, 'Image (11).jpg'),
(41, 3, 'Image (12).jpg'),
(42, 3, 'Screenshot (506)1.png'),
(43, 4, 'Image (14).jpg'),
(44, 4, 'Image (13).jpg'),
(45, 4, 'Screenshot (505)1.png'),
(46, 5, 'Image (15).jpg'),
(47, 5, 'Image (16).jpg'),
(48, 5, 'Screenshot (508)1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`iddiskusi`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idpengguna`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `produkfoto`
--
ALTER TABLE `produkfoto`
  ADD PRIMARY KEY (`idprodukfoto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `iddiskusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idpengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produkfoto`
--
ALTER TABLE `produkfoto`
  MODIFY `idprodukfoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
