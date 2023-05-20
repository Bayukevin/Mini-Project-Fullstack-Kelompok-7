-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 07:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seed`
--

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id_place` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `regency` varchar(100) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` varchar(100) NOT NULL,
  `schedule` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id_place`, `name`, `regency`, `url_image`, `description`, `price`, `schedule`, `category`, `slug`) VALUES
(19, 'Gunung Bromo', 'Kabupaten Probolinggo', 'https://i.postimg.cc/Qt9R5W4n/1.jpg', 'Gunung Bromo adalah salah satu gunung api yang masih aktif di Indonesia. Gunung yang memiliki ketinggian 2.392 meter di atas permukaan laut ini merupakan destinasi andalan Jawa Timur. Gunung Bromo berdiri gagah dikelilingi kaldera atau lautan pasir seluas 10 kilometer persegi.', 'Rp. 35.000', '24 Jam', 'Wisata Alam', 'slug-1'),
(20, 'Kota Batu', 'Kota Batu', 'https://i.postimg.cc/hPqHzv9p/2.jpg', 'Kota Batu adalah sebuah kota di Provinsi Jawa Timur, Indonesia terbentuk pada tahun 2001 sebagai pecahan dari Kabupaten Malang. Sebelumnya wilayah Kota Batu merupakan bagian dari Sub Satuan Wilayah Pengembangan 1 (SSWP 1) Malang Utara.', 'Rp. 25.000', '24 Jam', 'Wisata Alam', 'slug-2'),
(21, 'Alun-Alun Kota Malang', 'Kota Malang', 'https://i.postimg.cc/5tGrx245/3.jpg', 'Alun-Alun Kota Malang adalah salah satu taman kota yang berada di Kota Malang. Wisata ini merupakan tempat wisata yang ramai akan wisatawan pada hari hari biasa maupun pada hari libur. Selain itu, tempat ini memberikan suasana yang dapat mengatasi kejenuhan akan aktivitas kita sehari-hari.', 'Rp. 10.000', '24 Jam', 'Taman Bermain', 'slug-3'),
(22, 'Taman Rekreasi Selecta', 'Kota Batu', 'https://i.postimg.cc/kGPhbYtB/4.jpg', 'Taman Rekreasi Selecta adalah salah satu destinasi wisata yang terletak di di Desa Tulungrejo, Kabupaten Bumiaji, sekitar 13 km dari kota. Selecta adalah obyek wisata yang menawarkan kejam udara dengan lebar sekitar 20ha. Tempat ini memiliki fasilitas kolam renang, bunga, hotel, restoran, dan taman bermain.', 'Rp. 40.000', '06.00 - 17.00', 'Taman Rekreasi', 'slug-4'),
(23, 'Air Terjun Coban Rais', 'Kecamatan Pujon', 'https://i.postimg.cc/1X07c0pM/5.jpg', 'Deskripsi. Coban Rais berada di lereng sebelah Timur Gunung Panderman, dengan aliran air terjun yang cukup deras. Di sisi air terjunnya banyak ditumbuhi pohon dan bebatuan besar. Sebelum sampai di air terjun, banyak aliran sungai kecil yang harus dilewati terlebih dahulu selain jalan setapak yang cukup licin.', 'Rp. 15.000', '07.00 - 15.00', 'Wisata Alam', 'slug-5'),
(24, 'Desa Jodipan dan Desa Tridi', 'Kecamatan Blimbing', 'https://i.postimg.cc/J7jFL89J/6.jpg', 'Description 6', 'Price 6', 'Schedule 6', 'Category 6', 'slug-6'),
(25, 'Taman Langit Bukit Cinta', 'Kecamatan Blimbing', 'https://i.postimg.cc/HkkvXyj4/7.jpg', 'Taman Langit berada di kawasan Gunung Banyak dengan ketinggian sekitar 1.315 meter diatas permukaan laut. Lokasi nya tidak terlalu jauh dari tempat wisata Paralayang Batu yang sudah sangat terkenal di kalangan wisatawan. Tempat ini sangat cocok untuk Anda yang ingin menikmati keindahan alam dan senang berfoto.', 'Rp. 10.000', '07.00 - 21.00', 'Wisata Alam', 'slug-7'),
(26, 'Air Terjun Tumpak Sewu', 'Kabupaten Lumajang', 'https://i.postimg.cc/pTzsRQ1x/8.jpg', 'Air Terjun Tumpak Sewu atau disebut juga Coban Sewu adalah sebuah air terjun berketinggian sekitar 120 meter. Air terjun ini berbatasan dengan Kabupaten Lumajang dan Kabupaten Malang, Provinsi Jawa Timur. Air Terjun Tumpak Sewu memiliki aliran air yang menyerupai tirai sehingga termasuk dalam tipe air terjun Tiered. Lokasi Air Terjun Tumpak Sewu ada di dalam sebuah lembah yang curam memanjang dengan elevasi 500 meter di atas permukaan air laut.', 'Rp. 10.000', '07.00 - 17.00', 'Wisata Alam', 'slug-8'),
(27, 'Paralayang', 'Kota Batu', 'https://i.postimg.cc/Dz8cwvB5/paralayang-batu-malang-wisata.jpg', 'Paralayang adalah nama untuk Puncak Gunung Banyak, Kota Batu yang memiliki ketinggian 1.326 mdpl. Tempat ini pada mulanya merupakan tempat yang dijadikan sebagai landasan take-off atlet paralayang. Lokasi ini dijadikan pusat latihan dan event paralayang se-Malang Raya. Diresmikan pada tahun 2000, bersamaan dengan diadakannya event PON VI Jatim yang ditandai dengan penandatanganan prasasti oleh Ketua Umum Federasi Aero Sport Indonesia Marsekal TNI Hanafi Asnan.', 'Rp. 20.000', '08.00 - 17.00', 'Wisata Alam', 'slug-9'),
(31, 'Kirana', 'MALAM', 'https://lh5.googleusercontent.com/p/AF1QipPO50Npo9rYVN46LXWdrfFfUAtVypvQq8rP60rZ=w548-h318-n-k-no', 'Malang is a city in East Java, Indonesia. Prized by the Dutch for its mild highland climate, the city retains much of its colonial architecture. The Balai Kota building blends Indonesian and Dutch styles, and grand mansions line the main boulevard, Jalan Besar Ijen. North of the city, the Buddhist-Hindu Singosari Temple ruins are a remnant of a medieval kingdom. To the east is Mt. Bromo, a volcano with hiking trails.', '2juta - 3juta', 'senin - juma\'at', 'nature', 'malam');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `creator` varchar(100) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_place`, `creator`, `text`) VALUES
(37, 19, 'John Doe', 'This place is amazing! Highly recommended.'),
(38, 19, 'Jane Smith', 'The sunrise view from this place is breathtaking.'),
(39, 20, 'Michael Johnson', 'Had a great time exploring this city.'),
(40, 20, 'Emily Davis', 'The local cuisine in this city is delicious.'),
(41, 20, 'David Brown', 'The city offers a variety of entertainment options.'),
(42, 21, 'Sarah Wilson', 'The atmosphere of this place is fantastic.'),
(43, 21, 'Robert Lee', 'The historical landmarks in this city are impressive.'),
(44, 22, 'Jennifer Miller', 'Visited this park with my family and we loved it.'),
(45, 22, 'Christopher Taylor', 'The gardens in this park are well-maintained.'),
(46, 23, 'Alexis Rodriguez', 'The waterfall is breathtaking. Must see!'),
(47, 23, 'Olivia Martinez', 'The hike to the waterfall is adventurous.'),
(48, 23, 'Sophia Anderson', 'The surrounding nature is serene and beautiful.'),
(49, 24, 'Liam Thompson', 'The colorful villages are a sight to behold.'),
(50, 24, 'Emma Wilson', 'The local art scene in these villages is vibrant.'),
(51, 25, 'Noah Garcia', 'The view from the hilltop is stunning.'),
(52, 26, 'Mia Davis', 'One of the most beautiful waterfalls I have seen.'),
(53, 27, 'Ethan Clark', 'Unique and captivating experience.'),
(54, 27, 'Ava Johnson', 'The architecture of this place is impressive.'),
(62, 20, 'last word', 'mean everything for me'),
(66, 19, 'ttt', 'hyfuytfu'),
(67, 20, 'tere', 'good'),
(69, 19, 'Bayu', 'Baik'),
(70, 19, 'Bayu Kevin', 'Pengalaman terbaik di bromo'),
(71, 21, 'Bayu Kevin Farindra', 'Pengalaman terbaik wisata di alun-alun malang');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id_slide` int(11) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id_slide`, `url_image`, `text`) VALUES
(1, 'https://images.unsplash.com/photo-1476158085676-e67f57ed9ed7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80', 'Jelajahi Keindahan Jawa Timur: Temukan Destinasi Wisata Terbaik!'),
(2, 'https://images.unsplash.com/photo-1541064828014-503911d13103?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 'Wisata Jawa Timur yang Tak Terlupakan: Informasi Terkini Hanya di Sini!'),
(3, 'https://images.unsplash.com/photo-1527965408463-82ae0731825c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80', 'Rencanakan Petualangan Anda: Rekomendasi Wisata Jawa Timur yang Mengagumkan!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `review_FK` (`id_place`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id_slide`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_FK` FOREIGN KEY (`id_place`) REFERENCES `place` (`id_place`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
