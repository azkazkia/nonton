-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2022 at 12:00 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `release_date` date NOT NULL,
  `voted_by` int(11) NOT NULL,
  `vote_average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `title`, `genre`, `image`, `description`, `release_date`, `voted_by`, `vote_average`) VALUES
(121, 'Fantastic Beasts: The Secrets of Dumbledore', '7', 'https://image.tmdb.org/t/p/w200/kzz0tk84vio6il1s0mOdJOwVPQV.jpg', 'Fantastic Beast 3 ini akan mengawali kisahnya dari Newt Scamander yang menolong qilin. Ini adalah hewan ajaib yang bisa mengetahui ketulusan hati seseorang.\r Namun dalam proses penyelamatannya, ia dihadang anak buah Grindelwald. Mereka berhasil menghabisi induk qilin dan satu anaknya, sementara kembaran si anak qilin berhasil dibawa Scamander.\r Inilah yang nantinya akan menjadi misi penyelamatan dunia yang unik dari kejahatan Grindelwald.\r Albus Dumbledore tak tinggal diam. Ia membentuk pasukan untuk mengamankan qilin. Selain itu, hewan ini nantinya akan dibawa dalam pemilihan kepemimpinan dunia sihir.\r Para anggota dari kelompok Dumbledore terdiri dari saudara Scamander, Theseus, penyihir Amerika yakni Lally, Yusuf Kama, seorang muggle yaitu Jacob Kowalski dan Tina.\r Dumbledore mempersiapkan beberapa koper untuk anggota tersebut, di mana salah satunya berisi qilin. Kali ini, anda bisa menebak siapa diantara mereka yang membawa hewan ajaib tersebut.', '2022-04-06', 1708, 7),
(122, 'BTS Bring The Soul', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7x5CguA0MxHqbSjhi14UEuK7c95.jpg', 'Bersinar lebih terang dari cahaya apa pun di atas panggung, sekarang grup mengundang kami di belakang sorotan. Pada hari setelah konser terakhir tur Eropa mereka, di atap di Paris, BTS menceritakan kisah mereka sendiri', '2022-03-30', 1306, 9),
(123, 'Sonic the Hedgehog 2', '2', 'https://image.tmdb.org/t/p/w200/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg', 'Alur cerita film Sonic the Hedgehog 2 bermula ketika Sonic menetap di Green Hills. Ia memutuskan menetap di sana agar bisa merasakan lebih banyak kebebasan. Ditambah lagi, Tom dan Maddie setuju untuk meninggalakannya di rumah ketika mereka pergi untuk berlibur. Namun sayangnya, tidak lama setelah mereka pergi Dr. Robotnik sang musuh bubuyutan si landak biru itu kembali ke bumi. Kali ini Dr. Robotnik datang dengan pasukan baru, Knuckles. Tujuan mereka datang kembali adalah untuk mencari Master Emerald yang memiliki kekuatan super. Kekuatan super itu bisa membangun dan menghancurkan peradaban di bumi. Atas hal ini, Sonic pun mencari strategi agar bisa menggagalkan rencara Dr. Robotnik. Strategi yang dilakukan oleh Sonic ialah bekerjasama dengan sahabatnya, Tails. Kemudian bersama dengan Tails, Sonic memulai perjalanan untuk menemukan Master Emerald. Semua itu dilakukan dengan cepat, sebelum Master Emerald jatuh ke tangan yang salah.', '2022-03-30', 2004, 8),
(124, 'Blackpink The Show', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xNaO64oSHgGKoTBEkjg8No38SZL.jpg', 'Perjalanan nyata ke dalam suara dan estetika kuartet, dan cara mereka berubah selama bertahun-tahun. Keempat anggota — Jisoo, Jennie, Rosé, dan Lisa — masing-masing mendapat kesempatannya sendiri untuk bersinar, sambil juga membuktikan keajaiban kesatuan mereka dalam versi live lagu lama dan baru.', '2021-01-31', 1081, 7),
(125, 'Jurassic World Dominion', '6', 'https://image.tmdb.org/t/p/w200/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg', '', '2022-06-01', 408, 7),
(126, 'Memory', '6', 'https://image.tmdb.org/t/p/w200/QaNLpq3Wuu2yp5ESsXYcQCOpUk.jpg', 'Sinopsis film alam Memory berfokus pada Alex Lewis (Liam Neeso), pembunuh bayaran profesional yang ternyata mengidap alzheimer, penyakit pada otak yang menyebabkan menurunnya daya ingat. Tugas Alex makin rumit ketika ia menyadari bahwa kontrak yang telah dia sepakati mengharuskannya membunuh anak di bawah umur. Dia pun bertekad membatalkan kontrak tersebut dan berbalik memburu orang-orang dalam sindikat kejahatan yang mempekerjakannya. Upaya balas dendam Alex turut diwarnai aksi pengejaran oleh agen FBI Vincent Serra (Guy Pearc), dan intel dari Meksiko. Pada saat yang sama, Alex harus berjuang mempertahankan daya ingatnya yang makin menurun.', '2022-04-28', 271, 7),
(127, 'The Northman', '7', 'https://image.tmdb.org/t/p/w200/zhLKlUaF1SEpO58ppHIAyENkwgw.jpg', 'Pangeran Amleth berada di ambang menjadi seorang pria ketika ayahnya dibunuh secara brutal oleh pamannya, yang menculik ibu anak laki-laki itu. Dua dekade kemudian, Amleth sekarang menjadi Viking yang menjalankan misi untuk menyelamatkan ibunya, membunuh pamannya dan membalaskan dendam ayahnya.', '2022-04-07', 1474, 7),
(128, 'Doctor Strange in the Multiverse of Madness', '7', 'https://image.tmdb.org/t/p/w200/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg', '', '2022-05-04', 2249, 7),
(129, 'Spider-Man: No Way Home', '7', 'https://image.tmdb.org/t/p/w200/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', 'Peter Parker menghadapi masalah besar. Hal ini terjadi setelah identitasnya sebagai Spiderman terungkap. Dengan kepergian Tony Stark, Peter Parker pun harus meminta bantuan Doctor Strange agar semua orang bisa melupakan identitasnya sebagai manusia laba-laba.', '2021-12-15', 13459, 8),
(130, 'Clean', '6', 'https://image.tmdb.org/t/p/w200/u713iOJjYPECVuk8facgNxaLHds.jpg', '', '2022-01-28', 120, 6),
(131, 'Uncharted', '6', 'https://image.tmdb.org/t/p/w200/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg', 'menceritakan tentang aksi perburuan harta karun terbesar yang tidak pernah ditemukan. Nathan Drake merupakan seorang bartender yang pintar. Nathan mengaku bahwa dirinya adalah keturunan dari penjelajah kenamaan asal Inggris bernama Sir Francis Drake.', '2022-02-10', 2387, 7),
(132, 'The Batman', '6', 'https://image.tmdb.org/t/p/w200/3VFI3zbuNhXzx7dIbYdmvBLekyB.jpg', 'Ketika seorang pembunuh berantai sadis mulai membunuh tokoh-tokoh politik penting di Gotham, Batman terpaksa menyelidiki korupsi tersembunyi di kota itu dan mempertanyakan keterlibatan keluarganya.', '2022-03-01', 5114, 8),
(133, 'Turning Red', '2', 'https://image.tmdb.org/t/p/w200/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg', '', '2022-03-10', 2432, 8),
(134, 'Veneciafrenia', '3', 'https://image.tmdb.org/t/p/w200/p8Ew1UpFplkIWaoaxkA5dGyL38H.jpg', '', '2022-04-21', 52, 5),
(135, 'A Day to Die', '6', 'https://image.tmdb.org/t/p/w200/8Kce1utfytAG5m1PbtVoDzmDZJH.jpg', '', '2022-03-04', 59, 6),
(136, 'The Bad Guys', '7', 'https://image.tmdb.org/t/p/w200/7qop80YfuO0BwJa1uXk1DXUUEwv.jpg', '', '2022-03-17', 620, 8),
(137, 'The Contractor', '6', 'https://image.tmdb.org/t/p/w200/rJPGPZ5soaG27MK90oKpioSiJE2.jpg', '', '2022-03-10', 309, 7),
(138, 'The Exorcism of God', '3', 'https://image.tmdb.org/t/p/w200/hangTmbxpSV4gpHG7MgSlCWSSFa.jpg', '', '2022-02-10', 228, 7),
(139, 'Mean Girls', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2ZkuQXvVhh45uSvkBej4S7Ix1NJ.jpg', 'Cady Heron menjadi hit dengan The Plastics, kelompok gadis A-list di sekolah barunya, sampai dia membuat kesalahan dengan jatuh cinta pada Aaron Samuels, mantan pacar alpha Plastic Regina George.', '2004-03-30', 5280, 6),
(140, 'Chip \'n Dale: Rescue Rangers', '4', 'https://image.tmdb.org/t/p/w200/7UGmn8TyWPPzkjhLUW58cOUHjPS.jpg', '', '2022-05-18', 510, 7),
(141, 'Moonfall', '1', 'https://image.tmdb.org/t/p/w200/putDqnndrdRzRRy5sVPYMH5FTjI.jpg', '', '2022-02-03', 1230, 7),
(142, 'Legally Blonde', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4ABNnmkVpzplrEVQWt1piITT0Ey.jpg', 'Elle Woods, seorang ratu mahasiswi yang modis, dicampakkan oleh pacarnya. Dia memutuskan untuk mengikutinya ke sekolah hukum, tetapi ketika di sana, dia menemukan bahwa ada lebih dari dirinya sendiri daripada hanya penampilan.', '2004-05-06', 18225, 9),
(143, 'Legally Blonde 2', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4kC0UGTuJgFnlZq2ZM6OiY7nuY8.jpg', 'Sekarang seorang pengacara muda yang sedang naik daun, Elle Woods akan menjadi mitra di firmanya, tetapi ketika dia mengetahui kerabat anjingnya digunakan sebagai subjek uji kosmetik, dia menuju ke Washington D.C. untuk memperjuangkan hak-hak hewan.', '2005-04-21', 10978, 7),
(144, 'Dark Cloud', '1', 'https://image.tmdb.org/t/p/w200/q1ngkvPCnOYKeyNZjg8QqvaSnuZ.jpg', '', '2022-05-09', 15, 6),
(145, 'Top Gun: Maverick', '6', 'https://image.tmdb.org/t/p/w200/wxP2Mzv9CdjOK6t4dNnFGqIQl0V.jpg', '', '2022-05-24', 966, 8),
(146, 'Doctor Strange', '7', 'https://image.tmdb.org/t/p/w200/uGBVj3bEbCoZbDjjl9wTxcygko1.jpg', 'Hidup Stephen Vincent Strange (Benedict Cumberbatc), seorang doktor bedah yang pintar namun sombong, mendadak berubah drastis. Sebuah kecelakaan mobil membuat kemampuan tangannya menjadi sangat terbatas. Bertekad untuk menyembuhkan kondisinya, ia pun berpetualang mencari obat untuk memulihkan tangannya.  Perjalanan tersebut mempertemukan sang doktor bedah dengan penyihir bernama The Ancient One (Tilda Swinto), yang kemudian mengangkat Strange menjadi murid, dengan tujuan menjadikan ia sebagai pelindung alam manusia. Kali ini Strange harus mengesampingkan egonya, dan menggunakan segala kemampuannya untuk menjadi perantara antara dimensi manusia dan dimensi lain.', '2016-10-25', 19153, 7),
(147, 'Encanto', '2', 'https://image.tmdb.org/t/p/w200/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', '', '2021-11-24', 6672, 8),
(148, 'Ambulance', '5', 'https://image.tmdb.org/t/p/w200/zT5ynZ0UR6HFfWQSRf2uKtqCyWD.jpg', 'Film Ambulance mengisahkan William Sharp (Yahya Abdul-Mateen I), veteran perang, yang membutuhkan uang sebesar US$231 ribu untuk biaya operasi istrinya. Kesulitan finansial yang dihadapinya membuat Will memutuskan menjadi perampok.  William lalu menghubungi Danny (Jake Gyllenhaa), saudara angkatnya yang merupakan seorang penjahat. Danny mengajaknya terlibat dalam perampokan bernilai US$32 juta di sebuah bank besar di Los Angeles.  Dengan berat hati, William menerima ajakan tersebut. Saat melakukan aksi perampokan, Willian dan Danny tak sengaja menembak petugas Los Angeles Police Department (LAPD). Mereka juga mulai dikepung oleh aparat kepolisian.', '2022-03-16', 781, 7),
(149, 'Peterchens Mondfahrt', '5', 'https://image.tmdb.org/t/p/w200/ayodKoUm9RYRlxVLzbWGd9OJNgj.jpg', '', '2021-06-24', 34, 6),
(150, 'Dakota', '5', 'https://image.tmdb.org/t/p/w200/j3eUOPUoDwkupwTPTDk6ESqrzGt.jpg', '', '2022-04-01', 7, 6),
(151, 'Demon Slayer - Kimetsu no Yaiba - The Movie: Mugen Train', '5', 'https://image.tmdb.org/t/p/w200/m9cn5mhW519QKr1YGpGxNWi98VJ.jpg', 'Tanjirou Kamado dan teman-temannya Pembasmi Iblis menemani Hashira Api Kyoujirou Rengoku, untuk menyelidiki kasus misterius yang terjadi di dalam kereta. Tak banyak yang mereka ketahui tentang keberadaan Enmu, salah satu dari Dua Belas Kizuki yang juga berada di dalam kereta dan telah menyiapkan perangkap untuk mereka.', '2020-10-16', 2464, 8),
(152, 'Larva Pendant', '5', 'https://image.tmdb.org/t/p/w200/g8ij5zrdbPsxxxjDIozYrxMAuNQ.jpg', '', '2022-05-25', 28, 7),
(153, 'My Hero Academia THE MOVIE World Heroes Mission', '5', 'https://image.tmdb.org/t/p/w200/4jW9xHLtYdprjg38arANzNeGuKW.jpg', '', '2021-08-06', 190, 8),
(154, 'The Outfit', '5', 'https://image.tmdb.org/t/p/w200/lZa5EB6PVJBT5mxhgZS5ftqdAm6.jpg', '', '2022-02-25', 269, 7),
(155, 'Fortress: Sniper\'s Eye', '5', 'https://image.tmdb.org/t/p/w200/61J34xHVVdQHbJ4MSCWQo4e727v.jpg', '', '2022-04-29', 70, 6),
(156, 'Fire Island', '5', 'https://image.tmdb.org/t/p/w200/2vVUdYoqUX5rK8plxPGERGGjQLI.jpg', '', '2022-06-09', 35, 7),
(157, 'Hotel Transylvania: Transformania', '2', 'https://image.tmdb.org/t/p/w200/6zt5l4DYV1kLPL5Vqz1kLq3THXD.jpg', '', '2022-02-25', 969, 7),
(158, 'The Valet', '5', 'https://image.tmdb.org/t/p/w200/q7FmdJHKMLIC4XgWfcFRIu2iVdL.jpg', 'Bintang film terkenal dunia Olivia menghadapi bencana PR ketika paparazzi mengambil foto dirinya dengan kekasihnya yang sudah menikah, Vincent. Pelayan pekerja keras Antonio secara tidak sengaja muncul di foto yang sama dan diminta untuk berpose sebagai pacar baru Olivia sebagai penutup. Tipuan dengan Olivia ini mendorong Antonio menjadi sorotan dan kekacauan yang tak terduga.', '2022-05-11', 184, 8),
(159, 'King', '5', 'https://image.tmdb.org/t/p/w200/kEyi52oFS45X5sb78kAMnfrenxm.jpg', '', '2022-02-16', 29, 7),
(160, 'The Seven Deadly Sins: Terkutuk oleh Cahaya', '5', 'https://image.tmdb.org/t/p/w200/8AnML0t6LreZyiQ1kVkJVzoGltZ.jpg', 'Meliodas dan kawan-kawannya kembali beraksi ketika era baru yang penuh kedamaian terancam oleh aliansi sihir hebat yang bisa mengakhiri segalanya.', '2021-07-02', 350, 8),
(161, 'Fireheart', '5', 'https://image.tmdb.org/t/p/w200/hepwOZWJNUmLzB68gKYEdEJAaD3.jpg', '', '2022-01-16', 73, 7),
(162, '365 Days: This Day', '5', 'https://image.tmdb.org/t/p/w200/7qU0SOVcQ8BTJLodcAlulUAG16C.jpg', '', '2022-04-27', 506, 6),
(163, 'Jurassic World', '5', 'https://image.tmdb.org/t/p/w200/A0LZHXUzo5C60Oahvt7VxvwuzHw.jpg', '', '2015-06-06', 18093, 7),
(164, 'Silverton Siege', '5', 'https://image.tmdb.org/t/p/w200/5HruMN0vvl84AqD7sCDXFNO4RhP.jpg', '', '2022-04-27', 75, 7),
(165, 'The Ice Age Adventures of Buck Wild', '5', 'https://image.tmdb.org/t/p/w200/zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg', '', '2022-01-28', 1205, 7),
(166, 'La abuela', '5', 'https://image.tmdb.org/t/p/w200/19rA9FjhwI4VEfaCXV7648XUInR.jpg', '', '2022-01-28', 182, 6),
(167, 'Venom: Biarkan ada Pembantaian', '4', 'https://image.tmdb.org/t/p/w200/1MJNcPZy46hIy2CmSqOeru0yr5C.jpg', 'Venom kembali beraksi ketika pembunuh berantai terkenal Cletus Cassidy menjadi pembantaian yang kejam.', '2021-09-30', 7465, 7),
(168, 'Interceptor', '4', 'https://image.tmdb.org/t/p/w200/cpWUtkcgRKeauhTyVMjYHxAutp4.jpg', 'Seorang letnan Angkatan Darat menggunakan pelatihan taktisnya selama bertahun-tahun untuk menyelamatkan umat manusia dari enam belas rudal nuklir yang diluncurkan di AS saat serangan terkoordinasi dengan kekerasan secara bersamaan mengancam stasiun pencegat rudal jarak jauhnya.', '2022-05-26', 215, 6),
(169, 'El último zombi', '4', 'https://image.tmdb.org/t/p/w200/rSxEMxgLnC1KZAYH6pEksPsLyzR.jpg', '', '2021-12-02', 1, 2),
(170, 'Dark Blood', '4', 'https://image.tmdb.org/t/p/w200/v78bAY02eCUv7lkpEpOVlRkqZDJ.jpg', '', '2021-09-05', 7, 5),
(171, 'Teen Titans Go! & DC Super Hero Girls: Mayhem in the Multiverse', '2', 'https://image.tmdb.org/t/p/w200/3Hnhf1FqVGnh20hKlHbiRvHhB5b.jpg', '', '2022-05-23', 28, 7),
(172, 'Saw', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/harQifr8kpIVqlLP41kTR058LZB.jpg', '', '2004-05-16', 5812, 7),
(173, 'Jurassic World: Fallen Kingdom', '2', 'https://image.tmdb.org/t/p/w200/c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg', 'Setelah Isla Nublar porak-poranda akibat letusan gunung berapi, spesies dinosaurus yang tersisa dibawa ke perkebunan Lockwood yang besar, di Amerika. Di tempat tersebut, Owen dan Claire menyadari bahwa spesies dinosaurus malah dilelang dan tidak dilestarikan. Seekor dinosaurus hibrida yang sangat berbahaya dan dikenal dengan nama Indoraptor, kabur dan mulai meneror penduduk di sekitar perkebunan.', '2018-06-06', 9922, 7),
(174, 'Sing 2', '2', 'https://image.tmdb.org/t/p/w200/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', '', '2021-12-01', 2820, 8),
(175, 'Blacklight', '2', 'https://image.tmdb.org/t/p/w200/bv9dy8mnwftdY2j6gG39gCfSFpV.jpg', '', '2022-02-10', 427, 6),
(176, 'The Jack in the Box: Awakening', '2', 'https://image.tmdb.org/t/p/w200/3Ib8vlWTrAKRrTWUrTrZPOMW4jp.jpg', '', '2022-02-24', 51, 6),
(177, 'Kapal pesiar', '2', 'https://image.tmdb.org/t/p/w200/nOYyuJ2mNo6RWsFsTwApEyG3F4J.jpg', '', '2022-04-08', 93, 6),
(178, 'It', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9E2y5Q7WlCVNEhP5GiVTjhEhx1o.jpg', '', '2015-06-11', 4, 6),
(179, 'Insidious', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tmlDFIUpGRKiuWm9Ixc6CYDk4y0.jpg', '', '2015-01-17', 27, 8),
(180, 'Final Destination', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/g4dkGtWdc1eQ9JL1kta6LC0DlGS.jpg', '', '2022-01-13', 2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
