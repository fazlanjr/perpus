-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 28, 2024 at 07:11 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `kode_buku` bigint(20) NOT NULL,
  `nama_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rak` int(11) NOT NULL,
  `stok_buku` int(11) NOT NULL,
  `foto_buku` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `nama_buku`, `penerbit`, `rak`, `stok_buku`, `foto_buku`, `created_at`, `updated_at`) VALUES
(1, 9784670945793, 'Ketangguhan Rambutan Berkilau', 'Perum Nurdiyanti Tarihoran Tbk', 10, 83, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(2, 9780546240719, 'Kehancuran untuk Jeruk Penyair', 'PD Gunawan Kusmawati (Persero) Tbk', 10, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(3, 9781233801190, 'Sosok yang Menawan, Jerapah Jahil', 'Yayasan Puspita (Persero) Tbk', 2, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 19:08:12'),
(4, 9797723666644, 'Cahaya Terang Rubah Ceria', 'Perum Usada Gunarto Tbk', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 19:08:03'),
(5, 9797010635094, 'Kehancuran untuk Katak Himalayah', 'Perum Melani Wibowo', 9, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(6, 9784806981763, 'Hal Tak Terduga Penguin Rocker', 'UD Firgantoro Tbk', 8, 51, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(7, 9782573723173, 'Sportivitas Kangkung Bercahaya', 'CV Ramadan (Persero) Tbk', 9, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(8, 9785994108956, 'Petualangan Seru Sawi Pembaca', 'PT Kusmawati', 9, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(9, 9799115084111, 'Zaman Purba Rubah Ceria', 'PT Utama Pudjiastuti', 10, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(10, 9788272138256, 'Kejadian yang Seram: Bungkus Biskuit', 'CV Purnawati Waskita', 10, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(11, 9783798256729, 'Optimisme Rambutan Berkilau', 'Fa Mustofa Padmasari Tbk', 2, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 19:08:06'),
(12, 9795982131538, 'Misteri yang Tersembunyi Pisang Pahlawan', 'Yayasan Wulandari Putra Tbk', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 19:08:09'),
(13, 9792779034454, 'Ajaibnya Dunia Jambu Berbicara', 'PD Nurdiyanti', 9, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(14, 9786693066646, 'Kebijaksanaan Hutan', 'Fa Lestari Tbk', 10, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(15, 9785326620156, 'Optimisme Jus Jingga', 'PT Tamba Wahyudin Tbk', 2, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 18:58:07'),
(16, 9784623433513, 'Ketulusan Monster Spageti', 'PJ Pudjiastuti Pertiwi', 8, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(17, 9784789213424, 'Kesederhanaan Saturnus', 'PD Lailasari Prasasta', 10, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(18, 9789776797291, 'Sang Legendaris Sosis Berjalan', 'PJ Mandasari Mangunsong (Persero) Tbk', 10, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(19, 9788237182492, 'Misteri yang Mendebarkan : Soda Bercahaya', 'Fa Salahudin', 9, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(20, 9796620286825, 'rukunannya hidup Beruang Berseluncur', 'CV Sihombing', 8, 83, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(21, 9789627346272, 'Kisah yang Menginspirasi, Keris Keramat', 'Yayasan Siregar Usamah (Persero) Tbk', 10, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(22, 9789282951217, 'Keadilan Labu Berkilau', 'PT Laksmiwati Farida', 2, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 18:58:07'),
(23, 9793784495681, 'Kesabaran Jelly Bercahaya', 'Fa Astuti Puspasari', 9, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(24, 9786772668242, 'Impian yang Terwujud Laut Pasifik', 'CV Wahyudin', 8, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(25, 9780454346466, 'Kemajuan Peri', 'CV Winarno Oktaviani Tbk', 8, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(26, 9790250225599, 'Rahasia yang Tersembunyi dari Coklat Penari', 'CV Pranowo Winarsih', 8, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(27, 9784279975764, 'Toleransi Siang Malam', 'UD Astuti', 10, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(28, 9796439664197, 'Kehebatan Sang Pahlawan Jepi the Great', 'PD Mayasari Susanti', 9, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(29, 9797025900927, 'Inovasi Baru Cabe Berbicara', 'Fa Gunarto (Persero) Tbk', 10, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(30, 9794887680110, 'Semangat Jia Cantik', 'PD Kusumo Sihombing', 9, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(31, 9780521212700, 'Hal yang Terlarang Burung Raksasa', 'CV Wibowo Prasasta (Persero) Tbk', 2, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(32, 9792770955109, 'Cinta Abadi, Sukun Misterius', 'PD Mardhiyah Sihombing Tbk', 8, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(33, 9794789995077, 'Bersinar Terang Monster Spageti', 'PJ Nurdiyanti Maryati', 2, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 18:58:07'),
(34, 9786439177971, 'Lintas Zaman: Kecoak Pahlawan', 'UD Situmorang Tbk', 9, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(35, 9795731820294, 'Masalalu yang Misterius Pangeran', 'CV Pudjiastuti', 2, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(36, 9780657173272, 'Gelap Gulitanya Bima Sakti', 'UD Wastuti Puspita', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(37, 9799134125215, 'Cinta Abadi, Bunglon Kocak', 'PT Nuraini Pradipta (Persero) Tbk', 9, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(38, 9793987823007, 'Kisah Fantastis Penyamun', 'PJ Tamba Tbk', 9, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(39, 9780663630608, 'Kebijaksanaan Jawir', 'UD Wastuti Prasasta Tbk', 10, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(40, 9798349518355, 'Kisah Fantastis Teh Bersiul', 'PJ Marbun Nurdiyanti', 10, 59, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(41, 9798769345982, 'Ketabahan Jepi the Great', 'Perum Purwanti (Persero) Tbk', 10, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(42, 9795153556740, 'Sebuah Perjalanan Panjang Serigala Karaoke', 'Yayasan Prabowo Mandasari', 8, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(43, 9785691369889, 'Solidaritas Gunung Berapi', 'Perum Napitupulu Lailasari', 9, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(44, 9793468566102, 'Optimisme Katak Disco', 'PJ Kuswoyo (Persero) Tbk', 9, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(45, 9798019926541, 'Kebahagiaan saat melihat Dunia Lain', 'PD Siregar Prastuti Tbk', 10, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(46, 9796887684518, 'Kedermawanan Bakso Berkaki', 'Fa Aryani Pradipta', 2, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(47, 9789280973730, 'Bersinar Terang Jelly Bercahaya', 'CV Laksita Megantara (Persero) Tbk', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(48, 9798880895779, 'Keajaiban yang Tak Terduga dalam Laba-Laba Ninja', 'UD Maheswara Nuraini', 2, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(49, 9787716786374, 'Optimisme Markisa Ninja', 'Perum Januar Prasetya (Persero) Tbk', 8, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(50, 9787598124141, 'Keajaiban yang Tak Terduga dalam Soda Bercahaya', 'UD Sihombing Dongoran', 9, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(51, 9784616287093, 'Ketabahan seekor Lebah Pelaut', 'Fa Tampubolon Saptono', 2, 73, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(52, 9795985804781, 'Kejadian yang Seram: Es Krim Pahlawan', 'UD Namaga Nurdiyanti Tbk', 8, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(53, 9789958829833, 'terlanjur nyamanan, Kura-Kura Ninja', 'Fa Sihombing Tbk', 8, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(54, 9796856485108, 'Sebuah Perjalanan Panjang Unicorn Pelukis', 'Yayasan Handayani Kuswandari', 8, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(55, 9793626036546, 'rukunannya hidup Kelapa Berjalan', 'Perum Sirait', 10, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(56, 9782429452868, 'Ketabahan Aku dan Kamu', 'Fa Nasyiah Farida Tbk', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(57, 9796071767935, 'Sebuah Perjalanan Panjang Jelly Bercahaya', 'PJ Laksita Tbk', 9, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(58, 9783261571939, 'Sebuah Perjalanan Panjang Kupu-Kupu Berkilau', 'Yayasan Rahmawati Jailani', 2, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(59, 9791025391556, 'Petualangan Seru Paus Pemandu Wisata', 'UD Hastuti Nasyiah (Persero) Tbk', 10, 52, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(60, 9784755494901, 'Cinta Abadi, Aku dan Kamu', 'PD Puspita Tbk', 9, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(61, 9787246055421, 'Toleransi Pasukan', 'CV Sitorus', 2, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(62, 9787080303450, 'Kisah yang Menginspirasi, Pisang Pahlawan', 'Yayasan Dabukke Tbk', 9, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(63, 9798433532069, 'Keberanian yang Luar Biasa Labu Berkilau', 'UD Prastuti Wibisono Tbk', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(64, 9790392384666, 'Kesederhanaan Kangkung Bercahaya', 'UD Samosir', 9, 67, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(65, 9789198816389, 'Mitologi Kuno : Ikan Terbang', 'PT Mangunsong Novitasari', 2, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(66, 9792347573163, 'Rahasia yang Tersembunyi dari Penguin Rocker', 'Perum Namaga Purwanti (Persero) Tbk', 8, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(67, 9796433163009, 'Cahaya yang Cemerlang Alien Imut', 'Perum Nurdiyanti Zulaika Tbk', 2, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(68, 9790742335683, 'Impian yang Terwujud Kupu-Kupu Berkilau', 'PD Halimah', 8, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(69, 9781166590499, 'Gelap Gulitanya Penyihir', 'Yayasan Mustofa', 10, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(70, 9788748860889, 'Ajaibnya Dunia Kupu-Kupu Berkilau', 'CV Wastuti Safitri Tbk', 8, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(71, 9793375446610, 'rukunannya hidup Penguin Rocker', 'PJ Melani', 10, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(72, 9785918922422, 'Rahasia yang Tersembunyi dari Gua', 'Perum Pradana Zulaika', 9, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(73, 9788934967521, 'Hidup Damai, Jelly Bercahaya', 'UD Namaga Usamah', 9, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(74, 9799103145756, 'Kehebatan yang Luar Biasa Labu Berkilau', 'UD Winarno Tbk', 10, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(75, 9796241049830, 'Berkelanjutan Babi Kung Fu', 'Perum Hasanah (Persero) Tbk', 10, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(76, 9783699078796, 'Semua Tentang Kehidupan Kucing Pemberontak', 'UD Novitasari Zulkarnain', 2, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(77, 9787417156056, 'Cinta Abadi, Unicorn Pelukis', 'Perum Uyainah', 8, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(78, 9793152865900, 'Selalu ceria bersama Apel Berkacamata', 'PD Mandasari Nasyidah', 9, 79, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(79, 9796293827547, 'Kebijaksanaan Jawa', 'PT Mandasari Winarsih', 9, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(80, 9787142713784, 'Kehebatan yang Luar Biasa Peri', 'Perum Handayani Anggriawan', 10, 36, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(81, 9794531960599, 'Penuh Kasih Teh Bersiul', 'PJ Usada Tbk', 2, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(82, 9788029267604, 'Hal yang Terlarang Raksasa', 'Perum Adriansyah', 9, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(83, 9797618582660, 'Optimisme Bunglon Kocak', 'PT Kusmawati Tbk', 8, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(84, 9785730737884, 'Antusiasme Alien Imut', 'Fa Samosir Tbk', 10, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(85, 9788015611664, 'Kemajuan Siang Malam', 'Yayasan Haryanti Lestari', 10, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(86, 9792273153125, 'Kegembiraan mengetahui Monster Spageti', 'Yayasan Wijayanti Astuti Tbk', 9, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(87, 9799068320434, 'Bersinar Terang Pangeran', 'PT Susanti (Persero) Tbk', 10, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(88, 9790377278089, 'Ketulusan Saturnus', 'PT Sihombing', 2, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(89, 9799865816932, 'Selalu ceria bersama Tomat Misterius', 'PD Haryanti', 10, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(90, 9790332135143, 'Cinta Abadi, Pahlawan', 'PT Permata', 10, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(91, 9783814648040, 'Fakta Menarik Indonesia', 'PT Puspita Nugroho', 10, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(92, 9789141155893, 'Misteri yang Mendebarkan : Pahlawan', 'PT Safitri Siregar (Persero) Tbk', 10, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(93, 9780360989825, 'Zaman Purba Elang Detektif', 'Yayasan Purwanti Melani (Persero) Tbk', 2, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(94, 9787794491702, 'Optimisme Rambutan Berkilau', 'PD Pudjiastuti Tbk', 8, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(95, 9790168350840, 'Semua Tentang Kehidupan Zebra Bernyanyi', 'PJ Pudjiastuti Budiyanto', 9, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(96, 9781270381075, 'Ketulusan blecki', 'Perum Simbolon', 10, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(97, 9799992006886, 'Apa itu? ambatukam', 'UD Mahendra Waskita Tbk', 2, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(98, 9799017960254, 'Impian yang Terwujud Kebenaran', 'CV Tamba Budiyanto Tbk', 9, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(99, 9796471387979, 'Cerita yang Menakjubkan dari Kerajaan', 'Yayasan Pudjiastuti Salahudin Tbk', 2, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(100, 9782297742573, 'Misteri yang Mendebarkan : Kopi Ajaib', 'PT Purwanti Tbk', 8, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(101, 9792593163323, 'Sang Legendaris Markisa Ninja', 'PT Puspasari', 2, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(102, 9793876567081, 'Cahaya yang Cemerlang Harimau Berkacamata', 'PD Prakasa', 2, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(103, 9794754635533, 'Ajaibnya Dunia Sandwich Bertopi', 'CV Utama Hartati', 8, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(104, 9797501146733, 'Jejak yang Hilang Pustaka', 'Yayasan Marbun (Persero) Tbk', 2, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(105, 9790663709037, 'Solidaritas Dunia Lain', 'PT Ardianto Mandasari Tbk', 2, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(106, 9782802527091, 'Mitologi Kuno : Naga Kue', 'PT Pradana', 2, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(107, 9798954288704, 'Ketabahan Badai', 'Perum Purnawati Wulandari', 2, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(108, 9788826219882, 'Petualangan Seru Gajah Menari', 'Yayasan Dabukke (Persero) Tbk', 8, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(109, 9792747004939, 'Selalu ceria bersama Zebra Bernyanyi', 'UD Thamrin (Persero) Tbk', 9, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(110, 9788979805680, 'Cahaya yang Cemerlang Unicorn Pelukis', 'UD Nasyidah Hutapea', 2, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(111, 9796681078483, 'Kelembutan Kucing Pemberontak', 'Perum Nasyiah Januar Tbk', 8, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(112, 9791693490278, 'Sportivitas Raksasa', 'PD Fujiati Agustina', 8, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(113, 9794685338497, 'Penuh Kasih Pagi', 'Fa Marbun Handayani', 9, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(114, 9786227858563, 'Cerita yang Menakjubkan dari Siang Malam', 'Fa Prabowo Sihotang', 2, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(115, 9784304505379, 'Cahaya Terang Semut BirahiOkta-Kon', 'CV Novitasari (Persero) Tbk', 10, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(116, 9784379166673, 'Kesetiaan Putri', 'Perum Pradipta', 8, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(117, 9780286345699, 'Kekuatan Pagi', 'PD Yulianti Pudjiastuti Tbk', 10, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(118, 9799829244405, 'Penampilan yang Memukau Belimbing Penyair', 'PD Pertiwi', 2, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(119, 9790384218504, 'Hal yang Aneh dari Pulau', 'PT Purwanti Sudiati', 9, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(120, 9792558497517, 'Keadilan Puteri Duyung', 'UD Waskita Saptono', 10, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(121, 9797734602839, 'Cerita yang Menakjubkan dari Kelengkeng Berkacamata', 'CV Waluyo', 10, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(122, 9786268707066, 'Berkelanjutan Markisa Ninja', 'PD Mansur Setiawan', 10, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(123, 9792911235411, 'Kegagahan Penyihir', 'PJ Waluyo Wasita (Persero) Tbk', 2, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(124, 9797624590383, 'Seberapa Menyeramkan: Gajah Montok', 'Yayasan Prayoga', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(125, 9793943606521, 'Kehebatan Sang Pahlawan Jus Jingga', 'Perum Rahayu', 10, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(126, 9794547450145, 'Sosok yang Menawan, Harta Karun', 'PJ Wulandari Puspasari (Persero) Tbk', 2, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(127, 9793774691970, 'Kebijaksanaan Pustaka', 'UD Marpaung', 2, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(128, 9785039518443, 'Sportivitas Sapi Semok', 'UD Hastuti Sudiati', 8, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(129, 9782400860132, 'Sosok yang Menawan, blecki', 'CV Riyanti', 8, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(130, 9788195478897, 'Pertarungan Epik! Ubi Jalar Jahil', 'PJ Aryani', 10, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(131, 9797761650186, 'Hal yang Terlarang Kecoak Pahlawan', 'Perum Hutasoit Yulianti', 2, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(132, 9780362525410, 'Mitos yang Aneh. Kopi Ajaib', 'PJ Wijayanti', 10, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(133, 9788204143266, 'Impian yang Terwujud Hantu', 'Yayasan Zulaika Permata', 9, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(134, 9790241040033, 'Kesejahteraan Penyamun', 'PT Nurdiyanti Tbk', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(135, 9799123464486, 'Sejarah Kelam Kacang Super', 'PD Najmudin Tbk', 8, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(136, 9798547598111, 'Kebijaksanaan Tomat Misterius', 'PT Astuti (Persero) Tbk', 8, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(137, 9798186473312, 'Jejak yang Hilang Kopi Ajaib', 'UD Utama Novitasari', 8, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(138, 9793560143805, 'Inovasi Baru Penyihir', 'PD Prabowo (Persero) Tbk', 10, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(139, 9784991107832, 'Solidaritas Sukun Misterius', 'PT Salahudin Andriani', 10, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(140, 9789343096130, 'Tempat Aman  Jefy Okta', 'PD Nuraini (Persero) Tbk', 8, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(141, 9795829686887, 'Cinta Abadi, Pagi', 'CV Sudiati Rajasa', 8, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(142, 9795144401653, 'Keadilan ambatukam', 'Perum Usada Maulana (Persero) Tbk', 10, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(143, 9797803865035, 'Kemandirian Gajah Menari', 'PT Yuliarti Mulyani', 2, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(144, 9780380084159, 'Sebuah Perjalanan Panjang Kometa', 'PT Sudiati Tbk', 10, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(145, 9798142155436, 'Ajaibnya Dunia Cireng', 'PD Nasyiah', 2, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(146, 9788645605125, 'Mitologi Kuno : Jia', 'Perum Namaga', 2, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(147, 9790139701640, 'Kejadian yang Seram: Badai', 'Perum Haryanti Hassanah', 10, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(148, 9798574922644, 'Sikap Tegas Bintang', 'Fa Pertiwi (Persero) Tbk', 8, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(149, 9784695756725, 'Keabadian yang Abadi Pulau', 'UD Nainggolan Riyanti', 2, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(150, 9799530163033, 'Kesejahteraan Gunung', 'PJ Budiman Yuniar', 2, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(151, 9795957353828, 'Berkelanjutan Salak Pahlawan', 'Fa Wastuti Marbun (Persero) Tbk', 2, 51, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(152, 9781582830742, 'Ketabahan seekor Bungkus Biskuit', 'PJ Suartini Santoso', 9, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(153, 9797765494892, 'Solidaritas Coklat Penari', 'PJ Fujiati Salahudin', 9, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(154, 9797779810374, 'Momen yang Menegangkan pada Hapis', 'UD Setiawan', 9, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(155, 9782957322855, 'Cahaya yang Cemerlang Bawang Putih Pemberani', 'Perum Purnawati Mayasari', 10, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(156, 9788768962556, 'Kebahagiaan saat melihat Zebra Bernyanyi', 'PJ Sudiati Tbk', 2, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(157, 9795704565504, 'Kebijaksanaan Merpati Post', 'PT Puspasari Tampubolon', 10, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(158, 9780045061891, 'Toleransi Buah Naga Jahil', 'Fa Rahmawati Sitorus', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(159, 9789756414477, 'terlanjur nyamanan, Penjara', 'PT Utama Tbk', 10, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(160, 9795332234094, 'Gairah Coklat Penari', 'Perum Sirait Tbk', 10, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(161, 9789845280112, 'Kekuatan Merpati Post', 'Yayasan Siregar Namaga', 9, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(162, 9793281838080, 'Gelap Gulitanya Pagi', 'Yayasan Kuswoyo', 9, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(163, 9789284148820, 'Dinamika Robot Gila', 'Fa Astuti', 2, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(164, 9796244277872, 'Hal Tak Terduga Harimau Berkacamata', 'CV Suwarno Yolanda', 2, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(165, 9785634067872, 'Sebuah Perjalanan Panjang Timun Menari', 'PD Pratiwi Yuliarti', 9, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(166, 9791348538096, 'Cahaya Terang Samudra', 'Perum Pranowo Saptono', 8, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(167, 9799084537069, 'Keteguhan Saturnus', 'UD Puspita', 9, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(168, 9796491594128, 'Serba Serbi Unik Jepi', 'CV Hariyah Mandala (Persero) Tbk', 10, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(169, 9792859791468, 'Sejarah yang Terlupakan Sawi Pembaca', 'Perum Ramadan Tbk', 10, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(170, 9784917073333, 'Seberapa Menyeramkan: Sawi Pembaca', 'PJ Haryanti Zulaika Tbk', 2, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(171, 9792013952483, 'terlanjur nyamanan, Paus Pemandu Wisata', 'Perum Padmasari', 8, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(172, 9796827168511, 'Kehidupan Masa Depan Okta', 'Perum Kusumo Megantara', 8, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(173, 9785525461925, 'Sportivitas Teh Bersiul', 'Yayasan Nasyidah Ardianto', 10, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(174, 9789712793226, 'Bersinar Terang Es Krim Pahlawan', 'Yayasan Zulkarnain Nababan', 9, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(175, 9784978930835, 'Kisah yang Menginspirasi, Gua', 'Perum Prabowo Astuti Tbk', 2, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(176, 9792608588226, 'Zaman Purba Semangka Menari', 'PJ Lazuardi Prasasta (Persero) Tbk', 2, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(177, 9792754272567, 'Bersinar Terang Merpati Post', 'PJ Najmudin Firgantoro', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(178, 9786861463437, 'Keabadian yang Abadi Pencarian', 'Yayasan Prabowo Tarihoran Tbk', 9, 66, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(179, 9786501134215, 'Antusiasme Tomat Misterius', 'Perum Pratiwi', 8, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(180, 9797035654759, 'Selalu ceria bersama Susu Lumba-Lumba', 'PT Hardiansyah Hakim Tbk', 9, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(181, 9796701109784, 'Solidaritas Kura-Kura Ninja', 'PJ Maryati', 10, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(182, 9785338092330, 'Momen yang Menegangkan pada Kacang Super', 'PJ Pudjiastuti', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(183, 9784482676700, 'Semangat Stroberi Penari', 'Fa Zulkarnain Usada', 8, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(184, 9790779096991, 'Berkelanjutan Pedang', 'Perum Zulkarnain Nainggolan', 2, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(185, 9785428499681, 'Kreativitas yang Tak Terbatas Bungkus Biskuit', 'PT Hidayat Haryanti Tbk', 9, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(186, 9798330841837, 'Hal Tak Terduga Katak Disco', 'Fa Anggraini Tbk', 10, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(187, 9788026921912, 'Sosok yang Menawan, Hantu', 'Perum Halimah Rahayu', 8, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(188, 9784954253668, 'Ketangguhan Bawang Putih Pemberani', 'PT Yulianti (Persero) Tbk', 10, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(189, 9787573218254, 'Misteri yang Mendebarkan : Putri', 'PT Anggraini', 9, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(190, 9788224261346, 'Keteguhan Kabut', 'Yayasan Dongoran (Persero) Tbk', 10, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(191, 9789496174044, 'Semua Tentang Kehidupan Ikan Terbang', 'Fa Lailasari (Persero) Tbk', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(192, 9782519162394, 'Cinta Abadi, Brokoli Pembaca', 'Fa Susanti Maryati', 9, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(193, 9795836135217, 'Kebahagiaan saat melihat Coklat Penari', 'CV Fujiati Hardiansyah Tbk', 2, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(194, 9782111782150, 'Sisi Misterius dari Jus Jingga', 'CV Prastuti Tbk', 8, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(195, 9793892817610, 'Kesejahteraan Vampir Vegetarian', 'Perum Suryono Hakim', 10, 51, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(196, 9797522061114, 'Kebijaksanaan Elang Detektif', 'Yayasan Widiastuti Pratama (Persero) Tbk', 2, 44, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(197, 9786725545835, 'Ketabahan Pangeran', 'PD Halimah', 2, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(198, 9798563456327, 'Keabadian yang Abadi Sukun Misterius', 'PT Wacana Novitasari (Persero) Tbk', 10, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(199, 9785677035647, 'Kekompakan Pencarian', 'CV Jailani Nasyidah (Persero) Tbk', 10, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(200, 9792730131772, 'Apa itu? Saturnus', 'Fa Zulkarnain (Persero) Tbk', 8, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(201, 9786787307945, 'Penjelasan Tentang Coklat Penari', 'Fa Gunarto Kuswandari', 2, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(202, 9784089447239, 'Ketulusan Es Krim Pahlawan', 'Fa Usada Budiman (Persero) Tbk', 2, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(203, 9798748310512, 'Kekuatan Cacing Pemberani', 'PD Wulandari (Persero) Tbk', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(204, 9799292130342, 'Masalalu yang Misterius Pulau', 'UD Tamba Usamah', 8, 36, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(205, 9786576333766, 'Kesederhanaan Bebek Detektif', 'UD Hardiansyah Safitri', 9, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(206, 9784638786291, 'Keabadian yang Abadi Pencarian', 'Fa Anggriawan', 8, 79, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(207, 9799180339710, 'Cerita yang Menakjubkan dari Hiu Pesta', 'CV Purwanti (Persero) Tbk', 9, 53, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(208, 9795467141915, 'Kisah yang Menginspirasi, Brokoli Pembaca', 'PJ Mansur Sihombing', 2, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(209, 9798884249417, 'Solidaritas Alien Imut', 'PT Yulianti Damanik', 2, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(210, 9788083728721, 'Inovasi Baru Kumbang Emas', 'UD Mulyani (Persero) Tbk', 10, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(211, 9799256048423, 'Ketabahan seekor Aku dan Kamu', 'Fa Anggriawan (Persero) Tbk', 8, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(212, 9785466306309, 'Selalu ceria bersama Hutan', 'UD Firmansyah Novitasari', 10, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(213, 9798011630781, 'Kegagahan Kapal Hantu', 'Perum Nasyiah', 9, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(214, 9787607900766, 'Kegigihan Cireng', 'PJ Hutasoit', 8, 66, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(215, 9789671633243, 'Optimisme Ghezia anisa', 'PJ Wahyudin', 8, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(216, 9795185992592, 'Sejarah Kelam Belalang Penyair', 'Fa Pradana (Persero) Tbk', 10, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(217, 9793815094708, 'Kekompakan Penguin Rocker', 'CV Iswahyudi', 2, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(218, 9782865732203, 'Mitos yang Aneh. Saturnus', 'PD Haryanti Tbk', 9, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(219, 9798895123737, 'Keabadian yang Abadi Pulau', 'PT Siregar', 9, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(220, 9797622135753, 'Kedermawanan Laba-Laba Ninja', 'PJ Mulyani Narpati', 2, 44, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(221, 9790766841825, 'Penuh Kasih Hiu Pesta', 'UD Palastri Saptono', 9, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(222, 9786983143033, 'Cahaya Terang Es Krim Pahlawan', 'CV Waluyo Hutagalung Tbk', 9, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(223, 9799391742620, 'Kegembiraan mengetahui ambatukam', 'Yayasan Hariyah (Persero) Tbk', 8, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(224, 9794906922016, 'Optimisme Elang Detektif', 'PD Hidayanto Rahimah (Persero) Tbk', 8, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(225, 9798439345533, 'Keberanian yang Luar Biasa Kadal Terbang', 'Fa Maryati Andriani', 2, 59, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(226, 9785950359774, 'Masalalu yang Misterius Kuda Santai', 'CV Lailasari Yulianti Tbk', 10, 36, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(227, 9789304936925, 'Ketabahan Belimbing Penyair', 'CV Sihotang Purwanti', 8, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(228, 9788391267134, 'Kisah yang Menginspirasi, Kebebasan', 'Yayasan Mandasari Nababan Tbk', 10, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(229, 9790256096742, 'Kesejahteraan Stroberi Penari', 'Fa Yuliarti Iswahyudi', 9, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(230, 9793268009182, 'Hal Tak Terduga Es Krim Pahlawan', 'PD Yolanda Wacana (Persero) Tbk', 9, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(231, 9793000182876, 'Seberapa Menyeramkan: Ikan Terbang', 'UD Latupono Utami', 9, 83, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(232, 9790532561780, 'Kemajuan Kapal Hantu', 'Perum Usada', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(233, 9785657591514, 'Mengenal Laut Pasifik', 'Perum Puspita Novitasari (Persero) Tbk', 8, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(234, 9781642541960, 'Keadilan Putri', 'PJ Tampubolon', 8, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(235, 9791013390714, 'Lintas Zaman: Kelelawar Balap', 'PJ Laksmiwati Saefullah', 2, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(236, 9781854032041, 'Toleransi Sapi Semok', 'Fa Santoso (Persero) Tbk', 2, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(237, 9793143091509, 'Hal Tak Terduga Jeruk Penyair', 'PD Winarsih (Persero) Tbk', 8, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(238, 9787163347944, 'Inovasi Baru Gunung', 'Yayasan Purnawati (Persero) Tbk', 8, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(239, 9789084388525, 'Pertarungan Epik! Kue Misterius', 'PJ Lazuardi Lailasari', 10, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(240, 9788764005585, 'Sportivitas Harimau Berkacamata', 'PT Aryani Dabukke (Persero) Tbk', 9, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(241, 9788316593010, 'Zaman Purba Ikan Terbang', 'Perum Winarsih Palastri (Persero) Tbk', 2, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(242, 9789343004289, 'Serba Serbi Unik Bola Ajaib', 'PT Sihotang Yulianti', 2, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(243, 9788026033752, 'Penuh Kasih Hapis', 'CV Salahudin Susanti', 2, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(244, 9788184269840, 'Sisi Misterius dari Gunung Berapi', 'PJ Saragih Prastuti Tbk', 2, 52, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(245, 9782290248133, 'Rahasia yang Tersembunyi dari Anggur Detektif', 'PD Laksita Prasetyo', 2, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(246, 9792316060571, 'Kegembiraan mengetahui Kelapa Berjalan', 'PD Wacana (Persero) Tbk', 9, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(247, 9788040011415, 'Ketabahan Bintang', 'UD Mansur', 2, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(248, 9797690888421, 'Kesaktian Hantu', 'PT Winarsih Gunawan', 2, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(249, 9783751985512, 'Kegigihan Skibidi', 'Perum Haryanti Pudjiastuti', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(250, 9786522894426, 'Hidup Damai, Kelinci Pesulap', 'Perum Hidayat Suryatmi', 9, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(251, 9781948846912, 'Keberanian yang Luar Biasa Harta Karun', 'Yayasan Riyanti Suartini', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(252, 9794849013130, 'Inovasi Baru Kebenaran', 'CV Prayoga Tbk', 8, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(253, 9785723206687, 'Mengenal ambatukam', 'PJ Laksita', 9, 52, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(254, 9786772599027, 'Kejujuran Samudra', 'PJ Mayasari', 10, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(255, 9781708411381, 'Kelembutan Sirsak Detektif', 'CV Uwais Kuswoyo (Persero) Tbk', 8, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(256, 9790163069525, 'Mengenal Sawi Pembaca', 'CV Hutasoit Prakasa (Persero) Tbk', 10, 51, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(257, 9782275569888, 'Kehebatan yang Luar Biasa Serigala Karaoke', 'PD Prastuti (Persero) Tbk', 2, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(258, 9793277681829, 'Kehidupan Masa Depan Kabut', 'CV Nurdiyanti Gunarto Tbk', 2, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(259, 9789950004825, 'Fakta Menarik Robot Gila', 'Perum Pradipta Suwarno', 8, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(260, 9795281689693, 'Ketahanan Sapi Semok', 'CV Waluyo Kuswoyo Tbk', 9, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(261, 9784689502680, 'Inovasi Baru Meteor', 'CV Wijayanti', 8, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(262, 9785078201412, 'Pertarungan Epik! Paus Pemandu Wisata', 'Perum Natsir Purnawati (Persero) Tbk', 10, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(263, 9787296859932, 'Kemajuan jepi dan jia', 'CV Halim', 8, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(264, 9789773775452, 'Solidaritas Jambu Berbicara', 'PT Aryani Anggriawan', 10, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(265, 9797024367868, 'Jejak yang Hilang Harimau Berkacamata', 'UD Irawan', 8, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(266, 9783101233911, 'Keajaiban yang Tak Terduga dalam Gajah Menari', 'CV Yolanda Tbk', 10, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(267, 9781151869227, 'Sikap Tegas Jerapah Jahil', 'UD Situmorang Adriansyah', 8, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(268, 9788790361433, 'Cerita yang Menakjubkan dari Brokoli Pembaca', 'Yayasan Kusumo Fujiati', 10, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(269, 9785349524783, 'Cahaya yang Cemerlang Hutan', 'UD Nasyiah Riyanti', 9, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(270, 9785065079895, 'Petualangan Seru Mentimun Ninja', 'PD Fujiati (Persero) Tbk', 2, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(271, 9787877700745, 'Gelap Gulitanya Gajah Menari', 'Fa Pradana', 2, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(272, 9790990780976, 'Lintas Zaman: Kupu-Kupu Berkilau', 'Yayasan Saptono Puspasari Tbk', 8, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(273, 9796003806923, 'Mitologi Kuno : Matoa Penari', 'Yayasan Hardiansyah Situmorang', 10, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(274, 9782411126388, 'Petualangan Seru Es Krim Pahlawan', 'PD Nugroho Sihombing (Persero) Tbk', 2, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(275, 9797586301348, 'Ketekunan Belalang Penyair', 'CV Pudjiastuti', 10, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(276, 9783661252339, 'terlanjur nyamanan, Kota Tua', 'PD Pudjiastuti Tbk', 2, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(277, 9796703332692, 'Kisah yang Menginspirasi, Katak Disco', 'PT Hartati Rahayu (Persero) Tbk', 10, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(278, 9792171140739, 'Hal yang Aneh dari Putri', 'Yayasan Mardhiyah Tbk', 2, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(279, 9785007069304, 'Ajaibnya Dunia Nanas Berbicara', 'PJ Nashiruddin Laksmiwati', 2, 51, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(280, 9781097848836, 'Impian yang Terwujud Brokoli Pembaca', 'UD Laksmiwati Marbun', 10, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(281, 9780770870164, 'Sisi Misterius dari Samudra', 'UD Wahyuni', 9, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(282, 9781207551045, 'Kehebatan yang Luar Biasa Cabe Berbicara', 'Fa Irawan Damanik (Persero) Tbk', 10, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(283, 9793927716147, 'Kegagahan Anjing Astronaut', 'CV Kusumo (Persero) Tbk', 10, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(284, 9784461215401, 'Antusiasme Laut Pasifik', 'Yayasan Habibi', 9, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(285, 9781829143598, 'Impian yang Terwujud Harta Karun', 'PJ Nasyiah', 2, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(286, 9789492780980, 'Kisah yang Menginspirasi, Jambu Berbicara', 'PJ Sihotang (Persero) Tbk', 8, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(287, 9794565527560, 'Kehidupan Masa Depan Penyihir', 'UD Pratama', 2, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(288, 9784401352654, 'Kebahagiaan saat melihat Gunung Berapi', 'UD Hasanah (Persero) Tbk', 9, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(289, 9780826002525, 'Penjelasan Tentang Soda Bercahaya', 'PT Najmudin (Persero) Tbk', 2, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(290, 9784794005649, 'Bersinar Terang Hutan', 'PD Pratama', 10, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(291, 9790151715359, 'Lintas Zaman: Kecoak Pahlawan', 'CV Prayoga', 9, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(292, 9787069002602, 'Kekokohan Brokoli Pembaca', 'Perum Ardianto (Persero) Tbk', 10, 87, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(293, 9785207387475, 'Inovasi Baru Nanas Berbicara', 'PJ Hartati (Persero) Tbk', 9, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(294, 9795196140340, 'Berkelanjutan Hiu Pesta', 'UD Riyanti Permata', 9, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(295, 9787176959059, 'Sosok yang Menawan, Siang Malam', 'PJ Lestari', 8, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(296, 9780958286374, 'Keteguhan ambatukam', 'UD Winarno Usada Tbk', 8, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(297, 9799467186976, 'Sebuah Perjalanan Panjang Vampir Vegetarian', 'PJ Riyanti', 2, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(298, 9797950681977, 'Gairah Rahib', 'PJ Halimah (Persero) Tbk', 9, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(299, 9792562800853, 'Kejujuran Sukun Misterius', 'Perum Widiastuti', 8, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(300, 9781945998751, 'rukunannya hidup Hantu', 'PJ Rajasa (Persero) Tbk', 2, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(301, 9788080706340, 'Kelembutan Cacing Pemberani', 'UD Wastuti Nainggolan Tbk', 2, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(302, 9785697693001, 'Misteri yang Tersembunyi Teh Bersiul', 'UD Andriani Hakim (Persero) Tbk', 8, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(303, 9789368641544, 'Sportivitas Pizza Berenang', 'Perum Halimah Haryanto', 8, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(304, 9786950526791, 'Jejak yang Hilang Penguin Rocker', 'PT Yuniar Tbk', 9, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(305, 9781656803368, 'Mengenal Sandwich Bertopi', 'Perum Hutasoit Tbk', 8, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(306, 9783845022772, 'Solidaritas Jagung Terbang', 'CV Hassanah', 9, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(307, 9788663461482, 'Keajaiban Purba Kopi Ajaib', 'Fa Purnawati (Persero) Tbk', 2, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(308, 9787631674244, 'Kebijaksanaan Dimensi', 'UD Yolanda Tbk', 8, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(309, 9797802932769, 'Petualangan Seru Cireng', 'Fa Mayasari Tamba Tbk', 9, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(310, 9797297898816, 'rukunannya hidup Gunung', 'UD Simbolon (Persero) Tbk', 10, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(311, 9795682495558, 'Ketabahan Bebek Detektif', 'Perum Situmorang', 2, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(312, 9787130321854, 'Keajaiban Purba Jeruk Penyair', 'Perum Zulkarnain', 10, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(313, 9783554435702, 'Cinta Abadi, Kangkung Bercahaya', 'PT Wastuti', 8, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(314, 9789067450157, 'Kesaktian Kelelawar Balap', 'Perum Hassanah Usamah', 10, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(315, 9798355363024, 'Kisah yang Menginspirasi, Hutan', 'PT Usamah Kusmawati', 10, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(316, 9782885904727, 'Kebahagiaan saat melihat Pepaya Super', 'CV Nasyiah', 10, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(317, 9788722021442, 'Antusiasme blecki', 'Fa Najmudin Tbk', 9, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(318, 9790916801235, 'Kehebatan yang Luar Biasa Kecoak Pahlawan', 'PJ Siregar', 10, 47, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(319, 9782136212946, 'Hal yang Aneh dari Sawi Pembaca', 'UD Anggriawan', 10, 36, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(320, 9795135882331, 'Kesejahteraan Salak Pahlawan', 'UD Wahyudin Prasasta', 2, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(321, 9793119827712, 'Keadilan ambatukam', 'UD Zulaika', 8, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(322, 9796324352840, 'Serba Serbi Unik Puteri Duyung', 'Yayasan Tamba Purwanti', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(323, 9796117738288, 'Keajaiban yang Tak Terduga dalam Kapal Hantu', 'CV Uyainah', 2, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(324, 9780674452176, 'Ketabahan Ular Bertopi', 'Fa Halimah Hutapea', 8, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(325, 9783208657276, 'Fakta Menarik Kometa', 'PJ Rahimah Tbk', 2, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(326, 9787948145536, 'Cahaya yang Cemerlang Babi Kung Fu', 'PD Nurdiyanti (Persero) Tbk', 10, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(327, 9783564192596, 'Hal yang Terlarang Pulau', 'UD Laksmiwati Nasyiah Tbk', 2, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(328, 9786414742545, 'Sebuah Perjalanan Panjang Aku dan Kamu', 'Fa Kuswoyo Wijaya (Persero) Tbk', 2, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(329, 9794235625312, 'Kesederhanaan Sawi Pembaca', 'PJ Safitri Narpati Tbk', 9, 83, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(330, 9787461467443, 'Misteri yang Tersembunyi Putri', 'Yayasan Januar Uwais Tbk', 8, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(331, 9795284056300, 'Kehebatan Sang Pahlawan Alien Imut', 'Yayasan Kuswandari Tbk', 8, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(332, 9784148695014, 'Kesejahteraan Peri', 'PT Pradipta', 10, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(333, 9786752687959, 'Ajaibnya Dunia Alien Imut', 'CV Situmorang Sihombing (Persero) Tbk', 8, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(334, 9796933156914, 'Sportivitas Naga Kue', 'PD Tarihoran', 9, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(335, 9781455908677, 'Kehebatan yang Luar Biasa Semut BirahiOkta-Kon', 'PD Yuliarti', 8, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(336, 9797606824901, 'Ajaibnya Dunia Jia Cantik', 'CV Santoso', 9, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(337, 9782944903593, 'Kebijaksanaan Zebra Bernyanyi', 'UD Rahmawati Yolanda (Persero) Tbk', 10, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(338, 9797858335767, 'Sebuah Perjalanan Panjang Jagung Terbang', 'CV Yuliarti', 2, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(339, 9791236930179, 'Kelembutan Penguin Rocker', 'Perum Hutagalung (Persero) Tbk', 9, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(340, 9782809794472, 'Kebijaksanaan Kelinci Pesulap', 'Perum Hutasoit', 9, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(341, 9796781571051, 'Keteguhan Jepi', 'UD Purnawati', 10, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(342, 9782451728962, 'Kreativitas yang Tak Terbatas Gorila Berdasi', 'CV Yolanda', 2, 79, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(343, 9792298058467, 'Keabadian yang Abadi Keris Keramat', 'Yayasan Pradipta', 2, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(344, 9791123142807, 'Ketahanan Merpati Post', 'Fa Suryatmi Nasyidah (Persero) Tbk', 8, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(345, 9787159147497, 'Ketabahan Bintang', 'PT Wijaya Tbk', 9, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(346, 9781143109713, 'rukunannya hidup Pagi', 'UD Suryatmi Waluyo', 2, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(347, 9794735832340, 'Kegembiraan mengetahui Salak Pahlawan', 'PT Novitasari Hastuti Tbk', 2, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(348, 9799503509349, 'Kesetiaan Puding Menari', 'Perum Usada Januar', 9, 44, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(349, 9783378993259, 'Ketekunan Katak Himalayah', 'UD Nashiruddin Tbk', 9, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46');
INSERT INTO `buku` (`id_buku`, `kode_buku`, `nama_buku`, `penerbit`, `rak`, `stok_buku`, `foto_buku`, `created_at`, `updated_at`) VALUES
(350, 9794489439222, 'Penuh Kasih Kebenaran', 'CV Siregar Anggriawan', 10, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(351, 9793217956284, 'Sejarah yang Terlupakan Puteri Duyung', 'PJ Putra Tbk', 10, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(352, 9789393273932, 'Kehebatan yang Luar Biasa Rubah Ceria', 'UD Megantara Permadi Tbk', 9, 65, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(353, 9790816441265, 'Momen yang Menegangkan pada Cacing Pemberani', 'CV Firgantoro', 2, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(354, 9793337925535, 'Gairah Kapal Hantu', 'PT Jailani (Persero) Tbk', 8, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(355, 9791972397045, 'Kejadian yang Seram: Coklat Penari', 'CV Purnawati (Persero) Tbk', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(356, 9797418106479, 'Jejak yang Hilang Pedang', 'PT Napitupulu', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(357, 9798123546901, 'Zaman Purba Jus Jingga', 'Yayasan Andriani Tbk', 10, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(358, 9798696952611, 'Cerita yang Menakjubkan dari Monster Spageti', 'Yayasan Firmansyah Marbun', 2, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(359, 9797911997536, 'Keadilan Semangka Menari', 'Fa Mangunsong Mahendra', 8, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(360, 9783105600276, 'Kehidupan Masa Depan Dinosaurus DJ', 'PJ Suartini Tbk', 2, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(361, 9798940445494, 'Mitos yang Aneh. Kadal Terbang', 'Perum Zulkarnain (Persero) Tbk', 9, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(362, 9798217128143, 'Cerita yang Menakjubkan dari Kangkung Bercahaya', 'PD Waluyo Kusumo (Persero) Tbk', 9, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(363, 9797304218002, 'Inovasi Baru Aku dan Kamu', 'Yayasan Puspasari Uyainah Tbk', 2, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(364, 9788854511279, 'Pertarungan Epik! Jus Jingga', 'PJ Wibowo (Persero) Tbk', 9, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(365, 9797900851313, 'Sang Legendaris Cabe Berbicara', 'UD Lailasari Wijayanti Tbk', 2, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(366, 9793158218793, 'Semua Tentang Kehidupan Pedang', 'Yayasan Kurniawan Tbk', 10, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(367, 9780318844770, 'Cerita yang Menakjubkan dari Anjing Astronaut', 'Yayasan Susanti Napitupulu', 10, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(368, 9790544390323, 'Kehebatan Sang Pahlawan Peri', 'PD Sitompul', 2, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(369, 9791134309497, 'Keteguhan Lemur Pembaca', 'CV Irawan', 9, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(370, 9789322358143, 'Harapan Baru Kopi Ajaib', 'UD Anggraini Tbk', 8, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(371, 9782746329546, 'Misteri yang Tersembunyi Pangeran', 'Yayasan Tampubolon', 10, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(372, 9782355944833, 'Misteri yang Tersembunyi Kelengkeng Berkacamata', 'Yayasan Zulaika', 9, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(373, 9798651664665, 'Kehebatan Sang Pahlawan Skibidi', 'UD Wahyuni Ramadan Tbk', 9, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(374, 9794516571338, 'Kehidupan Masa Depan Jus Jingga', 'CV Wibowo Halimah (Persero) Tbk', 2, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(375, 9792818339700, 'Keberanian yang Luar Biasa Pedang', 'PD Wulandari Puspita', 9, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(376, 9783818454678, 'rukunannya hidup Pejuang', 'PJ Nashiruddin Laksmiwati (Persero) Tbk', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(377, 9792566256359, 'Kemenangan Gemilang Zebra Bernyanyi', 'PT Yuliarti (Persero) Tbk', 2, 73, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(378, 9797945685560, 'Kejadian yang Seram: Kucing Pemberontak', 'Yayasan Putra (Persero) Tbk', 10, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(379, 9797779271649, 'Keadilan Senja', 'PT Fujiati (Persero) Tbk', 9, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(380, 9789983799415, 'Sejarah yang Terlupakan Pencarian', 'PT Permata', 9, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(381, 9788406834443, 'Pertarungan Epik! Jagung Terbang', 'CV Padmasari Usada', 9, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(382, 9781366359049, 'Keteguhan Pizza Berenang', 'Yayasan Manullang Pratiwi', 10, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(383, 9792665773184, 'Kelembutan Kebenaran', 'UD Sihombing Hutagalung Tbk', 10, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(384, 9783041360340, 'Pertarungan Epik! Kebebasan', 'PT Rahimah Tbk', 9, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(385, 9789608489790, 'Antusiasme Sungai', 'CV Hutagalung', 8, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(386, 9791139259575, 'Sisi Misterius dari Badai', 'PD Widiastuti Manullang (Persero) Tbk', 2, 44, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(387, 9781840859553, 'Momen yang Menegangkan pada Es Krim Pahlawan', 'UD Rajata Suwarno (Persero) Tbk', 9, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(388, 9794771313377, 'Petualangan Seru Lebah Pelaut', 'UD Gunawan Padmasari (Persero) Tbk', 2, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(389, 9780799533293, 'Mitos yang Aneh. Puteri Duyung', 'Perum Aryani Nugroho (Persero) Tbk', 9, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(390, 9792743296994, 'Apa itu? Apel Berkacamata', 'Perum Saptono', 10, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(391, 9796049674722, 'Kesederhanaan Putri', 'PT Pradana Wastuti', 10, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(392, 9796864205064, 'Keberanian yang Luar Biasa Kabut', 'Perum Tamba', 8, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(393, 9790317783284, 'Penjelasan Tentang Naga Kue', 'UD Hartati', 8, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(394, 9793096329025, 'Kesabaran Jawir', 'PD Suryatmi Wasita', 8, 67, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(395, 9793769223704, 'Seberapa Menyeramkan: Laut', 'PJ Puspita Maryati', 2, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(396, 9786267345122, 'Bersinar Terang Buah Naga Jahil', 'Perum Hutapea (Persero) Tbk', 9, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(397, 9796539730082, 'Hal Tak Terduga  Jefy Okta', 'PT Budiman Mangunsong (Persero) Tbk', 9, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(398, 9795277946120, 'Kesederhanaan Vampir Vegetarian', 'Fa Wastuti Tbk', 8, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(399, 9792826366972, 'Masalalu yang Misterius Rambutan Berkilau', 'Perum Utami Wahyuni', 9, 59, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(400, 9791044084019, 'Selalu ceria bersama Uranus', 'Yayasan Rajata (Persero) Tbk', 10, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(401, 9791038552678, 'Sportivitas Jawir', 'CV Nurdiyanti (Persero) Tbk', 10, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(402, 9792084463307, 'Momen yang Menegangkan pada Anggur Detektif', 'CV Wulandari Gunarto', 8, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(403, 9797549435332, 'Kegagahan Monster Spageti', 'Fa Novitasari (Persero) Tbk', 10, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(404, 9795367488097, 'Kekuatan Kabut', 'Perum Manullang', 10, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(405, 9786072798472, 'Ketangguhan Nasi Goreng Terbang', 'UD Habibi Yuliarti Tbk', 2, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(406, 9793590801706, 'Pertarungan Epik! Unicorn Pelukis', 'Perum Hartati Gunarto', 10, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(407, 9783502002482, 'Ketekunan Salak Pahlawan', 'Yayasan Ardianto Mardhiyah Tbk', 10, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(408, 9788289534577, 'Misteri yang Mendebarkan : Ubi Jalar Jahil', 'PJ Siregar Tbk', 10, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(409, 9788333822353, 'Hal yang Terlarang Lebah Pelaut', 'PD Rajasa Pudjiastuti', 2, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(410, 9795958892449, 'Kesejahteraan blecki', 'PD Handayani Wastuti Tbk', 2, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(411, 9799040666864, 'Rahasia yang Tersembunyi dari Pizza Berenang', 'Perum Mandala Tbk', 10, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(412, 9785101531752, 'Sebuah Perjalanan Panjang Elang Detektif', 'CV Hartati', 10, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(413, 9787246920972, 'Momen yang Menegangkan pada Serigala Karaoke', 'Yayasan Samosir', 8, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(414, 9787999088141, 'Kesaktian Pizza Berenang', 'PT Utami Anggraini (Persero) Tbk', 10, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(415, 9799847638613, 'Hal yang Aneh dari Cireng', 'CV Hassanah Januar Tbk', 9, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(416, 9791306406030, 'Fakta Menarik Gorila Berdasi', 'PJ Widiastuti Tbk', 2, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(417, 9788482561608, 'Kehidupan Masa Depan Ghezia anisa', 'Yayasan Puspasari Palastri (Persero) Tbk', 8, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(418, 9798030370576, 'Sosok yang Menawan, Aku dan Kamu', 'Yayasan Mardhiyah Maheswara', 10, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(419, 9798401124784, 'Kekuatan Kucing Pemberontak', 'CV Namaga Wulandari Tbk', 10, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(420, 9786803238611, 'Penjelasan Tentang Kangkung Bercahaya', 'PD Firmansyah Tbk', 9, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(421, 9794757483209, 'Gairah Kuda Santai', 'Fa Yuliarti', 8, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(422, 9785363141287, 'Sejarah Kelam Elang Detektif', 'Fa Setiawan', 8, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(423, 9785078217703, 'Optimisme Alien Imut', 'Yayasan Laksita Sudiati', 2, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(424, 9781997182870, 'Impian yang Terwujud Zebra Bernyanyi', 'PT Sihotang (Persero) Tbk', 8, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(425, 9792311564937, 'Kisah yang Menginspirasi, Kerajaan', 'PJ Hardiansyah', 2, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(426, 9791762796744, 'Kehidupan Masa Depan Beruang Berseluncur', 'PJ Santoso', 8, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(427, 9788102468041, 'Kekokohan  Jefy Okta', 'Yayasan Saragih', 10, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(428, 9783968202006, 'Kehancuran untuk Kebenaran', 'PJ Santoso (Persero) Tbk', 9, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(429, 9782715109117, 'Solidaritas Ayam Super', 'PT Prastuti Budiman Tbk', 9, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(430, 9794737202370, 'Kesederhanaan Semut BirahiOkta-Kon', 'PD Nurdiyanti Padmasari', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(431, 9781209221168, 'Kemandirian Uranus', 'CV Hakim Tbk', 10, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(432, 9797309008806, 'Sisi Misterius dari Sungai', 'CV Hakim Oktaviani Tbk', 8, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(433, 9786277622060, 'Harapan Baru Penyihir', 'Yayasan Wijaya Wasita (Persero) Tbk', 2, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(434, 9789395155786, 'Hal yang Terlarang Bola Ajaib', 'Fa Purwanti', 10, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(435, 9783696810436, 'Kelembutan Matoa Penari', 'PD Waluyo (Persero) Tbk', 8, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(436, 9794672141345, 'Kesabaran Belimbing Penyair', 'Perum Widodo (Persero) Tbk', 2, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(437, 9794662032127, 'Kemajuan Gajah Montok', 'PT Wahyuni Nainggolan Tbk', 8, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(438, 9782285099306, 'Kisah yang Menginspirasi, Katak Disco', 'UD Oktaviani', 2, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(439, 9789048656790, 'Penuh Kasih Teh Bersiul', 'UD Saputra Prasetya', 2, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(440, 9798329736960, 'Ajaibnya Dunia Pisang Pahlawan', 'PT Permata', 2, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(441, 9792133046055, 'Penuh Kasih Pahlawan', 'Fa Tamba Siregar (Persero) Tbk', 9, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(442, 9793050904381, 'Masalalu yang Misterius Naga Kue', 'CV Hastuti Pertiwi', 2, 56, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(443, 9785077956122, 'Fakta Menarik Unicorn Pelukis', 'PT Suryatmi Tbk', 10, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(444, 9796795101428, 'Kejujuran ambatukam', 'PD Hassanah', 8, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(445, 9794483199191, 'Sejarah yang Terlupakan Ubi Jalar Jahil', 'UD Maulana Anggraini', 9, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(446, 9784794302175, 'Sejarah Kelam Gorila Berdasi', 'PJ Mansur Tbk', 2, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(447, 9793481364495, 'Kehebatan Sang Pahlawan Merpati Post', 'Fa Mustofa Tbk', 10, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(448, 9783353657688, 'Misteri yang Tersembunyi Jepi the Great', 'PT Situmorang Pudjiastuti', 8, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(449, 9783133303262, 'Ketulusan Jus Jingga', 'Yayasan Jailani Wastuti Tbk', 2, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(450, 9792917786498, 'Sejarah Kelam Lemur Pembaca', 'CV Tarihoran Mayasari Tbk', 9, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(451, 9796661774107, 'Masalalu yang Misterius Bintang', 'PD Zulkarnain', 8, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(452, 9789785277371, 'Keberanian yang Luar Biasa Markisa Ninja', 'PJ Kusmawati (Persero) Tbk', 9, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(453, 9784494477111, 'Rahasia yang Tersembunyi dari Penguin Rocker', 'PD Waskita (Persero) Tbk', 9, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(454, 9792130771950, 'Kehancuran untuk Sungai', 'PJ Rahimah', 8, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(455, 9789542458647, 'Mitos yang Aneh. Raksasa', 'Yayasan Astuti', 10, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(456, 9795779946772, 'Kemandirian Monster Spageti', 'UD Rahimah Andriani', 2, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(457, 9792240255203, 'Impian yang Terwujud Sosis Berjalan', 'PT Santoso', 2, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(458, 9798759167952, 'Kejadian yang Seram: Kapal Hantu', 'UD Palastri Tbk', 8, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(459, 9783039122530, 'Kekuatan Sirsak Detektif', 'UD Widodo Tbk', 9, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(460, 9785083791205, 'Momen yang Menegangkan pada Katak Disco', 'Perum Wijaya', 10, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(461, 9798332423284, 'Kelembutan Naga', 'Fa Uyainah Wulandari (Persero) Tbk', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(462, 9793836946741, 'Selalu ceria bersama Lemur Pembaca', 'PT Aryani Hastuti', 2, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(463, 9790961446757, 'Mitologi Kuno : Indonesia', 'Perum Suwarno Nasyidah', 8, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(464, 9780308265813, 'Bersinar Terang Hutan', 'UD Fujiati', 10, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(465, 9781116990126, 'Kreativitas yang Tak Terbatas Segitiga Bermuda', 'Perum Suwarno Namaga (Persero) Tbk', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(466, 9791334565709, 'Kegagahan Ayam Super', 'Fa Kuswandari Tbk', 2, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(467, 9783861226567, 'Mengenal Belimbing Penyair', 'PJ Budiman Lazuardi Tbk', 2, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(468, 9788036456718, 'Kesabaran Puding Menari', 'PJ Hariyah', 2, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(469, 9787458737641, 'Mitologi Kuno : Kura-Kura Ninja', 'PJ Namaga Namaga', 2, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(470, 9782876630987, 'Kemenangan Gemilang Cireng', 'UD Hartati', 10, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(471, 9797359263804, 'Selalu ceria bersama ambatukam', 'Yayasan Hutasoit (Persero) Tbk', 8, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(472, 9798061026589, 'Cerita yang Menakjubkan dari Rahib', 'PT Yulianti (Persero) Tbk', 8, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(473, 9782802176015, 'Kehancuran untuk Perang', 'CV Handayani', 9, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(474, 9793321026255, 'Ketangguhan Kiwi Penyair', 'PJ Andriani Pudjiastuti', 2, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(475, 9793884186977, 'Sebuah Perjalanan Panjang Hapis', 'PT Pradipta Padmasari', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(476, 9781847375582, 'Toleransi Jerapah Jahil', 'Perum Hariyah Mardhiyah (Persero) Tbk', 2, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(477, 9793362005295, 'Kebijaksanaan Bunglon Kocak', 'PJ Hakim Oktaviani Tbk', 10, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(478, 9780234516430, 'Kehebatan yang Luar Biasa Bakso Berkaki', 'Yayasan Latupono Puspita (Persero) Tbk', 8, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(479, 9795868717931, 'Cinta Abadi, Beruang Berseluncur', 'UD Pangestu Tbk', 10, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(480, 9790077556906, 'Keteguhan Durian Pembaca', 'PJ Lailasari Lailasari', 2, 56, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(481, 9788581028620, 'Keteguhan Babi Kung Fu', 'Fa Prabowo Napitupulu', 2, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(482, 9787665300676, 'Berkelanjutan Kumbang Emas', 'PD Wastuti Anggriawan', 8, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(483, 9786940179266, 'Kejujuran Saturnus', 'PT Prasetya Tbk', 9, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(484, 9794425588243, 'Zaman Purba Aku dan Kamu', 'Perum Wibisono', 2, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(485, 9799337295609, 'terlanjur nyamanan, Gajah Menari', 'Yayasan Sudiati', 2, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(486, 9783486487640, 'Optimisme Jia', 'CV Pratiwi Tbk', 9, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(487, 9798034004712, 'Legenda yang Melegenda ! Ayam Super', 'Perum Salahudin Gunawan', 9, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(488, 9789311318486, 'Keadilan Elang Detektif', 'CV Rahimah', 8, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(489, 9785896649113, 'Bersinar Terang Permen Berbicara', 'PD Mustofa (Persero) Tbk', 8, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(490, 9785041731908, 'Kekuatan Kebebasan', 'Fa Handayani Tbk', 10, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(491, 9781781348444, 'Optimisme Kucing Pemberontak', 'CV Hasanah (Persero) Tbk', 10, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(492, 9791329974974, 'Kreativitas yang Tak Terbatas Kucing Pemberontak', 'PD Winarsih', 2, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(493, 9789671927922, 'Optimisme Kura-Kura Ninja', 'UD Pertiwi', 8, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(494, 9792700754949, 'Kehebatan yang Luar Biasa Samudra', 'CV Natsir Tbk', 9, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(495, 9789512893461, 'Apa itu? Pustaka', 'PT Uyainah Sinaga Tbk', 9, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(496, 9796657326105, 'Sang Legendaris Gorila Berdasi', 'PJ Prakasa Tbk', 9, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(497, 9799742369681, 'Kebahagiaan saat melihat Permen Berbicara', 'CV Pudjiastuti Melani', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(498, 9786630654639, 'Keajaiban yang Tak Terduga dalam Penyihir', 'Perum Novitasari (Persero) Tbk', 2, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(499, 9790801638540, 'Semangat Jepi', 'PJ Irawan Tbk', 10, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(500, 9790643714891, 'Dinamika Peri', 'Yayasan Wibisono', 10, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(501, 9796892234661, 'Kelembutan Cireng', 'Yayasan Melani Oktaviani (Persero) Tbk', 9, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(502, 9797028929222, 'Sosok yang Menawan, Indonesia', 'PT Rahmawati', 10, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(503, 9782971189021, 'Harapan Baru Pustaka', 'PJ Halimah Tbk', 10, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(504, 9799656339572, 'Ajaibnya Dunia Okta', 'Perum Haryanti Hartati (Persero) Tbk', 8, 56, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(505, 9786663871331, 'Harapan Baru Markisa Ninja', 'PT Saptono Halimah (Persero) Tbk', 2, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(506, 9782069551570, 'terlanjur nyamanan, Kura-Kura Ninja', 'Yayasan Pudjiastuti', 9, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(507, 9799719743049, 'terlanjur nyamanan, Penguin Rocker', 'Fa Sihombing Tbk', 2, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(508, 9789821927901, 'Kegembiraan mengetahui Alien Imut', 'Fa Prasasta Hutapea', 10, 53, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(509, 9780322578586, 'Berkelanjutan Jawir', 'PJ Oktaviani (Persero) Tbk', 9, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(510, 9792467421900, 'Keajaiban Purba Jia', 'Yayasan Nainggolan Winarsih', 9, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(511, 9798112548862, 'Dunia Luar Angkasa jepi dan jia', 'PT Anggraini Sitorus Tbk', 2, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(512, 9791730087959, 'Rahasia yang Tersembunyi dari Bawang Putih Pemberani', 'CV Hutagalung', 2, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(513, 9784723227265, 'Keteguhan Katak Himalayah', 'PD Putra Winarsih', 9, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(514, 9783425643915, 'Kekokohan Rahib', 'PT Novitasari Wijayanti', 9, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(515, 9780509799308, 'Sosok yang Menawan, Senja', 'PD Winarno Astuti', 8, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(516, 9793034584523, 'Kolaborasi Hebat blecki', 'Yayasan Suartini Sihotang Tbk', 9, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(517, 9783200382268, 'Cahaya Terang Mentimun Ninja', 'UD Andriani Tbk', 10, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(518, 9780186171268, 'Sportivitas Kangkung Bercahaya', 'UD Wijaya Dongoran', 9, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(519, 9787406662261, 'Keajaiban yang Tak Terduga dalam Paus Pemandu Wisata', 'Fa Situmorang Maryati (Persero) Tbk', 2, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(520, 9783370576191, 'Mengenal Bungkus Biskuit', 'Perum Uwais Hariyah Tbk', 10, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(521, 9794450179201, 'Pertarungan Epik! Jia', 'Perum Kusumo Pertiwi', 9, 47, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(522, 9791453883616, 'Hal Tak Terduga Kebenaran', 'UD Hutapea Tbk', 8, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(523, 9792049200565, 'Kesetiaan Laut', 'Fa Sihombing Tbk', 10, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(524, 9797165183570, 'Kegembiraan mengetahui Sosis Berjalan', 'Yayasan Waluyo Budiyanto Tbk', 2, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(525, 9798531011596, 'Lintas Zaman: Beruang Berseluncur', 'Yayasan Aryani Situmorang (Persero) Tbk', 10, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(526, 9796129242971, 'Rahasia yang Tersembunyi dari Jia', 'CV Rahimah', 9, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(527, 9784420671859, 'Cahaya Terang Bintang', 'PD Uwais Nasyiah Tbk', 8, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(528, 9784693983215, 'Antusiasme Jia Cantik', 'Perum Pangestu Tbk', 10, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(529, 9796635330100, 'terlanjur nyamanan, Ikan Terbang', 'PD Putra Tbk', 2, 67, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(530, 9792094370329, 'Kesederhanaan Tikus Penari', 'PT Gunawan', 2, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(531, 9793567023582, 'Ketahanan Monster Spageti', 'PT Anggriawan', 8, 47, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(532, 9798936062322, 'Misteri yang Tersembunyi Sungai', 'PJ Utami Suryono Tbk', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(533, 9781013306860, 'Antusiasme Harimau Berkacamata', 'UD Suwarno', 2, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(534, 9782719254943, 'Mitologi Kuno : Stroberi Penari', 'Perum Winarsih Wulandari Tbk', 9, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(535, 9787819920415, 'Kedermawanan Belalang Penyair', 'Perum Samosir Tbk', 9, 47, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(536, 9790607339658, 'Kisah Fantastis Hiu Pesta', 'Yayasan Puspasari', 10, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(537, 9797978908018, 'Kesabaran Pepaya Super', 'UD Anggriawan (Persero) Tbk', 10, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(538, 9794517218621, 'Kehidupan Masa Depan Kura-Kura Ninja', 'CV Palastri Tbk', 10, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(539, 9785483078777, 'Hidup Damai, Kebenaran', 'PJ Hardiansyah Farida Tbk', 9, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(540, 9791535925968, 'Optimisme Meteor', 'PD Hastuti', 2, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(541, 9788399431582, 'Tempat Aman blecki', 'PT Anggriawan Tbk', 8, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(542, 9799967670814, 'Sebuah Perjalanan Panjang Rubah Ceria', 'CV Wibowo Santoso', 2, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(543, 9794246359091, 'Petualangan Seru Pustaka', 'Yayasan Usada Lestari', 9, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(544, 9789024989065, 'Ketabahan seekor Pejuang', 'Perum Salahudin Mustofa', 8, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(545, 9793639589428, 'Kekuatan Gajah Menari', 'CV Sitompul Pratiwi', 2, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(546, 9783690985567, 'Ketabahan Sosis Berjalan', 'PD Susanti (Persero) Tbk', 10, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(547, 9781796769081, 'Kegigihan Sosis Berjalan', 'PD Prayoga', 2, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(548, 9797259829612, 'Lintas Zaman: Tikus Penari', 'Fa Fujiati Nuraini (Persero) Tbk', 9, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(549, 9783405376307, 'Tempat Aman Semangka Menari', 'PT Sihombing Situmorang (Persero) Tbk', 8, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(550, 9794570144882, 'Hal Tak Terduga Coklat Penari', 'PD Prastuti', 2, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(551, 9793113485741, 'Jejak yang Hilang Lebah Pelaut', 'CV Hassanah Namaga', 9, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(552, 9796794615155, 'Keberanian yang Luar Biasa Bungkus Biskuit', 'Fa Safitri Setiawan Tbk', 10, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(553, 9796542746667, 'Hidup Damai, Naga Kue', 'PT Narpati Kusmawati', 2, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(554, 9795606560508, 'Selalu ceria bersama Bunglon Kocak', 'Perum Suartini', 2, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(555, 9793292404014, 'Kebijaksanaan Mentimun Ninja', 'Fa Tamba Hassanah', 8, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(556, 9792753789097, 'Fakta Menarik Kadal Terbang', 'PD Maryati Usamah Tbk', 9, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(557, 9791263202881, 'Kekuatan Jia', 'CV Saragih Wulandari', 8, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(558, 9792075075489, 'Kekokohan Bakso Berkaki', 'Yayasan Mandasari Novitasari Tbk', 10, 56, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(559, 9796501055564, 'Jejak yang Hilang Katak Disco', 'Fa Damanik', 8, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(560, 9784427001772, 'Kejujuran Katak Himalayah', 'PD Fujiati', 9, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(561, 9783823032137, 'Kemenangan Gemilang Timun Menari', 'Fa Yulianti Utama', 8, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(562, 9793696074233, 'Sosok yang Menawan, Uranus', 'Perum Maryadi Situmorang', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(563, 9780644289252, 'Kejujuran Siang Malam', 'Perum Waskita Nainggolan (Persero) Tbk', 8, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(564, 9781027087373, 'Pertarungan Epik! Kacang Super', 'Yayasan Riyanti (Persero) Tbk', 10, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(565, 9788500888182, 'Legenda yang Melegenda ! Jepi', 'Fa Laksita', 8, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(566, 9786954722700, 'Jejak yang Hilang  Jefy Okta', 'Yayasan Iswahyudi (Persero) Tbk', 10, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(567, 9784063181487, 'Antusiasme Kangkung Bercahaya', 'CV Wijaya Wahyuni', 9, 56, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(568, 9782401393196, 'Kesederhanaan Ubi Jalar Jahil', 'PD Puspita Tbk', 9, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(569, 9799494270273, 'Harapan Baru Bungkus Biskuit', 'Perum Yolanda Adriansyah', 9, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(570, 9782206348834, 'Kesederhanaan Hiu Pesta', 'UD Wijaya Prasetyo (Persero) Tbk', 9, 65, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(571, 9785200780549, 'Kebahagiaan saat melihat Kelapa Berjalan', 'Fa Riyanti Budiman (Persero) Tbk', 8, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(572, 9795341334778, 'Solidaritas Pagi', 'PD Uyainah (Persero) Tbk', 10, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(573, 9790489135799, 'Kolaborasi Hebat Labu Berkilau', 'PD Hartati', 10, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(574, 9791560236282, 'Rahasia yang Tersembunyi dari Kura-Kura Ninja', 'Fa Sitompul Firgantoro (Persero) Tbk', 10, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(575, 9780514821247, 'Sang Legendaris Jambu Berbicara', 'PD Lailasari Tbk', 10, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(576, 9790455775875, 'Masalalu yang Misterius Belimbing Penyair', 'Perum Sihombing Latupono', 2, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(577, 9780863743702, 'Sikap Tegas Penjara', 'Perum Putra (Persero) Tbk', 2, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(578, 9799634391721, 'Selalu ceria bersama Hiu Pesta', 'Perum Puspasari', 9, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(579, 9782866820510, 'Ajaibnya Dunia jepi dan jia', 'PD Pudjiastuti Suryono Tbk', 10, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(580, 9793494221068, 'Kedermawanan Mentimun Ninja', 'Fa Suartini Januar', 8, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(581, 9791418196416, 'Solidaritas Kadal Terbang', 'Yayasan Zulaika (Persero) Tbk', 10, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(582, 9795972150556, 'Optimisme Gua', 'Yayasan Winarsih Tbk', 2, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(583, 9793249922868, 'Hal Tak Terduga jepi dan jia', 'Yayasan Fujiati Laksmiwati', 10, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(584, 9794053687462, 'Momen yang Menegangkan pada Puding Menari', 'PT Yolanda (Persero) Tbk', 10, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(585, 9785232749804, 'Sejarah yang Terlupakan Peri', 'PT Laksita (Persero) Tbk', 8, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(586, 9789695761694, 'Sebuah Perjalanan Panjang Kelinci Pesulap', 'Fa Namaga Tbk', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(587, 9798618857437, 'Berkelanjutan Laba-Laba Ninja', 'PJ Suartini', 2, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(588, 9780573671227, 'Mitologi Kuno : Bintang', 'UD Pangestu Mansur', 8, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(589, 9799616787368, 'Kehebatan yang Luar Biasa Pizza Berenang', 'CV Saptono', 10, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(590, 9785000292365, 'Kegagahan Harimau Berkacamata', 'UD Waskita Santoso (Persero) Tbk', 8, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(591, 9795857545750, 'Kesetiaan Kometa', 'PD Saefullah Yuliarti', 10, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(592, 9796550547898, 'Kebahagiaan saat melihat Sirsak Detektif', 'CV Wahyuni Tbk', 10, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(593, 9792047396215, 'Kesederhanaan Gua', 'PJ Hutasoit Tbk', 9, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(594, 9785319254146, 'Semua Tentang Kehidupan Katak Disco', 'PT Yolanda Hastuti Tbk', 10, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(595, 9795051333559, 'Kemajuan Kabut', 'Yayasan Wijaya', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(596, 9795365010559, 'Ajaibnya Dunia Markisa Ninja', 'Fa Kurniawan Ardianto', 9, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(597, 9794186022192, 'Cahaya yang Cemerlang Gunung Berapi', 'Fa Wibisono Rahimah Tbk', 10, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(598, 9787897422818, 'Kesaktian Kabut', 'Fa Wijayanti Lailasari (Persero) Tbk', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(599, 9788745706265, 'Serba Serbi Unik Jambu Berbicara', 'UD Waskita Purwanti', 8, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(600, 9799978770329, 'Cinta Abadi, Gua', 'PJ Napitupulu', 2, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(601, 9790443619075, 'Kesabaran Bungkus Biskuit', 'PD Palastri Laksita', 10, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(602, 9791196647926, 'Kekokohan Ghezia anisa', 'PD Pradana Halimah', 8, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(603, 9786059562904, 'Kehebatan Sang Pahlawan Pangeran', 'PJ Zulkarnain Puspasari Tbk', 8, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(604, 9780136374015, 'Sejarah yang Terlupakan Matoa Penari', 'Yayasan Hassanah', 10, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(605, 9793493858906, 'Gelap Gulitanya Nasi Goreng Terbang', 'Yayasan Kurniawan (Persero) Tbk', 10, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(606, 9781092080996, 'Kebahagiaan saat melihat Kura-Kura Ninja', 'Fa Waluyo Marbun', 8, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(607, 9797870464087, 'Kelembutan Kumbang Emas', 'UD Melani Pangestu (Persero) Tbk', 2, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(608, 9797209749274, 'Petualangan Seru Uranus', 'PJ Hidayat', 2, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(609, 9792499943791, 'Hal Tak Terduga Soda Bercahaya', 'Perum Sihotang Wibowo', 10, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(610, 9783219615647, 'Sisi Misterius dari Pejuang', 'Yayasan Kusumo Tbk', 10, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(611, 9792408308987, 'Kelembutan Rahib', 'UD Ramadan Simbolon (Persero) Tbk', 9, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(612, 9788627120394, 'Cinta Abadi, Penyihir', 'PT Hardiansyah (Persero) Tbk', 8, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(613, 9783001426079, 'Penampilan yang Memukau Penyihir', 'CV Aryani Puspita', 2, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(614, 9784474595491, 'Dunia Luar Angkasa Mangga Berlari', 'CV Mangunsong (Persero) Tbk', 8, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(615, 9786123133573, 'Ketahanan Jia Cantik', 'Fa Rajasa Hassanah Tbk', 9, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(616, 9781714051236, 'Kehancuran untuk Kiwi Penyair', 'UD Halimah (Persero) Tbk', 2, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(617, 9797449971428, 'Kebijaksanaan Jia', 'PJ Najmudin Rahimah Tbk', 2, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(618, 9786009406074, 'Kesederhanaan Keris Keramat', 'Perum Adriansyah (Persero) Tbk', 10, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(619, 9789045150178, 'Penuh Kasih Kue Misterius', 'UD Pratiwi Sirait', 2, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(620, 9798309786046, 'Dunia Luar Angkasa Beruang Berseluncur', 'CV Zulaika Wacana Tbk', 10, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(621, 9784530796534, 'Hal Tak Terduga Ghezia anisa', 'PJ Safitri Wibisono Tbk', 8, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(622, 9782079734437, 'Zaman Purba Kapal Hantu', 'Perum Dabukke Dabukke', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(623, 9799114420880, 'terlanjur nyamanan, Harimau Berkacamata', 'PD Uwais Widiastuti (Persero) Tbk', 9, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(624, 9797421744347, 'Kelembutan Bebek Detektif', 'PD Agustina Maryadi Tbk', 8, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(625, 9799813612890, 'Misteri yang Tersembunyi Belimbing Penyair', 'Fa Riyanti Mahendra', 2, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(626, 9787808327317, 'Optimisme Oatmeals Menyanyi', 'CV Haryanti Simbolon Tbk', 8, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(627, 9784950098560, 'Semua Tentang Kehidupan Merpati Post', 'Yayasan Firmansyah Usamah', 8, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(628, 9793593169957, 'Kekuatan Kura-Kura Ninja', 'CV Rahmawati', 8, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(629, 9799015347354, 'Optimisme Hutan', 'Perum Setiawan Widiastuti', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(630, 9783988186966, 'Selalu ceria bersama Mentimun Ninja', 'PT Agustina', 9, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(631, 9795363535429, 'Hal yang Terlarang Kelinci Pesulap', 'PJ Rajata (Persero) Tbk', 8, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(632, 9799799225169, 'Petualangan Seru Badai', 'Yayasan Mayasari (Persero) Tbk', 10, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(633, 9799736026477, 'Kesabaran Bima Sakti', 'Yayasan Anggraini Tbk', 10, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(634, 9793764501661, 'Kisah yang Menginspirasi, Jepi the Great', 'UD Lestari', 2, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(635, 9787258867098, 'Penjelasan Tentang Penguin Rocker', 'UD Prasetyo Narpati', 2, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(636, 9794792967047, 'Kegigihan Pepaya Super', 'PD Mulyani', 10, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(637, 9794555071851, 'Seberapa Menyeramkan: Mentimun Ninja', 'Fa Widodo Sudiati', 8, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(638, 9783397663973, 'Kesederhanaan ambatukam', 'PD Haryanto Hassanah', 2, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(639, 9792083006598, 'Cahaya yang Cemerlang Sandwich Bertopi', 'PD Melani Safitri', 2, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(640, 9790477297010, 'Sebuah Perjalanan Panjang Sungai', 'PD Sudiati Haryanto', 2, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(641, 9796929276077, 'Cinta Abadi, Harta Karun', 'PT Hariyah Tbk', 9, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(642, 9787981614549, 'Legenda yang Melegenda ! Harta Karun', 'PJ Maheswara Laksita', 10, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(643, 9796735648792, 'Keajaiban yang Tak Terduga dalam Cabe Berbicara', 'CV Sihombing Nasyidah', 9, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(644, 9796433835487, 'Kehebatan yang Luar Biasa Kelapa Berjalan', 'CV Pertiwi Tbk', 2, 79, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(645, 9789320209577, 'Sosok yang Menawan, Kupu-Kupu Berkilau', 'Fa Prakasa Kuswandari', 8, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(646, 9792036695848, 'Jejak yang Hilang Kapal Hantu', 'PT Haryanto Kuswoyo (Persero) Tbk', 2, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(647, 9797781888163, 'Sejarah Kelam Kelelawar Balap', 'Perum Purwanti', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(648, 9795637432119, 'Kehebatan yang Luar Biasa Naga Kue', 'PJ Irawan (Persero) Tbk', 10, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(649, 9795582251117, 'Apa itu? Jeruk Penyair', 'PT Nasyidah Damanik', 2, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(650, 9796340386287, 'Toleransi Kerajaan', 'UD Usada Setiawan Tbk', 10, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(651, 9780539394634, 'Semangat Laut Pasifik', 'CV Haryanto Fujiati (Persero) Tbk', 9, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(652, 9780349226620, 'Kemajuan Katak Himalayah', 'Yayasan Maryati (Persero) Tbk', 9, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(653, 9791367930147, 'Keadilan Bungkus Biskuit', 'PJ Suwarno Yulianti', 2, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(654, 9793620454346, 'Penampilan yang Memukau Jia Cantik', 'UD Oktaviani Tbk', 9, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(655, 9780838606070, 'Kegigihan Buah Naga Jahil', 'Perum Damanik (Persero) Tbk', 2, 56, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(656, 9784086309721, 'Penampilan yang Memukau Semangka Menari', 'Yayasan Pangestu Rahmawati', 10, 25, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(657, 9791392414490, 'Impian yang Terwujud Cacing Pemberani', 'PD Wahyuni', 9, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(658, 9794789716023, 'Sportivitas Peri', 'Perum Nababan (Persero) Tbk', 2, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(659, 9787459232237, 'Keajaiban Purba Kelapa Berjalan', 'PD Najmudin Tbk', 8, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(660, 9792801041580, 'Misteri yang Tersembunyi Durian Pembaca', 'UD Thamrin Yuniar', 10, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(661, 9792522542632, 'Kemandirian Belimbing Penyair', 'PJ Handayani Nasyiah', 10, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(662, 9782636413089, 'Berkelanjutan Kerajaan', 'PJ Agustina (Persero) Tbk', 8, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(663, 9794195829140, 'Kisah yang Menginspirasi, Kue Misterius', 'Yayasan Laksmiwati Mandasari (Persero) Tbk', 10, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(664, 9782626126371, 'Cinta Abadi, Rambutan Berkilau', 'PJ Maryati Suartini Tbk', 10, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(665, 9789081675598, 'Sang Legendaris Perang', 'PT Salahudin Mayasari', 10, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(666, 9785982583734, 'Kekokohan Kue Misterius', 'UD Manullang Tbk', 10, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(667, 9788781469414, 'Kolaborasi Hebat Hantu', 'UD Wulandari', 9, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(668, 9781472614902, 'Kisah yang Menginspirasi, Katak Himalayah', 'PJ Purwanti Nasyiah', 2, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(669, 9797068454951, 'Kegigihan Sawi Pembaca', 'Yayasan Pertiwi', 9, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(670, 9799540454589, 'Inovasi Baru Jeruk Penyair', 'PD Permata', 8, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(671, 9794902511092, 'Bersinar Terang Kabut', 'PT Usada Sihombing Tbk', 2, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(672, 9782761277020, 'Mengenal Pejuang', 'CV Hassanah Napitupulu', 10, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(673, 9794815843587, 'Cahaya yang Cemerlang Kucing Pemberontak', 'Yayasan Firgantoro', 8, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(674, 9795140128493, 'Keadilan Pustaka', 'PT Wijayanti Nuraini', 2, 44, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(675, 9796766552518, 'terlanjur nyamanan, Gunung Berapi', 'PT Kurniawan Tamba Tbk', 8, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(676, 9796601443896, 'Sejarah Kelam Kiwi Penyair', 'Fa Putra Kusmawati', 8, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(677, 9781165909643, 'Antusiasme Jelly Bercahaya', 'PT Yuniar', 10, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(678, 9796652427418, 'Kemenangan Gemilang Pejuang', 'PJ Mahendra', 9, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(679, 9787815169368, 'Kehancuran untuk Senja', 'UD Pertiwi', 9, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(680, 9799985044956, 'Dunia Luar Angkasa Belimbing Penyair', 'PT Purwanti Firgantoro (Persero) Tbk', 10, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(681, 9798867192648, 'Sikap Tegas Pulau', 'PJ Fujiati', 2, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(682, 9794034325482, 'Sosok yang Menawan, Durian Pembaca', 'PJ Susanti', 8, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(683, 9782758420637, 'terlanjur nyamanan, Lemur Pembaca', 'PD Widodo', 2, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(684, 9785132206537, 'Bersinar Terang Kabut', 'PD Prastuti Tbk', 8, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(685, 9794746548629, 'Kisah yang Menginspirasi, Elang Detektif', 'UD Wahyuni (Persero) Tbk', 10, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(686, 9794695215764, 'Kesaktian Monster Spageti', 'Yayasan Pudjiastuti Suwarno Tbk', 8, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(687, 9797503078032, 'Ketangguhan ambatukam', 'CV Saptono', 2, 52, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(688, 9787078473592, 'Petualangan Seru Lebah Pelaut', 'Perum Nasyidah Tbk', 8, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(689, 9793652864670, 'Sang Legendaris Jia', 'Yayasan Uwais Irawan (Persero) Tbk', 2, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(690, 9784560213759, 'Apa itu? Pangeran', 'CV Rahayu', 8, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(691, 9795856808221, 'Cinta Abadi, Merpati Post', 'PD Pradipta (Persero) Tbk', 8, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(692, 9788090323155, 'Sisi Misterius dari Meteor', 'Perum Rajasa', 9, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(693, 9798769080357, 'rukunannya hidup Jepi the Great', 'Yayasan Wulandari Sitompul', 2, 73, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(694, 9792943620469, 'Kesejahteraan Jambu Berbicara', 'PJ Mardhiyah (Persero) Tbk', 8, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(695, 9784739541409, 'Ketangguhan Kerajaan', 'PD Yulianti Farida', 10, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(696, 9789393201416, 'Kebijaksanaan Katak Disco', 'UD Winarsih Safitri', 10, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(697, 9792217079122, 'Seberapa Menyeramkan: Bunglon Kocak', 'PT Lestari', 9, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(698, 9786822366500, 'Ketahanan Katak Disco', 'Fa Lestari', 10, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46');
INSERT INTO `buku` (`id_buku`, `kode_buku`, `nama_buku`, `penerbit`, `rak`, `stok_buku`, `foto_buku`, `created_at`, `updated_at`) VALUES
(699, 9785993541914, 'Cinta Abadi, Rubah Ceria', 'UD Zulkarnain Rahayu', 8, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(700, 9795461191138, 'Kedermawanan Pustaka', 'Perum Simbolon', 10, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(701, 9784009152199, 'Kreativitas yang Tak Terbatas Pizza Berenang', 'Fa Agustina (Persero) Tbk', 10, 47, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(702, 9789790437937, 'Ketekunan Pahlawan', 'Perum Wahyuni Latupono', 8, 21, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(703, 9788325702366, 'Bersinar Terang Lemur Pembaca', 'Perum Nasyiah Tarihoran', 2, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(704, 9797818509665, 'Hidup Damai, Pagi', 'Perum Saragih Dabukke', 9, 14, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(705, 9798434296694, 'Inovasi Baru Apel Berkacamata', 'Yayasan Maulana Rahmawati (Persero) Tbk', 2, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(706, 9781852700119, 'terlanjur nyamanan, Brokoli Pembaca', 'PJ Wibisono Wibisono (Persero) Tbk', 9, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(707, 9785017799208, 'Fakta Menarik Kangkung Bercahaya', 'Perum Pratiwi', 8, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(708, 9785201047665, 'Kekuatan Permen Berbicara', 'Perum Prayoga', 8, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(709, 9798872115953, 'Sejarah yang Terlupakan Hapis', 'PJ Rahimah Mulyani', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(710, 9793110917269, 'Momen yang Menegangkan pada Pedang', 'PD Namaga Utami (Persero) Tbk', 2, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(711, 9783949176166, 'Semua Tentang Kehidupan Kue Misterius', 'CV Napitupulu', 2, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(712, 9797020294496, 'Mitos yang Aneh. Uranus', 'Fa Maryati Handayani Tbk', 10, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(713, 9792817535790, 'Mitologi Kuno : Peri', 'PT Anggraini (Persero) Tbk', 8, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(714, 9790663982935, 'Kelembutan Beruang Berseluncur', 'Yayasan Nasyidah Megantara', 9, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(715, 9781823497239, 'Kisah Fantastis Gorila Berdasi', 'CV Iswahyudi Kuswandari (Persero) Tbk', 10, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(716, 9787140265490, 'Keadilan Jawa', 'Fa Sitorus', 10, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(717, 9797391602647, 'Sang Legendaris Segitiga Bermuda', 'CV Wulandari', 10, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(718, 9780404947026, 'Sikap Tegas Badai', 'Perum Prastuti Tbk', 10, 87, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(719, 9781141477937, 'Seberapa Menyeramkan: Coklat Penari', 'Perum Agustina Halim Tbk', 8, 59, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(720, 9782632130614, 'Sportivitas Pagi', 'PT Prastuti Mulyani', 10, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(721, 9796328330905, 'Bersinar Terang Es Krim Pahlawan', 'Yayasan Saragih Pradana Tbk', 9, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(722, 9782877811804, 'Sejarah Kelam Kumbang Emas', 'UD Kuswandari Dongoran Tbk', 9, 44, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(723, 9789398115008, 'Kedermawanan Anjing Astronaut', 'PT Mandasari Tbk', 2, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(724, 9799120388631, 'Gelap Gulitanya Laut Pasifik', 'CV Mayasari', 10, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(725, 9799238407668, 'Ketabahan ambatukam', 'PT Hastuti (Persero) Tbk', 8, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(726, 9795308945887, 'Mitologi Kuno : Kecoak Pahlawan', 'Fa Wibisono (Persero) Tbk', 10, 53, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(727, 9781941445563, 'Sosok yang Menawan, Beruang Berseluncur', 'CV Mansur Sirait (Persero) Tbk', 9, 65, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(728, 9782969473002, 'Cerita yang Menakjubkan dari Aku dan Kamu', 'Fa Marbun Yuliarti Tbk', 9, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(729, 9786241551419, 'Sang Legendaris Sukun Misterius', 'PD Sirait (Persero) Tbk', 2, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(730, 9790511259745, 'Kegembiraan mengetahui Penguin Rocker', 'UD Rahimah Lestari', 10, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(731, 9799373187319, 'Kemandirian Bakso Berkaki', 'UD Wulandari Hassanah Tbk', 10, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(732, 9781088291818, 'Cerita yang Menakjubkan dari Jus Jingga', 'UD Pudjiastuti Tbk', 8, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(733, 9792867665232, 'Zaman Purba Kelelawar Balap', 'PT Wibowo (Persero) Tbk', 9, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(734, 9782833245995, 'Keadilan Lebah Pelaut', 'UD Tampubolon', 10, 65, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(735, 9786819313937, 'Penjelasan Tentang Rubah Ceria', 'UD Lazuardi (Persero) Tbk', 9, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(736, 9798255755424, 'Masalalu yang Misterius Pustaka', 'Yayasan Rahayu Pangestu (Persero) Tbk', 10, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(737, 9794495173110, 'Kesabaran Alien Imut', 'PJ Anggriawan Tbk', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(738, 9797138735966, 'Ketulusan Peri', 'Fa Pratama Siregar (Persero) Tbk', 8, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(739, 9795017711667, 'terlanjur nyamanan, Jerapah Jahil', 'Perum Wastuti (Persero) Tbk', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(740, 9790748760700, 'Cahaya Terang Bakso Berkaki', 'PJ Halimah Yolanda', 9, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(741, 9784935478530, 'Inovasi Baru Puding Menari', 'CV Sitorus Utami', 9, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(742, 9788857486451, 'Semangat Ular Bertopi', 'CV Mandala Megantara Tbk', 9, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(743, 9781305070387, 'Kebijaksanaan Bintang', 'PJ Hutasoit Tbk', 9, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(744, 9791095904731, 'Hal yang Terlarang Timun Menari', 'Perum Ardianto Samosir Tbk', 8, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(745, 9796374673650, 'Misteri yang Tersembunyi Kura-Kura Ninja', 'Perum Adriansyah Tbk', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(746, 9790304210328, 'Kegagahan Laba-Laba Ninja', 'PD Suryatmi Hutasoit', 10, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(747, 9780916114947, 'Zaman Purba Sirsak Detektif', 'PD Nugroho', 9, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(748, 9795555030664, 'Antusiasme Robot Gila', 'Yayasan Permata', 2, 66, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(749, 9783578932256, 'Dunia Luar Angkasa Robot Gila', 'UD Fujiati Tbk', 10, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(750, 9781477493458, 'Kelembutan Ayam Super', 'PJ Wahyuni', 2, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(751, 9798777981240, 'Kolaborasi Hebat Keris Keramat', 'CV Sudiati (Persero) Tbk', 2, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(752, 9790600588930, 'Solidaritas Dunia Lain', 'Yayasan Santoso Fujiati', 2, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(753, 9794473002791, 'Ketulusan Serigala Karaoke', 'PJ Zulaika Melani', 10, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(754, 9791448317812, 'Kesaktian Kue Misterius', 'PT Siregar', 2, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(755, 9787378626032, 'Cinta Abadi, Harta Karun', 'UD Mayasari Hariyah Tbk', 9, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(756, 9797448793625, 'Impian yang Terwujud Pencarian', 'Perum Habibi Tamba', 2, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(757, 9783958865099, 'Apa itu? Zebra Bernyanyi', 'UD Maheswara (Persero) Tbk', 9, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(758, 9781614944096, 'Keadilan Ayam Super', 'Perum Hasanah (Persero) Tbk', 10, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(759, 9795922510812, 'Keajaiban yang Tak Terduga dalam Gajah Menari', 'PT Suwarno (Persero) Tbk', 9, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(760, 9784589569486, 'Kemajuan Raksasa', 'Fa Budiyanto (Persero) Tbk', 9, 46, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(761, 9796138283040, 'Apa itu? Cireng', 'Yayasan Melani Ramadan', 2, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(762, 9793829740707, 'Impian yang Terwujud Meteor', 'UD Samosir Andriani (Persero) Tbk', 2, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(763, 9798069943741, 'Kebijaksanaan Kapal Hantu', 'PJ Hassanah Padmasari', 10, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(764, 9795200493608, 'Mitos yang Aneh. Stroberi Penari', 'UD Novitasari', 9, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(765, 9795118728717, 'Sikap Tegas Pagi', 'PJ Uwais Mardhiyah', 2, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(766, 9798207605418, 'Hal Tak Terduga Segitiga Bermuda', 'CV Saputra Prasetyo', 2, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(767, 9780482333162, 'Impian yang Terwujud Kelelawar Balap', 'Yayasan Haryanti Pradana', 10, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(768, 9780929875927, 'Masalalu yang Misterius Kerajaan', 'CV Nashiruddin Puspasari (Persero) Tbk', 10, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(769, 9785798073412, 'Kehancuran untuk Meteor', 'PD Nasyiah (Persero) Tbk', 9, 62, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(770, 9798477795918, 'Kesetiaan Matoa Penari', 'UD Hidayat Puspasari', 10, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(771, 9791684385408, 'Berkelanjutan Jepi the Great', 'Perum Usada', 2, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(772, 9786799906204, 'Misteri yang Tersembunyi Semangka Menari', 'Perum Nasyidah Salahudin', 10, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(773, 9783767461253, 'Cahaya Terang Tomat Misterius', 'PJ Prasetya Puspasari', 2, 96, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(774, 9783819666247, 'Zaman Purba Samudra', 'Perum Nasyidah', 9, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(775, 9786752917599, 'Ketahanan Anjing Astronaut', 'Fa Haryanto', 2, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(776, 9798478483739, 'Sportivitas Senja', 'PJ Prastuti Tbk', 2, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(777, 9792126269300, 'Semangat Gajah Montok', 'Yayasan Utami', 10, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(778, 9792746527767, 'Kemenangan Gemilang Kometa', 'PT Pradana Palastri Tbk', 9, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(779, 9795601201635, 'Penuh Kasih Kerajaan', 'CV Prayoga (Persero) Tbk', 10, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(780, 9796019217881, 'Sikap Tegas Keris Keramat', 'CV Gunarto Marpaung', 10, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(781, 9781204885617, 'Apa itu? Jus Jingga', 'Perum Suryono Mardhiyah (Persero) Tbk', 9, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(782, 9781484702390, 'Penuh Kasih Pizza Berenang', 'Perum Purnawati Andriani Tbk', 10, 83, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(783, 9797820039228, 'Fakta Menarik Unicorn Pelukis', 'UD Maheswara (Persero) Tbk', 8, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(784, 9789149243127, 'Semua Tentang Kehidupan Labu Berkilau', 'Perum Hariyah', 9, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(785, 9789513763237, 'Kedermawanan Pencarian', 'Perum Najmudin', 9, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(786, 9784089545546, 'Selalu ceria bersama Kangkung Bercahaya', 'UD Rajasa Hidayat Tbk', 8, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(787, 9787764850935, 'Keajaiban Purba Indonesia', 'UD Yuniar Hastuti', 8, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(788, 9797999260980, 'Harapan Baru Sukun Misterius', 'PD Simanjuntak Tbk', 10, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(789, 9793131938908, 'Semangat Harimau Berkacamata', 'CV Nasyiah Usamah', 2, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(790, 9780458727124, 'Kolaborasi Hebat Tikus Penari', 'Fa Kuswandari', 2, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(791, 9782299294780, 'Kesejahteraan Vampir Vegetarian', 'Fa Sihotang', 2, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(792, 9791815053275, 'Inovasi Baru Bebek Detektif', 'PD Hardiansyah Yuliarti Tbk', 2, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(793, 9788404916776, 'Hidup Damai, Ayam Super', 'CV Farida Narpati', 10, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(794, 9789230743710, 'Kegigihan Oatmeals Menyanyi', 'Perum Prakasa Tbk', 9, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(795, 9783055605888, 'Kekompakan Markisa Ninja', 'Yayasan Maheswara Tbk', 2, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(796, 9784615766919, 'Zaman Purba Kota Tua', 'PD Prayoga Simbolon Tbk', 8, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(797, 9793541588809, 'Sebuah Perjalanan Panjang Coklat Penari', 'Perum Halimah', 8, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(798, 9786072008045, 'Kegigihan Rambutan Berkilau', 'Fa Gunarto Kusumo', 9, 47, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(799, 9787797249058, 'Kolaborasi Hebat Oatmeals Menyanyi', 'UD Suwarno', 2, 66, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(800, 9782799344664, 'Berkelanjutan Kura-Kura Ninja', 'Yayasan Mustofa', 2, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(801, 9797878415678, 'Solidaritas Anggur Detektif', 'Yayasan Mustofa', 2, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(802, 9799271332569, 'Hidup Damai, Jepi', 'PJ Kuswandari Melani', 9, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(803, 9790419383320, 'Gelap Gulitanya Sandwich Bertopi', 'PD Dabukke (Persero) Tbk', 8, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(804, 9792563660678, 'Ketahanan Jepi the Great', 'PJ Hariyah Tbk', 8, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(805, 9790084092824, 'Dinamika Bungkus Biskuit', 'PD Wahyudin Prasasta', 10, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(806, 9780831141684, 'Semua Tentang Kehidupan Labu Berkilau', 'Yayasan Haryanti Natsir Tbk', 2, 73, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(807, 9787541145254, 'Sisi Misterius dari Mentimun Ninja', 'Perum Utama (Persero) Tbk', 8, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(808, 9797812331286, 'Kesabaran Sosis Berjalan', 'PJ Marpaung Hartati', 8, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(809, 9794128565619, 'Kehancuran untuk Ghezia anisa', 'Perum Mardhiyah Tbk', 2, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(810, 9797137430152, 'Sosok yang Menawan, Semut BirahiOkta-Kon', 'Perum Hardiansyah (Persero) Tbk', 9, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(811, 9788747136114, 'Penuh Kasih Puding Menari', 'Perum Prastuti (Persero) Tbk', 10, 36, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(812, 9782180137646, 'Keadilan Penyihir', 'PT Farida', 2, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(813, 9781921474552, 'Sportivitas Anjing Astronaut', 'PT Hassanah (Persero) Tbk', 8, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(814, 9797474397682, 'Petualangan Seru blecki', 'Fa Utami Susanti Tbk', 2, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(815, 9792279148958, 'Hal yang Aneh dari Penyamun', 'Perum Lestari', 2, 59, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(816, 9787153670359, 'Kehancuran untuk Katak Himalayah', 'PD Wacana Prastuti Tbk', 2, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(817, 9787366230418, 'Masalalu yang Misterius Pasukan', 'PJ Puspita Lazuardi (Persero) Tbk', 8, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(818, 9790270952123, 'Cahaya Terang Durian Pembaca', 'Perum Uyainah Napitupulu Tbk', 9, 21, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(819, 9792695184530, 'Sebuah Perjalanan Panjang Puteri Duyung', 'Fa Utama', 9, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(820, 9795372869829, 'Kelembutan Tomat Misterius', 'PJ Pradipta Tbk', 10, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(821, 9788854112315, 'Kreativitas yang Tak Terbatas Puteri Duyung', 'Fa Widiastuti Yuniar', 10, 48, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(822, 9787159293415, 'Kegagahan Ghezia anisa', 'PD Prasetya (Persero) Tbk', 9, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(823, 9785179538103, 'Kehebatan yang Luar Biasa Raksasa', 'Perum Prastuti Hastuti Tbk', 2, 70, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(824, 9780937566060, 'Hal Tak Terduga Kelelawar Balap', 'PD Lestari Marpaung Tbk', 9, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(825, 9788585840334, 'Ajaibnya Dunia Apel Berkacamata', 'Perum Safitri (Persero) Tbk', 9, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(826, 9794376312003, 'Cahaya Terang Burung Raksasa', 'Perum Wijayanti Tbk', 2, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(827, 9781544630861, 'Gairah Paus Pemandu Wisata', 'Yayasan Irawan (Persero) Tbk', 9, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(828, 9789499387861, 'Legenda yang Melegenda ! Pepaya Super', 'Perum Nurdiyanti Tbk', 8, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(829, 9787076224172, 'Kejadian yang Seram: Meteor', 'Fa Kusmawati Napitupulu (Persero) Tbk', 2, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(830, 9796403945314, 'Semua Tentang Kehidupan Pasukan', 'CV Suartini', 10, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(831, 9795309485061, 'Kegembiraan mengetahui Kacang Super', 'Yayasan Latupono', 2, 21, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(832, 9797043174379, 'Inovasi Baru Naga Kue', 'Yayasan Sitorus', 10, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(833, 9796505055898, 'Hal yang Aneh dari Babi Kung Fu', 'Perum Marbun (Persero) Tbk', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(834, 9786069420454, 'Ketulusan Jerapah Jahil', 'PT Melani Wijayanti', 10, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(835, 9792164286048, 'Keajaiban Purba Monster Spageti', 'Perum Nababan', 8, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(836, 9791245384444, 'Dunia Luar Angkasa Lebah Pelaut', 'Fa Pratama Damanik Tbk', 2, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(837, 9781023039154, 'Sejarah Kelam Nasi Goreng Terbang', 'PJ Handayani Gunarto', 2, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(838, 9797200546032, 'Serba Serbi Unik Ikan Terbang', 'PJ Habibi (Persero) Tbk', 2, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(839, 9794927579534, 'Sejarah Kelam Naga', 'UD Farida Utama (Persero) Tbk', 10, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(840, 9781276341240, 'Bersinar Terang Paus Pemandu Wisata', 'Fa Nugroho Simanjuntak', 2, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(841, 9794798304327, 'Kemajuan Aku dan Kamu', 'PD Halimah Setiawan', 9, 5, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(842, 9795819086635, 'Mitos yang Aneh. Dunia Lain', 'CV Tamba Aryani (Persero) Tbk', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(843, 9789860197860, 'Kebahagiaan saat melihat Durian Pembaca', 'PJ Hutapea Mandasari (Persero) Tbk', 8, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(844, 9786176732303, 'Kelembutan Pisang Pahlawan', 'PD Kusmawati', 10, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(845, 9799861485873, 'Cerita yang Menakjubkan dari Jia Cantik', 'UD Samosir', 9, 22, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(846, 9790689600141, 'Cerita yang Menakjubkan dari Puding Menari', 'PJ Wijaya Tbk', 8, 86, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(847, 9788253846453, 'Kedermawanan Kangkung Bercahaya', 'Yayasan Suryatmi Lailasari Tbk', 8, 29, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(848, 9789654281737, 'Petualangan Seru Bawang Putih Pemberani', 'PD Rajata Melani', 8, 26, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(849, 9791469873021, 'Kekuatan Pulau', 'Yayasan Purnawati', 10, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(850, 9782706030970, 'Kekuatan Jeruk Penyair', 'CV Mandasari Tbk', 8, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(851, 9786065256996, 'Impian yang Terwujud Dunia Lain', 'PT Anggriawan (Persero) Tbk', 2, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(852, 9790446957716, 'Kesabaran Naga', 'Fa Puspasari', 10, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(853, 9797446607856, 'Sebuah Perjalanan Panjang Hiu Pesta', 'UD Anggriawan', 10, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(854, 9793253853097, 'Serba Serbi Unik Kucing Pemberontak', 'UD Oktaviani', 8, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(855, 9786297978956, 'Kesabaran Laba-Laba Ninja', 'UD Mahendra (Persero) Tbk', 9, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(856, 9785621605735, 'Masalalu yang Misterius Hantu', 'UD Oktaviani Tbk', 2, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(857, 9786564456026, 'Dinamika Puding Menari', 'Yayasan Haryanti (Persero) Tbk', 2, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(858, 9789990139853, 'Optimisme Naga Kue', 'PT Manullang', 10, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(859, 9785478429768, 'Mitologi Kuno : Peri', 'Fa Purnawati', 8, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(860, 9786944693195, 'Toleransi Bungkus Biskuit', 'PT Halim', 2, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(861, 9792128572170, 'Ketangguhan Gajah Menari', 'Yayasan Firmansyah', 8, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(862, 9797173107254, 'Mengenal Hiu Pesta', 'PD Waskita Yuliarti', 2, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(863, 9790447060187, 'Momen yang Menegangkan pada Paus Pemandu Wisata', 'PT Rajata Nababan Tbk', 9, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(864, 9785619843170, 'Solidaritas Pepaya Super', 'Perum Nasyidah Situmorang (Persero) Tbk', 10, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(865, 9789888818006, 'Ketahanan Buah Naga Jahil', 'PT Latupono', 8, 8, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(866, 9780868785738, 'Misteri yang Tersembunyi Beruang Berseluncur', 'PJ Pratiwi Tbk', 10, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(867, 9796695325153, 'Kemajuan Kapal Hantu', 'PD Kuswandari Tbk', 2, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(868, 9789674384470, 'Tempat Aman Bima Sakti', 'PD Nainggolan', 10, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(869, 9795868529220, 'Kehidupan Masa Depan Jambu Berbicara', 'PD Fujiati Hartati (Persero) Tbk', 9, 82, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(870, 9790411305351, 'Antusiasme Bintang', 'PT Hutagalung', 10, 79, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(871, 9799737953437, 'Hal yang Terlarang Cacing Pemberani', 'Fa Utami Tamba', 2, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(872, 9780375693946, 'rukunannya hidup Senja', 'CV Laksita (Persero) Tbk', 2, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(873, 9785569813810, 'Misteri yang Mendebarkan : Senja', 'PD Hastuti', 8, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(874, 9784259714734, 'Kejadian yang Seram: Babi Kung Fu', 'PJ Sirait (Persero) Tbk', 9, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(875, 9780387873589, 'Keajaiban yang Tak Terduga dalam Monster Spageti', 'PJ Melani Utama Tbk', 10, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(876, 9796393965330, 'Hal yang Aneh dari Kangkung Bercahaya', 'CV Hasanah Tbk', 9, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(877, 9787936835333, 'Kisah Fantastis Harimau Berkacamata', 'PJ Sitorus Ardianto Tbk', 2, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(878, 9786098125474, 'Kejadian yang Seram: Monster Spageti', 'PD Astuti', 9, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(879, 9792869116404, 'Kemandirian Jelly Bercahaya', 'Yayasan Widiastuti Tamba', 2, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(880, 9794492026167, 'Kegagahan Ubi Jalar Jahil', 'PJ Lestari Wijayanti', 9, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(881, 9791849736601, 'Momen yang Menegangkan pada Jagung Terbang', 'PJ Uyainah Prastuti Tbk', 9, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(882, 9799870746880, 'Keabadian yang Abadi Katak Disco', 'PT Siregar Budiyanto Tbk', 8, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(883, 9792271506787, 'Keteguhan Robot Gila', 'CV Mulyani Kusumo Tbk', 9, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(884, 9793533991334, 'Hidup Damai, Cireng', 'PD Kurniawan Ardianto', 8, 2, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(885, 9797875300151, 'Kesejahteraan Sukun Misterius', 'PD Haryanti Mandasari', 9, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(886, 9793722965115, 'Kehebatan yang Luar Biasa Kiwi Penyair', 'PT Simanjuntak', 10, 64, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(887, 9790275354397, 'Sosok yang Menawan,  Jefy Okta', 'CV Andriani Budiyanto Tbk', 9, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(888, 9781709367571, 'Optimisme Kumbang Emas', 'PJ Rahmawati Rahayu', 8, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(889, 9796175512011, 'Antusiasme Timun Menari', 'Perum Melani Sirait Tbk', 2, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(890, 9794638337386, 'Penampilan yang Memukau Dimensi', 'Yayasan Hasanah', 8, 6, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(891, 9783037086841, 'Kekuatan Pejuang', 'CV Suryono Tamba', 10, 31, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(892, 9786311388228, 'Serba Serbi Unik Katak Himalayah', 'Perum Purwanti', 10, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(893, 9784642597111, 'Kebijaksanaan Monster Spageti', 'PD Widiastuti Oktaviani', 10, 24, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(894, 9780004453910, 'Sosok yang Menawan, Ikan Terbang', 'Perum Prabowo', 9, 58, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(895, 9787954714818, 'Penjelasan Tentang Jeruk Penyair', 'PD Hutasoit Uyainah', 8, 59, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(896, 9790105177073, 'Kelembutan Zebra Bernyanyi', 'Perum Lazuardi', 2, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(897, 9783135812946, 'Kesabaran Kelelawar Balap', 'Fa Kusumo Kuswoyo', 10, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(898, 9781005746278, 'Kegembiraan mengetahui Kadal Terbang', 'Yayasan Salahudin (Persero) Tbk', 8, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(899, 9798497579185, 'Masalalu yang Misterius Uranus', 'PD Rahayu Yuniar (Persero) Tbk', 8, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(900, 9792392512711, 'Sang Legendaris Lemur Pembaca', 'Fa Safitri Tbk', 8, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(901, 9787588487171, 'Penampilan yang Memukau Katak Himalayah', 'CV Narpati Tbk', 10, 84, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(902, 9782806276582, 'Kelembutan Merpati Post', 'PT Ardianto Tbk', 9, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(903, 9794622698271, 'Penuh Kasih Pagi', 'UD Astuti (Persero) Tbk', 8, 67, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(904, 9790038168988, 'Petualangan Seru Aku dan Kamu', 'UD Nasyiah', 10, 93, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(905, 9796166258263, 'Mitologi Kuno : Puteri Duyung', 'UD Megantara (Persero) Tbk', 8, 40, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(906, 9783968925011, 'Sejarah yang Terlupakan Semangka Menari', 'PD Riyanti Pranowo', 9, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(907, 9791959455225, 'Kehidupan Masa Depan Segitiga Bermuda', 'Fa Fujiati Tbk', 2, 83, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(908, 9790999074052, 'Tempat Aman Jepi the Great', 'Perum Novitasari', 10, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(909, 9790166702009, 'Mengenal Sirsak Detektif', 'UD Thamrin', 2, 3, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(910, 9783004621648, 'Kehebatan yang Luar Biasa Beruang Berseluncur', 'UD Fujiati', 8, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(911, 9785233575204, 'Impian yang Terwujud Brokoli Pembaca', 'UD Nashiruddin Lailasari Tbk', 8, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(912, 9792272121392, 'Ajaibnya Dunia Gajah Menari', 'PJ Hakim Tbk', 9, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(913, 9795115741924, 'Cerita yang Menakjubkan dari Okta', 'PD Maheswara Riyanti (Persero) Tbk', 9, 12, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(914, 9786460388667, 'Sebuah Perjalanan Panjang Soda Bercahaya', 'Fa Andriani Mustofa', 9, 17, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(915, 9788460283911, 'Jejak yang Hilang Penguin Rocker', 'Fa Yuliarti Riyanti', 9, 90, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(916, 9796528489366, 'Kehebatan yang Luar Biasa Pencarian', 'Perum Uwais Yuliarti Tbk', 8, 15, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(917, 9787211013371, 'Impian yang Terwujud Sirsak Detektif', 'PD Hutasoit Saragih', 2, 94, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(918, 9780372028475, 'Kesaktian Anggur Detektif', 'PJ Hassanah Pudjiastuti (Persero) Tbk', 10, 28, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(919, 9795292484720, 'Sikap Tegas Buah Naga Jahil', 'PD Zulaika (Persero) Tbk', 2, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(920, 9788616776427, 'Mengenal Laut', 'CV Iswahyudi', 8, 4, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(921, 9794919927565, 'Toleransi Durian Pembaca', 'CV Puspita', 9, 27, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(922, 9787932830868, 'Cahaya Terang Gajah Menari', 'PT Hutagalung', 2, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(923, 9799624364025, 'Sang Legendaris Penyihir', 'Yayasan Hariyah', 9, 52, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(924, 9780602747916, 'Mitologi Kuno : Harta Karun', 'PJ Permadi Purwanti (Persero) Tbk', 9, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(925, 9781484045633, 'Kisah Fantastis Meteor', 'PJ Permadi Saefullah', 10, 74, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(926, 9794514699492, 'Pertarungan Epik! Dinosaurus DJ', 'Yayasan Hariyah Sirait (Persero) Tbk', 10, 99, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(927, 9785811241170, 'Berkelanjutan Gunung Berapi', 'Fa Haryanto Ardianto', 8, 75, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(928, 9788448603618, 'Sejarah Kelam Pizza Berenang', 'Perum Narpati Padmasari (Persero) Tbk', 8, 43, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(929, 9790069815707, 'Zaman Purba Durian Pembaca', 'Yayasan Rahimah Mansur Tbk', 8, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(930, 9794400867912, 'rukunannya hidup Timun Menari', 'PJ Permadi Wijaya', 2, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(931, 9786210753103, 'Kisah Fantastis Putri', 'UD Tarihoran (Persero) Tbk', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(932, 9798102760922, 'Penuh Kasih Vampir Vegetarian', 'CV Adriansyah Wastuti Tbk', 8, 23, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(933, 9783772763946, 'Misteri yang Mendebarkan : Kebenaran', 'UD Gunawan (Persero) Tbk', 10, 18, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(934, 9793672450778, 'Kesaktian Labu Berkilau', 'PT Kusumo', 10, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(935, 9795501577779, 'Keadilan Apel Berkacamata', 'Fa Gunawan Tbk', 2, 69, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(936, 9789447214508, 'Kekuatan Salak Pahlawan', 'UD Megantara Tbk', 9, 72, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(937, 9789827198381, 'Cahaya Terang Serigala Karaoke', 'Yayasan Dabukke', 9, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(938, 9789364713221, 'Apa itu? Katak Himalayah', 'PJ Wahyudin (Persero) Tbk', 10, 45, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(939, 9795743906030, 'terlanjur nyamanan, Harimau Berkacamata', 'UD Nuraini Tbk', 2, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(940, 9794716394904, 'Keberanian yang Luar Biasa Bima Sakti', 'PT Hutapea', 8, 30, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(941, 9797945338763, 'Kesejahteraan Bintang', 'Fa Mulyani', 9, 1, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(942, 9784140969496, 'Kebijaksanaan Pencarian', 'CV Aryani Wahyudin', 9, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(943, 9790577767475, 'Tempat Aman Buah Naga Jahil', 'Perum Nuraini Sihotang', 2, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(944, 9794852172800, 'Kemandirian Senja', 'UD Utami (Persero) Tbk', 10, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(945, 9790280094158, 'Sisi Misterius dari Sandwich Bertopi', 'PJ Kuswoyo Safitri Tbk', 10, 92, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(946, 9795724482478, 'Gelap Gulitanya Zebra Bernyanyi', 'PD Lestari', 9, 51, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(947, 9786601056271, 'Masalalu yang Misterius Timun Menari', 'Yayasan Wahyuni', 10, 61, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(948, 9783556241615, 'Kebijaksanaan Soda Bercahaya', 'CV Pertiwi', 10, 71, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(949, 9789578861169, 'Apa itu? Sandwich Bertopi', 'CV Safitri (Persero) Tbk', 8, 91, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(950, 9793329339302, 'Kehebatan yang Luar Biasa Semut BirahiOkta-Kon', 'CV Gunarto Uyainah', 10, 16, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(951, 9786024020071, 'Cahaya Terang Uranus', 'UD Saefullah Wulandari', 9, 50, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(952, 9799287222939, 'Masalalu yang Misterius jepi dan jia', 'PD Prakasa', 8, 85, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(953, 9781639340545, 'Kekompakan Labu Berkilau', 'Fa Sudiati Tbk', 2, 80, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(954, 9785332239496, 'Sportivitas Penyihir', 'Yayasan Wibowo Hardiansyah', 8, 36, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(955, 9780473400781, 'Kisah Fantastis Puding Menari', 'CV Utami Salahudin (Persero) Tbk', 9, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(956, 9782152260556, 'Momen yang Menegangkan pada Belalang Penyair', 'PT Dabukke Waskita Tbk', 8, 76, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(957, 9794006118609, 'Kelembutan Sirsak Detektif', 'UD Maryati Simanjuntak (Persero) Tbk', 8, 41, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(958, 9793213425418, 'Semua Tentang Kehidupan ambatukam', 'Perum Sihombing Farida Tbk', 2, 19, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(959, 9796098114583, 'Keabadian yang Abadi Aku dan Kamu', 'Fa Tampubolon Palastri (Persero) Tbk', 9, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(960, 9794558171954, 'Pertarungan Epik! Peri', 'PD Hutagalung (Persero) Tbk', 10, 13, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(961, 9793454314182, 'Dunia Luar Angkasa Siang Malam', 'Yayasan Yuliarti Prakasa', 9, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(962, 9785103187339, 'Keberanian yang Luar Biasa Jelly Bercahaya', 'PD Samosir Oktaviani (Persero) Tbk', 9, 11, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(963, 9786255203021, 'Keajaiban Purba Penguin Rocker', 'Perum Rahmawati Maheswara Tbk', 10, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(964, 9786268013709, 'Momen yang Menegangkan pada Bunglon Kocak', 'PD Agustina', 2, 89, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(965, 9799012450781, 'Kesaktian Semut BirahiOkta-Kon', 'PJ Wacana Prastuti', 8, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(966, 9785860384231, 'Kreativitas yang Tak Terbatas Buah Naga Jahil', 'PD Lestari Sihombing Tbk', 2, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(967, 9791378286776, 'Toleransi Naga', 'PD Kuswoyo', 2, 54, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(968, 9784146621756, 'Berkelanjutan Pagi', 'Fa Pradana (Persero) Tbk', 8, 38, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(969, 9798323682621, 'Kebijaksanaan Merpati Post', 'Fa Sihombing Tbk', 9, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(970, 9798826423738, 'Tempat Aman Kelengkeng Berkacamata', 'Perum Maheswara Novitasari (Persero) Tbk', 9, 81, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(971, 9784697406949, 'Optimisme Pasukan', 'Fa Setiawan Tbk', 2, 88, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(972, 9787237749315, 'Keteguhan Laut Pasifik', 'PD Anggriawan', 9, 66, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(973, 9794829661092, 'Ketangguhan Markisa Ninja', 'Yayasan Puspasari', 8, 68, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(974, 9786756875178, 'Kehancuran untuk Rambutan Berkilau', 'Yayasan Prastuti', 8, 32, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(975, 9787404260254, 'Sejarah yang Terlupakan Mentimun Ninja', 'PD Mardhiyah Hartati Tbk', 9, 60, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(976, 9782691907479, 'Kesederhanaan Dimensi', 'Fa Thamrin Yuliarti Tbk', 8, 42, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(977, 9785672847030, 'Kemajuan Bebek Detektif', 'PD Halimah Irawan (Persero) Tbk', 10, 34, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(978, 9798259474659, 'Sosok yang Menawan, Lemur Pembaca', 'Fa Lailasari Wibowo', 9, 77, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(979, 9783322349576, 'Harapan Baru Perang', 'PJ Suryatmi', 2, 53, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(980, 9783702599737, 'Kesabaran Jerapah Jahil', 'UD Budiyanto (Persero) Tbk', 2, 49, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(981, 9787183150531, 'Kesabaran Brokoli Pembaca', 'PT Pradana Wibisono Tbk', 8, 100, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(982, 9789318697775, 'Kehidupan Masa Depan Matoa Penari', 'Yayasan Melani Narpati', 10, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(983, 9798067127549, 'Hidup Damai, Rambutan Berkilau', 'PJ Nashiruddin Tbk', 9, 98, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(984, 9780103299167, 'Selalu ceria bersama Kota Tua', 'CV Nasyidah', 8, 97, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(985, 9790912244753, 'Serba Serbi Unik Mangga Berlari', 'PJ Mardhiyah Usada (Persero) Tbk', 2, 57, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(986, 9796104931913, 'Sejarah Kelam Kecoak Pahlawan', 'PT Hakim (Persero) Tbk', 9, 78, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(987, 9788547009359, 'Penampilan yang Memukau Katak Disco', 'Perum Hassanah Suryatmi Tbk', 8, 33, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(988, 9790842542738, 'Sebuah Perjalanan Panjang Kadal Terbang', 'Fa Prastuti Utami (Persero) Tbk', 2, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(989, 9795934601898, 'Cinta Abadi, Jawa', 'PT Utami Hutasoit Tbk', 8, 9, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(990, 9791045188471, 'Kekokohan Laut Pasifik', 'Perum Sirait (Persero) Tbk', 8, 7, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(991, 9784997115671, 'Bersinar Terang Dimensi', 'Fa Andriani', 10, 37, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(992, 9792804091568, 'Ketabahan Kacang Super', 'PJ Saefullah (Persero) Tbk', 8, 20, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(993, 9788498372519, 'Keadilan Sukun Misterius', 'UD Kuswoyo Riyanti Tbk', 2, 63, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(994, 9793333483466, 'Kebijaksanaan Jagung Terbang', 'CV Maheswara', 10, 95, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(995, 9792853893052, 'Misteri yang Mendebarkan : Harimau Berkacamata', 'UD Wastuti', 8, 35, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(996, 9781287027898, 'Semangat Stroberi Penari', 'PD Saptono Mardhiyah', 2, 87, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(997, 9785066022609, 'rukunannya hidup Badai', 'CV Kusmawati', 2, 39, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(998, 9781871679908, 'Hal Tak Terduga Belalang Penyair', 'Fa Hartati Wijayanti Tbk', 10, 55, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(999, 9793550467355, 'Dunia Luar Angkasa Samudra', 'Yayasan Wahyuni Nainggolan (Persero) Tbk', 8, 10, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46'),
(1000, 9783285483553, 'Sportivitas Semut BirahiOkta-Kon', 'Fa Halimah', 10, 65, 'buku.jpeg', '2024-07-28 00:31:46', '2024-07-28 00:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` bigint(20) UNSIGNED NOT NULL,
  `nominal_denda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `nominal_denda`, `created_at`, `updated_at`) VALUES
(2, '3000', '2023-01-18 08:09:24', '2023-01-18 08:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `detailpinjam`
--

CREATE TABLE `detailpinjam` (
  `id` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detailpinjam`
--

INSERT INTO `detailpinjam` (`id`, `updated_at`, `created_at`) VALUES
('pinjam_66a695f5a26471.51903931', '2024-07-29 02:03:17', '2024-07-29 02:03:17'),
('pinjam_66a69637a6ebe0.30605518', '2024-07-29 02:04:23', '2024-07-29 02:04:23'),
('pinjam_66a696912c9343.64242042', '2024-07-29 02:05:53', '2024-07-29 02:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `jenis_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `jenis_kelas`, `created_at`, `updated_at`) VALUES
(6, 'kelas 4 B', '2022-12-02 07:52:28', '2023-01-19 17:12:16'),
(7, 'kelas 4 A', '2022-12-02 09:07:58', '2023-01-19 17:12:06'),
(8, 'kelas 4 C', '2023-01-19 17:12:29', '2023-01-19 17:12:29'),
(9, 'kelas 4 D', '2023-01-19 17:12:57', '2023-01-19 17:12:57'),
(10, 'kelas 5 A', '2023-01-19 17:13:08', '2023-01-19 17:13:08'),
(11, 'kelas 5 B', '2023-01-19 17:13:19', '2023-01-19 17:13:19'),
(12, 'Kelas 5 C', '2023-01-19 17:13:28', '2023-01-19 17:13:28'),
(13, 'Kelas 5 D', '2023-01-19 17:13:38', '2023-01-19 17:13:38'),
(14, 'kelas 6 A', '2023-01-19 17:14:13', '2023-01-19 17:14:13'),
(15, 'kelas 6 B', '2023-01-19 17:14:30', '2023-01-19 17:14:30'),
(16, 'Kelas 6 C', '2023-01-19 17:14:39', '2023-01-19 17:14:39'),
(17, 'kelas 6 D', '2023-01-19 17:14:48', '2023-01-19 17:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `kepala_sekolah`
--

CREATE TABLE `kepala_sekolah` (
  `id_kepsek` bigint(20) UNSIGNED NOT NULL,
  `nip_kepsek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepsek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin_kepsek` enum('p','l') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_kepsek` date NOT NULL,
  `foto_kepsek` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kepala_sekolah`
--

INSERT INTO `kepala_sekolah` (`id_kepsek`, `nip_kepsek`, `nama_kepsek`, `jenis_kelamin_kepsek`, `tgl_lahir_kepsek`, `foto_kepsek`, `created_at`, `updated_at`) VALUES
(1, '12726377', 'rodiyahh', 'l', '2002-10-06', '086593900_1553668873-LISA_BLACKPINK_1.jpg', '2023-01-20 18:32:55', '2024-07-25 21:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_12_02_051558_create_siswa_table', 1),
(5, '2022_12_02_070552_create_kelas_table', 1),
(6, '2022_12_03_214202_create_rak_table', 1),
(7, '2022_12_04_135623_create_buku_table', 1),
(8, '2022_12_06_005647_create_pinjambuku_table', 1),
(9, '2022_12_06_121632_create_riwayat_pinjam_table', 1),
(10, '2023_01_18_000007_create_denda_table', 1),
(11, '2023_01_18_184407_create_kepala_sekolah_table', 1),
(21, '2024_07_27_122719_create_time', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjambuku`
--

CREATE TABLE `pinjambuku` (
  `id_pinjam` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `detailid` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(20) NOT NULL,
  `jenis_rak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`id_rak`, `jenis_rak`, `created_at`, `updated_at`) VALUES
(2, 'Buku IPA', '2022-12-04 04:46:20', '2023-01-19 17:26:58'),
(8, 'Cerita Rakyat', '2023-01-19 17:27:25', '2023-01-19 17:27:25'),
(9, 'Bahasa', '2023-01-19 17:27:47', '2023-01-19 17:27:47'),
(10, 'Majalah', '2023-01-19 17:28:02', '2023-01-19 17:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pinjam`
--

CREATE TABLE `riwayat_pinjam` (
  `id_riwayat` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` bigint(20) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idpinjam` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_pinjam`
--

INSERT INTO `riwayat_pinjam` (`id_riwayat`, `id_siswa`, `id_buku`, `tanggal_kembali`, `denda`, `status`, `created_at`, `updated_at`, `idpinjam`) VALUES
(37, 2, 3, '2024-08-10', 0, 'selesai', '2024-07-28 19:03:17', '2024-07-28 19:06:48', 41),
(38, 2, 4, '2024-08-10', 0, 'selesai', '2024-07-28 19:03:17', '2024-07-28 19:07:52', 42),
(39, 2, 11, '2024-08-10', 0, 'selesai', '2024-07-28 19:03:17', '2024-07-28 19:07:55', 43),
(40, 2, 12, '2024-08-10', 0, 'selesai', '2024-07-28 19:03:17', '2024-07-28 19:07:58', 44),
(41, 2, 3, '2024-08-10', 0, 'selesai', '2024-07-28 19:04:23', '2024-07-28 19:08:00', 45),
(42, 2, 4, '2024-08-10', 0, 'selesai', '2024-07-28 19:04:23', '2024-07-28 19:08:03', 46),
(43, 2, 11, '2024-08-10', 0, 'selesai', '2024-07-28 19:04:23', '2024-07-28 19:08:06', 47),
(44, 2, 12, '2024-08-10', 0, 'selesai', '2024-07-28 19:04:23', '2024-07-28 19:08:09', 48),
(45, 2, 3, '2024-08-10', 0, 'selesai', '2024-07-28 19:05:53', '2024-07-28 19:08:12', 49);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `nis` bigint(20) NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('p','l') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelas` int(11) NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `barcode`, `nama_siswa`, `jenis_kelamin`, `tgl_lahir`, `kelas`, `foto`, `created_at`, `updated_at`) VALUES
(1, 1289302329, '8992759170580', 'Al Huda', 'l', '1999-01-22', 7, 'WhatsApp Image 2022-09-03 at 05.39.02 (2).jpeg', '2022-12-04 04:55:23', '2023-01-19 17:20:49'),
(2, 3537347353, '901813132', 'Ade Estyana', 'p', '2023-01-20', 6, 'WhatsApp Image 2022-09-09 at 19.37.04.jpeg', '2023-01-19 17:16:36', '2023-01-19 17:18:22'),
(3, 8486435433, '206616610', 'Ardiansyah', 'l', '2023-01-20', 8, 'WhatsApp Image 2022-09-11 at 20.59.57 (1).jpeg', '2023-01-19 17:17:15', '2023-01-19 17:17:15'),
(4, 6324252232, '762096216', 'Sayfudin', 'l', '2023-01-20', 9, 'WhatsApp Image 2022-09-11 at 20.59.59 (1).jpeg', '2023-01-19 17:18:12', '2023-01-19 17:18:12'),
(5, 9865485433, '300779917', 'Indah Anggraini', 'p', '2023-01-20', 10, 'WhatsApp Image 2022-09-09 at 21.20.14.jpeg', '2023-01-19 17:19:07', '2023-01-19 17:19:07'),
(6, 332525553, '61934586', 'M Bastian', 'l', '2023-01-20', 11, 'WhatsApp Image 2022-09-09 at 19.29.24.jpeg', '2023-01-19 17:19:44', '2023-01-19 17:19:44'),
(7, 565655433, '141512814', 'Agung Kurniawan', 'l', '2023-01-20', 12, 'WhatsApp Image 2022-09-03 at 05.39.01 (2).jpeg', '2023-01-19 17:20:26', '2023-01-19 17:20:26'),
(8, 865853345, '169026197', 'Fuzan', 'l', '2023-01-20', 13, 'WhatsApp Image 2022-09-03 at 05.39.01 (3).jpeg', '2023-01-19 17:21:52', '2023-01-19 17:21:52'),
(9, 547464563, '63586196', 'Hafiz', 'l', '2023-01-20', 14, 'WhatsApp Image 2022-09-03 at 05.39.01.jpeg', '2023-01-19 17:22:33', '2023-01-19 17:22:33'),
(10, 5642326711, '521544757', 'Putri', 'p', '2023-01-20', 16, '', '2023-01-19 17:23:18', '2023-01-19 17:23:18'),
(11, 211355355, '698386875', 'Permata', 'p', '2023-01-20', 15, '', '2023-01-19 17:23:56', '2023-01-19 17:23:56'),
(12, 2228887744, '749302924', 'Roby', 'l', '2023-01-20', 17, '', '2023-01-19 17:24:19', '2023-01-19 17:24:19'),
(13, 12312312412412, '958687321', 'jepiokta', 'l', '2024-07-04', 14, '', '2024-07-26 22:10:09', '2024-07-26 22:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `name`, `telp`, `email_verified_at`, `password`, `type`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Jefyokta', '082255267294', NULL, '$2y$10$gKWOQbPqwEwGd.FTsCMcru.bTFOJlueL0Usk3cIpzKxQ1I3VEG9Pi', 'Petugas', 'Photo on 14-12-23 at 10.49.jpeg', NULL, '2022-12-01 07:34:32', '2024-07-24 17:15:34'),
(3, '12345678', 'Jefyoktamipa', '08117807970', NULL, '$2y$10$sQFwF0wX3oTQsVCTqQkPQuUvfrUSrqvGgugi5vHSdsQi9W3OQKWhW', 'Kepsek', '086593900_1553668873-LISA_BLACKPINK_1.jpg', NULL, '2023-01-09 09:55:33', '2024-07-25 19:19:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `rak` (`rak`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `detailpinjam`
--
ALTER TABLE `detailpinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `pinjambuku_ibfk_1` (`id_siswa`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `detailid` (`detailid`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indexes for table `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `idpinjam` (`idpinjam`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `kelas` (`kelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  MODIFY `id_kepsek` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  MODIFY `id_pinjam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  MODIFY `id_riwayat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`rak`) REFERENCES `rak` (`id_rak`);

--
-- Constraints for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  ADD CONSTRAINT `pinjambuku_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjambuku_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjambuku_ibfk_3` FOREIGN KEY (`detailid`) REFERENCES `detailpinjam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
